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
 * $Id: llist.c,v 1.12 2004/01/07 09:19:35 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#include <string.h>
#include <stdlib.h>

#include "llist.h"

#ifdef CURLDEBUG
/* this must be the last include file */
#include "memdebug.h"
#endif
void 
Curl_llist_init(curl_llist *l, curl_llist_dtor dtor)
{
    Sys_Printf("void Curl_llist_init(curl_llist *l, curl_llist_dtor dtor)\r\n");
}


curl_llist *
Curl_llist_alloc(curl_llist_dtor dtor)
{
    Sys_Printf("curl_llist *Curl_llist_alloc(curl_llist_dtor dtor)\r\n");
    return NULL;
}


int
Curl_llist_insert_next(curl_llist *list, curl_llist_element *e, const void *p)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intCurl_llist_insert_next(curl_llist *list, curl_llist_element *e, const void *p)\r\n");
    return retVal;
}


#if 0
int 
Curl_llist_insert_prev(curl_llist *list, curl_llist_element *e, const void *p)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Curl_llist_insert_prev(curl_llist *list, curl_llist_element *e, const void *p)\r\n");
    return retVal;
}

#endif

int 
Curl_llist_remove(curl_llist *list, curl_llist_element *e, void *user)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Curl_llist_remove(curl_llist *list, curl_llist_element *e, void *user)\r\n");
    return retVal;
}


#if 0
int 
Curl_llist_remove_next(curl_llist *list, curl_llist_element *e, void *user)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Curl_llist_remove_next(curl_llist *list, curl_llist_element *e, void *user)\r\n");
    return retVal;
}


int 
Curl_llist_remove_prev(curl_llist *list, curl_llist_element *e, void *user)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Curl_llist_remove_prev(curl_llist *list, curl_llist_element *e, void *user)\r\n");
    return retVal;
}


size_t 
Curl_llist_count(curl_llist *list)
{
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t Curl_llist_count(curl_llist *list)\r\n");
    return retVal;
}

#endif

void 
Curl_llist_destroy(curl_llist *list, void *user)
{
    Sys_Printf("void Curl_llist_destroy(curl_llist *list, void *user)\r\n");
}

