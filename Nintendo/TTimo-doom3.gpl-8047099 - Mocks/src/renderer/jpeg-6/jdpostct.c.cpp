/*
 * jdpostct.c
 *
 * Copyright (C) 1994-1995, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file contains the decompression postprocessing controller.
 * This controller manages the upsampling, color conversion, and color
 * quantization/reduction steps; specifically, it controls the buffering
 * between upsample/color conversion and color quantization/reduction.
 *
 * If no color quantization/reduction is required, then this module has no
 * work to do, and it just hands off to the upsample/color conversion code.
 * An integrated upsample/convert/quantize process would replace this module
 * entirely.
 */

#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"


/* Private buffer controller object */

typedef struct {
  struct jpeg_d_post_controller pub; /* public fields */

  /* Color quantization source buffer: this holds output data from
   * the upsample/color conversion step to be passed to the quantizer.
   * For two-pass color quantization, we need a full-image buffer;
   * for one-pass operation, a strip buffer is sufficient.
   */
  jvirt_sarray_ptr whole_image;	/* virtual array, or NULL if one-pass */
  JSAMPARRAY buffer;		/* strip buffer, or current strip of virtual */
  JDIMENSION strip_height;	/* buffer size in rows */
  /* for two-pass mode only: */
  JDIMENSION starting_row;	/* row # of first row in current strip */
  JDIMENSION next_row;		/* index of next row to fill/empty in strip */
} my_post_controller;

typedef my_post_controller * my_post_ptr;


/* Forward declarations */
METHODDEF void post_process_1pass
	JPP((j_decompress_ptr cinfo,
	     JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr,
	     JDIMENSION in_row_groups_avail,
	     JSAMPARRAY output_buf, JDIMENSION *out_row_ctr,
	     JDIMENSION out_rows_avail));
#ifdef QUANT_2PASS_SUPPORTED
METHODDEF void post_process_prepass
	JPP((j_decompress_ptr cinfo,
	     JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr,
	     JDIMENSION in_row_groups_avail,
	     JSAMPARRAY output_buf, JDIMENSION *out_row_ctr,
	     JDIMENSION out_rows_avail));
METHODDEF void post_process_2pass
	JPP((j_decompress_ptr cinfo,
	     JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr,
	     JDIMENSION in_row_groups_avail,
	     JSAMPARRAY output_buf, JDIMENSION *out_row_ctr,
	     JDIMENSION out_rows_avail));
#endif


/*
 * Initialize for a processing pass.
 */

METHODDEF void
start_pass_dpost (j_decompress_ptr cinfo, J_BUF_MODE pass_mode)
{
    Sys_Printf("voidstart_pass_dpost (j_decompress_ptr cinfo, J_BUF_MODE pass_mode)\r\n");
}



/*
 * Process some data in the one-pass (strip buffer) case.
 * This is used for color precision reduction as well as one-pass quantization.
 */

METHODDEF void
post_process_1pass (j_decompress_ptr cinfo,
		    JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr,
		    JDIMENSION in_row_groups_avail,
		    JSAMPARRAY output_buf, JDIMENSION *out_row_ctr,
		    JDIMENSION out_rows_avail)
{
    Sys_Printf("voidpost_process_1pass (j_decompress_ptr cinfo, JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr, JDIMENSION in_row_groups_avail, JSAMPARRAY output_buf, JDIMENSION *out_row_ctr, JDIMENSION out_rows_avail)\r\n");
}



#ifdef QUANT_2PASS_SUPPORTED

/*
 * Process some data in the first pass of 2-pass quantization.
 */

METHODDEF void
post_process_prepass (j_decompress_ptr cinfo,
		      JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr,
		      JDIMENSION in_row_groups_avail,
		      JSAMPARRAY output_buf, JDIMENSION *out_row_ctr,
		      JDIMENSION out_rows_avail)
{
    Sys_Printf("voidpost_process_prepass (j_decompress_ptr cinfo, JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr, JDIMENSION in_row_groups_avail, JSAMPARRAY output_buf, JDIMENSION *out_row_ctr, JDIMENSION out_rows_avail)\r\n");
}



/*
 * Process some data in the second pass of 2-pass quantization.
 */

METHODDEF void
post_process_2pass (j_decompress_ptr cinfo,
		    JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr,
		    JDIMENSION in_row_groups_avail,
		    JSAMPARRAY output_buf, JDIMENSION *out_row_ctr,
		    JDIMENSION out_rows_avail)
{
    Sys_Printf("voidpost_process_2pass (j_decompress_ptr cinfo, JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr, JDIMENSION in_row_groups_avail, JSAMPARRAY output_buf, JDIMENSION *out_row_ctr, JDIMENSION out_rows_avail)\r\n");
}


#endif /* QUANT_2PASS_SUPPORTED */


/*
 * Initialize postprocessing controller.
 */

GLOBAL void
jinit_d_post_controller (j_decompress_ptr cinfo, boolean need_full_buffer)
{
    Sys_Printf("voidjinit_d_post_controller (j_decompress_ptr cinfo, boolean need_full_buffer)\r\n");
}

