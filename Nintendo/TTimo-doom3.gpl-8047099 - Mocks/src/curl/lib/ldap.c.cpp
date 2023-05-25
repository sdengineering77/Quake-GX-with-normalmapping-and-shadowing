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
 * $Id: ldap.c,v 1.32 2004/02/12 09:51:43 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#ifndef CURL_DISABLE_LDAP
/* -- WIN32 approved -- */
#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <stdlib.h>
#include <ctype.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>

#if defined(WIN32) && !defined(__GNUC__)
#else
# ifdef HAVE_UNISTD_H
#  include <unistd.h>
# endif
# ifdef HAVE_DLFCN_H
#  include <dlfcn.h>
# endif
#endif

#include "urldata.h"
#include <curl/curl.h>
#include "sendf.h"
#include "escape.h"
#include "transfer.h"
#include "ldap.h"

#define _MPRINTF_REPLACE /* use our functions only */
#include <curl/mprintf.h>

typedef void * (*dynafunc)(void *input);

#define DYNA_GET_FUNCTION(type, fnc) \
  (fnc) = (type)DynaGetFunction(#fnc); \
  if ((fnc) == NULL) { \
    return CURLE_FUNCTION_NOT_FOUND; \
  }

/***********************************************************************
 */
static void *libldap = NULL;
static void *liblber = NULL;

static void DynaOpen(void)
{
    Sys_Printf("void DynaOpen(void)\r\n");
}


static void DynaClose(void)
{
    Sys_Printf("void DynaClose(void)\r\n");
}


static dynafunc DynaGetFunction(const char *name)
{
    dynafunc retVal;
    memset(&retVal, 0, sizeof(dynafunc));
    Sys_Printf("dynafunc DynaGetFunction(const char *name)\r\n");
    return retVal;
}


/***********************************************************************
 */
typedef struct ldap_url_desc {
	struct ldap_url_desc *lud_next;
        char    *lud_scheme;
	char    *lud_host;
	int     lud_port;
	char    *lud_dn;
	char    **lud_attrs;
	int     lud_scope;
	char    *lud_filter;
	char    **lud_exts;
	int     lud_crit_exts;
} LDAPURLDesc;


CURLcode Curl_ldap(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_ldap(struct connectdata *conn)\r\n");
    return retVal;
}

#endif
