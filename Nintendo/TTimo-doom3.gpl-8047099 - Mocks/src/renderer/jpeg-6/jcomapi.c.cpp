/*
 * jcomapi.c
 *
 * Copyright (C) 1994, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file contains application interface routines that are used for both
 * compression and decompression.
 */

#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"


/*
 * Abort processing of a JPEG compression or decompression operation,
 * but don't destroy the object itself.
 *
 * For this, we merely clean up all the nonpermanent memory pools.
 * Note that temp files (virtual arrays) are not allowed to belong to
 * the permanent pool, so we will be able to close all temp files here.
 * Closing a data source or destination, if necessary, is the application's
 * responsibility.
 */

GLOBAL void
jpeg_abort (j_common_ptr cinfo)
{
    Sys_Printf("voidjpeg_abort (j_common_ptr cinfo)\r\n");
}



/*
 * Destruction of a JPEG object.
 *
 * Everything gets deallocated except the master jpeg_compress_struct itself
 * and the error manager struct.  Both of these are supplied by the application
 * and must be freed, if necessary, by the application.  (Often they are on
 * the stack and so don't need to be freed anyway.)
 * Closing a data source or destination, if necessary, is the application's
 * responsibility.
 */

GLOBAL void
jpeg_destroy (j_common_ptr cinfo)
{
    Sys_Printf("voidjpeg_destroy (j_common_ptr cinfo)\r\n");
}



/*
 * Convenience routines for allocating quantization and Huffman tables.
 * (Would jutils.c be a more reasonable place to put these?)
 */

GLOBAL JQUANT_TBL *
jpeg_alloc_quant_table (j_common_ptr cinfo)
{
    Sys_Printf("JQUANT_TBL *jpeg_alloc_quant_table (j_common_ptr cinfo)\r\n");
    return NULL;
}



GLOBAL JHUFF_TBL *
jpeg_alloc_huff_table (j_common_ptr cinfo)
{
    Sys_Printf("JHUFF_TBL *jpeg_alloc_huff_table (j_common_ptr cinfo)\r\n");
    return NULL;
}

