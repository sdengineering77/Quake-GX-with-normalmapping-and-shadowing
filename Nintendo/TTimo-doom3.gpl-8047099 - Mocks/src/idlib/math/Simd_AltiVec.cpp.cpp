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
#include "Simd_AltiVec.h"
#include <math.h>
#include <float.h>

#ifdef PPC_INTRINSICS
	#include <ppc_intrinsics.h>
#endif

// Doom3 SIMD Library version 0.5
// Patrick Flanagan (pflanagan@apple.com)
// Sanjay Patel (spatel@apple.com)
// Architecture & Performance Group, Apple Computer


//===============================================================
//
//	AltiVec implementation of idSIMDProcessor
//
//===============================================================

#if defined(MACOS_X) && defined(__ppc__)

// Data struct sizes

#ifndef DRAWVERT_PADDED
	// 60 bytes, 15 floats at 4 bytes each
	#define DRAWVERT_OFFSET 15
#else
	// 64 bytes, 16 floats
	#define DRAWVERT_OFFSET 16
#endif
// 16 bytes each, 4 floats
#define PLANE_OFFSET 4
// 16 bytes each, 4 floats
#define IDVEC4_OFFSET 4

// Alignment tests
#define IS_16BYTE_ALIGNED( x ) ( ( (unsigned long)&x & 0x0F ) == 0 )	
#define NOT_16BYTE_ALIGNED( x ) ( ( (unsigned long)&x & 0x0F) != 0 )

// Aligned storing floats
#define ALIGNED_STORE2( ADDR, V0, V1 )			\
	vec_st( V0, 0, ADDR );						\
	vec_st( V1, 16, ADDR )	
	
#define ALIGNED_STORE3( ADDR, V0, V1, V2 )		\
	vec_st( V0, 0, ADDR );						\
	vec_st( V1, 16, ADDR );						\
	vec_st( V2, 32, ADDR )
		
#define ALIGNED_STORE4( ADDR, V0, V1, V2, V3 )  \
	vec_st( V0, 0, ADDR );						\
	vec_st( V1, 16, ADDR );						\
	vec_st( V2, 32, ADDR );						\
	vec_st( V3, 48, ADDR )

#define ALIGNED_STORE6( ADDR, V0, V1, V2, V3, V4, V5 )  \
	vec_st( V0, 0, ADDR );						\
	vec_st( V1, 16, ADDR );						\
	vec_st( V2, 32, ADDR );						\
	vec_st( V3, 48, ADDR );						\
	vec_st( V4, 64, ADDR );						\
	vec_st( V5, 80, ADDR )
	
#define ALIGNED_STORE8( ADDR, V0, V1, V2, V3, V4, V5, V6, V7 )  \
	vec_st( V0, 0, ADDR );						\
	vec_st( V1, 16, ADDR );						\
	vec_st( V2, 32, ADDR );						\
	vec_st( V3, 48, ADDR );						\
	vec_st( V4, 64, ADDR );						\
	vec_st( V5, 80, ADDR );						\
	vec_st( V6, 96, ADDR );						\
	vec_st( V7, 112, ADDR )			
				
// Unaligned storing floats. These assume that we can trash the input
#define UNALIGNED_STORE1( ADDR, V0 ) { \
	/* use store element */				\
	vector unsigned char ULStoreMacroPerm = vec_lvsr( 0, ADDR );	\
	V0 = vec_perm( V0, V0, ULStoreMacroPerm );						\
	vec_ste( V0, 0, ADDR );		\
	vec_ste( V0, 4, ADDR );		\
	vec_ste( V0, 8, ADDR );		\
	vec_ste( V0, 12, ADDR );	\
	}	

#define UNALIGNED_STORE2( ADDR, V0, V1 )	{		\
	/* load up the values that are there now */			\
	vector float ULStoreMacro1 = vec_ld( 0, ADDR );		\
	vector float ULStoreMacro2 = vec_ld( 31, ADDR );	\
	/* generate permute vector and mask	*/				\
	vector unsigned char ULStoreMacroPerm = vec_sub( vec_lvsr( 15, ADDR ), (vector unsigned char)(1) ); \
	vector unsigned int ULStoreMacroMask = vec_perm( (vector unsigned int)(0), (vector unsigned int)(-1), ULStoreMacroPerm ); \
	/* right rotate input data	*/   \
	V0 = vec_perm( V0, V0, ULStoreMacroPerm );	\
	V1 = vec_perm( V1, V1, ULStoreMacroPerm );	\
	/* setup the output vectors		*/			\
	vector float ULStoreVal1, ULStoreVal2, ULStoreVal3;	\
	ULStoreVal1 = vec_sel( ULStoreMacro1, V0, ULStoreMacroMask );	\
	ULStoreVal2 = vec_sel( V0, V1, ULStoreMacroMask );	\
	ULStoreVal3 = vec_sel( V1, ULStoreMacro2, ULStoreMacroMask );	\
	/* store results	*/					\
	vec_st( ULStoreVal1, 0, ADDR );			\
	vec_st( ULStoreVal2, 15, ADDR );		\
	vec_st( ULStoreVal3, 31, ADDR ); }

#define UNALIGNED_STORE3( ADDR, V0, V1, V2 )	{		\
	/* load up the values that are there now */			\
	vector float ULStoreMacro1 = vec_ld( 0, ADDR );		\
	vector float ULStoreMacro2 = vec_ld( 47, ADDR );	\
	/* generate permute vector and mask	*/				\
	vector unsigned char ULStoreMacroPerm = vec_sub( vec_lvsr( 15, ADDR ), (vector unsigned char)(1) ); \
	vector unsigned int ULStoreMacroMask = vec_perm( (vector unsigned int)(0), (vector unsigned int)(-1), ULStoreMacroPerm ); \
	/* right rotate input data	*/   \
	V0 = vec_perm( V0, V0, ULStoreMacroPerm );	\
	V1 = vec_perm( V1, V1, ULStoreMacroPerm );	\
	V2 = vec_perm( V2, V2, ULStoreMacroPerm );	\
	/* setup the output vectors		*/			\
	vector float ULStoreVal1, ULStoreVal2, ULStoreVal3, ULStoreVal4;	\
	ULStoreVal1 = vec_sel( ULStoreMacro1, V0, ULStoreMacroMask );	\
	ULStoreVal2 = vec_sel( V0, V1, ULStoreMacroMask );	\
	ULStoreVal3 = vec_sel( V1, V2, ULStoreMacroMask );	\
	ULStoreVal4 = vec_sel( V2, ULStoreMacro2, ULStoreMacroMask );	\
	/* store results	*/					\
	vec_st( ULStoreVal1, 0, ADDR );			\
	vec_st( ULStoreVal2, 15, ADDR );		\
	vec_st( ULStoreVal3, 31, ADDR );		\
	vec_st( ULStoreVal4, 47, ADDR ); }

#define UNALIGNED_STORE4( ADDR, V0, V1, V2, V3 )	{		\
	/* load up the values that are there now */			\
	vector float ULStoreMacro1 = vec_ld( 0, ADDR );		\
	vector float ULStoreMacro2 = vec_ld( 63, ADDR );	\
	/* generate permute vector and mask	*/				\
	vector unsigned char ULStoreMacroPerm = vec_sub( vec_lvsr( 15, ADDR ), (vector unsigned char)(1) ); \
	vector unsigned int ULStoreMacroMask = vec_perm( (vector unsigned int)(0), (vector unsigned int)(-1), ULStoreMacroPerm ); \
	/* right rotate input data	*/   \
	V0 = vec_perm( V0, V0, ULStoreMacroPerm );	\
	V1 = vec_perm( V1, V1, ULStoreMacroPerm );	\
	V2 = vec_perm( V2, V2, ULStoreMacroPerm );	\
	V3 = vec_perm( V3, V3, ULStoreMacroPerm );	\
	/* setup the output vectors		*/			\
	vector float ULStoreVal1, ULStoreVal2, ULStoreVal3, ULStoreVal4, ULStoreVal5;	\
	ULStoreVal1 = vec_sel( ULStoreMacro1, V0, ULStoreMacroMask );	\
	ULStoreVal2 = vec_sel( V0, V1, ULStoreMacroMask );	\
	ULStoreVal3 = vec_sel( V1, V2, ULStoreMacroMask );	\
	ULStoreVal4 = vec_sel( V2, V3, ULStoreMacroMask );	\
	ULStoreVal5 = vec_sel( V3, ULStoreMacro2, ULStoreMacroMask );	\
	/* store results	*/					\
	vec_st( ULStoreVal1, 0, ADDR );			\
	vec_st( ULStoreVal2, 15, ADDR );		\
	vec_st( ULStoreVal3, 31, ADDR );		\
	vec_st( ULStoreVal4, 47, ADDR );		\
	vec_st( ULStoreVal5, 63, ADDR );	}

#define UNALIGNED_STORE6( ADDR, V0, V1, V2, V3, V4, V5 )	{		\
	/* load up the values that are there now */			\
	vector float ULStoreMacro1 = vec_ld( 0, ADDR );		\
	vector float ULStoreMacro2 = vec_ld( 95, ADDR );	\
	/* generate permute vector and mask	*/				\
	vector unsigned char ULStoreMacroPerm = vec_sub( vec_lvsr( 15, ADDR ), (vector unsigned char)(1) ); \
	vector unsigned int ULStoreMacroMask = vec_perm( (vector unsigned int)(0), (vector unsigned int)(-1), ULStoreMacroPerm ); \
	/* right rotate input data	*/   \
	V0 = vec_perm( V0, V0, ULStoreMacroPerm );	\
	V1 = vec_perm( V1, V1, ULStoreMacroPerm );	\
	V2 = vec_perm( V2, V2, ULStoreMacroPerm );	\
	V3 = vec_perm( V3, V3, ULStoreMacroPerm );	\
	V4 = vec_perm( V4, V4, ULStoreMacroPerm );	\
	V5 = vec_perm( V5, V5, ULStoreMacroPerm );	\
	/* setup the output vectors		*/			\
	vector float ULStoreVal1, ULStoreVal2, ULStoreVal3, ULStoreVal4, ULStoreVal5, ULStoreVal6, ULStoreVal7;	\
	ULStoreVal1 = vec_sel( ULStoreMacro1, V0, ULStoreMacroMask );	\
	ULStoreVal2 = vec_sel( V0, V1, ULStoreMacroMask );	\
	ULStoreVal3 = vec_sel( V1, V2, ULStoreMacroMask );	\
	ULStoreVal4 = vec_sel( V2, V3, ULStoreMacroMask );	\
	ULStoreVal5 = vec_sel( V3, V4, ULStoreMacroMask );	\
	ULStoreVal6 = vec_sel( V4, V5, ULStoreMacroMask );	\
	ULStoreVal7 = vec_sel( V5, ULStoreMacro2, ULStoreMacroMask );	\
	/* store results	*/					\
	vec_st( ULStoreVal1, 0, ADDR );			\
	vec_st( ULStoreVal2, 15, ADDR );		\
	vec_st( ULStoreVal3, 31, ADDR );		\
	vec_st( ULStoreVal4, 47, ADDR );		\
	vec_st( ULStoreVal5, 63, ADDR );		\
	vec_st( ULStoreVal6, 79, ADDR );		\
	vec_st( ULStoreVal7, 95, ADDR );	}

#define UNALIGNED_STORE9( ADDR, V0, V1, V2, V3, V4, V5, V6, V7, V8 )	{		\
	/* load up the values that are there now */			\
	vector float ULStoreMacro1 = vec_ld( 0, ADDR );		\
	vector float ULStoreMacro2 = vec_ld( 143, ADDR );	\
	/* generate permute vector and mask	*/				\
	vector unsigned char ULStoreMacroPerm = vec_sub( vec_lvsr( 15, ADDR ), (vector unsigned char)(1) ); \
	vector unsigned int ULStoreMacroMask = vec_perm( (vector unsigned int)(0), (vector unsigned int)(-1), ULStoreMacroPerm ); \
	/* right rotate input data	*/   \
	V0 = vec_perm( V0, V0, ULStoreMacroPerm );	\
	V1 = vec_perm( V1, V1, ULStoreMacroPerm );	\
	V2 = vec_perm( V2, V2, ULStoreMacroPerm );	\
	V3 = vec_perm( V3, V3, ULStoreMacroPerm );	\
	V4 = vec_perm( V4, V4, ULStoreMacroPerm );	\
	V5 = vec_perm( V5, V5, ULStoreMacroPerm );	\
	V6 = vec_perm( V6, V6, ULStoreMacroPerm );	\
	V7 = vec_perm( V7, V7, ULStoreMacroPerm );	\
	V8 = vec_perm( V8, V8, ULStoreMacroPerm );	\
	/* setup the output vectors		*/			\
	vector float ULStoreVal1, ULStoreVal2, ULStoreVal3, ULStoreVal4, ULStoreVal5, ULStoreVal6, ULStoreVal7;	\
	vector float ULStoreVal8, ULStoreVal9, ULStoreVal10;	\
	ULStoreVal1 = vec_sel( ULStoreMacro1, V0, ULStoreMacroMask );	\
	ULStoreVal2 = vec_sel( V0, V1, ULStoreMacroMask );	\
	ULStoreVal3 = vec_sel( V1, V2, ULStoreMacroMask );	\
	ULStoreVal4 = vec_sel( V2, V3, ULStoreMacroMask );	\
	ULStoreVal5 = vec_sel( V3, V4, ULStoreMacroMask );	\
	ULStoreVal6 = vec_sel( V4, V5, ULStoreMacroMask );	\
	ULStoreVal7 = vec_sel( V5, V6, ULStoreMacroMask );	\
	ULStoreVal8 = vec_sel( V6, V7, ULStoreMacroMask );	\
	ULStoreVal9 = vec_sel( V7, V8, ULStoreMacroMask );	\
	ULStoreVal10 = vec_sel( V8, ULStoreMacro2, ULStoreMacroMask );	\
	/* store results	*/					\
	vec_st( ULStoreVal1, 0, ADDR );			\
	vec_st( ULStoreVal2, 15, ADDR );		\
	vec_st( ULStoreVal3, 31, ADDR );		\
	vec_st( ULStoreVal4, 47, ADDR );		\
	vec_st( ULStoreVal5, 63, ADDR );		\
	vec_st( ULStoreVal6, 79, ADDR );		\
	vec_st( ULStoreVal7, 95, ADDR );		\
	vec_st( ULStoreVal8, 111, ADDR );		\
	vec_st( ULStoreVal9, 127, ADDR );		\
	vec_st( ULStoreVal10, 143, ADDR );	}

/*
============
idSIMD_AltiVec::GetName
============
*/
const char *idSIMD_AltiVec::GetName( void ) const {
    Sys_Printf("char *idSIMD_AltiVec::GetName( void )\r\n");
    return NULL;
}


/*
	Helper Functions
*/
#if 0
// Prints the values of a vector, useful for debugging but
// should never be called in real code
inline void debugPrintVector( vector float v, char *msg ) {
    Sys_Printf("void debugPrintVector( vector float v, char *msg )\r\n");
}


inline void debugPrintVector( vector unsigned int v, char *msg ) {
    Sys_Printf("void debugPrintVector( vector unsigned int v, char *msg )\r\n");
}


inline void debugPrintVector( vector bool int v, char *msg ) {
    Sys_Printf("void debugPrintVector( vector bool int v, char *msg )\r\n");
}


inline void debugPrintVector( vector unsigned char v, char *msg ) {
    Sys_Printf("void debugPrintVector( vector unsigned char v, char *msg )\r\n");
}


inline void debugPrintVector( vector unsigned short v, char *msg ) {
    Sys_Printf("void debugPrintVector( vector unsigned short v, char *msg )\r\n");
}

#endif
/*
===============
  Reciprocal

  For each element in vector:
	n = 1 / n
===============
*/ 
   
// Use Newton-Raphson to calculate reciprocal of a vector
inline vector float Reciprocal( vector float v ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float Reciprocal( vector float v )\r\n");
    return retVal;
}


/*
===============
  ReciprocalSquareRoot

  For each element in vector:
	n = 1 / sqrt(n)
===============
*/
// Reciprocal square root estimate of a vector 
inline vector float ReciprocalSquareRoot( vector float v ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float ReciprocalSquareRoot( vector float v )\r\n");
    return retVal;
}



/*
===============
  Divide

  For each element in vectors:
	n = a / b
===============
*/
// Use reciprocal estimate and multiply to divide a vector
inline vector float Divide( vector float a, vector float b ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float Divide( vector float a, vector float b )\r\n");
    return retVal;
}


/*
===============
  loadSplatUnalignedScalar

  For each element in vector:
	n = s
===============
*/
inline vector float loadSplatUnalignedScalar( const float *s ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float loadSplatUnalignedScalar( const float *s )\r\n");
    return retVal;
}


/*
===============
  VectorATan16

  For each element in vector:
	n = idMath::ATan16( x, y )
===============
*/
// calculates arc tangent of a vector with 16 bits of precision, based on atan16 in idMath
inline vector float VectorATan16( vector float x, vector float y ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float VectorATan16( vector float x, vector float y )\r\n");
    return retVal;
}


/*
===============
  VectorSin16

  For each element in vector:
	n = idMath::Sin16( v )
===============
*/
inline vector float VectorSin16( vector float v ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float VectorSin16( vector float v )\r\n");
    return retVal;
}


/*
===============
  vecSplatWithRunTime

  For each element in vector:
	n = v(i)
===============
*/
// splats an element across a vector using a runtime variable
inline vector float vecSplatWithRunTime( vector float v, int i ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float vecSplatWithRunTime( vector float v, int i )\r\n");
    return retVal;
}



/*
===============
  FastScalarInvSqrt
  
	n = 1 / sqrt( f )
===============
*/
inline float FastScalarInvSqrt( float f ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float FastScalarInvSqrt( float f )\r\n");
    return retVal;
}


/*
===============
  FastScalarInvSqrt_x3
  
	arg1 = 1 / sqrt( arg1 )
	arg2 = 1 / sqrt( arg2 )
	arg3 = 1 / sqrt( arg3 )	
===============
*/
inline void FastScalarInvSqrt_x3( float *arg1, float *arg2, float *arg3 ) {
    Sys_Printf("void FastScalarInvSqrt_x3( float *arg1, float *arg2, float *arg3 )\r\n");
}


/*
===============
  FastScalarInvSqrt_x6
  
	arg1 = 1 / sqrt( arg1 )
	arg2 = 1 / sqrt( arg2 )
	arg3 = 1 / sqrt( arg3 )	
	arg4 = 1 / sqrt( arg4 )	
	arg5 = 1 / sqrt( arg5 )	
	arg6 = 1 / sqrt( arg6 )	

	On a G5, you've got 2 pipeline stages to fill. (2 FPU's with 6 stages each)
===============
*/
inline void FastScalarInvSqrt_x6( float *arg1, float *arg2, float *arg3, float *arg4, float *arg5, float *arg6 ) {
    Sys_Printf("void FastScalarInvSqrt_x6( float *arg1, float *arg2, float *arg3, float *arg4, float *arg5, float *arg6 )\r\n");
}



// End Helper Functions

#ifdef ENABLE_SIMPLE_MATH

/*
============
idSIMD_AltiVec::Add

  dst[i] = constant + src[i];
============
*/
void VPCALL idSIMD_AltiVec::Add( float *dst, const float constant, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Add( float *dst, const float constant, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::Add

  dst[i] = src0[i] + src1[i];
============
*/
void VPCALL idSIMD_AltiVec::Add( float *dst, const float *src0, const float *src1, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Add( float *dst, const float *src0, const float *src1, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::Sub

  dst[i] = constant - src[i];
============
*/
void VPCALL idSIMD_AltiVec::Sub( float *dst, const float constant, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Sub( float *dst, const float constant, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::Sub

  dst[i] = src0[i] - src1[i];
============
*/
void VPCALL idSIMD_AltiVec::Sub( float *dst, const float *src0, const float *src1, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Sub( float *dst, const float *src0, const float *src1, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::Mul

  dst[i] = constant * src[i];
============
*/
void VPCALL idSIMD_AltiVec::Mul( float *dst, const float constant, const float *src, const int count) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Mul( float *dst, const float constant, const float *src, const int count)\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::Mul

  dst[i] = src0[i] * src1[i];
============
*/
void VPCALL idSIMD_AltiVec::Mul( float *dst, const float *src0, const float *src1, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Mul( float *dst, const float *src0, const float *src1, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::Div

  dst[i] = constant / divisor[i];
============
*/
void VPCALL idSIMD_AltiVec::Div( float *dst, const float constant, const float *divisor, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Div( float *dst, const float constant, const float *divisor, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::Div

  dst[i] = src0[i] / src1[i];
============
*/
void VPCALL idSIMD_AltiVec::Div( float *dst, const float *src0, const float *src1, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Div( float *dst, const float *src0, const float *src1, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::MulAdd

  dst[i] += constant * src[i];
============
*/
void VPCALL idSIMD_AltiVec::MulAdd( float *dst, const float constant, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MulAdd( float *dst, const float constant, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::MulAdd

  dst[i] += src0[i] * src1[i];  
============
*/
void VPCALL idSIMD_AltiVec::MulAdd( float *dst, const float *src0, const float *src1, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MulAdd( float *dst, const float *src0, const float *src1, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::MulSub

  dst[i] -= constant * src[i];
============
*/
void VPCALL idSIMD_AltiVec::MulSub( float *dst, const float constant, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MulSub( float *dst, const float constant, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::MulSub

  dst[i] -= src0[i] * src1[i];
============
*/
void VPCALL idSIMD_AltiVec::MulSub( float *dst, const float *src0, const float *src1, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MulSub( float *dst, const float *src0, const float *src1, const int count )\r\n");
    return retVal;
}


#endif /* ENABLE_SIMPLE_MATH */

#ifdef ENABLE_DOT
/*
============
idSIMD_AltiVec::Dot

  dst[i] = constant * src[i];
============
*/
void VPCALL idSIMD_AltiVec::Dot( float *dst, const idVec3 &constant, const idVec3 *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Dot( float *dst, const idVec3 &constant, const idVec3 *src, const int count )\r\n");
    return retVal;
}



/*
============
idSIMD_AltiVec::Dot

  dst[i] = constant * src[i].Normal() + src[i][3];
============
*/
void VPCALL idSIMD_AltiVec::Dot( float *dst, const idVec3 &constant, const idPlane *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Dot( float *dst, const idVec3 &constant, const idPlane *src, const int count )\r\n");
    return retVal;
}


#ifndef DRAWVERT_PADDED
/*
============
idSIMD_AltiVec::Dot

  dst[i] = constant * src[i].xyz;
============
*/
void VPCALL idSIMD_AltiVec::Dot( float *dst, const idVec3 &constant, const idDrawVert *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Dot( float *dst, const idVec3 &constant, const idDrawVert *src, const int count )\r\n");
    return retVal;
}

#else
/*
============
idSIMD_AltiVec::Dot

  dst[i] = constant * src[i].xyz;
============
*/
void VPCALL idSIMD_AltiVec::Dot( float *dst, const idVec3 &constant, const idDrawVert *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Dot( float *dst, const idVec3 &constant, const idDrawVert *src, const int count )\r\n");
    return retVal;
}


#endif /* DRAWVERT_PADDED */

/*
============
idSIMD_AltiVec::Dot

  dst[i] = constant.Normal() * src[i] + constant[3];  
============
*/
void VPCALL idSIMD_AltiVec::Dot( float *dst, const idPlane &constant, const idVec3 *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Dot( float *dst, const idPlane &constant, const idVec3 *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::Dot

  dst[i] = constant.Normal() * src[i].Normal() + constant[3] * src[i][3];
============
*/
void VPCALL idSIMD_AltiVec::Dot( float *dst, const idPlane &constant, const idPlane *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Dot( float *dst, const idPlane &constant, const idPlane *src, const int count )\r\n");
    return retVal;
}



#ifndef DRAWVERT_PADDED
/*
============
idSIMD_AltiVec::Dot

  dst[i] = constant.Normal() * src[i].xyz + constant[3];
============
*/
void VPCALL idSIMD_AltiVec::Dot( float *dst, const idPlane &constant, const idDrawVert *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Dot( float *dst, const idPlane &constant, const idDrawVert *src, const int count )\r\n");
    return retVal;
}

#else
/*
============
idSIMD_AltiVec::Dot

  dst[i] = constant.Normal() * src[i].xyz + constant[3];
============
*/
void VPCALL idSIMD_AltiVec::Dot( float *dst, const idPlane &constant, const idDrawVert *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Dot( float *dst, const idPlane &constant, const idDrawVert *src, const int count )\r\n");
    return retVal;
}


#endif /* DRAWVERT_PADDED */

/*
============
idSIMD_AltiVec::Dot

  dst[i] = src0[i] * src1[i];
============
*/
void VPCALL idSIMD_AltiVec::Dot( float *dst, const idVec3 *src0, const idVec3 *src1, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Dot( float *dst, const idVec3 *src0, const idVec3 *src1, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::Dot

  dot = src1[0] * src2[0] + src1[1] * src2[1] + src1[2] * src2[2] + ...
============
*/
void VPCALL idSIMD_AltiVec::Dot( float &dot, const float *src1, const float *src2, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Dot( float &dot, const float *src1, const float *src2, const int count )\r\n");
    return retVal;
}

#endif /* ENABLE_DOT */

#ifdef ENABLE_COMPARES

/*
============
idSIMD_AltiVec::CmpGT

  dst[i] = src0[i] > constant;
============
*/

void VPCALL idSIMD_AltiVec::CmpGT( byte *dst, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::CmpGT( byte *dst, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}



/*
============
idSIMD_AltiVec::CmpGT

  dst[i] |= ( src0[i] > constant ) << bitNum;
============
*/
void VPCALL idSIMD_AltiVec::CmpGT( byte *dst, const byte bitNum, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::CmpGT( byte *dst, const byte bitNum, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::CmpGE

  dst[i] = src0[i] >= constant;
============
*/
void VPCALL idSIMD_AltiVec::CmpGE( byte *dst, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::CmpGE( byte *dst, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::CmpGE

  dst[i] |= ( src0[i] >= constant ) << bitNum;
============
*/
void VPCALL idSIMD_AltiVec::CmpGE( byte *dst, const byte bitNum, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::CmpGE( byte *dst, const byte bitNum, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}



/*
============
idSIMD_AltiVec::CmpLT

  dst[i] = src0[i] < constant;
============
*/
void VPCALL idSIMD_AltiVec::CmpLT( byte *dst, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::CmpLT( byte *dst, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::CmpLT

  dst[i] |= ( src0[i] < constant ) << bitNum;
============
*/
void VPCALL idSIMD_AltiVec::CmpLT( byte *dst, const byte bitNum, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::CmpLT( byte *dst, const byte bitNum, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}

//#endif

/*
============
idSIMD_AltiVec::CmpLE

  dst[i] = src0[i] <= constant;
============
*/
void VPCALL idSIMD_AltiVec::CmpLE( byte *dst, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::CmpLE( byte *dst, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::CmpLE

  dst[i] |= ( src0[i] <= constant ) << bitNum;
============
*/
void VPCALL idSIMD_AltiVec::CmpLE( byte *dst, const byte bitNum, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::CmpLE( byte *dst, const byte bitNum, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}

#endif /* ENABLE_COMPARES */

#ifdef ENABLE_MINMAX

/*
============
idSIMD_AltiVec::MinMax
============
*/
void VPCALL idSIMD_AltiVec::MinMax( float &min, float &max, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MinMax( float &min, float &max, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::MinMax
============
*/
void VPCALL idSIMD_AltiVec::MinMax( idVec2 &min, idVec2 &max, const idVec2 *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MinMax( idVec2 &min, idVec2 &max, const idVec2 *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::MinMax
============
*/
void VPCALL idSIMD_AltiVec::MinMax( idVec3 &min, idVec3 &max, const idVec3 *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MinMax( idVec3 &min, idVec3 &max, const idVec3 *src, const int count )\r\n");
    return retVal;
}


#ifndef DRAWVERT_PADDED
/*
============
idSIMD_AltiVec::MinMax
============
*/
void VPCALL idSIMD_AltiVec::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int count )\r\n");
    return retVal;
}

#else
/*
============
idSIMD_AltiVec::MinMax
============
*/
void VPCALL idSIMD_AltiVec::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int count )\r\n");
    return retVal;
}


#endif /* DRAWVERT_PADDED */

#ifndef DRAWVERT_PADDED
/*
============
idSIMD_AltiVec::MinMax
============
*/
void VPCALL idSIMD_AltiVec::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int *indexes, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int *indexes, const int count )\r\n");
    return retVal;
}

#else
/*
============
idSIMD_AltiVec::MinMax
============
*/
void VPCALL idSIMD_AltiVec::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int *indexes, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int *indexes, const int count )\r\n");
    return retVal;
}



#endif /* DRAWVERT_PADDED */

#endif /* ENABLE_MINMAX */

#ifdef ENABLE_CLAMP

/*
============
idSIMD_AltiVec::Clamp
============
*/
void VPCALL idSIMD_AltiVec::Clamp( float *dst, const float *src, const float min, const float max, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Clamp( float *dst, const float *src, const float min, const float max, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::ClampMin
============
*/
void VPCALL idSIMD_AltiVec::ClampMin( float *dst, const float *src, const float min, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::ClampMin( float *dst, const float *src, const float min, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::ClampMax
============
*/
void VPCALL idSIMD_AltiVec::ClampMax( float *dst, const float *src, const float max, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::ClampMax( float *dst, const float *src, const float max, const int count )\r\n");
    return retVal;
}


#endif /* ENABLE_CLAMP */

#ifdef ENABLE_16ROUTINES 

/*
============
idSIMD_AltiVec::Zero16
============
*/
void VPCALL idSIMD_AltiVec::Zero16( float *dst, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Zero16( float *dst, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::Negate16

	Assumptions:
		dst is aligned
============
*/
void VPCALL idSIMD_AltiVec::Negate16( float *dst, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Negate16( float *dst, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::Copy16
============
*/
void VPCALL idSIMD_AltiVec::Copy16( float *dst, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Copy16( float *dst, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::Add16
	
	Assumptions:
		Assumes dst, src1, src2 all start at aligned address
============
*/
void VPCALL idSIMD_AltiVec::Add16( float *dst, const float *src1, const float *src2, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Add16( float *dst, const float *src1, const float *src2, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::Sub16

	Assumptions:
		Assumes that dst, src1, and src2 all start at aligned address 
============
*/
void VPCALL idSIMD_AltiVec::Sub16( float *dst, const float *src1, const float *src2, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Sub16( float *dst, const float *src1, const float *src2, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::Mul16

	Assumptions:
		Assumes that dst and src1 start at aligned address
============
*/
void VPCALL idSIMD_AltiVec::Mul16( float *dst, const float *src1, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::Mul16( float *dst, const float *src1, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::AddAssign16

	Assumptions:
		Assumes that dst and src start at aligned address
============
*/
void VPCALL idSIMD_AltiVec::AddAssign16( float *dst, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::AddAssign16( float *dst, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::SubAssign16

	Assumptions:
		Assumes that dst and src start at aligned address
============
*/
void VPCALL idSIMD_AltiVec::SubAssign16( float *dst, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::SubAssign16( float *dst, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::MulAssign16

	Assumptions:
		Assumes that dst starts at aligned address and count is multiple of 4
============
*/
void VPCALL idSIMD_AltiVec::MulAssign16( float *dst, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MulAssign16( float *dst, const float constant, const int count )\r\n");
    return retVal;
}


#endif /* ENABLE_16ROUTINES */

#ifdef ENABLE_LOWER_TRIANGULAR

/*
============
idSIMD_AltiVec::MatX_LowerTriangularSolve

  solves x in L * x = b for the first n rows of L
  if skip > 0 the first skip elements of x are assumed to be valid already
  L has to be a lower triangular matrix with (implicit) ones on the diagonal
  x == b is allowed
============
*/

void VPCALL idSIMD_AltiVec::MatX_LowerTriangularSolve( const idMatX &L, float *x, const float *b, const int n, int skip ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MatX_LowerTriangularSolve( const idMatX &L, float *x, const float *b, const int n, int skip )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::MatX_LowerTriangularSolveTranspose

  solves x in L.Transpose() * x = b for the first n rows of L
  L has to be a lower triangular matrix with (implicit) ones on the diagonal
  x == b is allowed
============
*/
void VPCALL idSIMD_AltiVec::MatX_LowerTriangularSolveTranspose( const idMatX &L, float *x, const float *b, const int n ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MatX_LowerTriangularSolveTranspose( const idMatX &L, float *x, const float *b, const int n )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::MatX_LDLTFactor
============
*/
bool VPCALL idSIMD_AltiVec::MatX_LDLTFactor( idMatX &mat, idVecX &invDiag, const int n ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MatX_LDLTFactor( idMatX &mat, idVecX &invDiag, const int n )\r\n");
    return retVal;
}

#endif /* ENABLE_LOWER_TRIANGULAR */


#ifdef LIVE_VICARIOUSLY
/*
============
idSIMD_AltiVec::BlendJoints
============
*/
void VPCALL idSIMD_AltiVec::BlendJoints( idJointQuat *joints, const idJointQuat *blendJoints, const float lerp, const int *index, const int numJoints ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::BlendJoints( idJointQuat *joints, const idJointQuat *blendJoints, const float lerp, const int *index, const int numJoints )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::ConvertJointQuatsToJointMats
============
*/

// SSE doesn't vectorize this, and I don't think we should either. Its mainly just copying data, there's very little math involved and
// it's not easily parallelizable
void VPCALL idSIMD_AltiVec::ConvertJointQuatsToJointMats( idJointMat *jointMats, const idJointQuat *jointQuats, const int numJoints ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::ConvertJointQuatsToJointMats( idJointMat *jointMats, const idJointQuat *jointQuats, const int numJoints )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::ConvertJointMatsToJointQuats
============
*/
void VPCALL idSIMD_AltiVec::ConvertJointMatsToJointQuats( idJointQuat *jointQuats, const idJointMat *jointMats, const int numJoints ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::ConvertJointMatsToJointQuats( idJointQuat *jointQuats, const idJointMat *jointMats, const int numJoints )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::TransformJoints
============
*/
void VPCALL idSIMD_AltiVec::TransformJoints( idJointMat *jointMats, const int *parents, const int firstJoint, const int lastJoint ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::TransformJoints( idJointMat *jointMats, const int *parents, const int firstJoint, const int lastJoint )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::UntransformJoints
============
*/
void VPCALL idSIMD_AltiVec::UntransformJoints( idJointMat *jointMats, const int *parents, const int firstJoint, const int lastJoint ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::UntransformJoints( idJointMat *jointMats, const int *parents, const int firstJoint, const int lastJoint )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::TransformVerts
============
*/

// Here we don't have much for the vector unit to do, and the gain we get from doing the math
// in parallel is eaten by doing unaligned stores. 
void VPCALL idSIMD_AltiVec::TransformVerts( idDrawVert *verts, const int numVerts, const idJointMat *joints, const idVec4 *weights, const int *index, int numWeights ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::TransformVerts( idDrawVert *verts, const int numVerts, const idJointMat *joints, const idVec4 *weights, const int *index, int numWeights )\r\n");
    return retVal;
}

#endif /* LIVE_VICARIOUSLY */

#ifdef ENABLE_CULL

#ifndef DRAWVERT_PADDED
/*
============
idSIMD_AltiVec::TracePointCull
============
*/
void VPCALL idSIMD_AltiVec::TracePointCull( byte *cullBits, byte &totalOr, const float radius, const idPlane *planes, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::TracePointCull( byte *cullBits, byte &totalOr, const float radius, const idPlane *planes, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}

#else

/*
============
idSIMD_AltiVec::TracePointCull
============
*/
void VPCALL idSIMD_AltiVec::TracePointCull( byte *cullBits, byte &totalOr, const float radius, const idPlane *planes, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::TracePointCull( byte *cullBits, byte &totalOr, const float radius, const idPlane *planes, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}


#endif /* DRAWVERT_PADDED */

#ifndef DRAWVERT_PADDED
/*
============
idSIMD_AltiVec::DecalPointCull
============
*/
void VPCALL idSIMD_AltiVec::DecalPointCull( byte *cullBits, const idPlane *planes, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::DecalPointCull( byte *cullBits, const idPlane *planes, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}


#else

/*
============
idSIMD_AltiVec::DecalPointCull
============
*/
void VPCALL idSIMD_AltiVec::DecalPointCull( byte *cullBits, const idPlane *planes, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::DecalPointCull( byte *cullBits, const idPlane *planes, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}



#endif /*DRAWVERT_PADDED */

#ifndef DRAWVERT_PADDED
/*
============
idSIMD_AltiVec::OverlayPointCull
============
*/
void VPCALL idSIMD_AltiVec::OverlayPointCull( byte *cullBits, idVec2 *texCoords, const idPlane *planes, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::OverlayPointCull( byte *cullBits, idVec2 *texCoords, const idPlane *planes, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}

#else

/*
============
idSIMD_AltiVec::OverlayPointCull
============
*/
void VPCALL idSIMD_AltiVec::OverlayPointCull( byte *cullBits, idVec2 *texCoords, const idPlane *planes, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::OverlayPointCull( byte *cullBits, idVec2 *texCoords, const idPlane *planes, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}



#endif /* DRAWVERT_PADDED */

#endif /* ENABLE_CULL */

#ifdef ENABLE_DERIVE
/*
============
idSIMD_AltiVec::DeriveTriPlanes

	Derives a plane equation for each triangle.
============
*/
void VPCALL idSIMD_AltiVec::DeriveTriPlanes( idPlane *planes, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::DeriveTriPlanes( idPlane *planes, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes )\r\n");
    return retVal;
}


/*
============
idSIMD_AltiVec::DeriveTangents

	Derives the normal and orthogonal tangent vectors for the triangle vertices.
	For each vertex the normal and tangent vectors are derived from all triangles
	using the vertex which results in smooth tangents across the mesh.
	In the process the triangle planes are calculated as well.

============
*/
void VPCALL idSIMD_AltiVec::DeriveTangents( idPlane *planes, idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::DeriveTangents( idPlane *planes, idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes )\r\n");
    return retVal;
}



#ifdef DERIVE_UNSMOOTH_DRAWVERT_ALIGNED

/*
============
idSIMD_AltiVec::DeriveUnsmoothedTangents

	Derives the normal and orthogonal tangent vectors for the triangle vertices.
	For each vertex the normal and tangent vectors are derived from a single dominant triangle.
============
*/
#define DERIVE_UNSMOOTHED_BITANGENT
void VPCALL idSIMD_AltiVec::DeriveUnsmoothedTangents( idDrawVert *verts, const dominantTri_s *dominantTris, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::DeriveUnsmoothedTangents( idDrawVert *verts, const dominantTri_s *dominantTris, const int numVerts )\r\n");
    return retVal;
}


#else
/*
============
idSIMD_AltiVec::DeriveUnsmoothedTangents

	Derives the normal and orthogonal tangent vectors for the triangle vertices.
	For each vertex the normal and tangent vectors are derived from a single dominant triangle.
============
*/
#define DERIVE_UNSMOOTHED_BITANGENT

void VPCALL idSIMD_AltiVec::DeriveUnsmoothedTangents( idDrawVert *verts, const dominantTri_s *dominantTris, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::DeriveUnsmoothedTangents( idDrawVert *verts, const dominantTri_s *dominantTris, const int numVerts )\r\n");
    return retVal;
}

#endif /* DERIVE_UNSMOOTH_DRAWVERT_ALIGNED */

/*
============
idSIMD_AltiVec::NormalizeTangents

	Normalizes each vertex normal and projects and normalizes the
	tangent vectors onto the plane orthogonal to the vertex normal.
============
*/
void VPCALL idSIMD_AltiVec::NormalizeTangents( idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::NormalizeTangents( idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}

#endif /* ENABLE_DERIVE */

#ifdef ENABLE_CREATE

/*
============
idSIMD_AltiVec::CreateTextureSpaceLightVectors

	Calculates light vectors in texture space for the given triangle vertices.
	For each vertex the direction towards the light origin is projected onto texture space.
	The light vectors are only calculated for the vertices referenced by the indexes.
============
*/

void VPCALL idSIMD_AltiVec::CreateTextureSpaceLightVectors( idVec3 *lightVectors, const idVec3 &lightOrigin, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::CreateTextureSpaceLightVectors( idVec3 *lightVectors, const idVec3 &lightOrigin, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes )\r\n");
    return retVal;
}


#if 1
/*
============
idSIMD_AltiVec::CreateSpecularTextureCoords

	Calculates specular texture coordinates for the given triangle vertices.
	For each vertex the normalized direction towards the light origin is added to the
	normalized direction towards the view origin and the result is projected onto texture space.
	The texture coordinates are only calculated for the vertices referenced by the indexes.
============
*/
void VPCALL idSIMD_AltiVec::CreateSpecularTextureCoords( idVec4 *texCoords, const idVec3 &lightOrigin, const idVec3 &viewOrigin, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::CreateSpecularTextureCoords( idVec4 *texCoords, const idVec3 &lightOrigin, const idVec3 &viewOrigin, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes )\r\n");
    return retVal;
}

#endif  /* 0 for disable spec coord */

#if 1

#ifdef VERTEXCACHE_ALIGNED
/*
============
idSIMD_AltiVec::CreateShadowCache
============
*/
int VPCALL idSIMD_AltiVec::CreateShadowCache( idVec4 *vertexCache, int *vertRemap, const idVec3 &lightOrigin, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::CreateShadowCache( idVec4 *vertexCache, int *vertRemap, const idVec3 &lightOrigin, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}


#else

/*
============
idSIMD_AltiVec::CreateShadowCache
============
*/
int VPCALL idSIMD_AltiVec::CreateShadowCache( idVec4 *vertexCache, int *vertRemap, const idVec3 &lightOrigin, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::CreateShadowCache( idVec4 *vertexCache, int *vertRemap, const idVec3 &lightOrigin, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}

#endif /* VERTEXCACHE_ALIGNED */

#endif /* 0 to disable shadow cache */

#if 1

#ifdef VERTEXCACHE_ALIGNED
/*
============
idSIMD_AltiVec::CreateVertexProgramShadowCache
============
*/
int VPCALL idSIMD_AltiVec::CreateVertexProgramShadowCache( idVec4 *vertexCache, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::CreateVertexProgramShadowCache( idVec4 *vertexCache, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}


#else
/*
============
idSIMD_AltiVec::CreateVertexProgramShadowCache
============
*/
int VPCALL idSIMD_AltiVec::CreateVertexProgramShadowCache( idVec4 *vertexCache, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::CreateVertexProgramShadowCache( idVec4 *vertexCache, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}


#endif /* VERTEXCACHE_ALIGNED */

#endif /* 0 to kill VP shader cache */

#endif /* ENABLE_CREATE */

#ifdef ENABLE_SOUND_ROUTINES

#ifdef SOUND_DEST_ALIGNED
/*
============
idSIMD_AltiVec::UpSamplePCMTo44kHz

  Duplicate samples for 44kHz output.
  
	Assumptions:
		Assumes that dest starts at aligned address
============
*/
void idSIMD_AltiVec::UpSamplePCMTo44kHz( float *dest, const short *src, const int numSamples, const int kHz, const int numChannels ) {
    Sys_Printf("void idSIMD_AltiVec::UpSamplePCMTo44kHz( float *dest, const short *src, const int numSamples, const int kHz, const int numChannels )\r\n");
}


#else

/*
============
idSIMD_AltiVec::UpSamplePCMTo44kHz

  Duplicate samples for 44kHz output.
  
	Assumptions:
		No assumptions
============
*/
void idSIMD_AltiVec::UpSamplePCMTo44kHz( float *dest, const short *src, const int numSamples, const int kHz, const int numChannels ) {
    Sys_Printf("void idSIMD_AltiVec::UpSamplePCMTo44kHz( float *dest, const short *src, const int numSamples, const int kHz, const int numChannels )\r\n");
}


#endif

#ifdef SOUND_DEST_ALIGNED
/*
============
idSIMD_AltiVec::UpSampleOGGTo44kHz

  Duplicate samples for 44kHz output.
  
  	Assumptions:
		Assumes that dest starts at aligned address
============
*/
void idSIMD_AltiVec::UpSampleOGGTo44kHz( float *dest, const float * const *ogg, const int numSamples, const int kHz, const int numChannels ) {
    Sys_Printf("void idSIMD_AltiVec::UpSampleOGGTo44kHz( float *dest, const float * const *ogg, const int numSamples, const int kHz, const int numChannels )\r\n");
}


#else

/*
============
idSIMD_AltiVec::UpSampleOGGTo44kHz

  Duplicate samples for 44kHz output.
  
  	Assumptions:
		No assumptions
============
*/
void idSIMD_AltiVec::UpSampleOGGTo44kHz( float *dest, const float * const *ogg, const int numSamples, const int kHz, const int numChannels ) {
    Sys_Printf("void idSIMD_AltiVec::UpSampleOGGTo44kHz( float *dest, const float * const *ogg, const int numSamples, const int kHz, const int numChannels )\r\n");
}

#endif /* SOUND_DEST_ALIGNED */

#ifdef SOUND_DEST_ALIGNED
/*
============
idSIMD_AltiVec::MixSoundTwoSpeakerMono

	Assumptions:
		Assumes that mixBuffer starts at aligned address
============
*/
void VPCALL idSIMD_AltiVec::MixSoundTwoSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MixSoundTwoSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] )\r\n");
    return retVal;
}


#else

/*
============
idSIMD_AltiVec::MixSoundTwoSpeakerMono

	Assumptions:
		No assumptions
============
*/
void VPCALL idSIMD_AltiVec::MixSoundTwoSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MixSoundTwoSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] )\r\n");
    return retVal;
}


#endif /* SOUND_DEST_ALIGNED */

#ifdef SOUND_DEST_ALIGNED
/*
============
idSIMD_AltiVec::MixSoundTwoSpeakerStereo

	Assumptions:
		Assumes that mixBuffer starts at aligned address
============
*/
void VPCALL idSIMD_AltiVec::MixSoundTwoSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MixSoundTwoSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] )\r\n");
    return retVal;
}

#else

/*
============
idSIMD_AltiVec::MixSoundTwoSpeakerStereo

	Assumptions:
		No assumptions
============
*/
void VPCALL idSIMD_AltiVec::MixSoundTwoSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MixSoundTwoSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] )\r\n");
    return retVal;
}


#endif /* SOUND_DEST_ALIGNED */

#ifdef SOUND_DEST_ALIGNED
/*
============
idSIMD_AltiVec::MixSoundSixSpeakerMono

	Assumptions:
		Assumes that mixBuffer starts at aligned address
============
*/
void VPCALL idSIMD_AltiVec::MixSoundSixSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MixSoundSixSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] )\r\n");
    return retVal;
}

#else

/*
============
idSIMD_AltiVec::MixSoundSixSpeakerMono

	Assumptions:
		No assumptions
============
*/
void VPCALL idSIMD_AltiVec::MixSoundSixSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MixSoundSixSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] )\r\n");
    return retVal;
}


#endif /* SOUND_DEST_ALIGNED */

#ifdef SOUND_DEST_ALIGNED
/*
============
idSIMD_AltiVec::MixSoundSixSpeakerStereo

	Assumptions:
		Assumes that mixBuffer starts at aligned address
============
*/
	
void VPCALL idSIMD_AltiVec::MixSoundSixSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MixSoundSixSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] )\r\n");
    return retVal;
}

#else

/*
============
idSIMD_AltiVec::MixSoundSixSpeakerStereo

	Assumptions:
		No assumptions
============
*/	
void VPCALL idSIMD_AltiVec::MixSoundSixSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MixSoundSixSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] )\r\n");
    return retVal;
}


#endif

/*
============
idSIMD_AltiVec::MixedSoundToSamples
============
*/
void VPCALL idSIMD_AltiVec::MixedSoundToSamples( short *samples, const float *mixBuffer, const int numSamples ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_AltiVec::MixedSoundToSamples( short *samples, const float *mixBuffer, const int numSamples )\r\n");
    return retVal;
}

#endif /* ENABLE_SOUND_ROUTINES */

#endif /* MACOS_X */
