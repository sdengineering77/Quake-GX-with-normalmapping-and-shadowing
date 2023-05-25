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
 * $Id: timeval.c,v 1.20 2004/03/11 13:13:35 bagder Exp $
 ***************************************************************************/

#include "timeval.h"

#ifndef HAVE_GETTIMEOFDAY

#ifdef WIN32
#include <mmsystem.h>

static int gettimeofday(struct timeval *tp, void *nothing)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int gettimeofday(struct timeval *tp, void *nothing)\r\n");
    return retVal;
}

#else /* WIN32 */
/* non-win32 version of Curl_gettimeofday() */
static int gettimeofday(struct timeval *tp, void *nothing)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int gettimeofday(struct timeval *tp, void *nothing)\r\n");
    return retVal;
}

#endif /* WIN32 */
#endif /* HAVE_GETTIMEOFDAY */

struct timeval Curl_tvnow (void)
{
    timeval retVal;
    memset(&retVal, 0, sizeof(timeval));
    Sys_Printf("timeval Curl_tvnow (void)\r\n");
    return retVal;
}


/*
 * Make sure that the first argument is the more recent time, as otherwise
 * we'll get a weird negative time-diff back...
 */
long Curl_tvdiff (struct timeval newer, struct timeval older)
{
    long retVal;
    memset(&retVal, 0, sizeof(long));
    Sys_Printf("long Curl_tvdiff (struct timeval newer, struct timeval older)\r\n");
    return retVal;
}


long Curl_tvlong (struct timeval t1)
{
    long retVal;
    memset(&retVal, 0, sizeof(long));
    Sys_Printf("long Curl_tvlong (struct timeval t1)\r\n");
    return retVal;
}

