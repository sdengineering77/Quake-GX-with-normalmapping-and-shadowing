/*
 * gxgl.cpp
 *
 *  Created on: 2 sep. 2012
 *      Author: Danny
 * + Some peeking in gl_matrix credits go out
 */
#include "../../idlib/precompiled.h"

#include "gx_qgx.h"

static int 		gxmtxmode = -1;
static Mtx44 	gxprojmatrix;
static Mtx		gxmodelmatrix;


void qgxMatrixMode( int mode ) {
	switch(mode) {
	case GL_MODELVIEW:
		break;
	case GL_PROJECTION:
		break;
	default:
		Sys_Error("Illegal matrix mode\r\n");
	}
	gxmtxmode = mode;
}

/**
 *
 */
void qgxLoadProjMatrixf(const float *m, bool perspective) {
	int i,j;
	u8 type;

	if (perspective) {
		//Sys_Printf(">>> qgxLoadProjMatrixf perspective)\r\n");
		type = GX_PERSPECTIVE;
	} else {
		//Sys_Printf(">>> qgxLoadProjMatrixf GX_ORTHOGRAPHIC)\r\n");
		type = GX_ORTHOGRAPHIC;
	}
	for(j = 0; j < 4; j++) {
		for(i = 0; i < 4; i++) {
			gxprojmatrix[i][j] = *m++;
		}
	}
	if (perspective) {
		// DRS TODO: the calling method must be fixed, gx != infinite matrix?
		guPerspective(gxprojmatrix, 34*2, (f32)720/(f32)480, 0.1F, (float) 0x7FFFFFFF);
	}
	GX_LoadProjectionMtx(gxprojmatrix, type);
}

/**
 * As Doom not uses glPushMatrix and glPopMatrix
 * we can only load a single GL matrix
 */
void qgxLoadMatrixf(const float *m) {

	int i,j;

	if(gxmtxmode == GL_PROJECTION) {
		Sys_Error("Use qgxLoadProjMatrixf() to load projection\r\n");
	}
	if(gxmtxmode == GL_TEXTURE) {
		Sys_Error("Cannot load texture projection with qgxLoadMatrixf\r\n");
	}
	for(j = 0; j < 4; j++) {
		for(i = 0; i < 3; i++) {
			gxmodelmatrix[i][j] = *m++;
		}
		m++;
	}
	//Sys_Printf(">>> qgxLoadMatrixf\r\n");
	GX_LoadPosMtxImm(gxmodelmatrix, GX_PNMTX0);
	GX_LoadNrmMtxImm(gxmodelmatrix, GX_PNMTX0);
	GX_SetCurrentMtx(GX_PNMTX0);

}

void qgxLoadTexMatrixf(int texmtxidx, const float *m) {
	int i,j;
	Mtx tmp;

	for(j = 0; j < 4; j++) {
		for(i = 0; i < 3; i++) {
			tmp[i][j] = *m++;
		}
		m++;
	}
	//Sys_Printf(">>> qgxLoadTexMatrixf\r\n");
	GX_LoadTexMtxImm(tmp, texmtxidx, GX_MTX3x4);

}

void qgxLoadTexMatrixIdentity(int texmtxidx) {
	Mtx tmp;

	guMtxIdentity(tmp);
	GX_LoadTexMtxImm(tmp, texmtxidx, GX_MTX3x4);
Sys_Printf(">>> qgxLoadTexMatrixIdentity\r\n");
}

