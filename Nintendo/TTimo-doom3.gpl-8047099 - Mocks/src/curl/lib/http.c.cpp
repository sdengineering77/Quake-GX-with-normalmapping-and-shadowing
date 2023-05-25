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
 * $Id: http.c,v 1.204 2004/03/14 18:15:04 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#ifndef CURL_DISABLE_HTTP
/* -- WIN32 approved -- */
#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <stdlib.h>
#include <ctype.h>
#include <sys/types.h>
#include <sys/stat.h>

#include <errno.h>

#if defined(WIN32) && !defined(__GNUC__) || defined(__MINGW32__)
#include <time.h>
#include <io.h>
#else
#ifdef HAVE_SYS_SOCKET_H
#include <sys/socket.h>
#endif
#ifdef HAVE_NETINET_IN_H
#include <netinet/in.h>
#endif
#include <sys/time.h>

#ifdef HAVE_TIME_H
#ifdef TIME_WITH_SYS_TIME
#include <time.h>
#endif
#endif

#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif
#include <netdb.h>
#ifdef HAVE_ARPA_INET_H
#include <arpa/inet.h>
#endif
#ifdef HAVE_NET_IF_H
#include <net/if.h>
#endif
#include <sys/ioctl.h>
#include <signal.h>

#ifdef HAVE_SYS_PARAM_H
#include <sys/param.h>
#endif

#ifdef HAVE_SYS_SELECT_H
#include <sys/select.h>
#endif


#endif

#include "urldata.h"
#include <curl/curl.h>
#include "transfer.h"
#include "sendf.h"
#include "formdata.h"
#include "progress.h"
#include "base64.h"
#include "cookie.h"
#include "strequal.h"
#include "ssluse.h"
#include "http_digest.h"
#include "http_ntlm.h"
#include "http_negotiate.h"
#include "url.h"
#include "share.h"
#include "http.h"

#define _MPRINTF_REPLACE /* use our functions only */
#include <curl/mprintf.h>

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

static CURLcode Curl_output_basic_proxy(struct connectdata *conn);

/*
 * This function checks the linked list of custom HTTP headers for a particular
 * header (prefix).
 */
static char *checkheaders(struct SessionHandle *data, const char *thisheader)
{
    Sys_Printf("char *checkheaders(struct SessionHandle *data, const char *thisheader)\r\n");
    return NULL;
}


static CURLcode Curl_output_basic(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_output_basic(struct connectdata *conn)\r\n");
    return retVal;
}


static CURLcode Curl_output_basic_proxy(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_output_basic_proxy(struct connectdata *conn)\r\n");
    return retVal;
}


/*
 * Curl_http_auth_act() checks what authentication methods that are available
 * and decides which one (if any) to use. It will set 'newurl' if an auth
 * metod was picked.
 */

void Curl_http_auth_act(struct connectdata *conn)
{
    Sys_Printf("void Curl_http_auth_act(struct connectdata *conn)\r\n");
}


/*
 * Setup the authentication headers for the host/proxy and the correct
 * authentication method.
 */

static CURLcode http_auth_headers(struct connectdata *conn,
                                  char *request,
                                  char *path,
                                  bool *ready) /* set TRUE when the auth phase
                                           is done and ready to do the *actual*
                                           request */
{
  CURLcode result = CURLE_OK;
  struct SessionHandle *data = conn->data;
  char *auth=NULL;

  *ready = FALSE; /* default is no */

  if(!data->state.authstage) {
    if(conn->bits.httpproxy && conn->bits.proxy_user_passwd)
      Curl_http_auth_stage(data, 407);
    else if(conn->bits.user_passwd)
      Curl_http_auth_stage(data, 401);
    else {
      *ready = TRUE;
      return CURLE_OK; /* no authentication with no user or password */
    }
  }

  /* To prevent the user+password to get sent to other than the original
     host due to a location-follow, we do some weirdo checks here */
  if(!data->state.this_is_a_follow ||
     !data->state.auth_host ||
     curl_strequal(data->state.auth_host, conn->hostname) ||
     data->set.http_disable_hostname_check_before_authentication) {

  /* Send proxy authentication header if needed */
    if (data->state.authstage == 407) {
#ifdef USE_SSLEAY
      if(data->state.authwant == CURLAUTH_NTLM) {
        auth=(char *)"NTLM";
        result = Curl_output_ntlm(conn, TRUE, ready);
        if(result)
          return result;
      }
      else
#endif
      if(data->state.authwant == CURLAUTH_BASIC) {
        /* Basic */
        if(conn->bits.proxy_user_passwd &&
           !checkheaders(data, "Proxy-authorization:")) {
          auth=(char *)"Basic";
          result = Curl_output_basic_proxy(conn);
          if(result)
            return result;
        }
        *ready = TRUE;
        /* Switch to web authentication after proxy authentication is done */
        Curl_http_auth_stage(data, 401);
      }
      infof(data, "Proxy auth using %s with user '%s'\n",
            auth, conn->proxyuser?conn->proxyuser:"");
    }
    /* Send web authentication header if needed */
    if (data->state.authstage == 401) {
      auth = NULL;
#ifdef HAVE_GSSAPI
      if((data->state.authwant == CURLAUTH_GSSNEGOTIATE) &&
         data->state.negotiate.context && 
         !GSS_ERROR(data->state.negotiate.status)) {
        auth=(char *)"GSS-Negotiate";
        result = Curl_output_negotiate(conn);
        if (result)
          return result;
        *ready = TRUE;
      }
      else
#endif
#ifdef USE_SSLEAY
      if(data->state.authwant == CURLAUTH_NTLM) {
        auth=(char *)"NTLM";
        result = Curl_output_ntlm(conn, FALSE, ready);
        if(result)
          return result;
      }
      else
#endif
      {
        if((data->state.authwant == CURLAUTH_DIGEST) &&
           data->state.digest.nonce) {
          auth=(char *)"Digest";
          result = Curl_output_digest(conn,
                                      (unsigned char *)request,
                                      (unsigned char *)path);
          if(result)
            return result;
          *ready = TRUE;
        }
        else if(data->state.authwant == CURLAUTH_BASIC) {/* Basic */
          if(conn->bits.user_passwd &&
             !checkheaders(data, "Authorization:")) {
            auth=(char *)"Basic";
            result = Curl_output_basic(conn);
            if(result)
              return result;
          }
          /* basic is always ready */
          *ready = TRUE;
        }
      }
      if(auth)
        infof(data, "Server auth using %s with user '%s'\n",
              auth, conn->user);
    }
  }
  else
    *ready = TRUE;

  return result;
}


/*
 * Curl_http_auth() deals with Proxy-Authenticate: and WWW-Authenticate:
 * headers. They are dealt with both in the transfer.c main loop and in the
 * proxy CONNECT loop.
 */

CURLcode Curl_http_auth(struct connectdata *conn,
                        int httpcode,
                        char *header) /* pointing to the first non-space */
{
  /*
   * This resource requires authentication
   */
  struct SessionHandle *data = conn->data;

  long *availp;
  char *start;

  if (httpcode == 407) {
    start = header+strlen("Proxy-authenticate:");
    availp = &data->info.proxyauthavail;
  }
  else {
    start = header+strlen("WWW-Authenticate:");
    availp = &data->info.httpauthavail;
  }
  /*
   * Switch from proxy to web authentication and back if needed
   */
  if (httpcode == 407 && data->state.authstage != 407)
    Curl_http_auth_stage(data, 407);
              
  else if (httpcode == 401 && data->state.authstage != 401)
    Curl_http_auth_stage(data, 401);

  /* pass all white spaces */
  while(*start && isspace((int)*start))
    start++;

  /*
   * Here we check if we want the specific single authentiction (using ==) and
   * if we do, we initiate usage of it.
   *
   * If the provided authentication is wanted as one out of several accepted
   * types (using &), we OR this authenticaion type to the authavail
   * variable.
   */
  
#ifdef HAVE_GSSAPI
  if (checkprefix("GSS-Negotiate", start) ||
      checkprefix("Negotiate", start)) {
    *availp |= CURLAUTH_GSSNEGOTIATE;
    if(data->state.authwant == CURLAUTH_GSSNEGOTIATE) {
      /* if exactly this is wanted, go */
      int neg = Curl_input_negotiate(conn, start);
      if (neg == 0)
        conn->newurl = strdup(data->change.url);
    }
    else
      if(data->state.authwant & CURLAUTH_GSSNEGOTIATE)
        data->state.authavail |= CURLAUTH_GSSNEGOTIATE;
  }
  else
#endif
#ifdef USE_SSLEAY
    /* NTLM support requires the SSL crypto libs */
    if(checkprefix("NTLM", start)) {
      *availp |= CURLAUTH_NTLM;
      if(data->state.authwant == CURLAUTH_NTLM) {
        /* NTLM authentication is activated */
        CURLntlm ntlm =
          Curl_input_ntlm(conn, (bool)(httpcode == 407), start);
                  
        if(CURLNTLM_BAD != ntlm)
          conn->newurl = strdup(data->change.url); /* clone string */
        else
          infof(data, "Authentication problem. Ignoring this.\n");
      }
      else
        if(data->state.authwant & CURLAUTH_NTLM)
          data->state.authavail |= CURLAUTH_NTLM;
    }
    else
#endif
      if(checkprefix("Digest", start)) {
        *availp |= CURLAUTH_DIGEST;
        if(data->state.authwant == CURLAUTH_DIGEST) {
          /* Digest authentication is activated */
          CURLdigest dig = CURLDIGEST_BAD;

          if(data->state.digest.nonce)
            infof(data, "Authentication problem. Ignoring this.\n");
          else
            dig = Curl_input_digest(conn, start);
          
          if(CURLDIGEST_FINE == dig)
            /* We act on it. Store our new url, which happens to be
               the same one we already use! */
            conn->newurl = strdup(data->change.url); /* clone string */
        }
        else
          if(data->state.authwant & CURLAUTH_DIGEST) {
            /* We don't know if Digest is what we're gonna use, but we
               call this function anyway to store the digest data that
               is provided on this line, to skip the extra round-trip
               we need to do otherwise. We must sure to free this
               data! */
            Curl_input_digest(conn, start);
            data->state.authavail |= CURLAUTH_DIGEST;
          }
      }
      else if(checkprefix("Basic", start)) {
        *availp |= CURLAUTH_BASIC;
        if((data->state.authwant == CURLAUTH_BASIC) &&
           (httpcode == data->state.authstage)) {
          /* We asked for Basic authentication but got a 40X back
             anyway, which basicly means our name+password isn't
             valid. */
          data->state.authavail = CURLAUTH_NONE;
          infof(data, "Authentication problem. Ignoring this.\n");
        }
        else if(data->state.authwant & CURLAUTH_BASIC) {
          data->state.authavail |= CURLAUTH_BASIC;
        }
      }
  return CURLE_OK;
}


/* fread() emulation to provide POST and/or request data */
static size_t readmoredata(char *buffer,
                           size_t size,
                           size_t nitems,
                           void *userp)
{
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t readmoredata(char *buffer, size_t size, size_t nitems, void *userp)\r\n");
    return retVal;
}


/* ------------------------------------------------------------------------- */
/*
 * The add_buffer series of functions are used to build one large memory chunk
 * from repeated function invokes. Used so that the entire HTTP request can
 * be sent in one go.
 */

struct send_buffer {
  char *buffer;
  size_t size_max;
  size_t size_used;
};
typedef struct send_buffer send_buffer;

static CURLcode
 add_buffer(send_buffer *in, const void *inptr, size_t size);

/*
 * add_buffer_init() returns a fine buffer struct
 */
static
send_buffer *add_buffer_init(void)
{
    Sys_Printf("send_buffer *add_buffer_init(void)\r\n");
    return NULL;
}


/*
 * add_buffer_send() sends a buffer and frees all associated memory.
 */
static
CURLcode add_buffer_send(send_buffer *in,
                         struct connectdata *conn,
                         long *bytes_written) /* add the number of sent
                                                 bytes to this counter */
{
  ssize_t amount;
  CURLcode res;
  char *ptr;
  size_t size;
  struct HTTP *http = conn->proto.http;
  size_t sendsize;
  curl_socket_t sockfd = conn->sock[FIRSTSOCKET];

  /* The looping below is required since we use non-blocking sockets, but due
     to the circumstances we will just loop and try again and again etc */

  ptr = in->buffer;
  size = in->size_used;

  if(conn->protocol & PROT_HTTPS) {
    /* We never send more than CURL_MAX_WRITE_SIZE bytes in one single chunk
       when we speak HTTPS, as if only a fraction of it is sent now, this data
       needs to fit into the normal read-callback buffer later on and that
       buffer is using this size.
    */

    sendsize= (size > CURL_MAX_WRITE_SIZE)?CURL_MAX_WRITE_SIZE:size;

    /* OpenSSL is very picky and we must send the SAME buffer pointer to the
       library when we attempt to re-send this buffer. Sending the same data
       is not enough, we must use the exact same address. For this reason, we
       must copy the data to the uploadbuffer first, since that is the buffer
       we will be using if this send is retried later.
    */
    memcpy(conn->data->state.uploadbuffer, ptr, sendsize);
    ptr = conn->data->state.uploadbuffer;
  }
  else
    sendsize = size;
  
  res = Curl_write(conn, sockfd, ptr, sendsize, &amount);

  if(CURLE_OK == res) {

    if(conn->data->set.verbose)
      /* this data _may_ contain binary stuff */
      Curl_debug(conn->data, CURLINFO_HEADER_OUT, ptr, amount);

    *bytes_written += amount;
    
    if((size_t)amount != size) {
      /* The whole request could not be sent in one system call. We must queue
         it up and send it later when we get the chance. We must not loop here
         and wait until it might work again. */

      size -= amount;

      ptr = in->buffer + amount;
    
      /* backup the currently set pointers */
      http->backup.fread = conn->fread;
      http->backup.fread_in = conn->fread_in;
      http->backup.postdata = http->postdata;
      http->backup.postsize = http->postsize;

      /* set the new pointers for the request-sending */
      conn->fread = (curl_read_callback)readmoredata;
      conn->fread_in = (void *)conn;
      http->postdata = ptr;
      http->postsize = size;

      http->send_buffer = in;
      http->sending = HTTPSEND_REQUEST;
      
      return CURLE_OK;
    }
    http->sending = HTTPSEND_BODY;
    /* the full buffer was sent, clean up and return */
  }
  if(in->buffer)
    free(in->buffer);
  free(in);

  return res;
}


/* 
 * add_bufferf() builds a buffer from the formatted input
 */
static
CURLcode add_bufferf(send_buffer *in, const char *fmt, ...)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode add_bufferf(send_buffer *in, const char *fmt, ...)\r\n");
    return retVal;
}


/*
 * add_buffer() appends a memory chunk to the existing one
 */
static
CURLcode add_buffer(send_buffer *in, const void *inptr, size_t size)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode add_buffer(send_buffer *in, const void *inptr, size_t size)\r\n");
    return retVal;
}


/* end of the add_buffer functions */
/* ------------------------------------------------------------------------- */

/*
 * Curl_compareheader()
 *
 * Returns TRUE if 'headerline' contains the 'header' with given 'content'.
 * Pass headers WITH the colon.
 */
bool
Curl_compareheader(char *headerline,    /* line to check */
                   const char *header,  /* header keyword _with_ colon */
                   const char *content) /* content string to find */
{
  /* RFC2616, section 4.2 says: "Each header field consists of a name followed
   * by a colon (":") and the field value. Field names are case-insensitive.
   * The field value MAY be preceded by any amount of LWS, though a single SP
   * is preferred." */

  size_t hlen = strlen(header);
  size_t clen;
  size_t len;
  char *start;
  char *end;

  if(!strnequal(headerline, header, hlen))
    return FALSE; /* doesn't start with header */

  /* pass the header */
  start = &headerline[hlen];

  /* pass all white spaces */
  while(*start && isspace((int)*start))
    start++;

  /* find the end of the header line */
  end = strchr(start, '\r'); /* lines end with CRLF */
  if(!end) {
    /* in case there's a non-standard compliant line here */
    end = strchr(start, '\n');

    if(!end)
      /* hm, there's no line ending here, use the zero byte! */
      end = strchr(start, '\0');
  }

  len = end-start; /* length of the content part of the input line */
  clen = strlen(content); /* length of the word to find */

  /* find the content string in the rest of the line */
  for(;len>=clen;len--, start++) {
    if(strnequal(start, content, clen))
      return TRUE; /* match! */
  }

  return FALSE; /* no match */
}

/*
 * ConnectHTTPProxyTunnel() requires that we're connected to a HTTP proxy. This
 * function will issue the necessary commands to get a seamless tunnel through
 * this proxy. After that, the socket can be used just as a normal socket.
 */

CURLcode Curl_ConnectHTTPProxyTunnel(struct connectdata *conn,
                                     int sockindex,
                                     char *hostname,
                                     int remote_port)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_ConnectHTTPProxyTunnel(struct connectdata *conn, int sockindex, char *hostname, int remote_port)\r\n");
    return retVal;
}


/*
 * HTTP stuff to do at connect-time.
 */
CURLcode Curl_http_connect(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_http_connect(struct connectdata *conn)\r\n");
    return retVal;
}


CURLcode Curl_http_done(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_http_done(struct connectdata *conn)\r\n");
    return retVal;
}


void Curl_http_auth_stage(struct SessionHandle *data,
                          int stage)
{
    Sys_Printf("void Curl_http_auth_stage(struct SessionHandle *data, int stage)\r\n");
}


CURLcode Curl_http(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_http(struct connectdata *conn)\r\n");
    return retVal;
}

#endif
