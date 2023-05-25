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
 * $Id: version.c,v 1.35 2004/03/08 07:46:26 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#include <string.h>
#include <stdio.h>

#include <curl/curl.h>
#include "urldata.h"

#ifdef USE_ARES
#include <ares_version.h>
#endif

#ifdef USE_SSLEAY
static void getssl_version(char *ptr, long *num)
{
    Sys_Printf("void getssl_version(char *ptr, long *num)\r\n");
}


#endif

char *curl_version(void)
{
    Sys_Printf("char *curl_version(void)\r\n");
    return NULL;
}


/* data for curl_version_info */

static const char *protocols[] = {
#ifndef CURL_DISABLE_FTP
  "ftp",
#endif
#ifndef CURL_DISABLE_GOPHER
  "gopher",
#endif
#ifndef CURL_DISABLE_TELNET
  "telnet",
#endif
#ifndef CURL_DISABLE_DICT
  "dict",
#endif
#ifndef CURL_DISABLE_LDAP
  "ldap",
#endif
#ifndef CURL_DISABLE_HTTP
  "http",
#endif
#ifndef CURL_DISABLE_FILE
  "file",
#endif

#ifdef USE_SSLEAY
#ifndef CURL_DISABLE_HTTP
  "https",
#endif
#ifndef CURL_DISABLE_FTP
  "ftps",
#endif
#endif
  NULL
};

static curl_version_info_data version_info = {
  CURLVERSION_SECOND,
  LIBCURL_VERSION,
  LIBCURL_VERSION_NUM,
  OS, /* as found by configure or set by hand at build-time */
  0 /* features is 0 by default */
#ifdef ENABLE_IPV6
  | CURL_VERSION_IPV6
#endif
#ifdef HAVE_KRB4
  | CURL_VERSION_KERBEROS4
#endif
#ifdef USE_SSLEAY
  | CURL_VERSION_SSL
  | CURL_VERSION_NTLM /* since this requires OpenSSL */
#endif
#ifdef HAVE_LIBZ
  | CURL_VERSION_LIBZ
#endif
#ifdef HAVE_GSSAPI
  | CURL_VERSION_GSSNEGOTIATE
#endif
#ifdef CURLDEBUG
  | CURL_VERSION_DEBUG
#endif
#ifdef USE_ARES
  | CURL_VERSION_ASYNCHDNS
#endif
#ifdef HAVE_SPNEGO
  | CURL_VERSION_SPNEGO
#endif
#if defined(ENABLE_64BIT) && (SIZEOF_CURL_OFF_T > 4)
  | CURL_VERSION_LARGEFILE
#endif
  ,
  NULL, /* ssl_version */
  0,    /* ssl_version_num */
  NULL, /* zlib_version */
  protocols,
  NULL, /* c-ares version */
  0,    /* c-ares version numerical */
};

curl_version_info_data *curl_version_info(CURLversion stamp)
{
    Sys_Printf("curl_version_info_data *curl_version_info(CURLversion stamp)\r\n");
    return NULL;
}

