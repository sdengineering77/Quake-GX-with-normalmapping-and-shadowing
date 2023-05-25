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
 * $Id: url.c,v 1.350 2004/03/12 08:55:51 bagder Exp $
 ***************************************************************************/

/* -- WIN32 approved -- */

#include "setup.h"

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
#include <netinet/in.h>
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
#include <sys/ioctl.h>
#include <signal.h>

#ifdef HAVE_SYS_PARAM_H
#include <sys/param.h>
#endif

#ifdef HAVE_SYS_SELECT_H
#include <sys/select.h>
#endif

#ifdef VMS
#include <in.h>
#include <inet.h>
#endif

#ifdef HAVE_SETJMP_H
#include <setjmp.h>
#endif

#ifndef HAVE_SELECT
#error "We can't compile without select() support!"
#endif
#ifndef HAVE_SOCKET
#error "We can't compile without socket() support!"
#endif


#endif

#ifdef HAVE_OPENSSL_ENGINE_H
#include <openssl/engine.h>
#endif
#include "urldata.h"
#include "netrc.h"

#include "formdata.h"
#include "base64.h"
#include "ssluse.h"
#include "hostip.h"
#include "if2ip.h"
#include "transfer.h"
#include "sendf.h"
#include "progress.h"
#include "cookie.h"
#include "strequal.h"
#include "escape.h"
#include "strtok.h"
#include "share.h"
#include "content_encoding.h"
#include "http_digest.h"
#include "http_negotiate.h"

/* And now for the protocols */
#include "ftp.h"
#include "dict.h"
#include "telnet.h"
#include "http.h"
#include "file.h"
#include "ldap.h"
#include "url.h"
#include "connect.h"
//#include <ca-bundle.h>

#include <curl/types.h>

#if defined(HAVE_INET_NTOA_R) && !defined(HAVE_INET_NTOA_R_DECL)
#include "inet_ntoa_r.h"
#endif

#define _MPRINTF_REPLACE /* use our functions only */
#include <curl/mprintf.h>

#ifdef HAVE_KRB4
#include "security.h"
#endif

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

/* Local static prototypes */
static int ConnectionKillOne(struct SessionHandle *data);
static bool ConnectionExists(struct SessionHandle *data,
                             struct connectdata *needle,
                             struct connectdata **usethis);
static unsigned int ConnectionStore(struct SessionHandle *data,
                                    struct connectdata *conn);
static bool safe_strequal(char* str1, char* str2);

#ifndef USE_ARES
/* not for Win32, unless it is cygwin
   not for ares builds */
#if !defined(WIN32) || defined(__CYGWIN32__)

#ifndef RETSIGTYPE
#define RETSIGTYPE void
#endif
#ifdef HAVE_SIGSETJMP
extern sigjmp_buf curl_jmpenv;
#endif
static
RETSIGTYPE alarmfunc(int sig)
{
    RETSIGTYPE retVal;
    memset(&retVal, 0, sizeof(RETSIGTYPE));
    Sys_Printf("RETSIGTYPE alarmfunc(int sig)\r\n");
    return retVal;
}

#endif
#endif /* USE_ARES */

void Curl_safefree(void *ptr)
{
    Sys_Printf("void Curl_safefree(void *ptr)\r\n");
}


/*
 * This is the internal function curl_easy_cleanup() calls. This should
 * cleanup and free all resources associated with this sessionhandle.
 *
 * NOTE: if we ever add something that attempts to write to a socket or
 * similar here, we must ignore SIGPIPE first. It is currently only done
 * when curl_easy_perform() is invoked.
 */

CURLcode Curl_close(struct SessionHandle *data)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_close(struct SessionHandle *data)\r\n");
    return retVal;
}


CURLcode Curl_open(struct SessionHandle **curl)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_open(struct SessionHandle **curl)\r\n");
    return retVal;
}


CURLcode Curl_setopt(struct SessionHandle *data, CURLoption option, ...)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_setopt(struct SessionHandle *data, CURLoption option, ...)\r\n");
    return retVal;
}


CURLcode Curl_disconnect(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_disconnect(struct connectdata *conn)\r\n");
    return retVal;
}


/*
 * This function should return TRUE if the socket is to be assumed to
 * be dead. Most commonly this happens when the server has closed the
 * connection due to inactivity.
 */
static bool SocketIsDead(curl_socket_t sock)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool SocketIsDead(curl_socket_t sock)\r\n");
    return retVal;
}


/*
 * Given one filled in connection struct (named needle), this function should
 * detect if there already is one that have all the significant details
 * exactly the same and thus should be used instead.
 */
static bool
ConnectionExists(struct SessionHandle *data,
                 struct connectdata *needle,
                 struct connectdata **usethis)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolConnectionExists(struct SessionHandle *data, struct connectdata *needle, struct connectdata **usethis)\r\n");
    return retVal;
}


/*
 * This function frees/closes a connection in the connection cache. This
 * should take the previously set policy into account when deciding which
 * of the connections to kill.
 */
static int
ConnectionKillOne(struct SessionHandle *data)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intConnectionKillOne(struct SessionHandle *data)\r\n");
    return retVal;
}


/*
 * The given input connection struct pointer is to be stored. If the "cache"
 * is already full, we must clean out the most suitable using the previously
 * set policy.
 *
 * The given connection should be unique. That must've been checked prior to
 * this call.
 */
static unsigned int
ConnectionStore(struct SessionHandle *data,
                struct connectdata *conn)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intConnectionStore(struct SessionHandle *data, struct connectdata *conn)\r\n");
    return retVal;
}


/*
 * This function logs in to a SOCKS5 proxy and sends the specifies the final
 * desitination server.
 */
static int handleSock5Proxy(const char *proxy_name,
                            const char *proxy_password,
                            struct connectdata *conn)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int handleSock5Proxy(const char *proxy_name, const char *proxy_password, struct connectdata *conn)\r\n");
    return retVal;
}


static CURLcode ConnectPlease(struct connectdata *conn,
                              struct Curl_dns_entry *hostaddr,
                              bool *connected)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode ConnectPlease(struct connectdata *conn, struct Curl_dns_entry *hostaddr, bool *connected)\r\n");
    return retVal;
}


/*
 * ALERT! The 'dns' pointer being passed in here might be NULL at times.
 */
static void verboseconnect(struct connectdata *conn,
                           struct Curl_dns_entry *dns)
{
    Sys_Printf("void verboseconnect(struct connectdata *conn, struct Curl_dns_entry *dns)\r\n");
}

#endif
}

/*
 * We have discovered that the TCP connection has been successful, we can now
 * proceed with some action.
 *
 * If we're using the multi interface, this host address pointer is most
 * likely NULL at this point as we can't keep the resolved info around. This
 * may call for some reworking, like a reference counter in the struct or
 * something. The hostaddr is not used for very much though, we have the
 * 'serv_addr' field in the connectdata struct for most of it.
 */
CURLcode Curl_protocol_connect(struct connectdata *conn,
                               struct Curl_dns_entry *hostaddr)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_protocol_connect(struct connectdata *conn, struct Curl_dns_entry *hostaddr)\r\n");
    return retVal;
}


/*
 * CreateConnection() sets up a new connectdata struct, or re-uses an already
 * existing one, and resolves host name.
 *
 * if this function returns CURLE_OK and *async is set to TRUE, the resolve
 * response will be coming asynchronously. If *async is FALSE, the name is
 * already resolved.
 */

static CURLcode CreateConnection(struct SessionHandle *data,
                                 struct connectdata **in_connect,
                                 struct Curl_dns_entry **addr,
                                 bool *async)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode CreateConnection(struct SessionHandle *data, struct connectdata **in_connect, struct Curl_dns_entry **addr, bool *async)\r\n");
    return retVal;
}


/* SetupConnection() should be called after the name resolve initiated in
 * CreateConnection() is all done.
 */
 
static CURLcode SetupConnection(struct connectdata *conn,
                                struct Curl_dns_entry *hostaddr)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode SetupConnection(struct connectdata *conn, struct Curl_dns_entry *hostaddr)\r\n");
    return retVal;
}


CURLcode Curl_connect(struct SessionHandle *data,
                      struct connectdata **in_connect,
                      bool *asyncp)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_connect(struct SessionHandle *data, struct connectdata **in_connect, bool *asyncp)\r\n");
    return retVal;
}


/* Call this function after Curl_connect() has returned async=TRUE and
   then a successful name resolve has been received */
CURLcode Curl_async_resolved(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_async_resolved(struct connectdata *conn)\r\n");
    return retVal;
}



CURLcode Curl_done(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_done(struct connectdata *conn)\r\n");
    return retVal;
}


CURLcode Curl_do(struct connectdata **connp)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_do(struct connectdata **connp)\r\n");
    return retVal;
}


CURLcode Curl_do_more(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_do_more(struct connectdata *conn)\r\n");
    return retVal;
}


static bool safe_strequal(char* str1, char* str2)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool safe_strequal(char* str1, char* str2)\r\n");
    return retVal;
}


bool
Curl_ssl_config_matches(struct ssl_config_data* data,
                        struct ssl_config_data* needle)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolCurl_ssl_config_matches(struct ssl_config_data* data, struct ssl_config_data* needle)\r\n");
    return retVal;
}


bool
Curl_clone_ssl_config(struct ssl_config_data *source,
                      struct ssl_config_data *dest)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolCurl_clone_ssl_config(struct ssl_config_data *source, struct ssl_config_data *dest)\r\n");
    return retVal;
}


void Curl_free_ssl_config(struct ssl_config_data* sslc)
{
    Sys_Printf("void Curl_free_ssl_config(struct ssl_config_data* sslc)\r\n");
}

