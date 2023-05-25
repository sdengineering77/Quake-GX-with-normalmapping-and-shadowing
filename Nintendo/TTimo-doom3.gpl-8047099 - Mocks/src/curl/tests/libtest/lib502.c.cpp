#include "test.h"

/*
 * Get a single URL without select().
 */

int test(char *URL)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int test(char *URL)\r\n");
    return retVal;
}


