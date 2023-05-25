/*
===========================================================================

Doom 3 GPL Source Code
Copyright (C) 1999-2011 id Software LLC, a ZeniMax Media company. 

This file is part of the Doom 3 GPL Source Code (?Doom 3 Source Code?).  

Doom 3 Source Code is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Doom 3 Source Code is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Doom 3 Source Code.  If not, see <http://www.gnu.org/licenses/>.

In addition, the Doom 3 Source Code is also subject to certain additional terms. You should have received a copy of these additional terms immediately following the terms and conditions of the GNU General Public License which accompanied the Doom 3 Source Code.  If not, please request a copy in writing from id Software at the address below.

If you have questions concerning this license or the applicable additional terms, you may contact in writing id Software LLC, c/o ZeniMax Media Inc., Suite 120, Rockville, Maryland 20850 USA.

===========================================================================
*/

#include "../../idlib/precompiled.h"
#pragma hdrstop

#include "qe3.h"

#define ZERO_EPSILON	1.0E-6

class idVec3D {
public:
	double x, y, z;
	double &			operator[]( const int index ) {
		return (&x)[index];
	}
	void Zero() {
    Sys_Printf("void Zero()\r\n");
}

};

//
// =======================================================================================================================
//    compute a determinant using Sarrus rule ++timo "inline" this with a macro NOTE:: the three idVec3D are understood as
//    columns of the matrix
// =======================================================================================================================
//
double SarrusDet(idVec3D a, idVec3D b, idVec3D c) {
    double retVal;
    memset(&retVal, 0, sizeof(double));
    Sys_Printf("double SarrusDet(idVec3D a, idVec3D b, idVec3D c)\r\n");
    return retVal;
}


//
// =======================================================================================================================
//    ++timo replace everywhere texX by texS etc. ( > and in q3map !) NOTE:: ComputeAxisBase here and in q3map code must
//    always BE THE SAME ! WARNING:: special case behaviour of atan2(y,x) <-> atan(y/x) might not be the same everywhere
//    when x == 0 rotation by (0,RotY,RotZ) assigns X to normal
// =======================================================================================================================
//
void ComputeAxisBase(idVec3 &normal, idVec3D &texS, idVec3D &texT) {
    Sys_Printf("void ComputeAxisBase(idVec3 &normal, idVec3D &texS, idVec3D &texT)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void FaceToBrushPrimitFace(face_t *f) {
    Sys_Printf("void FaceToBrushPrimitFace(face_t *f)\r\n");
}


//
// =======================================================================================================================
//    compute texture coordinates for the winding points
// =======================================================================================================================
//
void EmitBrushPrimitTextureCoordinates(face_t *f, idWinding *w, patchMesh_t *patch) {
    Sys_Printf("void EmitBrushPrimitTextureCoordinates(face_t *f, idWinding *w, patchMesh_t *patch)\r\n");
}


//
// =======================================================================================================================
//    parse a brush in brush primitive format
// =======================================================================================================================
//
void BrushPrimit_Parse(brush_t *b, bool newFormat, const idVec3 origin) {
    Sys_Printf("void BrushPrimit_Parse(brush_t *b, bool newFormat, const idVec3 origin)\r\n");
}


//
// =======================================================================================================================
//    compute a fake shift scale rot representation from the texture matrix these shift scale rot values are to be
//    understood in the local axis base
// =======================================================================================================================
//
void TexMatToFakeTexCoords(float texMat[2][3], float shift[2], float *rot, float scale[2])
{
    Sys_Printf("void TexMatToFakeTexCoords(float texMat[2][3], float shift[2], float *rot, float scale[2])\r\n");
}


//
// =======================================================================================================================
//    compute back the texture matrix from fake shift scale rot the matrix returned must be understood as a qtexture_t
//    with width=2 height=2 ( the default one )
// =======================================================================================================================
//
void FakeTexCoordsToTexMat(float shift[2], float rot, float scale[2], float texMat[2][3]) {
    Sys_Printf("void FakeTexCoordsToTexMat(float shift[2], float rot, float scale[2], float texMat[2][3])\r\n");
}


//
// =======================================================================================================================
//    convert a texture matrix between two qtexture_t if NULL for qtexture_t, basic 2x2 texture is assumed ( straight
//    mapping between s/t coordinates and geometric coordinates )
// =======================================================================================================================
//
void ConvertTexMatWithQTexture(float texMat1[2][3], const idMaterial *qtex1, float texMat2[2][3], const idMaterial *qtex2, float sScale = 1.0, float tScale = 1.0) {
	float	s1, s2;
	s1 = (qtex1 ? static_cast<float>(qtex1->GetEditorImage()->uploadWidth) : 2.0f) / (qtex2 ? static_cast<float>(qtex2->GetEditorImage()->uploadWidth) : 2.0f);
	s2 = (qtex1 ? static_cast<float>(qtex1->GetEditorImage()->uploadHeight) : 2.0f) / (qtex2 ? static_cast<float>(qtex2->GetEditorImage()->uploadHeight) : 2.0f);
	s1 *= sScale;
	s2 *= tScale;
	texMat2[0][0] = s1 * texMat1[0][0];
	texMat2[0][1] = s1 * texMat1[0][1];
	texMat2[0][2] = s1 * texMat1[0][2];
	texMat2[1][0] = s2 * texMat1[1][0];
	texMat2[1][1] = s2 * texMat1[1][1];
	texMat2[1][2] = s2 * texMat1[1][2];
}

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void ConvertTexMatWithQTexture(brushprimit_texdef_t	*texMat1, const idMaterial *qtex1, brushprimit_texdef_t *texMat2, const idMaterial *qtex2, float sScale, float tScale) {
    Sys_Printf("void ConvertTexMatWithQTexture(brushprimit_texdef_t*texMat1, const idMaterial *qtex1, brushprimit_texdef_t *texMat2, const idMaterial *qtex2, float sScale, float tScale)\r\n");
}



//
// =======================================================================================================================
//    texture locking
// =======================================================================================================================
//
void Face_MoveTexture_BrushPrimit(face_t *f, idVec3 delta) {
    Sys_Printf("void Face_MoveTexture_BrushPrimit(face_t *f, idVec3 delta)\r\n");
}


//
// =======================================================================================================================
//    call Face_MoveTexture_BrushPrimit after idVec3D computation
// =======================================================================================================================
//
void Select_ShiftTexture_BrushPrimit(face_t *f, float x, float y, bool autoAdjust) {
    Sys_Printf("void Select_ShiftTexture_BrushPrimit(face_t *f, float x, float y, bool autoAdjust)\r\n");
}


//
// =======================================================================================================================
//    best fitted 2D vector is x.X+y.Y
// =======================================================================================================================
//
void ComputeBest2DVector(idVec3 v, idVec3 X, idVec3 Y, int &x, int &y) {
    Sys_Printf("void ComputeBest2DVector(idVec3 v, idVec3 X, idVec3 Y, int &x, int &y)\r\n");
}


//
// =======================================================================================================================
//    in many case we know three points A,B,C in two axis base B1 and B2 and we want the matrix M so that A(B1) = T *
//    A(B2) NOTE: 2D homogeneous space stuff NOTE: we don't do any check to see if there's a solution or we have a
//    particular case .. need to make sure before calling NOTE: the third coord of the A,B,C point is ignored NOTE: see
//    the commented out section to fill M and D ++timo TODO: update the other members to use this when possible
// =======================================================================================================================
//
void MatrixForPoints(idVec3D M[3], idVec3D D[2], brushprimit_texdef_t *T) {
    Sys_Printf("void MatrixForPoints(idVec3D M[3], idVec3D D[2], brushprimit_texdef_t *T)\r\n");
}


//
// =======================================================================================================================
//    ++timo FIXME quick'n dirty hack, doesn't care about current texture settings (angle) can be improved .. bug #107311
//    mins and maxs are the face bounding box ++timo fixme: we use the face info, mins and maxs are irrelevant
// =======================================================================================================================
//
void Face_FitTexture_BrushPrimit(face_t *f, idVec3 mins, idVec3 maxs, float height, float width) {
    Sys_Printf("void Face_FitTexture_BrushPrimit(face_t *f, idVec3 mins, idVec3 maxs, float height, float width)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void Face_ScaleTexture_BrushPrimit(face_t *face, float sS, float sT) {
    Sys_Printf("void Face_ScaleTexture_BrushPrimit(face_t *face, float sS, float sT)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void Face_RotateTexture_BrushPrimit(face_t *face, float amount, idVec3 origin) {
    Sys_Printf("void Face_RotateTexture_BrushPrimit(face_t *face, float amount, idVec3 origin)\r\n");
}


//
// TEXTURE LOCKING (Relevant to the editor only?)
// internally used for texture locking on rotation and flipping the general
// algorithm is the same for both lockings, it's only the geometric transformation
// part that changes so I wanted to keep it in a single function if there are more
// linear transformations that need the locking, going to a C++ or code pointer
// solution would be best (but right now I want to keep brush_primit.cpp striclty
// C)
//
bool	txlock_bRotation;

// rotation locking params
int		txl_nAxis;
double	txl_fDeg;
idVec3D	txl_vOrigin;

// flip locking params
idVec3D	txl_matrix[3];
idVec3D	txl_origin;

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void TextureLockTransformation_BrushPrimit(face_t *f) {
    Sys_Printf("void TextureLockTransformation_BrushPrimit(face_t *f)\r\n");
}


//
// =======================================================================================================================
//    texture locking called before the points on the face are actually rotated
// =======================================================================================================================
//
void RotateFaceTexture_BrushPrimit(face_t *f, int nAxis, float fDeg, idVec3 vOrigin) {
    Sys_Printf("void RotateFaceTexture_BrushPrimit(face_t *f, int nAxis, float fDeg, idVec3 vOrigin)\r\n");
}


//
// =======================================================================================================================
//    compute the new brush primit texture matrix for a transformation matrix and a flip order flag (change plane o
//    rientation) this matches the select_matrix algo used in select.cpp this needs to be called on the face BEFORE any
//    geometric transformation it will compute the texture matrix that will represent the same texture on the face after
//    the geometric transformation is done
// =======================================================================================================================
//
void ApplyMatrix_BrushPrimit(face_t *f, idMat3 matrix, idVec3 origin) {
    Sys_Printf("void ApplyMatrix_BrushPrimit(face_t *f, idMat3 matrix, idVec3 origin)\r\n");
}


//
// =======================================================================================================================
//    don't do C==A!
// =======================================================================================================================
//
void BPMatMul(float A[2][3], float B[2][3], float C[2][3]) {
    Sys_Printf("void BPMatMul(float A[2][3], float B[2][3], float C[2][3])\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void BPMatDump(float A[2][3]) {
    Sys_Printf("void BPMatDump(float A[2][3])\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void BPMatRotate(float A[2][3], float theta) {
    Sys_Printf("void BPMatRotate(float A[2][3], float theta)\r\n");
}


void Face_GetScale_BrushPrimit(face_t *face, float *s, float *t, float *rot) {
    Sys_Printf("void Face_GetScale_BrushPrimit(face_t *face, float *s, float *t, float *rot)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void Face_SetExplicitScale_BrushPrimit(face_t *face, float s, float t) {
    Sys_Printf("void Face_SetExplicitScale_BrushPrimit(face_t *face, float s, float t)\r\n");
}



void Face_FlipTexture_BrushPrimit(face_t *f, bool y) {
    Sys_Printf("void Face_FlipTexture_BrushPrimit(face_t *f, bool y)\r\n");
}


void Brush_FlipTexture_BrushPrimit(brush_t *b, bool y) {
    Sys_Printf("void Brush_FlipTexture_BrushPrimit(brush_t *b, bool y)\r\n");
}


void Face_SetAxialScale_BrushPrimit(face_t *face, bool y) {
    Sys_Printf("void Face_SetAxialScale_BrushPrimit(face_t *face, bool y)\r\n");
}


