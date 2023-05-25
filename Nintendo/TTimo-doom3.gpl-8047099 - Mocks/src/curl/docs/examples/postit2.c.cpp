/*****************************************************************************
 *                                  _   _ ____  _     
 *  Project                     ___| | | |  _ \| |    
 *                             / __| | | | |_) | |    
 *                            | (__| |_| |  _ <| |___ 
 *                             \___|\___/|_| \_\_____|
 *
 * $Id: postit2.c,v 1.2 2003/11/19 08:21:34 bagder Exp $
 *
 * Example code that uploads a file name 'foo' to a remote script that accepts
 * "HTML form based" (as described in RFC1738) uploads using HTTP POST.
 *
 * The imaginary form we'll fill in looks like:
 *
 * <form method="post" enctype="multipart/form-data" action="examplepost.cgi">
 * Enter file: <input type="file" name="sendfile" size="40">
 * Enter file name: <input type="text" name="filename" size="30">
 * <input type="submit" value="send" name="submit">
 * </form>
 *
 * This exact source code has not been verified to work.
 */

#include <stdio.h>
#include <string.h>

#include <curl/curl.h>
#include <curl/types.h>
#include <curl/easy.h>

int main(int argc, char *argv[])
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int main(int argc, char *argv[])\r\n");
    return retVal;
}

