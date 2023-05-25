/*
 * gx_qgx.h
 *
 *  Created on: 3 sep. 2012
 *      Author: Danny
 */

#ifndef GX_QGX_H_
#define GX_QGX_H_

#include <ogc/gx.h>
#include <ogc/gu.h>
#include <ogc/cache.h>
#include <GL/gl.h>
#include "gx_matrix.h"
#include "gx_shader.h"
#include "gx_textures.h"
#include "gx_vid.h"
#include "../sys_public.h"

void qgxInit(void);
void qgxScissor(int xOrigin, int yOrigin, int wd, int ht);
void qgxViewport(int xOrigin, int yOrigin, int wd, int ht);
void qgxAlphaFunc(int func, float value);
void qgxSetVertexPointer(int type, void *ptr, int stride);
void qgxDrawElements(int primitiveType, int numIndices, int type, int *indices);
void qgxSetKColor0(float *color, int numChannels);
void qgxSetKColor0(float r, float g, float b, float a);

#endif /* GX_QGX_H_ */
