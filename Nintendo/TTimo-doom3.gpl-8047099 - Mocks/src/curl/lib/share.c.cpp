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
 * $Id: share.c,v 1.16 2004/02/26 11:39:38 bagder Exp $
 ***************************************************************************/

#include "setup.h"
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>
#include <curl/curl.h>
#include "urldata.h"
#include "share.h"

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

CURLSH *
curl_share_init(void)
{
    Sys_Printf("CURLSH *curl_share_init(void)\r\n");
    return NULL;
}


CURLSHcode
curl_share_setopt(CURLSH *sh, CURLSHoption option, ...)
{
    CURLSHcode retVal;
    memset(&retVal, 0, sizeof(CURLSHcode));
    Sys_Printf("CURLSHcodecurl_share_setopt(CURLSH *sh, CURLSHoption option, ...)\r\n");
    return retVal;
}


CURLSHcode
curl_share_cleanup(CURLSH *sh)
{
    CURLSHcode retVal;
    memset(&retVal, 0, sizeof(CURLSHcode));
    Sys_Printf("CURLSHcodecurl_share_cleanup(CURLSH *sh)\r\n");
    return retVal;
}



CURLSHcode
Curl_share_lock(struct SessionHandle *data, curl_lock_data type,
                curl_lock_access accesstype)
{
    CURLSHcode retVal;
    memset(&retVal, 0, sizeof(CURLSHcode));
    Sys_Printf("CURLSHcodeCurl_share_lock(struct SessionHandle *data, curl_lock_data type, curl_lock_access accesstype)\r\n");
    return retVal;
}


CURLSHcode
Curl_share_unlock(struct SessionHandle *data, curl_lock_data type)
{
    CURLSHcode retVal;
    memset(&retVal, 0, sizeof(CURLSHcode));
    Sys_Printf("CURLSHcodeCurl_share_unlock(struct SessionHandle *data, curl_lock_data type)\r\n");
    return retVal;
}

