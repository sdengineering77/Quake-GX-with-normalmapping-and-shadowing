/*****************************************************************************
 *                                  _   _ ____  _     
 *  Project                     ___| | | |  _ \| |    
 *                             / __| | | | |_) | |    
 *                            | (__| |_| |  _ <| |___ 
 *                             \___|\___/|_| \_\_____|
 *
 * $Id: ftpgetresp.c,v 1.2 2003/12/08 14:13:19 bagder Exp $
 */

#include <stdio.h>

#include <curl/curl.h>
#include <curl/types.h>
#include <curl/easy.h>

/*
 * Similar to ftpget.c but this also stores the received response-lines
 * in a separate file using our own callback!
 *
 * This functionality was introduced in libcurl 7.9.3.
 */

size_t
write_response(void *ptr, size_t size, size_t nmemb, void *data)
{
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_twrite_response(void *ptr, size_t size, size_t nmemb, void *data)\r\n");
    return retVal;
}


int main(int argc, char **argv)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int main(int argc, char **argv)\r\n");
    return retVal;
}

