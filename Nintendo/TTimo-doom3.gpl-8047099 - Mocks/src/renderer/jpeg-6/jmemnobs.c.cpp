/*
 * jmemnobs.c
 *
 * Copyright (C) 1992-1994, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file provides a really simple implementation of the system-
 * dependent portion of the JPEG memory manager.  This implementation
 * assumes that no backing-store files are needed: all required space
 * can be obtained from ri.Malloc().
 * This is very portable in the sense that it'll compile on almost anything,
 * but you'd better have lots of main memory (or virtual memory) if you want
 * to process big images.
 * Note that the max_memory_to_use option is ignored by this implementation.
 */

#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"
#include "jmemsys.h"		/* import the system-dependent declarations */

/*
 * Memory allocation and ri.Freeing are controlled by the regular library
 * routines ri.Malloc() and ri.Free().
 */

GLOBAL void *
jpeg_get_small (j_common_ptr cinfo, size_t sizeofobject)
{
    Sys_Printf("void *jpeg_get_small (j_common_ptr cinfo, size_t sizeofobject)\r\n");
    return NULL;
}


GLOBAL void
jpeg_free_small (j_common_ptr cinfo, void * object, size_t sizeofobject)
{
    Sys_Printf("voidjpeg_free_small (j_common_ptr cinfo, void * object, size_t sizeofobject)\r\n");
}



/*
 * "Large" objects are treated the same as "small" ones.
 * NB: although we include FAR keywords in the routine declarations,
 * this file won't actually work in 80x86 small/medium model; at least,
 * you probably won't be able to process useful-size images in only 64KB.
 */

GLOBAL void FAR *
jpeg_get_large (j_common_ptr cinfo, size_t sizeofobject)
{
    Sys_Printf("FAR *jpeg_get_large (j_common_ptr cinfo, size_t sizeofobject)\r\n");
    return NULL;
}


GLOBAL void
jpeg_free_large (j_common_ptr cinfo, void FAR * object, size_t sizeofobject)
{
    Sys_Printf("voidjpeg_free_large (j_common_ptr cinfo, void FAR * object, size_t sizeofobject)\r\n");
}



/*
 * This routine computes the total memory space available for allocation.
 * Here we always say, "we got all you want bud!"
 */

GLOBAL long
jpeg_mem_available (j_common_ptr cinfo, long min_bytes_needed,
		    long max_bytes_needed, long already_allocated)
{
    long retVal;
    memset(&retVal, 0, sizeof(long));
    Sys_Printf("longjpeg_mem_available (j_common_ptr cinfo, long min_bytes_needed, long max_bytes_needed, long already_allocated)\r\n");
    return retVal;
}



/*
 * Backing store (temporary file) management.
 * Since jpeg_mem_available always promised the moon,
 * this should never be called and we can just error out.
 */

GLOBAL void
jpeg_open_backing_store (j_common_ptr cinfo, backing_store_ptr info,
			 long total_bytes_needed)
{
    Sys_Printf("voidjpeg_open_backing_store (j_common_ptr cinfo, backing_store_ptr info, long total_bytes_needed)\r\n");
}



/*
 * These routines take care of any system-dependent initialization and
 * cleanup required.  Here, there isn't any.
 */

GLOBAL long
jpeg_mem_init (j_common_ptr cinfo)
{
    long retVal;
    memset(&retVal, 0, sizeof(long));
    Sys_Printf("longjpeg_mem_init (j_common_ptr cinfo)\r\n");
    return retVal;
}


GLOBAL void
jpeg_mem_term (j_common_ptr cinfo)
{
    Sys_Printf("voidjpeg_mem_term (j_common_ptr cinfo)\r\n");
}

