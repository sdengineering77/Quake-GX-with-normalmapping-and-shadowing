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
 * $Id: urlglob.c,v 1.31 2004/03/08 12:51:13 bagder Exp $
 ***************************************************************************/

/* client-local setup.h */
#include "setup.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <curl/curl.h>

#define _MPRINTF_REPLACE /* we want curl-functions instead of native ones */
#include <curl/mprintf.h>

#include "urlglob.h"


#ifdef CURLDEBUG
#include "../lib/memdebug.h"
#endif

typedef enum {
  GLOB_OK,
  GLOB_ERROR
} GlobCode;

/*
 * glob_word()
 *
 * Input a full globbed string, set the forth argument to the amount of
 * strings we get out of this. Return GlobCode.
 */
static GlobCode glob_word(URLGlob *, /* object anchor */
                          char *,    /* globbed string */
                          int,       /* position */
                          int *);    /* returned number of strings */

static GlobCode glob_set(URLGlob *glob, char *pattern, int pos, int *amount)
{
    GlobCode retVal;
    memset(&retVal, 0, sizeof(GlobCode));
    Sys_Printf("GlobCode glob_set(URLGlob *glob, char *pattern, int pos, int *amount)\r\n");
    return retVal;
}


static GlobCode glob_range(URLGlob *glob, char *pattern, int pos, int *amount)
{
    GlobCode retVal;
    memset(&retVal, 0, sizeof(GlobCode));
    Sys_Printf("GlobCode glob_range(URLGlob *glob, char *pattern, int pos, int *amount)\r\n");
    return retVal;
}


static GlobCode glob_word(URLGlob *glob, char *pattern, int pos, int *amount)
{
    GlobCode retVal;
    memset(&retVal, 0, sizeof(GlobCode));
    Sys_Printf("GlobCode glob_word(URLGlob *glob, char *pattern, int pos, int *amount)\r\n");
    return retVal;
}


int glob_url(URLGlob** glob, char* url, int *urlnum, FILE *error)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int glob_url(URLGlob** glob, char* url, int *urlnum, FILE *error)\r\n");
    return retVal;
}


void glob_cleanup(URLGlob* glob)
{
    Sys_Printf("void glob_cleanup(URLGlob* glob)\r\n");
}


char *glob_next_url(URLGlob *glob)
{
    Sys_Printf("char *glob_next_url(URLGlob *glob)\r\n");
    return NULL;
}


char *glob_match_url(char *filename, URLGlob *glob)
{
    Sys_Printf("char *glob_match_url(char *filename, URLGlob *glob)\r\n");
    return NULL;
}

