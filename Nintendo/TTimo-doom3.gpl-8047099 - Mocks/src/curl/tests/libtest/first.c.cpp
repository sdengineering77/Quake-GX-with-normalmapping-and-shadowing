#include "test.h"

#ifdef CURLDEBUG
/* provide a proto for this debug function */
extern void curl_memdebug(const char *);
#endif

/* test is provided in the test code file */
int test(char *url);

char *arg2=NULL;

int main(int argc, char **argv)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int main(int argc, char **argv)\r\n");
    return retVal;
}

