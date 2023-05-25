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
 * $Id: progress.c,v 1.57 2004/03/11 21:48:15 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#include <string.h>
#include <time.h>

/* 20000318 mgs
 * later we use _scrsize to determine the screen width, this emx library
 * function needs stdlib.h to be included */
#if defined(__EMX__)
#include <stdlib.h>
#endif

#include <curl/curl.h>
#include "urldata.h"
#include "sendf.h"

#include "progress.h"

#define _MPRINTF_REPLACE /* use our functions only */
#include <curl/mprintf.h>


static void time2str(char *r, int t)
{
    Sys_Printf("void time2str(char *r, int t)\r\n");
}


/* The point of this function would be to return a string of the input data,
   but never longer than 5 columns. Add suffix k, M, G when suitable... */
static char *max5data(curl_off_t bytes, char *max5)
{
    Sys_Printf("char *max5data(curl_off_t bytes, char *max5)\r\n");
    return NULL;
}


/* 

   New proposed interface, 9th of February 2000:

   pgrsStartNow() - sets start time
   pgrsSetDownloadSize(x) - known expected download size
   pgrsSetUploadSize(x) - known expected upload size
   pgrsSetDownloadCounter() - amount of data currently downloaded
   pgrsSetUploadCounter() - amount of data currently uploaded
   pgrsUpdate() - show progress
   pgrsDone() - transfer complete

*/

void Curl_pgrsDone(struct connectdata *conn)
{
    Sys_Printf("void Curl_pgrsDone(struct connectdata *conn)\r\n");
}


/* reset all times except redirect */
void Curl_pgrsResetTimes(struct SessionHandle *data)
{
    Sys_Printf("void Curl_pgrsResetTimes(struct SessionHandle *data)\r\n");
}


void Curl_pgrsTime(struct SessionHandle *data, timerid timer)
{
    Sys_Printf("void Curl_pgrsTime(struct SessionHandle *data, timerid timer)\r\n");
}


void Curl_pgrsStartNow(struct SessionHandle *data)
{
    Sys_Printf("void Curl_pgrsStartNow(struct SessionHandle *data)\r\n");
}


void Curl_pgrsSetDownloadCounter(struct SessionHandle *data, curl_off_t size)
{
    Sys_Printf("void Curl_pgrsSetDownloadCounter(struct SessionHandle *data, curl_off_t size)\r\n");
}


void Curl_pgrsSetUploadCounter(struct SessionHandle *data, curl_off_t size)
{
    Sys_Printf("void Curl_pgrsSetUploadCounter(struct SessionHandle *data, curl_off_t size)\r\n");
}


void Curl_pgrsSetDownloadSize(struct SessionHandle *data, curl_off_t size)
{
    Sys_Printf("void Curl_pgrsSetDownloadSize(struct SessionHandle *data, curl_off_t size)\r\n");
}


void Curl_pgrsSetUploadSize(struct SessionHandle *data, curl_off_t size)
{
    Sys_Printf("void Curl_pgrsSetUploadSize(struct SessionHandle *data, curl_off_t size)\r\n");
}


/* EXAMPLE OUTPUT to follow:

  % Total    % Received % Xferd  Average Speed          Time             Curr.
                                 Dload  Upload Total    Current  Left    Speed
100 12345  100 12345  100 12345  12345  12345 12:12:12 12:12:12 12:12:12 12345

 */

int Curl_pgrsUpdate(struct connectdata *conn)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Curl_pgrsUpdate(struct connectdata *conn)\r\n");
    return retVal;
}

