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
 * $Id: http_digest.c,v 1.8 2004/03/08 12:37:11 bagder Exp $
 ***************************************************************************/
#include "setup.h"

#ifndef CURL_DISABLE_HTTP
/* -- WIN32 approved -- */
#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <stdlib.h>
#include <ctype.h>

#include "urldata.h"
#include "sendf.h"
#include "strequal.h"

#include "md5.h"
#include "http_digest.h"

#define _MPRINTF_REPLACE /* use our functions only */
#include <curl/mprintf.h>

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

/* Test example header:

WWW-Authenticate: Digest realm="testrealm", nonce="1053604598"

*/

CURLdigest Curl_input_digest(struct connectdata *conn,
                             char *header) /* rest of the www-authenticate:
                                              header */
{
  bool more = TRUE;
  struct SessionHandle *data=conn->data;

  /* skip initial whitespaces */
  while(*header && isspace((int)*header))
    header++;

  if(checkprefix("Digest", header)) {
    header += strlen("Digest");

    /* clear off any former leftovers and init to defaults */
    Curl_digest_cleanup(data);

    while(more) {
      char value[32];
      char content[128];
      size_t totlen=0;

      while(*header && isspace((int)*header))
        header++;
    
      /* how big can these strings be? */
      if(2 == sscanf(header, "%31[^=]=\"%127[^\"]\"",
                     value, content)) {
        if(strequal(value, "nonce")) {
          data->state.digest.nonce = strdup(content);
        }
        else if(strequal(value, "cnonce")) {
          data->state.digest.cnonce = strdup(content);
        }
        else if(strequal(value, "realm")) {
          data->state.digest.realm = strdup(content);
        }
        else if(strequal(value, "algorithm")) {
          if(strequal(content, "MD5-sess"))
            data->state.digest.algo = CURLDIGESTALGO_MD5SESS;
          /* else, remain using the default md5 */
        }
        else {
          /* unknown specifier, ignore it! */
        }
        totlen = strlen(value)+strlen(content)+3;
      }
      else 
        break; /* we're done here */
        
      header += totlen;
      if(',' == *header)
        /* allow the list to be comma-separated */
        header++; 
    }

    if(!data->state.digest.nonce)
      return CURLDIGEST_BAD;
  }
  else 
    /* else not a digest, get out */
    return CURLDIGEST_NONE;

  return CURLDIGEST_FINE;
}

/* convert md5 chunk to RFC2617 (section 3.1.3) -suitable ascii string*/
static void md5_to_ascii(unsigned char *source, /* 16 bytes */
                         unsigned char *dest) /* 33 bytes */
{
  int i;
  for(i=0; i<16; i++)
    sprintf((char *)&dest[i*2], "%02x", source[i]);
}

CURLcode Curl_output_digest(struct connectdata *conn,
                            unsigned char *request,
                            unsigned char *uripath)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_output_digest(struct connectdata *conn, unsigned char *request, unsigned char *uripath)\r\n");
    return retVal;
}


void Curl_digest_cleanup(struct SessionHandle *data)
{
    Sys_Printf("void Curl_digest_cleanup(struct SessionHandle *data)\r\n");
}


#endif
