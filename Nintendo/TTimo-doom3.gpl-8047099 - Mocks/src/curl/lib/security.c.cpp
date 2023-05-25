/* This source code was modified by Martin Hedenfalk <mhe@stacken.kth.se> for
 * use in Curl. His latest changes were done 2000-09-18.
 *
 * It has since been patched and modified a lot by Daniel Stenberg
 * <daniel@haxx.se> to make it better applied to curl conditions, and to make
 * it not use globals, pollute name space and more. This source code awaits a
 * rewrite to work around the paragraph 2 in the BSD licenses as explained
 * below.
 *
 * Copyright (c) 1998, 1999 Kungliga Tekniska Högskolan
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

#define _MPRINTF_REPLACE /* we want curl-functions instead of native ones */
#include <curl/mprintf.h>

#include "security.h"
#include <stdlib.h>
#include <string.h>
#include <netdb.h>

#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif

#include "base64.h"
#include "sendf.h"
#include "ftp.h"

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "memdebug.h"
#endif

#define min(a, b)   ((a) < (b) ? (a) : (b))

static struct {
    enum protection_level level;
    const char *name;
} level_names[] = {
    { prot_clear, "clear" },
    { prot_safe, "safe" },
    { prot_confidential, "confidential" },
    { prot_private, "private" }
};

static enum protection_level 
name_to_level(const char *name)
{
    protection_level retVal;
    memset(&retVal, 0, sizeof(protection_level));
    Sys_Printf("protection_level name_to_level(const char *name)\r\n");
    return retVal;
}


static struct Curl_sec_client_mech *mechs[] = {
#ifdef KRB5
  /* not supported */
#endif
#ifdef HAVE_KRB4
    &Curl_krb4_client_mech,
#endif
    NULL
};

int
Curl_sec_getc(struct connectdata *conn, FILE *F)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intCurl_sec_getc(struct connectdata *conn, FILE *F)\r\n");
    return retVal;
}


static int
block_read(int fd, void *buf, size_t len)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intblock_read(int fd, void *buf, size_t len)\r\n");
    return retVal;
}


static int
block_write(int fd, void *buf, size_t len)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intblock_write(int fd, void *buf, size_t len)\r\n");
    return retVal;
}


static int
sec_get_data(struct connectdata *conn,
             int fd, struct krb4buffer *buf)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intsec_get_data(struct connectdata *conn, int fd, struct krb4buffer *buf)\r\n");
    return retVal;
}


static size_t
buffer_read(struct krb4buffer *buf, void *data, size_t len)
{
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_tbuffer_read(struct krb4buffer *buf, void *data, size_t len)\r\n");
    return retVal;
}


static size_t
buffer_write(struct krb4buffer *buf, void *data, size_t len)
{
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_tbuffer_write(struct krb4buffer *buf, void *data, size_t len)\r\n");
    return retVal;
}


int
Curl_sec_read(struct connectdata *conn, int fd, void *buffer, int length)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intCurl_sec_read(struct connectdata *conn, int fd, void *buffer, int length)\r\n");
    return retVal;
}


static int
sec_send(struct connectdata *conn, int fd, char *from, int length)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intsec_send(struct connectdata *conn, int fd, char *from, int length)\r\n");
    return retVal;
}


int
Curl_sec_fflush_fd(struct connectdata *conn, int fd)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intCurl_sec_fflush_fd(struct connectdata *conn, int fd)\r\n");
    return retVal;
}


int
Curl_sec_write(struct connectdata *conn, int fd, char *buffer, int length)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intCurl_sec_write(struct connectdata *conn, int fd, char *buffer, int length)\r\n");
    return retVal;
}


int
Curl_sec_putc(struct connectdata *conn, int c, FILE *F)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intCurl_sec_putc(struct connectdata *conn, int c, FILE *F)\r\n");
    return retVal;
}


int
Curl_sec_read_msg(struct connectdata *conn, char *s, int level)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intCurl_sec_read_msg(struct connectdata *conn, char *s, int level)\r\n");
    return retVal;
}


enum protection_level
Curl_set_command_prot(struct connectdata *conn, enum protection_level level)
{
    protection_level retVal;
    memset(&retVal, 0, sizeof(protection_level));
    Sys_Printf("protection_levelCurl_set_command_prot(struct connectdata *conn, enum protection_level level)\r\n");
    return retVal;
}


static int
sec_prot_internal(struct connectdata *conn, int level)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intsec_prot_internal(struct connectdata *conn, int level)\r\n");
    return retVal;
}


void
Curl_sec_set_protection_level(struct connectdata *conn)
{
    Sys_Printf("voidCurl_sec_set_protection_level(struct connectdata *conn)\r\n");
}



int
Curl_sec_request_prot(struct connectdata *conn, const char *level)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intCurl_sec_request_prot(struct connectdata *conn, const char *level)\r\n");
    return retVal;
}


int
Curl_sec_login(struct connectdata *conn)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intCurl_sec_login(struct connectdata *conn)\r\n");
    return retVal;
}


void
Curl_sec_end(struct connectdata *conn)
{
    Sys_Printf("voidCurl_sec_end(struct connectdata *conn)\r\n");
}


#endif /* HAVE_KRB4 */
#endif /* CURL_DISABLE_FTP */
