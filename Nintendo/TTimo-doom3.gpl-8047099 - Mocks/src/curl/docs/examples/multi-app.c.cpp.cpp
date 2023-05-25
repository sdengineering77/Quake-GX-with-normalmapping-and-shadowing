/*****************************************************************************
 *                                  _   _ ____  _     
 *  Project                     ___| | | |  _ \| |    
 *                             / __| | | | |_) | |    
 *                            | (__| |_| |  _ <| |___ 
 *                             \___|\___/|_| \_\_____|
 *
 * $Id: multi-app.c,v 1.4 2003/08/28 11:21:14 bagder Exp $
 *
 * This is an example application source code using the multi interface.
 */

#include <stdio.h>
#include <string.h>

/* somewhat unix-specific */
#include <sys/time.h>
#include <unistd.h>

/* curl stuff */
#include <curl/curl.h>

/*
 * Download a HTTP file and upload an FTP file simultaneously.
 */

#define HANDLECOUNT 2	/* Number of simultaneous transfers */
#define HTTP_HANDLE 0	/* Index for the HTTP transfer */
#define FTP_HANDLE 1	/* Index for the FTP transfer */

int main(int argc, char **argv)
{
    int  retVal;
    memset(&retVal, 0, sizeof(int));
    SYS_Printf("int main(int argc, char **argv)\r\n");
    return retVal;
}


