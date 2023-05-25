/*****************************************************************************
 *                                  _   _ ____  _     
 *  Project                     ___| | | |  _ \| |    
 *                             / __| | | | |_) | |    
 *                            | (__| |_| |  _ <| |___ 
 *                             \___|\___/|_| \_\_____|
 *
 * $Id: httpput.c,v 1.5 2004/01/05 22:29:30 bagder Exp $
 */

#include <stdio.h>
#include <fcntl.h>
#include <sys/stat.h>

#include <curl/curl.h>

/*
 * This example shows a HTTP PUT operation. PUTs a file given as a command
 * line argument to the URL also given on the command line.
 *
 * This example also uses its own read callback.
 */

size_t read_callback(void *ptr, size_t size, size_t nmemb, void *stream)
{
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t read_callback(void *ptr, size_t size, size_t nmemb, void *stream)\r\n");
    return retVal;
}


int main(int argc, char **argv)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int main(int argc, char **argv)\r\n");
    return retVal;
}

