/*
 * jctrans.c
 *
 * Copyright (C) 1995, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file contains library routines for transcoding compression,
 * that is, writing raw DCT coefficient arrays to an output JPEG file.
 * The routines in jcapimin.c will also be needed by a transcoder.
 */

#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"


/* Forward declarations */
LOCAL void transencode_master_selection
	JPP((j_compress_ptr cinfo, jvirt_barray_ptr * coef_arrays));
LOCAL void transencode_coef_controller
	JPP((j_compress_ptr cinfo, jvirt_barray_ptr * coef_arrays));


/*
 * Compression initialization for writing raw-coefficient data.
 * Before calling this, all parameters and a data destination must be set up.
 * Call jpeg_finish_compress() to actually write the data.
 *
 * The number of passed virtual arrays must match cinfo->num_components.
 * Note that the virtual arrays need not be filled or even realized at
 * the time write_coefficients is called; indeed, if the virtual arrays
 * were requested from this compression object's memory manager, they
 * typically will be realized during this routine and filled afterwards.
 */

GLOBAL void
jpeg_write_coefficients (j_compress_ptr cinfo, jvirt_barray_ptr * coef_arrays)
{
    Sys_Printf("voidjpeg_write_coefficients (j_compress_ptr cinfo, jvirt_barray_ptr * coef_arrays)\r\n");
}



/*
 * Initialize the compression object with default parameters,
 * then copy from the source object all parameters needed for lossless
 * transcoding.  Parameters that can be varied without loss (such as
 * scan script and Huffman optimization) are left in their default states.
 */

GLOBAL void
jpeg_copy_critical_parameters (j_decompress_ptr srcinfo,
			       j_compress_ptr dstinfo)
{
    Sys_Printf("voidjpeg_copy_critical_parameters (j_decompress_ptr srcinfo, j_compress_ptr dstinfo)\r\n");
}



/*
 * Master selection of compression modules for transcoding.
 * This substitutes for jcinit.c's initialization of the full compressor.
 */

LOCAL void
transencode_master_selection (j_compress_ptr cinfo,
			      jvirt_barray_ptr * coef_arrays)
{
    Sys_Printf("voidtransencode_master_selection (j_compress_ptr cinfo, jvirt_barray_ptr * coef_arrays)\r\n");
}



/*
 * The rest of this file is a special implementation of the coefficient
 * buffer controller.  This is similar to jccoefct.c, but it handles only
 * output from presupplied virtual arrays.  Furthermore, we generate any
 * dummy padding blocks on-the-fly rather than expecting them to be present
 * in the arrays.
 */

/* Private buffer controller object */

typedef struct {
  struct jpeg_c_coef_controller pub; /* public fields */

  JDIMENSION iMCU_row_num;	/* iMCU row # within image */
  JDIMENSION mcu_ctr;		/* counts MCUs processed in current row */
  int MCU_vert_offset;		/* counts MCU rows within iMCU row */
  int MCU_rows_per_iMCU_row;	/* number of such rows needed */

  /* Virtual block array for each component. */
  jvirt_barray_ptr * whole_image;

  /* Workspace for constructing dummy blocks at right/bottom edges. */
  JBLOCKROW dummy_buffer[C_MAX_BLOCKS_IN_MCU];
} my_coef_controller;

typedef my_coef_controller * my_coef_ptr;


LOCAL void
start_iMCU_row (j_compress_ptr cinfo)
/* Reset within-iMCU-row counters for a new row */
{
  my_coef_ptr coef = (my_coef_ptr) cinfo->coef;

  /* In an interleaved scan, an MCU row is the same as an iMCU row.
   * In a noninterleaved scan, an iMCU row has v_samp_factor MCU rows.
   * But at the bottom of the image, process only what's left.
   */
  if (cinfo->comps_in_scan > 1) {
    coef->MCU_rows_per_iMCU_row = 1;
  } else {
    if (coef->iMCU_row_num < (cinfo->total_iMCU_rows-1))
      coef->MCU_rows_per_iMCU_row = cinfo->cur_comp_info[0]->v_samp_factor;
    else
      coef->MCU_rows_per_iMCU_row = cinfo->cur_comp_info[0]->last_row_height;
  }

  coef->mcu_ctr = 0;
  coef->MCU_vert_offset = 0;
}


/*
 * Initialize for a processing pass.
 */

METHODDEF void
start_pass_coef (j_compress_ptr cinfo, J_BUF_MODE pass_mode)
{
    Sys_Printf("voidstart_pass_coef (j_compress_ptr cinfo, J_BUF_MODE pass_mode)\r\n");
}



/*
 * Process some data.
 * We process the equivalent of one fully interleaved MCU row ("iMCU" row)
 * per call, ie, v_samp_factor block rows for each component in the scan.
 * The data is obtained from the virtual arrays and fed to the entropy coder.
 * Returns TRUE if the iMCU row is completed, FALSE if suspended.
 *
 * NB: input_buf is ignored; it is likely to be a NULL pointer.
 */

METHODDEF boolean
compress_output (j_compress_ptr cinfo, JSAMPIMAGE input_buf)
{
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("booleancompress_output (j_compress_ptr cinfo, JSAMPIMAGE input_buf)\r\n");
    return retVal;
}



/*
 * Initialize coefficient buffer controller.
 *
 * Each passed coefficient array must be the right size for that
 * coefficient: width_in_blocks wide and height_in_blocks high,
 * with unitheight at least v_samp_factor.
 */

LOCAL void
transencode_coef_controller (j_compress_ptr cinfo,
			     jvirt_barray_ptr * coef_arrays)
{
    Sys_Printf("voidtransencode_coef_controller (j_compress_ptr cinfo, jvirt_barray_ptr * coef_arrays)\r\n");
}

