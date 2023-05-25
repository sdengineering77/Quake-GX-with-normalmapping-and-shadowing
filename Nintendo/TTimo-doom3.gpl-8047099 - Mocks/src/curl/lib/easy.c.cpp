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
 * $Id: easy.c,v 1.49 2004/03/15 16:28:36 bagder Exp $
 ***************************************************************************/

#include "setup.h"

/* -- WIN32 approved -- */
#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <stdlib.h>
#include <ctype.h>
#include <sys/types.h>
#include <sys/stat.h>

#include <errno.h>

#include "strequal.h"

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

#endif

#include "urldata.h"
#include <curl/curl.h>
#include "transfer.h"
#include "ssluse.h"
#include "url.h"
#include "getinfo.h"
#include "hostip.h"
#include "share.h"

#define _MPRINTF_REPLACE /* use our functions only */
#include <curl/mprintf.h>

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

/* Silly win32 socket initialization functions */

#if defined(WIN32) && !defined(__GNUC__) || defined(__MINGW32__)
static void win32_cleanup(void)
{
    Sys_Printf("void win32_cleanup(void)\r\n");
}


static CURLcode win32_init(void)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode win32_init(void)\r\n");
    return retVal;
}

/* The Windows Sockets DLL is acceptable. Proceed. */ 
#else
/* These functions exist merely to prevent compiler warnings */
static CURLcode win32_init(void) {
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode win32_init(void)\r\n");
    return retVal;
}

static void win32_cleanup(void) {
    Sys_Printf("void win32_cleanup(void)\r\n");
}

#endif


/* true globals -- for curl_global_init() and curl_global_cleanup() */
static unsigned int  initialized = 0;
static long          init_flags  = 0;

/**
 * Globally initializes cURL given a bitwise set of 
 * the different features to initialize.
 */
CURLcode curl_global_init(long flags)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode curl_global_init(long flags)\r\n");
    return retVal;
}


/**
 * Globally cleanup cURL, uses the value of "init_flags" to determine
 * what needs to be cleaned up and what doesn't
 */
void curl_global_cleanup(void)
{
    Sys_Printf("void curl_global_cleanup(void)\r\n");
}


CURL *curl_easy_init(void)
{
    Sys_Printf("CURL *curl_easy_init(void)\r\n");
    return NULL;
}


typedef int (*func_T)(void);
CURLcode curl_easy_setopt(CURL *curl, CURLoption tag, ...)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode curl_easy_setopt(CURL *curl, CURLoption tag, ...)\r\n");
    return retVal;
}


CURLcode curl_easy_perform(CURL *curl)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode curl_easy_perform(CURL *curl)\r\n");
    return retVal;
}


void curl_easy_cleanup(CURL *curl)
{
    Sys_Printf("void curl_easy_cleanup(CURL *curl)\r\n");
}


CURLcode curl_easy_getinfo(CURL *curl, CURLINFO info, ...)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode curl_easy_getinfo(CURL *curl, CURLINFO info, ...)\r\n");
    return retVal;
}


CURL *curl_easy_duphandle(CURL *incurl)
{
    Sys_Printf("CURL *curl_easy_duphandle(CURL *incurl)\r\n");
    return NULL;
}

