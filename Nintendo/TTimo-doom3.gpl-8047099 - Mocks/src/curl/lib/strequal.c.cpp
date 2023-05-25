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
 * $Id: strequal.c,v 1.25 2004/01/29 13:56:45 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#include <string.h>
#include <ctype.h>

#include "strequal.h"

#ifdef HAVE_STRCASECMP
/* this is for "-ansi -Wall -pedantic" to stop complaining! */
extern int (strcasecmp)(const char *s1, const char *s2);
extern int (strncasecmp)(const char *s1, const char *s2, size_t n);
#endif

int curl_strequal(const char *first, const char *second)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_strequal(const char *first, const char *second)\r\n");
    return retVal;
}


int curl_strnequal(const char *first, const char *second, size_t max)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int curl_strnequal(const char *first, const char *second, size_t max)\r\n");
    return retVal;
}


#ifndef HAVE_STRLCAT
/*
 * The strlcat() function appends the NUL-terminated string src to the end
 * of dst. It will append at most size - strlen(dst) - 1 bytes, NUL-termi-
 * nating the result.
 *
 * The strlcpy() and strlcat() functions return the total length of the
 * string they tried to create.  For strlcpy() that means the length of src.
 * For strlcat() that means the initial length of dst plus the length of
 * src. While this may seem somewhat confusing it was done to make trunca-
 * tion detection simple.
 *
 * 
 */
size_t Curl_strlcat(char *dst, const char *src, size_t siz)
{
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t Curl_strlcat(char *dst, const char *src, size_t siz)\r\n");
    return retVal;
}

#endif
