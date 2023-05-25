/*
 * jdphuff.c
 *
 * Copyright (C) 1995, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file contains Huffman entropy decoding routines for progressive JPEG.
 *
 * Much of the complexity here has to do with supporting input suspension.
 * If the data source module demands suspension, we want to be able to back
 * up to the start of the current MCU.  To do this, we copy state variables
 * into local working storage, and update them back to the permanent
 * storage only upon successful completion of an MCU.
 */

#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"
#include "jdhuff.h"		/* Declarations shared with jdhuff.c */


#ifdef D_PROGRESSIVE_SUPPORTED

/*
 * Expanded entropy decoder object for progressive Huffman decoding.
 *
 * The savable_state subrecord contains fields that change within an MCU,
 * but must not be updated permanently until we complete the MCU.
 */

typedef struct {
  unsigned int EOBRUN;			/* remaining EOBs in EOBRUN */
  int last_dc_val[MAX_COMPS_IN_SCAN];	/* last DC coef for each component */
} savable_state;

/* This macro is to work around compilers with missing or broken
 * structure assignment.  You'll need to fix this code if you have
 * such a compiler and you change MAX_COMPS_IN_SCAN.
 */

#ifndef NO_STRUCT_ASSIGN
#define ASSIGN_STATE(dest,src)  ((dest) = (src))
#else
#if MAX_COMPS_IN_SCAN == 4
#define ASSIGN_STATE(dest,src)  \
	((dest).EOBRUN = (src).EOBRUN, \
	 (dest).last_dc_val[0] = (src).last_dc_val[0], \
	 (dest).last_dc_val[1] = (src).last_dc_val[1], \
	 (dest).last_dc_val[2] = (src).last_dc_val[2], \
	 (dest).last_dc_val[3] = (src).last_dc_val[3])
#endif
#endif


typedef struct {
  struct jpeg_entropy_decoder pub; /* public fields */

  /* These fields are loaded into local variables at start of each MCU.
   * In case of suspension, we exit WITHOUT updating them.
   */
  bitread_perm_state bitstate;	/* Bit buffer at start of MCU */
  savable_state saved;		/* Other state at start of MCU */

  /* These fields are NOT loaded into local working state. */
  unsigned int restarts_to_go;	/* MCUs left in this restart interval */

  /* Pointers to derived tables (these workspaces have image lifespan) */
  d_derived_tbl * derived_tbls[NUM_HUFF_TBLS];

  d_derived_tbl * ac_derived_tbl; /* active table during an AC scan */
} phuff_entropy_decoder;

typedef phuff_entropy_decoder * phuff_entropy_ptr;

/* Forward declarations */
METHODDEF boolean decode_mcu_DC_first JPP((j_decompress_ptr cinfo,
					   JBLOCKROW *MCU_data));
METHODDEF boolean decode_mcu_AC_first JPP((j_decompress_ptr cinfo,
					   JBLOCKROW *MCU_data));
METHODDEF boolean decode_mcu_DC_refine JPP((j_decompress_ptr cinfo,
					    JBLOCKROW *MCU_data));
METHODDEF boolean decode_mcu_AC_refine JPP((j_decompress_ptr cinfo,
					    JBLOCKROW *MCU_data));


/*
 * Initialize for a Huffman-compressed scan.
 */

METHODDEF void
start_pass_phuff_decoder (j_decompress_ptr cinfo)
{
    Sys_Printf("voidstart_pass_phuff_decoder (j_decompress_ptr cinfo)\r\n");
}



/*
 * Figure F.12: extend sign bit.
 * On some machines, a shift and add will be faster than a table lookup.
 */

#ifdef AVOID_TABLES

#define HUFF_EXTEND(x,s)  ((x) < (1<<((s)-1)) ? (x) + (((-1)<<(s)) + 1) : (x))

#else

#define HUFF_EXTEND(x,s)  ((x) < extend_test[s] ? (x) + extend_offset[s] : (x))

static const int extend_test[16] =   /* entry n is 2**(n-1) */
  { 0, 0x0001, 0x0002, 0x0004, 0x0008, 0x0010, 0x0020, 0x0040, 0x0080,
    0x0100, 0x0200, 0x0400, 0x0800, 0x1000, 0x2000, 0x4000 };

static const int extend_offset[16] = /* entry n is (-1 << n) + 1 */
  { 0, ((-1)<<1) + 1, ((-1)<<2) + 1, ((-1)<<3) + 1, ((-1)<<4) + 1,
    ((-1)<<5) + 1, ((-1)<<6) + 1, ((-1)<<7) + 1, ((-1)<<8) + 1,
    ((-1)<<9) + 1, ((-1)<<10) + 1, ((-1)<<11) + 1, ((-1)<<12) + 1,
    ((-1)<<13) + 1, ((-1)<<14) + 1, ((-1)<<15) + 1 };

#endif /* AVOID_TABLES */


/*
 * Check for a restart marker & resynchronize decoder.
 * Returns FALSE if must suspend.
 */

LOCAL boolean
process_restart (j_decompress_ptr cinfo)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanprocess_restart (j_decompress_ptr cinfo)\r\n");
    return retVal;
}



/*
 * Huffman MCU decoding.
 * Each of these routines decodes and returns one MCU's worth of
 * Huffman-compressed coefficients. 
 * The coefficients are reordered from zigzag order into natural array order,
 * but are not dequantized.
 *
 * The i'th block of the MCU is stored into the block pointed to by
 * MCU_data[i].  WE ASSUME THIS AREA IS INITIALLY ZEROED BY THE CALLER.
 *
 * We return FALSE if data source requested suspension.  In that case no
 * changes have been made to permanent state.  (Exception: some output
 * coefficients may already have been assigned.  This is harmless for
 * spectral selection, since we'll just re-assign them on the next call.
 * Successive approximation AC refinement has to be more careful, however.)
 */

/*
 * MCU decoding for DC initial scan (either spectral selection,
 * or first pass of successive approximation).
 */

METHODDEF boolean
decode_mcu_DC_first (j_decompress_ptr cinfo, JBLOCKROW *MCU_data)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleandecode_mcu_DC_first (j_decompress_ptr cinfo, JBLOCKROW *MCU_data)\r\n");
    return retVal;
}



/*
 * MCU decoding for AC initial scan (either spectral selection,
 * or first pass of successive approximation).
 */

METHODDEF boolean
decode_mcu_AC_first (j_decompress_ptr cinfo, JBLOCKROW *MCU_data)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleandecode_mcu_AC_first (j_decompress_ptr cinfo, JBLOCKROW *MCU_data)\r\n");
    return retVal;
}



/*
 * MCU decoding for DC successive approximation refinement scan.
 * Note: we assume such scans can be multi-component, although the spec
 * is not very clear on the point.
 */

METHODDEF boolean
decode_mcu_DC_refine (j_decompress_ptr cinfo, JBLOCKROW *MCU_data)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleandecode_mcu_DC_refine (j_decompress_ptr cinfo, JBLOCKROW *MCU_data)\r\n");
    return retVal;
}



/*
 * MCU decoding for AC successive approximation refinement scan.
 */

METHODDEF boolean
decode_mcu_AC_refine (j_decompress_ptr cinfo, JBLOCKROW *MCU_data)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleandecode_mcu_AC_refine (j_decompress_ptr cinfo, JBLOCKROW *MCU_data)\r\n");
    return retVal;
}



/*
 * Module initialization routine for progressive Huffman entropy decoding.
 */

GLOBAL void
jinit_phuff_decoder (j_decompress_ptr cinfo)
{
    Sys_Printf("voidjinit_phuff_decoder (j_decompress_ptr cinfo)\r\n");
}


#endif /* D_PROGRESSIVE_SUPPORTED */
