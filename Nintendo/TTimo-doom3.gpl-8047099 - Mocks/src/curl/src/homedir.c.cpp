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
 * $Id: homedir.c,v 1.4 2004/01/29 13:54:08 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef WIN32
#include <windows.h>
#endif
#ifdef HAVE_PWD_H
#include <pwd.h>
#endif
#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif
#ifdef VMS
#include <unixlib.h>
#endif

#include "homedir.h"

#ifdef CURLDEBUG
#include "../lib/memdebug.h"
#endif

static
char *GetEnv(const char *variable, char do_expand)
{
    Sys_Printf("char *GetEnv(const char *variable, char do_expand)\r\n");
    return NULL;
}


/* return the home directory of the current user as an allocated string */
char *homedir(void)
{
    Sys_Printf("char *homedir(void)\r\n");
    return NULL;
}

