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
 * $Id: http_ntlm.c,v 1.28 2004/03/08 16:20:51 bagder Exp $
 ***************************************************************************/
#include "setup.h"

/* NTLM details:
   
   http://davenport.sourceforge.net/ntlm.html
   http://www.innovation.ch/java/ntlm.html

*/

#ifndef CURL_DISABLE_HTTP
#ifdef USE_SSLEAY
/* We need OpenSSL for the crypto lib to provide us with MD4 and DES */

/* -- WIN32 approved -- */
#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <stdlib.h>
#include <ctype.h>

#include "urldata.h"
#include "sendf.h"
#include "strequal.h"
#include "base64.h"
#include "http_ntlm.h"
#include "url.h"
#include "http.h" /* for Curl_http_auth_stage() */

#define _MPRINTF_REPLACE /* use our functions only */
#include <curl/mprintf.h>

#include <openssl/des.h>
#include <openssl/md4.h>
#include <openssl/ssl.h>

#if OPENSSL_VERSION_NUMBER < 0x00907001L
#define DES_key_schedule des_key_schedule
#define DES_cblock des_cblock
#define DES_set_odd_parity des_set_odd_parity
#define DES_set_key des_set_key
#define DES_ecb_encrypt des_ecb_encrypt

/* This is how things were done in the old days */
#define DESKEY(x) x
#define DESKEYARG(x) x
#else
/* Modern version */
#define DESKEYARG(x) *x
#define DESKEY(x) &x
#endif

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

/* Define this to make the type-3 message include the NT response message */
#undef USE_NTRESPONSES

/*
  (*) = A "security buffer" is a triplet consisting of two shorts and one
  long:

  1. a 'short' containing the length of the buffer in bytes
  2. a 'short' containing the allocated space for the buffer in bytes
  3. a 'long' containing the offset to the start of the buffer from the
     beginning of the NTLM message, in bytes.
*/


CURLntlm Curl_input_ntlm(struct connectdata *conn,
                         bool proxy,   /* if proxy or not */
                         char *header) /* rest of the www-authenticate:
                                          header */
{
  /* point to the correct struct with this */
  struct ntlmdata *ntlm;

  ntlm = proxy?&conn->proxyntlm:&conn->ntlm;

  /* skip initial whitespaces */
  while(*header && isspace((int)*header))
    header++;

  if(checkprefix("NTLM", header)) {
    unsigned char buffer[256];
    header += strlen("NTLM");

    while(*header && isspace((int)*header))
      header++;

    if(*header) {
      /* We got a type-2 message here:

         Index   Description         Content
         0       NTLMSSP Signature   Null-terminated ASCII "NTLMSSP"
                                     (0x4e544c4d53535000)
         8       NTLM Message Type   long (0x02000000)
         12      Target Name         security buffer(*)
         20      Flags               long
         24      Challenge           8 bytes
         (32)    Context (optional)  8 bytes (two consecutive longs)
         (40)    Target Information  (optional) security buffer(*)
         32 (48) start of data block
      */

      size_t size = Curl_base64_decode(header, (char *)buffer);

      ntlm->state = NTLMSTATE_TYPE2; /* we got a type-2 */

      if(size >= 48)
        /* the nonce of interest is index [24 .. 31], 8 bytes */
        memcpy(ntlm->nonce, &buffer[24], 8);

      /* at index decimal 20, there's a 32bit NTLM flag field */
      
    }
    else {
      if(ntlm->state >= NTLMSTATE_TYPE1)
        return CURLNTLM_BAD;

      ntlm->state = NTLMSTATE_TYPE1; /* we should sent away a type-1 */
    }
  }
  return CURLNTLM_FINE;
}

/*
 * Turns a 56 bit key into the 64 bit, odd parity key and sets the key.  The
 * key schedule ks is also set.
 */
static void setup_des_key(unsigned char *key_56,
                          DES_key_schedule DESKEYARG(ks))
{
  DES_cblock key;

  key[0] = key_56[0];
  key[1] = ((key_56[0] << 7) & 0xFF) | (key_56[1] >> 1);
  key[2] = ((key_56[1] << 6) & 0xFF) | (key_56[2] >> 2);
  key[3] = ((key_56[2] << 5) & 0xFF) | (key_56[3] >> 3);
  key[4] = ((key_56[3] << 4) & 0xFF) | (key_56[4] >> 4);
  key[5] = ((key_56[4] << 3) & 0xFF) | (key_56[5] >> 5);
  key[6] = ((key_56[5] << 2) & 0xFF) | (key_56[6] >> 6);
  key[7] =  (key_56[6] << 1) & 0xFF;

  DES_set_odd_parity(&key);
  DES_set_key(&key, ks);
}

 /*
  * takes a 21 byte array and treats it as 3 56-bit DES keys. The
  * 8 byte plaintext is encrypted with each key and the resulting 24
  * bytes are stored in the results array.
  */
static void calc_resp(unsigned char *keys,
                      unsigned char *plaintext,
                      unsigned char *results)
{
    Sys_Printf("void calc_resp(unsigned char *keys, unsigned char *plaintext, unsigned char *results)\r\n");
}


/*
 * Set up lanmanager and nt hashed passwords
 */
static void mkhash(char *password,
                   unsigned char *nonce,  /* 8 bytes */
                   unsigned char *lmresp  /* must fit 0x18 bytes */
#ifdef USE_NTRESPONSES
                   , unsigned char *ntresp  /* must fit 0x18 bytes */
#endif
  )
{
  unsigned char lmbuffer[21];
#ifdef USE_NTRESPONSES
  unsigned char ntbuffer[21];
#endif
  unsigned char *pw;
  static const unsigned char magic[] = {
    0x4B, 0x47, 0x53, 0x21, 0x40, 0x23, 0x24, 0x25
  };
  unsigned int i;
  size_t len = strlen(password);

  /* make it fit at least 14 bytes */
  pw = malloc(len<7?14:len*2);
  if(!pw)
    return; /* this will lead to a badly generated package */

  if (len > 14)
    len = 14;
  
  for (i=0; i<len; i++)
    pw[i] = toupper(password[i]);

  for (; i<14; i++)
    pw[i] = 0;

  {
    /* create LanManager hashed password */
    DES_key_schedule ks;

    setup_des_key(pw, DESKEY(ks));
    DES_ecb_encrypt((DES_cblock *)magic, (DES_cblock *)lmbuffer,
                    DESKEY(ks), DES_ENCRYPT);
  
    setup_des_key(pw+7, DESKEY(ks));
    DES_ecb_encrypt((DES_cblock *)magic, (DES_cblock *)(lmbuffer+8),
                    DESKEY(ks), DES_ENCRYPT);

    memset(lmbuffer+16, 0, 5);
  }
  /* create LM responses */
  calc_resp(lmbuffer, nonce, lmresp);

#ifdef USE_NTRESPONSES
  {
    /* create NT hashed password */
    MD4_CTX MD4;

    len = strlen(password);

    for (i=0; i<len; i++) {
      pw[2*i]   = password[i];
      pw[2*i+1] = 0;
    }

    MD4_Init(&MD4);
    MD4_Update(&MD4, pw, 2*len);
    MD4_Final(ntbuffer, &MD4);

    memset(ntbuffer+16, 0, 8);
  }

  calc_resp(ntbuffer, nonce, ntresp);
#endif

  free(pw);
}

#define SHORTPAIR(x) ((x) & 0xff), ((x) >> 8)
#define LONGQUARTET(x) ((x) & 0xff), (((x) >> 8)&0xff), \
  (((x) >>16)&0xff), ((x)>>24)

/* this is for creating ntlm header output */
CURLcode Curl_output_ntlm(struct connectdata *conn,
                          bool proxy,
                          bool *ready)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_output_ntlm(struct connectdata *conn, bool proxy, bool *ready)\r\n");
    return retVal;
}

#endif /* USE_SSLEAY */
#endif /* !CURL_DISABLE_HTTP */
