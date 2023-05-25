/*
 * gx_shader.h
 *
 *  Created on: 1 sep. 2012
 *      Author: Danny
 */

#ifndef GX_SHADER_H_
#define GX_SHADER_H_

typedef struct gxvtxfmt_s {
	int 	gxvtxfmt;
	int		numnormals;
	int		numcolors;
	int 	numtexmaps;

} gxvtxfmt_t;

void 		qgxInitGXShader(void);
void 		qgxInitDefaultShader(void);
gxvtxfmt_t 	qgxGetCurrentGXVtxFmt(void);

#endif /* GX_SHADER_H_ */
