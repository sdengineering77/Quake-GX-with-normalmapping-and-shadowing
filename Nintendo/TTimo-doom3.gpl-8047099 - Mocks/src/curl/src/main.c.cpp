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
 * $Id: main.c,v 1.247 2004/03/17 12:46:48 bagder Exp $
 ***************************************************************************/

/* This is now designed to have its own local setup.h */
#include "setup.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <ctype.h>
#include <errno.h>

#include <curl/curl.h>

#define _MPRINTF_REPLACE /* we want curl-functions instead of native ones */
#include <curl/mprintf.h>

#include "urlglob.h"
#include "writeout.h"
#include "getpass.h"
#include "homedir.h"
#ifdef USE_MANUAL
#include "hugehelp.h"
#endif
#ifdef USE_ENVIRONMENT
#include "writeenv.h"
#endif

#define CURLseparator	"--_curl_--"

#if defined(WIN32)&&!defined(__CYGWIN32__)
#include <winsock2.h>
#endif

#ifdef __NOVELL_LIBC__
#include <screen.h>
#endif

#ifdef TIME_WITH_SYS_TIME
/* We can include both fine */
#include <sys/time.h>
#include <time.h>
#else
#ifdef HAVE_SYS_TIME_H
# include <sys/time.h>
#else
# include <time.h>
#endif
#endif


#include "version.h"

#ifdef HAVE_IO_H /* typical win32 habit */
#include <io.h>
#endif

#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif

#ifdef HAVE_FCNTL_H
#include <fcntl.h>
#endif

#ifdef HAVE_UTIME_H
#include <utime.h>
#else
#ifdef HAVE_SYS_UTIME_H
#include <sys/utime.h>
#endif

#endif

#ifdef HAVE_LIMITS_H
#include <limits.h>
#endif

#ifdef HAVE_SYS_POLL_H
#include <sys/poll.h>
#endif

#include <strtoofft.h> /* header from the libcurl directory */

/* The last #include file should be: */
#ifdef CURLDEBUG
/* This is low-level hard-hacking memory leak tracking and similar. Using
   the library level code from this client-side is ugly, but we do this
   anyway for convenience. */
#include "memdebug.h"
#endif

#define DEFAULT_MAXREDIRS  50L

#ifdef __DJGPP__
void *xmalloc(size_t);
char *msdosify(char *);
char *rename_if_dos_device_name(char *);
void xfree(void *);
struct pollfd {
       int fd;
       int events;     /* in param: what to poll for */
       int revents;    /* out param: what events occured */
     };
int poll (struct pollfd *, int, int);
#endif /* __DJGPP__ */

#ifndef __cplusplus
#ifndef typedef_bool
typedef char bool;
#endif
#endif

#define CURL_PROGRESS_STATS 0 /* default progress display */
#define CURL_PROGRESS_BAR   1

/**
 * @def MIN
 * standard MIN macro
 */
#ifndef MIN
#define MIN(X,Y)	(((X) < (Y)) ? (X) : (Y))
#endif

typedef enum {
  HTTPREQ_UNSPEC,
  HTTPREQ_GET,
  HTTPREQ_HEAD,
  HTTPREQ_POST,
  HTTPREQ_SIMPLEPOST,
  HTTPREQ_CUSTOM,
  HTTPREQ_LAST
} HttpReq;

/* Just a set of bits */
#define CONF_DEFAULT  0

#define CONF_AUTO_REFERER (1<<4) /* the automatic referer-system please! */
#define CONF_VERBOSE  (1<<5) /* talk a lot */
#define CONF_HEADER   (1<<8) /* throw the header out too */
#define CONF_NOPROGRESS (1<<10) /* shut off the progress meter */
#define CONF_NOBODY   (1<<11) /* use HEAD to get http document */
#define CONF_FAILONERROR (1<<12) /* no output on http error codes >= 300 */
#define CONF_FTPLISTONLY (1<<16) /* Use NLST when listing ftp dir */
#define CONF_FTPAPPEND (1<<20) /* Append instead of overwrite on upload! */
#define CONF_NETRC    (1<<22)  /* read user+password from .netrc */
#define CONF_FOLLOWLOCATION (1<<23) /* use Location: Luke! */
#define CONF_GETTEXT  (1<<24) /* use ASCII/text for transfer */
#define CONF_HTTPPOST (1<<25) /* multipart/form-data HTTP POST */
#define CONF_MUTE     (1<<28) /* force NOPROGRESS */

#define CONF_NETRC_OPT (1<<29)  /* read user+password from either
                                 * .netrc or URL*/
#define CONF_UNRESTRICTED_AUTH (1<<30)
/* Send authentication (user+password) when following
 * locations, even when hostname changed */

#ifndef HAVE_STRDUP
/* Ultrix doesn't have strdup(), so make a quick clone: */
char *strdup(char *str)
{
    Sys_Printf("char *strdup(char *str)\r\n");
    return NULL;
}

#endif 

#ifdef WIN32
#include <direct.h>
#define F_OK 0
#define mkdir(x,y) (mkdir)(x)
#endif

#ifdef	VMS
#include "curlmsg_vms.h"
#endif

/*
 * This is the main global constructor for the app. Call this before
 * _any_ libcurl usage. If this fails, *NO* libcurl functions may be
 * used, or havoc may be the result.
 */
static CURLcode main_init(void)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode main_init(void)\r\n");
    return retVal;
}


/*
 * This is the main global destructor for the app. Call this after
 * _all_ libcurl usage is done.
 */
static void main_free(void)
{
    Sys_Printf("void main_free(void)\r\n");
}


static int SetHTTPrequest(HttpReq req, HttpReq *store)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int SetHTTPrequest(HttpReq req, HttpReq *store)\r\n");
    return retVal;
}


static void helpf(const char *fmt, ...)
{
    Sys_Printf("void helpf(const char *fmt, ...)\r\n");
}


/*
 * A chain of these nodes contain URL to get and where to put the URL's
 * contents.
 */
struct getout {
  struct getout *next; /* next one */
  char *url;     /* the URL we deal with */
  char *outfile; /* where to store the output */
  char *infile;  /* file to upload, if GETOUT_UPLOAD is set */
  int flags;     /* options */
};
#define GETOUT_OUTFILE (1<<0)   /* set when outfile is deemed done */
#define GETOUT_URL     (1<<1)   /* set when URL is deemed done */
#define GETOUT_USEREMOTE (1<<2) /* use remote file name locally */
#define GETOUT_UPLOAD  (1<<3)   /* if set, -T has been used */
#define GETOUT_NOUPLOAD  (1<<4) /* if set, -T "" has been used */


static void help(void)
{
    Sys_Printf("void help(void)\r\n");
}


struct LongShort {
  const char *letter;
  const char *lname;
  bool extraparam;
};

struct Configurable {
  bool remote_time;
  char *random_file;
  char *egd_file;
  char *useragent;
  char *cookie;     /* single line with specified cookies */
  char *cookiejar;  /* write to this file */
  char *cookiefile; /* read from this file */
  bool cookiesession; /* new session? */
  bool encoding;    /* Accept-Encoding please */
  long authtype;    /* auth bitmask */  
  bool use_resume;
  bool resume_from_current;
  bool disable_epsv;
  bool disable_eprt;
  curl_off_t resume_from;
  char *postfields;
  long postfieldsize;
  char *referer;
  long timeout;
  long connecttimeout;
  long maxredirs;
  curl_off_t max_filesize;
  char *headerfile;
  char *ftpport;
  char *iface;
  unsigned short porttouse;
  char *range;
  long low_speed_limit;
  long low_speed_time;
  bool showerror;
  char *userpwd;
  char *proxyuserpwd;
  char *proxy;
  bool proxytunnel;
  long conf;

  struct getout *url_list; /* point to the first node */
  struct getout *url_last; /* point to the last/current node */

  struct getout *url_get;  /* point to the node to fill in URL */
  struct getout *url_out;  /* point to the node to fill in outfile */

  char *cipher_list;
  char *cert;
  char *cert_type;
  char *cacert;
  char *capath;
  char *key;
  char *key_type;
  char *key_passwd;
  char *engine;
  bool crlf;
  char *customrequest;
  char *krb4level;
  char *trace_dump; /* file to dump the network trace to, or NULL */
  FILE *trace_stream;
  bool trace_fopened;
  bool trace_ascii;

  long httpversion;
  bool progressmode;
  bool nobuffer;
  bool globoff;
  bool use_httpget;
  bool insecure_ok; /* set TRUE to allow insecure SSL connects */
  bool create_dirs;
  bool ftp_create_dirs;
  bool proxyntlm;

  char *writeout; /* %-styled format string to output */
  bool writeenv; /* write results to environment, if available */

  FILE *errors; /* if stderr redirect is requested */
  bool errors_fopened;

  struct curl_slist *quote;
  struct curl_slist *postquote;
  struct curl_slist *prequote;

  long ssl_version;
  long ip_version;
  curl_TimeCond timecond;
  time_t condtime;

  struct curl_slist *headers;

  struct curl_httppost *httppost;
  struct curl_httppost *last_post;

  struct curl_slist *telnet_options;
        
  HttpReq httpreq;

  /* for bandwidth limiting features: */

  size_t sendpersecond; /* send to peer */
  size_t recvpersecond; /* receive from peer */

  time_t lastsendtime;
  size_t lastsendsize;

  time_t lastrecvtime;
  size_t lastrecvsize;

  bool ftp_ssl;

  char *socks5proxy;
};

/* global variable to hold info about libcurl */
static curl_version_info_data *curlinfo;

static void parseconfig(const char *filename,
                        struct Configurable *config);
static char *my_get_line(FILE *fp);
static int create_dir_hierarchy(char *outfile);

static void GetStr(char **string,
		   char *value)
{
    Sys_Printf("void GetStr(char **string, char *value)\r\n");
}


static char *file2string(FILE *file)
{
    Sys_Printf("char *file2string(FILE *file)\r\n");
    return NULL;
}


static char *file2memory(FILE *file, long *size)
{
    Sys_Printf("char *file2memory(FILE *file, long *size)\r\n");
    return NULL;
}


static void clean_getout(struct Configurable *config)
{
    Sys_Printf("void clean_getout(struct Configurable *config)\r\n");
}


static struct getout *new_getout(struct Configurable *config)
{
    Sys_Printf("getout *new_getout(struct Configurable *config)\r\n");
    return NULL;
}


/* Structure for storing the information needed to build a multiple files
 * section
*/
struct multi_files {
  struct curl_forms   form;
  struct multi_files *next;
};

/* Add a new list entry possibly with a type_name
 */
static struct multi_files *
AddMultiFiles (const char *file_name,
               const char *type_name,
               const char *show_filename,
               struct multi_files **multi_start,
               struct multi_files **multi_current)
{
    Sys_Printf("multi_files *AddMultiFiles (const char *file_name, const char *type_name, const char *show_filename, struct multi_files **multi_start, struct multi_files **multi_current)\r\n");
    return NULL;
}


/* Free the items of the list.
 */
static void FreeMultiInfo (struct multi_files *multi_start)
{
    Sys_Printf("void FreeMultiInfo (struct multi_files *multi_start)\r\n");
}


/***************************************************************************
 *
 * formparse()
 *	
 * Reads a 'name=value' paramter and builds the appropriate linked list.
 *
 * Specify files to upload with 'name=@filename'. Supports specified
 * given Content-Type of the files. Such as ';type=<content-type>'.
 *
 * You may specify more than one file for a single name (field). Specify
 * multiple files by writing it like:
 *
 * 'name=@filename,filename2,filename3'
 *
 * If you want content-types specified for each too, write them like:
 *
 * 'name=@filename;type=image/gif,filename2,filename3'
 *
 * If you want custom headers added for a single part, write them in a separate
 * file and do like this:
 *
 * 'name=foo;headers=@headerfile' or why not
 * 'name=@filemame;headers=@headerfile'
 *
 * To upload a file, but to fake the file name that will be included in the
 * formpost, do like this:
 *
 * 'name=@filename;filename=/dev/null'
 *
 * This function uses curl_formadd to fulfill it's job. Is heavily based on
 * the old curl_formparse code.
 *
 ***************************************************************************/

#define FORM_FILE_SEPARATOR ','
#define FORM_TYPE_SEPARATOR ';'

static int formparse(char *input,
                     struct curl_httppost **httppost,
                     struct curl_httppost **last_post)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int formparse(char *input, struct curl_httppost **httppost, struct curl_httppost **last_post)\r\n");
    return retVal;
}



typedef enum {
  PARAM_OK,
  PARAM_OPTION_AMBIGUOUS,
  PARAM_OPTION_UNKNOWN,
  PARAM_REQUIRES_PARAMETER,  
  PARAM_BAD_USE,
  PARAM_HELP_REQUESTED,
  PARAM_GOT_EXTRA_PARAMETER,
  PARAM_BAD_NUMERIC,
  PARAM_LIBCURL_DOESNT_SUPPORT,
  PARAM_LAST
} ParameterError;

static const char *param2text(int res)
{
    Sys_Printf("char *param2text(int res)\r\n");
    return NULL;
}


static void cleanarg(char *str)
{
    Sys_Printf("void cleanarg(char *str)\r\n");
}


/*
 * Parse the string and write the integer in the given address. Return
 * non-zero on failure, zero on success.
 *
 * The string must start with a digit to be valid.
 */

static int str2num(long *val, char *str)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int str2num(long *val, char *str)\r\n");
    return retVal;
}


/**
 * Parses the given string looking for an offset (which may be
 * a larger-than-integer value).
 *
 * @param val  the offset to populate
 * @param str  the buffer containing the offset
 * @return zero if successful, non-zero if failure.
 */
static int str2offset(curl_off_t *val, char *str)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int str2offset(curl_off_t *val, char *str)\r\n");
    return retVal;
}


static void checkpasswd(const char *kind, /* for what purpose */
                        char **userpwd) /* pointer to allocated string */
{
  char *ptr = strchr(*userpwd, ':');
  if(!ptr) {
    /* no password present, prompt for one */
    char passwd[256]="";
    char prompt[256];
    size_t passwdlen;
    size_t userlen = strlen(*userpwd);
    char *passptr;

    /* build a nice-looking prompt */
    curl_msnprintf(prompt, sizeof(prompt),
                   "Enter %s password for user '%s':",
                   kind, *userpwd);

    /* get password */
    getpass_r(prompt, passwd, sizeof(passwd));
    passwdlen = strlen(passwd);

    /* extend the allocated memory area to fit the password too */
    passptr = realloc(*userpwd,
                      passwdlen + 1 + /* an extra for the colon */
                      userlen + 1);   /* an extra for the zero */

    if(passptr) {
      /* append the password separated with a colon */
      passptr[userlen]=':';
      memcpy(&passptr[userlen+1], passwd, passwdlen+1);
      *userpwd = passptr;
    }
  }
}

static ParameterError getparameter(char *flag, /* f or -long-flag */
                                   char *nextarg, /* NULL if unset */
                                   bool *usedarg, /* set to TRUE if the arg
                                                     has been used */
                                   struct Configurable *config)
{
  char letter;
  char subletter=0; /* subletters can only occur on long options */

  const char *parse=NULL;
  unsigned int j;
  time_t now;
  int hit=-1;
  bool longopt=FALSE;
  bool singleopt=FALSE; /* when true means '-o foo' used '-ofoo' */


  /* single-letter,
     long-name,
     boolean whether it takes an additional argument
     */
  struct LongShort aliases[]= {
    /* all these ones, starting with "*" or "$" as a short-option have *no*
       short option to mention. */
    {"*", "url",         TRUE},
    {"*a", "random-file", TRUE},
    {"*b", "egd-file",   TRUE},
    {"*c", "connect-timeout", TRUE},
    {"*d", "ciphers",    TRUE},
    {"*e", "disable-epsv", FALSE},
#ifdef USE_ENVIRONMENT
    {"*f", "environment", FALSE},
#endif
    {"*g", "trace",      TRUE},
    {"*h", "trace-ascii", TRUE},
    {"*i", "limit-rate", TRUE},
    {"*j", "compressed",  FALSE}, /* might take an arg someday */
    {"*k", "digest",     FALSE},
    {"*l", "negotiate",  FALSE},
    {"*m", "ntlm",       FALSE},
    {"*n", "basic",      FALSE},
    {"*o", "anyauth",    FALSE},
#ifdef __DJGPP__
    {"*p", "wdebug",     FALSE},
#endif
    {"*q", "ftp-create-dirs", FALSE},
    {"*r", "create-dirs", FALSE},
    {"*s", "max-redirs",   TRUE},
    {"*t", "proxy-ntlm",   FALSE},
    {"*u", "crlf",        FALSE},
    {"*v", "stderr",      TRUE},
    {"*w", "interface",   TRUE},
    {"*x", "krb4",        TRUE},
    {"*y", "max-filesize", TRUE},
    {"*z", "disable-eprt", FALSE},
    {"$a", "ftp-ssl",    FALSE},
    {"$b", "ftp-pasv",   FALSE},
    {"$c", "socks5",     TRUE},
    {"0", "http1.0",     FALSE},
    {"1", "tlsv1",       FALSE},
    {"2", "sslv2",       FALSE},
    {"3", "sslv3",       FALSE},
    {"4", "ipv4",       FALSE},
    {"6", "ipv6",       FALSE},
    {"a", "append",      FALSE},
    {"A", "user-agent",  TRUE},
    {"b", "cookie",      TRUE},
    {"B", "use-ascii",   FALSE},
    {"c", "cookie-jar",  TRUE},
    {"C", "continue-at", TRUE},
    {"d", "data",        TRUE},
    {"da", "data-ascii", TRUE},
    {"db", "data-binary", TRUE},
    {"D", "dump-header", TRUE},
    {"e", "referer",     TRUE},
    {"E", "cert",        TRUE},
    {"Ea", "cacert",     TRUE},
    {"Eb","cert-type",   TRUE},
    {"Ec","key",         TRUE},
    {"Ed","key-type",    TRUE},
    {"Ee","pass",        TRUE},
    {"Ef","engine",      TRUE},
    {"Eg","capath ",     TRUE},
    {"f", "fail",        FALSE},
    {"F", "form",        TRUE},
    {"g", "globoff",     FALSE},
    {"G", "get",         FALSE},
    {"h", "help",        FALSE},
    {"H", "header",      TRUE},
    {"i", "include",     FALSE},
    {"I", "head",        FALSE},
    {"j", "junk-session-cookies", FALSE},
    {"k", "insecure",    FALSE},
    {"K", "config",      TRUE},
    {"l", "list-only",   FALSE},
    {"L", "location",    FALSE},
    {"Lt", "location-trusted", FALSE},
    {"m", "max-time",    TRUE},
    {"M", "manual",      FALSE},
    {"n", "netrc",       FALSE},
    {"no", "netrc-optional", FALSE},
    {"N", "no-buffer",   FALSE},
    {"o", "output",      TRUE},
    {"O", "remote-name", FALSE},
    {"p", "proxytunnel", FALSE},
    {"P", "ftpport",     TRUE}, /* older version */
    {"P", "ftp-port",    TRUE},
    {"q", "disable",     FALSE},
    {"Q", "quote",       TRUE},
    {"r", "range",       TRUE},
    {"R", "remote-time", FALSE},
    {"s", "silent",      FALSE},
    {"S", "show-error",  FALSE},
    {"t", "telnet-options", TRUE},
    {"T", "upload-file", TRUE},
    {"u", "user",        TRUE},
    {"U", "proxy-user",  TRUE},
    {"v", "verbose",     FALSE},
    {"V", "version",     FALSE},
    {"w", "write-out",   TRUE},
    {"x", "proxy",       TRUE},
    {"X", "request",     TRUE},
    {"X", "http-request", TRUE}, /* OBSOLETE VERSION */
    {"Y", "speed-limit",  TRUE},
    {"y", "speed-time", TRUE},
    {"z", "time-cond",   TRUE},
    {"#", "progress-bar",FALSE},
  };

  if(('-' != flag[0]) ||
     (('-' == flag[0]) && ('-' == flag[1]))) {
    /* this should be a long name */
    char *word=('-' == flag[0])?flag+2:flag;
    size_t fnam=strlen(word);
    int numhits=0;
    for(j=0; j< sizeof(aliases)/sizeof(aliases[0]); j++) {
      if(curl_strnequal(aliases[j].lname, word, fnam)) {
        longopt = TRUE;
        numhits++;
        if(curl_strequal(aliases[j].lname, word)) {
          parse = aliases[j].letter;
          hit = j;
          numhits = 1; /* a single unique hit */
          break;
        }
	parse = aliases[j].letter;
	hit = j;
      }
    }
    if(numhits>1) {
      /* this is at least the second match! */
      return PARAM_OPTION_AMBIGUOUS;
    }
    if(hit < 0) {
      return PARAM_OPTION_UNKNOWN;
    }    
  }
  else {
    flag++; /* prefixed with one dash, pass it */
    hit=-1;
    parse = flag;
  }

  do {
    /* we can loop here if we have multiple single-letters */

    if(!longopt)
      letter = parse?(char)*parse:'\0';
    else {
      letter = parse[0];
      subletter = parse[1];
    }
    *usedarg = FALSE; /* default is that we don't use the arg */

#if 0
    fprintf(stderr, "OPTION: %c %s\n", letter, nextarg?nextarg:"<null>");
#endif
    if(hit < 0) {
      for(j=0; j< sizeof(aliases)/sizeof(aliases[0]); j++) {
	if(letter == aliases[j].letter[0]) {
	  hit = j;
	  break;
	}
      }
      if(hit < 0) {
	return PARAM_OPTION_UNKNOWN;
      }
    }
    if(hit < 0) {
      return PARAM_OPTION_UNKNOWN;
    }    
    if(!longopt && aliases[hit].extraparam && parse[1]) {
      nextarg=(char *)&parse[1]; /* this is the actual extra parameter */
      singleopt=TRUE;   /* don't loop anymore after this */
    }
    else if(!nextarg && aliases[hit].extraparam) {
      return PARAM_REQUIRES_PARAMETER;
    }
    else if(nextarg && aliases[hit].extraparam)
      *usedarg = TRUE; /* mark it as used */

    switch(letter) {
    case '*': /* options without a short option */
      switch(subletter) {
      case 'a': /* random-file */
        GetStr(&config->random_file, nextarg);
        break;
      case 'b': /* egd-file */
        GetStr(&config->egd_file, nextarg);
        break;
      case 'c': /* connect-timeout */
        if(str2num(&config->connecttimeout, nextarg))
          return PARAM_BAD_NUMERIC;
        break;
      case 'd': /* ciphers */
        GetStr(&config->cipher_list, nextarg);
        break;
      case 'e': /* --disable-epsv */
        config->disable_epsv ^= TRUE;
        break;
#ifdef USE_ENVIRONMENT
      case 'f':
        config->writeenv ^= TRUE;
        break;
#endif
      case 'g': /* --trace */
        GetStr(&config->trace_dump, nextarg);
        break;
      case 'h': /* --trace-ascii */
        GetStr(&config->trace_dump, nextarg);
        config->trace_ascii = TRUE;
        break;
      case 'i': /* --limit-rate */
        {
          /* We support G, M, K too */
          char *unit;
          unsigned long value = strtol(nextarg, &unit, 0);
          switch(nextarg[strlen(nextarg)-1]) {
          case 'G':
          case 'g':
            value *= 1024*1024*1024;
            break;
          case 'M':
          case 'm':
            value *= 1024*1024;
            break;
          case 'K':
          case 'k':
            value *= 1024;
            break;
          }
          config->recvpersecond = value;
          config->sendpersecond = value;
        }
        break;

      case 'j': /* --compressed */
 	config->encoding ^= TRUE;
 	break;

      case 'k': /* --digest */
 	config->authtype = CURLAUTH_DIGEST;
 	break;

      case 'l': /* --negotiate */
        if(curlinfo->features & CURL_VERSION_GSSNEGOTIATE)
          config->authtype = CURLAUTH_GSSNEGOTIATE;
        else
          return PARAM_LIBCURL_DOESNT_SUPPORT;
	break;

      case 'm': /* --ntlm */
        if(curlinfo->features & CURL_VERSION_NTLM)
          config->authtype = CURLAUTH_NTLM;
        else
          return PARAM_LIBCURL_DOESNT_SUPPORT;
	break;

      case 'n': /* --basic for completeness */
	config->authtype = CURLAUTH_BASIC;
	break;

      case 'o': /* --anyauth, let libcurl pick it */
	config->authtype = CURLAUTH_ANY;
	break;

#ifdef __DJGPP__
      case 'p': /* --wdebug */
        dbug_init();
        break;
#endif
      case 'q': /* --ftp-create-dirs */
        config->ftp_create_dirs ^= TRUE;
        break;

      case 'r': /* --create-dirs */
        config->create_dirs = TRUE;
        break;

      case 's': /* --max-redirs */
        /* specified max no of redirects (http(s)) */
        if(str2num(&config->maxredirs, nextarg))
          return PARAM_BAD_NUMERIC;
        break;

      case 't': /* --proxy-ntlm */
        config->proxyntlm ^= TRUE;
        break;

      case 'u': /* --crlf */
        /* LF -> CRLF conversinon? */
        config->crlf = TRUE;
        break;

      case 'v': /* --stderr */
        if(strcmp(nextarg, "-")) {
          config->errors = fopen(nextarg, "wt");
          config->errors_fopened = TRUE;
        }
        else
          config->errors = stdout;
      break;
      case 'w': /* --interface */
        /* interface */
        GetStr(&config->iface, nextarg);
        break;
      case 'x': /* --krb4 */
        /* krb4 level string */
        if(curlinfo->features & CURL_VERSION_KERBEROS4)
          GetStr(&config->krb4level, nextarg);
        else
          return PARAM_LIBCURL_DOESNT_SUPPORT;
        break;
      case 'y': /* --max-filesize */
        if(str2offset(&config->max_filesize, nextarg))
          return PARAM_BAD_NUMERIC;
        break;
      case 'z': /* --disable-eprt */
        config->disable_eprt ^= TRUE;
        break;

      default: /* the URL! */
        {
          struct getout *url;
          if(config->url_get || (config->url_get=config->url_list)) {
            /* there's a node here, if it already is filled-in continue to find
               an "empty" node */
            while(config->url_get && (config->url_get->flags&GETOUT_URL))
              config->url_get = config->url_get->next;
          }

          /* now there might or might not be an available node to fill in! */

          if(config->url_get)
            /* existing node */
            url = config->url_get;
          else
            /* there was no free node, create one! */
            url=new_getout(config);
          
          if(url) {
            /* fill in the URL */
            GetStr(&url->url, nextarg);
            url->flags |= GETOUT_URL;
          }
        }
      }
      break;
    case '$': /* more options without a short option */
      switch(subletter) {
      case 'a': /* --ftp-ssl */
        config->ftp_ssl ^= TRUE;
        break;
      case 'b': /* --ftp-pasv */
        if(config->ftpport)
          free(config->ftpport);
        config->ftpport = NULL;
        break;
      case 'c': /* --socks specifies a socks5 proxy to use */
        GetStr(&config->socks5proxy, nextarg);
        break;
      }
      break;
    case '#': /* added 19990617 larsa */
      config->progressmode ^= CURL_PROGRESS_BAR;
      break;
    case '0': 
      /* HTTP version 1.0 */
      config->httpversion = CURL_HTTP_VERSION_1_0;
      break;
    case '1':
      /* TLS version 1 */
      config->ssl_version = CURL_SSLVERSION_TLSv1;
      break;
    case '2': 
      /* SSL version 2 */
      config->ssl_version = CURL_SSLVERSION_SSLv2;
      break;
    case '3': 
      /* SSL version 3 */
      config->ssl_version = CURL_SSLVERSION_SSLv3;
      break;
    case '4': 
      /* IPv4 */
      config->ip_version = 4;
      break;
    case '6': 
      /* IPv6 */
      config->ip_version = 6;
      break;
    case 'a':
      /* This makes the FTP sessions use APPE instead of STOR */
      config->conf ^= CONF_FTPAPPEND;
      break;
    case 'A':
      /* This specifies the User-Agent name */
      GetStr(&config->useragent, nextarg);
      break;
    case 'b': /* cookie string coming up: */
      if(nextarg[0] == '@') {
        nextarg++;
      }
      else if(strchr(nextarg, '=')) {
        /* A cookie string must have a =-letter */
        GetStr(&config->cookie, nextarg);
        break;
      }
      /* We have a cookie file to read from! */
      GetStr(&config->cookiefile, nextarg);
      break;
    case 'B':
      /* use ASCII/text when transfering */
      config->conf ^= CONF_GETTEXT;
      break;
    case 'c':
      /* get the file name to dump all cookies in */
      GetStr(&config->cookiejar, nextarg);
      break;
    case 'C':
      /* This makes us continue an ftp transfer at given position */
      if(!curl_strequal(nextarg, "-")) {
        if(str2offset(&config->resume_from, nextarg))
          return PARAM_BAD_NUMERIC;
        config->resume_from_current = FALSE;
      }
      else {
        config->resume_from_current = TRUE;
        config->resume_from = 0;
      }
      config->use_resume=TRUE;
      break;
    case 'd':
      /* postfield data */
      {
        char *postdata=NULL;

        if('@' == *nextarg) {
          /* the data begins with a '@' letter, it means that a file name
             or - (stdin) follows */
          FILE *file;

          nextarg++; /* pass the @ */

          if(curl_strequal("-", nextarg))
            file = stdin;
          else 
            file = fopen(nextarg, "rb");

          if(subletter == 'b') /* forced binary */
            postdata = file2memory(file, &config->postfieldsize);
          else
            postdata = file2string(file);
          if(file && (file != stdin))
            fclose(file);
        }
        else {
          GetStr(&postdata, nextarg);
        }

        if(config->postfields) {
          /* we already have a string, we append this one
             with a separating &-letter */
          char *oldpost=config->postfields;
          config->postfields=aprintf("%s&%s", oldpost, postdata);
          free(oldpost);
          free(postdata);
        }
        else
          config->postfields=postdata;
      }
      /*
        We can't set the request type here, as this data might be used in
        a simple GET if -G is used. Already or soon.

        if(SetHTTPrequest(HTTPREQ_SIMPLEPOST, &config->httpreq))
          return PARAM_BAD_USE;
      */
      break;
    case 'D':
      /* dump-header to given file name */
      GetStr(&config->headerfile, nextarg);
      break;
    case 'e':
      {
        char *ptr = strstr(nextarg, ";auto");
        if(ptr) {
          /* Automatic referer requested, this may be combined with a
             set initial one */
          config->conf |= CONF_AUTO_REFERER;
          *ptr = 0; /* zero terminate here */
        }
        GetStr(&config->referer, nextarg);
      }
      break;
    case 'E':
      switch(subletter) {
      case 'a': /* CA info PEM file */
        /* CA info PEM file */
        GetStr(&config->cacert, nextarg);
        break;
      case 'b': /* cert file type */
        GetStr(&config->cert_type, nextarg);
        break;
      case 'c': /* private key file */
        GetStr(&config->key, nextarg);
        break;
      case 'd': /* private key file type */
        GetStr(&config->key_type, nextarg);
        break;
      case 'e': /* private key passphrase */
        GetStr(&config->key_passwd, nextarg);
        cleanarg(nextarg);
        break;
      case 'f': /* crypto engine */
        GetStr(&config->engine, nextarg);
        break;
      case 'g': /* CA info PEM file */
        /* CA cert directory */
        GetStr(&config->capath, nextarg);
        break;
      default: /* certificate file */
        {
          char *ptr = strchr(nextarg, ':');
          /* Since we live in a world of weirdness and confusion, the win32
             dudes can use : when using drive letters and thus
             c:\file:password needs to work. In order not to break
             compatibility, we still use : as separator, but we try to detect
             when it is used for a file name! On windows. */
#ifdef WIN32
          if(ptr &&
             (ptr == &nextarg[1]) &&
             (nextarg[2] == '\\') &&
             (isalpha((int)nextarg[0])) )
             /* colon in the second column, followed by a backslash, and the
                first character is an alphabetic letter:

                this is a drive letter colon */
            ptr = strchr(&nextarg[3], ':'); /* find the next one instead */
#endif
          if(ptr) {
            /* we have a password too */
            *ptr=0;
            ptr++;
            GetStr(&config->key_passwd, ptr);
          }
          GetStr(&config->cert, nextarg);
          cleanarg(nextarg);
        }
      }
      break;
    case 'f':
      /* fail hard on errors  */
      config->conf ^= CONF_FAILONERROR;
      break;
    case 'F':
      /* "form data" simulation, this is a little advanced so lets do our best
	 to sort this out slowly and carefully */
      if(formparse(nextarg,
                   &config->httppost,
                   &config->last_post))
	return PARAM_BAD_USE;
      if(SetHTTPrequest(HTTPREQ_POST, &config->httpreq))
        return PARAM_BAD_USE;
      break;

    case 'g': /* g disables URLglobbing */
      config->globoff ^= TRUE;
      break;

    case 'G': /* HTTP GET */
      config->use_httpget = TRUE;
      break;

    case 'h': /* h for help */
      help();
      return PARAM_HELP_REQUESTED;
    case 'H':
      /* A custom header to append to a list */
      config->headers = curl_slist_append(config->headers, nextarg);
      break;
    case 'i':
      config->conf ^= CONF_HEADER; /* include the HTTP header as well */
      break;
    case 'j':
      config->cookiesession ^= TRUE;
      break;
    case 'I':
      /*
       * This is a bit tricky. We either SET both bits, or we clear both
       * bits. Let's not make any other outcomes from this.
       */
      if((CONF_HEADER|CONF_NOBODY) !=
         (config->conf&(CONF_HEADER|CONF_NOBODY)) ) {
        /* one of them weren't set, set both */
        config->conf |= (CONF_HEADER|CONF_NOBODY);
        if(SetHTTPrequest(HTTPREQ_HEAD, &config->httpreq))
          return PARAM_BAD_USE;
      }
      else {
        /* both were set, clear both */
        config->conf &= ~(CONF_HEADER|CONF_NOBODY);
        if(SetHTTPrequest(HTTPREQ_GET, &config->httpreq))
          return PARAM_BAD_USE;
      }
      break;
    case 'k': /* allow insecure SSL connects */
      config->insecure_ok ^= TRUE;
      break;
    case 'K': /* parse config file */
      parseconfig(nextarg, config);
      break;
    case 'l':
      config->conf ^= CONF_FTPLISTONLY; /* only list the names of the FTP dir */
      break;
    case 'L':
      config->conf ^= CONF_FOLLOWLOCATION; /* Follow Location: HTTP headers */
      switch (subletter) {
      case 't':
        /* Continue to send authentication (user+password) when following
         * locations, even when hostname changed */
        config->conf ^= CONF_UNRESTRICTED_AUTH;
        break;
      }
      break;
    case 'm':
      /* specified max time */
      if(str2num(&config->timeout, nextarg))
        return PARAM_BAD_NUMERIC;
      break;
    case 'M': /* M for manual, huge help */
#ifdef USE_MANUAL
      hugehelp();
      return PARAM_HELP_REQUESTED;
#else
      fprintf(stderr,
              "curl: built-in manual was disabled at build-time!\n");
      return PARAM_OPTION_UNKNOWN;
#endif
    case 'n':
      switch(subletter) {
      case 'o': /* CA info PEM file */
        /* use .netrc or URL */
        config->conf ^= CONF_NETRC_OPT;
        break;
      default:
        /* pick info from .netrc, if this is used for http, curl will
           automatically enfore user+password with the request */
        config->conf ^= CONF_NETRC;
        break;
      }
      break;
    case 'N':
      /* disable the output I/O buffering */
      config->nobuffer ^= 1;
      break;
    case 'o':
    case 'O':
      /* output file */
      {
        struct getout *url;
        if(config->url_out || (config->url_out=config->url_list)) {
          /* there's a node here, if it already is filled-in continue to find
             an "empty" node */
          while(config->url_out && (config->url_out->flags&GETOUT_OUTFILE))
            config->url_out = config->url_out->next;
        }

        /* now there might or might not be an available node to fill in! */

        if(config->url_out)
          /* existing node */
          url = config->url_out;
        else
          /* there was no free node, create one! */
          url=new_getout(config);

        if(url) {
          /* fill in the outfile */
          if('o' == letter)
            GetStr(&url->outfile, nextarg);
          else {
            url->outfile=NULL; /* leave it */
            url->flags |= GETOUT_USEREMOTE;
          }
          url->flags |= GETOUT_OUTFILE;
        }
      }
      break;
    case 'P':
      /* This makes the FTP sessions use PORT instead of PASV */
      /* use <eth0> or <192.168.10.10> style addresses. Anything except
	 this will make us try to get the "default" address.
	 NOTE: this is a changed behaviour since the released 4.1!
	 */
      GetStr(&config->ftpport, nextarg);
      break;
    case 'p':
      /* proxy tunnel for non-http protocols */
      config->proxytunnel ^= TRUE;
      break;

    case 'q': /* if used first, already taken care of, we do it like
		 this so we don't cause an error! */
      break;
    case 'Q':
      /* QUOTE command to send to FTP server */
      switch(nextarg[0]) {
      case '-':
        /* prefixed with a dash makes it a POST TRANSFER one */
        nextarg++;
        config->postquote = curl_slist_append(config->postquote, nextarg);
        break;
      case '+':
        /* prefixed with a plus makes it a just-before-transfer one */
        nextarg++;
        config->prequote = curl_slist_append(config->prequote, nextarg);
        break;
      default:
        config->quote = curl_slist_append(config->quote, nextarg);
      }
      break;
    case 'r':
      /* byte range requested */
      GetStr(&config->range, nextarg);
      break;
    case 'R':
      /* use remote file's time */
      config->remote_time ^= TRUE;
      break;
    case 's':
      /* don't show progress meter, don't show errors : */
      config->conf |= (CONF_MUTE|CONF_NOPROGRESS);
      config->showerror ^= TRUE; /* toggle off */
      break;
    case 'S':
      /* show errors */
      config->showerror ^= TRUE; /* toggle on if used with -s */
      break;
    case 't':
      /* Telnet options */
      config->telnet_options =
        curl_slist_append(config->telnet_options, nextarg);
      break;
    case 'T':
      /* we are uploading */
      {
        struct getout *url;
        if(config->url_out || (config->url_out=config->url_list)) {
          /* there's a node here, if it already is filled-in continue to find
             an "empty" node */
          while(config->url_out && (config->url_out->flags&GETOUT_UPLOAD))
            config->url_out = config->url_out->next;
        }

        /* now there might or might not be an available node to fill in! */

        if(config->url_out)
          /* existing node */
          url = config->url_out;
        else
          /* there was no free node, create one! */
          url=new_getout(config);

        if(url) {
          url->flags |= GETOUT_UPLOAD; /* mark -T used */
          if(!*nextarg)
            url->flags |= GETOUT_NOUPLOAD;
          else {
            /* "-" equals stdin, but keep the string around for now */
            GetStr(&url->infile, nextarg);
          }
        }
      }
      break;
    case 'u':
      /* user:password  */
      GetStr(&config->userpwd, nextarg);
      cleanarg(nextarg);
      checkpasswd("host", &config->userpwd);
      break;
    case 'U':
      /* Proxy user:password  */
      GetStr(&config->proxyuserpwd, nextarg);
      cleanarg(nextarg);
      checkpasswd("proxy", &config->proxyuserpwd);
      break;
    case 'v':
      config->conf ^= CONF_VERBOSE; /* talk a lot */
      break;
    case 'V':
    {
      const char **proto;

      printf(CURL_ID "%s\n", curl_version());
      if (curlinfo->protocols) {
        printf("Protocols: ");
        for (proto=curlinfo->protocols; *proto; ++proto) {
          printf("%s ", *proto);
        }
        puts(""); /* newline */
      }
      if(curlinfo->features) {
        unsigned int i;
        struct feat {
          const char *name;
          int bitmask;
        };
        struct feat feats[] = {
          {"IPv6", CURL_VERSION_IPV6},
          {"krb4", CURL_VERSION_KERBEROS4},
          {"SSL",  CURL_VERSION_SSL},
          {"libz", CURL_VERSION_LIBZ},
          {"NTLM", CURL_VERSION_NTLM},
          {"GSS-Negotiate", CURL_VERSION_GSSNEGOTIATE},
          {"Debug", CURL_VERSION_DEBUG},
          {"AsynchDNS", CURL_VERSION_ASYNCHDNS},
          {"SPNEGO", CURL_VERSION_SPNEGO},
          {"Largefile", CURL_VERSION_LARGEFILE}
        };
        printf("Features: ");
        for(i=0; i<sizeof(feats)/sizeof(feats[0]); i++) {
          if(curlinfo->features & feats[i].bitmask)
            printf("%s ", feats[i].name);
        }
        puts(""); /* newline */
      }
    }
    return PARAM_HELP_REQUESTED;
    case 'w':
      /* get the output string */
      if('@' == *nextarg) {
        /* the data begins with a '@' letter, it means that a file name
           or - (stdin) follows */
        FILE *file;
        nextarg++; /* pass the @ */
        if(curl_strequal("-", nextarg))
          file = stdin;
        else 
          file = fopen(nextarg, "r");
        config->writeout = file2string(file);
        if(file && (file != stdin))
          fclose(file);
      }
      else 
        GetStr(&config->writeout, nextarg);
      break;
    case 'x':
      /* proxy */
      GetStr(&config->proxy, nextarg);
      break;
    case 'X':
      /* set custom request */
      GetStr(&config->customrequest, nextarg);
      break;
    case 'y':
      /* low speed time */
      if(str2num(&config->low_speed_time, nextarg))
        return PARAM_BAD_NUMERIC;
      if(!config->low_speed_limit)
	config->low_speed_limit = 1;
      break;
    case 'Y':
      /* low speed limit */
      if(str2num(&config->low_speed_limit, nextarg))
        return PARAM_BAD_NUMERIC;
      if(!config->low_speed_time)
	config->low_speed_time=30;
      break;
    case 'z': /* time condition coming up */
      switch(*nextarg) {
      case '+':
        nextarg++;
      default:
        /* If-Modified-Since: (section 14.28 in RFC2068) */
        config->timecond = CURL_TIMECOND_IFMODSINCE;
        break;
      case '-':
        /* If-Unmodified-Since:  (section 14.24 in RFC2068) */
        config->timecond = CURL_TIMECOND_IFUNMODSINCE;
        nextarg++;
        break;
      case '=':
        /* Last-Modified:  (section 14.29 in RFC2068) */
        config->timecond = CURL_TIMECOND_LASTMOD;
        nextarg++;
        break;
      }
      now=time(NULL);
      config->condtime=curl_getdate(nextarg, &now);
      if(-1 == (int)config->condtime) {
        /* now let's see if it is a file name to get the time from instead! */
        struct stat statbuf;
        if(-1 == stat(nextarg, &statbuf)) {
          /* failed, remove time condition */
          config->timecond = CURL_TIMECOND_NONE;
        }
        else {
          /* pull the time out from the file */
          config->condtime = statbuf.st_mtime;
        }
      }
      break;
    default: /* unknown flag */
      return PARAM_OPTION_UNKNOWN;
    }
    hit = -1;

  } while(!longopt && !singleopt && *++parse && !*usedarg);

  return PARAM_OK;
}


static void parseconfig(const char *filename,
                        struct Configurable *config)
{
    Sys_Printf("void parseconfig(const char *filename, struct Configurable *config)\r\n");
}


static void go_sleep(long ms)
{
    Sys_Printf("void go_sleep(long ms)\r\n");
}


struct OutStruct {
  char *filename;
  FILE *stream;
  struct Configurable *config;
};

static int my_fwrite(void *buffer, size_t size, size_t nmemb, void *stream)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int my_fwrite(void *buffer, size_t size, size_t nmemb, void *stream)\r\n");
    return retVal;
}


struct InStruct {
  FILE *stream;
  struct Configurable *config;
};

static int my_fread(void *buffer, size_t size, size_t nmemb, void *userp)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int my_fread(void *buffer, size_t size, size_t nmemb, void *userp)\r\n");
    return retVal;
}


struct ProgressData {
  int calls;
  double prev;
  int width;
  FILE *out; /* where to write everything to */
  curl_off_t initial_size;
};

static int myprogress (void *clientp,
                       double dltotal,
                       double dlnow,
                       double ultotal,
                       double ulnow)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int myprogress (void *clientp, double dltotal, double dlnow, double ultotal, double ulnow)\r\n");
    return retVal;
}


static
void progressbarinit(struct ProgressData *bar,
                     struct Configurable *config)
{
    Sys_Printf("void progressbarinit(struct ProgressData *bar, struct Configurable *config)\r\n");
}


static
void dump(const char *text,
          FILE *stream, unsigned char *ptr, size_t size,
          bool nohex)
{
    Sys_Printf("void dump(const char *text, FILE *stream, unsigned char *ptr, size_t size, bool nohex)\r\n");
}


static
int my_trace(CURL *handle, curl_infotype type,
             unsigned char *data, size_t size,
             void *userp)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int my_trace(CURL *handle, curl_infotype type, unsigned char *data, size_t size, void *userp)\r\n");
    return retVal;
}


static void free_config_fields(struct Configurable *config)
{
    Sys_Printf("void free_config_fields(struct Configurable *config)\r\n");
}


#if defined(WIN32) && !defined(__CYGWIN32__)

/* Function to find CACert bundle on a Win32 platform using SearchPath.
 * (SearchPath is defined in windows.h, which is #included into libcurl)
 * (Use the ASCII version instead of the unicode one!)
 * The order of the directories it searches is:
 *  1. application's directory
 *  2. current working directory
 *  3. Windows System directory (e.g. C:\windows\system32)
 *  4. Windows Directory (e.g. C:\windows)
 *  5. all directories along %PATH%
 */
static void FindWin32CACert(struct Configurable *config, 
                            const char *bundle_file)
{
    Sys_Printf("void FindWin32CACert(struct Configurable *config, const char *bundle_file)\r\n");
}


#endif

static int 
operate(struct Configurable *config, int argc, char *argv[])
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int operate(struct Configurable *config, int argc, char *argv[])\r\n");
    return retVal;
}


int main(int argc, char *argv[])
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int main(int argc, char *argv[])\r\n");
    return retVal;
}


static char *my_get_line(FILE *fp)
{
    Sys_Printf("char *my_get_line(FILE *fp)\r\n");
    return NULL;
}



/* Create the needed directory hierarchy recursively in order to save
   multi-GETs in file output, ie:
   curl "http://my.site/dir[1-5]/file[1-5].txt" -o "dir#1/file#2.txt"
   should create all the dir* automagically
*/
static int create_dir_hierarchy(char *outfile)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int create_dir_hierarchy(char *outfile)\r\n");
    return retVal;
}


#ifdef __DJGPP__
/* The following functions are taken with modification from the DJGPP
 * port of tar 1.12. They use algorithms originally from DJTAR. */

char *
msdosify (char *file_name)
{
    Sys_Printf("char *msdosify (char *file_name)\r\n");
    return NULL;
}


char *
rename_if_dos_device_name (char *file_name)
{
    Sys_Printf("char *rename_if_dos_device_name (char *file_name)\r\n");
    return NULL;
}


#endif /* __DJGPP__ */
