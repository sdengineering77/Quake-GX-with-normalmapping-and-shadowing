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
 * $Id: content_encoding.c,v 1.13 2004/02/15 13:58:57 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#ifdef HAVE_LIBZ

#include <stdlib.h>
#include <string.h>

#include "urldata.h"
#include <curl/curl.h>
#include <curl/types.h>
#include "sendf.h"
#include "content_encoding.h"

#define DSIZ 0x10000             /* buffer size for decompressed data */

#define GZIP_MAGIC_0 0x1f
#define GZIP_MAGIC_1 0x8b

/* gzip flag byte */
#define ASCII_FLAG   0x01 /* bit 0 set: file probably ascii text */
#define HEAD_CRC     0x02 /* bit 1 set: header CRC present */
#define EXTRA_FIELD  0x04 /* bit 2 set: extra field present */
#define ORIG_NAME    0x08 /* bit 3 set: original file name present */
#define COMMENT      0x10 /* bit 4 set: file comment present */
#define RESERVED     0xE0 /* bits 5..7: reserved */

static CURLcode
process_zlib_error(struct SessionHandle *data, z_stream *z)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcodeprocess_zlib_error(struct SessionHandle *data, z_stream *z)\r\n");
    return retVal;
}


static CURLcode
exit_zlib(z_stream *z, bool *zlib_init, CURLcode result)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcodeexit_zlib(z_stream *z, bool *zlib_init, CURLcode result)\r\n");
    return retVal;
}


CURLcode
Curl_unencode_deflate_write(struct SessionHandle *data,
                            struct Curl_transfer_keeper *k,
                            ssize_t nread)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcodeCurl_unencode_deflate_write(struct SessionHandle *data, struct Curl_transfer_keeper *k, ssize_t nread)\r\n");
    return retVal;
}


/* Skip over the gzip header */
static enum {
  GZIP_OK,
  GZIP_BAD,
  GZIP_UNDERFLOW
} check_gzip_header(unsigned char const *data, ssize_t len, ssize_t *headerlen)
{
  int method, flags;
  const ssize_t totallen = len;

  /* The shortest header is 10 bytes */
  if (len < 10)
    return GZIP_UNDERFLOW;

  if ((data[0] != GZIP_MAGIC_0) || (data[1] != GZIP_MAGIC_1))
    return GZIP_BAD;

  method = data[2];
  flags = data[3];

  if (method != Z_DEFLATED || (flags & RESERVED) != 0) {
    /* Can't handle this compression method or unknown flag */
    return GZIP_BAD;
  }

  /* Skip over time, xflags, OS code and all previous bytes */
  len -= 10;
  data += 10;

  if (flags & EXTRA_FIELD) {
    ssize_t extra_len;

    if (len < 2)
      return GZIP_UNDERFLOW;

    extra_len = (data[1] << 8) | data[0];

    if (len < (extra_len+2))
      return GZIP_UNDERFLOW;

    len -= (extra_len + 2);
  }

  if (flags & ORIG_NAME) {
    /* Skip over NUL-terminated file name */
    while (len && *data) {
      --len;
      ++data;
    }
    if (!len || *data)
      return GZIP_UNDERFLOW;

    /* Skip over the NUL */
    --len;
    ++data;
  }

  if (flags & COMMENT) {
    /* Skip over NUL-terminated comment */
    while (len && *data) {
      --len;
      ++data;
    }
    if (!len || *data)
      return GZIP_UNDERFLOW;

    /* Skip over the NUL */
    --len;
    ++data;
  }

  if (flags & HEAD_CRC) {
    if (len < 2)
      return GZIP_UNDERFLOW;

    len -= 2;
    data += 2;
  }

  *headerlen = totallen - len;
  return GZIP_OK;
}

CURLcode
Curl_unencode_gzip_write(struct SessionHandle *data,
                         struct Curl_transfer_keeper *k,
                         ssize_t nread)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcodeCurl_unencode_gzip_write(struct SessionHandle *data, struct Curl_transfer_keeper *k, ssize_t nread)\r\n");
    return retVal;
}

#endif /* HAVE_LIBZ */
