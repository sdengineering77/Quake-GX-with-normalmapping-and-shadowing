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
 * $Id: strtok.c,v 1.13 2004/01/29 13:56:45 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#ifndef HAVE_STRTOK_R
#include <stddef.h>
#include <string.h>

#include "strtok.h"

char *
Curl_strtok_r(char *ptr, const char *sep, char **end)
{
    Sys_Printf("char *Curl_strtok_r(char *ptr, const char *sep, char **end)\r\n");
    return NULL;
}


#endif /* this was only compiled if strtok_r wasn't present */
