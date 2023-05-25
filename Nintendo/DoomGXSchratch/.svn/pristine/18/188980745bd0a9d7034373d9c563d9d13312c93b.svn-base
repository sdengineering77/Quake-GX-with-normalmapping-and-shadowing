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

#include "../precompiled.h"
#pragma hdrstop

#include "Simd_Generic.h"


//===============================================================
//
//	Generic implementation of idSIMDProcessor
//
//===============================================================

#define UNROLL1(Y) { int _IX; for (_IX=0;_IX<count;_IX++) {Y(_IX);} }
#define UNROLL2(Y) { int _IX, _NM = count&0xfffffffe; for (_IX=0;_IX<_NM;_IX+=2){Y(_IX+0);Y(_IX+1);} if (_IX < count) {Y(_IX);}}
#define UNROLL4(Y) { int _IX, _NM = count&0xfffffffc; for (_IX=0;_IX<_NM;_IX+=4){Y(_IX+0);Y(_IX+1);Y(_IX+2);Y(_IX+3);}for(;_IX<count;_IX++){Y(_IX);}}
#define UNROLL8(Y) { int _IX, _NM = count&0xfffffff8; for (_IX=0;_IX<_NM;_IX+=8){Y(_IX+0);Y(_IX+1);Y(_IX+2);Y(_IX+3);Y(_IX+4);Y(_IX+5);Y(_IX+6);Y(_IX+7);} _NM = count&0xfffffffe; for(;_IX<_NM;_IX+=2){Y(_IX); Y(_IX+1);} if (_IX < count) {Y(_IX);} }

#ifdef _DEBUG
#define NODEFAULT	default: assert( 0 )
#elif _WIN32
#define NODEFAULT	default: __assume( 0 )
#else
#define NODEFAULT
#endif



/*
============
idSIMD_Generic::GetName
============
*/
const char * idSIMD_Generic::GetName( void ) const {
    Sys_Printf("char * idSIMD_Generic::GetName( void )\r\n");
    return NULL;
}

/*
============
idSIMD_Generic::Add

  dst[i] = constant + src[i];
============
*/
void VPCALL idSIMD_Generic::Add( float *dst, const float constant, const float *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Add( float *dst, const float constant, const float *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::Add

  dst[i] = src0[i] + src1[i];
============
*/
void VPCALL idSIMD_Generic::Add( float *dst, const float *src0, const float *src1, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Add( float *dst, const float *src0, const float *src1, const int count )\r\n");

}


/*
============
idSIMD_Generic::Sub

  dst[i] = constant - src[i];
============
*/
void VPCALL idSIMD_Generic::Sub( float *dst, const float constant, const float *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Sub( float *dst, const float constant, const float *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::Sub

  dst[i] = src0[i] - src1[i];
============
*/
void VPCALL idSIMD_Generic::Sub( float *dst, const float *src0, const float *src1, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Sub( float *dst, const float *src0, const float *src1, const int count )\r\n");

}


/*
============
idSIMD_Generic::Mul

  dst[i] = constant * src[i];
============
*/
void VPCALL idSIMD_Generic::Mul( float *dst, const float constant, const float *src0, const int count) {


    Sys_Printf("VPCALL idSIMD_Generic::Mul( float *dst, const float constant, const float *src0, const int count)\r\n");

}


/*
============
idSIMD_Generic::Mul

  dst[i] = src0[i] * src1[i];
============
*/
void VPCALL idSIMD_Generic::Mul( float *dst, const float *src0, const float *src1, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Mul( float *dst, const float *src0, const float *src1, const int count )\r\n");

}


/*
============
idSIMD_Generic::Div

  dst[i] = constant / divisor[i];
============
*/
void VPCALL idSIMD_Generic::Div( float *dst, const float constant, const float *divisor, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Div( float *dst, const float constant, const float *divisor, const int count )\r\n");

}


/*
============
idSIMD_Generic::Div

  dst[i] = src0[i] / src1[i];
============
*/
void VPCALL idSIMD_Generic::Div( float *dst, const float *src0, const float *src1, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Div( float *dst, const float *src0, const float *src1, const int count )\r\n");

}


/*
============
idSIMD_Generic::MulAdd

  dst[i] += constant * src[i];
============
*/
void VPCALL idSIMD_Generic::MulAdd( float *dst, const float constant, const float *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::MulAdd( float *dst, const float constant, const float *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::MulAdd

  dst[i] += src0[i] * src1[i];
============
*/
void VPCALL idSIMD_Generic::MulAdd( float *dst, const float *src0, const float *src1, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::MulAdd( float *dst, const float *src0, const float *src1, const int count )\r\n");

}


/*
============
idSIMD_Generic::MulSub

  dst[i] -= constant * src[i];
============
*/
void VPCALL idSIMD_Generic::MulSub( float *dst, const float constant, const float *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::MulSub( float *dst, const float constant, const float *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::MulSub

  dst[i] -= src0[i] * src1[i];
============
*/
void VPCALL idSIMD_Generic::MulSub( float *dst, const float *src0, const float *src1, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::MulSub( float *dst, const float *src0, const float *src1, const int count )\r\n");

}


/*
============
idSIMD_Generic::Dot

  dst[i] = constant * src[i];
============
*/
void VPCALL idSIMD_Generic::Dot( float *dst, const idVec3 &constant, const idVec3 *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Dot( float *dst, const idVec3 &constant, const idVec3 *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::Dot

  dst[i] = constant * src[i].Normal() + src[i][3];
============
*/
void VPCALL idSIMD_Generic::Dot( float *dst, const idVec3 &constant, const idPlane *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Dot( float *dst, const idVec3 &constant, const idPlane *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::Dot

  dst[i] = constant * src[i].xyz;
============
*/
void VPCALL idSIMD_Generic::Dot( float *dst, const idVec3 &constant, const idDrawVert *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Dot( float *dst, const idVec3 &constant, const idDrawVert *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::Dot

  dst[i] = constant.Normal() * src[i] + constant[3];
============
*/
void VPCALL idSIMD_Generic::Dot( float *dst, const idPlane &constant, const idVec3 *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Dot( float *dst, const idPlane &constant, const idVec3 *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::Dot

  dst[i] = constant.Normal() * src[i].Normal() + constant[3] * src[i][3];
============
*/
void VPCALL idSIMD_Generic::Dot( float *dst, const idPlane &constant, const idPlane *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Dot( float *dst, const idPlane &constant, const idPlane *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::Dot

  dst[i] = constant.Normal() * src[i].xyz + constant[3];
============
*/
void VPCALL idSIMD_Generic::Dot( float *dst, const idPlane &constant, const idDrawVert *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Dot( float *dst, const idPlane &constant, const idDrawVert *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::Dot

  dst[i] = src0[i] * src1[i];
============
*/
void VPCALL idSIMD_Generic::Dot( float *dst, const idVec3 *src0, const idVec3 *src1, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Dot( float *dst, const idVec3 *src0, const idVec3 *src1, const int count )\r\n");

}


/*
============
idSIMD_Generic::Dot

  dot = src1[0] * src2[0] + src1[1] * src2[1] + src1[2] * src2[2] + ...
============
*/
void VPCALL idSIMD_Generic::Dot( float &dot, const float *src1, const float *src2, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Dot( float &dot, const float *src1, const float *src2, const int count )\r\n");

}


/*
============
idSIMD_Generic::CmpGT

  dst[i] = src0[i] > constant;
============
*/
void VPCALL idSIMD_Generic::CmpGT( byte *dst, const float *src0, const float constant, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::CmpGT( byte *dst, const float *src0, const float constant, const int count )\r\n");

}


/*
============
idSIMD_Generic::CmpGT

  dst[i] |= ( src0[i] > constant ) << bitNum;
============
*/
void VPCALL idSIMD_Generic::CmpGT( byte *dst, const byte bitNum, const float *src0, const float constant, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::CmpGT( byte *dst, const byte bitNum, const float *src0, const float constant, const int count )\r\n");

}


/*
============
idSIMD_Generic::CmpGE

  dst[i] = src0[i] >= constant;
============
*/
void VPCALL idSIMD_Generic::CmpGE( byte *dst, const float *src0, const float constant, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::CmpGE( byte *dst, const float *src0, const float constant, const int count )\r\n");

}


/*
============
idSIMD_Generic::CmpGE

  dst[i] |= ( src0[i] >= constant ) << bitNum;
============
*/
void VPCALL idSIMD_Generic::CmpGE( byte *dst, const byte bitNum, const float *src0, const float constant, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::CmpGE( byte *dst, const byte bitNum, const float *src0, const float constant, const int count )\r\n");

}


/*
============
idSIMD_Generic::CmpLT

  dst[i] = src0[i] < constant;
============
*/
void VPCALL idSIMD_Generic::CmpLT( byte *dst, const float *src0, const float constant, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::CmpLT( byte *dst, const float *src0, const float constant, const int count )\r\n");

}


/*
============
idSIMD_Generic::CmpLT

  dst[i] |= ( src0[i] < constant ) << bitNum;
============
*/
void VPCALL idSIMD_Generic::CmpLT( byte *dst, const byte bitNum, const float *src0, const float constant, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::CmpLT( byte *dst, const byte bitNum, const float *src0, const float constant, const int count )\r\n");

}


/*
============
idSIMD_Generic::CmpLE

  dst[i] = src0[i] <= constant;
============
*/
void VPCALL idSIMD_Generic::CmpLE( byte *dst, const float *src0, const float constant, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::CmpLE( byte *dst, const float *src0, const float constant, const int count )\r\n");

}


/*
============
idSIMD_Generic::CmpLE

  dst[i] |= ( src0[i] <= constant ) << bitNum;
============
*/
void VPCALL idSIMD_Generic::CmpLE( byte *dst, const byte bitNum, const float *src0, const float constant, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::CmpLE( byte *dst, const byte bitNum, const float *src0, const float constant, const int count )\r\n");

}


/*
============
idSIMD_Generic::MinMax
============
*/
void VPCALL idSIMD_Generic::MinMax( float &min, float &max, const float *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::MinMax( float &min, float &max, const float *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::MinMax
============
*/
void VPCALL idSIMD_Generic::MinMax( idVec2 &min, idVec2 &max, const idVec2 *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::MinMax( idVec2 &min, idVec2 &max, const idVec2 *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::MinMax
============
*/
void VPCALL idSIMD_Generic::MinMax( idVec3 &min, idVec3 &max, const idVec3 *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::MinMax( idVec3 &min, idVec3 &max, const idVec3 *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::MinMax
============
*/
void VPCALL idSIMD_Generic::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::MinMax
============
*/
void VPCALL idSIMD_Generic::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int *indexes, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int *indexes, const int count )\r\n");

}


/*
============
idSIMD_Generic::Clamp
============
*/
void VPCALL idSIMD_Generic::Clamp( float *dst, const float *src, const float min, const float max, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Clamp( float *dst, const float *src, const float min, const float max, const int count )\r\n");

}


/*
============
idSIMD_Generic::ClampMin
============
*/
void VPCALL idSIMD_Generic::ClampMin( float *dst, const float *src, const float min, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::ClampMin( float *dst, const float *src, const float min, const int count )\r\n");

}


/*
============
idSIMD_Generic::ClampMax
============
*/
void VPCALL idSIMD_Generic::ClampMax( float *dst, const float *src, const float max, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::ClampMax( float *dst, const float *src, const float max, const int count )\r\n");

}


/*
================
idSIMD_Generic::Memcpy
================
*/
void VPCALL idSIMD_Generic::Memcpy( void *dst, const void *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Memcpy( void *dst, const void *src, const int count )\r\n");

}


/*
================
idSIMD_Generic::Memset
================
*/
void VPCALL idSIMD_Generic::Memset( void *dst, const int val, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Memset( void *dst, const int val, const int count )\r\n");

}


/*
============
idSIMD_Generic::Zero16
============
*/
void VPCALL idSIMD_Generic::Zero16( float *dst, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Zero16( float *dst, const int count )\r\n");

}


/*
============
idSIMD_Generic::Negate16
============
*/
void VPCALL idSIMD_Generic::Negate16( float *dst, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Negate16( float *dst, const int count )\r\n");

}


/*
============
idSIMD_Generic::Copy16
============
*/
void VPCALL idSIMD_Generic::Copy16( float *dst, const float *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Copy16( float *dst, const float *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::Add16
============
*/
void VPCALL idSIMD_Generic::Add16( float *dst, const float *src1, const float *src2, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Add16( float *dst, const float *src1, const float *src2, const int count )\r\n");

}


/*
============
idSIMD_Generic::Sub16
============
*/
void VPCALL idSIMD_Generic::Sub16( float *dst, const float *src1, const float *src2, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Sub16( float *dst, const float *src1, const float *src2, const int count )\r\n");

}


/*
============
idSIMD_Generic::Mul16
============
*/
void VPCALL idSIMD_Generic::Mul16( float *dst, const float *src1, const float constant, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::Mul16( float *dst, const float *src1, const float constant, const int count )\r\n");

}


/*
============
idSIMD_Generic::AddAssign16
============
*/
void VPCALL idSIMD_Generic::AddAssign16( float *dst, const float *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::AddAssign16( float *dst, const float *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::SubAssign16
============
*/
void VPCALL idSIMD_Generic::SubAssign16( float *dst, const float *src, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::SubAssign16( float *dst, const float *src, const int count )\r\n");

}


/*
============
idSIMD_Generic::MulAssign16
============
*/
void VPCALL idSIMD_Generic::MulAssign16( float *dst, const float constant, const int count ) {


    Sys_Printf("VPCALL idSIMD_Generic::MulAssign16( float *dst, const float constant, const int count )\r\n");

}


/*
============
idSIMD_Generic::MatX_MultiplyVecX
============
*/
void VPCALL idSIMD_Generic::MatX_MultiplyVecX( idVecX &dst, const idMatX &mat, const idVecX &vec ) {


    Sys_Printf("VPCALL idSIMD_Generic::MatX_MultiplyVecX( idVecX &dst, const idMatX &mat, const idVecX &vec )\r\n");

}


/*
============
idSIMD_Generic::MatX_MultiplyAddVecX
============
*/
void VPCALL idSIMD_Generic::MatX_MultiplyAddVecX( idVecX &dst, const idMatX &mat, const idVecX &vec ) {


    Sys_Printf("VPCALL idSIMD_Generic::MatX_MultiplyAddVecX( idVecX &dst, const idMatX &mat, const idVecX &vec )\r\n");

}


/*
============
idSIMD_Generic::MatX_MultiplySubVecX
============
*/
void VPCALL idSIMD_Generic::MatX_MultiplySubVecX( idVecX &dst, const idMatX &mat, const idVecX &vec ) {


    Sys_Printf("VPCALL idSIMD_Generic::MatX_MultiplySubVecX( idVecX &dst, const idMatX &mat, const idVecX &vec )\r\n");

}


/*
============
idSIMD_Generic::MatX_TransposeMultiplyVecX
============
*/
void VPCALL idSIMD_Generic::MatX_TransposeMultiplyVecX( idVecX &dst, const idMatX &mat, const idVecX &vec ) {


    Sys_Printf("VPCALL idSIMD_Generic::MatX_TransposeMultiplyVecX( idVecX &dst, const idMatX &mat, const idVecX &vec )\r\n");

}


/*
============
idSIMD_Generic::MatX_TransposeMultiplyAddVecX
============
*/
void VPCALL idSIMD_Generic::MatX_TransposeMultiplyAddVecX( idVecX &dst, const idMatX &mat, const idVecX &vec ) {


    Sys_Printf("VPCALL idSIMD_Generic::MatX_TransposeMultiplyAddVecX( idVecX &dst, const idMatX &mat, const idVecX &vec )\r\n");

}


/*
============
idSIMD_Generic::MatX_TransposeMultiplySubVecX
============
*/
void VPCALL idSIMD_Generic::MatX_TransposeMultiplySubVecX( idVecX &dst, const idMatX &mat, const idVecX &vec ) {


    Sys_Printf("VPCALL idSIMD_Generic::MatX_TransposeMultiplySubVecX( idVecX &dst, const idMatX &mat, const idVecX &vec )\r\n");

}


/*
============
idSIMD_Generic::MatX_MultiplyMatX

	optimizes the following matrix multiplications:

	NxN * Nx6
	6xN * Nx6
	Nx6 * 6xN
	6x6 * 6xN

	with N in the range [1-6].
============
*/
void VPCALL idSIMD_Generic::MatX_MultiplyMatX( idMatX &dst, const idMatX &m1, const idMatX &m2 ) {


    Sys_Printf("VPCALL idSIMD_Generic::MatX_MultiplyMatX( idMatX &dst, const idMatX &m1, const idMatX &m2 )\r\n");

}


/*
============
idSIMD_Generic::MatX_TransposeMultiplyMatX

	optimizes the following tranpose matrix multiplications:

	Nx6 * NxN
	6xN * 6x6

	with N in the range [1-6].
============
*/
void VPCALL idSIMD_Generic::MatX_TransposeMultiplyMatX( idMatX &dst, const idMatX &m1, const idMatX &m2 ) {


    Sys_Printf("VPCALL idSIMD_Generic::MatX_TransposeMultiplyMatX( idMatX &dst, const idMatX &m1, const idMatX &m2 )\r\n");

}


/*
============
idSIMD_Generic::MatX_LowerTriangularSolve

  solves x in Lx = b for the n * n sub-matrix of L
  if skip > 0 the first skip elements of x are assumed to be valid already
  L has to be a lower triangular matrix with (implicit) ones on the diagonal
  x == b is allowed
============
*/
void VPCALL idSIMD_Generic::MatX_LowerTriangularSolve( const idMatX &L, float *x, const float *b, const int n, int skip ) {


    Sys_Printf("VPCALL idSIMD_Generic::MatX_LowerTriangularSolve( const idMatX &L, float *x, const float *b, const int n, int skip )\r\n");

}


/*
============
idSIMD_Generic::MatX_LowerTriangularSolveTranspose

  solves x in L'x = b for the n * n sub-matrix of L
  L has to be a lower triangular matrix with (implicit) ones on the diagonal
  x == b is allowed
============
*/
void VPCALL idSIMD_Generic::MatX_LowerTriangularSolveTranspose( const idMatX &L, float *x, const float *b, const int n ) {


    Sys_Printf("VPCALL idSIMD_Generic::MatX_LowerTriangularSolveTranspose( const idMatX &L, float *x, const float *b, const int n )\r\n");

}


/*
============
idSIMD_Generic::MatX_LDLTFactor

  in-place factorization LDL' of the n * n sub-matrix of mat
  the reciprocal of the diagonal elements are stored in invDiag
============
*/
bool VPCALL idSIMD_Generic::MatX_LDLTFactor( idMatX &mat, idVecX &invDiag, const int n ) {


    Sys_Printf("VPCALL idSIMD_Generic::MatX_LDLTFactor( idMatX &mat, idVecX &invDiag, const int n )\r\n");
    return false;
}


/*
============
idSIMD_Generic::BlendJoints
============
*/
void VPCALL idSIMD_Generic::BlendJoints( idJointQuat *joints, const idJointQuat *blendJoints, const float lerp, const int *index, const int numJoints ) {


    Sys_Printf("VPCALL idSIMD_Generic::BlendJoints( idJointQuat *joints, const idJointQuat *blendJoints, const float lerp, const int *index, const int numJoints )\r\n");

}


/*
============
idSIMD_Generic::ConvertJointQuatsToJointMats
============
*/
void VPCALL idSIMD_Generic::ConvertJointQuatsToJointMats( idJointMat *jointMats, const idJointQuat *jointQuats, const int numJoints ) {


    Sys_Printf("VPCALL idSIMD_Generic::ConvertJointQuatsToJointMats( idJointMat *jointMats, const idJointQuat *jointQuats, const int numJoints )\r\n");

}


/*
============
idSIMD_Generic::ConvertJointMatsToJointQuats
============
*/
void VPCALL idSIMD_Generic::ConvertJointMatsToJointQuats( idJointQuat *jointQuats, const idJointMat *jointMats, const int numJoints ) {


    Sys_Printf("VPCALL idSIMD_Generic::ConvertJointMatsToJointQuats( idJointQuat *jointQuats, const idJointMat *jointMats, const int numJoints )\r\n");

}


/*
============
idSIMD_Generic::TransformJoints
============
*/
void VPCALL idSIMD_Generic::TransformJoints( idJointMat *jointMats, const int *parents, const int firstJoint, const int lastJoint ) {


    Sys_Printf("VPCALL idSIMD_Generic::TransformJoints( idJointMat *jointMats, const int *parents, const int firstJoint, const int lastJoint )\r\n");

}


/*
============
idSIMD_Generic::UntransformJoints
============
*/
void VPCALL idSIMD_Generic::UntransformJoints( idJointMat *jointMats, const int *parents, const int firstJoint, const int lastJoint ) {


    Sys_Printf("VPCALL idSIMD_Generic::UntransformJoints( idJointMat *jointMats, const int *parents, const int firstJoint, const int lastJoint )\r\n");

}


/*
============
idSIMD_Generic::TransformVerts
============
*/
void VPCALL idSIMD_Generic::TransformVerts( idDrawVert *verts, const int numVerts, const idJointMat *joints, const idVec4 *weights, const int *index, int numWeights ) {


    Sys_Printf("VPCALL idSIMD_Generic::TransformVerts( idDrawVert *verts, const int numVerts, const idJointMat *joints, const idVec4 *weights, const int *index, int numWeights )\r\n");

}


/*
============
idSIMD_Generic::TracePointCull
============
*/
void VPCALL idSIMD_Generic::TracePointCull( byte *cullBits, byte &totalOr, const float radius, const idPlane *planes, const idDrawVert *verts, const int numVerts ) {


    Sys_Printf("VPCALL idSIMD_Generic::TracePointCull( byte *cullBits, byte &totalOr, const float radius, const idPlane *planes, const idDrawVert *verts, const int numVerts )\r\n");

}


/*
============
idSIMD_Generic::DecalPointCull
============
*/
void VPCALL idSIMD_Generic::DecalPointCull( byte *cullBits, const idPlane *planes, const idDrawVert *verts, const int numVerts ) {


    Sys_Printf("VPCALL idSIMD_Generic::DecalPointCull( byte *cullBits, const idPlane *planes, const idDrawVert *verts, const int numVerts )\r\n");

}


/*
============
idSIMD_Generic::OverlayPointCull
============
*/
void VPCALL idSIMD_Generic::OverlayPointCull( byte *cullBits, idVec2 *texCoords, const idPlane *planes, const idDrawVert *verts, const int numVerts ) {


    Sys_Printf("VPCALL idSIMD_Generic::OverlayPointCull( byte *cullBits, idVec2 *texCoords, const idPlane *planes, const idDrawVert *verts, const int numVerts )\r\n");

}


/*
============
idSIMD_Generic::DeriveTriPlanes

	Derives a plane equation for each triangle.
============
*/
void VPCALL idSIMD_Generic::DeriveTriPlanes( idPlane *planes, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes ) {


    Sys_Printf("VPCALL idSIMD_Generic::DeriveTriPlanes( idPlane *planes, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes )\r\n");

}


/*
============
idSIMD_Generic::DeriveTangents

	Derives the normal and orthogonal tangent vectors for the triangle vertices.
	For each vertex the normal and tangent vectors are derived from all triangles
	using the vertex which results in smooth tangents across the mesh.
	In the process the triangle planes are calculated as well.
============
*/
void VPCALL idSIMD_Generic::DeriveTangents( idPlane *planes, idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes ) {


    Sys_Printf("VPCALL idSIMD_Generic::DeriveTangents( idPlane *planes, idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes )\r\n");

}


/*
============
idSIMD_Generic::DeriveUnsmoothedTangents

	Derives the normal and orthogonal tangent vectors for the triangle vertices.
	For each vertex the normal and tangent vectors are derived from a single dominant triangle.
============
*/
#define DERIVE_UNSMOOTHED_BITANGENT

void VPCALL idSIMD_Generic::DeriveUnsmoothedTangents( idDrawVert *verts, const dominantTri_s *dominantTris, const int numVerts ) {


    Sys_Printf("VPCALL idSIMD_Generic::DeriveUnsmoothedTangents( idDrawVert *verts, const dominantTri_s *dominantTris, const int numVerts )\r\n");

}


/*
============
idSIMD_Generic::NormalizeTangents

	Normalizes each vertex normal and projects and normalizes the
	tangent vectors onto the plane orthogonal to the vertex normal.
============
*/
void VPCALL idSIMD_Generic::NormalizeTangents( idDrawVert *verts, const int numVerts ) {


    Sys_Printf("VPCALL idSIMD_Generic::NormalizeTangents( idDrawVert *verts, const int numVerts )\r\n");

}


/*
============
idSIMD_Generic::CreateTextureSpaceLightVectors

	Calculates light vectors in texture space for the given triangle vertices.
	For each vertex the direction towards the light origin is projected onto texture space.
	The light vectors are only calculated for the vertices referenced by the indexes.
============
*/
void VPCALL idSIMD_Generic::CreateTextureSpaceLightVectors( idVec3 *lightVectors, const idVec3 &lightOrigin, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes ) {


    Sys_Printf("VPCALL idSIMD_Generic::CreateTextureSpaceLightVectors( idVec3 *lightVectors, const idVec3 &lightOrigin, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes )\r\n");

}


/*
============
idSIMD_Generic::CreateSpecularTextureCoords

	Calculates specular texture coordinates for the given triangle vertices.
	For each vertex the normalized direction towards the light origin is added to the
	normalized direction towards the view origin and the result is projected onto texture space.
	The texture coordinates are only calculated for the vertices referenced by the indexes.
============
*/
void VPCALL idSIMD_Generic::CreateSpecularTextureCoords( idVec4 *texCoords, const idVec3 &lightOrigin, const idVec3 &viewOrigin, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes ) {


    Sys_Printf("VPCALL idSIMD_Generic::CreateSpecularTextureCoords( idVec4 *texCoords, const idVec3 &lightOrigin, const idVec3 &viewOrigin, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes )\r\n");

}


/*
============
idSIMD_Generic::CreateShadowCache
============
*/
int VPCALL idSIMD_Generic::CreateShadowCache( idVec4 *vertexCache, int *vertRemap, const idVec3 &lightOrigin, const idDrawVert *verts, const int numVerts ) {


    Sys_Printf("VPCALL idSIMD_Generic::CreateShadowCache( idVec4 *vertexCache, int *vertRemap, const idVec3 &lightOrigin, const idDrawVert *verts, const int numVerts )\r\n");
    return 0;
}


/*
============
idSIMD_Generic::CreateVertexProgramShadowCache
============
*/
int VPCALL idSIMD_Generic::CreateVertexProgramShadowCache( idVec4 *vertexCache, const idDrawVert *verts, const int numVerts ) {


    Sys_Printf("VPCALL idSIMD_Generic::CreateVertexProgramShadowCache( idVec4 *vertexCache, const idDrawVert *verts, const int numVerts )\r\n");
    return 0;
}


/*
============
idSIMD_Generic::UpSamplePCMTo44kHz

  Duplicate samples for 44kHz output.
============
*/
void idSIMD_Generic::UpSamplePCMTo44kHz( float *dest, const short *src, const int numSamples, const int kHz, const int numChannels ) {
    Sys_Printf("void idSIMD_Generic::UpSamplePCMTo44kHz( float *dest, const short *src, const int numSamples, const int kHz, const int numChannels )\r\n");
}


/*
============
idSIMD_Generic::UpSampleOGGTo44kHz

  Duplicate samples for 44kHz output.
============
*/
void idSIMD_Generic::UpSampleOGGTo44kHz( float *dest, const float * const *ogg, const int numSamples, const int kHz, const int numChannels ) {
    Sys_Printf("void idSIMD_Generic::UpSampleOGGTo44kHz( float *dest, const float * const *ogg, const int numSamples, const int kHz, const int numChannels )\r\n");
}


/*
============
idSIMD_Generic::MixSoundTwoSpeakerMono
============
*/
void VPCALL idSIMD_Generic::MixSoundTwoSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] ) {


    Sys_Printf("VPCALL idSIMD_Generic::MixSoundTwoSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] )\r\n");

}


/*
============
idSIMD_Generic::MixSoundTwoSpeakerStereo
============
*/
void VPCALL idSIMD_Generic::MixSoundTwoSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] ) {


    Sys_Printf("VPCALL idSIMD_Generic::MixSoundTwoSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] )\r\n");

}


/*
============
idSIMD_Generic::MixSoundSixSpeakerMono
============
*/
void VPCALL idSIMD_Generic::MixSoundSixSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] ) {


    Sys_Printf("VPCALL idSIMD_Generic::MixSoundSixSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] )\r\n");

}


/*
============
idSIMD_Generic::MixSoundSixSpeakerStereo
============
*/
void VPCALL idSIMD_Generic::MixSoundSixSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] ) {


    Sys_Printf("VPCALL idSIMD_Generic::MixSoundSixSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] )\r\n");

}


/*
============
idSIMD_Generic::MixedSoundToSamples
============
*/
void VPCALL idSIMD_Generic::MixedSoundToSamples( short *samples, const float *mixBuffer, const int numSamples ) {


    Sys_Printf("VPCALL idSIMD_Generic::MixedSoundToSamples( short *samples, const float *mixBuffer, const int numSamples )\r\n");

}

