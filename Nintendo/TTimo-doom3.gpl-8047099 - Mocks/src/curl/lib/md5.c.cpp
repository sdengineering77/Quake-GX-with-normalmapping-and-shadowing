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
 * $Id: md5.c,v 1.7 2004/02/20 16:18:26 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#ifndef USE_SSLEAY
/* This code segment is only used if OpenSSL is not provided, as if it is
   we use the MD5-function provided there instead. No good duplicating
   code! */

/* Copyright (C) 1991-2, RSA Data Security, Inc. Created 1991. All
rights reserved.

License to copy and use this software is granted provided that it
is identified as the "RSA Data Security, Inc. MD5 Message-Digest
Algorithm" in all material mentioning or referencing this software
or this function.

License is also granted to make and use derivative works provided
that such works are identified as "derived from the RSA Data
Security, Inc. MD5 Message-Digest Algorithm" in all material
mentioning or referencing the derived work.

RSA Data Security, Inc. makes no representations concerning either
the merchantability of this software or the suitability of this
software for any particular purpose. It is provided "as is"
without express or implied warranty of any kind.

These notices must be retained in any copies of any part of this
documentation and/or software.
 */

#include <string.h>

/* UINT4 defines a four byte word */
typedef unsigned int UINT4;

/* MD5 context. */
struct md5_ctx {
  UINT4 state[4];                                   /* state (ABCD) */
  UINT4 count[2];        /* number of bits, modulo 2^64 (lsb first) */
  unsigned char buffer[64];                         /* input buffer */
};

typedef struct md5_ctx MD5_CTX;

static void MD5_Init(struct md5_ctx *);
static void MD5_Update(struct md5_ctx *, unsigned char *, unsigned int);
static void MD5_Final(unsigned char [16], struct md5_ctx *);

/* Constants for MD5Transform routine.
 */

#define S11 7
#define S12 12
#define S13 17
#define S14 22
#define S21 5
#define S22 9
#define S23 14
#define S24 20
#define S31 4
#define S32 11
#define S33 16
#define S34 23
#define S41 6
#define S42 10
#define S43 15
#define S44 21

static void MD5Transform(UINT4 [4], unsigned char [64]);
static void Encode(unsigned char *, UINT4 *, unsigned int);
static void Decode(UINT4 *, unsigned char *, unsigned int);

static unsigned char PADDING[64] = {
  0x80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

/* F, G, H and I are basic MD5 functions.
 */
#define F(x, y, z) (((x) & (y)) | ((~x) & (z)))
#define G(x, y, z) (((x) & (z)) | ((y) & (~z)))
#define H(x, y, z) ((x) ^ (y) ^ (z))
#define I(x, y, z) ((y) ^ ((x) | (~z)))

/* ROTATE_LEFT rotates x left n bits.
 */
#define ROTATE_LEFT(x, n) (((x) << (n)) | ((x) >> (32-(n))))

/* FF, GG, HH, and II transformations for rounds 1, 2, 3, and 4.
Rotation is separate from addition to prevent recomputation.
 */
#define FF(a, b, c, d, x, s, ac) { \
 (a) += F ((b), (c), (d)) + (x) + (UINT4)(ac); \
 (a) = ROTATE_LEFT ((a), (s)); \
 (a) += (b); \
  }
#define GG(a, b, c, d, x, s, ac) { \
 (a) += G ((b), (c), (d)) + (x) + (UINT4)(ac); \
 (a) = ROTATE_LEFT ((a), (s)); \
 (a) += (b); \
  }
#define HH(a, b, c, d, x, s, ac) { \
 (a) += H ((b), (c), (d)) + (x) + (UINT4)(ac); \
 (a) = ROTATE_LEFT ((a), (s)); \
 (a) += (b); \
  }
#define II(a, b, c, d, x, s, ac) { \
 (a) += I ((b), (c), (d)) + (x) + (UINT4)(ac); \
 (a) = ROTATE_LEFT ((a), (s)); \
 (a) += (b); \
  }

/* MD5 initialization. Begins an MD5 operation, writing a new context.
 */
static void MD5_Init(struct md5_ctx *context)
{
    Sys_Printf("void MD5_Init(struct md5_ctx *context)\r\n");
}


/* MD5 block update operation. Continues an MD5 message-digest
  operation, processing another message block, and updating the
  context.
 */
static void MD5_Update (struct md5_ctx *context, /* context */
                        unsigned char *input, /* input block */
                        unsigned int inputLen)/* length of input block */
{
  unsigned int i, bufindex, partLen;

  /* Compute number of bytes mod 64 */
  bufindex = (unsigned int)((context->count[0] >> 3) & 0x3F);

  /* Update number of bits */
  if ((context->count[0] += ((UINT4)inputLen << 3))
      < ((UINT4)inputLen << 3))
    context->count[1]++;
  context->count[1] += ((UINT4)inputLen >> 29);
  
  partLen = 64 - bufindex;

  /* Transform as many times as possible. */
  if (inputLen >= partLen) {
    memcpy((void *)&context->buffer[bufindex], (void *)input, partLen);
    MD5Transform(context->state, context->buffer);
    
    for (i = partLen; i + 63 < inputLen; i += 64)
      MD5Transform(context->state, &input[i]);
    
    bufindex = 0;
  }
  else
    i = 0;

  /* Buffer remaining input */
  memcpy((void *)&context->buffer[bufindex], (void *)&input[i], inputLen-i);
}

/* MD5 finalization. Ends an MD5 message-digest operation, writing the
   the message digest and zeroizing the context.
*/
static void MD5_Final(unsigned char digest[16], /* message digest */
                      struct md5_ctx *context) /* context */
{
  unsigned char bits[8];
  unsigned int count, padLen;

  /* Save number of bits */
  Encode (bits, context->count, 8);

  /* Pad out to 56 mod 64. */
  count = (unsigned int)((context->count[0] >> 3) & 0x3f);
  padLen = (count < 56) ? (56 - count) : (120 - count);
  MD5_Update (context, PADDING, padLen);

  /* Append length (before padding) */
  MD5_Update (context, bits, 8);

  /* Store state in digest */
  Encode (digest, context->state, 16);

  /* Zeroize sensitive information. */
  memset ((void *)context, 0, sizeof (*context));
}

/* MD5 basic transformation. Transforms state based on block. */
static void MD5Transform(UINT4 state[4],
                         unsigned char block[64])
{
    Sys_Printf("void MD5Transform(UINT4 state[4], unsigned char block[64])\r\n");
}


/* Encodes input (UINT4) into output (unsigned char). Assumes len is
  a multiple of 4.
 */
static void Encode (unsigned char *output,
                    UINT4 *input,
                    unsigned int len)
{
    Sys_Printf("void Encode (unsigned char *output, UINT4 *input, unsigned int len)\r\n");
}


/* Decodes input (unsigned char) into output (UINT4). Assumes len is
   a multiple of 4.
*/
static void Decode (UINT4 *output,
                    unsigned char *input,
                    unsigned int len)
{
    Sys_Printf("void Decode (UINT4 *output, unsigned char *input, unsigned int len)\r\n");
}


#else
/* If OpenSSL is present */
#include <openssl/md5.h>
#include <string.h>
#endif

#include "md5.h"

void Curl_md5it(unsigned char *outbuffer, /* 16 bytes */
                unsigned char *input)
{
  MD5_CTX ctx;
  MD5_Init(&ctx);
  MD5_Update(&ctx, input, strlen((char *)input));
  MD5_Final(outbuffer, &ctx);
}
