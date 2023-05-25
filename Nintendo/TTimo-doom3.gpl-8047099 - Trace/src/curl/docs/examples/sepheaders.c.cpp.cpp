/*****************************************************************************
 *                                  _   _ ____  _     
 *  Project                     ___| | | |  _ \| |    
 *                             / __| | | | |_) | |    
 *                            | (__| |_| |  _ <| |___ 
 *                             \___|\___/|_| \_\_____|
 *
 * $Id: sepheaders.c,v 1.6 2003/11/19 08:21:34 bagder Exp $
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <curl/curl.h>
#include <curl/types.h>
#include <curl/easy.h>

size_t write_data(void *ptr, size_t size, size_t nmemb, void *stream)
{
    size_t  retVal;
    memset(&retVal, 0, sizeof(size_t));
    SYS_Printf("size_t write_data(void *ptr, size_t size, size_t nmemb, void *stream)\r\n");
    return retVal;
}



int main(int argc, char **argv)
{
    int  retVal;
    memset(&retVal, 0, sizeof(int));
    SYS_Printf("int main(int argc, char **argv)\r\n");
    return retVal;
}


