
#include "../Shared/Shared.h"
#include "..\Common\Common.h"

/*
 * Include file for users of JPEG library.
 * You will need to have included system headers that define at least
 * the typedefs FILE and size_t before you can include jpeglib.h.
 * (stdio.h is sufficient on ANSI-conforming systems.)
 * You may also wish to include "jerror.h".
 */

#include "jpeglib.h"


int LoadJPG( const char *filename, unsigned char **pic, int *width, int *height ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int LoadJPG( const char *filename, unsigned char **pic, int *width, int *height )\r\n");
    return retVal;
}


