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
 * $Id: getinfo.c,v 1.36 2004/03/11 21:51:55 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#include <curl/curl.h>

#include "urldata.h"
#include "getinfo.h"

#include <stdio.h>
#include <string.h>
#include <stdarg.h>

#ifdef	VMS
#include	<stdlib.h>
#endif

/* Make this the last #include */
#ifdef CURLDEBUG
#include "memdebug.h"
#else
#include <stdlib.h>
#endif

/*
 * This is supposed to be called in the beginning of a permform() session
 * and should reset all session-info variables
 */
CURLcode Curl_initinfo(struct SessionHandle *data)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_initinfo(struct SessionHandle *data)\r\n");
    return retVal;
}


CURLcode Curl_getinfo(struct SessionHandle *data, CURLINFO info, ...)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_getinfo(struct SessionHandle *data, CURLINFO info, ...)\r\n");
    return retVal;
}

