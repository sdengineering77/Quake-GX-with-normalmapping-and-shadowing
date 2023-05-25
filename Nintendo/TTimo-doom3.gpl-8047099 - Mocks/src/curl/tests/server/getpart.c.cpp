/***************************************************************************
 *                                  _   _ ____  _     
 *  Project                     ___| | | |  _ \| |    
 *                             / __| | | | |_) | |    
 *                            | (__| |_| |  _ <| |___ 
 *                             \___|\___/|_| \_\_____|
 *
 * Copyright (C) 1998 - 2004, Daniel Stenberg, <daniel@haxx.se>, et al.
 *
 * This software is licensed as described in the file COPYING, which
 * you should have received as part of this distribution. The terms
 * are also available at http://curl.haxx.se/docs/copyright.html.
 * 
 * You may opt to use, copy, modify, merge, publish, distribute and/or sell
 * copies of the Software, and permit persons to whom the Software is
 * furnished to do so, under the terms of the COPYING file.
 *
 * This software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY
 * KIND, either express or implied.
 *
 * $Id: getpart.c,v 1.10 2004/03/10 08:12:09 bagder Exp $
 ***************************************************************************/

#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include "getpart.h"

#define EAT_SPACE(ptr) while( ptr && *ptr && isspace((int)*ptr) ) ptr++
#define EAT_WORD(ptr) while( ptr && *ptr && !isspace((int)*ptr) && ('>' != *ptr)) ptr++

#ifdef DEBUG
#define show(x) printf x
#else
#define show(x)
#endif

static
char *appendstring(char *string, /* original string */
                   char *buffer, /* to append */
                   size_t *stringlen, /* length of string */
                   size_t *stralloc)  /* allocated size */
{
  size_t len = strlen(buffer);
  size_t needed_len = len + *stringlen;

  if(needed_len >= *stralloc) {
    char *newptr;
    size_t newsize = needed_len*2; /* get twice the needed size */

    newptr = realloc(string, newsize);
    if(newptr) {
      string = newptr;
      *stralloc = newsize;
    }
    else
      return NULL;
  }
  strcpy(&string[*stringlen], buffer);
  *stringlen += len;

  return string;
}

const char *spitout(FILE *stream,
                    const char *main,
                    const char *sub, int *size)
{
    Sys_Printf("char *spitout(FILE *stream, const char *main, const char *sub, int *size)\r\n");
    return NULL;
}


#ifdef TEST
int main(int argc, char **argv)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int main(int argc, char **argv)\r\n");
    return retVal;
}

#endif
