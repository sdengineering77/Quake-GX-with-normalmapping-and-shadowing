#include "test.h"
#include <stdlib.h>
#include <ctype.h>
#include <errno.h>

const char *HOSTHEADER = "Host: www.host.foo.com";
const char *JAR = "log/jar506";
#define THREADS 2

void lock(CURL *handle, curl_lock_data data, curl_lock_access access,
          void *useptr );
void unlock(CURL *handle, curl_lock_data data, void *useptr );
struct curl_slist *sethost(struct curl_slist *headers);
void *fire(void *ptr);
char *suburl(char *base, int i);

/* struct containing data of a thread */
struct Tdata {
  CURLSH *share;
  char *url;
};

struct userdata {
  char *text;
  int counter;
};

/* lock callback */
void lock(CURL *handle, curl_lock_data data, curl_lock_access access,
          void *useptr )
{
    Sys_Printf("void lock(CURL *handle, curl_lock_data data, curl_lock_access access, void *useptr )\r\n");
}


/* unlock callback */
void unlock(CURL *handle, curl_lock_data data, void *useptr )
{
    Sys_Printf("void unlock(CURL *handle, curl_lock_data data, void *useptr )\r\n");
}



/* build host entry */
struct curl_slist *sethost(struct curl_slist *headers)
{
    Sys_Printf("curl_slist *sethost(struct curl_slist *headers)\r\n");
    return NULL;
}



/* the dummy thread function */
void *fire(void *ptr)
{
    Sys_Printf("void *fire(void *ptr)\r\n");
    return NULL;
}



/* build request url */
char *suburl(char *base, int i)
{
    Sys_Printf("char *suburl(char *base, int i)\r\n");
    return NULL;
}



/* test function */
int test(char *URL)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int test(char *URL)\r\n");
    return retVal;
}


