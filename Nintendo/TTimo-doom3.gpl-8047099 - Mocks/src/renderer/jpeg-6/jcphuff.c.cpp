/*
 * jcphuff.c
 *
 * Copyright (C) 1995, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file contains Huffman entropy encoding routines for progressive JPEG.
 *
 * We do not support output suspension in this module, since the library
 * currently does not allow multiple-scan files to be written with output
 * suspension.
 */

#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"
#include "jchuff.h"		/* Declarations shared with jchuff.c */

#ifdef C_PROGRESSIVE_SUPPORTED

/* Expanded entropy encoder object for progressive Huffman encoding. */

typedef struct {
  struct jpeg_entropy_encoder pub; /* public fields */

  /* Mode flag: TRUE for optimization, FALSE for actual data output */
  boolean gather_statistics;

  /* Bit-level coding status.
   * next_output_byte/free_in_buffer are local copies of cinfo->dest fields.
   */
  JOCTET * next_output_byte;	/* => next byte to write in buffer */
  size_t free_in_buffer;	/* # of byte spaces remaining in buffer */
  INT32 put_buffer;		/* current bit-accumulation buffer */
  int put_bits;			/* # of bits now in it */
  j_compress_ptr cinfo;		/* link to cinfo (needed for dump_buffer) */

  /* Coding status for DC components */
  int last_dc_val[MAX_COMPS_IN_SCAN]; /* last DC coef for each component */

  /* Coding status for AC components */
  int ac_tbl_no;		/* the table number of the single component */
  unsigned int EOBRUN;		/* run length of EOBs */
  unsigned int BE;		/* # of buffered correction bits before MCU */
  char * bit_buffer;		/* buffer for correction bits (1 per char) */
  /* packing correction bits tightly would save some space but cost time... */

  unsigned int restarts_to_go;	/* MCUs left in this restart interval */
  int next_restart_num;		/* next restart number to write (0-7) */

  /* Pointers to derived tables (these workspaces have image lifespan).
   * Since any one scan codes only DC or only AC, we only need one set
   * of tables, not one for DC and one for AC.
   */
  c_derived_tbl * derived_tbls[NUM_HUFF_TBLS];

  /* Statistics tables for optimization; again, one set is enough */
  long * count_ptrs[NUM_HUFF_TBLS];
} phuff_entropy_encoder;

typedef phuff_entropy_encoder * phuff_entropy_ptr;

/* MAX_CORR_BITS is the number of bits the AC refinement correction-bit
 * buffer can hold.  Larger sizes may slightly improve compression, but
 * 1000 is already well into the realm of overkill.
 * The minimum safe size is 64 bits.
 */

#define MAX_CORR_BITS  1000	/* Max # of correction bits I can buffer */

/* IRIGHT_SHIFT is like RIGHT_SHIFT, but works on int rather than INT32.
 * We assume that int right shift is unsigned if INT32 right shift is,
 * which should be safe.
 */

#ifdef RIGHT_SHIFT_IS_UNSIGNED
#define ISHIFT_TEMPS	int ishift_temp;
#define IRIGHT_SHIFT(x,shft)  \
	((ishift_temp = (x)) < 0 ? \
	 (ishift_temp >> (shft)) | ((~0) << (16-(shft))) : \
	 (ishift_temp >> (shft)))
#else
#define ISHIFT_TEMPS
#define IRIGHT_SHIFT(x,shft)	((x) >> (shft))
#endif

/* Forward declarations */
METHODDEF boolean encode_mcu_DC_first JPP((j_compress_ptr cinfo,
					   JBLOCKROW *MCU_data));
METHODDEF boolean encode_mcu_AC_first JPP((j_compress_ptr cinfo,
					   JBLOCKROW *MCU_data));
METHODDEF boolean encode_mcu_DC_refine JPP((j_compress_ptr cinfo,
					    JBLOCKROW *MCU_data));
METHODDEF boolean encode_mcu_AC_refine JPP((j_compress_ptr cinfo,
					    JBLOCKROW *MCU_data));
METHODDEF void finish_pass_phuff JPP((j_compress_ptr cinfo));
METHODDEF void finish_pass_gather_phuff JPP((j_compress_ptr cinfo));


/*
 * Initialize for a Huffman-compressed scan using progressive JPEG.
 */

METHODDEF void
start_pass_phuff (j_compress_ptr cinfo, boolean gather_statistics)
{
    Sys_Printf("voidstart_pass_phuff (j_compress_ptr cinfo, boolean gather_statistics)\r\n");
}



/* Outputting bytes to the file.
 * NB: these must be called only when actually outputting,
 * that is, entropy->gather_statistics == FALSE.
 */

/* Emit a byte */
#define emit_byte(entropy,val)  \
	{ *(entropy)->next_output_byte++ = (JOCTET) (val);  \
	  if (--(entropy)->free_in_buffer == 0)  \
	    dump_buffer(entropy); }


LOCAL void
dump_buffer (phuff_entropy_ptr entropy)
/* Empty the output buffer; we do not support suspension in this module. */
{
  struct jpeg_destination_mgr * dest = entropy->cinfo->dest;

  if (! (*dest->empty_output_buffer) (entropy->cinfo))
    ERREXIT(entropy->cinfo, JERR_CANT_SUSPEND);
  /* After a successful buffer dump, must reset buffer pointers */
  entropy->next_output_byte = dest->next_output_byte;
  entropy->free_in_buffer = dest->free_in_buffer;
}


/* Outputting bits to the file */

/* Only the right 24 bits of put_buffer are used; the valid bits are
 * left-justified in this part.  At most 16 bits can be passed to emit_bits
 * in one call, and we never retain more than 7 bits in put_buffer
 * between calls, so 24 bits are sufficient.
 */

INLINE
LOCAL void
emit_bits (phuff_entropy_ptr entropy, unsigned int code, int size)
/* Emit some bits, unless we are in gather mode */
{
  /* This routine is heavily used, so it's worth coding tightly. */
  register INT32 put_buffer = (INT32) code;
  register int put_bits = entropy->put_bits;

  /* if size is 0, caller used an invalid Huffman table entry */
  if (size == 0)
    ERREXIT(entropy->cinfo, JERR_HUFF_MISSING_CODE);

  if (entropy->gather_statistics)
    return;			/* do nothing if we're only getting stats */

  put_buffer &= (((INT32) 1)<<size) - 1; /* mask off any extra bits in code */
  
  put_bits += size;		/* new number of bits in buffer */
  
  put_buffer <<= 24 - put_bits; /* align incoming bits */

  put_buffer |= entropy->put_buffer; /* and merge with old buffer contents */

  while (put_bits >= 8) {
    int c = (int) ((put_buffer >> 16) & 0xFF);
    
    emit_byte(entropy, c);
    if (c == 0xFF) {		/* need to stuff a zero byte? */
      emit_byte(entropy, 0);
    }
    put_buffer <<= 8;
    put_bits -= 8;
  }

  entropy->put_buffer = put_buffer; /* update variables */
  entropy->put_bits = put_bits;
}


LOCAL void
flush_bits (phuff_entropy_ptr entropy)
{
    Sys_Printf("voidflush_bits (phuff_entropy_ptr entropy)\r\n");
}



/*
 * Emit (or just count) a Huffman symbol.
 */

INLINE
LOCAL void
emit_symbol (phuff_entropy_ptr entropy, int tbl_no, int symbol)
{
    Sys_Printf("voidemit_symbol (phuff_entropy_ptr entropy, int tbl_no, int symbol)\r\n");
}



/*
 * Emit bits from a correction bit buffer.
 */

LOCAL void
emit_buffered_bits (phuff_entropy_ptr entropy, char * bufstart,
		    unsigned int nbits)
{
    Sys_Printf("voidemit_buffered_bits (phuff_entropy_ptr entropy, char * bufstart, unsigned int nbits)\r\n");
}



/*
 * Emit any pending EOBRUN symbol.
 */

LOCAL void
emit_eobrun (phuff_entropy_ptr entropy)
{
    Sys_Printf("voidemit_eobrun (phuff_entropy_ptr entropy)\r\n");
}



/*
 * Emit a restart marker & resynchronize predictions.
 */

LOCAL void
emit_restart (phuff_entropy_ptr entropy, int restart_num)
{
    Sys_Printf("voidemit_restart (phuff_entropy_ptr entropy, int restart_num)\r\n");
}



/*
 * MCU encoding for DC initial scan (either spectral selection,
 * or first pass of successive approximation).
 */

METHODDEF boolean
encode_mcu_DC_first (j_compress_ptr cinfo, JBLOCKROW *MCU_data)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanencode_mcu_DC_first (j_compress_ptr cinfo, JBLOCKROW *MCU_data)\r\n");
    return retVal;
}



/*
 * MCU encoding for AC initial scan (either spectral selection,
 * or first pass of successive approximation).
 */

METHODDEF boolean
encode_mcu_AC_first (j_compress_ptr cinfo, JBLOCKROW *MCU_data)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanencode_mcu_AC_first (j_compress_ptr cinfo, JBLOCKROW *MCU_data)\r\n");
    return retVal;
}



/*
 * MCU encoding for DC successive approximation refinement scan.
 * Note: we assume such scans can be multi-component, although the spec
 * is not very clear on the point.
 */

METHODDEF boolean
encode_mcu_DC_refine (j_compress_ptr cinfo, JBLOCKROW *MCU_data)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanencode_mcu_DC_refine (j_compress_ptr cinfo, JBLOCKROW *MCU_data)\r\n");
    return retVal;
}



/*
 * MCU encoding for AC successive approximation refinement scan.
 */

METHODDEF boolean
encode_mcu_AC_refine (j_compress_ptr cinfo, JBLOCKROW *MCU_data)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleanencode_mcu_AC_refine (j_compress_ptr cinfo, JBLOCKROW *MCU_data)\r\n");
    return retVal;
}



/*
 * Finish up at the end of a Huffman-compressed progressive scan.
 */

METHODDEF void
finish_pass_phuff (j_compress_ptr cinfo)
{
    Sys_Printf("voidfinish_pass_phuff (j_compress_ptr cinfo)\r\n");
}



/*
 * Finish up a statistics-gathering pass and create the new Huffman tables.
 */

METHODDEF void
finish_pass_gather_phuff (j_compress_ptr cinfo)
{
    Sys_Printf("voidfinish_pass_gather_phuff (j_compress_ptr cinfo)\r\n");
}



/*
 * Module initialization routine for progressive Huffman entropy encoding.
 */

GLOBAL void
jinit_phuff_encoder (j_compress_ptr cinfo)
{
    Sys_Printf("voidjinit_phuff_encoder (j_compress_ptr cinfo)\r\n");
}


#endif /* C_PROGRESSIVE_SUPPORTED */
