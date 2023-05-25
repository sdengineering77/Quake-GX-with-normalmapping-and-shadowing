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
 * $Id: getenv.c,v 1.23 2004/01/29 13:56:45 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef WIN32
#include <windows.h>
#endif

#ifdef VMS
#include <unixlib.h>
#endif

#include <curl/curl.h>

#ifdef CURLDEBUG
#include "memdebug.h"
#endif

static
char *GetEnv(const char *variable)
{
    SYS_Printf("char *GetEnv(const char *variable)\r\n");
    return NULL;
}



char *curl_getenv(const char *v)
{
    SYS_Printf("char *curl_getenv(const char *v)\r\n");
    return NULL;
}


