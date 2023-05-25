/*
 * jmemdos.c
 *
 * Copyright (C) 1992-1994, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file provides an MS-DOS-compatible implementation of the system-
 * dependent portion of the JPEG memory manager.  Temporary data can be
 * stored in extended or expanded memory as well as in regular DOS files.
 *
 * If you use this file, you must be sure that NEED_FAR_POINTERS is defined
 * if you compile in a small-data memory model; it should NOT be defined if
 * you use a large-data memory model.  This file is not recommended if you
 * are using a flat-memory-space 386 environment such as DJGCC or Watcom C.
 * Also, this code will NOT work if struct fields are aligned on greater than
 * 2-byte boundaries.
 *
 * Based on code contributed by Ge' Weijers.
 */

/*
 * If you have both extended and expanded memory, you may want to change the
 * order in which they are tried in jopen_backing_store.  On a 286 machine
 * expanded memory is usually faster, since extended memory access involves
 * an expensive protected-mode-and-back switch.  On 386 and better, extended
 * memory is usually faster.  As distributed, the code tries extended memory
 * first (what? not everyone has a 386? :-).
 *
 * You can disable use of extended/expanded memory entirely by altering these
 * definitions or overriding them from the Makefile (eg, -DEMS_SUPPORTED=0).
 */

#ifndef XMS_SUPPORTED
#define XMS_SUPPORTED  1
#endif
#ifndef EMS_SUPPORTED
#define EMS_SUPPORTED  1
#endif


#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"
#include "jmemsys.h"		/* import the system-dependent declarations */

#ifndef HAVE_STDLIB_H		/* <stdlib.h> should declare these */
extern void * malloc JPP((size_t size));
extern void free JPP((void *ptr));
extern char * getenv JPP((const char * name));
#endif

#ifdef NEED_FAR_POINTERS

#ifdef __TURBOC__
/* These definitions work for Borland C (Turbo C) */
#include <alloc.h>		/* need farmalloc(), farfree() */
#define far_malloc(x)	farmalloc(x)
#define far_free(x)	farfree(x)
#else
/* These definitions work for Microsoft C and compatible compilers */
#include <malloc.h>		/* need _fmalloc(), _ffree() */
#define far_malloc(x)	_fmalloc(x)
#define far_free(x)	_ffree(x)
#endif

#else /* not NEED_FAR_POINTERS */

#define far_malloc(x)	malloc(x)
#define far_free(x)	free(x)

#endif /* NEED_FAR_POINTERS */

#ifdef DONT_USE_B_MODE		/* define mode parameters for fopen() */
#define READ_BINARY	"r"
#else
#define READ_BINARY	"rb"
#endif

#if MAX_ALLOC_CHUNK >= 65535L	/* make sure jconfig.h got this right */
  MAX_ALLOC_CHUNK should be less than 64K. /* deliberate syntax error */
#endif


/*
 * Declarations for assembly-language support routines (see jmemdosa.asm).
 *
 * The functions are declared "far" as are all pointer arguments;
 * this ensures the assembly source code will work regardless of the
 * compiler memory model.  We assume "short" is 16 bits, "long" is 32.
 */

typedef void far * XMSDRIVER;	/* actually a pointer to code */
typedef struct {		/* registers for calling XMS driver */
	unsigned short ax, dx, bx;
	void far * ds_si;
      } XMScontext;
typedef struct {		/* registers for calling EMS driver */
	unsigned short ax, dx, bx;
	void far * ds_si;
      } EMScontext;

EXTERN short far jdos_open JPP((short far * handle, char far * filename));
EXTERN short far jdos_close JPP((short handle));
EXTERN short far jdos_seek JPP((short handle, long offset));
EXTERN short far jdos_read JPP((short handle, void far * buffer,
				unsigned short count));
EXTERN short far jdos_write JPP((short handle, void far * buffer,
				 unsigned short count));
EXTERN void far jxms_getdriver JPP((XMSDRIVER far *));
EXTERN void far jxms_calldriver JPP((XMSDRIVER, XMScontext far *));
EXTERN short far jems_available JPP((void));
EXTERN void far jems_calldriver JPP((EMScontext far *));


/*
 * Selection of a file name for a temporary file.
 * This is highly system-dependent, and you may want to customize it.
 */

static int next_file_num;	/* to distinguish among several temp files */

LOCAL void
select_file_name (char * fname)
{
    Sys_Printf("voidselect_file_name (char * fname)\r\n");
}



/*
 * Near-memory allocation and freeing are controlled by the regular library
 * routines malloc() and free().
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
 * "Large" objects are allocated in far memory, if possible
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
 * It's impossible to do this in a portable way; our current solution is
 * to make the user tell us (with a default value set at compile time).
 * If you can actually get the available space, it's a good idea to subtract
 * a slop factor of 5% or so.
 */

#ifndef DEFAULT_MAX_MEM		/* so can override from makefile */
#define DEFAULT_MAX_MEM		300000L /* for total usage about 450K */
#endif

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
 * Backing store objects are only used when the value returned by
 * jpeg_mem_available is less than the total space needed.  You can dispense
 * with these routines if you have plenty of virtual memory; see jmemnobs.c.
 */

/*
 * For MS-DOS we support three types of backing storage:
 *   1. Conventional DOS files.  We access these by direct DOS calls rather
 *      than via the stdio package.  This provides a bit better performance,
 *      but the real reason is that the buffers to be read or written are FAR.
 *      The stdio library for small-data memory models can't cope with that.
 *   2. Extended memory, accessed per the XMS V2.0 specification.
 *   3. Expanded memory, accessed per the LIM/EMS 4.0 specification.
 * You'll need copies of those specs to make sense of the related code.
 * The specs are available by Internet FTP from the SIMTEL archives 
 * (oak.oakland.edu and its various mirror sites).  See files
 * pub/msdos/microsoft/xms20.arc and pub/msdos/info/limems41.zip.
 */


/*
 * Access methods for a DOS file.
 */


METHODDEF void
read_file_store (j_common_ptr cinfo, backing_store_ptr info,
		 void FAR * buffer_address,
		 long file_offset, long byte_count)
{
    Sys_Printf("voidread_file_store (j_common_ptr cinfo, backing_store_ptr info, void FAR * buffer_address, long file_offset, long byte_count)\r\n");
}



METHODDEF void
write_file_store (j_common_ptr cinfo, backing_store_ptr info,
		  void FAR * buffer_address,
		  long file_offset, long byte_count)
{
    Sys_Printf("voidwrite_file_store (j_common_ptr cinfo, backing_store_ptr info, void FAR * buffer_address, long file_offset, long byte_count)\r\n");
}



METHODDEF void
close_file_store (j_common_ptr cinfo, backing_store_ptr info)
{
    Sys_Printf("voidclose_file_store (j_common_ptr cinfo, backing_store_ptr info)\r\n");
}



LOCAL boolean
open_file_store (j_common_ptr cinfo, backing_store_ptr info,
		 long total_bytes_needed)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanopen_file_store (j_common_ptr cinfo, backing_store_ptr info, long total_bytes_needed)\r\n");
    return retVal;
}



/*
 * Access methods for extended memory.
 */

#if XMS_SUPPORTED

static XMSDRIVER xms_driver;	/* saved address of XMS driver */

typedef union {			/* either long offset or real-mode pointer */
	long offset;
	void far * ptr;
      } XMSPTR;

typedef struct {		/* XMS move specification structure */
	long length;
	XMSH src_handle;
	XMSPTR src;
	XMSH dst_handle;
	XMSPTR dst;
      } XMSspec;

#define ODD(X)	(((X) & 1L) != 0)


METHODDEF void
read_xms_store (j_common_ptr cinfo, backing_store_ptr info,
		void FAR * buffer_address,
		long file_offset, long byte_count)
{
    Sys_Printf("voidread_xms_store (j_common_ptr cinfo, backing_store_ptr info,void FAR * buffer_address,long file_offset, long byte_count)\r\n");
}



METHODDEF void
write_xms_store (j_common_ptr cinfo, backing_store_ptr info,
		 void FAR * buffer_address,
		 long file_offset, long byte_count)
{
    Sys_Printf("voidwrite_xms_store (j_common_ptr cinfo, backing_store_ptr info, void FAR * buffer_address, long file_offset, long byte_count)\r\n");
}



METHODDEF void
close_xms_store (j_common_ptr cinfo, backing_store_ptr info)
{
    Sys_Printf("voidclose_xms_store (j_common_ptr cinfo, backing_store_ptr info)\r\n");
}



LOCAL boolean
open_xms_store (j_common_ptr cinfo, backing_store_ptr info,
		long total_bytes_needed)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanopen_xms_store (j_common_ptr cinfo, backing_store_ptr info,long total_bytes_needed)\r\n");
    return retVal;
}


#endif /* XMS_SUPPORTED */


/*
 * Access methods for expanded memory.
 */

#if EMS_SUPPORTED

/* The EMS move specification structure requires word and long fields aligned
 * at odd byte boundaries.  Some compilers will align struct fields at even
 * byte boundaries.  While it's usually possible to force byte alignment,
 * that causes an overall performance penalty and may pose problems in merging
 * JPEG into a larger application.  Instead we accept some rather dirty code
 * here.  Note this code would fail if the hardware did not allow odd-byte
 * word & long accesses, but all 80x86 CPUs do.
 */

typedef void far * EMSPTR;

typedef union {			/* EMS move specification structure */
	long length;		/* It's easy to access first 4 bytes */
	char bytes[18];		/* Misaligned fields in here! */
      } EMSspec;

/* Macros for accessing misaligned fields */
#define FIELD_AT(spec,offset,type)  (*((type *) &(spec.bytes[offset])))
#define SRC_TYPE(spec)		FIELD_AT(spec,4,char)
#define SRC_HANDLE(spec)	FIELD_AT(spec,5,EMSH)
#define SRC_OFFSET(spec)	FIELD_AT(spec,7,unsigned short)
#define SRC_PAGE(spec)		FIELD_AT(spec,9,unsigned short)
#define SRC_PTR(spec)		FIELD_AT(spec,7,EMSPTR)
#define DST_TYPE(spec)		FIELD_AT(spec,11,char)
#define DST_HANDLE(spec)	FIELD_AT(spec,12,EMSH)
#define DST_OFFSET(spec)	FIELD_AT(spec,14,unsigned short)
#define DST_PAGE(spec)		FIELD_AT(spec,16,unsigned short)
#define DST_PTR(spec)		FIELD_AT(spec,14,EMSPTR)

#define EMSPAGESIZE	16384L	/* gospel, see the EMS specs */

#define HIBYTE(W)  (((W) >> 8) & 0xFF)
#define LOBYTE(W)  ((W) & 0xFF)


METHODDEF void
read_ems_store (j_common_ptr cinfo, backing_store_ptr info,
		void FAR * buffer_address,
		long file_offset, long byte_count)
{
    Sys_Printf("voidread_ems_store (j_common_ptr cinfo, backing_store_ptr info,void FAR * buffer_address,long file_offset, long byte_count)\r\n");
}



METHODDEF void
write_ems_store (j_common_ptr cinfo, backing_store_ptr info,
		 void FAR * buffer_address,
		 long file_offset, long byte_count)
{
    Sys_Printf("voidwrite_ems_store (j_common_ptr cinfo, backing_store_ptr info, void FAR * buffer_address, long file_offset, long byte_count)\r\n");
}



METHODDEF void
close_ems_store (j_common_ptr cinfo, backing_store_ptr info)
{
    Sys_Printf("voidclose_ems_store (j_common_ptr cinfo, backing_store_ptr info)\r\n");
}



LOCAL boolean
open_ems_store (j_common_ptr cinfo, backing_store_ptr info,
		long total_bytes_needed)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanopen_ems_store (j_common_ptr cinfo, backing_store_ptr info,long total_bytes_needed)\r\n");
    return retVal;
}


#endif /* EMS_SUPPORTED */


/*
 * Initial opening of a backing-store object.
 */

GLOBAL void
jpeg_open_backing_store (j_common_ptr cinfo, backing_store_ptr info,
			 long total_bytes_needed)
{
    Sys_Printf("voidjpeg_open_backing_store (j_common_ptr cinfo, backing_store_ptr info, long total_bytes_needed)\r\n");
}



/*
 * These routines take care of any system-dependent initialization and
 * cleanup required.
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

