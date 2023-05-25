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
 * $Id: sws.c,v 1.44 2004/03/09 08:38:25 bagder Exp $
 ***************************************************************************/

/* sws.c: simple (silly?) web server

   This code was originally graciously donated to the project by Juergen
   Wilke. Thanks a bunch!

 */
#include "setup.h" /* portability help from the lib directory */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include <sys/time.h>
#include <sys/types.h>
#ifdef HAVE_SYS_SOCKET_H
#include <sys/socket.h>
#endif
#ifdef HAVE_NETINET_IN_H
#include <netinet/in.h>
#endif
#ifdef _XOPEN_SOURCE_EXTENDED
/* This define is "almost" required to build on HPUX 11 */
#include <arpa/inet.h> 
#endif
#ifdef HAVE_NETDB_H
#include <netdb.h>
#endif

#include "getpart.h"

#ifndef FALSE
#define FALSE 0
#endif
#ifndef TRUE
#define TRUE 1
#endif

#if defined(WIN32) && !defined(__GNUC__) || defined(__MINGW32__)
#include <windows.h>
#include <winsock2.h>
#define EINPROGRESS  WSAEINPROGRESS
#define EWOULDBLOCK  WSAEWOULDBLOCK
#define EISCONN      WSAEISCONN
#define ENOTSOCK     WSAENOTSOCK
#define ECONNREFUSED WSAECONNREFUSED
#endif

#define REQBUFSIZ 150000
#define REQBUFSIZ_TXT "149999"

struct httprequest {
  char reqbuf[REQBUFSIZ]; /* buffer area for the incoming request */
  int offset;     /* size of the incoming request */
  int testno;     /* test number found in the request */
  int partno;     /* part number found in the request */
  int open;       /* keep connection open info, as found in the request */
  bool auth_req;  /* authentication required, don't wait for body unless
                     there's an Authorization header */

  bool auth;      /* Authorization header present in the incoming request */
  size_t cl;      /* Content-Length of the incoming request */
  bool digest;    /* Authorization digest header found */
  bool ntlm;      /* Authorization ntlm header found */
};

int ProcessRequest(struct httprequest *req);
void storerequest(char *reqbuf);

#define DEFAULT_PORT 8999

#ifndef DEFAULT_LOGFILE
#define DEFAULT_LOGFILE "log/sws.log"
#endif

#define SWSVERSION "cURL test suite HTTP server/0.1"

#define REQUEST_DUMP  "log/server.input"
#define RESPONSE_DUMP "log/server.response"

#define TEST_DATA_PATH "%s/data/test%d"

/* very-big-path support */
#define MAXDOCNAMELEN 140000
#define MAXDOCNAMELEN_TXT "139999"

#define REQUEST_KEYWORD_SIZE 256

#define CMD_AUTH_REQUIRED "auth_required"

/* global variable, where to find the 'data' dir */
const char *path=".";

enum {
  DOCNUMBER_NOTHING = -7,
  DOCNUMBER_QUIT    = -6,
  DOCNUMBER_BADCONNECT = -5,
  DOCNUMBER_INTERNAL= -4,
  DOCNUMBER_CONNECT = -3,
  DOCNUMBER_WERULEZ = -2,
  DOCNUMBER_404     = -1
};


/* sent as reply to a QUIT */
static const char *docquit =
"HTTP/1.1 200 Goodbye\r\n"
"\r\n";

/* sent as reply to a CONNECT */
static const char *docconnect =
"HTTP/1.1 200 Mighty fine indeed\r\n"
"\r\n";

/* sent as reply to a "bad" CONNECT */
static const char *docbadconnect =
"HTTP/1.1 501 Forbidden you fool\r\n"
"\r\n";

/* send back this on 404 file not found */
static const char *doc404 = "HTTP/1.1 404 Not Found\n"
    "Server: " SWSVERSION "\n"
    "Connection: close\n"
    "Content-Type: text/html\n"
    "\n"
    "<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">\n"
    "<HTML><HEAD>\n"
    "<TITLE>404 Not Found</TITLE>\n"
    "</HEAD><BODY>\n"
    "<H1>Not Found</H1>\n"
    "The requested URL was not found on this server.\n"
    "<P><HR><ADDRESS>" SWSVERSION "</ADDRESS>\n" "</BODY></HTML>\n";

#ifdef SIGPIPE
static volatile int sigpipe;
#endif
static FILE *logfp;

static void logmsg(const char *msg, ...)
{
    Sys_Printf("void logmsg(const char *msg, ...)\r\n");
}



#ifdef SIGPIPE
static void sigpipe_handler(int sig)
{
    Sys_Printf("void sigpipe_handler(int sig)\r\n");
}

#endif

#define END_OF_HEADERS "\r\n\r\n"

static char *test2file(int testno)
{
    Sys_Printf("char *test2file(int testno)\r\n");
    return NULL;
}



int ProcessRequest(struct httprequest *req)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int ProcessRequest(struct httprequest *req)\r\n");
    return retVal;
}


/* store the entire request in a file */
void storerequest(char *reqbuf)
{
    Sys_Printf("void storerequest(char *reqbuf)\r\n");
}


/* return 0 on success, non-zero on failure */
static int get_request(int sock, struct httprequest *req)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int get_request(int sock, struct httprequest *req)\r\n");
    return retVal;
}


/* returns -1 on failure */
static int send_doc(int sock, struct httprequest *req)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int send_doc(int sock, struct httprequest *req)\r\n");
    return retVal;
}


#if defined(WIN32) && !defined(__GNUC__) || defined(__MINGW32__)
static void win32_init(void)
{
    Sys_Printf("void win32_init(void)\r\n");
}

static void win32_cleanup(void)
{
    Sys_Printf("void win32_cleanup(void)\r\n");
}

#endif

int main(int argc, char *argv[])
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int main(int argc, char *argv[])\r\n");
    return retVal;
}


