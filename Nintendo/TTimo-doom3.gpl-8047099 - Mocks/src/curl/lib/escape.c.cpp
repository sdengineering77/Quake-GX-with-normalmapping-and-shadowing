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
 * $Id: escape.c,v 1.30 2004/03/08 08:38:29 bagder Exp $
 ***************************************************************************/

/* Escape and unescape URL encoding in strings. The functions return a new
 * allocated string or NULL if an error occurred.  */

#include "setup.h"
#include <ctype.h>
#include <curl/curl.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

char *curl_escape(const char *string, int length)
{
    Sys_Printf("char *curl_escape(const char *string, int length)\r\n");
    return NULL;
}


#define ishex(in) ((in >= 'a' && in <= 'f') || \
                   (in >= 'A' && in <= 'F') || \
                   (in >= '0' && in <= '9'))

char *curl_unescape(const char *string, int length)
{
    Sys_Printf("char *curl_unescape(const char *string, int length)\r\n");
    return NULL;
}


/* For operating systems/environments that use different malloc/free
   ssystems for the app and for this library, we provide a free that uses
   the library's memory system */
void curl_free(void *p)
{
    Sys_Printf("void curl_free(void *p)\r\n");
}

