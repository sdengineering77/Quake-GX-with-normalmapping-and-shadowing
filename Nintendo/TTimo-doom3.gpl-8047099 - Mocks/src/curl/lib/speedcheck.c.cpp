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
 * $Id: speedcheck.c,v 1.19 2004/01/07 09:19:35 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#include <stdio.h>
#include <string.h>

#include <curl/curl.h>
#include "urldata.h"
#include "sendf.h"
#include "speedcheck.h"

void Curl_speedinit(struct SessionHandle *data)
{
    Sys_Printf("void Curl_speedinit(struct SessionHandle *data)\r\n");
}


CURLcode Curl_speedcheck(struct SessionHandle *data,
                         struct timeval now)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_speedcheck(struct SessionHandle *data, struct timeval now)\r\n");
    return retVal;
}

