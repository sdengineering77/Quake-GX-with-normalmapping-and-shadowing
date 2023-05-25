/*****************************************************************************
 *                                  _   _ ____  _     
 *  Project                     ___| | | |  _ \| |    
 *                             / __| | | | |_) | |    
 *                            | (__| |_| |  _ <| |___ 
 *                             \___|\___/|_| \_\_____|
 *
 * $Id: post-callback.c,v 1.3 2003/12/08 14:14:26 bagder Exp $
 *
 * An example source code that issues a HTTP POST and we provide the actual
 * data through a read callback.
 *
 */
#include <stdio.h>
#include <string.h>
#include <curl/curl.h>

char data[]="this is what we post to the silly web server";

struct WriteThis {
  char *readptr;
  int sizeleft;
};

size_t read_callback(void *ptr, size_t size, size_t nmemb, void *userp)
{
    size_t  retVal;
    memset(&retVal, 0, sizeof(size_t));
    SYS_Printf("size_t read_callback(void *ptr, size_t size, size_t nmemb, void *userp)\r\n");
    return retVal;
}



int main(void)
{
    int  retVal;
    memset(&retVal, 0, sizeof(int));
    SYS_Printf("int main(void)\r\n");
    return retVal;
}


