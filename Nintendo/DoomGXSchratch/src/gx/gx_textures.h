/*
 * gx_textures.h
 *
 *  Created on: 26 aug. 2012
 *      Author: Danny
 */

#ifndef GX_TEXTURES_H_
#define GX_TEXTURES_H_

#include "gx_qgx.h"

void qgxInitTextures(void);
void qgxTexImage2D(int miplevel, int internalFormat, int width, int height, int inputFormat, byte * data);
void qgxSetGLTexParam(int glWrapS, int glWrapT, int glFilterMin, int glFilterMax, int glAniso);
void qgxGenTextures(int num, unsigned int *list);
void qgxDeleteTextures(int num, unsigned int *list);
void qgxBindTexture(unsigned int texnum);
void qgxActiveTexMap(unsigned int texmap);

#endif /* GX_TEXTURES_H_ */
