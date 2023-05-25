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
 * $Id: hostip.c,v 1.130 2004/03/17 12:46:46 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#include <string.h>
#include <errno.h>

#define _REENTRANT

#if defined(WIN32) && !defined(__GNUC__) || defined(__MINGW32__)
#include <malloc.h>
#else
#ifdef HAVE_SYS_TYPES_H
#include <sys/types.h>
#endif
#ifdef HAVE_SYS_SOCKET_H
#include <sys/socket.h>
#endif
#ifdef HAVE_NETINET_IN_H
#include <netinet/in.h>
#endif
#ifdef HAVE_NETDB_H
#include <netdb.h>
#endif
#ifdef HAVE_ARPA_INET_H
#include <arpa/inet.h>
#endif
#ifdef HAVE_STDLIB_H
#include <stdlib.h>	/* required for free() prototypes */
#endif
#ifdef	VMS
#include <in.h>
#include <inet.h>
#include <stdlib.h>
#endif
#endif

#ifdef HAVE_SETJMP_H
#include <setjmp.h>
#endif

#if (defined(NETWARE) && defined(__NOVELL_LIBC__))
#undef in_addr_t
#define in_addr_t unsigned long
#endif

#include "urldata.h"
#include "sendf.h"
#include "hostip.h"
#include "hash.h"
#include "share.h"
#include "url.h"

#define _MPRINTF_REPLACE /* use our functions only */
#include <curl/mprintf.h>

#if defined(HAVE_INET_NTOA_R) && !defined(HAVE_INET_NTOA_R_DECL)
#include "inet_ntoa_r.h"
#endif

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

#ifndef ARES_SUCCESS
#define ARES_SUCCESS CURLE_OK
#endif

static curl_hash hostname_cache;
static int host_cache_initialized;

static Curl_addrinfo *my_getaddrinfo(struct connectdata *conn,
                                     char *hostname,
                                     int port,
                                     int *waitp);
#ifndef ENABLE_IPV6
#if !defined(HAVE_GETHOSTBYNAME_R) || defined(USE_ARES) || \
    defined(USE_THREADING_GETHOSTBYNAME)
static struct hostent* pack_hostent(char** buf, struct hostent* orig);
#endif
#endif

#ifdef USE_THREADING_GETHOSTBYNAME
#ifdef DEBUG_THREADING_GETHOSTBYNAME
/* If this is defined, provide tracing */
#define TRACE(args)  \
 do { trace_it("%u: ", __LINE__); trace_it args; } while (0)

static void trace_it (const char *fmt, ...);
#else
#define TRACE(x)
#endif

static struct hostent* pack_hostent (char** buf, struct hostent* orig);
static bool init_gethostbyname_thread (struct connectdata *conn,
                                       const char *hostname, int port);
struct thread_data {
  HANDLE thread_hnd;
  DWORD  thread_id;
  DWORD  thread_status;
};
#endif

void Curl_global_host_cache_init(void)
{
    Sys_Printf("void Curl_global_host_cache_init(void)\r\n");
}


curl_hash *Curl_global_host_cache_get(void)
{
    Sys_Printf("curl_hash *Curl_global_host_cache_get(void)\r\n");
    return NULL;
}


void Curl_global_host_cache_dtor(void)
{
    Sys_Printf("void Curl_global_host_cache_dtor(void)\r\n");
}


/* count the number of characters that an integer takes up */
static int _num_chars(int i)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int _num_chars(int i)\r\n");
    return retVal;
}


/* Create a hostcache id */
static char *
create_hostcache_id(char *server, int port, size_t *entry_len)
{
    Sys_Printf("char *create_hostcache_id(char *server, int port, size_t *entry_len)\r\n");
    return NULL;
}


struct hostcache_prune_data {
  int cache_timeout;
  time_t now;
};

static int
hostcache_timestamp_remove(void *datap, void *hc)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("inthostcache_timestamp_remove(void *datap, void *hc)\r\n");
    return retVal;
}


static void
hostcache_prune(curl_hash *hostcache, int cache_timeout, time_t now)
{
    Sys_Printf("voidhostcache_prune(curl_hash *hostcache, int cache_timeout, time_t now)\r\n");
}


void Curl_hostcache_prune(struct SessionHandle *data)
{
    Sys_Printf("void Curl_hostcache_prune(struct SessionHandle *data)\r\n");
}


#ifdef HAVE_SIGSETJMP
/* Beware this is a global and unique instance */
sigjmp_buf curl_jmpenv;
#endif


/* When calling Curl_resolv() has resulted in a response with a returned
   address, we call this function to store the information in the dns
   cache etc */

static struct Curl_dns_entry *
cache_resolv_response(struct SessionHandle *data,
                      Curl_addrinfo *addr,
                      char *hostname,
                      int port)
{
    Sys_Printf("Curl_dns_entry *cache_resolv_response(struct SessionHandle *data, Curl_addrinfo *addr, char *hostname, int port)\r\n");
    return NULL;
}


/* Resolve a name and return a pointer in the 'entry' argument if one
   is available.

   Return codes:

   -1 = error, no pointer
   0 = OK, pointer provided
   1 = waiting for response, no pointer
*/
int Curl_resolv(struct connectdata *conn,
                char *hostname,
                int port,
                struct Curl_dns_entry **entry)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Curl_resolv(struct connectdata *conn, char *hostname, int port, struct Curl_dns_entry **entry)\r\n");
    return retVal;
}


void Curl_resolv_unlock(struct SessionHandle *data, struct Curl_dns_entry *dns)
{
    Sys_Printf("void Curl_resolv_unlock(struct SessionHandle *data, struct Curl_dns_entry *dns)\r\n");
}


/*
 * This is a wrapper function for freeing name information in a protocol
 * independent way. This takes care of using the appropriate underlaying
 * function.
 */
void Curl_freeaddrinfo(Curl_addrinfo *p)
{
    Sys_Printf("void Curl_freeaddrinfo(Curl_addrinfo *p)\r\n");
}


/*
 * Free a cache dns entry.
 */
void Curl_freednsinfo(void *freethis)
{
    Sys_Printf("void Curl_freednsinfo(void *freethis)\r\n");
}


/* --- resolve name or IP-number --- */

/* Allocate enough memory to hold the full name information structs and
 * everything. OSF1 is known to require at least 8872 bytes. The buffer
 * required for storing all possible aliases and IP numbers is according to
 * Stevens' Unix Network Programming 2nd edition, p. 304: 8192 bytes!
 */
#define CURL_NAMELOOKUP_SIZE 9000

#ifdef USE_ARES

CURLcode Curl_multi_ares_fdset(struct connectdata *conn,
                               fd_set *read_fd_set,
                               fd_set *write_fd_set,
                               int *max_fdp)

{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_multi_ares_fdset(struct connectdata *conn, fd_set *read_fd_set, fd_set *write_fd_set, int *max_fdp)\r\n");
    return retVal;
}


/* called to check if the name is resolved now */
CURLcode Curl_is_resolved(struct connectdata *conn,
                          struct Curl_dns_entry **dns)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_is_resolved(struct connectdata *conn, struct Curl_dns_entry **dns)\r\n");
    return retVal;
}


/* This is a function that locks and waits until the name resolve operation
   has completed.

   If 'entry' is non-NULL, make it point to the resolved dns entry

   Return CURLE_COULDNT_RESOLVE_HOST if the host was not resolved, and
   CURLE_OPERATION_TIMEDOUT if a time-out occurred.
*/
CURLcode Curl_wait_for_resolv(struct connectdata *conn,
                              struct Curl_dns_entry **entry)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_wait_for_resolv(struct connectdata *conn, struct Curl_dns_entry **entry)\r\n");
    return retVal;
}

#endif

#if defined(USE_ARES) || defined(USE_THREADING_GETHOSTBYNAME)

/* this function gets called by ares/gethostbyname_thread() when we got
   the name resolved or not */
static void host_callback(void *arg, /* "struct connectdata *" */
                          int status,
                          struct hostent *hostent)
{
  struct connectdata *conn = (struct connectdata *)arg;
  struct Curl_dns_entry *dns = NULL;

  conn->async.done = TRUE;
  conn->async.status = status;

  if(ARES_SUCCESS == status) {
    /* we got a resolved name in 'hostent' */
    char *bufp = (char *)malloc(CURL_NAMELOOKUP_SIZE);
    if(bufp) {

      /* pack_hostent() copies to and shrinks the target buffer */
      struct hostent *he = pack_hostent(&bufp, hostent);

      struct SessionHandle *data = conn->data;

      if(data->share)
        Curl_share_lock(data, CURL_LOCK_DATA_DNS, CURL_LOCK_ACCESS_SINGLE);

      dns = cache_resolv_response(data, he,
                                  conn->async.hostname, conn->async.port);

      if(data->share)
        Curl_share_unlock(data, CURL_LOCK_DATA_DNS);
    }
  }

  conn->async.dns = dns;

  /* The input hostent struct will be freed by ares when we return from this
     function */
}
#endif

#ifdef USE_ARES
/*
 * Return name information about the given hostname and port number. If
 * successful, the 'hostent' is returned and the forth argument will point to
 * memory we need to free after use. That meory *MUST* be freed with
 * Curl_freeaddrinfo(), nothing else.
 */
static Curl_addrinfo *my_getaddrinfo(struct connectdata *conn,
                                     char *hostname,
                                     int port,
                                     int *waitp)
{
    Sys_Printf("Curl_addrinfo *my_getaddrinfo(struct connectdata *conn, char *hostname, int port, int *waitp)\r\n");
    return NULL;
}

#endif

#if !defined(USE_ARES) && !defined(USE_THREADING_GETHOSTBYNAME)

/* For builds without ARES and threaded gethostbyname, Curl_resolv() can never
   return wait==TRUE, so this function will never be called. If it still gets
   called, we return failure at once. */
CURLcode Curl_wait_for_resolv(struct connectdata *conn,
                              struct Curl_dns_entry **entry)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_wait_for_resolv(struct connectdata *conn, struct Curl_dns_entry **entry)\r\n");
    return retVal;
}


CURLcode Curl_is_resolved(struct connectdata *conn,
                          struct Curl_dns_entry **dns)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_is_resolved(struct connectdata *conn, struct Curl_dns_entry **dns)\r\n");
    return retVal;
}

#endif

#if !defined(USE_ARES)
CURLcode Curl_multi_ares_fdset(struct connectdata *conn,
                               fd_set *read_fd_set,
                               fd_set *write_fd_set,
                               int *max_fdp)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_multi_ares_fdset(struct connectdata *conn, fd_set *read_fd_set, fd_set *write_fd_set, int *max_fdp)\r\n");
    return retVal;
}

#endif

#if defined(ENABLE_IPV6) && !defined(USE_ARES)

#ifdef CURLDEBUG
/* These two are strictly for memory tracing and are using the same
 * style as the family otherwise present in memdebug.c. I put these ones
 * here since they require a bunch of struct types I didn't wanna include
 * in memdebug.c
 */
int curl_getaddrinfo(char *hostname, char *service,
                     struct addrinfo *hints,
                     struct addrinfo **result,
                     int line, const char *source)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_getaddrinfo(char *hostname, char *service, struct addrinfo *hints, struct addrinfo **result, int line, const char *source)\r\n");
    return retVal;
}


void curl_freeaddrinfo(struct addrinfo *freethis,
                       int line, const char *source)
{
    Sys_Printf("void curl_freeaddrinfo(struct addrinfo *freethis, int line, const char *source)\r\n");
}


#endif

/*
 * Return name information about the given hostname and port number. If
 * successful, the 'addrinfo' is returned and the forth argument will point to
 * memory we need to free after use. That meory *MUST* be freed with
 * Curl_freeaddrinfo(), nothing else.
 */
static Curl_addrinfo *my_getaddrinfo(struct connectdata *conn,
                                     char *hostname,
                                     int port,
                                     int *waitp)
{
    Sys_Printf("Curl_addrinfo *my_getaddrinfo(struct connectdata *conn, char *hostname, int port, int *waitp)\r\n");
    return NULL;
}

#else /* following code is IPv4-only */

#if !defined(HAVE_GETHOSTBYNAME_R) || defined(USE_ARES) || defined(USE_THREADING_GETHOSTBYNAME)
static void hostcache_fixoffset(struct hostent *h, long offset);
/*
 * Performs a "deep" copy of a hostent into a buffer (returns a pointer to the
 * copy). Make absolutely sure the destination buffer is big enough!
 */
static struct hostent* pack_hostent(char** buf, struct hostent* orig)
{
    Sys_Printf("hostent* pack_hostent(char** buf, struct hostent* orig)\r\n");
    return NULL;
}

#endif

static void hostcache_fixoffset(struct hostent *h, long offset)
{
    Sys_Printf("void hostcache_fixoffset(struct hostent *h, long offset)\r\n");
}


#ifndef USE_ARES

static char *MakeIP(unsigned long num, char *addr, int addr_len)
{
    Sys_Printf("char *MakeIP(unsigned long num, char *addr, int addr_len)\r\n");
    return NULL;
}


/* The original code to this function was once stolen from the Dancer source
   code, written by Bjorn Reese, it has since been patched and modified
   considerably. */
static Curl_addrinfo *my_getaddrinfo(struct connectdata *conn,
                                     char *hostname,
                                     int port,
                                     int *waitp)
{
    Sys_Printf("Curl_addrinfo *my_getaddrinfo(struct connectdata *conn, char *hostname, int port, int *waitp)\r\n");
    return NULL;
}


#endif /* end of IPv4-specific code */

#endif /* end of !USE_ARES */


#if defined(USE_THREADING_GETHOSTBYNAME)
#ifdef DEBUG_THREADING_GETHOSTBYNAME
static void trace_it (const char *fmt, ...)
{
    Sys_Printf("void trace_it (const char *fmt, ...)\r\n");
}

#endif

/* For builds without ARES/USE_IPV6, create a resolver thread and wait on it.
 */
static DWORD WINAPI gethostbyname_thread (void *arg)
{
    WINAPI retVal;
    memset(&retVal, 0, sizeof(WINAPI));
    Sys_Printf("WINAPI gethostbyname_thread (void *arg)\r\n");
    return retVal;
}


/* complementary of ares_destroy
 */
static void destroy_thread_data (struct connectdata *conn)
{
    Sys_Printf("void destroy_thread_data (struct connectdata *conn)\r\n");
}


static bool init_gethostbyname_thread (struct connectdata *conn,
                                       const char *hostname, int port)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool init_gethostbyname_thread (struct connectdata *conn, const char *hostname, int port)\r\n");
    return retVal;
}


/* called to check if the name is resolved now */
CURLcode Curl_wait_for_resolv(struct connectdata *conn,
                              struct Curl_dns_entry **entry)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_wait_for_resolv(struct connectdata *conn, struct Curl_dns_entry **entry)\r\n");
    return retVal;
}


CURLcode Curl_is_resolved(struct connectdata *conn,
                          struct Curl_dns_entry **entry)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_is_resolved(struct connectdata *conn, struct Curl_dns_entry **entry)\r\n");
    return retVal;
}


#endif
