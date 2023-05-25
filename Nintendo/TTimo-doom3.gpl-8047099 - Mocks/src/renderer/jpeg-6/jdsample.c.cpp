/*
 * jdsample.c
 *
 * Copyright (C) 1991-1994, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file contains upsampling routines.
 *
 * Upsampling input data is counted in "row groups".  A row group
 * is defined to be (v_samp_factor * DCT_scaled_size / min_DCT_scaled_size)
 * sample rows of each component.  Upsampling will normally produce
 * max_v_samp_factor pixel rows from each row group (but this could vary
 * if the upsampler is applying a scale factor of its own).
 *
 * An excellent reference for image resampling is
 *   Digital Image Warping, George Wolberg, 1990.
 *   Pub. by IEEE Computer Society Press, Los Alamitos, CA. ISBN 0-8186-8944-7.
 */

#define JPEG_INTERNALS
#include "jinclude.h"
#include "jpeglib.h"


/* Pointer to routine to upsample a single component */
typedef JMETHOD(void, upsample1_ptr,
		(j_decompress_ptr cinfo, jpeg_component_info * compptr,
		 JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr));

/* Private subobject */

typedef struct {
  struct jpeg_upsampler pub;	/* public fields */

  /* Color conversion buffer.  When using separate upsampling and color
   * conversion steps, this buffer holds one upsampled row group until it
   * has been color converted and output.
   * Note: we do not allocate any storage for component(s) which are full-size,
   * ie do not need rescaling.  The corresponding entry of color_buf[] is
   * simply set to point to the input data array, thereby avoiding copying.
   */
  JSAMPARRAY color_buf[MAX_COMPONENTS];

  /* Per-component upsampling method pointers */
  upsample1_ptr methods[MAX_COMPONENTS];

  int next_row_out;		/* counts rows emitted from color_buf */
  JDIMENSION rows_to_go;	/* counts rows remaining in image */

  /* Height of an input row group for each component. */
  int rowgroup_height[MAX_COMPONENTS];

  /* These arrays save pixel expansion factors so that int_expand need not
   * recompute them each time.  They are unused for other upsampling methods.
   */
  UINT8 h_expand[MAX_COMPONENTS];
  UINT8 v_expand[MAX_COMPONENTS];
} my_upsampler;

typedef my_upsampler * my_upsample_ptr;


/*
 * Initialize for an upsampling pass.
 */

METHODDEF void
start_pass_upsample (j_decompress_ptr cinfo)
{
    Sys_Printf("voidstart_pass_upsample (j_decompress_ptr cinfo)\r\n");
}



/*
 * Control routine to do upsampling (and color conversion).
 *
 * In this version we upsample each component independently.
 * We upsample one row group into the conversion buffer, then apply
 * color conversion a row at a time.
 */

METHODDEF void
sep_upsample (j_decompress_ptr cinfo,
	      JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr,
	      JDIMENSION in_row_groups_avail,
	      JSAMPARRAY output_buf, JDIMENSION *out_row_ctr,
	      JDIMENSION out_rows_avail)
{
    Sys_Printf("voidsep_upsample (j_decompress_ptr cinfo, JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr, JDIMENSION in_row_groups_avail, JSAMPARRAY output_buf, JDIMENSION *out_row_ctr, JDIMENSION out_rows_avail)\r\n");
}



/*
 * These are the routines invoked by sep_upsample to upsample pixel values
 * of a single component.  One row group is processed per call.
 */


/*
 * For full-size components, we just make color_buf[ci] point at the
 * input buffer, and thus avoid copying any data.  Note that this is
 * safe only because sep_upsample doesn't declare the input row group
 * "consumed" until we are done color converting and emitting it.
 */

METHODDEF void
fullsize_upsample (j_decompress_ptr cinfo, jpeg_component_info * compptr,
		   JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr)
{
    Sys_Printf("voidfullsize_upsample (j_decompress_ptr cinfo, jpeg_component_info * compptr, JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr)\r\n");
}



/*
 * This is a no-op version used for "uninteresting" components.
 * These components will not be referenced by color conversion.
 */

METHODDEF void
noop_upsample (j_decompress_ptr cinfo, jpeg_component_info * compptr,
	       JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr)
{
    Sys_Printf("voidnoop_upsample (j_decompress_ptr cinfo, jpeg_component_info * compptr, JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr)\r\n");
}



/*
 * This version handles any integral sampling ratios.
 * This is not used for typical JPEG files, so it need not be fast.
 * Nor, for that matter, is it particularly accurate: the algorithm is
 * simple replication of the input pixel onto the corresponding output
 * pixels.  The hi-falutin sampling literature refers to this as a
 * "box filter".  A box filter tends to introduce visible artifacts,
 * so if you are actually going to use 3:1 or 4:1 sampling ratios
 * you would be well advised to improve this code.
 */

METHODDEF void
int_upsample (j_decompress_ptr cinfo, jpeg_component_info * compptr,
	      JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr)
{
    Sys_Printf("voidint_upsample (j_decompress_ptr cinfo, jpeg_component_info * compptr, JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr)\r\n");
}



/*
 * Fast processing for the common case of 2:1 horizontal and 1:1 vertical.
 * It's still a box filter.
 */

METHODDEF void
h2v1_upsample (j_decompress_ptr cinfo, jpeg_component_info * compptr,
	       JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr)
{
    Sys_Printf("voidh2v1_upsample (j_decompress_ptr cinfo, jpeg_component_info * compptr, JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr)\r\n");
}



/*
 * Fast processing for the common case of 2:1 horizontal and 2:1 vertical.
 * It's still a box filter.
 */

METHODDEF void
h2v2_upsample (j_decompress_ptr cinfo, jpeg_component_info * compptr,
	       JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr)
{
    Sys_Printf("voidh2v2_upsample (j_decompress_ptr cinfo, jpeg_component_info * compptr, JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr)\r\n");
}



/*
 * Fancy processing for the common case of 2:1 horizontal and 1:1 vertical.
 *
 * The upsampling algorithm is linear interpolation between pixel centers,
 * also known as a "triangle filter".  This is a good compromise between
 * speed and visual quality.  The centers of the output pixels are 1/4 and 3/4
 * of the way between input pixel centers.
 *
 * A note about the "bias" calculations: when rounding fractional values to
 * integer, we do not want to always round 0.5 up to the next integer.
 * If we did that, we'd introduce a noticeable bias towards larger values.
 * Instead, this code is arranged so that 0.5 will be rounded up or down at
 * alternate pixel locations (a simple ordered dither pattern).
 */

METHODDEF void
h2v1_fancy_upsample (j_decompress_ptr cinfo, jpeg_component_info * compptr,
		     JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr)
{
    Sys_Printf("voidh2v1_fancy_upsample (j_decompress_ptr cinfo, jpeg_component_info * compptr, JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr)\r\n");
}



/*
 * Fancy processing for the common case of 2:1 horizontal and 2:1 vertical.
 * Again a triangle filter; see comments for h2v1 case, above.
 *
 * It is OK for us to reference the adjacent input rows because we demanded
 * context from the main buffer controller (see initialization code).
 */

METHODDEF void
h2v2_fancy_upsample (j_decompress_ptr cinfo, jpeg_component_info * compptr,
		     JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr)
{
    Sys_Printf("voidh2v2_fancy_upsample (j_decompress_ptr cinfo, jpeg_component_info * compptr, JSAMPARRAY input_data, JSAMPARRAY * output_data_ptr)\r\n");
}



/*
 * Module initialization routine for upsampling.
 */

GLOBAL void
jinit_upsampler (j_decompress_ptr cinfo)
{
    Sys_Printf("voidjinit_upsampler (j_decompress_ptr cinfo)\r\n");
}

