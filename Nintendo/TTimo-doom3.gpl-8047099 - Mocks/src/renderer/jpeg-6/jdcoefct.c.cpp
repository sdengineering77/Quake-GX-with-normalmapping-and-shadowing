/*
 * jdcoefct.c
 *
 * Copyright (C) 1994-1995, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file contains the coefficient buffer controller for decompression.
 * This controller is the top level of the JPEG decompressor proper.
 * The coefficient buffer lies between entropy decoding and inverse-DCT steps.
 *
 * In buffered-image mode, this controller is the interface between
 * input-oriented processing and output-oriented processing.
 * Also, the input side (only) is used when reading a file for transcoding.
 */

#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"

/* Block smoothing is only applicable for progressive JPEG, so: */
#ifndef D_PROGRESSIVE_SUPPORTED
#undef BLOCK_SMOOTHING_SUPPORTED
#endif

/* Private buffer controller object */

typedef struct {
  struct jpeg_d_coef_controller pub; /* public fields */

  /* These variables keep track of the current location of the input side. */
  /* cinfo->input_iMCU_row is also used for this. */
  JDIMENSION MCU_ctr;		/* counts MCUs processed in current row */
  int MCU_vert_offset;		/* counts MCU rows within iMCU row */
  int MCU_rows_per_iMCU_row;	/* number of such rows needed */

  /* The output side's location is represented by cinfo->output_iMCU_row. */

  /* In single-pass modes, it's sufficient to buffer just one MCU.
   * We allocate a workspace of D_MAX_BLOCKS_IN_MCU coefficient blocks,
   * and let the entropy decoder write into that workspace each time.
   * (On 80x86, the workspace is FAR even though it's not really very big;
   * this is to keep the module interfaces unchanged when a large coefficient
   * buffer is necessary.)
   * In multi-pass modes, this array points to the current MCU's blocks
   * within the virtual arrays; it is used only by the input side.
   */
  JBLOCKROW MCU_buffer[D_MAX_BLOCKS_IN_MCU];

#ifdef D_MULTISCAN_FILES_SUPPORTED
  /* In multi-pass modes, we need a virtual block array for each component. */
  jvirt_barray_ptr whole_image[MAX_COMPONENTS];
#endif

#ifdef BLOCK_SMOOTHING_SUPPORTED
  /* When doing block smoothing, we latch coefficient Al values here */
  int * coef_bits_latch;
#define SAVED_COEFS  6		/* we save coef_bits[0..5] */
#endif
} my_coef_controller;

typedef my_coef_controller * my_coef_ptr;

/* Forward declarations */
METHODDEF int decompress_onepass
	JPP((j_decompress_ptr cinfo, JSAMPIMAGE output_buf));
#ifdef D_MULTISCAN_FILES_SUPPORTED
METHODDEF int decompress_data
	JPP((j_decompress_ptr cinfo, JSAMPIMAGE output_buf));
#endif
#ifdef BLOCK_SMOOTHING_SUPPORTED
LOCAL boolean smoothing_ok JPP((j_decompress_ptr cinfo));
METHODDEF int decompress_smooth_data
	JPP((j_decompress_ptr cinfo, JSAMPIMAGE output_buf));
#endif


LOCAL void
start_iMCU_row (j_decompress_ptr cinfo)
/* Reset within-iMCU-row counters for a new row (input side) */
{
  my_coef_ptr coef = (my_coef_ptr) cinfo->coef;

  /* In an interleaved scan, an MCU row is the same as an iMCU row.
   * In a noninterleaved scan, an iMCU row has v_samp_factor MCU rows.
   * But at the bottom of the image, process only what's left.
   */
  if (cinfo->comps_in_scan > 1) {
    coef->MCU_rows_per_iMCU_row = 1;
  } else {
    if (cinfo->input_iMCU_row < (cinfo->total_iMCU_rows-1))
      coef->MCU_rows_per_iMCU_row = cinfo->cur_comp_info[0]->v_samp_factor;
    else
      coef->MCU_rows_per_iMCU_row = cinfo->cur_comp_info[0]->last_row_height;
  }

  coef->MCU_ctr = 0;
  coef->MCU_vert_offset = 0;
}


/*
 * Initialize for an input processing pass.
 */

METHODDEF void
start_input_pass (j_decompress_ptr cinfo)
{
    Sys_Printf("voidstart_input_pass (j_decompress_ptr cinfo)\r\n");
}



/*
 * Initialize for an output processing pass.
 */

METHODDEF void
start_output_pass (j_decompress_ptr cinfo)
{
    Sys_Printf("voidstart_output_pass (j_decompress_ptr cinfo)\r\n");
}



/*
 * Decompress and return some data in the single-pass case.
 * Always attempts to emit one fully interleaved MCU row ("iMCU" row).
 * Input and output must run in lockstep since we have only a one-MCU buffer.
 * Return value is JPEG_ROW_COMPLETED, JPEG_SCAN_COMPLETED, or JPEG_SUSPENDED.
 *
 * NB: output_buf contains a plane for each component in image.
 * For single pass, this is the same as the components in the scan.
 */

METHODDEF int
decompress_onepass (j_decompress_ptr cinfo, JSAMPIMAGE output_buf)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intdecompress_onepass (j_decompress_ptr cinfo, JSAMPIMAGE output_buf)\r\n");
    return retVal;
}



/*
 * Dummy consume-input routine for single-pass operation.
 */

METHODDEF int
dummy_consume_data (j_decompress_ptr cinfo)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intdummy_consume_data (j_decompress_ptr cinfo)\r\n");
    return retVal;
}



#ifdef D_MULTISCAN_FILES_SUPPORTED

/*
 * Consume input data and store it in the full-image coefficient buffer.
 * We read as much as one fully interleaved MCU row ("iMCU" row) per call,
 * ie, v_samp_factor block rows for each component in the scan.
 * Return value is JPEG_ROW_COMPLETED, JPEG_SCAN_COMPLETED, or JPEG_SUSPENDED.
 */

METHODDEF int
consume_data (j_decompress_ptr cinfo)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intconsume_data (j_decompress_ptr cinfo)\r\n");
    return retVal;
}



/*
 * Decompress and return some data in the multi-pass case.
 * Always attempts to emit one fully interleaved MCU row ("iMCU" row).
 * Return value is JPEG_ROW_COMPLETED, JPEG_SCAN_COMPLETED, or JPEG_SUSPENDED.
 *
 * NB: output_buf contains a plane for each component in image.
 */

METHODDEF int
decompress_data (j_decompress_ptr cinfo, JSAMPIMAGE output_buf)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intdecompress_data (j_decompress_ptr cinfo, JSAMPIMAGE output_buf)\r\n");
    return retVal;
}


#endif /* D_MULTISCAN_FILES_SUPPORTED */


#ifdef BLOCK_SMOOTHING_SUPPORTED

/*
 * This code applies interblock smoothing as described by section K.8
 * of the JPEG standard: the first 5 AC coefficients are estimated from
 * the DC values of a DCT block and its 8 neighboring blocks.
 * We apply smoothing only for progressive JPEG decoding, and only if
 * the coefficients it can estimate are not yet known to full precision.
 */

/*
 * Determine whether block smoothing is applicable and safe.
 * We also latch the current states of the coef_bits[] entries for the
 * AC coefficients; otherwise, if the input side of the decompressor
 * advances into a new scan, we might think the coefficients are known
 * more accurately than they really are.
 */

LOCAL boolean
smoothing_ok (j_decompress_ptr cinfo)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleansmoothing_ok (j_decompress_ptr cinfo)\r\n");
    return retVal;
}



/*
 * Variant of decompress_data for use when doing block smoothing.
 */

METHODDEF int
decompress_smooth_data (j_decompress_ptr cinfo, JSAMPIMAGE output_buf)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intdecompress_smooth_data (j_decompress_ptr cinfo, JSAMPIMAGE output_buf)\r\n");
    return retVal;
}


#endif /* BLOCK_SMOOTHING_SUPPORTED */


/*
 * Initialize coefficient buffer controller.
 */

GLOBAL void
jinit_d_coef_controller (j_decompress_ptr cinfo, boolean need_full_buffer)
{
    Sys_Printf("voidjinit_d_coef_controller (j_decompress_ptr cinfo, boolean need_full_buffer)\r\n");
}

