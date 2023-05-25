/*
 * jdapistd.c
 *
 * Copyright (C) 1994-1995, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file contains application interface code for the decompression half
 * of the JPEG library.  These are the "standard" API routines that are
 * used in the normal full-decompression case.  They are not used by a
 * transcoding-only application.  Note that if an application links in
 * jpeg_start_decompress, it will end up linking in the entire decompressor.
 * We thus must separate this file from jdapimin.c to avoid linking the
 * whole decompression library into a transcoder.
 */

#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"


/* Forward declarations */
LOCAL boolean output_pass_setup JPP((j_decompress_ptr cinfo));


/*
 * Decompression initialization.
 * jpeg_read_header must be completed before calling this.
 *
 * If a multipass operating mode was selected, this will do all but the
 * last pass, and thus may take a great deal of time.
 *
 * Returns FALSE if suspended.  The return value need be inspected only if
 * a suspending data source is used.
 */

GLOBAL boolean
jpeg_start_decompress (j_decompress_ptr cinfo)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanjpeg_start_decompress (j_decompress_ptr cinfo)\r\n");
    return retVal;
}



/*
 * Set up for an output pass, and perform any dummy pass(es) needed.
 * Common subroutine for jpeg_start_decompress and jpeg_start_output.
 * Entry: global_state = DSTATE_PRESCAN only if previously suspended.
 * Exit: If done, returns TRUE and sets global_state for proper output mode.
 *       If suspended, returns FALSE and sets global_state = DSTATE_PRESCAN.
 */

LOCAL boolean
output_pass_setup (j_decompress_ptr cinfo)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanoutput_pass_setup (j_decompress_ptr cinfo)\r\n");
    return retVal;
}



/*
 * Read some scanlines of data from the JPEG decompressor.
 *
 * The return value will be the number of lines actually read.
 * This may be less than the number requested in several cases,
 * including bottom of image, data source suspension, and operating
 * modes that emit multiple scanlines at a time.
 *
 * Note: we warn about excess calls to jpeg_read_scanlines() since
 * this likely signals an application programmer error.  However,
 * an oversize buffer (max_lines > scanlines remaining) is not an error.
 */

GLOBAL JDIMENSION
jpeg_read_scanlines (j_decompress_ptr cinfo, JSAMPARRAY scanlines,
		     JDIMENSION max_lines)
{
    JDIMENSION retVal;
    memset(&retVal, 0, sizeof(JDIMENSION));
    Sys_Printf("JDIMENSIONjpeg_read_scanlines (j_decompress_ptr cinfo, JSAMPARRAY scanlines, JDIMENSION max_lines)\r\n");
    return retVal;
}



/*
 * Alternate entry point to read raw data.
 * Processes exactly one iMCU row per call, unless suspended.
 */

GLOBAL JDIMENSION
jpeg_read_raw_data (j_decompress_ptr cinfo, JSAMPIMAGE data,
		    JDIMENSION max_lines)
{
    JDIMENSION retVal;
    memset(&retVal, 0, sizeof(JDIMENSION));
    Sys_Printf("JDIMENSIONjpeg_read_raw_data (j_decompress_ptr cinfo, JSAMPIMAGE data, JDIMENSION max_lines)\r\n");
    return retVal;
}



/* Additional entry points for buffered-image mode. */

#ifdef D_MULTISCAN_FILES_SUPPORTED

/*
 * Initialize for an output pass in buffered-image mode.
 */

GLOBAL boolean
jpeg_start_output (j_decompress_ptr cinfo, int scan_number)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanjpeg_start_output (j_decompress_ptr cinfo, int scan_number)\r\n");
    return retVal;
}



/*
 * Finish up after an output pass in buffered-image mode.
 *
 * Returns FALSE if suspended.  The return value need be inspected only if
 * a suspending data source is used.
 */

GLOBAL boolean
jpeg_finish_output (j_decompress_ptr cinfo)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanjpeg_finish_output (j_decompress_ptr cinfo)\r\n");
    return retVal;
}


#endif /* D_MULTISCAN_FILES_SUPPORTED */
