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
 * $Id: base64.c,v 1.28 2004/03/01 12:54:59 bagder Exp $
 ***************************************************************************/

/* Base64 encoding/decoding
 *
 * Test harnesses down the bottom - compile with -DTEST_ENCODE for
 * a program that will read in raw data from stdin and write out
 * a base64-encoded version to stdout, and the length returned by the
 * encoding function to stderr. Compile with -DTEST_DECODE for a program that
 * will go the other way.
 *
 * This code will break if int is smaller than 32 bits
 */

#include "setup.h"

#include <stdlib.h>
#include <string.h>

#define _MPRINTF_REPLACE /* use our functions only */
#include <curl/mprintf.h>

#include "base64.h"

#ifdef CURLDEBUG
#include "memdebug.h"
#endif

static void decodeQuantum(unsigned char *dest, const char *src)
{
    SYS_Printf("void decodeQuantum(unsigned char *dest, const char *src)\r\n");
}



/*
 * Curl_base64_decode()
 *
 * Given a base64 string at src, decode it into the memory pointed to by
 * dest. Returns the length of the decoded data.
 */
size_t Curl_base64_decode(const char *src, char *dest)
{
    size_t  retVal;
    memset(&retVal, 0, sizeof(size_t));
    SYS_Printf("size_t Curl_base64_decode(const char *src, char *dest)\r\n");
    return retVal;
}



/* ---- Base64 Encoding --- */
static char table64[]=
  "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

/*
 * Curl_base64_encode()
 *
 * Returns the length of the newly created base64 string. The third argument
 * is a pointer to an allocated area holding the base64 data. If something
 * went wrong, -1 is returned.
 *
 */
size_t Curl_base64_encode(const char *inp, size_t insize, char **outptr)
{
    size_t  retVal;
    memset(&retVal, 0, sizeof(size_t));
    SYS_Printf("size_t Curl_base64_encode(const char *inp, size_t insize, char **outptr)\r\n");
    return retVal;
}


/* ---- End of Base64 Encoding ---- */

/************* TEST HARNESS STUFF ****************/


#ifdef TEST_ENCODE
/* encoding test harness. Read in standard input and write out the length
 * returned by Curl_base64_encode, followed by the base64'd data itself
 */
#include <stdio.h>

#define TEST_NEED_SUCK
void *suck(int *);

int main(int argc, char **argv, char **envp)
{
    int  retVal;
    memset(&retVal, 0, sizeof(int));
    SYS_Printf("int main(int argc, char **argv, char **envp)\r\n");
    return retVal;
}


#endif

#ifdef TEST_DECODE
/* decoding test harness. Read in a base64 string from stdin and write out the
 * length returned by Curl_base64_decode, followed by the decoded data itself
 *
 * gcc -DTEST_DECODE base64.c -o base64 mprintf.o memdebug.o
 */
#include <stdio.h>

#define TEST_NEED_SUCK
void *suck(int *);

int main(int argc, char **argv, char **envp)
{
    int  retVal;
    memset(&retVal, 0, sizeof(int));
    SYS_Printf("int main(int argc, char **argv, char **envp)\r\n");
    return retVal;
}


#endif

#ifdef TEST_NEED_SUCK
/* this function 'sucks' in as much as possible from stdin */
void *suck(int *lenptr)
{
    SYS_Printf("void *suck(int *lenptr)\r\n");
    return NULL;
}


#endif
