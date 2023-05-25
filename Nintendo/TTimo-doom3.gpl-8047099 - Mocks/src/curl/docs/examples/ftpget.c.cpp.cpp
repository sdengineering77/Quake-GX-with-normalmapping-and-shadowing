/*****************************************************************************
 *                                  _   _ ____  _     
 *  Project                     ___| | | |  _ \| |    
 *                             / __| | | | |_) | |    
 *                            | (__| |_| |  _ <| |___ 
 *                             \___|\___/|_| \_\_____|
 *
 * $Id: ftpget.c,v 1.3 2003/12/08 14:13:19 bagder Exp $
 */

#include <stdio.h>

#include <curl/curl.h>
#include <curl/types.h>
#include <curl/easy.h>

/*
 * This is an example showing how to get a single file from an FTP server.
 * It delays the actual destination file creation until the first write
 * callback so that it won't create an empty file in case the remote file
 * doesn't exist or something else fails.
 */

struct FtpFile {
  char *filename;
  FILE *stream;
};

int my_fwrite(void *buffer, size_t size, size_t nmemb, void *stream)
{
    int  retVal;
    memset(&retVal, 0, sizeof(int));
    SYS_Printf("int my_fwrite(void *buffer, size_t size, size_t nmemb, void *stream)\r\n");
    return retVal;
}




int main(void)
{
    int  retVal;
    memset(&retVal, 0, sizeof(int));
    SYS_Printf("int main(void)\r\n");
    return retVal;
}


