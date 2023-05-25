/*****************************************************************************
 *                                  _   _ ____  _     
 *  Project                     ___| | | |  _ \| |    
 *                             / __| | | | |_) | |    
 *                            | (__| |_| |  _ <| |___ 
 *                             \___|\___/|_| \_\_____|
 *
 * $Id: simple.c,v 1.5 2002/01/09 13:23:01 bagder Exp $
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


