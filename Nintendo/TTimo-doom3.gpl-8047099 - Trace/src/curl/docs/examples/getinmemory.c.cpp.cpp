/*****************************************************************************
 *                                  _   _ ____  _     
 *  Project                     ___| | | |  _ \| |    
 *                             / __| | | | |_) | |    
 *                            | (__| |_| |  _ <| |___ 
 *                             \___|\___/|_| \_\_____|
 *
 * $Id: getinmemory.c,v 1.5 2003/12/08 14:13:19 bagder Exp $
 *
 * Example source code to show how the callback function can be used to
 * download data into a chunk of memory instead of storing it in a file.
 *
 * This exact source code has not been verified to work.
 */

#include <stdio.h>

#include <curl/curl.h>
#include <curl/types.h>
#include <curl/easy.h>

struct MemoryStruct {
  char *memory;
  size_t size;
};

size_t
WriteMemoryCallback(void *ptr, size_t size, size_t nmemb, void *data)
{
    size_t
 retVal;
    memset(&retVal, 0, sizeof(size_t));
    SYS_Printf("size_tWriteMemoryCallback(void *ptr, size_t size, size_t nmemb, void *data)\r\n");
    return retVal;
}



int main(int argc, char **argv)
{
    int  retVal;
    memset(&retVal, 0, sizeof(int));
    SYS_Printf("int main(int argc, char **argv)\r\n");
    return retVal;
}


