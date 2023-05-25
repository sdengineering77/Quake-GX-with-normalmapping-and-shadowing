/***************************************************************************
 *                                  _   _ ____  _     
 *  Project                     ___| | | |  _ \| |    
 *                             / __| | | | |_) | |    
 *                            | (__| |_| |  _ <| |___ 
 *                             \___|\___/|_| \_\_____|
 *
 * Copyright (C) 1998 - 2004, Daniel Stenberg, <daniel@haxx.se>, et al.
 *
 * This software is licensed as described in the file COPYING, which
 * you should have received as part of this distribution. The terms
 * are also available at http://curl.haxx.se/docs/copyright.html.
 * 
 * You may opt to use, copy, modify, merge, publish, distribute and/or sell
 * copies of the Software, and permit persons to whom the Software is
 * furnished to do so, under the terms of the COPYING file.
 *
 * This software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY
 * KIND, either express or implied.
 *
 * $Id: ftp.c,v 1.240 2004/03/17 12:46:45 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#ifndef CURL_DISABLE_FTP
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>
#include <ctype.h>
#include <errno.h>

#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif
#ifdef HAVE_SYS_SELECT_H
#include <sys/select.h>
#endif

#if defined(WIN32) && !defined(__GNUC__) || defined(__MINGW32__)

#else /* some kind of unix */
#ifdef HAVE_SYS_SOCKET_H
#include <sys/socket.h>
#endif
#include <sys/types.h>
#ifdef HAVE_NETINET_IN_H
#include <netinet/in.h>
#endif
#ifdef HAVE_ARPA_INET_H
#include <arpa/inet.h>
#endif
#include <sys/utsname.h>
#ifdef HAVE_NETDB_H
#include <netdb.h>
#endif
#ifdef	VMS
#include <in.h>
#include <inet.h>
#endif
#endif

#if defined(WIN32) && defined(__GNUC__) || defined(__MINGW32__)
#include <errno.h>
#endif

#if (defined(NETWARE) && defined(__NOVELL_LIBC__))
#undef in_addr_t
#define in_addr_t unsigned long
#endif

#include <curl/curl.h>
#include "urldata.h"
#include "sendf.h"

#include "if2ip.h"
#include "hostip.h"
#include "progress.h"
#include "transfer.h"
#include "escape.h"
#include "http.h" /* for HTTP proxy tunnel stuff */
#include "ftp.h"

#ifdef HAVE_KRB4
#include "security.h"
#include "krb4.h"
#endif

#include "strtoofft.h"
#include "strequal.h"
#include "ssluse.h"
#include "connect.h"

#if defined(HAVE_INET_NTOA_R) && !defined(HAVE_INET_NTOA_R_DECL)
#include "inet_ntoa_r.h"
#endif

#define _MPRINTF_REPLACE /* use our functions only */
#include <curl/mprintf.h>

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

/* Local API functions */
static CURLcode ftp_sendquote(struct connectdata *conn,
                              struct curl_slist *quote);
static CURLcode ftp_cwd(struct connectdata *conn, char *path);
static CURLcode ftp_mkd(struct connectdata *conn, char *path);
static CURLcode ftp_cwd_and_mkd(struct connectdata *conn, char *path);

/* easy-to-use macro: */
#define FTPSENDF(x,y,z) if((result = Curl_ftpsendf(x,y,z))) return result

static void freedirs(struct FTP *ftp)
{
    SYS_Printf("void freedirs(struct FTP *ftp)\r\n");
}



/***********************************************************************
 *
 * AllowServerConnect()
 *
 * When we've issue the PORT command, we have told the server to connect
 * to us. This function will sit and wait here until the server has
 * connected.
 *
 */
static CURLcode AllowServerConnect(struct connectdata *conn)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode AllowServerConnect(struct connectdata *conn)\r\n");
    return retVal;
}




/* --- parse FTP server responses --- */

/*
 * Curl_GetFTPResponse() is supposed to be invoked after each command sent to
 * a remote FTP server. This function will wait and read all lines of the
 * response and extract the relevant return code for the invoking function.
 */

CURLcode Curl_GetFTPResponse(ssize_t *nreadp, /* return number of bytes read */
                             struct connectdata *conn,
                             int *ftpcode) /* return the ftp-code */
{
  /* Brand new implementation.
   * We cannot read just one byte per read() and then go back to select()
   * as it seems that the OpenSSL read() stuff doesn't grok that properly.
   *
   * Alas, read as much as possible, split up into lines, use the ending
   * line in a response or continue reading.  */

  curl_socket_t sockfd = conn->sock[FIRSTSOCKET];
  int perline; /* count bytes per line */
  bool keepon=TRUE;
  ssize_t gotbytes;
  char *ptr;
  long timeout;              /* timeout in seconds */
  struct timeval interval;
  fd_set rkeepfd;
  fd_set readfd;
  struct SessionHandle *data = conn->data;
  char *line_start;
  int code=0; /* default ftp "error code" to return */
  char *buf = data->state.buffer;
  CURLcode result = CURLE_OK;
  struct FTP *ftp = conn->proto.ftp;
  struct timeval now = Curl_tvnow();

  if (ftpcode)
    *ftpcode = 0; /* 0 for errors */

  FD_ZERO (&readfd);		/* clear it */
  FD_SET (sockfd, &readfd);     /* read socket */

  /* get this in a backup variable to be able to restore it on each lap in the
     select() loop */
  rkeepfd = readfd;

  ptr=buf;
  line_start = buf;

  *nreadp=0;
  perline=0;
  keepon=TRUE;

  while((*nreadp<BUFSIZE) && (keepon && !result)) {
    /* check and reset timeout value every lap */
    if(data->set.ftp_response_timeout )
      /* if CURLOPT_FTP_RESPONSE_TIMEOUT is set, use that to determine
         remaining time.  Also, use "now" as opposed to "conn->now"
         because ftp_response_timeout is only supposed to govern
         the response for any given ftp response, not for the time
         from connect to the given ftp response. */
      timeout = data->set.ftp_response_timeout - /* timeout time */
        Curl_tvdiff(Curl_tvnow(), now)/1000; /* spent time */
    else if(data->set.timeout)
      /* if timeout is requested, find out how much remaining time we have */
      timeout = data->set.timeout - /* timeout time */
        Curl_tvdiff(Curl_tvnow(), conn->now)/1000; /* spent time */
    else
      /* Even without a requested timeout, we only wait response_time
         seconds for the full response to arrive before we bail out */
      timeout = ftp->response_time -
        Curl_tvdiff(Curl_tvnow(), now)/1000; /* spent time */

    if(timeout <=0 ) {
      failf(data, "FTP response timeout");
      return CURLE_OPERATION_TIMEDOUT; /* already too little time */
    }

    if(!ftp->cache) {
      readfd = rkeepfd;		   /* set every lap */
      interval.tv_sec = 1; /* use 1 second timeout intervals */
      interval.tv_usec = 0;

      switch (select (sockfd+1, &readfd, NULL, NULL, &interval)) {
      case -1: /* select() error, stop reading */
        result = CURLE_RECV_ERROR;
        failf(data, "FTP response aborted due to select() error: %d", errno);
        break;
      case 0: /* timeout */
        if(Curl_pgrsUpdate(conn))
          return CURLE_ABORTED_BY_CALLBACK;
        continue; /* just continue in our loop for the timeout duration */

      default:
        break;
      }
    }
    if(CURLE_OK == result) {
      /*
       * This code previously didn't use the kerberos sec_read() code
       * to read, but when we use Curl_read() it may do so. Do confirm
       * that this is still ok and then remove this comment!
       */
      if(ftp->cache) {
        /* we had data in the "cache", copy that instead of doing an actual
         * read
	 *
	 * Dave Meyer, December 2003:
	 * ftp->cache_size is cast to int here.  This should be safe,
	 * because it would have been populated with something of size
	 * int to begin with, even though its datatype may be larger
	 * than an int.
	 */
        memcpy(ptr, ftp->cache, (int)ftp->cache_size);
        gotbytes = (int)ftp->cache_size;
        free(ftp->cache);    /* free the cache */
        ftp->cache = NULL;   /* clear the pointer */
        ftp->cache_size = 0; /* zero the size just in case */
      }
      else {
        int res = Curl_read(conn, sockfd, ptr, BUFSIZE-*nreadp, &gotbytes);
        if(res < 0)
          /* EWOULDBLOCK */
          continue; /* go looping again */

        if(CURLE_OK != res)
          keepon = FALSE;
      }

      if(!keepon)
        ;
      else if(gotbytes <= 0) {
        keepon = FALSE;
        result = CURLE_RECV_ERROR;
        failf(data, "FTP response reading failed");
      }
      else {
        /* we got a whole chunk of data, which can be anything from one
         * byte to a set of lines and possible just a piece of the last
         * line */
        int i;

        *nreadp += gotbytes;
        for(i = 0; i < gotbytes; ptr++, i++) {
          perline++;
          if(*ptr=='\n') {
            /* a newline is CRLF in ftp-talk, so the CR is ignored as
               the line isn't really terminated until the LF comes */

            /* output debug output if that is requested */
            if(data->set.verbose)
              Curl_debug(data, CURLINFO_HEADER_IN, line_start, perline);

            /*
             * We pass all response-lines to the callback function registered
             * for "headers". The response lines can be seen as a kind of
             * headers.
             */
            result = Curl_client_write(data, CLIENTWRITE_HEADER,
                                       line_start, perline);
            if(result)
              return result;
                                       
#define lastline(line) (isdigit((int)line[0]) && isdigit((int)line[1]) && \
			isdigit((int)line[2]) && (' ' == line[3]))

            if(perline>3 && lastline(line_start)) {
              /* This is the end of the last line, copy the last
               * line to the start of the buffer and zero terminate,
               * for old times sake (and krb4)! */
              char *meow;
              int n;
              for(meow=line_start, n=0; meow<ptr; meow++, n++)
                buf[n] = *meow;
              *meow=0; /* zero terminate */
              keepon=FALSE;
              line_start = ptr+1; /* advance pointer */
              i++; /* skip this before getting out */
              break;
            }
            perline=0; /* line starts over here */
            line_start = ptr+1;
          }
        }
        if(!keepon && (i != gotbytes)) {
          /* We found the end of the response lines, but we didn't parse the
             full chunk of data we have read from the server. We therefore
             need to store the rest of the data to be checked on the next
             invoke as it may actually contain another end of response
             already!  Cleverly figured out by Eric Lavigne in December
             2001. */
          ftp->cache_size = gotbytes - i;
          ftp->cache = (char *)malloc((int)ftp->cache_size);
          if(ftp->cache)
            memcpy(ftp->cache, line_start, (int)ftp->cache_size);
          else
            return CURLE_OUT_OF_MEMORY; /**BANG**/
        }
      } /* there was data */
    } /* if(no error) */
  } /* while there's buffer left and loop is requested */

  if(!result)
    code = atoi(buf);

#ifdef HAVE_KRB4
  /* handle the security-oriented responses 6xx ***/
  /* FIXME: some errorchecking perhaps... ***/
  switch(code) {
  case 631:
    Curl_sec_read_msg(conn, buf, prot_safe);
    break;
  case 632:
    Curl_sec_read_msg(conn, buf, prot_private);
    break;
  case 633:
    Curl_sec_read_msg(conn, buf, prot_confidential);
    break;
  default:
    /* normal ftp stuff we pass through! */
    break;
  }
#endif

  if(ftpcode)
    *ftpcode=code; /* return the initial number like this */

  /* store the latest code for later retrieval */
  conn->data->info.httpcode=code;

  return result;
}

static const char *ftpauth[]= {
  "SSL", "TLS", NULL
};

/*
 * Curl_ftp_connect() should do everything that is to be considered a part of
 * the connection phase.
 */
CURLcode Curl_ftp_connect(struct connectdata *conn)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode Curl_ftp_connect(struct connectdata *conn)\r\n");
    return retVal;
}



/***********************************************************************
 *
 * Curl_ftp_done()
 *
 * The DONE function. This does what needs to be done after a single DO has
 * performed.
 *
 * Input argument is already checked for validity.
 */
CURLcode Curl_ftp_done(struct connectdata *conn)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode Curl_ftp_done(struct connectdata *conn)\r\n");
    return retVal;
}



/***********************************************************************
 *
 * ftp_sendquote()
 *
 * Where a 'quote' means a list of custom commands to send to the server.
 * The quote list is passed as an argument.
 */

static 
CURLcode ftp_sendquote(struct connectdata *conn, struct curl_slist *quote)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode ftp_sendquote(struct connectdata *conn, struct curl_slist *quote)\r\n");
    return retVal;
}



/***********************************************************************
 *
 * ftp_getfiletime()
 *
 * Get the timestamp of the given file.
 */
static
CURLcode ftp_getfiletime(struct connectdata *conn, char *file)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode ftp_getfiletime(struct connectdata *conn, char *file)\r\n");
    return retVal;
}



/***********************************************************************
 *
 * ftp_transfertype()
 *
 * Set transfer type. We only deal with ASCII or BINARY so this function
 * sets one of them.
 */
static CURLcode ftp_transfertype(struct connectdata *conn,
                                  bool ascii)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode ftp_transfertype(struct connectdata *conn,                                  bool ascii)\r\n");
    return retVal;
}



/***********************************************************************
 *
 * ftp_getsize()
 *
 * Returns the file size (in bytes) of the given remote file.
 */

static
CURLcode ftp_getsize(struct connectdata *conn, char *file,
                     curl_off_t *size)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode ftp_getsize(struct connectdata *conn, char *file,                     curl_off_t *size)\r\n");
    return retVal;
}



/***************************************************************************
 *
 * ftp_pasv_verbose()
 *
 * This function only outputs some informationals about this second connection
 * when we've issued a PASV command before and thus we have connected to a
 * possibly new IP address.
 *
 */
static void
ftp_pasv_verbose(struct connectdata *conn,
                 Curl_ipconnect *addr,
                 char *newhost, /* ascii version */
                 int port)
{
#ifndef ENABLE_IPV6
  /*****************************************************************
   *
   * IPv4-only code section
   */

  struct in_addr in;
  struct hostent * answer;

#ifdef HAVE_INET_NTOA_R
  char ntoa_buf[64];
#endif
  /* The array size trick below is to make this a large chunk of memory
     suitably 8-byte aligned on 64-bit platforms. This was thoughtfully
     suggested by Philip Gladstone. */
  long bigbuf[9000 / sizeof(long)];

#if defined(HAVE_INET_ADDR)
  in_addr_t address;
# if defined(HAVE_GETHOSTBYADDR_R)
  int h_errnop;
# endif
  char *hostent_buf = (char *)bigbuf; /* get a char * to the buffer */

  address = inet_addr(newhost);
# ifdef HAVE_GETHOSTBYADDR_R

#  ifdef HAVE_GETHOSTBYADDR_R_5
  /* AIX, Digital Unix (OSF1, Tru64) style:
     extern int gethostbyaddr_r(char *addr, size_t len, int type,
     struct hostent *htent, struct hostent_data *ht_data); */

  /* Fred Noz helped me try this out, now it at least compiles! */

  /* Bjorn Reese (November 28 2001):
     The Tru64 man page on gethostbyaddr_r() says that
     the hostent struct must be filled with zeroes before the call to
     gethostbyaddr_r(). 

     ... as must be struct hostent_data Craig Markwardt 19 Sep 2002. */

  memset(hostent_buf, 0, sizeof(struct hostent)+sizeof(struct hostent_data));

  if(gethostbyaddr_r((char *) &address,
                     sizeof(address), AF_INET,
                     (struct hostent *)hostent_buf,
                     (struct hostent_data *)(hostent_buf + sizeof(*answer))))
    answer=NULL;
  else
    answer=(struct hostent *)hostent_buf;
                           
#  endif
#  ifdef HAVE_GETHOSTBYADDR_R_7
  /* Solaris and IRIX */
  answer = gethostbyaddr_r((char *) &address, sizeof(address), AF_INET,
                           (struct hostent *)bigbuf,
                           hostent_buf + sizeof(*answer),
                           sizeof(bigbuf) - sizeof(*answer),
                           &h_errnop);
#  endif
#  ifdef HAVE_GETHOSTBYADDR_R_8
  /* Linux style */
  if(gethostbyaddr_r((char *) &address, sizeof(address), AF_INET,
                     (struct hostent *)hostent_buf,
                     hostent_buf + sizeof(*answer),
                     sizeof(bigbuf) - sizeof(*answer),
                     &answer,
                     &h_errnop))
    answer=NULL; /* error */
#  endif
        
# else
  (void)hostent_buf; /* avoid compiler warning */
  answer = gethostbyaddr((char *) &address, sizeof(address), AF_INET);
# endif
#else
  answer = NULL;
#endif
  (void) memcpy(&in.s_addr, addr, sizeof (Curl_ipconnect));
  infof(conn->data, "Connecting to %s (%s) port %u\n",
        answer?answer->h_name:newhost,
#if defined(HAVE_INET_NTOA_R)
        inet_ntoa_r(in, ntoa_buf, sizeof(ntoa_buf)),
#else
        inet_ntoa(in),
#endif
        port);

#else
  /*****************************************************************
   *
   * IPv6-only code section
   */
  char hbuf[NI_MAXHOST]; /* ~1KB */
  char nbuf[NI_MAXHOST]; /* ~1KB */
  char sbuf[NI_MAXSERV]; /* around 32 */
#ifdef NI_WITHSCOPEID
  const int niflags = NI_NUMERICHOST | NI_NUMERICSERV | NI_WITHSCOPEID;
#else
  const int niflags = NI_NUMERICHOST | NI_NUMERICSERV;
#endif
  (void)port; /* prevent compiler warning */
  if (getnameinfo(addr->ai_addr, addr->ai_addrlen,
                  nbuf, sizeof(nbuf), sbuf, sizeof(sbuf), niflags)) {
    snprintf(nbuf, sizeof(nbuf), "?");
    snprintf(sbuf, sizeof(sbuf), "?");
  }
        
  if (getnameinfo(addr->ai_addr, addr->ai_addrlen,
                  hbuf, sizeof(hbuf), NULL, 0, 0)) {
    infof(conn->data, "Connecting to %s (%s) port %s\n", nbuf, newhost, sbuf);
  }
  else {
    infof(conn->data, "Connecting to %s (%s) port %s\n", hbuf, nbuf, sbuf);
  }
#endif
}

/***********************************************************************
 *
 * ftp_use_port()
 *
 * Send the proper PORT command. PORT is the ftp client's way of telling the
 * server that *WE* open a port that we listen on an awaits the server to
 * connect to. This is the opposite of PASV.
 */

static
CURLcode ftp_use_port(struct connectdata *conn)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode ftp_use_port(struct connectdata *conn)\r\n");
    return retVal;
}



/***********************************************************************
 *
 * ftp_use_pasv()
 *
 * Send the PASV command. PASV is the ftp client's way of asking the server to
 * open a second port that we can connect to (for the data transfer). This is
 * the opposite of PORT.
 */

static
CURLcode ftp_use_pasv(struct connectdata *conn,
                      bool *connected)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode ftp_use_pasv(struct connectdata *conn,                      bool *connected)\r\n");
    return retVal;
}



/*
 * Curl_ftp_nextconnect()
 *
 * This function shall be called when the second FTP connection has been
 * established and is confirmed connected.
 */

CURLcode Curl_ftp_nextconnect(struct connectdata *conn)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode Curl_ftp_nextconnect(struct connectdata *conn)\r\n");
    return retVal;
}



/***********************************************************************
 *
 * ftp_perform()
 *
 * This is the actual DO function for FTP. Get a file/directory according to
 * the options previously setup.
 */

static
CURLcode ftp_perform(struct connectdata *conn,
                     bool *connected)  /* for the TCP connect status after
                                          PASV / PORT */
{
  /* this is FTP and no proxy */
  CURLcode result=CURLE_OK;
  struct SessionHandle *data=conn->data;
  char *buf = data->state.buffer; /* this is our buffer */

  /* the ftp struct is already inited in Curl_ftp_connect() */
  struct FTP *ftp = conn->proto.ftp;

  /* Send any QUOTE strings? */
  if(data->set.quote) {
    if ((result = ftp_sendquote(conn, data->set.quote)) != CURLE_OK)
      return result;
  }

  /* This is a re-used connection. Since we change directory to where the
     transfer is taking place, we must now get back to the original dir
     where we ended up after login: */
  if (conn->bits.reuse && ftp->entrypath) {
    if ((result = ftp_cwd_and_mkd(conn, ftp->entrypath)) != CURLE_OK)
      return result;
  }

  {
    int i; /* counter for loop */
    for (i=0; ftp->dirs[i]; i++) {
      /* RFC 1738 says empty components should be respected too, but
         that is plain stupid since CWD can't be used with an empty argument */
      if ((result = ftp_cwd_and_mkd(conn, ftp->dirs[i])) != CURLE_OK)
        return result;
    }
  }

  /* Requested time of file or time-depended transfer? */
  if((data->set.get_filetime || data->set.timecondition) &&
     ftp->file) {
    result = ftp_getfiletime(conn, ftp->file);
    switch( result )
      {
      case CURLE_FTP_COULDNT_RETR_FILE:
      case CURLE_OK:
        if(data->set.timecondition) {
          if((data->info.filetime > 0) && (data->set.timevalue > 0)) {
            switch(data->set.timecondition) {
            case CURL_TIMECOND_IFMODSINCE:
            default:
              if(data->info.filetime < data->set.timevalue) {
                infof(data, "The requested document is not new enough\n");
                ftp->no_transfer = TRUE; /* mark this to not transfer data */
                return CURLE_OK;
              }
              break;
            case CURL_TIMECOND_IFUNMODSINCE:
              if(data->info.filetime > data->set.timevalue) {
                infof(data, "The requested document is not old enough\n");
                ftp->no_transfer = TRUE; /* mark this to not transfer data */
                return CURLE_OK;
              }
              break;
            } /* switch */
          }
          else {
            infof(data, "Skipping time comparison\n");
          }
        }
        break;
      default:
        return result;
      } /* switch */
  }

  /* If we have selected NOBODY and HEADER, it means that we only want file
     information. Which in FTP can't be much more than the file size and
     date. */
  if(data->set.no_body && data->set.include_header && ftp->file) {
    /* The SIZE command is _not_ RFC 959 specified, and therefor many servers
       may not support it! It is however the only way we have to get a file's
       size! */
    curl_off_t filesize;
    ssize_t nread;
    int ftpcode;

    ftp->no_transfer = TRUE; /* this means no actual transfer is made */
    
    /* Some servers return different sizes for different modes, and thus we
       must set the proper type before we check the size */
    result = ftp_transfertype(conn, data->set.ftp_ascii);
    if(result)
      return result;

    /* failing to get size is not a serious error */
    result = ftp_getsize(conn, ftp->file, &filesize);

    if(CURLE_OK == result) {
      sprintf(buf, "Content-Length: %" FORMAT_OFF_T "\r\n", filesize);
      result = Curl_client_write(data, CLIENTWRITE_BOTH, buf, 0);
      if(result)
        return result;
    }

    /* Determine if server can respond to REST command and therefore
       whether it can do a range */
    FTPSENDF(conn, "REST 0", NULL);
    result = Curl_GetFTPResponse(&nread, conn, &ftpcode);

    if ((CURLE_OK == result) && (ftpcode == 350)) {
      result = Curl_client_write(data, CLIENTWRITE_BOTH,
                                 (char *)"Accept-ranges: bytes\r\n", 0);
      if(result)
        return result;
    }

    /* If we asked for a time of the file and we actually got one as
       well, we "emulate" a HTTP-style header in our output. */

#ifdef HAVE_STRFTIME
    if(data->set.get_filetime && (data->info.filetime>=0) ) {
      struct tm *tm;
      time_t clock = (time_t)data->info.filetime;
#ifdef HAVE_GMTIME_R
      struct tm buffer;
      tm = (struct tm *)gmtime_r(&clock, &buffer);
#else
      tm = gmtime(&clock);
#endif
      /* format: "Tue, 15 Nov 1994 12:45:26" */
      strftime(buf, BUFSIZE-1, "Last-Modified: %a, %d %b %Y %H:%M:%S GMT\r\n",
               tm);
      result = Curl_client_write(data, CLIENTWRITE_BOTH, buf, 0);
      if(result)
        return result;
    }
#endif

    return CURLE_OK;
  }

  if(data->set.no_body)
    /* doesn't really transfer any data */
    ftp->no_transfer = TRUE;
  /* Get us a second connection up and connected */
  else if(data->set.ftp_use_port) {
    /* We have chosen to use the PORT command */
    result = ftp_use_port(conn);
    if(CURLE_OK == result) {
      /* we have the data connection ready */
      infof(data, "Ordered connect of the data stream with PORT!\n");
      *connected = TRUE; /* mark us "still connected" */
    }
  }
  else {
    /* We have chosen (this is default) to use the PASV command */
    result = ftp_use_pasv(conn, connected);
    if(CURLE_OK == result && *connected)
      infof(data, "Connected the data stream with PASV!\n");
  }
  
  return result;
}

/***********************************************************************
 *
 * Curl_ftp()
 *
 * This function is registered as 'curl_do' function. It decodes the path
 * parts etc as a wrapper to the actual DO function (ftp_perform).
 *
 * The input argument is already checked for validity.
 *
 * ftp->ctl_valid starts out as FALSE, and gets set to TRUE if we reach the
 * end of the function.
 */
CURLcode Curl_ftp(struct connectdata *conn)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode Curl_ftp(struct connectdata *conn)\r\n");
    return retVal;
}



/***********************************************************************
 *
 * Curl_ftpsendf()
 *
 * Sends the formated string as a ftp command to a ftp server
 *
 * NOTE: we build the command in a fixed-length buffer, which sets length
 * restrictions on the command!
 */
CURLcode Curl_ftpsendf(struct connectdata *conn,
                       const char *fmt, ...)
{
  ssize_t bytes_written;
  char s[256];
  size_t write_len;
  char *sptr=s;
  CURLcode res = CURLE_OK;

  va_list ap;
  va_start(ap, fmt);
  vsnprintf(s, 250, fmt, ap);
  va_end(ap);
  
  strcat(s, "\r\n"); /* append a trailing CRLF */

  bytes_written=0;
  write_len = strlen(s);

  while(1) {
    res = Curl_write(conn, conn->sock[FIRSTSOCKET], sptr, write_len,
                     &bytes_written);

    if(CURLE_OK != res)
      break;

    if(conn->data->set.verbose)
      Curl_debug(conn->data, CURLINFO_HEADER_OUT, sptr, bytes_written);

    if(bytes_written != (ssize_t)write_len) {
      write_len -= bytes_written;
      sptr += bytes_written;
    }
    else
      break;
  }

  return res;
}

/***********************************************************************
 *
 * Curl_ftp_quit()
 *
 * This should be called before calling sclose() on an ftp control connection
 * (not data connections). We should then wait for the response from the 
 * server before returning. The calling code should then try to close the
 * connection.
 *
 */
CURLcode Curl_ftp_quit(struct connectdata *conn)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode Curl_ftp_quit(struct connectdata *conn)\r\n");
    return retVal;
}



/***********************************************************************
 *
 * Curl_ftp_disconnect()
 *
 * Disconnect from an FTP server. Cleanup protocol-specific per-connection
 * resources
 */
CURLcode Curl_ftp_disconnect(struct connectdata *conn)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode Curl_ftp_disconnect(struct connectdata *conn)\r\n");
    return retVal;
}



/***********************************************************************
 *
 * ftp_mkd()
 *
 * Makes a directory on the FTP server.
 *
 * Calls failf()
 */
CURLcode ftp_mkd(struct connectdata *conn, char *path)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode ftp_mkd(struct connectdata *conn, char *path)\r\n");
    return retVal;
}



/***********************************************************************
 *
 * ftp_cwd()
 *
 * Send 'CWD' to the remote server to Change Working Directory.  It is the ftp
 * version of the unix 'cd' command. This function is only called from the
 * ftp_cwd_and_mkd() function these days.
 *
 * This function does NOT call failf().
 */
static 
CURLcode ftp_cwd(struct connectdata *conn, char *path)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode ftp_cwd(struct connectdata *conn, char *path)\r\n");
    return retVal;
}



/***********************************************************************
 *
 * ftp_cwd_and_mkd()
 *
 * Change to the given directory.  If the directory is not present, and we
 * have been told to allow it, then create the directory and cd to it.
 *
 */
static CURLcode ftp_cwd_and_mkd(struct connectdata *conn, char *path)
{
    CURLcode  retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    SYS_Printf("CURLcode ftp_cwd_and_mkd(struct connectdata *conn, char *path)\r\n");
    return retVal;
}



#endif /* CURL_DISABLE_FTP */
