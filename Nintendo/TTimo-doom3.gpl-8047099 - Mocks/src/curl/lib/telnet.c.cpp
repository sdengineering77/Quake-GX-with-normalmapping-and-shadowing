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
 * $Id: telnet.c,v 1.57 2004/03/11 13:13:35 bagder Exp $
 ***************************************************************************/

#include "setup.h"

#ifndef CURL_DISABLE_TELNET
/* -- WIN32 approved -- */
#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <stdlib.h>
#include <ctype.h>
#include <sys/types.h>
#include <sys/stat.h>

#include <errno.h>

#if defined(WIN32)
#include <time.h>
#include <io.h>
#else
#ifdef HAVE_SYS_SOCKET_H
#include <sys/socket.h>
#endif
#include <netinet/in.h>
#include <sys/time.h>
#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif
#include <netdb.h>
#ifdef HAVE_ARPA_INET_H
#include <arpa/inet.h>
#endif
#ifdef HAVE_NET_IF_H
#include <net/if.h>
#endif
#include <sys/ioctl.h>
#include <signal.h>

#ifdef HAVE_SYS_PARAM_H
#include <sys/param.h>
#endif

#ifdef HAVE_SYS_SELECT_H
#include <sys/select.h>
#endif


#endif

#include "urldata.h"
#include <curl/curl.h>
#include "transfer.h"
#include "sendf.h"
#include "telnet.h"

#define _MPRINTF_REPLACE /* use our functions only */
#include <curl/mprintf.h>

#define  TELOPTS
#define  TELCMDS

#include "arpa_telnet.h"

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

#define SUBBUFSIZE 512

#define CURL_SB_CLEAR(x)  x->subpointer = x->subbuffer;
#define CURL_SB_TERM(x)   { x->subend = x->subpointer; CURL_SB_CLEAR(x); }
#define CURL_SB_ACCUM(x,c) \
  if (x->subpointer < (x->subbuffer+sizeof x->subbuffer)) { \
    *x->subpointer++ = (c); \
  }

#define  CURL_SB_GET(x) ((*x->subpointer++)&0xff)
#define  CURL_SB_PEEK(x)   ((*x->subpointer)&0xff)
#define  CURL_SB_EOF(x) (x->subpointer >= x->subend)
#define  CURL_SB_LEN(x) (x->subend - x->subpointer)

#ifdef WIN32
typedef FARPROC WSOCK2_FUNC;
static CURLcode check_wsock2 ( struct SessionHandle *data );
#endif

static
void telrcv(struct connectdata *,
	    unsigned char *inbuf,	/* Data received from socket */
	    int count);			/* Number of bytes received */

static void printoption(struct SessionHandle *data,
			const char *direction,
			int cmd, int option);

static void negotiate(struct connectdata *);
static void send_negotiation(struct connectdata *, int cmd, int option);
static void set_local_option(struct connectdata *, int cmd, int option);
static void set_remote_option(struct connectdata *, int cmd, int option);

static void printsub(struct SessionHandle *data,
		     int direction, unsigned char *pointer, int length);
static void suboption(struct connectdata *);

/* For negotiation compliant to RFC 1143 */
#define CURL_NO	         0
#define CURL_YES 	 1
#define CURL_WANTYES	 2
#define CURL_WANTNO	 3

#define CURL_EMPTY	 0
#define CURL_OPPOSITE    1

/*
 * Telnet receiver states for fsm
 */
typedef enum
{
   CURL_TS_DATA = 0,
   CURL_TS_IAC,
   CURL_TS_WILL,
   CURL_TS_WONT,
   CURL_TS_DO,
   CURL_TS_DONT,
   CURL_TS_CR,
   CURL_TS_SB,   /* sub-option collection */
   CURL_TS_SE   /* looking for sub-option end */
} TelnetReceive;

struct TELNET {
  int please_negotiate;
  int already_negotiated;
  int us[256]; 
  int usq[256]; 
  int us_preferred[256]; 
  int him[256]; 
  int himq[256]; 
  int him_preferred[256]; 
  char subopt_ttype[32];             /* Set with suboption TTYPE */
  char subopt_xdisploc[128];          /* Set with suboption XDISPLOC */
  struct curl_slist *telnet_vars; /* Environment variables */

  /* suboptions */
  char subbuffer[SUBBUFSIZE];
  char *subpointer, *subend;      /* buffer for sub-options */
  
  TelnetReceive telrcv_state;
};

#ifdef WIN32
static CURLcode
check_wsock2 ( struct SessionHandle *data )
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcodecheck_wsock2 ( struct SessionHandle *data )\r\n");
    return retVal;
}

#endif
static
CURLcode init_telnet(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode init_telnet(struct connectdata *conn)\r\n");
    return retVal;
}


static void negotiate(struct connectdata *conn)
{
    Sys_Printf("void negotiate(struct connectdata *conn)\r\n");
}


static void printoption(struct SessionHandle *data,
			const char *direction, int cmd, int option)
{
    Sys_Printf("void printoption(struct SessionHandle *data,const char *direction, int cmd, int option)\r\n");
}


static void send_negotiation(struct connectdata *conn, int cmd, int option)
{
    Sys_Printf("void send_negotiation(struct connectdata *conn, int cmd, int option)\r\n");
}


static
void set_remote_option(struct connectdata *conn, int option, int newstate)
{
    Sys_Printf("void set_remote_option(struct connectdata *conn, int option, int newstate)\r\n");
}


static
void rec_will(struct connectdata *conn, int option)
{
    Sys_Printf("void rec_will(struct connectdata *conn, int option)\r\n");
}

   
static
void rec_wont(struct connectdata *conn, int option)
{
    Sys_Printf("void rec_wont(struct connectdata *conn, int option)\r\n");
}

   
static void
set_local_option(struct connectdata *conn, int option, int newstate)
{
    Sys_Printf("voidset_local_option(struct connectdata *conn, int option, int newstate)\r\n");
}


static
void rec_do(struct connectdata *conn, int option)
{
    Sys_Printf("void rec_do(struct connectdata *conn, int option)\r\n");
}


static   
void rec_dont(struct connectdata *conn, int option)
{
    Sys_Printf("void rec_dont(struct connectdata *conn, int option)\r\n");
}



static void printsub(struct SessionHandle *data,
		     int direction,		/* '<' or '>' */
		     unsigned char *pointer,	/* where suboption data is */
		     int length)		/* length of suboption data */
{
  int i = 0;

  if (data->set.verbose)
  {
    if (direction)
    {
      Curl_infof(data, "%s IAC SB ", (direction == '<')? "RCVD":"SENT");
      if (length >= 3)
      {
        int j;

        i = pointer[length-2];
        j = pointer[length-1];

        if (i != CURL_IAC || j != CURL_SE)
        {
          Curl_infof(data, "(terminated by ");
          if (CURL_TELOPT_OK(i))
            Curl_infof(data, "%s ", CURL_TELOPT(i));
          else if (CURL_TELCMD_OK(i))
            Curl_infof(data, "%s ", CURL_TELCMD(i));
          else
            Curl_infof(data, "%d ", i);
          if (CURL_TELOPT_OK(j))
            Curl_infof(data, "%s", CURL_TELOPT(j));
          else if (CURL_TELCMD_OK(j))
            Curl_infof(data, "%s", CURL_TELCMD(j));
          else
            Curl_infof(data, "%d", j);
          Curl_infof(data, ", not IAC SE!) ");
        }
      }
      length -= 2;
    }
    if (length < 1)
    {
      Curl_infof(data, "(Empty suboption?)");
      return;
    }

    if (CURL_TELOPT_OK(pointer[0])) {
      switch(pointer[0]) {
        case CURL_TELOPT_TTYPE:
        case CURL_TELOPT_XDISPLOC:
        case CURL_TELOPT_NEW_ENVIRON:
          Curl_infof(data, "%s", CURL_TELOPT(pointer[0]));
          break;
        default:
          Curl_infof(data, "%s (unsupported)", CURL_TELOPT(pointer[0]));
          break;
      }
    }
    else
      Curl_infof(data, "%d (unknown)", pointer[i]);

    switch(pointer[1]) {
      case CURL_TELQUAL_IS:
        Curl_infof(data, " IS");
        break;
      case CURL_TELQUAL_SEND:
        Curl_infof(data, " SEND");
        break;
      case CURL_TELQUAL_INFO:
        Curl_infof(data, " INFO/REPLY");
        break;
      case CURL_TELQUAL_NAME:
        Curl_infof(data, " NAME");
        break;
    }
      
    switch(pointer[0]) {
      case CURL_TELOPT_TTYPE:
      case CURL_TELOPT_XDISPLOC:
        pointer[length] = 0;
        Curl_infof(data, " \"%s\"", &pointer[2]);
        break;
      case CURL_TELOPT_NEW_ENVIRON:
        if(pointer[1] == CURL_TELQUAL_IS) {
          Curl_infof(data, " ");
          for(i = 3;i < length;i++) {
            switch(pointer[i]) {
              case CURL_NEW_ENV_VAR:
                Curl_infof(data, ", ");
                break;
              case CURL_NEW_ENV_VALUE:
                Curl_infof(data, " = ");
                break;
              default:
                Curl_infof(data, "%c", pointer[i]);
                break;
            }
          }
        }
        break;
      default:
        for (i = 2; i < length; i++)
          Curl_infof(data, " %.2x", pointer[i]);
        break;
    }
      
    if (direction)
    {
      Curl_infof(data, "\n");
    }
  }
}

static CURLcode check_telnet_options(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode check_telnet_options(struct connectdata *conn)\r\n");
    return retVal;
}


/*
 * suboption()
 *
 * Look at the sub-option buffer, and try to be helpful to the other
 * side.
 */

static void suboption(struct connectdata *conn)
{
    Sys_Printf("void suboption(struct connectdata *conn)\r\n");
}


static
void telrcv(struct connectdata *conn,
            unsigned char *inbuf,	/* Data received from socket */
            int count)			/* Number of bytes received */
{
  unsigned char c;
  int in = 0;
  struct SessionHandle *data = conn->data;
  struct TELNET *tn = (struct TELNET *)conn->proto.telnet;

  while(count--)
  {
    c = inbuf[in++];

    switch (tn->telrcv_state)
    {
      case CURL_TS_CR:
        tn->telrcv_state = CURL_TS_DATA;
        if (c == '\0')
        {
          break;   /* Ignore \0 after CR */
        }

        Curl_client_write(data, CLIENTWRITE_BODY, (char *)&c, 1);
        continue;

      case CURL_TS_DATA:
        if (c == CURL_IAC)
        {
          tn->telrcv_state = CURL_TS_IAC;
          break;
        }
        else if(c == '\r')
        {
          tn->telrcv_state = CURL_TS_CR;
        }

        Curl_client_write(data, CLIENTWRITE_BODY, (char *)&c, 1);
        continue;

      case CURL_TS_IAC:
      process_iac:
      switch (c)
      {
        case CURL_WILL:
          tn->telrcv_state = CURL_TS_WILL;
          continue;
        case CURL_WONT:
          tn->telrcv_state = CURL_TS_WONT;
          continue;
        case CURL_DO:
          tn->telrcv_state = CURL_TS_DO;
          continue;
        case CURL_DONT:
          tn->telrcv_state = CURL_TS_DONT;
          continue;
        case CURL_SB:
          CURL_SB_CLEAR(tn);
          tn->telrcv_state = CURL_TS_SB;
          continue;
        case CURL_IAC:
          Curl_client_write(data, CLIENTWRITE_BODY, (char *)&c, 1);
          break;
        case CURL_DM:
        case CURL_NOP:
        case CURL_GA:
        default:
          printoption(data, "RCVD", CURL_IAC, c);
          break;
      }
      tn->telrcv_state = CURL_TS_DATA;
      continue;

      case CURL_TS_WILL:
        printoption(data, "RCVD", CURL_WILL, c);
        tn->please_negotiate = 1;
        rec_will(conn, c);
        tn->telrcv_state = CURL_TS_DATA;
        continue;
      
      case CURL_TS_WONT:
        printoption(data, "RCVD", CURL_WONT, c);
        tn->please_negotiate = 1;
        rec_wont(conn, c);
        tn->telrcv_state = CURL_TS_DATA;
        continue;
      
      case CURL_TS_DO:
        printoption(data, "RCVD", CURL_DO, c);
        tn->please_negotiate = 1;
        rec_do(conn, c);
        tn->telrcv_state = CURL_TS_DATA;
        continue;
      
      case CURL_TS_DONT:
        printoption(data, "RCVD", CURL_DONT, c);
        tn->please_negotiate = 1;
        rec_dont(conn, c);
        tn->telrcv_state = CURL_TS_DATA;
        continue;

      case CURL_TS_SB:
        if (c == CURL_IAC)
        {
          tn->telrcv_state = CURL_TS_SE;
        }
        else
        {
          CURL_SB_ACCUM(tn,c);
        }
        continue;

      case CURL_TS_SE:
        if (c != CURL_SE)
        {
          if (c != CURL_IAC)
          {
            /*
             * This is an error.  We only expect to get
             * "IAC IAC" or "IAC SE".  Several things may
             * have happend.  An IAC was not doubled, the
             * IAC SE was left off, or another option got
             * inserted into the suboption are all possibilities.
             * If we assume that the IAC was not doubled,
             * and really the IAC SE was left off, we could
             * get into an infinate loop here.  So, instead,
             * we terminate the suboption, and process the
             * partial suboption if we can.
             */
            CURL_SB_ACCUM(tn, (unsigned char)CURL_IAC);
            CURL_SB_ACCUM(tn, c);
            tn->subpointer -= 2;
            CURL_SB_TERM(tn);
	    
            printoption(data, "In SUBOPTION processing, RCVD", CURL_IAC, c);
            suboption(conn);   /* handle sub-option */
            tn->telrcv_state = CURL_TS_IAC;
            goto process_iac;
          }
          CURL_SB_ACCUM(tn,c);
          tn->telrcv_state = CURL_TS_SB;
        }
        else
        {
          CURL_SB_ACCUM(tn, (unsigned char)CURL_IAC);
          CURL_SB_ACCUM(tn, (unsigned char)CURL_SE);
          tn->subpointer -= 2;
          CURL_SB_TERM(tn);
          suboption(conn);   /* handle sub-option */
          tn->telrcv_state = CURL_TS_DATA;
        }
        break;
    }
  }
}

CURLcode Curl_telnet_done(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_telnet_done(struct connectdata *conn)\r\n");
    return retVal;
}


CURLcode Curl_telnet(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_telnet(struct connectdata *conn)\r\n");
    return retVal;
}

#endif
