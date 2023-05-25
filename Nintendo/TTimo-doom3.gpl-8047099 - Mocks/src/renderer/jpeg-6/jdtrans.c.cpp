/*
 * jdtrans.c
 *
 * Copyright (C) 1995, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file contains library routines for transcoding decompression,
 * that is, reading raw DCT coefficient arrays from an input JPEG file.
 * The routines in jdapimin.c will also be needed by a transcoder.
 */

#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"


/* Forward declarations */
LOCAL void transdecode_master_selection JPP((j_decompress_ptr cinfo));


/*
 * Read the coefficient arrays from a JPEG file.
 * jpeg_read_header must be completed before calling this.
 *
 * The entire image is read into a set of virtual coefficient-block arrays,
 * one per component.  The return value is a pointer to the array of
 * virtual-array descriptors.  These can be manipulated directly via the
 * JPEG memory manager, or handed off to jpeg_write_coefficients().
 * To release the memory occupied by the virtual arrays, call
 * jpeg_finish_decompress() when done with the data.
 *
 * Returns NULL if suspended.  This case need be checked only if
 * a suspending data source is used.
 */

GLOBAL jvirt_barray_ptr *
jpeg_read_coefficients (j_decompress_ptr cinfo)
{
    Sys_Printf("jvirt_barray_ptr *jpeg_read_coefficients (j_decompress_ptr cinfo)\r\n");
    return NULL;
}



/*
 * Master selection of decompression modules for transcoding.
 * This substitutes for jdmaster.c's initialization of the full decompressor.
 */

LOCAL void
transdecode_master_selection (j_decompress_ptr cinfo)
{
    Sys_Printf("voidtransdecode_master_selection (j_decompress_ptr cinfo)\r\n");
}

