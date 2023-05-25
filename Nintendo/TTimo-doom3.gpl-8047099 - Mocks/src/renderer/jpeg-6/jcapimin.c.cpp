/*
 * jcapimin.c
 *
 * Copyright (C) 1994-1995, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file contains application interface code for the compression half
 * of the JPEG library.  These are the "minimum" API routines that may be
 * needed in either the normal full-compression case or the transcoding-only
 * case.
 *
 * Most of the routines intended to be called directly by an application
 * are in this file or in jcapistd.c.  But also see jcparam.c for
 * parameter-setup helper routines, jcomapi.c for routines shared by
 * compression and decompression, and jctrans.c for the transcoding case.
 */

#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"


/*
 * Initialization of a JPEG compression object.
 * The error manager must already be set up (in case memory manager fails).
 */

GLOBAL void
jpeg_create_compress (j_compress_ptr cinfo)
{
    Sys_Printf("voidjpeg_create_compress (j_compress_ptr cinfo)\r\n");
}



/*
 * Destruction of a JPEG compression object
 */

GLOBAL void
jpeg_destroy_compress (j_compress_ptr cinfo)
{
    Sys_Printf("voidjpeg_destroy_compress (j_compress_ptr cinfo)\r\n");
}



/*
 * Abort processing of a JPEG compression operation,
 * but don't destroy the object itself.
 */

GLOBAL void
jpeg_abort_compress (j_compress_ptr cinfo)
{
    Sys_Printf("voidjpeg_abort_compress (j_compress_ptr cinfo)\r\n");
}



/*
 * Forcibly suppress or un-suppress all quantization and Huffman tables.
 * Marks all currently defined tables as already written (if suppress)
 * or not written (if !suppress).  This will control whether they get emitted
 * by a subsequent jpeg_start_compress call.
 *
 * This routine is exported for use by applications that want to produce
 * abbreviated JPEG datastreams.  It logically belongs in jcparam.c, but
 * since it is called by jpeg_start_compress, we put it here --- otherwise
 * jcparam.o would be linked whether the application used it or not.
 */

GLOBAL void
jpeg_suppress_tables (j_compress_ptr cinfo, boolean suppress)
{
    Sys_Printf("voidjpeg_suppress_tables (j_compress_ptr cinfo, boolean suppress)\r\n");
}



/*
 * Finish JPEG compression.
 *
 * If a multipass operating mode was selected, this may do a great deal of
 * work including most of the actual output.
 */

GLOBAL void
jpeg_finish_compress (j_compress_ptr cinfo)
{
    Sys_Printf("voidjpeg_finish_compress (j_compress_ptr cinfo)\r\n");
}



/*
 * Write a special marker.
 * This is only recommended for writing COM or APPn markers.
 * Must be called after jpeg_start_compress() and before
 * first call to jpeg_write_scanlines() or jpeg_write_raw_data().
 */

GLOBAL void
jpeg_write_marker (j_compress_ptr cinfo, int marker,
		   const JOCTET *dataptr, unsigned int datalen)
{
    Sys_Printf("voidjpeg_write_marker (j_compress_ptr cinfo, int marker, const JOCTET *dataptr, unsigned int datalen)\r\n");
}



/*
 * Alternate compression function: just write an abbreviated table file.
 * Before calling this, all parameters and a data destination must be set up.
 *
 * To produce a pair of files containing abbreviated tables and abbreviated
 * image data, one would proceed as follows:
 *
 *		initialize JPEG object
 *		set JPEG parameters
 *		set destination to table file
 *		jpeg_write_tables(cinfo);
 *		set destination to image file
 *		jpeg_start_compress(cinfo, FALSE);
 *		write data...
 *		jpeg_finish_compress(cinfo);
 *
 * jpeg_write_tables has the side effect of marking all tables written
 * (same as jpeg_suppress_tables(..., TRUE)).  Thus a subsequent start_compress
 * will not re-emit the tables unless it is passed write_all_tables=TRUE.
 */

GLOBAL void
jpeg_write_tables (j_compress_ptr cinfo)
{
    Sys_Printf("voidjpeg_write_tables (j_compress_ptr cinfo)\r\n");
}

