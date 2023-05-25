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
 * $Id: connect.c,v 1.82 2004/03/17 12:46:45 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#ifndef WIN32
/* headers for non-win32 */
#include <sys/time.h>
#ifdef HAVE_SYS_TYPES_H
#include <sys/types.h>
#endif
#ifdef HAVE_SYS_SOCKET_H
#include <sys/socket.h>
#endif
#include <sys/ioctl.h>
#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif
#ifdef HAVE_NETDB_H
#include <netdb.h>
#endif
#ifdef HAVE_FCNTL_H
#include <fcntl.h>
#endif
#ifdef HAVE_NETINET_IN_H
#include <netinet/in.h>
#endif
#ifdef HAVE_ARPA_INET_H
#include <arpa/inet.h>
#endif
#ifdef HAVE_STDLIB_H
#include <stdlib.h> /* required for free() prototype, without it, this crashes
                       on macos 68K */
#endif
#if (defined(HAVE_FIONBIO) && defined(__NOVELL_LIBC__))
#include <sys/filio.h>
#endif
#if (defined(NETWARE) && defined(__NOVELL_LIBC__))
#undef in_addr_t
#define in_addr_t unsigned long
#endif
#ifdef	VMS
#include <in.h>
#include <inet.h>
#endif

#endif
#include <stdio.h>
#include <errno.h>
#include <string.h>

#ifndef TRUE
#define TRUE 1
#define FALSE 0
#endif

#ifdef WIN32
#include <windows.h>
#define EINPROGRESS WSAEINPROGRESS
#define EWOULDBLOCK WSAEWOULDBLOCK
#define EISCONN     WSAEISCONN
#define ENOTSOCK    WSAENOTSOCK
#define ECONNREFUSED WSAECONNREFUSED
#endif

#include "urldata.h"
#include "sendf.h"
#include "if2ip.h"
#include "connect.h"

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

static bool verifyconnect(curl_socket_t sockfd);

int Curl_ourerrno(void)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Curl_ourerrno(void)\r\n");
    return retVal;
}


/*************************************************************************
 * Curl_nonblock
 *
 * Description:
 *  Set the socket to either blocking or non-blocking mode.
 */

int Curl_nonblock(curl_socket_t sockfd,    /* operate on this */
                  int nonblock   /* TRUE or FALSE */)
{
#undef SETBLOCK
#ifdef HAVE_O_NONBLOCK
  /* most recent unix versions */
  int flags;

  flags = fcntl(sockfd, F_GETFL, 0);
  if (TRUE == nonblock)
    return fcntl(sockfd, F_SETFL, flags | O_NONBLOCK);
  else
    return fcntl(sockfd, F_SETFL, flags & (~O_NONBLOCK));
#define SETBLOCK 1
#endif

#ifdef HAVE_FIONBIO
  /* older unix versions */
  int flags;

  flags = nonblock;
  return ioctl(sockfd, FIONBIO, &flags);
#define SETBLOCK 2
#endif

#ifdef HAVE_IOCTLSOCKET
  /* Windows? */
  int flags;
  flags = nonblock;
  return ioctlsocket(sockfd, FIONBIO, &flags);
#define SETBLOCK 3
#endif

#ifdef HAVE_IOCTLSOCKET_CASE
  /* presumably for Amiga */
  return IoctlSocket(sockfd, FIONBIO, (long)nonblock);
#define SETBLOCK 4
#endif

#ifdef HAVE_SO_NONBLOCK
  /* BeOS */
  long b = nonblock ? 1 : 0;
  return setsockopt(sockfd, SOL_SOCKET, SO_NONBLOCK, &b, sizeof(b));
#define SETBLOCK 5
#endif

#ifdef HAVE_DISABLED_NONBLOCKING
  return 0; /* returns success */
#define SETBLOCK 6
#endif

#ifndef SETBLOCK
#error "no non-blocking method was found/used/set"
#endif
}

/*
 * waitconnect() returns:
 * 0    fine connect
 * -1   select() error
 * 1    select() timeout
 * 2    select() returned with an error condition
 */
static
int waitconnect(curl_socket_t sockfd, /* socket */
                long timeout_msec)
{
  fd_set fd;
  fd_set errfd;
  struct timeval interval;
  int rc;
#ifdef mpeix
  /* Call this function once now, and ignore the results. We do this to
     "clear" the error state on the socket so that we can later read it
     reliably. This is reported necessary on the MPE/iX operating system. */
  verifyconnect(sockfd);
#endif

  /* now select() until we get connect or timeout */
  FD_ZERO(&fd);
  FD_SET(sockfd, &fd);

  FD_ZERO(&errfd);
  FD_SET(sockfd, &errfd);

  interval.tv_sec = timeout_msec/1000;
  timeout_msec -= interval.tv_sec*1000;

  interval.tv_usec = timeout_msec*1000;

  rc = select(sockfd+1, NULL, &fd, &errfd, &interval);
  if(-1 == rc)
    /* error, no connect here, try next */
    return -1;
  
  else if(0 == rc)
    /* timeout, no connect today */
    return 1;

  if(FD_ISSET(sockfd, &errfd))
    /* error condition caught */
    return 2;

  /* we have a connect! */
  return 0;
}

static CURLcode bindlocal(struct connectdata *conn,
                          curl_socket_t sockfd)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode bindlocal(struct connectdata *conn, curl_socket_t sockfd)\r\n");
    return retVal;
}


/*
 * verifyconnect() returns TRUE if the connect really has happened.
 */
static bool verifyconnect(curl_socket_t sockfd)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool verifyconnect(curl_socket_t sockfd)\r\n");
    return retVal;
}


/*
 * Curl_is_connected() is used from the multi interface to check if the
 * firstsocket has connected.
 */

CURLcode Curl_is_connected(struct connectdata *conn,
                           curl_socket_t sockfd,
                           bool *connected)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_is_connected(struct connectdata *conn, curl_socket_t sockfd, bool *connected)\r\n");
    return retVal;
}



/*
 * TCP connect to the given host with timeout, proxy or remote doesn't matter.
 * There might be more than one IP address to try out. Fill in the passed
 * pointer with the connected socket.
 */

CURLcode Curl_connecthost(struct connectdata *conn,  /* context */
                          struct Curl_dns_entry *remotehost, /* use this one */
                          int port,                  /* connect to this */
                          curl_socket_t *sockconn,   /* the connected socket */
                          Curl_ipconnect **addr,     /* the one we used */
                          bool *connected)           /* really connected? */
{
  struct SessionHandle *data = conn->data;
  int rc;
  curl_socket_t sockfd= CURL_SOCKET_BAD;
  int aliasindex=0;
  char *hostname;

  struct timeval after;
  struct timeval before = Curl_tvnow();

#ifdef ENABLE_IPV6
  struct addrinfo *ai;
#endif  

  /*************************************************************
   * Figure out what maximum time we have left
   *************************************************************/
  long timeout_ms=300000; /* milliseconds, default to five minutes */

  *connected = FALSE; /* default to not connected */

  if(data->set.timeout || data->set.connecttimeout) {
    double has_passed;

    /* Evaluate in milliseconds how much time that has passed */
    has_passed = Curl_tvdiff(Curl_tvnow(), data->progress.start);

#ifndef min
#define min(a, b)   ((a) < (b) ? (a) : (b))
#endif

    /* get the most strict timeout of the ones converted to milliseconds */
    if(data->set.timeout && data->set.connecttimeout) {
      if (data->set.timeout < data->set.connecttimeout)
        timeout_ms = data->set.timeout*1000;
      else 
        timeout_ms = data->set.connecttimeout*1000;
    }
    else if(data->set.timeout)
      timeout_ms = data->set.timeout*1000;
    else
      timeout_ms = data->set.connecttimeout*1000;

    /* subtract the passed time */
    timeout_ms -= (long)has_passed;

    if(timeout_ms < 0) {
      /* a precaution, no need to continue if time already is up */
      failf(data, "Connection time-out");
      return CURLE_OPERATION_TIMEOUTED;
    }
  }

  hostname = data->change.proxy?conn->proxyhost:conn->hostname;
  infof(data, "About to connect() to %s port %d\n",
        hostname, port);

#ifdef ENABLE_IPV6
  /*
   * Connecting with a getaddrinfo chain
   */
  for (ai = remotehost->addr; ai; ai = ai->ai_next, aliasindex++) {
    sockfd = socket(ai->ai_family, ai->ai_socktype, ai->ai_protocol);
    if (sockfd == CURL_SOCKET_BAD)
      continue;
#else
  /*
   * Connecting with old style IPv4-only support
   */

  /* This is the loop that attempts to connect to all IP-addresses we
     know for the given host. One by one. */
  for(rc=-1, aliasindex=0;
      rc && (struct in_addr *)remotehost->addr->h_addr_list[aliasindex];
      aliasindex++) {
    struct sockaddr_in serv_addr;

    /* create an IPv4 TCP socket */
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if(CURL_SOCKET_BAD == sockfd) {
      failf(data, "couldn't create socket");
      return CURLE_COULDNT_CONNECT; /* big time error */
    }

    /* nasty address work before connect can be made */
    memset((char *) &serv_addr, '\0', sizeof(serv_addr));
    memcpy((char *)&(serv_addr.sin_addr),
           (struct in_addr *)remotehost->addr->h_addr_list[aliasindex],
           sizeof(struct in_addr));
    serv_addr.sin_family = remotehost->addr->h_addrtype;
    serv_addr.sin_port = htons((unsigned short)port);
#endif

    if(conn->data->set.device) {
      /* user selected to bind the outgoing socket to a specified "device"
         before doing connect */
      CURLcode res = bindlocal(conn, sockfd);
      if(res)
        return res;
    }

    /* set socket non-blocking */
    Curl_nonblock(sockfd, TRUE);

    /* do not use #ifdef within the function arguments below, as connect() is
       a defined macro on some platforms and some compilers don't like to mix
       #ifdefs with macro usage! (AmigaOS is one such platform) */
#ifdef ENABLE_IPV6
    rc = connect(sockfd, ai->ai_addr, ai->ai_addrlen);
#else
    rc = connect(sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr));
#endif

    if(-1 == rc) {
      int error=Curl_ourerrno();

      switch (error) {
      case EINPROGRESS:
      case EWOULDBLOCK:
#if defined(EAGAIN) && EAGAIN != EWOULDBLOCK
        /* On some platforms EAGAIN and EWOULDBLOCK are the
         * same value, and on others they are different, hence
         * the odd #if
         */
      case EAGAIN:
#endif
        /* asynchronous connect, wait for connect or timeout */
        if(data->state.used_interface == Curl_if_multi)
          /* don't hang when doing multi */
          timeout_ms = 0;
        
        rc = waitconnect(sockfd, timeout_ms);
        break;
      default:
        /* unknown error, fallthrough and try another address! */
        failf(data, "Failed to connect to %s IP number %d: %d",
              hostname, aliasindex+1, error);
        break;
      }
    }

    /* The '1 == rc' comes from the waitconnect(), and not from connect().
       We can be sure of this since connect() cannot return 1. */
    if((1 == rc) && (data->state.used_interface == Curl_if_multi)) {
      /* Timeout when running the multi interface, we return here with a
         CURLE_OK return code. */
      rc = 0;
      break;
    }
      
    if(0 == rc) {
      if (verifyconnect(sockfd)) {
        /* we are connected, awesome! */
        *connected = TRUE; /* this is a true connect */
        break;
      }
      /* nope, not connected for real */
      rc = -1;
    }

    /* connect failed or timed out */
    sclose(sockfd);
    sockfd = -1;

    /* get a new timeout for next attempt */
    after = Curl_tvnow();
    timeout_ms -= Curl_tvdiff(after, before);
    if(timeout_ms < 0) {
      failf(data, "connect() timed out!");
      return CURLE_OPERATION_TIMEOUTED;
    }
    before = after;
  }
  if (sockfd == CURL_SOCKET_BAD) {
    /* no good connect was made */
    *sockconn = -1;
    failf(data, "Connect failed");
    return CURLE_COULDNT_CONNECT;
  }

  /* leave the socket in non-blocking mode */

  /* store the address we use */
  if(addr) {
#ifdef ENABLE_IPV6
    *addr = ai;
#else
    *addr = (struct in_addr *)remotehost->addr->h_addr_list[aliasindex];
#endif
  }

  /* allow NULL-pointers to get passed in */
  if(sockconn)
    *sockconn = sockfd;    /* the socket descriptor we've connected */

  return CURLE_OK;
}
