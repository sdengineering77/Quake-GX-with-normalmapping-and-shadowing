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
 * $Id: strtoofft.c,v 1.5 2004/02/19 08:12:13 bagder Exp $
 ***************************************************************************/

#include "setup.h"
#include "strtoofft.h"

#ifdef NEED_CURL_STRTOLL
#include <stdlib.h>
#include <ctype.h>
#include <errno.h>

static int get_char(char c, int base);

/**
 * Emulated version of the strtoll function.  This extracts a long long
 * value from the given input string and returns it.
 */
curl_off_t
curlx_strtoll(const char *nptr, char **endptr, int base)
{
    curl_off_t retVal;
    memset(&retVal, 0, sizeof(curl_off_t));
    Sys_Printf("curl_off_tcurlx_strtoll(const char *nptr, char **endptr, int base)\r\n");
    return retVal;
}


/**
 * Returns the value of c in the given base, or -1 if c cannot
 * be interpreted properly in that base (i.e., is out of range,
 * is a null, etc.).
 *
 * @param c     the character to interpret according to base
 * @param base  the base in which to interpret c
 *
 * @return  the value of c in base, or -1 if c isn't in range
 */
static int get_char(char c, int base)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int get_char(char c, int base)\r\n");
    return retVal;
}

#endif  /* Only present if we need strtoll, but don't have it. */
