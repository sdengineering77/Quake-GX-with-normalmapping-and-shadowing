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
 * $Id: transfer.c,v 1.212 2004/03/16 09:16:38 bagder Exp $
 ***************************************************************************/

#include "setup.h"

/* -- WIN32 approved -- */
#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <stdlib.h>
#include <ctype.h>
#ifdef HAVE_SYS_TYPES_H
#include <sys/types.h>
#endif
#include <sys/stat.h>

#include <errno.h>

#include "strtoofft.h"
#include "strequal.h"

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
#ifdef HAVE_SYS_IOCTL_H
#include <sys/ioctl.h>
#endif
#include <signal.h>

#ifdef HAVE_SYS_PARAM_H
#include <sys/param.h>
#endif

#ifdef HAVE_SYS_SELECT_H
#include <sys/select.h>
#endif

#ifndef HAVE_SELECT
#error "We can't compile without select() support!"
#endif
#ifndef HAVE_SOCKET
#error "We can't compile without socket() support!"
#endif

#endif

#include "urldata.h"
#include <curl/curl.h>
#include <curl/types.h>
#include "netrc.h"

#include "content_encoding.h"
#include "hostip.h"
#include "transfer.h"
#include "sendf.h"
#include "speedcheck.h"
#include "progress.h"
#include "getdate.h"
#include "http.h"
#include "url.h"
#include "getinfo.h"
#include "ssluse.h"
#include "http_digest.h"
#include "http_ntlm.h"
#include "http_negotiate.h"
#include "share.h"

#define _MPRINTF_REPLACE /* use our functions only */
#include <curl/mprintf.h>

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

#define CURL_TIMEOUT_EXPECT_100 1000 /* counting ms here */

enum {
  KEEP_NONE,
  KEEP_READ,
  KEEP_WRITE
};

/* We keep this static and global since this is read-only and NEVER
   changed. It should just remain a blanked-out timeout value. */
static struct timeval notimeout={0,0};

/*
 * This function will call the read callback to fill our buffer with data
 * to upload.
 */
static int fillbuffer(struct connectdata *conn,
                      int bytes)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int fillbuffer(struct connectdata *conn, int bytes)\r\n");
    return retVal;
}


/*
 * checkhttpprefix()
 *
 * Returns TRUE if member of the list matches prefix of string
 */
static bool
checkhttpprefix(struct SessionHandle *data,
                const char *s)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolcheckhttpprefix(struct SessionHandle *data, const char *s)\r\n");
    return retVal;
}


CURLcode Curl_readwrite(struct connectdata *conn,
                        bool *done)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_readwrite(struct connectdata *conn, bool *done)\r\n");
    return retVal;
}


CURLcode Curl_readwrite_init(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_readwrite_init(struct connectdata *conn)\r\n");
    return retVal;
}


void Curl_single_fdset(struct connectdata *conn,
                       fd_set *read_fd_set,
                       fd_set *write_fd_set,
                       fd_set *exc_fd_set,
                       int *max_fd)
{
    Sys_Printf("void Curl_single_fdset(struct connectdata *conn, fd_set *read_fd_set, fd_set *write_fd_set, fd_set *exc_fd_set, int *max_fd)\r\n");
}



/*
 * Transfer()
 *
 * This function is what performs the actual transfer. It is capable of
 * doing both ways simultaneously.
 * The transfer must already have been setup by a call to Curl_Transfer().
 *
 * Note that headers are created in a preallocated buffer of a default size.
 * That buffer can be enlarged on demand, but it is never shrunken again.
 *
 * Parts of this function was once written by the friendly Mark Butler
 * <butlerm@xmission.com>.
 */

static CURLcode
Transfer(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcodeTransfer(struct connectdata *conn)\r\n");
    return retVal;
}


CURLcode Curl_pretransfer(struct SessionHandle *data)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_pretransfer(struct SessionHandle *data)\r\n");
    return retVal;
}


CURLcode Curl_posttransfer(struct SessionHandle *data)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_posttransfer(struct SessionHandle *data)\r\n");
    return retVal;
}


static int strlen_url(char *url)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int strlen_url(char *url)\r\n");
    return retVal;
}


static void strcpy_url(char *output, char *url)
{
    Sys_Printf("void strcpy_url(char *output, char *url)\r\n");
}


CURLcode Curl_follow(struct SessionHandle *data,
                     char *newurl) /* this 'newurl' is the Location: string,
                                      and it must be malloc()ed before passed
                                      here */
{
  /* Location: redirect */
  char prot[16]; /* URL protocol string storage */
  char letter;   /* used for a silly sscanf */
  int newlen;
  char *newest;
  
  if (data->set.maxredirs &&
      (data->set.followlocation >= data->set.maxredirs)) {
    failf(data,"Maximum (%d) redirects followed", data->set.maxredirs);
    return CURLE_TOO_MANY_REDIRECTS;
  }

  /* mark the next request as a followed location: */
  data->state.this_is_a_follow = TRUE;

  data->set.followlocation++; /* count location-followers */

  if(data->set.http_auto_referer) {
    /* We are asked to automatically set the previous URL as the
       referer when we get the next URL. We pick the ->url field,
       which may or may not be 100% correct */

    if(data->change.referer_alloc)
      /* If we already have an allocated referer, free this first */
      free(data->change.referer);

    data->change.referer = strdup(data->change.url);
    data->change.referer_alloc = TRUE; /* yes, free this later */
  }

  if(2 != sscanf(newurl, "%15[^?&/:]://%c", prot, &letter)) {
    /***
     *DANG* this is an RFC 2068 violation. The URL is supposed
     to be absolute and this doesn't seem to be that!
     ***
     Instead, we have to TRY to append this new path to the old URL
     to the right of the host part. Oh crap, this is doomed to cause
     problems in the future...
    */
    char *protsep;
    char *pathsep;

    char *useurl = newurl;
    int urllen;

    /* we must make our own copy of the URL to play with, as it may
       point to read-only data */
    char *url_clone=strdup(data->change.url);

    if(!url_clone)
      return CURLE_OUT_OF_MEMORY; /* skip out of this NOW */

    /* protsep points to the start of the host name */
    protsep=strstr(url_clone, "//");
    if(!protsep)
      protsep=url_clone;
    else
      protsep+=2; /* pass the slashes */

    if('/' != newurl[0]) {
      int level=0;

      /* First we need to find out if there's a ?-letter in the URL,
         and cut it and the right-side of that off */
      pathsep = strrchr(protsep, '?');
      if(pathsep)
        *pathsep=0;
      
      /* we have a relative path to append to the last slash if
         there's one available */
      pathsep = strrchr(protsep, '/');
      if(pathsep)
        *pathsep=0;

      /* Check if there's any slash after the host name, and if so,
         remember that position instead */
      pathsep = strchr(protsep, '/');
      if(pathsep)
        protsep = pathsep+1;
      else
        protsep = NULL;

      /* now deal with one "./" or any amount of "../" in the newurl
         and act accordingly */

      if((useurl[0] == '.') && (useurl[1] == '/'))
        useurl+=2; /* just skip the "./" */
            
      while((useurl[0] == '.') &&
            (useurl[1] == '.') &&
            (useurl[2] == '/')) {
        level++; 
        useurl+=3; /* pass the "../" */
      }

      if(protsep) {
        while(level--) {
          /* cut off one more level from the right of the original URL */
          pathsep = strrchr(protsep, '/');
          if(pathsep)
            *pathsep=0;
          else {
            *protsep=0;
            break;
          }
        }
      }
    }
    else {
      /* We got a new absolute path for this server, cut off from the
         first slash */
      pathsep = strchr(protsep, '/');
      if(pathsep)
        *pathsep=0;
      else {
        /* There was no slash. Now, since we might be operating on a badly
           formatted URL, such as "http://www.url.com?id=2380" which doesn't
           use a slash separator as it is supposed to, we need to check for a
           ?-letter as well! */
        pathsep = strchr(protsep, '?');
        if(pathsep)
          *pathsep=0;
      }
    }

    /* If the new part contains a space, this is a mighty stupid redirect
       but we still make an effort to do "right". To the left of a '?'
       letter we replace each space with %20 while it is replaced with '+'
       on the right side of the '?' letter.
    */
    newlen = strlen_url(useurl);

    urllen = strlen(url_clone);
    
    newest=(char *)malloc( urllen + 1 + /* possible slash */
                           newlen + 1 /* zero byte */);
    
    if(!newest)
      return CURLE_OUT_OF_MEMORY; /* go out from this */

    /* copy over the root url part */
    memcpy(newest, url_clone, urllen);

    /* check if we need to append a slash */
    if(('/' == useurl[0]) || (protsep && !*protsep))
      ;
    else
      newest[urllen++]='/';

    /* then append the new piece on the right side */
    strcpy_url(&newest[urllen], useurl);

    free(newurl); /* newurl is the allocated pointer */
    free(url_clone);
    newurl = newest;
  }
  else {
    /* This is an absolute URL, don't allow the custom port number */
    data->state.allow_port = FALSE;

    if(strchr(newurl, ' ')) {
      /* This new URL contains at least one space, this is a mighty stupid
         redirect but we still make an effort to do "right". */
      newlen = strlen_url(newurl);

      newest = malloc(newlen+1); /* get memory for this */
      if(newest) {
        strcpy_url(newest, newurl); /* create a space-free URL */

        free(newurl); /* that was no good */
        newurl = newest; /* use this instead now */
      }
    }

  }

  if(data->change.url_alloc)
    free(data->change.url);
  else
    data->change.url_alloc = TRUE; /* the URL is allocated */
      
  data->change.url = newurl;
  newurl = NULL; /* don't free! */

  infof(data, "Issue another request to this URL: '%s'\n", data->change.url);

  /*
   * We get here when the HTTP code is 300-399 (and 401). We need to perform
   * differently based on exactly what return code there was.
   *
   * News from 7.10.6: we can also get here on a 401, in case we act on a
   * HTTP authentication scheme other than Basic.
   */
  switch(data->info.httpcode) {
  case 401:
    /* Act on an authentication, we keep on moving and do the Authorization:
       XXXX header in the HTTP request code snippet */
    break;
  case 300: /* Multiple Choices */
  case 306: /* Not used */
  case 307: /* Temporary Redirect */
  default:  /* for all unknown ones */
    /* These are explicitly mention since I've checked RFC2616 and they
     * seem to be OK to POST to.
     */
    break;
  case 301: /* Moved Permanently */
    /* (quote from RFC2616, section 10.3.2):
     * 
     *  Note: When automatically redirecting a POST request after
     *  receiving a 301 status code, some existing HTTP/1.0 user agents
     *  will erroneously change it into a GET request.
     *
     * ----
     * Warning: Because most of importants user agents do this clear
     * RFC2616 violation, many webservers expect this misbehavior. So
     * these servers often answers to a POST request with an error page.
     * To be sure that libcurl gets the page that most user agents
     * would get, libcurl has to force GET:
     */
    if( data->set.httpreq == HTTPREQ_POST
        || data->set.httpreq == HTTPREQ_POST_FORM) {
      infof(data,
            "Violate RFC 2616/10.3.2 and switch from POST to GET\n");
      data->set.httpreq = HTTPREQ_GET;
    }
    break;
  case 302: /* Found */
    /* (From 10.3.3)
       
    Note: RFC 1945 and RFC 2068 specify that the client is not allowed
    to change the method on the redirected request.  However, most
    existing user agent implementations treat 302 as if it were a 303
    response, performing a GET on the Location field-value regardless
    of the original request method. The status codes 303 and 307 have
    been added for servers that wish to make unambiguously clear which
    kind of reaction is expected of the client.
    
    (From 10.3.4)
    
    Note: Many pre-HTTP/1.1 user agents do not understand the 303
    status. When interoperability with such clients is a concern, the
    302 status code may be used instead, since most user agents react
    to a 302 response as described here for 303.             
    */
  case 303: /* See Other */
    /* Disable both types of POSTs, since doing a second POST when
     * following isn't what anyone would want! */
    if(data->set.httpreq != HTTPREQ_GET) {
      data->set.httpreq = HTTPREQ_GET; /* enforce GET request */
      infof(data, "Disables POST, goes with %s\n",
            data->set.no_body?"HEAD":"GET");
    }
    break;
  case 304: /* Not Modified */
    /* 304 means we did a conditional request and it was "Not modified".
     * We shouldn't get any Location: header in this response!
     */
    break;
  case 305: /* Use Proxy */
    /* (quote from RFC2616, section 10.3.6):
     * "The requested resource MUST be accessed through the proxy given
     * by the Location field. The Location field gives the URI of the
     * proxy.  The recipient is expected to repeat this single request
     * via the proxy. 305 responses MUST only be generated by origin
     * servers."
     */
    break;
  }
  Curl_pgrsTime(data, TIMER_REDIRECT);
  Curl_pgrsResetTimes(data);

  return CURLE_OK;
}

CURLcode Curl_perform(struct SessionHandle *data)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_perform(struct SessionHandle *data)\r\n");
    return retVal;
}


CURLcode 
Curl_Transfer(struct connectdata *c_conn, /* connection data */
              int sockindex,       /* socket index to read from or -1 */
              curl_off_t size,     /* -1 if unknown at this point */
              bool getheader,      /* TRUE if header parsing is wanted */
              curl_off_t *bytecountp, /* return number of bytes read or NULL */
              int writesockindex,  /* socket index to write to, it may very
                                      well be the same we read from. -1
                                      disables */
              curl_off_t *writecountp /* return number of bytes written or
                                       NULL */
              )
{
  struct connectdata *conn = (struct connectdata *)c_conn;
  if(!conn)
    return CURLE_BAD_FUNCTION_ARGUMENT;

  curlassert((sockindex <= 1) && (sockindex >= -1));

  /* now copy all input parameters */
  conn->sockfd = sockindex==-1?
    CURL_SOCKET_BAD:conn->sock[sockindex];
  conn->size = size;
  conn->bits.getheader = getheader;
  conn->bytecountp = bytecountp;
  conn->writesockfd = writesockindex==-1?
    CURL_SOCKET_BAD:conn->sock[writesockindex];
  conn->writebytecountp = writecountp;

  return CURLE_OK;

}
