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
 * $Id: writeout.c,v 1.21 2004/02/25 15:41:36 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#include <stdio.h>
#include <string.h>

#ifdef HAVE_SYS_TYPES_H
#include <sys/types.h>
#endif
#ifdef HAVE_SYS_SELECT_H
#include <sys/select.h>
#endif

#include <curl/curl.h>

#define _MPRINTF_REPLACE /* we want curl-functions instead of native ones */
#include <curl/mprintf.h>

#include "writeout.h"

typedef enum {
  VAR_NONE,       /* must be the first */
  VAR_TOTAL_TIME,
  VAR_NAMELOOKUP_TIME,
  VAR_CONNECT_TIME,
  VAR_PRETRANSFER_TIME,
  VAR_STARTTRANSFER_TIME,
  VAR_SIZE_DOWNLOAD,
  VAR_SIZE_UPLOAD,
  VAR_SPEED_DOWNLOAD,
  VAR_SPEED_UPLOAD,
  VAR_HTTP_CODE,
  VAR_HEADER_SIZE,
  VAR_REQUEST_SIZE,
  VAR_EFFECTIVE_URL,
  VAR_CONTENT_TYPE,
  VAR_NUM_OF_VARS /* must be the last */
} replaceid;

struct variable {
  const char *name;
  replaceid id;
};


static struct variable replacements[]={
  {"url_effective", VAR_EFFECTIVE_URL},
  {"http_code", VAR_HTTP_CODE},
  {"time_total", VAR_TOTAL_TIME},
  {"time_namelookup", VAR_NAMELOOKUP_TIME},
  {"time_connect", VAR_CONNECT_TIME},
  {"time_pretransfer", VAR_PRETRANSFER_TIME},
  {"time_starttransfer", VAR_STARTTRANSFER_TIME},
  {"size_header", VAR_HEADER_SIZE},
  {"size_request", VAR_REQUEST_SIZE},
  {"size_download", VAR_SIZE_DOWNLOAD},
  {"size_upload", VAR_SIZE_UPLOAD},
  {"speed_download", VAR_SPEED_DOWNLOAD},
  {"speed_upload", VAR_SPEED_UPLOAD},
  {"content_type", VAR_CONTENT_TYPE},
  {NULL, VAR_NONE}
};

void ourWriteOut(CURL *curl, char *writeinfo)
{
    Sys_Printf("void ourWriteOut(CURL *curl, char *writeinfo)\r\n");
}

