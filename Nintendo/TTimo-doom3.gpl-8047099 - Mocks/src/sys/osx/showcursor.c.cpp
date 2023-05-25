/*
 cc -o showcursor showcursor.c -framework IOKit
*/

#include <IOKit/IOKitLib.h>
#include <IOKit/hidsystem/IOHIDShared.h>
#include <assert.h>

mach_port_t	masterPort;

io_connect_t OpenEventDriver( void )
{
    io_connect_t retVal;
    memset(&retVal, 0, sizeof(io_connect_t));
    Sys_Printf("io_connect_t OpenEventDriver( void )\r\n");
    return retVal;
}



void TestParams( io_connect_t ev, boolean_t show )
{
    Sys_Printf("void TestParams( io_connect_t ev, boolean_t show )\r\n");
}


int main(int argc, char **argv)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int main(int argc, char **argv)\r\n");
    return retVal;
}

