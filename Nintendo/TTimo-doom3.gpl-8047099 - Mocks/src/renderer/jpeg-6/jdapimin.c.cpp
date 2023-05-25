/*
 * jdapimin.c
 *
 * Copyright (C) 1994-1995, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file contains application interface code for the decompression half
 * of the JPEG library.  These are the "minimum" API routines that may be
 * needed in either the normal full-decompression case or the
 * transcoding-only case.
 *
 * Most of the routines intended to be called directly by an application
 * are in this file or in jdapistd.c.  But also see jcomapi.c for routines
 * shared by compression and decompression, and jdtrans.c for the transcoding
 * case.
 */

#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"


/*
 * Initialization of a JPEG decompression object.
 * The error manager must already be set up (in case memory manager fails).
 */

GLOBAL void
jpeg_create_decompress (j_decompress_ptr cinfo)
{
    Sys_Printf("voidjpeg_create_decompress (j_decompress_ptr cinfo)\r\n");
}



/*
 * Destruction of a JPEG decompression object
 */

GLOBAL void
jpeg_destroy_decompress (j_decompress_ptr cinfo)
{
    Sys_Printf("voidjpeg_destroy_decompress (j_decompress_ptr cinfo)\r\n");
}



/*
 * Abort processing of a JPEG decompression operation,
 * but don't destroy the object itself.
 */

GLOBAL void
jpeg_abort_decompress (j_decompress_ptr cinfo)
{
    Sys_Printf("voidjpeg_abort_decompress (j_decompress_ptr cinfo)\r\n");
}



/*
 * Install a special processing method for COM or APPn markers.
 */

GLOBAL void
jpeg_set_marker_processor (j_decompress_ptr cinfo, int marker_code,
			   jpeg_marker_parser_method routine)
{
    Sys_Printf("voidjpeg_set_marker_processor (j_decompress_ptr cinfo, int marker_code, jpeg_marker_parser_method routine)\r\n");
}



/*
 * Set default decompression parameters.
 */

LOCAL void
default_decompress_parms (j_decompress_ptr cinfo)
{
    Sys_Printf("voiddefault_decompress_parms (j_decompress_ptr cinfo)\r\n");
}



/*
 * Decompression startup: read start of JPEG datastream to see what's there.
 * Need only initialize JPEG object and supply a data source before calling.
 *
 * This routine will read as far as the first SOS marker (ie, actual start of
 * compressed data), and will save all tables and parameters in the JPEG
 * object.  It will also initialize the decompression parameters to default
 * values, and finally return JPEG_HEADER_OK.  On return, the application may
 * adjust the decompression parameters and then call jpeg_start_decompress.
 * (Or, if the application only wanted to determine the image parameters,
 * the data need not be decompressed.  In that case, call jpeg_abort or
 * jpeg_destroy to release any temporary space.)
 * If an abbreviated (tables only) datastream is presented, the routine will
 * return JPEG_HEADER_TABLES_ONLY upon reaching EOI.  The application may then
 * re-use the JPEG object to read the abbreviated image datastream(s).
 * It is unnecessary (but OK) to call jpeg_abort in this case.
 * The JPEG_SUSPENDED return code only occurs if the data source module
 * requests suspension of the decompressor.  In this case the application
 * should load more source data and then re-call jpeg_read_header to resume
 * processing.
 * If a non-suspending data source is used and require_image is TRUE, then the
 * return code need not be inspected since only JPEG_HEADER_OK is possible.
 *
 * This routine is now just a front end to jpeg_consume_input, with some
 * extra error checking.
 */

GLOBAL int
jpeg_read_header (j_decompress_ptr cinfo, boolean require_image)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intjpeg_read_header (j_decompress_ptr cinfo, boolean require_image)\r\n");
    return retVal;
}



/*
 * Consume data in advance of what the decompressor requires.
 * This can be called at any time once the decompressor object has
 * been created and a data source has been set up.
 *
 * This routine is essentially a state machine that handles a couple
 * of critical state-transition actions, namely initial setup and
 * transition from header scanning to ready-for-start_decompress.
 * All the actual input is done via the input controller's consume_input
 * method.
 */

GLOBAL int
jpeg_consume_input (j_decompress_ptr cinfo)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intjpeg_consume_input (j_decompress_ptr cinfo)\r\n");
    return retVal;
}



/*
 * Have we finished reading the input file?
 */

GLOBAL boolean
jpeg_input_complete (j_decompress_ptr cinfo)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanjpeg_input_complete (j_decompress_ptr cinfo)\r\n");
    return retVal;
}



/*
 * Is there more than one scan?
 */

GLOBAL boolean
jpeg_has_multiple_scans (j_decompress_ptr cinfo)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanjpeg_has_multiple_scans (j_decompress_ptr cinfo)\r\n");
    return retVal;
}



/*
 * Finish JPEG decompression.
 *
 * This will normally just verify the file trailer and release temp storage.
 *
 * Returns FALSE if suspended.  The return value need be inspected only if
 * a suspending data source is used.
 */

GLOBAL boolean
jpeg_finish_decompress (j_decompress_ptr cinfo)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanjpeg_finish_decompress (j_decompress_ptr cinfo)\r\n");
    return retVal;
}

