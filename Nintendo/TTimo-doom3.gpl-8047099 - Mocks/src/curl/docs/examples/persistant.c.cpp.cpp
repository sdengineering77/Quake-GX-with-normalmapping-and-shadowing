/*****************************************************************************
 *                                  _   _ ____  _     
 *  Project                     ___| | | |  _ \| |    
 *                             / __| | | | |_) | |    
 *                            | (__| |_| |  _ <| |___ 
 *                             \___|\___/|_| \_\_____|
 *
 * $Id: persistant.c,v 1.2 2003/11/19 08:20:13 bagder Exp $
 */

#include <stdio.h>
#include <unistd.h>
#include <curl/curl.h>

int main(int argc, char **argv)
{
    int  retVal;
    memset(&retVal, 0, sizeof(int));
    SYS_Printf("int main(int argc, char **argv)\r\n");
    return retVal;
}


