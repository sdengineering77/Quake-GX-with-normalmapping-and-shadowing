/* This source code was modified by Martin Hedenfalk <mhe@stacken.kth.se> for
 * use in Curl. His latest changes were done 2000-09-18.
 *
 * It has since been patched away like a madman by Daniel Stenberg
 * <daniel@haxx.se> to make it better applied to curl conditions, and to make
 * it not use globals, pollute name space and more. This source code awaits a
 * rewrite to work around the paragraph 2 in the BSD licenses as explained
 * below.
 *
 * Copyright (c) 1995, 1996, 1997, 1998, 1999 Kungliga Tekniska Högskolan
 * (Royal Institute of Technology, Stockholm, Sweden).
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.  */

#include "setup.h"

#ifndef CURL_DISABLE_FTP
#ifdef HAVE_KRB4

#include "security.h"
#include "base64.h"
#include <stdlib.h>
#ifdef HAVE_NETDB_H
#include <netdb.h>
#endif
#include <string.h>
#include <krb.h>
#include <des.h>

#ifdef HAVE_UNISTD_H
#include <unistd.h> /* for getpid() */
#endif

#include "ftp.h"
#include "sendf.h"
#include "krb4.h"

#if defined(HAVE_INET_NTOA_R) && !defined(HAVE_INET_NTOA_R_DECL)
#include "inet_ntoa_r.h"
#endif

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

#define LOCAL_ADDR (&conn->local_addr)
#define REMOTE_ADDR (&conn->serv_addr)
#define myctladdr LOCAL_ADDR
#define hisctladdr REMOTE_ADDR

struct krb4_data {
  des_cblock key;
  des_key_schedule schedule;
  char name[ANAME_SZ];
  char instance[INST_SZ];
  char realm[REALM_SZ];
};

#ifndef HAVE_STRLCPY
/* if it ever goes non-static, make it Curl_ prefixed! */
static size_t
strlcpy (char *dst, const char *src, size_t dst_sz)
{
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_tstrlcpy (char *dst, const char *src, size_t dst_sz)\r\n");
    return retVal;
}

#else
size_t strlcpy (char *dst, const char *src, size_t dst_sz);
#endif

static int
krb4_check_prot(void *app_data, int level)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intkrb4_check_prot(void *app_data, int level)\r\n");
    return retVal;
}


static int
krb4_decode(void *app_data, void *buf, int len, int level,
	    struct connectdata *conn)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intkrb4_decode(void *app_data, void *buf, int len, int level, struct connectdata *conn)\r\n");
    return retVal;
}


static int
krb4_overhead(void *app_data, int level, int len)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intkrb4_overhead(void *app_data, int level, int len)\r\n");
    return retVal;
}


static int
krb4_encode(void *app_data, void *from, int length, int level, void **to,
	    struct connectdata *conn)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intkrb4_encode(void *app_data, void *from, int length, int level, void **to, struct connectdata *conn)\r\n");
    return retVal;
}


static int
mk_auth(struct krb4_data *d, KTEXT adat, 
	const char *service, char *host, int checksum)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intmk_auth(struct krb4_data *d, KTEXT adat, const char *service, char *host, int checksum)\r\n");
    return retVal;
}


#ifdef HAVE_KRB_GET_OUR_IP_FOR_REALM
int krb_get_our_ip_for_realm(char *, struct in_addr *);
#endif

static int
krb4_auth(void *app_data, struct connectdata *conn)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intkrb4_auth(void *app_data, struct connectdata *conn)\r\n");
    return retVal;
}


struct Curl_sec_client_mech Curl_krb4_client_mech = {
    "KERBEROS_V4",
    sizeof(struct krb4_data),
    NULL, /* init */
    krb4_auth,
    NULL, /* end */
    krb4_check_prot,
    krb4_overhead,
    krb4_encode,
    krb4_decode
};

CURLcode Curl_krb_kauth(struct connectdata *conn)
{
    CURLcode retVal;
    memset(&retVal, 0, sizeof(CURLcode));
    Sys_Printf("CURLcode Curl_krb_kauth(struct connectdata *conn)\r\n");
    return retVal;
}


#endif /* HAVE_KRB4 */
#endif /* CURL_DISABLE_FTP */
