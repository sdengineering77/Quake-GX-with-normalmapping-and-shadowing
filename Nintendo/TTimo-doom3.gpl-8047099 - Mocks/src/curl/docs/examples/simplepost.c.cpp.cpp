/*****************************************************************************
 *                                  _   _ ____  _     
 *  Project                     ___| | | |  _ \| |    
 *                             / __| | | | |_) | |    
 *                            | (__| |_| |  _ <| |___ 
 *                             \___|\___/|_| \_\_____|
 *
 * $Id: simplepost.c,v 1.1 2002/06/19 12:30:12 bagder Exp $
 */

#include <stdio.h>
#include <curl/curl.h>

int main(void)
{
    int  retVal;
    memset(&retVal, 0, sizeof(int));
    SYS_Printf("int main(void)\r\n");
    return retVal;
}


