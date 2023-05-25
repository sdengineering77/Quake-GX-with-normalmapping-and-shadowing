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
 * $Id: http_negotiate.c,v 1.7 2004/01/07 09:19:35 bagder Exp $
 ***************************************************************************/
#include "setup.h"

#ifdef HAVE_GSSAPI
#ifdef HAVE_GSSMIT
#define GSS_C_NT_HOSTBASED_SERVICE gss_nt_service_name
#endif

#ifndef CURL_DISABLE_HTTP
/* -- WIN32 approved -- */
#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <stdlib.h>
#include <ctype.h>
#include <errno.h>

#include "urldata.h"
#include "sendf.h"
#include "strequal.h"
#include "base64.h"
#include "http_negotiate.h"

#define _MPRINTF_REPLACE /* use our functions only */
#include <curl/mprintf.h>

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

static int
get_gss_name(struct connectdata *conn, gss_name_t *server)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intget_gss_name(struct connectdata *conn, gss_name_t *server)\r\n");
    return retVal;
}


static void
log_gss_error(struct connectdata *conn, OM_uint32 error_status, char *prefix)
{
    Sys_Printf("voidlog_gss_error(struct connectdata *conn, OM_uint32 error_status, char *prefix)\r\n");
}


int Curl_input_negotiate(struct connectdata *conn, char *header)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Curl_input_negotiate(struct connectdata *conn, char *header)\r\n");
    return retVal;
}

   

CURLcode Curl_output_negotiate(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_output_negotiate(struct connectdata *conn)\r\n");
    return retVal;
}


void Curl_cleanup_negotiate(struct SessionHandle *data)
{
    Sys_Printf("void Curl_cleanup_negotiate(struct SessionHandle *data)\r\n");
}



#endif
#endif
