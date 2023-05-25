/*
 * gx_matrix.h
 *
 *  Created on: 2 sep. 2012
 *      Author: Danny
 */

#ifndef GX_MATRIX_H_
#define GX_MATRIX_H_

#include <ogc/gx.h>

void qgxMatrixMode(int mode);
void qgxLoadProjMatrixf(const float *m, bool perspective);
void qgxLoadMatrixf(const float *m);
void qgxLoadTexMatrixf(int texmtxidx, const float *m);
void qgxLoadTexMatrixIdentity(int texmtxidx);

#endif /* GX_MATRIX_H_ */

