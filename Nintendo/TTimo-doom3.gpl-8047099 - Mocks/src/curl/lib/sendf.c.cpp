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
 * $Id: sendf.c,v 1.80 2004/03/10 09:50:12 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <errno.h>

#ifdef HAVE_SYS_TYPES_H
#include <sys/types.h>
#endif

#ifdef HAVE_SYS_SOCKET_H
#include <sys/socket.h>	/* required for send() & recv() prototypes */
#endif

#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif

#include <curl/curl.h>
#include "urldata.h"
#include "sendf.h"
#include "connect.h" /* for the Curl_ourerrno() proto */

#define _MPRINTF_REPLACE /* use the internal *printf() functions */
#include <curl/mprintf.h>

#ifdef HAVE_KRB4
#include "security.h"
#endif
#include <string.h>
/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

/* returns last node in linked list */
static struct curl_slist *slist_get_last(struct curl_slist *list)
{
    Sys_Printf("curl_slist *slist_get_last(struct curl_slist *list)\r\n");
    return NULL;
}


/* append a struct to the linked list. It always retunrs the address of the
 * first record, so that you can sure this function as an initialization
 * function as well as an append function. If you find this bothersome,
 * then simply create a separate _init function and call it appropriately from
 * within the proram. */
struct curl_slist *curl_slist_append(struct curl_slist *list,
                                     const char *data)
{
    Sys_Printf("curl_slist *curl_slist_append(struct curl_slist *list, const char *data)\r\n");
    return NULL;
}


/* be nice and clean up resources */
void curl_slist_free_all(struct curl_slist *list)
{
    Sys_Printf("void curl_slist_free_all(struct curl_slist *list)\r\n");
}


/* Curl_infof() is for info message along the way */

void Curl_infof(struct SessionHandle *data, const char *fmt, ...)
{
    Sys_Printf("void Curl_infof(struct SessionHandle *data, const char *fmt, ...)\r\n");
}


/* Curl_failf() is for messages stating why we failed.
 * The message SHALL NOT include any LF or CR.
 */

void Curl_failf(struct SessionHandle *data, const char *fmt, ...)
{
    Sys_Printf("void Curl_failf(struct SessionHandle *data, const char *fmt, ...)\r\n");
}


/* Curl_sendf() sends formated data to the server */
CURLcode Curl_sendf(curl_socket_t sockfd, struct connectdata *conn,
                    const char *fmt, ...)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_sendf(curl_socket_t sockfd, struct connectdata *conn, const char *fmt, ...)\r\n");
    return retVal;
}


/*
 * Curl_write() is an internal write function that sends plain (binary) data
 * to the server. Works with plain sockets, SSL or kerberos.
 */
CURLcode Curl_write(struct connectdata *conn,
                    curl_socket_t sockfd,
                    void *mem,
                    size_t len,
                    ssize_t *written)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_write(struct connectdata *conn, curl_socket_t sockfd, void *mem, size_t len, ssize_t *written)\r\n");
    return retVal;
}


/* client_write() sends data to the write callback(s)

   The bit pattern defines to what "streams" to write to. Body and/or header.
   The defines are in sendf.h of course.
 */
CURLcode Curl_client_write(struct SessionHandle *data,
                           int type,
                           char *ptr,
                           size_t len)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_client_write(struct SessionHandle *data, int type, char *ptr, size_t len)\r\n");
    return retVal;
}


/*
 * Internal read-from-socket function. This is meant to deal with plain
 * sockets, SSL sockets and kerberos sockets.
 *
 * If the read would block (EWOULDBLOCK) we return -1. Otherwise we return
 * a regular CURLcode value.
 */
int Curl_read(struct connectdata *conn, /* connection data */
              curl_socket_t sockfd,     /* read from this socket */
              char *buf,                /* store read data here */
              size_t buffersize,        /* max amount to read */
              ssize_t *n)               /* amount bytes read */
{
  ssize_t nread;
#ifdef USE_SSLEAY
  /* Set 'num' to 0 or 1, depending on which socket that has been sent here.
     If it is the second socket, we set num to 1. Otherwise to 0. This lets
     us use the correct ssl handle. */
  int num = (sockfd == conn->sock[SECONDARYSOCKET]);

  *n=0; /* reset amount to zero */

  if (conn->ssl[num].use) {
    nread = SSL_read(conn->ssl[num].handle, buf, buffersize);

    if(nread < 0) {
      /* failed SSL_read */
      int err = SSL_get_error(conn->ssl[num].handle, nread);

      switch(err) {
      case SSL_ERROR_NONE: /* this is not an error */
      case SSL_ERROR_ZERO_RETURN: /* no more data */
        break;
      case SSL_ERROR_WANT_READ:
      case SSL_ERROR_WANT_WRITE:
        /* there's data pending, re-invoke SSL_read() */
        return -1; /* basicly EWOULDBLOCK */
      default:
        /* openssl/ssl.h says "look at error stack/return value/errno" */
        {
          char error_buffer[120]; /* OpenSSL documents that this must be at
                                     least 120 bytes long. */
          int sslerror = ERR_get_error();
          failf(conn->data, "SSL read: %s, errno %d",
                ERR_error_string(sslerror, error_buffer),
                Curl_ourerrno() );
        }
        return CURLE_RECV_ERROR;
      }
    }
  }
  else {
#else
    (void)conn;
#endif
    *n=0; /* reset amount to zero */
#ifdef HAVE_KRB4
    if(conn->sec_complete)
      nread = Curl_sec_read(conn, sockfd, buf, buffersize);
    else
#endif
      nread = sread(sockfd, buf, buffersize);

    if(-1 == nread) {
      int err = Curl_ourerrno();
      conn->sockerror = err;
#ifdef WIN32
      if(WSAEWOULDBLOCK == err)
#else
      if((EWOULDBLOCK == err) || (EAGAIN == err) || (EINTR == err))
#endif
        return -1;
    }
    else
      conn->sockerror = 0; /* no error */

#ifdef USE_SSLEAY
  }
#endif /* USE_SSLEAY */
  *n = nread;
  return CURLE_OK;
}

/* return 0 on success */
int Curl_debug(struct SessionHandle *data, curl_infotype type,
               char *ptr, size_t size)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Curl_debug(struct SessionHandle *data, curl_infotype type, char *ptr, size_t size)\r\n");
    return retVal;
}

