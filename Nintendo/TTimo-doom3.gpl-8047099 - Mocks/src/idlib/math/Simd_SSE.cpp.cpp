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
#include "Simd_MMX.h"
#include "Simd_SSE.h"


//===============================================================
//                                                        M
//  SSE implementation of idSIMDProcessor                MrE
//                                                        E
//===============================================================


#if defined(MACOS_X) && defined(__i386__)

#include <xmmintrin.h>

#define DRAWVERT_SIZE				60
#define DRAWVERT_XYZ_OFFSET			(0*4)
#define DRAWVERT_ST_OFFSET			(3*4)
#define DRAWVERT_NORMAL_OFFSET		(5*4)
#define DRAWVERT_TANGENT0_OFFSET	(8*4)
#define DRAWVERT_TANGENT1_OFFSET	(11*4)
#define DRAWVERT_COLOR_OFFSET		(14*4)

#define SHUFFLEPS( x, y, z, w )		(( (x) & 3 ) << 6 | ( (y) & 3 ) << 4 | ( (z) & 3 ) << 2 | ( (w) & 3 ))
#define R_SHUFFLEPS( x, y, z, w )	(( (w) & 3 ) << 6 | ( (z) & 3 ) << 4 | ( (y) & 3 ) << 2 | ( (x) & 3 ))

/*
============
idSIMD_SSE::GetName
============
*/
const char * idSIMD_SSE::GetName( void ) const {
    Sys_Printf("char * idSIMD_SSE::GetName( void )\r\n");
    return NULL;
}


/*
============
idSIMD_SSE::Dot

  dst[i] = constant.Normal() * src[i].xyz + constant[3];
============
*/
void VPCALL idSIMD_SSE::Dot( float *dst, const idPlane &constant, const idDrawVert *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Dot( float *dst, const idPlane &constant, const idDrawVert *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MinMax
============
*/
void VPCALL idSIMD_SSE::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int *indexes, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int *indexes, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Dot

  dst[i] = constant * src[i].Normal() + src[i][3];
============
*/
void VPCALL idSIMD_SSE::Dot( float *dst, const idVec3 &constant, const idPlane *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Dot( float *dst, const idVec3 &constant, const idPlane *src, const int count )\r\n");
    return retVal;
}


#elif defined(_WIN32)

#include <xmmintrin.h>

#define SHUFFLEPS( x, y, z, w )		(( (x) & 3 ) << 6 | ( (y) & 3 ) << 4 | ( (z) & 3 ) << 2 | ( (w) & 3 ))
#define R_SHUFFLEPS( x, y, z, w )	(( (w) & 3 ) << 6 | ( (z) & 3 ) << 4 | ( (y) & 3 ) << 2 | ( (x) & 3 ))

// transpose a 4x4 matrix loaded into 4 xmm registers (reg4 is temporary)
#define TRANSPOSE_4x4( reg0, reg1, reg2, reg3, reg4 )											\
	__asm	movaps		reg4, reg2								/* reg4 =  8,  9, 10, 11 */		\
	__asm	unpcklps	reg2, reg3								/* reg2 =  8, 12,  9, 13 */		\
	__asm	unpckhps	reg4, reg3								/* reg4 = 10, 14, 11, 15 */		\
	__asm	movaps		reg3, reg0								/* reg3 =  0,  1,  2,  3 */		\
	__asm	unpcklps	reg0, reg1								/* reg0 =  0,  4,  1,  5 */		\
	__asm	unpckhps	reg3, reg1								/* reg3 =  2,  6,  3,  7 */		\
	__asm	movaps		reg1, reg0								/* reg1 =  0,  4,  1,  5 */		\
	__asm	shufps		reg0, reg2, R_SHUFFLEPS( 0, 1, 0, 1 )	/* reg0 =  0,  4,  8, 12 */		\
	__asm	shufps		reg1, reg2, R_SHUFFLEPS( 2, 3, 2, 3 )	/* reg1 =  1,  5,  9, 13 */		\
	__asm	movaps		reg2, reg3								/* reg2 =  2,  6,  3,  7 */		\
	__asm	shufps		reg2, reg4, R_SHUFFLEPS( 0, 1, 0, 1 )	/* reg2 =  2,  6, 10, 14 */		\
	__asm	shufps		reg3, reg4, R_SHUFFLEPS( 2, 3, 2, 3 )	/* reg3 =  3,  7, 11, 15 */

// transpose a 4x4 matrix from memory into 4 xmm registers (reg4 is temporary)
#define TRANPOSE_4x4_FROM_MEMORY( address, reg0, reg1, reg2, reg3, reg4 )						\
	__asm	movlps		reg1, [address+ 0]						/* reg1 =  0,  1,  X,  X */		\
	__asm	movlps		reg3, [address+ 8]						/* reg3 =  2,  3,  X,  X */		\
	__asm	movhps		reg1, [address+16]						/* reg1 =  0,  1,  4,  5 */		\
	__asm	movhps		reg3, [address+24]						/* reg3 =  2,  3,  6,  7 */		\
	__asm	movlps		reg2, [address+32]						/* reg2 =  8,  9,  X,  X */		\
	__asm	movlps		reg4, [address+40]						/* reg4 = 10, 11,  X,  X */		\
	__asm	movhps		reg2, [address+48]						/* reg2 =  8,  9, 12, 13 */		\
	__asm	movhps		reg4, [address+56]						/* reg4 = 10, 11, 14, 15 */		\
	__asm	movaps		reg0, reg1								/* reg0 =  0,  1,  4,  5 */		\
	__asm	shufps		reg0, reg2, R_SHUFFLEPS( 0, 2, 0, 2 )	/* reg0 =  0,  4,  8, 12 */		\
	__asm	shufps		reg1, reg2, R_SHUFFLEPS( 1, 3, 1, 3 )	/* reg1 =  1,  5,  9, 13 */		\
	__asm	movaps		reg2, reg3								/* reg2 =  2,  3,  6,  7 */		\
	__asm	shufps		reg2, reg4, R_SHUFFLEPS( 0, 2, 0, 2 )	/* reg2 =  2,  6, 10, 14 */		\
	__asm	shufps		reg3, reg4, R_SHUFFLEPS( 1, 3, 1, 3 )	/* reg3 =  3,  7, 11, 15 */

// transpose a 4x4 matrix to memory from 4 xmm registers (reg4 is temporary)
#define TRANPOSE_4x4_TO_MEMORY( address, reg0, reg1, reg2, reg3, reg4 )							\
	__asm	movaps		reg4, reg0								/* reg4 =  0,  4,  8, 12 */		\
	__asm	unpcklps	reg0, reg1								/* reg0 =  0,  1,  4,  5 */		\
	__asm	unpckhps	reg4, reg1								/* reg4 =  8,  9, 12, 13 */		\
	__asm	movaps		reg1, reg2								/* reg1 =  2,  6, 10, 14 */		\
	__asm	unpcklps	reg2, reg3								/* reg2 =  2,  3,  6,  7 */		\
	__asm	unpckhps	reg1, reg3								/* reg1 = 10, 11, 14, 15 */		\
	__asm	movlps		[address+ 0], reg0						/* mem0 =  0,  1,  X,  X */		\
	__asm	movlps		[address+ 8], reg2						/* mem0 =  0,  1,  2,  3 */		\
	__asm	movhps		[address+16], reg0						/* mem1 =  4,  5,  X,  X */		\
	__asm	movhps		[address+24], reg2						/* mem1 =  4,  5,  6,  7 */		\
	__asm	movlps		[address+32], reg4						/* mem2 =  8,  9,  X,  X */		\
	__asm	movlps		[address+40], reg1						/* mem2 =  8,  9, 10, 11 */		\
	__asm	movhps		[address+48], reg4						/* mem3 = 12, 13,  X,  X */		\
	__asm	movhps		[address+56], reg1						/* mem3 = 12, 13, 14, 15 */

// transpose a 4x3 matrix loaded into 3 xmm registers (reg3 is temporary)
#define TRANSPOSE_4x3( reg0, reg1, reg2, reg3 )													\
	__asm	movaps		reg3, reg2								/* reg3 =  8,  9, 10, 11 */		\
	__asm	shufps		reg3, reg1, R_SHUFFLEPS( 2, 3, 0, 1 )	/* reg3 = 10, 11,  4,  5 */		\
	__asm	shufps		reg2, reg0, R_SHUFFLEPS( 0, 1, 2, 3 )	/* reg2 =  8,  9,  2,  3 */		\
	__asm	shufps		reg1, reg0, R_SHUFFLEPS( 2, 3, 0, 1 )	/* reg1 =  6,  7,  0,  1 */		\
	__asm	movaps		reg0, reg1								/* reg0 =  6,  7,  0,  1 */		\
	__asm	shufps		reg0, reg2, R_SHUFFLEPS( 2, 0, 3, 1 )	/* reg0 =  0,  6,  3,  9 */		\
	__asm	shufps		reg1, reg3, R_SHUFFLEPS( 3, 1, 2, 0 )	/* reg1 =  1,  7,  4, 10 */		\
	__asm	shufps		reg2, reg3, R_SHUFFLEPS( 2, 0, 3, 1 )	/* reg2 =  2,  8,  5, 11 */

// transpose a 4x3 matrix from memory into 3 xmm registers (reg3 is temporary)
#define TRANSPOSE_4x3_FROM_MEMORY( address, reg0, reg1, reg2, reg3 )							\
	__asm	movlps		reg1, [address+ 0]						/* reg1 =  0,  1,  X,  X */		\
	__asm	movlps		reg2, [address+ 8]						/* reg2 =  2,  3,  X,  X */		\
	__asm	movlps		reg3, [address+16]						/* reg3 =  4,  5,  X,  X */		\
	__asm	movhps		reg1, [address+24]						/* reg1 =  0,  1,  6,  7 */		\
	__asm	movhps		reg2, [address+32]						/* reg2 =  2,  3,  8,  9 */		\
	__asm	movhps		reg3, [address+40]						/* reg3 =  4,  5, 10, 11 */		\
	__asm	movaps		reg0, reg1								/* reg0 =  0,  1,  6,  7 */		\
	__asm	shufps		reg0, reg2, R_SHUFFLEPS( 0, 2, 1, 3 )	/* reg0 =  0,  6,  3,  9 */		\
	__asm	shufps		reg1, reg3, R_SHUFFLEPS( 1, 3, 0, 2 )	/* reg1 =  1,  7,  4, 10 */		\
	__asm	shufps		reg2, reg3, R_SHUFFLEPS( 0, 2, 1, 3 )	/* reg2 =  2,  8,  5, 11 */

// transpose a 4x3 matrix to memory from 3 xmm registers (reg3 is temporary)
#define TRANSPOSE_4x3_TO_MEMORY( address, reg0, reg1, reg2, reg3 )								\
	__asm	movhlps		reg3, reg0 								/* reg3 =  3,  9,  X,  X */		\
	__asm	unpcklps	reg0, reg1								/* reg0 =  0,  1,  6,  7 */		\
	__asm	unpckhps	reg1, reg2								/* reg1 =  4,  5, 10, 11 */		\
	__asm	unpcklps	reg2, reg3								/* reg2 =  2,  3,  8,  9 */		\
	__asm	movlps		[address+ 0], reg0						/* mem0 =  0,  1,  X,  X */		\
	__asm	movlps		[address+ 8], reg2						/* mem0 =  0,  1,  2,  3 */		\
	__asm	movlps		[address+16], reg1						/* mem1 =  4,  5,  X,  X */		\
	__asm	movhps		[address+24], reg0						/* mem1 =  4,  5,  6,  7 */		\
	__asm	movhps		[address+32], reg2						/* mem2 =  8,  9,  X,  X */		\
	__asm	movhps		[address+40], reg1						/* mem2 =  8,  9, 10, 11 */


// with alignment
#define KFLOATINITS(   SRC0, COUNT, PRE, POST )				KFLOATINITDSS( SRC0,SRC0,SRC0,COUNT,PRE,POST )
#define KFLOATINITD(   DST, COUNT, PRE, POST )				KFLOATINITDSS( DST,DST,DST,COUNT,PRE,POST )
#define KFLOATINITDS(  DST, SRC0, COUNT, PRE, POST )		KFLOATINITDSS( DST,SRC0,SRC0,COUNT,PRE,POST )

#define KFLOATINITDSS( DST, SRC0, SRC1, COUNT, PRE, POST )\
	__asm	mov		ecx,DST								\
	__asm	shr		ecx,2								\
	__asm	mov		ebx,COUNT							\
	__asm	neg		ecx									\
	__asm	mov		edx,SRC0							\
	__asm	and		ecx,3								\
	__asm	mov		esi,SRC1							\
	__asm	sub		ebx,ecx								\
	__asm	jge		noUnderFlow							\
	__asm	xor		ebx,ebx								\
	__asm	mov		ecx,COUNT							\
	__asm	noUnderFlow:								\
	__asm	mov		PRE,ecx								\
	__asm	mov		eax,ebx								\
	__asm	mov		edi,DST								\
	__asm	and		eax,8-1								\
	__asm	mov		POST,eax							\
	__asm	and		ebx,0xfffffff8						\
	__asm	jle		done								\
	__asm	shl		ebx,2								\
	__asm	lea		ecx,[ecx*4+ebx]						\
	__asm	neg		ebx									\
	__asm	add		edx,ecx								\
	__asm	add		esi,ecx								\
	__asm	add		edi,ecx								\
	__asm	mov		eax,edx								\
	__asm	or		eax,esi

// without alignment (pre==0)
#define KFLOATINITS_NA(   SRC0, COUNT, PRE, POST )				KFLOATINITDSS_NA( SRC0,SRC0,SRC0,COUNT,PRE,POST )
#define KFLOATINITD_NA(   DST, COUNT, PRE, POST )				KFLOATINITDSS_NA( DST,DST,DST,COUNT,PRE,POST )
#define KFLOATINITDS_NA(  DST, SRC0, COUNT, PRE, POST )			KFLOATINITDSS_NA( DST,SRC0,SRC0,COUNT,PRE,POST )
#define KFLOATINITDSS_NA( DST, SRC0, SRC1, COUNT, PRE, POST )\
	__asm	mov		eax,COUNT							\
	__asm	mov		PRE,0								\
	__asm	and		eax,8-1								\
	__asm	mov		ebx,COUNT							\
	__asm	mov		POST,eax							\
	__asm	and		ebx,0xfffffff8						\
	__asm	je		done								\
	__asm	shl		ebx,2								\
	__asm	mov		edx,SRC0							\
	__asm	mov		esi,SRC1							\
	__asm	mov		edi,DST								\
	__asm	add		edx,ebx								\
	__asm	add		esi,ebx								\
	__asm	add		edi,ebx								\
	__asm	mov		eax,edx								\
	__asm	or		eax,esi								\
	__asm	or		eax,edi								\
	__asm	neg		ebx									\

/*
	when OPER is called:
	edx = s0
	esi	= s1
	edi	= d
	ebx	= index*4

	xmm0 & xmm1	must not be trashed
*/
#define KMOVDS1( DST, SRC0 )							\
	__asm	movss	xmm2,SRC0							\
	__asm	movss	DST,xmm2
#define KMOVDS4( DST, SRC0 )							\
	__asm	movups	xmm2,SRC0							\
	__asm	movups	DST,xmm2
#define KMINDS1( DST, SRC0 )							\
	__asm	movss	xmm2,SRC0							\
	__asm	minss	DST,xmm2
#define KMAXDS1( DST, SRC0 )							\
	__asm	movss	xmm2,SRC0							\
	__asm	maxss	DST,xmm2

// general ALU operation
#define KALUDSS1( OP, DST, SRC0, SRC1 )					\
	__asm	movss	xmm2,SRC0							\
	__asm	OP##ss	xmm2,SRC1							\
	__asm	movss	DST,xmm2
#define KALUDSS4( OP, DST, SRC0, SRC1 )					\
	__asm	movups	xmm2,SRC0							\
	__asm	movups	xmm3,SRC1							\
	__asm	OP##ps	xmm2,xmm3							\
	__asm	movups	DST,xmm2

#define KADDDSS1( DST, SRC0, SRC1 )		KALUDSS1( add, DST,SRC0,SRC1 )
#define KADDDSS4( DST, SRC0, SRC1 )		KALUDSS4( add, DST,SRC0,SRC1 )
#define KSUBDSS1( DST, SRC0, SRC1 )		KALUDSS1( sub, DST,SRC0,SRC1 )
#define KSUBDSS4( DST, SRC0, SRC1 )		KALUDSS4( sub, DST,SRC0,SRC1 )
#define KMULDSS1( DST, SRC0, SRC1 )		KALUDSS1( mul, DST,SRC0,SRC1 )
#define KMULDSS4( DST, SRC0, SRC1 )		KALUDSS4( mul, DST,SRC0,SRC1 )

#define KDIVDSS1( DST, SRC0, SRC1 )						\
	__asm	movss	xmm2,SRC1							\
	__asm	rcpss	xmm3,xmm2							\
	__asm	mulss	xmm2,xmm3							\
	__asm	mulss	xmm2,xmm3							\
	__asm	addss	xmm3,xmm3							\
	__asm	subss	xmm3,xmm2							\
	__asm	mulss	xmm3,SRC0							\
	__asm	movss	DST,xmm3
#define KDIVDSS4( DST, SRC0, SRC1 )						\
	__asm	movups	xmm2,SRC1							\
	__asm	rcpps	xmm3,xmm2							\
	__asm	mulps	xmm2,xmm3							\
	__asm	mulps	xmm2,xmm3							\
	__asm	addps	xmm3,xmm3							\
	__asm	subps	xmm3,xmm2							\
	__asm	movups	xmm2,SRC0							\
	__asm	mulps	xmm3,xmm2							\
	__asm	movups	DST,xmm3
#define	KF2IDS1( SRC0 )									\
	__asm	movss		xmm2,SRC0						\
	__asm	cvttps2pi	mm2,xmm2						\
	__asm	movd		[edi+ebx],mm2
#define	KF2IDS4( SRC0 )									\
	__asm	movups		xmm2,SRC0						\
	__asm	cvttps2pi	mm2,xmm2						\
	__asm	movq		[edi+ebx+0],mm2					\
	__asm	shufps		xmm2,xmm2,SHUFFLEPS(1,0,3,2)	\
	__asm	cvttps2pi	mm2,xmm2						\
	__asm	movq		[edi+ebx+8],mm2
#define	KISQRTDS1( DST,SRC0 )							\
	__asm	movss	xmm2,SRC0							\
	__asm	rsqrtss	xmm3,xmm2							\
	__asm	mulss	xmm2,xmm3							\
	__asm	mulss	xmm2,xmm3							\
	__asm	subss	xmm2,xmm1							\
	__asm	mulss	xmm3,xmm0							\
	__asm	mulss	xmm3,xmm2							\
	__asm	movss	DST,xmm3
#define	KISQRTDS4( DST,SRC0 )							\
	__asm	movups	xmm2,SRC0							\
	__asm	rsqrtps	xmm3,xmm2							\
	__asm	mulps	xmm2,xmm3							\
	__asm	mulps	xmm2,xmm3							\
	__asm	subps	xmm2,xmm1							\
	__asm	mulps	xmm3,xmm0							\
	__asm	mulps	xmm3,xmm2							\
	__asm	movups	DST,xmm3

// this is used in vector4 implementation to shift constant V4
#define KANDREGDSV( DST, SRC0, VALUE )					\
	__asm	mov		DST,SRC0							\
	__asm	and		DST,VALUE

// this is used in vector4 code to operate with float arrays as sources
#define KEXPANDFLOAT( DST, SRC )						\
	__asm	movss	DST,SRC								\
	__asm	shufps  DST,DST,0

#define	KADDDS1( DST,SRC )		KADDDSS1( DST,DST,SRC )
#define	KADDDS4( DST,SRC )		KADDDSS4( DST,DST,SRC )
#define	KSUBDS1( DST,SRC )		KSUBDSS1( DST,DST,SRC )
#define	KSUBDS4( DST,SRC )		KSUBDSS4( DST,DST,SRC )
#define	KMULDS1( DST,SRC )		KMULDSS1( DST,DST,SRC )
#define	KMULDS4( DST,SRC )		KMULDSS4( DST,DST,SRC )
#define	KDIVDS1( DST,SRC )		KDIVDSS1( DST,DST,SRC )
#define	KDIVDS4( DST,SRC )		KDIVDSS4( DST,DST,SRC )

// handles pre & post leftovers
#define	KFLOATOPER( OPER, OPER4, COUNT )				\
	__asm		mov		ecx,pre							\
	__asm		mov		ebx,COUNT						\
	__asm		cmp		ebx,ecx							\
	__asm		cmovl	ecx,COUNT						\
	__asm		test	ecx,ecx							\
	__asm		je		preDone							\
	__asm		xor		ebx,ebx							\
	__asm	lpPre:										\
				OPER									\
	__asm		add		ebx,4							\
	__asm		dec		ecx								\
	__asm		jg		lpPre							\
	__asm	preDone:									\
	__asm		mov		ecx,post						\
	__asm		mov		ebx,COUNT						\
	__asm		sub		ebx,ecx							\
	__asm		shl		ebx,2							\
	__asm		cmp		ecx,4							\
	__asm		jl		post4Done						\
				OPER4									\
	__asm		sub		ecx,4							\
	__asm		add		ebx,4*4							\
	__asm	post4Done:									\
	__asm		test	ecx,ecx							\
	__asm		je		postDone						\
	__asm	lpPost:										\
				OPER									\
	__asm		add		ebx,4							\
	__asm		dec		ecx								\
	__asm		jg		lpPost							\
	__asm	postDone:

// operate on a constant and a float array
#define KFLOAT_CA( ALUOP, DST, SRC, CONSTANT, COUNT )	\
	int	pre,post;										\
	__asm		movss	xmm0,CONSTANT					\
	__asm		shufps	xmm0,xmm0,0						\
			KFLOATINITDS( DST, SRC, COUNT, pre, post )	\
	__asm		and		eax,15							\
	__asm		jne		lpNA							\
	__asm		jmp		lpA								\
	__asm		align	16								\
	__asm	lpA:										\
	__asm		prefetchnta	[edx+ebx+64]				\
	__asm		movaps	xmm1,xmm0						\
	__asm		movaps	xmm2,xmm0						\
	__asm		ALUOP##ps	xmm1,[edx+ebx]				\
	__asm		ALUOP##ps	xmm2,[edx+ebx+16]			\
	__asm		movaps	[edi+ebx],xmm1					\
	__asm		movaps	[edi+ebx+16],xmm2				\
	__asm		add		ebx,16*2						\
	__asm		jl		lpA								\
	__asm		jmp		done							\
	__asm		align	16								\
	__asm	lpNA:										\
	__asm		prefetchnta	[edx+ebx+64]				\
	__asm		movaps	xmm1,xmm0						\
	__asm		movaps	xmm2,xmm0						\
	__asm		movups	xmm3,[edx+ebx]					\
	__asm		movups	xmm4,[edx+ebx+16]				\
	__asm		ALUOP##ps	xmm1,xmm3					\
	__asm		ALUOP##ps	xmm2,xmm4					\
	__asm		movaps	[edi+ebx],xmm1					\
	__asm		movaps	[edi+ebx+16],xmm2				\
	__asm		add		ebx,16*2						\
	__asm		jl		lpNA							\
	__asm	done:										\
	__asm		mov		edx,SRC							\
	__asm		mov		edi,DST							\
	__asm		KFLOATOPER( KALUDSS1( ALUOP, [edi+ebx],xmm0,[edx+ebx] ),	\
	__asm					KALUDSS4( ALUOP, [edi+ebx],xmm0,[edx+ebx] ), COUNT )

// operate on two float arrays
#define KFLOAT_AA( ALUOP, DST, SRC0, SRC1, COUNT )		\
	int	pre,post;										\
	KFLOATINITDSS( DST, SRC0, SRC1, COUNT, pre, post )	\
	__asm		and		eax,15							\
	__asm		jne		lpNA							\
	__asm		jmp		lpA								\
	__asm		align	16								\
	__asm	lpA:										\
	__asm		movaps	xmm1,[edx+ebx]					\
	__asm		movaps	xmm2,[edx+ebx+16]				\
	__asm		ALUOP##ps	xmm1,[esi+ebx]				\
	__asm		ALUOP##ps	xmm2,[esi+ebx+16]			\
	__asm		prefetchnta	[edx+ebx+64]				\
	__asm		prefetchnta	[esi+ebx+64]				\
	__asm		movaps	[edi+ebx],xmm1					\
	__asm		movaps	[edi+ebx+16],xmm2				\
	__asm		add		ebx,16*2						\
	__asm		jl		lpA								\
	__asm		jmp		done							\
	__asm		align	16								\
	__asm	lpNA:										\
	__asm		movups	xmm1,[edx+ebx]					\
	__asm		movups	xmm2,[edx+ebx+16]				\
	__asm		movups	xmm3,[esi+ebx]					\
	__asm		movups	xmm4,[esi+ebx+16]				\
	__asm		prefetchnta	[edx+ebx+64]				\
	__asm		prefetchnta	[esi+ebx+64]				\
	__asm		ALUOP##ps	xmm1,xmm3					\
	__asm		ALUOP##ps	xmm2,xmm4					\
	__asm		movaps	[edi+ebx],xmm1					\
	__asm		movaps	[edi+ebx+16],xmm2				\
	__asm		add		ebx,16*2						\
	__asm		jl		lpNA							\
	__asm	done:										\
	__asm		mov		edx,SRC0						\
	__asm		mov		esi,SRC1						\
	__asm		mov		edi,DST							\
	KFLOATOPER( KALUDSS1( ALUOP, [edi+ebx],[edx+ebx],[esi+ebx] ),		\
				KALUDSS4( ALUOP, [edi+ebx],[edx+ebx],[esi+ebx] ), COUNT )


#define DRAWVERT_SIZE				60
#define DRAWVERT_XYZ_OFFSET			(0*4)
#define DRAWVERT_ST_OFFSET			(3*4)
#define DRAWVERT_NORMAL_OFFSET		(5*4)
#define DRAWVERT_TANGENT0_OFFSET	(8*4)
#define DRAWVERT_TANGENT1_OFFSET	(11*4)
#define DRAWVERT_COLOR_OFFSET		(14*4)

#define JOINTQUAT_SIZE				(7*4)
#define JOINTMAT_SIZE				(4*3*4)
#define JOINTWEIGHT_SIZE			(4*4)


#define ALIGN4_INIT1( X, INIT )				ALIGN16( static X[4] ) = { INIT, INIT, INIT, INIT }
#define ALIGN4_INIT4( X, I0, I1, I2, I3 )	ALIGN16( static X[4] ) = { I0, I1, I2, I3 }
#define ALIGN8_INIT1( X, INIT )				ALIGN16( static X[8] ) = { INIT, INIT, INIT, INIT, INIT, INIT, INIT, INIT }

ALIGN8_INIT1( unsigned short SIMD_W_zero, 0 );
ALIGN8_INIT1( unsigned short SIMD_W_maxShort, 1<<15 );

ALIGN4_INIT1( unsigned long SIMD_DW_mat2quatShuffle0, (3<<0)|(2<<8)|(1<<16)|(0<<24) );
ALIGN4_INIT1( unsigned long SIMD_DW_mat2quatShuffle1, (0<<0)|(1<<8)|(2<<16)|(3<<24) );
ALIGN4_INIT1( unsigned long SIMD_DW_mat2quatShuffle2, (1<<0)|(0<<8)|(3<<16)|(2<<24) );
ALIGN4_INIT1( unsigned long SIMD_DW_mat2quatShuffle3, (2<<0)|(3<<8)|(0<<16)|(1<<24) );

ALIGN4_INIT4( unsigned long SIMD_SP_singleSignBitMask, (unsigned long) ( 1 << 31 ), 0, 0, 0 );
ALIGN4_INIT1( unsigned long SIMD_SP_signBitMask, (unsigned long) ( 1 << 31 ) );
ALIGN4_INIT1( unsigned long SIMD_SP_absMask, (unsigned long) ~( 1 << 31 ) );
ALIGN4_INIT1( unsigned long SIMD_SP_infinityMask, (unsigned long) ~( 1 << 23 ) );
ALIGN4_INIT1( unsigned long SIMD_SP_not, 0xFFFFFFFF );

ALIGN4_INIT1( float SIMD_SP_zero, 0.0f );
ALIGN4_INIT1( float SIMD_SP_half, 0.5f );
ALIGN4_INIT1( float SIMD_SP_one, 1.0f );
ALIGN4_INIT1( float SIMD_SP_two, 2.0f );
ALIGN4_INIT1( float SIMD_SP_three, 3.0f );
ALIGN4_INIT1( float SIMD_SP_four, 4.0f );
ALIGN4_INIT1( float SIMD_SP_maxShort, (1<<15) );
ALIGN4_INIT1( float SIMD_SP_tiny, 1e-10f );
ALIGN4_INIT1( float SIMD_SP_PI, idMath::PI );
ALIGN4_INIT1( float SIMD_SP_halfPI, idMath::HALF_PI );
ALIGN4_INIT1( float SIMD_SP_twoPI, idMath::TWO_PI );
ALIGN4_INIT1( float SIMD_SP_oneOverTwoPI, 1.0f / idMath::TWO_PI );
ALIGN4_INIT1( float SIMD_SP_infinity, idMath::INFINITY );
ALIGN4_INIT4( float SIMD_SP_lastOne, 0.0f, 0.0f, 0.0f, 1.0f );

ALIGN4_INIT1( float SIMD_SP_rsqrt_c0,  3.0f );
ALIGN4_INIT1( float SIMD_SP_rsqrt_c1, -0.5f );
ALIGN4_INIT1( float SIMD_SP_mat2quat_rsqrt_c1, -0.5f*0.5f );

ALIGN4_INIT1( float SIMD_SP_sin_c0, -2.39e-08f );
ALIGN4_INIT1( float SIMD_SP_sin_c1,  2.7526e-06f );
ALIGN4_INIT1( float SIMD_SP_sin_c2, -1.98409e-04f );
ALIGN4_INIT1( float SIMD_SP_sin_c3,  8.3333315e-03f );
ALIGN4_INIT1( float SIMD_SP_sin_c4, -1.666666664e-01f );

ALIGN4_INIT1( float SIMD_SP_cos_c0, -2.605e-07f );
ALIGN4_INIT1( float SIMD_SP_cos_c1,  2.47609e-05f );
ALIGN4_INIT1( float SIMD_SP_cos_c2, -1.3888397e-03f );
ALIGN4_INIT1( float SIMD_SP_cos_c3,  4.16666418e-02f );
ALIGN4_INIT1( float SIMD_SP_cos_c4, -4.999999963e-01f );

ALIGN4_INIT1( float SIMD_SP_atan_c0,  0.0028662257f );
ALIGN4_INIT1( float SIMD_SP_atan_c1, -0.0161657367f );
ALIGN4_INIT1( float SIMD_SP_atan_c2,  0.0429096138f );
ALIGN4_INIT1( float SIMD_SP_atan_c3, -0.0752896400f );
ALIGN4_INIT1( float SIMD_SP_atan_c4,  0.1065626393f );
ALIGN4_INIT1( float SIMD_SP_atan_c5, -0.1420889944f );
ALIGN4_INIT1( float SIMD_SP_atan_c6,  0.1999355085f );
ALIGN4_INIT1( float SIMD_SP_atan_c7, -0.3333314528f );

/*
============
SSE_InvSqrt
============
*/
float SSE_InvSqrt( float x ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float SSE_InvSqrt( float x )\r\n");
    return retVal;
}


/*
============
SSE_InvSqrt4
============
*/
void SSE_InvSqrt4( float x[4] ) {
    Sys_Printf("void SSE_InvSqrt4( float x[4] )\r\n");
}


/*
============
SSE_SinZeroHalfPI

  The angle must be between zero and half PI.
============
*/
float SSE_SinZeroHalfPI( float a ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float SSE_SinZeroHalfPI( float a )\r\n");
    return retVal;
}


/*
============
SSE_Sin4ZeroHalfPI

  The angle must be between zero and half PI.
============
*/
void SSE_Sin4ZeroHalfPI( float a[4], float s[4] ) {
    Sys_Printf("void SSE_Sin4ZeroHalfPI( float a[4], float s[4] )\r\n");
}


/*
============
SSE_Sin
============
*/
float SSE_Sin( float a ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float SSE_Sin( float a )\r\n");
    return retVal;
}


/*
============
SSE_Sin4
============
*/
void SSE_Sin4( float a[4], float s[4] ) {
    Sys_Printf("void SSE_Sin4( float a[4], float s[4] )\r\n");
}


/*
============
SSE_CosZeroHalfPI

  The angle must be between zero and half PI.
============
*/
float SSE_CosZeroHalfPI( float a ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float SSE_CosZeroHalfPI( float a )\r\n");
    return retVal;
}


/*
============
SSE_Cos4ZeroHalfPI

  The angle must be between zero and half PI.
============
*/
void SSE_Cos4ZeroHalfPI( float a[4], float c[4] ) {
    Sys_Printf("void SSE_Cos4ZeroHalfPI( float a[4], float c[4] )\r\n");
}


/*
============
SSE_Cos
============
*/
float SSE_Cos( float a ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float SSE_Cos( float a )\r\n");
    return retVal;
}


/*
============
SSE_Cos4
============
*/
void SSE_Cos4( float a[4], float c[4] ) {
    Sys_Printf("void SSE_Cos4( float a[4], float c[4] )\r\n");
}


/*
============
SSE_SinCos
============
*/
void SSE_SinCos( float a, float &s, float &c ) {
    Sys_Printf("void SSE_SinCos( float a, float &s, float &c )\r\n");
}


/*
============
SSE_SinCos4
============
*/
void SSE_SinCos4( float a[4], float s[4], float c[4] ) {
    Sys_Printf("void SSE_SinCos4( float a[4], float s[4], float c[4] )\r\n");
}


/*
============
SSE_ATanPositive

  Both 'x' and 'y' must be positive.
============
*/
float SSE_ATanPositive( float y, float x ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float SSE_ATanPositive( float y, float x )\r\n");
    return retVal;
}


/*
============
SSE_ATan4Positive

  Both 'x' and 'y' must be positive.
============
*/
void SSE_ATan4Positive( float y[4], float x[4], float at[4] ) {
    Sys_Printf("void SSE_ATan4Positive( float y[4], float x[4], float at[4] )\r\n");
}


/*
============
SSE_ATan
============
*/
float SSE_ATan( float y, float x ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float SSE_ATan( float y, float x )\r\n");
    return retVal;
}


/*
============
SSE_ATan4
============
*/
void SSE_ATan4( float y[4], float x[4], float at[4] ) {
    Sys_Printf("void SSE_ATan4( float y[4], float x[4], float at[4] )\r\n");
}


/*
============
SSE_TestTrigonometry
============
*/
void SSE_TestTrigonometry( void ) {
    Sys_Printf("void SSE_TestTrigonometry( void )\r\n");
}


/*
============
idSIMD_SSE::GetName
============
*/
const char * idSIMD_SSE::GetName( void ) const {
    Sys_Printf("char * idSIMD_SSE::GetName( void )\r\n");
    return NULL;
}


/*
============
idSIMD_SSE::Add

  dst[i] = constant + src[i];
============
*/
void VPCALL idSIMD_SSE::Add( float *dst, const float constant, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Add( float *dst, const float constant, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Add

  dst[i] = src0[i] + src1[i];
============
*/
void VPCALL idSIMD_SSE::Add( float *dst, const float *src0, const float *src1, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Add( float *dst, const float *src0, const float *src1, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Sub

  dst[i] = constant - src[i];
============
*/
void VPCALL idSIMD_SSE::Sub( float *dst, const float constant, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Sub( float *dst, const float constant, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Sub

  dst[i] = src0[i] - src1[i];
============
*/
void VPCALL idSIMD_SSE::Sub( float *dst, const float *src0, const float *src1, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Sub( float *dst, const float *src0, const float *src1, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Mul

  dst[i] = constant * src[i];
============
*/
void VPCALL idSIMD_SSE::Mul( float *dst, const float constant, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Mul( float *dst, const float constant, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Mul

  dst[i] = src0[i] * src1[i];
============
*/
void VPCALL idSIMD_SSE::Mul( float *dst, const float *src0, const float *src1, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Mul( float *dst, const float *src0, const float *src1, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Div

  dst[i] = constant / src[i];
============
*/
void VPCALL idSIMD_SSE::Div( float *dst, const float constant, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Div( float *dst, const float constant, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Div

  dst[i] = src0[i] / src1[i];
============
*/
void VPCALL idSIMD_SSE::Div( float *dst, const float *src0, const float *src1, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Div( float *dst, const float *src0, const float *src1, const int count )\r\n");
    return retVal;
}

/*
============
Simd_MulAdd

 assumes count >= 7
============
*/
static void Simd_MulAdd( float *dst, const float constant, const float *src, const int count ) {
    Sys_Printf("void Simd_MulAdd( float *dst, const float constant, const float *src, const int count )\r\n");
}


#define MULADD_FEW( OPER )																				\
switch( count ) {																						\
	case 0:																								\
		return;																							\
	case 1:																								\
		dst[0] OPER c * src[0];																			\
		return;																							\
	case 2:																								\
		dst[0] OPER c * src[0]; dst[1] OPER c * src[1];													\
		return;																							\
	case 3:																								\
		dst[0] OPER c * src[0]; dst[1] OPER c * src[1]; dst[2] OPER c * src[2];							\
		return;																							\
	case 4:																								\
		dst[0] OPER c * src[0]; dst[1] OPER c * src[1]; dst[2] OPER c * src[2]; dst[3] OPER c * src[3];	\
		return;																							\
	case 5:																								\
		dst[0] OPER c * src[0]; dst[1] OPER c * src[1]; dst[2] OPER c * src[2]; dst[3] OPER c * src[3];	\
		dst[4] OPER c * src[4];																			\
		return;																							\
	case 6:																								\
		dst[0] OPER c * src[0]; dst[1] OPER c * src[1]; dst[2] OPER c * src[2]; dst[3] OPER c * src[3];	\
		dst[4] OPER c * src[4]; dst[5] OPER c * src[5];													\
		return;																							\
	case 7:																								\
		dst[0] OPER c * src[0]; dst[1] OPER c * src[1]; dst[2] OPER c * src[2]; dst[3] OPER c * src[3];	\
		dst[4] OPER c * src[4]; dst[5] OPER c * src[5]; dst[6] OPER c * src[6];							\
		return;																							\
	case 8:																								\
		dst[0] OPER c * src[0]; dst[1] OPER c * src[1]; dst[2] OPER c * src[2]; dst[3] OPER c * src[3];	\
		dst[4] OPER c * src[4]; dst[5] OPER c * src[5]; dst[6] OPER c * src[6]; dst[7] OPER c * src[7];	\
		return;																							\
	case 9:																								\
		dst[0] OPER c * src[0]; dst[1] OPER c * src[1]; dst[2] OPER c * src[2]; dst[3] OPER c * src[3];	\
		dst[4] OPER c * src[4]; dst[5] OPER c * src[5]; dst[6] OPER c * src[6]; dst[7] OPER c * src[7];	\
		dst[8] OPER c * src[8];																			\
		return;																							\
	case 10:																							\
		dst[0] OPER c * src[0]; dst[1] OPER c * src[1]; dst[2] OPER c * src[2]; dst[3] OPER c * src[3];	\
		dst[4] OPER c * src[4]; dst[5] OPER c * src[5]; dst[6] OPER c * src[6]; dst[7] OPER c * src[7];	\
		dst[8] OPER c * src[8]; dst[9] OPER c * src[9];													\
		return;																							\
	case 11:																							\
		dst[0] OPER c * src[0]; dst[1] OPER c * src[1]; dst[2] OPER c * src[2]; dst[3] OPER c * src[3];	\
		dst[4] OPER c * src[4]; dst[5] OPER c * src[5]; dst[6] OPER c * src[6]; dst[7] OPER c * src[7];	\
		dst[8] OPER c * src[8]; dst[9] OPER c * src[9]; dst[10] OPER c * src[10];						\
		return;																							\
}

/*
============
idSIMD_SSE::MulAdd

  dst[i] += constant * src[i];
============
*/
void VPCALL idSIMD_SSE::MulAdd( float *dst, const float constant, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MulAdd( float *dst, const float constant, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MulAdd

  dst[i] += src0[i] * src1[i];
============
*/
void VPCALL idSIMD_SSE::MulAdd( float *dst, const float *src0, const float *src1, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MulAdd( float *dst, const float *src0, const float *src1, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MulSub

  dst[i] -= constant * src[i];
============
*/
void VPCALL idSIMD_SSE::MulSub( float *dst, const float constant, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MulSub( float *dst, const float constant, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MulSub

  dst[i] -= src0[i] * src1[i];
============
*/
void VPCALL idSIMD_SSE::MulSub( float *dst, const float *src0, const float *src1, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MulSub( float *dst, const float *src0, const float *src1, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Dot

  dst[i] = constant * src[i];
============
*/
void VPCALL idSIMD_SSE::Dot( float *dst, const idVec3 &constant, const idVec3 *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Dot( float *dst, const idVec3 &constant, const idVec3 *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Dot

  dst[i] = constant * src[i].Normal() + src[i][3];
============
*/
void VPCALL idSIMD_SSE::Dot( float *dst, const idVec3 &constant, const idPlane *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Dot( float *dst, const idVec3 &constant, const idPlane *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Dot

  dst[i] = constant * src[i].xyz;
============
*/
void VPCALL idSIMD_SSE::Dot( float *dst, const idVec3 &constant, const idDrawVert *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Dot( float *dst, const idVec3 &constant, const idDrawVert *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Dot

  dst[i] = constant.Normal() * src[i] + constant[3];
============
*/
void VPCALL idSIMD_SSE::Dot( float *dst, const idPlane &constant, const idVec3 *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Dot( float *dst, const idPlane &constant, const idVec3 *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Dot

  dst[i] = constant.Normal() * src[i].Normal() + constant[3] * src[i][3];
============
*/
void VPCALL idSIMD_SSE::Dot( float *dst, const idPlane &constant, const idPlane *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Dot( float *dst, const idPlane &constant, const idPlane *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Dot

  dst[i] = constant.Normal() * src[i].xyz + constant[3];
============
*/
void VPCALL idSIMD_SSE::Dot( float *dst, const idPlane &constant, const idDrawVert *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Dot( float *dst, const idPlane &constant, const idDrawVert *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Dot

  dst[i] = src0[i] * src1[i];
============
*/
void VPCALL idSIMD_SSE::Dot( float *dst, const idVec3 *src0, const idVec3 *src1, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Dot( float *dst, const idVec3 *src0, const idVec3 *src1, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Dot

  dot = src1[0] * src2[0] + src1[1] * src2[1] + src1[2] * src2[2] + ...
============
*/
void VPCALL idSIMD_SSE::Dot( float &dot, const float *src1, const float *src2, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Dot( float &dot, const float *src1, const float *src2, const int count )\r\n");
    return retVal;
}


//
//	cmpeqps		==		Equal
//	cmpneqps	!=		Not Equal
//	cmpltps		<		Less Than
//  cmpnltps	>=		Not Less Than
//	cmpnleps	>		Not Less Or Equal
//
#define FLIP	not al
#define NOFLIP

#define COMPARECONSTANT( DST, SRC0, CONSTANT, COUNT, CMP, CMPSIMD, DOFLIP )				\
	int i, cnt, pre, post;																\
	float *aligned;																		\
																						\
	/* if the float array is not aligned on a 4 byte boundary */						\
	if ( ((int) SRC0) & 3 ) {															\
		/* unaligned memory access */													\
		pre = 0;																		\
		cnt = COUNT >> 2;																\
		post = COUNT - (cnt<<2);														\
		__asm	mov			edx, cnt													\
		__asm	test		edx, edx													\
		__asm	je			doneCmp														\
		__asm	push		ebx															\
		__asm	neg			edx															\
		__asm	mov			esi, SRC0													\
		__asm	prefetchnta	[esi+64]													\
		__asm	movss		xmm1, CONSTANT												\
		__asm	shufps		xmm1, xmm1, R_SHUFFLEPS( 0, 0, 0, 0 )						\
		__asm	mov			edi, DST													\
		__asm	mov			ecx, 0x01010101												\
		__asm loopNA:																	\
		__asm	movups		xmm0, [esi]													\
		__asm	prefetchnta	[esi+128]													\
		__asm	CMPSIMD		xmm0, xmm1													\
		__asm	movmskps	eax, xmm0													\
		__asm	DOFLIP																	\
		__asm	mov			ah, al														\
		__asm	shr			ah, 1														\
		__asm	mov			bx, ax														\
		__asm	shl			ebx, 14														\
		__asm	mov			bx, ax														\
		__asm	and			ebx, ecx													\
		__asm	mov			dword ptr [edi], ebx										\
		__asm	add			esi, 16														\
		__asm	add			edi, 4														\
		__asm	inc			edx															\
		__asm	jl			loopNA														\
		__asm	pop			ebx															\
	}																					\
	else {																				\
		/* aligned memory access */														\
		aligned = (float *) ((((int) SRC0) + 15) & ~15);								\
		if ( (int)aligned > ((int)src0) + COUNT ) {										\
			pre = COUNT;																\
			post = 0;																	\
		}																				\
		else {																			\
			pre = aligned - SRC0;														\
			cnt = (COUNT - pre) >> 2;													\
			post = COUNT - pre - (cnt<<2);												\
			__asm	mov			edx, cnt												\
			__asm	test		edx, edx												\
			__asm	je			doneCmp													\
			__asm	push		ebx														\
			__asm	neg			edx														\
			__asm	mov			esi, aligned											\
			__asm	prefetchnta	[esi+64]												\
			__asm	movss		xmm1, CONSTANT											\
			__asm	shufps		xmm1, xmm1, R_SHUFFLEPS( 0, 0, 0, 0 )					\
			__asm	mov			edi, DST												\
			__asm	add			edi, pre												\
			__asm	mov			ecx, 0x01010101											\
			__asm loopA:																\
			__asm	movaps		xmm0, [esi]												\
			__asm	prefetchnta	[esi+128]												\
			__asm	CMPSIMD		xmm0, xmm1												\
			__asm	movmskps	eax, xmm0												\
			__asm	DOFLIP																\
			__asm	mov			ah, al													\
			__asm	shr			ah, 1													\
			__asm	mov			bx, ax													\
			__asm	shl			ebx, 14													\
			__asm	mov			bx, ax													\
			__asm	and			ebx, ecx												\
			__asm	mov			dword ptr [edi], ebx									\
			__asm	add			esi, 16													\
			__asm	add			edi, 4													\
			__asm	inc			edx														\
			__asm	jl			loopA													\
			__asm	pop			ebx														\
		}																				\
	}																					\
	doneCmp:																			\
	double c = constant;																\
	for ( i = 0; i < pre; i++ ) {														\
		dst[i] = src0[i] CMP c;															\
	}																					\
 	for ( i = count - post; i < count; i++ ) {											\
		dst[i] = src0[i] CMP c;															\
	}

#define COMPAREBITCONSTANT( DST, BITNUM, SRC0, CONSTANT, COUNT, CMP, CMPSIMD, DOFLIP )	\
	int i, cnt, pre, post;																\
	float *aligned;																		\
																						\
	/* if the float array is not aligned on a 4 byte boundary */						\
	if ( ((int) SRC0) & 3 ) {															\
		/* unaligned memory access */													\
		pre = 0;																		\
		cnt = COUNT >> 2;																\
		post = COUNT - (cnt<<2);														\
		__asm	mov			edx, cnt													\
		__asm	test		edx, edx													\
		__asm	je			doneCmp														\
		__asm	push		ebx															\
		__asm	neg			edx															\
		__asm	mov			esi, SRC0													\
		__asm	prefetchnta	[esi+64]													\
		__asm	movss		xmm1, CONSTANT												\
		__asm	shufps		xmm1, xmm1, R_SHUFFLEPS( 0, 0, 0, 0 )						\
		__asm	mov			edi, DST													\
		__asm	mov			cl, bitNum													\
		__asm loopNA:																	\
		__asm	movups		xmm0, [esi]													\
		__asm	prefetchnta	[esi+128]													\
		__asm	CMPSIMD		xmm0, xmm1													\
		__asm	movmskps	eax, xmm0													\
		__asm	DOFLIP																	\
		__asm	mov			ah, al														\
		__asm	shr			ah, 1														\
		__asm	mov			bx, ax														\
		__asm	shl			ebx, 14														\
		__asm	mov			bx, ax														\
		__asm	and			ebx, 0x01010101												\
		__asm	shl			ebx, cl														\
		__asm	or			ebx, dword ptr [edi]										\
		__asm	mov			dword ptr [edi], ebx										\
		__asm	add			esi, 16														\
		__asm	add			edi, 4														\
		__asm	inc			edx															\
		__asm	jl			loopNA														\
		__asm	pop			ebx															\
	}																					\
	else {																				\
		/* aligned memory access */														\
		aligned = (float *) ((((int) SRC0) + 15) & ~15);								\
		if ( (int)aligned > ((int)src0) + COUNT ) {										\
			pre = COUNT;																\
			post = 0;																	\
		}																				\
		else {																			\
			pre = aligned - SRC0;														\
			cnt = (COUNT - pre) >> 2;													\
			post = COUNT - pre - (cnt<<2);												\
			__asm	mov			edx, cnt												\
			__asm	test		edx, edx												\
			__asm	je			doneCmp													\
			__asm	push		ebx														\
			__asm	neg			edx														\
			__asm	mov			esi, aligned											\
			__asm	prefetchnta	[esi+64]												\
			__asm	movss		xmm1, CONSTANT											\
			__asm	shufps		xmm1, xmm1, R_SHUFFLEPS( 0, 0, 0, 0 )					\
			__asm	mov			edi, DST												\
			__asm	add			edi, pre												\
			__asm	mov			cl, bitNum												\
			__asm loopA:																\
			__asm	movaps		xmm0, [esi]												\
			__asm	prefetchnta	[esi+128]												\
			__asm	CMPSIMD		xmm0, xmm1												\
			__asm	movmskps	eax, xmm0												\
			__asm	DOFLIP																\
			__asm	mov			ah, al													\
			__asm	shr			ah, 1													\
			__asm	mov			bx, ax													\
			__asm	shl			ebx, 14													\
			__asm	mov			bx, ax													\
			__asm	and			ebx, 0x01010101											\
			__asm	shl			ebx, cl													\
			__asm	or			ebx, dword ptr [edi]									\
			__asm	mov			dword ptr [edi], ebx									\
			__asm	add			esi, 16													\
			__asm	add			edi, 4													\
			__asm	inc			edx														\
			__asm	jl			loopA													\
			__asm	pop			ebx														\
		}																				\
	}																					\
	doneCmp:																			\
	float c = constant;																	\
	for ( i = 0; i < pre; i++ ) {														\
		dst[i] |= ( src0[i] CMP c ) << BITNUM;											\
	}																					\
 	for ( i = count - post; i < count; i++ ) {											\
		dst[i] |= ( src0[i] CMP c ) << BITNUM;											\
	}

/*
============
idSIMD_SSE::CmpGT

  dst[i] = src0[i] > constant;
============
*/
void VPCALL idSIMD_SSE::CmpGT( byte *dst, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::CmpGT( byte *dst, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::CmpGT

  dst[i] |= ( src0[i] > constant ) << bitNum;
============
*/
void VPCALL idSIMD_SSE::CmpGT( byte *dst, const byte bitNum, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::CmpGT( byte *dst, const byte bitNum, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::CmpGE

  dst[i] = src0[i] >= constant;
============
*/
void VPCALL idSIMD_SSE::CmpGE( byte *dst, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::CmpGE( byte *dst, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::CmpGE

  dst[i] |= ( src0[i] >= constant ) << bitNum;
============
*/
void VPCALL idSIMD_SSE::CmpGE( byte *dst, const byte bitNum, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::CmpGE( byte *dst, const byte bitNum, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::CmpLT

  dst[i] = src0[i] < constant;
============
*/
void VPCALL idSIMD_SSE::CmpLT( byte *dst, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::CmpLT( byte *dst, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::CmpLT

  dst[i] |= ( src0[i] < constant ) << bitNum;
============
*/
void VPCALL idSIMD_SSE::CmpLT( byte *dst, const byte bitNum, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::CmpLT( byte *dst, const byte bitNum, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::CmpLE

  dst[i] = src0[i] <= constant;
============
*/
void VPCALL idSIMD_SSE::CmpLE( byte *dst, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::CmpLE( byte *dst, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::CmpLE

  dst[i] |= ( src0[i] <= constant ) << bitNum;
============
*/
void VPCALL idSIMD_SSE::CmpLE( byte *dst, const byte bitNum, const float *src0, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::CmpLE( byte *dst, const byte bitNum, const float *src0, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MinMax
============
*/
void VPCALL idSIMD_SSE::MinMax( float &min, float &max, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MinMax( float &min, float &max, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MinMax
============
*/
void VPCALL idSIMD_SSE::MinMax( idVec2 &min, idVec2 &max, const idVec2 *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MinMax( idVec2 &min, idVec2 &max, const idVec2 *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MinMax
============
*/
void VPCALL idSIMD_SSE::MinMax( idVec3 &min, idVec3 &max, const idVec3 *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MinMax( idVec3 &min, idVec3 &max, const idVec3 *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MinMax
============
*/
void VPCALL idSIMD_SSE::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MinMax
============
*/
void VPCALL idSIMD_SSE::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int *indexes, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MinMax( idVec3 &min, idVec3 &max, const idDrawVert *src, const int *indexes, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Clamp
============
*/
void VPCALL idSIMD_SSE::Clamp( float *dst, const float *src, const float min, const float max, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Clamp( float *dst, const float *src, const float min, const float max, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::ClampMin
============
*/
void VPCALL idSIMD_SSE::ClampMin( float *dst, const float *src, const float min, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::ClampMin( float *dst, const float *src, const float min, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::ClampMax
============
*/
void VPCALL idSIMD_SSE::ClampMax( float *dst, const float *src, const float max, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::ClampMax( float *dst, const float *src, const float max, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Zero16
============
*/
void VPCALL idSIMD_SSE::Zero16( float *dst, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Zero16( float *dst, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Negate16
============
*/
void VPCALL idSIMD_SSE::Negate16( float *dst, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Negate16( float *dst, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Copy16
============
*/
void VPCALL idSIMD_SSE::Copy16( float *dst, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Copy16( float *dst, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Add16
============
*/
void VPCALL idSIMD_SSE::Add16( float *dst, const float *src1, const float *src2, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Add16( float *dst, const float *src1, const float *src2, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Sub16
============
*/
void VPCALL idSIMD_SSE::Sub16( float *dst, const float *src1, const float *src2, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Sub16( float *dst, const float *src1, const float *src2, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::Mul16
============
*/
void VPCALL idSIMD_SSE::Mul16( float *dst, const float *src1, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::Mul16( float *dst, const float *src1, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::AddAssign16
============
*/
void VPCALL idSIMD_SSE::AddAssign16( float *dst, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::AddAssign16( float *dst, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::SubAssign16
============
*/
void VPCALL idSIMD_SSE::SubAssign16( float *dst, const float *src, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::SubAssign16( float *dst, const float *src, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MulAssign16
============
*/
void VPCALL idSIMD_SSE::MulAssign16( float *dst, const float constant, const int count ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MulAssign16( float *dst, const float constant, const int count )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MatX_MultiplyVecX

	optimizes the following matrix multiplications:

	NxN * Nx1
	Nx6 * 6x1
	6xN * Nx1

	with N in the range [1-6]
============
*/
void VPCALL idSIMD_SSE::MatX_MultiplyVecX( idVecX &dst, const idMatX &mat, const idVecX &vec ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MatX_MultiplyVecX( idVecX &dst, const idMatX &mat, const idVecX &vec )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MatX_MultiplyAddVecX

	optimizes the following matrix multiplications:

	NxN * Nx1
	Nx6 * 6x1
	6xN * Nx1

	with N in the range [1-6]
============
*/
void VPCALL idSIMD_SSE::MatX_MultiplyAddVecX( idVecX &dst, const idMatX &mat, const idVecX &vec ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MatX_MultiplyAddVecX( idVecX &dst, const idMatX &mat, const idVecX &vec )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MatX_MultiplySubVecX

	optimizes the following matrix multiplications:

	NxN * Nx1
	Nx6 * 6x1
	6xN * Nx1

	with N in the range [1-6]
============
*/
void VPCALL idSIMD_SSE::MatX_MultiplySubVecX( idVecX &dst, const idMatX &mat, const idVecX &vec ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MatX_MultiplySubVecX( idVecX &dst, const idMatX &mat, const idVecX &vec )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MatX_TransposeMultiplyVecX

	optimizes the following matrix multiplications:

	Nx6 * Nx1
	6xN * 6x1

	with N in the range [1-6]
============
*/
void VPCALL idSIMD_SSE::MatX_TransposeMultiplyVecX( idVecX &dst, const idMatX &mat, const idVecX &vec ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MatX_TransposeMultiplyVecX( idVecX &dst, const idMatX &mat, const idVecX &vec )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MatX_TransposeMultiplyAddVecX

	optimizes the following matrix multiplications:

	Nx6 * Nx1
	6xN * 6x1

	with N in the range [1-6]
============
*/
void VPCALL idSIMD_SSE::MatX_TransposeMultiplyAddVecX( idVecX &dst, const idMatX &mat, const idVecX &vec ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MatX_TransposeMultiplyAddVecX( idVecX &dst, const idMatX &mat, const idVecX &vec )\r\n");
    return retVal;
}


/*
============
void idSIMD_SSE::MatX_TransposeMultiplySubVecX

	optimizes the following matrix multiplications:

	Nx6 * Nx1
	6xN * 6x1

	with N in the range [1-6]
============
*/
void VPCALL idSIMD_SSE::MatX_TransposeMultiplySubVecX( idVecX &dst, const idMatX &mat, const idVecX &vec ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MatX_TransposeMultiplySubVecX( idVecX &dst, const idMatX &mat, const idVecX &vec )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MatX_MultiplyMatX

	optimizes the following matrix multiplications:

	NxN * Nx6
	6xN * Nx6
	Nx6 * 6xN
	6x6 * 6xN

	with N in the range [1-6].

	The hot cache clock cycle counts are generally better for the SIMD version than the
	FPU version. At times up to 40% less clock cycles on a P3. In practise however,
	the results are poor probably due to memory access.
============
*/
void VPCALL idSIMD_SSE::MatX_MultiplyMatX( idMatX &dst, const idMatX &m1, const idMatX &m2 ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MatX_MultiplyMatX( idMatX &dst, const idMatX &m1, const idMatX &m2 )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MatX_TransposeMultiplyMatX

	optimizes the following transpose matrix multiplications:

	Nx6 * NxN
	6xN * 6x6

	with N in the range [1-6].
============
*/
void VPCALL idSIMD_SSE::MatX_TransposeMultiplyMatX( idMatX &dst, const idMatX &m1, const idMatX &m2 ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MatX_TransposeMultiplyMatX( idMatX &dst, const idMatX &m1, const idMatX &m2 )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MatX_LowerTriangularSolve

  solves x in Lx = b for the n * n sub-matrix of L
  if skip > 0 the first skip elements of x are assumed to be valid already
  L has to be a lower triangular matrix with (implicit) ones on the diagonal
  x == b is allowed
============
*/
void VPCALL idSIMD_SSE::MatX_LowerTriangularSolve( const idMatX &L, float *x, const float *b, const int n, int skip ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MatX_LowerTriangularSolve( const idMatX &L, float *x, const float *b, const int n, int skip )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MatX_LowerTriangularSolveTranspose

  solves x in L'x = b for the n * n sub-matrix of L
  L has to be a lower triangular matrix with (implicit) ones on the diagonal
  x == b is allowed
============
*/
void VPCALL idSIMD_SSE::MatX_LowerTriangularSolveTranspose( const idMatX &L, float *x, const float *b, const int n ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MatX_LowerTriangularSolveTranspose( const idMatX &L, float *x, const float *b, const int n )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MatX_LDLTFactor

  in-place factorization LDL' of the n * n sub-matrix of mat
  the reciprocal of the diagonal elements are stored in invDiag
  currently assumes the number of columns of mat is a multiple of 4
============
*/
bool VPCALL idSIMD_SSE::MatX_LDLTFactor( idMatX &mat, idVecX &invDiag, const int n ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MatX_LDLTFactor( idMatX &mat, idVecX &invDiag, const int n )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::BlendJoints
============
*/
#define REFINE_BLENDJOINTS_RECIPROCAL

void VPCALL idSIMD_SSE::BlendJoints( idJointQuat *joints, const idJointQuat *blendJoints, const float lerp, const int *index, const int numJoints ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::BlendJoints( idJointQuat *joints, const idJointQuat *blendJoints, const float lerp, const int *index, const int numJoints )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::ConvertJointQuatsToJointMats
============
*/
void VPCALL idSIMD_SSE::ConvertJointQuatsToJointMats( idJointMat *jointMats, const idJointQuat *jointQuats, const int numJoints ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::ConvertJointQuatsToJointMats( idJointMat *jointMats, const idJointQuat *jointQuats, const int numJoints )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::ConvertJointMatsToJointQuats
============
*/
void VPCALL idSIMD_SSE::ConvertJointMatsToJointQuats( idJointQuat *jointQuats, const idJointMat *jointMats, const int numJoints ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::ConvertJointMatsToJointQuats( idJointQuat *jointQuats, const idJointMat *jointMats, const int numJoints )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::TransformJoints
============
*/
void VPCALL idSIMD_SSE::TransformJoints( idJointMat *jointMats, const int *parents, const int firstJoint, const int lastJoint ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::TransformJoints( idJointMat *jointMats, const int *parents, const int firstJoint, const int lastJoint )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::UntransformJoints
============
*/
void VPCALL idSIMD_SSE::UntransformJoints( idJointMat *jointMats, const int *parents, const int firstJoint, const int lastJoint ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::UntransformJoints( idJointMat *jointMats, const int *parents, const int firstJoint, const int lastJoint )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::TransformVerts
============
*/
void VPCALL idSIMD_SSE::TransformVerts( idDrawVert *verts, const int numVerts, const idJointMat *joints, const idVec4 *weights, const int *index, const int numWeights ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::TransformVerts( idDrawVert *verts, const int numVerts, const idJointMat *joints, const idVec4 *weights, const int *index, const int numWeights )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::TracePointCull
============
*/
void VPCALL idSIMD_SSE::TracePointCull( byte *cullBits, byte &totalOr, const float radius, const idPlane *planes, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::TracePointCull( byte *cullBits, byte &totalOr, const float radius, const idPlane *planes, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::DecalPointCull
============
*/
void VPCALL idSIMD_SSE::DecalPointCull( byte *cullBits, const idPlane *planes, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::DecalPointCull( byte *cullBits, const idPlane *planes, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::OverlayPointCull
============
*/
void VPCALL idSIMD_SSE::OverlayPointCull( byte *cullBits, idVec2 *texCoords, const idPlane *planes, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::OverlayPointCull( byte *cullBits, idVec2 *texCoords, const idPlane *planes, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::DeriveTriPlanes
============
*/
void VPCALL idSIMD_SSE::DeriveTriPlanes( idPlane *planes, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::DeriveTriPlanes( idPlane *planes, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::DeriveTangents
============
*/
//#define REFINE_TANGENT_SQUAREROOT
#define FIX_DEGENERATE_TANGENT

void VPCALL idSIMD_SSE::DeriveTangents( idPlane *planes, idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::DeriveTangents( idPlane *planes, idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::DeriveUnsmoothedTangents
============
*/
#define DERIVE_UNSMOOTHED_BITANGENT

void VPCALL idSIMD_SSE::DeriveUnsmoothedTangents( idDrawVert *verts, const dominantTri_s *dominantTris, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::DeriveUnsmoothedTangents( idDrawVert *verts, const dominantTri_s *dominantTris, const int numVerts )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::NormalizeTangents
============
*/
void VPCALL idSIMD_SSE::NormalizeTangents( idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::NormalizeTangents( idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::CreateTextureSpaceLightVectors
============
*/
void VPCALL idSIMD_SSE::CreateTextureSpaceLightVectors( idVec3 *lightVectors, const idVec3 &lightOrigin, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::CreateTextureSpaceLightVectors( idVec3 *lightVectors, const idVec3 &lightOrigin, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::CreateSpecularTextureCoords
============
*/
void VPCALL idSIMD_SSE::CreateSpecularTextureCoords( idVec4 *texCoords, const idVec3 &lightOrigin, const idVec3 &viewOrigin, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::CreateSpecularTextureCoords( idVec4 *texCoords, const idVec3 &lightOrigin, const idVec3 &viewOrigin, const idDrawVert *verts, const int numVerts, const int *indexes, const int numIndexes )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::CreateShadowCache
============
*/
int VPCALL idSIMD_SSE::CreateShadowCache( idVec4 *vertexCache, int *vertRemap, const idVec3 &lightOrigin, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::CreateShadowCache( idVec4 *vertexCache, int *vertRemap, const idVec3 &lightOrigin, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::CreateVertexProgramShadowCache
============
*/
int VPCALL idSIMD_SSE::CreateVertexProgramShadowCache( idVec4 *vertexCache, const idDrawVert *verts, const int numVerts ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::CreateVertexProgramShadowCache( idVec4 *vertexCache, const idDrawVert *verts, const int numVerts )\r\n");
    return retVal;
}


/*
============
SSE_UpSample11kHzMonoPCMTo44kHz
============
*/
static void SSE_UpSample11kHzMonoPCMTo44kHz( float *dest, const short *src, const int numSamples ) {
    Sys_Printf("void SSE_UpSample11kHzMonoPCMTo44kHz( float *dest, const short *src, const int numSamples )\r\n");
}


/*
============
SSE_UpSample11kHzStereoPCMTo44kHz
============
*/
static void SSE_UpSample11kHzStereoPCMTo44kHz( float *dest, const short *src, const int numSamples ) {
    Sys_Printf("void SSE_UpSample11kHzStereoPCMTo44kHz( float *dest, const short *src, const int numSamples )\r\n");
}


/*
============
SSE_UpSample22kHzMonoPCMTo44kHz
============
*/
static void SSE_UpSample22kHzMonoPCMTo44kHz( float *dest, const short *src, const int numSamples ) {
    Sys_Printf("void SSE_UpSample22kHzMonoPCMTo44kHz( float *dest, const short *src, const int numSamples )\r\n");
}


/*
============
SSE_UpSample22kHzStereoPCMTo44kHz
============
*/
static void SSE_UpSample22kHzStereoPCMTo44kHz( float *dest, const short *src, const int numSamples ) {
    Sys_Printf("void SSE_UpSample22kHzStereoPCMTo44kHz( float *dest, const short *src, const int numSamples )\r\n");
}


/*
============
SSE_UpSample44kHzMonoPCMTo44kHz
============
*/
static void SSE_UpSample44kHzMonoPCMTo44kHz( float *dest, const short *src, const int numSamples ) {
    Sys_Printf("void SSE_UpSample44kHzMonoPCMTo44kHz( float *dest, const short *src, const int numSamples )\r\n");
}


/*
============
idSIMD_SSE::UpSamplePCMTo44kHz

  Duplicate samples for 44kHz output.
============
*/
void idSIMD_SSE::UpSamplePCMTo44kHz( float *dest, const short *src, const int numSamples, const int kHz, const int numChannels ) {
    Sys_Printf("void idSIMD_SSE::UpSamplePCMTo44kHz( float *dest, const short *src, const int numSamples, const int kHz, const int numChannels )\r\n");
}


/*
============
SSE_UpSample11kHzMonoOGGTo44kHz
============
*/
static void SSE_UpSample11kHzMonoOGGTo44kHz( float *dest, const float *src, const int numSamples ) {
    Sys_Printf("void SSE_UpSample11kHzMonoOGGTo44kHz( float *dest, const float *src, const int numSamples )\r\n");
}


/*
============
SSE_UpSample11kHzStereoOGGTo44kHz
============
*/
static void SSE_UpSample11kHzStereoOGGTo44kHz( float *dest, const float * const *src, const int numSamples ) {
    Sys_Printf("void SSE_UpSample11kHzStereoOGGTo44kHz( float *dest, const float * const *src, const int numSamples )\r\n");
}


/*
============
SSE_UpSample22kHzMonoOGGTo44kHz
============
*/
static void SSE_UpSample22kHzMonoOGGTo44kHz( float *dest, const float *src, const int numSamples ) {
    Sys_Printf("void SSE_UpSample22kHzMonoOGGTo44kHz( float *dest, const float *src, const int numSamples )\r\n");
}


/*
============
SSE_UpSample22kHzStereoOGGTo44kHz
============
*/
static void SSE_UpSample22kHzStereoOGGTo44kHz( float *dest, const float * const *src, const int numSamples ) {
    Sys_Printf("void SSE_UpSample22kHzStereoOGGTo44kHz( float *dest, const float * const *src, const int numSamples )\r\n");
}


/*
============
SSE_UpSample44kHzMonoOGGTo44kHz
============
*/
static void SSE_UpSample44kHzMonoOGGTo44kHz( float *dest, const float *src, const int numSamples ) {
    Sys_Printf("void SSE_UpSample44kHzMonoOGGTo44kHz( float *dest, const float *src, const int numSamples )\r\n");
}


/*
============
SSE_UpSample44kHzStereoOGGTo44kHz
============
*/
static void SSE_UpSample44kHzStereoOGGTo44kHz( float *dest, const float * const *src, const int numSamples ) {
    Sys_Printf("void SSE_UpSample44kHzStereoOGGTo44kHz( float *dest, const float * const *src, const int numSamples )\r\n");
}


/*
============
idSIMD_SSE::UpSampleOGGTo44kHz

  Duplicate samples for 44kHz output.
============
*/
void idSIMD_SSE::UpSampleOGGTo44kHz( float *dest, const float * const *ogg, const int numSamples, const int kHz, const int numChannels ) {
    Sys_Printf("void idSIMD_SSE::UpSampleOGGTo44kHz( float *dest, const float * const *ogg, const int numSamples, const int kHz, const int numChannels )\r\n");
}


/*
============
idSIMD_SSE::MixSoundTwoSpeakerMono
============
*/
void VPCALL idSIMD_SSE::MixSoundTwoSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MixSoundTwoSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MixSoundTwoSpeakerStereo
============
*/
void VPCALL idSIMD_SSE::MixSoundTwoSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MixSoundTwoSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[2], const float currentV[2] )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MixSoundSixSpeakerMono
============
*/
void VPCALL idSIMD_SSE::MixSoundSixSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MixSoundSixSpeakerMono( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MixSoundSixSpeakerStereo
============
*/
void VPCALL idSIMD_SSE::MixSoundSixSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MixSoundSixSpeakerStereo( float *mixBuffer, const float *samples, const int numSamples, const float lastV[6], const float currentV[6] )\r\n");
    return retVal;
}


/*
============
idSIMD_SSE::MixedSoundToSamples
============
*/
void VPCALL idSIMD_SSE::MixedSoundToSamples( short *samples, const float *mixBuffer, const int numSamples ) {
    VPCALL retVal;
    memset(&retVal, 0, sizeof(VPCALL));
    Sys_Printf("VPCALL idSIMD_SSE::MixedSoundToSamples( short *samples, const float *mixBuffer, const int numSamples )\r\n");
    return retVal;
}


#endif /* _WIN32 */
