#ifdef CURLDEBUG
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
 * $Id: memdebug.c,v 1.41 2004/03/08 11:33:49 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#include <curl/curl.h>

#ifdef HAVE_SYS_SOCKET_H
#include <sys/socket.h>
#endif

#define _MPRINTF_REPLACE
#include <curl/mprintf.h>
#include "urldata.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif

#define MEMDEBUG_NODEFINES /* don't redefine the standard functions */
#include "memdebug.h"

struct memdebug {
  size_t size;
  double mem[1];
  /* I'm hoping this is the thing with the strictest alignment
   * requirements.  That also means we waste some space :-( */
};

/*
 * Note that these debug functions are very simple and they are meant to
 * remain so. For advanced analysis, record a log file and write perl scripts
 * to analyze them!
 *
 * Don't use these with multithreaded test programs!
 */

#define logfile curl_debuglogfile
FILE *curl_debuglogfile;
static bool memlimit; /* enable memory limit */
static long memsize;  /* set number of mallocs allowed */

/* this sets the log file name */
void curl_memdebug(const char *logname)
{
    Sys_Printf("void curl_memdebug(const char *logname)\r\n");
}


/* This function sets the number of malloc() calls that should return
   successfully! */
void curl_memlimit(long limit)
{
    Sys_Printf("void curl_memlimit(long limit)\r\n");
}


/* returns TRUE if this isn't allowed! */
static bool countcheck(const char *func, int line, const char *source)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool countcheck(const char *func, int line, const char *source)\r\n");
    return retVal;
}


void *curl_domalloc(size_t wantedsize, int line, const char *source)
{
    Sys_Printf("void *curl_domalloc(size_t wantedsize, int line, const char *source)\r\n");
    return NULL;
}


void *curl_docalloc(size_t wanted_elements, size_t wanted_size,
                    int line, const char *source)
{
    Sys_Printf("void *curl_docalloc(size_t wanted_elements, size_t wanted_size, int line, const char *source)\r\n");
    return NULL;
}


char *curl_dostrdup(const char *str, int line, const char *source)
{
    Sys_Printf("char *curl_dostrdup(const char *str, int line, const char *source)\r\n");
    return NULL;
}


/* We provide a realloc() that accepts a NULL as pointer, which then
   performs a malloc(). In order to work with ares. */
void *curl_dorealloc(void *ptr, size_t wantedsize,
                     int line, const char *source)
{
    Sys_Printf("void *curl_dorealloc(void *ptr, size_t wantedsize, int line, const char *source)\r\n");
    return NULL;
}


void curl_dofree(void *ptr, int line, const char *source)
{
    Sys_Printf("void curl_dofree(void *ptr, int line, const char *source)\r\n");
}


int curl_socket(int domain, int type, int protocol, int line,
                const char *source)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_socket(int domain, int type, int protocol, int line, const char *source)\r\n");
    return retVal;
}


int curl_accept(int s, void *saddr, void *saddrlen,
                int line, const char *source)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_accept(int s, void *saddr, void *saddrlen, int line, const char *source)\r\n");
    return retVal;
}


/* this is our own defined way to close sockets on *ALL* platforms */
int curl_sclose(int sockfd, int line, const char *source)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_sclose(int sockfd, int line, const char *source)\r\n");
    return retVal;
}


FILE *curl_fopen(const char *file, const char *mode,
                 int line, const char *source)
{
    Sys_Printf("FILE *curl_fopen(const char *file, const char *mode, int line, const char *source)\r\n");
    return NULL;
}


int curl_fclose(FILE *file, int line, const char *source)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_fclose(FILE *file, int line, const char *source)\r\n");
    return retVal;
}

#else
#ifdef VMS
int VOID_VAR_MEMDEBUG;	
#else
/* we provide a fake do-nothing function here to avoid compiler warnings */
void curl_memdebug(void) {
    Sys_Printf("void curl_memdebug(void)\r\n");
}

#endif /* VMS */
#endif /* CURLDEBUG */
