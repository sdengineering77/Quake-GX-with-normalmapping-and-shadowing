#include "test.h"

static char data[]="this is what we post to the silly web server\n";

struct WriteThis {
  char *readptr;
  size_t sizeleft;
};

static size_t read_callback(void *ptr, size_t size, size_t nmemb, void *userp)
{
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t read_callback(void *ptr, size_t size, size_t nmemb, void *userp)\r\n");
    return retVal;
}


int test(char *URL)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int test(char *URL)\r\n");
    return retVal;
}

