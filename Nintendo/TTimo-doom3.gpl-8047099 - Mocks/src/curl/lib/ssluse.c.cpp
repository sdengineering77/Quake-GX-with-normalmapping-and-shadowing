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
 * $Id: ssluse.c,v 1.93 2004/03/11 12:57:04 bagder Exp $
 ***************************************************************************/

/*
 * The original SSL code for curl was written by
 * Linas Vepstas <linas@linas.org> and Sampo Kellomaki <sampo@iki.fi>
 */

#include "setup.h"

#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#ifdef HAVE_SYS_TYPES_H
#include <sys/types.h>
#endif
#ifdef HAVE_SYS_SOCKET_H
#include <sys/socket.h>
#endif

#include "urldata.h"
#include "sendf.h"
#include "formdata.h" /* for the boundary function */
#include "url.h" /* for the ssl config check function */
#include "inet_pton.h"
#include "ssluse.h"
#include "connect.h" /* Curl_ourerrno() proto */

#ifdef USE_SSLEAY
#include <openssl/rand.h>
#include <openssl/x509v3.h>

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

#if OPENSSL_VERSION_NUMBER >= 0x0090581fL
#define HAVE_SSL_GET1_SESSION 1
#else
#undef HAVE_SSL_GET1_SESSION
#endif

#if OPENSSL_VERSION_NUMBER >= 0x00904100L
#define HAVE_USERDATA_IN_PWD_CALLBACK 1
#else
#undef HAVE_USERDATA_IN_PWD_CALLBACK
#endif

#if OPENSSL_VERSION_NUMBER >= 0x00907001L
/* ENGINE_load_private_key() takes four arguments */
#define HAVE_ENGINE_LOAD_FOUR_ARGS
#else
/* ENGINE_load_private_key() takes three arguments */
#undef HAVE_ENGINE_LOAD_FOUR_ARGS
#endif


#ifndef HAVE_USERDATA_IN_PWD_CALLBACK
static char global_passwd[64];
#endif

static int passwd_callback(char *buf, int num, int verify
#if HAVE_USERDATA_IN_PWD_CALLBACK
                           /* This was introduced in 0.9.4, we can set this
                              using SSL_CTX_set_default_passwd_cb_userdata()
                              */
                           , void *global_passwd
#endif
                           )
{
  if(verify)
    fprintf(stderr, "%s\n", buf);
  else {
    if(num > (int)strlen((char *)global_passwd)) {
      strcpy(buf, global_passwd);
      return strlen(buf);
    }
  }  
  return 0;
}

static
bool seed_enough(int nread)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool seed_enough(int nread)\r\n");
    return retVal;
}


static
int random_the_seed(struct SessionHandle *data)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int random_the_seed(struct SessionHandle *data)\r\n");
    return retVal;
}


#ifndef SSL_FILETYPE_ENGINE
#define SSL_FILETYPE_ENGINE 42
#endif
static int do_file_type(const char *type)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int do_file_type(const char *type)\r\n");
    return retVal;
}


static
int cert_stuff(struct connectdata *conn,
               SSL_CTX* ctx,
               char *cert_file,
               const char *cert_type,
               char *key_file,
               const char *key_type)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int cert_stuff(struct connectdata *conn, SSL_CTX* ctx, char *cert_file, const char *cert_type, char *key_file, const char *key_type)\r\n");
    return retVal;
}


static
int cert_verify_callback(int ok, X509_STORE_CTX *ctx)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int cert_verify_callback(int ok, X509_STORE_CTX *ctx)\r\n");
    return retVal;
}


#endif

#ifdef USE_SSLEAY
/* "global" init done? */
static int init_ssl=0;

/* we have the "SSL is seeded" boolean global for the application to
   prevent multiple time-consuming seedings in vain */
static bool ssl_seeded = FALSE;
#endif

/* Global init */
void Curl_SSL_init(void)
{
    Sys_Printf("void Curl_SSL_init(void)\r\n");
}


/* Global cleanup */
void Curl_SSL_cleanup(void)
{
    Sys_Printf("void Curl_SSL_cleanup(void)\r\n");
}


#ifndef USE_SSLEAY
void Curl_SSL_Close(struct connectdata *conn)
{
    Sys_Printf("void Curl_SSL_Close(struct connectdata *conn)\r\n");
}

#endif

#ifdef USE_SSLEAY

/*
 * This function is called when an SSL connection is closed.
 */
void Curl_SSL_Close(struct connectdata *conn)
{
    Sys_Printf("void Curl_SSL_Close(struct connectdata *conn)\r\n");
}



/*
 * This sets up a session cache to the specified size.
 */
CURLcode Curl_SSL_InitSessions(struct SessionHandle *data, long amount)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_SSL_InitSessions(struct SessionHandle *data, long amount)\r\n");
    return retVal;
}


/*
 * Check if there's a session ID for the given connection in the cache,
 * and if there's one suitable, it is returned.
 */
static int Get_SSL_Session(struct connectdata *conn,
                           SSL_SESSION **ssl_sessionid)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Get_SSL_Session(struct connectdata *conn, SSL_SESSION **ssl_sessionid)\r\n");
    return retVal;
}


/*
 * Kill a single session ID entry in the cache.
 */
static int Kill_Single_Session(struct curl_ssl_session *session)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Kill_Single_Session(struct curl_ssl_session *session)\r\n");
    return retVal;
}


/*
 * This function is called when the 'data' struct is going away. Close
 * down everything and free all resources!
 */
int Curl_SSL_Close_All(struct SessionHandle *data)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Curl_SSL_Close_All(struct SessionHandle *data)\r\n");
    return retVal;
}


/*
 * Extract the session id and store it in the session cache.
 */
static int Store_SSL_Session(struct connectdata *conn,
                             struct ssl_connect_data *ssl)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Store_SSL_Session(struct connectdata *conn, struct ssl_connect_data *ssl)\r\n");
    return retVal;
}


static int Curl_ASN1_UTCTIME_output(struct connectdata *conn,
                                    const char *prefix,
                                    ASN1_UTCTIME *tm)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Curl_ASN1_UTCTIME_output(struct connectdata *conn, const char *prefix, ASN1_UTCTIME *tm)\r\n");
    return retVal;
}


#endif  

/* ====================================================== */
#ifdef USE_SSLEAY
static int
cert_hostcheck(const char *certname, const char *hostname)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intcert_hostcheck(const char *certname, const char *hostname)\r\n");
    return retVal;
}


/* Quote from RFC2818 section 3.1 "Server Identity"

   If a subjectAltName extension of type dNSName is present, that MUST
   be used as the identity. Otherwise, the (most specific) Common Name
   field in the Subject field of the certificate MUST be used. Although
   the use of the Common Name is existing practice, it is deprecated and
   Certification Authorities are encouraged to use the dNSName instead.

   Matching is performed using the matching rules specified by
   [RFC2459].  If more than one identity of a given type is present in
   the certificate (e.g., more than one dNSName name, a match in any one
   of the set is considered acceptable.) Names may contain the wildcard
   character * which is considered to match any single domain name
   component or component fragment. E.g., *.a.com matches foo.a.com but
   not bar.foo.a.com. f*.com matches foo.com but not bar.com.

   In some cases, the URI is specified as an IP address rather than a
   hostname. In this case, the iPAddress subjectAltName must be present
   in the certificate and must exactly match the IP in the URI.

*/
static CURLcode verifyhost(struct connectdata *conn,
                           X509 *server_cert)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode verifyhost(struct connectdata *conn, X509 *server_cert)\r\n");
    return retVal;
}

#endif

/* ====================================================== */
CURLcode
Curl_SSLConnect(struct connectdata *conn,
                int sockindex)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcodeCurl_SSLConnect(struct connectdata *conn, int sockindex)\r\n");
    return retVal;
}

