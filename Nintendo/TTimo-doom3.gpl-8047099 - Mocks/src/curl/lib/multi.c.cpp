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
 * $Id: multi.c,v 1.47 2004/03/11 13:13:35 bagder Exp $
 ***************************************************************************/

#include "setup.h"
#include <stdlib.h>
#include <string.h>

#ifdef HAVE_SYS_TYPES_H
#include <sys/types.h>
#endif
#ifdef HAVE_SYS_SOCKET_H
#include <sys/socket.h>
#endif
#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif

#include <curl/curl.h>

#include "urldata.h"
#include "transfer.h"
#include "url.h"
#include "connect.h"
#include "progress.h"

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

struct Curl_message {
  /* the 'CURLMsg' is the part that is visible to the external user */
  struct CURLMsg extmsg;
  struct Curl_message *next;
};

typedef enum {
  CURLM_STATE_INIT,
  CURLM_STATE_CONNECT,     /* resolve/connect has been sent off */
  CURLM_STATE_WAITRESOLVE, /* we're awaiting the resolve to finalize */
  CURLM_STATE_WAITCONNECT, /* we're awaiting the connect to finalize */
  CURLM_STATE_DO,          /* send off the request (part 1) */
  CURLM_STATE_DO_MORE,     /* send off the request (part 2) */
  CURLM_STATE_PERFORM,     /* transfer data */
  CURLM_STATE_DONE,        /* post data transfer operation */
  CURLM_STATE_COMPLETED,   /* operation complete */

  CURLM_STATE_LAST /* not a true state, never use this */
} CURLMstate;

struct Curl_one_easy {
  /* first, two fields for the linked list of these */
  struct Curl_one_easy *next;
  struct Curl_one_easy *prev;
  
  struct SessionHandle *easy_handle; /* the easy handle for this unit */
  struct connectdata *easy_conn;     /* the "unit's" connection */

  CURLMstate state;  /* the handle's state */
  CURLcode result;   /* previous result */

  struct Curl_message *msg; /* A pointer to one single posted message.
                               Cleanup should be done on this pointer NOT on
                               the linked list in Curl_multi.  This message
                               will be deleted when this handle is removed
                               from the multi-handle */
  int msg_num; /* number of messages left in 'msg' to return */
};


#define CURL_MULTI_HANDLE 0x000bab1e

#define GOOD_MULTI_HANDLE(x) ((x)&&(((struct Curl_multi *)x)->type == CURL_MULTI_HANDLE))
#define GOOD_EASY_HANDLE(x) (x)

/* This is the struct known as CURLM on the outside */
struct Curl_multi {
  /* First a simple identifier to easier detect if a user mix up
     this multi handle with an easy handle. Set this to CURL_MULTI_HANDLE. */
  long type;

  /* We have a linked list with easy handles */
  struct Curl_one_easy easy; 
  /* This is the amount of entries in the linked list above. */
  int num_easy;

  int num_msgs; /* total amount of messages in the easy handles */

  /* Hostname cache */
  curl_hash *hostcache;
};


CURLM *curl_multi_init(void)
{
    Sys_Printf("CURLM *curl_multi_init(void)\r\n");
    return NULL;
}


CURLMcode curl_multi_add_handle(CURLM *multi_handle,
                                CURL *easy_handle)
{
    CURLMcode retVal;
    memset(&retVal, 0, sizeof(CURLMcode));
    Sys_Printf("CURLMcode curl_multi_add_handle(CURLM *multi_handle, CURL *easy_handle)\r\n");
    return retVal;
}


CURLMcode curl_multi_remove_handle(CURLM *multi_handle,
                                   CURL *curl_handle)
{
    CURLMcode retVal;
    memset(&retVal, 0, sizeof(CURLMcode));
    Sys_Printf("CURLMcode curl_multi_remove_handle(CURLM *multi_handle, CURL *curl_handle)\r\n");
    return retVal;
}


CURLMcode curl_multi_fdset(CURLM *multi_handle,
                           fd_set *read_fd_set, fd_set *write_fd_set,
                           fd_set *exc_fd_set, int *max_fd)
{
    CURLMcode retVal;
    memset(&retVal, 0, sizeof(CURLMcode));
    Sys_Printf("CURLMcode curl_multi_fdset(CURLM *multi_handle, fd_set *read_fd_set, fd_set *write_fd_set, fd_set *exc_fd_set, int *max_fd)\r\n");
    return retVal;
}


CURLMcode curl_multi_perform(CURLM *multi_handle, int *running_handles)
{
    CURLMcode retVal;
    memset(&retVal, 0, sizeof(CURLMcode));
    Sys_Printf("CURLMcode curl_multi_perform(CURLM *multi_handle, int *running_handles)\r\n");
    return retVal;
}


CURLMcode curl_multi_cleanup(CURLM *multi_handle)
{
    CURLMcode retVal;
    memset(&retVal, 0, sizeof(CURLMcode));
    Sys_Printf("CURLMcode curl_multi_cleanup(CURLM *multi_handle)\r\n");
    return retVal;
}


CURLMsg *curl_multi_info_read(CURLM *multi_handle, int *msgs_in_queue)
{
    Sys_Printf("CURLMsg *curl_multi_info_read(CURLM *multi_handle, int *msgs_in_queue)\r\n");
    return NULL;
}

