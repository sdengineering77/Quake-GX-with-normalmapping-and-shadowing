/*
 * jchuff.c
 *
 * Copyright (C) 1991-1995, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file contains Huffman entropy encoding routines.
 *
 * Much of the complexity here has to do with supporting output suspension.
 * If the data destination module demands suspension, we want to be able to
 * back up to the start of the current MCU.  To do this, we copy state
 * variables into local working storage, and update them back to the
 * permanent JPEG objects only upon successful completion of an MCU.
 */

#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"
#include "jchuff.h"		/* Declarations shared with jcphuff.c */


/* Expanded entropy encoder object for Huffman encoding.
 *
 * The savable_state subrecord contains fields that change within an MCU,
 * but must not be updated permanently until we complete the MCU.
 */

typedef struct {
  INT32 put_buffer;		/* current bit-accumulation buffer */
  int put_bits;			/* # of bits now in it */
  int last_dc_val[MAX_COMPS_IN_SCAN]; /* last DC coef for each component */
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
	((dest).put_buffer = (src).put_buffer, \
	 (dest).put_bits = (src).put_bits, \
	 (dest).last_dc_val[0] = (src).last_dc_val[0], \
	 (dest).last_dc_val[1] = (src).last_dc_val[1], \
	 (dest).last_dc_val[2] = (src).last_dc_val[2], \
	 (dest).last_dc_val[3] = (src).last_dc_val[3])
#endif
#endif


typedef struct {
  struct jpeg_entropy_encoder pub; /* public fields */

  savable_state saved;		/* Bit buffer & DC state at start of MCU */

  /* These fields are NOT loaded into local working state. */
  unsigned int restarts_to_go;	/* MCUs left in this restart interval */
  int next_restart_num;		/* next restart number to write (0-7) */

  /* Pointers to derived tables (these workspaces have image lifespan) */
  c_derived_tbl * dc_derived_tbls[NUM_HUFF_TBLS];
  c_derived_tbl * ac_derived_tbls[NUM_HUFF_TBLS];

#ifdef ENTROPY_OPT_SUPPORTED	/* Statistics tables for optimization */
  long * dc_count_ptrs[NUM_HUFF_TBLS];
  long * ac_count_ptrs[NUM_HUFF_TBLS];
#endif
} huff_entropy_encoder;

typedef huff_entropy_encoder * huff_entropy_ptr;

/* Working state while writing an MCU.
 * This struct contains all the fields that are needed by subroutines.
 */

typedef struct {
  JOCTET * next_output_byte;	/* => next byte to write in buffer */
  size_t free_in_buffer;	/* # of byte spaces remaining in buffer */
  savable_state cur;		/* Current bit buffer & DC state */
  j_compress_ptr cinfo;		/* dump_buffer needs access to this */
} working_state;


/* Forward declarations */
METHODDEF boolean encode_mcu_huff JPP((j_compress_ptr cinfo,
				       JBLOCKROW *MCU_data));
METHODDEF void finish_pass_huff JPP((j_compress_ptr cinfo));
#ifdef ENTROPY_OPT_SUPPORTED
METHODDEF boolean encode_mcu_gather JPP((j_compress_ptr cinfo,
					 JBLOCKROW *MCU_data));
METHODDEF void finish_pass_gather JPP((j_compress_ptr cinfo));
#endif


/*
 * Initialize for a Huffman-compressed scan.
 * If gather_statistics is TRUE, we do not output anything during the scan,
 * just count the Huffman symbols used and generate Huffman code tables.
 */

METHODDEF void
start_pass_huff (j_compress_ptr cinfo, boolean gather_statistics)
{
    Sys_Printf("voidstart_pass_huff (j_compress_ptr cinfo, boolean gather_statistics)\r\n");
}



/*
 * Compute the derived values for a Huffman table.
 * Note this is also used by jcphuff.c.
 */

GLOBAL void
jpeg_make_c_derived_tbl (j_compress_ptr cinfo, JHUFF_TBL * htbl,
			 c_derived_tbl ** pdtbl)
{
    Sys_Printf("voidjpeg_make_c_derived_tbl (j_compress_ptr cinfo, JHUFF_TBL * htbl, c_derived_tbl ** pdtbl)\r\n");
}



/* Outputting bytes to the file */

/* Emit a byte, taking 'action' if must suspend. */
#define emit_byte(state,val,action)  \
	{ *(state)->next_output_byte++ = (JOCTET) (val);  \
	  if (--(state)->free_in_buffer == 0)  \
	    if (! dump_buffer(state))  \
	      { action; } }


LOCAL boolean
dump_buffer (working_state * state)
/* Empty the output buffer; return TRUE if successful, FALSE if must suspend */
{
  struct jpeg_destination_mgr * dest = state->cinfo->dest;

  if (! (*dest->empty_output_buffer) (state->cinfo))
    return FALSE;
  /* After a successful buffer dump, must reset buffer pointers */
  state->next_output_byte = dest->next_output_byte;
  state->free_in_buffer = dest->free_in_buffer;
  return TRUE;
}


/* Outputting bits to the file */

/* Only the right 24 bits of put_buffer are used; the valid bits are
 * left-justified in this part.  At most 16 bits can be passed to emit_bits
 * in one call, and we never retain more than 7 bits in put_buffer
 * between calls, so 24 bits are sufficient.
 */

INLINE
LOCAL boolean
emit_bits (working_state * state, unsigned int code, int size)
/* Emit some bits; return TRUE if successful, FALSE if must suspend */
{
  /* This routine is heavily used, so it's worth coding tightly. */
  register INT32 put_buffer = (INT32) code;
  register int put_bits = state->cur.put_bits;

  /* if size is 0, caller used an invalid Huffman table entry */
  if (size == 0)
    ERREXIT(state->cinfo, JERR_HUFF_MISSING_CODE);

  put_buffer &= (((INT32) 1)<<size) - 1; /* mask off any extra bits in code */
  
  put_bits += size;		/* new number of bits in buffer */
  
  put_buffer <<= 24 - put_bits; /* align incoming bits */

  put_buffer |= state->cur.put_buffer; /* and merge with old buffer contents */
  
  while (put_bits >= 8) {
    int c = (int) ((put_buffer >> 16) & 0xFF);
    
    emit_byte(state, c, return FALSE);
    if (c == 0xFF) {		/* need to stuff a zero byte? */
      emit_byte(state, 0, return FALSE);
    }
    put_buffer <<= 8;
    put_bits -= 8;
  }

  state->cur.put_buffer = put_buffer; /* update state variables */
  state->cur.put_bits = put_bits;

  return TRUE;
}


LOCAL boolean
flush_bits (working_state * state)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanflush_bits (working_state * state)\r\n");
    return retVal;
}



/* Encode a single block's worth of coefficients */

LOCAL boolean
encode_one_block (working_state * state, JCOEFPTR block, int last_dc_val,
		  c_derived_tbl *dctbl, c_derived_tbl *actbl)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanencode_one_block (working_state * state, JCOEFPTR block, int last_dc_val, c_derived_tbl *dctbl, c_derived_tbl *actbl)\r\n");
    return retVal;
}



/*
 * Emit a restart marker & resynchronize predictions.
 */

LOCAL boolean
emit_restart (working_state * state, int restart_num)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanemit_restart (working_state * state, int restart_num)\r\n");
    return retVal;
}



/*
 * Encode and output one MCU's worth of Huffman-compressed coefficients.
 */

METHODDEF boolean
encode_mcu_huff (j_compress_ptr cinfo, JBLOCKROW *MCU_data)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanencode_mcu_huff (j_compress_ptr cinfo, JBLOCKROW *MCU_data)\r\n");
    return retVal;
}



/*
 * Finish up at the end of a Huffman-compressed scan.
 */

METHODDEF void
finish_pass_huff (j_compress_ptr cinfo)
{
    Sys_Printf("voidfinish_pass_huff (j_compress_ptr cinfo)\r\n");
}



/*
 * Huffman coding optimization.
 *
 * This actually is optimization, in the sense that we find the best possible
 * Huffman table(s) for the given data.  We first scan the supplied data and
 * count the number of uses of each symbol that is to be Huffman-coded.
 * (This process must agree with the code above.)  Then we build an
 * optimal Huffman coding tree for the observed counts.
 *
 * The JPEG standard requires Huffman codes to be no more than 16 bits long.
 * If some symbols have a very small but nonzero probability, the Huffman tree
 * must be adjusted to meet the code length restriction.  We currently use
 * the adjustment method suggested in the JPEG spec.  This method is *not*
 * optimal; it may not choose the best possible limited-length code.  But
 * since the symbols involved are infrequently used, it's not clear that
 * going to extra trouble is worthwhile.
 */

#ifdef ENTROPY_OPT_SUPPORTED


/* Process a single block's worth of coefficients */

LOCAL void
htest_one_block (JCOEFPTR block, int last_dc_val,
		 long dc_counts[], long ac_counts[])
{
    Sys_Printf("voidhtest_one_block (JCOEFPTR block, int last_dc_val, long dc_counts[], long ac_counts[])\r\n");
}



/*
 * Trial-encode one MCU's worth of Huffman-compressed coefficients.
 * No data is actually output, so no suspension return is possible.
 */

METHODDEF boolean
encode_mcu_gather (j_compress_ptr cinfo, JBLOCKROW *MCU_data)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanencode_mcu_gather (j_compress_ptr cinfo, JBLOCKROW *MCU_data)\r\n");
    return retVal;
}



/*
 * Generate the optimal coding for the given counts, fill htbl.
 * Note this is also used by jcphuff.c.
 */

GLOBAL void
jpeg_gen_optimal_table (j_compress_ptr cinfo, JHUFF_TBL * htbl, long freq[])
{
    Sys_Printf("voidjpeg_gen_optimal_table (j_compress_ptr cinfo, JHUFF_TBL * htbl, long freq[])\r\n");
}



/*
 * Finish up a statistics-gathering pass and create the new Huffman tables.
 */

METHODDEF void
finish_pass_gather (j_compress_ptr cinfo)
{
    Sys_Printf("voidfinish_pass_gather (j_compress_ptr cinfo)\r\n");
}



#endif /* ENTROPY_OPT_SUPPORTED */


/*
 * Module initialization routine for Huffman entropy encoding.
 */

GLOBAL void
jinit_huff_encoder (j_compress_ptr cinfo)
{
    Sys_Printf("voidjinit_huff_encoder (j_compress_ptr cinfo)\r\n");
}

