/*****************************************************************************
 *
 * This example source code introduces a c library buffered I/O interface to
 * URL reads it supports fopen(), fread(), fgets(), feof(), fclose(),
 * rewind(). Supported functions have identical prototypes to their normal c
 * lib namesakes and are preceaded by url_ .
 *
 * Using this code you can replace your program's fopen() with url_fopen()
 * and fread() with url_fread() and it become possible to read remote streams
 * instead of (only) local files. Local files (ie those that can be directly
 * fopened) will drop back to using the underlying clib implementations
 *
 * See the main() function at the bottom that shows an app that retrives from a
 * specified url using fgets() and fread() and saves as two output files.
 *
 * Coyright (c)2003 Simtec Electronics
 *
 * Re-implemented by Vincent Sanders <vince@kyllikki.org> with extensive
 * reference to original curl example code
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * This example requires libcurl 7.9.7 or later.
 */

#include <stdio.h>
#include <string.h>
#include <sys/time.h>
#include <stdlib.h>
#include <errno.h>

#include <curl/curl.h>

enum fcurl_type_e { CFTYPE_NONE=0, CFTYPE_FILE=1, CFTYPE_CURL=2 };

struct fcurl_data
{
    enum fcurl_type_e type;	/* type of handle */
    union {
	CURL *curl;
	FILE *file;
    } handle;			/* handle */

    char *buffer;		/* buffer to store cached data*/
    int buffer_len;		/* currently allocated buffers length */
    int buffer_pos;		/* end of data in buffer*/
    int still_running;		/* Is background url fetch still in progress */
};

typedef struct fcurl_data URL_FILE;

/* exported functions */
URL_FILE *url_fopen(char *url,const char *operation);
int url_fclose(URL_FILE *file);
int url_feof(URL_FILE *file);
size_t url_fread(void *ptr, size_t size, size_t nmemb, URL_FILE *file);
char * url_fgets(char *ptr, int size, URL_FILE *file);
void url_rewind(URL_FILE *file);

/* we use a global one for convenience */
CURLM *multi_handle;

/* curl calls this routine to get more data */
static size_t
write_callback(char *buffer,
	       size_t size,
	       size_t nitems,
	       void *userp)
{
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_twrite_callback(char *buffer, size_t size, size_t nitems, void *userp)\r\n");
    return retVal;
}


/* use to attempt to fill the read buffer up to requested number of bytes */
static int
curl_fill_buffer(URL_FILE *file,int want,int waittime)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intcurl_fill_buffer(URL_FILE *file,int want,int waittime)\r\n");
    return retVal;
}


/* use to remove want bytes from the front of a files buffer */
static int
curl_use_buffer(URL_FILE *file,int want)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intcurl_use_buffer(URL_FILE *file,int want)\r\n");
    return retVal;
}




URL_FILE *
url_fopen(char *url,const char *operation)
{
    Sys_Printf("URL_FILE *url_fopen(char *url,const char *operation)\r\n");
    return NULL;
}


int
url_fclose(URL_FILE *file)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("inturl_fclose(URL_FILE *file)\r\n");
    return retVal;
}


int
url_feof(URL_FILE *file)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("inturl_feof(URL_FILE *file)\r\n");
    return retVal;
}


size_t
url_fread(void *ptr, size_t size, size_t nmemb, URL_FILE *file)
{
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_turl_fread(void *ptr, size_t size, size_t nmemb, URL_FILE *file)\r\n");
    return retVal;
}


char *
url_fgets(char *ptr, int size, URL_FILE *file)
{
    Sys_Printf("char *url_fgets(char *ptr, int size, URL_FILE *file)\r\n");
    return NULL;
}


void
url_rewind(URL_FILE *file)
{
    Sys_Printf("voidurl_rewind(URL_FILE *file)\r\n");
}



/* Small main program to retrive from a url using fgets and fread saving the
 * output to two test files (note the fgets method will corrupt binary files if
 * they contain 0 chars */
int
main(int argc, char *argv[])
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intmain(int argc, char *argv[])\r\n");
    return retVal;
}

