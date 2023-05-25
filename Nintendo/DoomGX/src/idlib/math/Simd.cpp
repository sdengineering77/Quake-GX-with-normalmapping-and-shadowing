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
#include "Simd_3DNow.h"
#include "Simd_SSE.h"
#include "Simd_SSE2.h"
#include "Simd_SSE3.h"
#include "Simd_AltiVec.h"


idSIMDProcessor	*	processor = NULL;			// pointer to SIMD processor
idSIMDProcessor *	generic = NULL;				// pointer to generic SIMD implementation
idSIMDProcessor *	SIMDProcessor = NULL;


/*
================
idSIMD::Init
================
*/
void idSIMD::Init( void ) {
	generic = new idSIMD_Generic;
	generic->cpuid = CPUID_GENERIC;
	processor = NULL;
	SIMDProcessor = generic;
}


/*
============
idSIMD::InitProcessor
============
*/
void idSIMD::InitProcessor( const char *module, bool forceGeneric ) {
	cpuid_t cpuid;
	idSIMDProcessor *newProcessor;

	cpuid = idLib::sys->GetProcessorId();

	if ( forceGeneric ) {

		newProcessor = generic;

	} else {

		if ( !processor ) {
			if ( ( cpuid & CPUID_ALTIVEC ) ) {
				processor = new idSIMD_AltiVec;
			} else if ( ( cpuid & CPUID_MMX ) && ( cpuid & CPUID_SSE ) && ( cpuid & CPUID_SSE2 ) && ( cpuid & CPUID_SSE3 ) ) {
				processor = new idSIMD_SSE3;
			} else if ( ( cpuid & CPUID_MMX ) && ( cpuid & CPUID_SSE ) && ( cpuid & CPUID_SSE2 ) ) {
				processor = new idSIMD_SSE2;
			} else if ( ( cpuid & CPUID_MMX ) && ( cpuid & CPUID_SSE ) ) {
				processor = new idSIMD_SSE;
			} else if ( ( cpuid & CPUID_MMX ) && ( cpuid & CPUID_3DNOW ) ) {
				processor = new idSIMD_3DNow;
			} else if ( ( cpuid & CPUID_MMX ) ) {
				processor = new idSIMD_MMX;
			} else {
				processor = generic;
			}
			processor->cpuid = cpuid;
		}

		newProcessor = processor;
	}

	if ( newProcessor != SIMDProcessor ) {
		SIMDProcessor = newProcessor;
		idLib::common->Printf( "%s using %s for SIMD processing\n", module, SIMDProcessor->GetName() );
	}

	if ( cpuid & CPUID_FTZ ) {
		idLib::sys->FPU_SetFTZ( true );
		idLib::common->Printf( "enabled Flush-To-Zero mode\n" );
	}

	if ( cpuid & CPUID_DAZ ) {
		idLib::sys->FPU_SetDAZ( true );
		idLib::common->Printf( "enabled Denormals-Are-Zero mode\n" );
	}
}


/*
================
idSIMD::Shutdown
================
*/
void idSIMD::Shutdown( void ) {
	if ( processor != generic ) {
		delete processor;
	}
	delete generic;
	generic = NULL;
	processor = NULL;
	SIMDProcessor = NULL;
}



//===============================================================
//
// Test code
//
//===============================================================

#define COUNT		1024		// data count
#define NUMTESTS	2048		// number of tests

#define RANDOM_SEED		1013904223L	//((int)idLib::sys->GetClockTicks())

idSIMDProcessor *p_simd;
idSIMDProcessor *p_generic;
long baseClocks = 0;

#ifdef _WIN32

#define TIME_TYPE int

#pragma warning(disable : 4731)     // frame pointer register 'ebx' modified by inline assembly code

long saved_ebx = 0;

#define StartRecordTime( start )			\
	__asm mov saved_ebx, ebx				\
	__asm xor eax, eax						\
	__asm cpuid								\
	__asm rdtsc								\
	__asm mov start, eax					\
	__asm xor eax, eax						\
	__asm cpuid

#define StopRecordTime( end )				\
	__asm xor eax, eax						\
	__asm cpuid								\
	__asm rdtsc								\
	__asm mov end, eax						\
	__asm mov ebx, saved_ebx				\
	__asm xor eax, eax						\
	__asm cpuid

#elif MACOS_X

#include <stdlib.h>
#include <unistd.h>			// this is for sleep()
#include <sys/time.h>
#include <sys/resource.h>
#include <mach/mach_time.h>

double ticksPerNanosecond;

#define TIME_TYPE uint64_t

#ifdef __MWERKS__ //time_in_millisec is missing
/*

    .text
	.align 2
	.globl _GetTB
_GetTB:

loop:
	        mftbu   r4	;  load from TBU
	        mftb    r5	;  load from TBL
	        mftbu   r6	;  load from TBU
	        cmpw    r6, r4	;  see if old == new
	        bne     loop	;  if not, carry occured, therefore loop

	        stw     r4, 0(r3)
	        stw     r5, 4(r3)

done:
	        blr		;  return

*/
typedef struct {
	unsigned int hi;
	unsigned int lo;
} U64;


asm void GetTB(U64 *in)
{
    Sys_Printf("void GetTB(U64 *in)\r\n");
}





double TBToDoubleNano( U64 startTime, U64 stopTime, double ticksPerNanosecond );

#if __MWERKS__
asm void GetTB( U64 * );
#else
void GetTB( U64 * );
#endif

double TBToDoubleNano( U64 startTime, U64 stopTime, double ticksPerNanosecond ) {
    double retVal;
    memset(&retVal, 0, sizeof(double));
    Sys_Printf("double TBToDoubleNano( U64 startTime, U64 stopTime, double ticksPerNanosecond )\r\n");
    return retVal;
}
       

TIME_TYPE time_in_millisec( void ) {
    TIME_TYPE retVal;
    memset(&retVal, 0, sizeof(TIME_TYPE));
    Sys_Printf("TIME_TYPE time_in_millisec( void )\r\n");
    return retVal;
}


#define StartRecordTime( start )			\
	start = time_in_millisec(); 

#define StopRecordTime( end )				\
	end = time_in_millisec();


#else
#define StartRecordTime( start )			\
	start = mach_absolute_time(); 

#define StopRecordTime( end )				\
	end = mach_absolute_time();
#endif
#else

#define TIME_TYPE int

#define StartRecordTime( start )			\
	start = 0;

#define StopRecordTime( end )				\
	end = 1;

#endif

#define GetBest( start, end, best )			\
	if ( !best || end - start < best ) {	\
		best = end - start;					\
	}


/*
============
PrintClocks
============
*/
void PrintClocks( const char *string, int dataCount, int clocks, int otherClocks = 0 ) {
	int i;

	idLib::common->Printf( string );
	for ( i = idStr::LengthWithoutColors(string); i < 48; i++ ) {
		idLib::common->Printf(" ");
	}
	clocks -= baseClocks;
	if ( otherClocks && clocks ) {
		otherClocks -= baseClocks;
		int p = (int) ( (float) ( otherClocks - clocks ) * 100.0f / (float) otherClocks );
		idLib::common->Printf( "c = %4d, clcks = %5d, %d%%\n", dataCount, clocks, p );
	} else {
		idLib::common->Printf( "c = %4d, clcks = %5d\n", dataCount, clocks );
	}
}

/*
============
GetBaseClocks
============
*/
void GetBaseClocks( void ) {
    Sys_Printf("void GetBaseClocks( void )\r\n");
}


/*
============
TestAdd
============
*/
void TestAdd( void ) {
    Sys_Printf("void TestAdd( void )\r\n");
}


/*
============
TestSub
============
*/
void TestSub( void ) {
    Sys_Printf("void TestSub( void )\r\n");
}


/*
============
TestMul
============
*/
void TestMul( void ) {
    Sys_Printf("void TestMul( void )\r\n");
}


/*
============
TestDiv
============
*/
void TestDiv( void ) {
    Sys_Printf("void TestDiv( void )\r\n");
}


/*
============
TestMulAdd
============
*/
void TestMulAdd( void ) {
    Sys_Printf("void TestMulAdd( void )\r\n");
}


/*
============
TestMulSub
============
*/
void TestMulSub( void ) {
    Sys_Printf("void TestMulSub( void )\r\n");
}


/*
============
TestDot
============
*/
void TestDot( void ) {
    Sys_Printf("void TestDot( void )\r\n");
}


/*
============
TestCompare
============
*/
void TestCompare( void ) {
    Sys_Printf("void TestCompare( void )\r\n");
}


/*
============
TestMinMax
============
*/
void TestMinMax( void ) {
    Sys_Printf("void TestMinMax( void )\r\n");
}


/*
============
TestClamp
============
*/
void TestClamp( void ) {
    Sys_Printf("void TestClamp( void )\r\n");
}


/*
============
TestMemcpy
============
*/
void TestMemcpy( void ) {
    Sys_Printf("void TestMemcpy( void )\r\n");
}


/*
============
TestMemset
============
*/
void TestMemset( void ) {
    Sys_Printf("void TestMemset( void )\r\n");
}


#define	MATX_SIMD_EPSILON			1e-5f

/*
============
TestMatXMultiplyVecX
============
*/
void TestMatXMultiplyVecX( void ) {
    Sys_Printf("void TestMatXMultiplyVecX( void )\r\n");
}


/*
============
TestMatXMultiplyAddVecX
============
*/
void TestMatXMultiplyAddVecX( void ) {
    Sys_Printf("void TestMatXMultiplyAddVecX( void )\r\n");
}


/*
============
TestMatXTransposeMultiplyVecX
============
*/
void TestMatXTransposeMultiplyVecX( void ) {
    Sys_Printf("void TestMatXTransposeMultiplyVecX( void )\r\n");
}


/*
============
TestMatXTransposeMultiplyAddVecX
============
*/
void TestMatXTransposeMultiplyAddVecX( void ) {
    Sys_Printf("void TestMatXTransposeMultiplyAddVecX( void )\r\n");
}


/*
============
TestMatXMultiplyMatX
============
*/
#define TEST_VALUE_RANGE			10.0f
#define	MATX_MATX_SIMD_EPSILON		1e-4f

void TestMatXMultiplyMatX( void ) {
    Sys_Printf("void TestMatXMultiplyMatX( void )\r\n");
}


/*
============
TestMatXTransposeMultiplyMatX
============
*/
void TestMatXTransposeMultiplyMatX( void ) {
    Sys_Printf("void TestMatXTransposeMultiplyMatX( void )\r\n");
}


#define MATX_LTS_SIMD_EPSILON		1.0f
#define MATX_LTS_SOLVE_SIZE			100

/*
============
TestMatXLowerTriangularSolve
============
*/
void TestMatXLowerTriangularSolve( void ) {
    Sys_Printf("void TestMatXLowerTriangularSolve( void )\r\n");
}


/*
============
TestMatXLowerTriangularSolveTranspose
============
*/
void TestMatXLowerTriangularSolveTranspose( void ) {
    Sys_Printf("void TestMatXLowerTriangularSolveTranspose( void )\r\n");
}


#define MATX_LDLT_SIMD_EPSILON			0.1f
#define MATX_LDLT_FACTOR_SOLVE_SIZE		64

/*
============
TestMatXLDLTFactor
============
*/
void TestMatXLDLTFactor( void ) {
    Sys_Printf("void TestMatXLDLTFactor( void )\r\n");
}


/*
============
TestBlendJoints
============
*/
void TestBlendJoints( void ) {
    Sys_Printf("void TestBlendJoints( void )\r\n");
}


/*
============
TestConvertJointQuatsToJointMats
============
*/
void TestConvertJointQuatsToJointMats( void ) {
    Sys_Printf("void TestConvertJointQuatsToJointMats( void )\r\n");
}


/*
============
TestConvertJointMatsToJointQuats
============
*/
void TestConvertJointMatsToJointQuats( void ) {
    Sys_Printf("void TestConvertJointMatsToJointQuats( void )\r\n");
}


/*
============
TestTransformJoints
============
*/
void TestTransformJoints( void ) {
    Sys_Printf("void TestTransformJoints( void )\r\n");
}


/*
============
TestUntransformJoints
============
*/
void TestUntransformJoints( void ) {
    Sys_Printf("void TestUntransformJoints( void )\r\n");
}


/*
============
TestTransformVerts
============
*/
#define NUMJOINTS	64
#define NUMVERTS	COUNT/2
void TestTransformVerts( void ) {
    Sys_Printf("void TestTransformVerts( void )\r\n");
}


/*
============
TestTracePointCull
============
*/
void TestTracePointCull( void ) {
    Sys_Printf("void TestTracePointCull( void )\r\n");
}


/*
============
TestDecalPointCull
============
*/
void TestDecalPointCull( void ) {
    Sys_Printf("void TestDecalPointCull( void )\r\n");
}


/*
============
TestOverlayPointCull
============
*/
void TestOverlayPointCull( void ) {
    Sys_Printf("void TestOverlayPointCull( void )\r\n");
}


/*
============
TestDeriveTriPlanes
============
*/
void TestDeriveTriPlanes( void ) {
    Sys_Printf("void TestDeriveTriPlanes( void )\r\n");
}


/*
============
TestDeriveTangents
============
*/
void TestDeriveTangents( void ) {
    Sys_Printf("void TestDeriveTangents( void )\r\n");
}


/*
============
TestDeriveUnsmoothedTangents
============
*/
void TestDeriveUnsmoothedTangents( void ) {
    Sys_Printf("void TestDeriveUnsmoothedTangents( void )\r\n");
}


/*
============
TestNormalizeTangents
============
*/
void TestNormalizeTangents( void ) {
    Sys_Printf("void TestNormalizeTangents( void )\r\n");
}


/*
============
TestGetTextureSpaceLightVectors
============
*/
void TestGetTextureSpaceLightVectors( void ) {
    Sys_Printf("void TestGetTextureSpaceLightVectors( void )\r\n");
}


/*
============
TestGetSpecularTextureCoords
============
*/
void TestGetSpecularTextureCoords( void ) {
    Sys_Printf("void TestGetSpecularTextureCoords( void )\r\n");
}


/*
============
TestCreateShadowCache
============
*/
void TestCreateShadowCache( void ) {
    Sys_Printf("void TestCreateShadowCache( void )\r\n");
}


/*
============
TestSoundUpSampling
============
*/
#define SOUND_UPSAMPLE_EPSILON		1.0f

void TestSoundUpSampling( void ) {
    Sys_Printf("void TestSoundUpSampling( void )\r\n");
}


/*
============
TestSoundMixing
============
*/
#define SOUND_MIX_EPSILON		2.0f

void TestSoundMixing( void ) {
    Sys_Printf("void TestSoundMixing( void )\r\n");
}


/*
============
TestMath
============
*/
void TestMath( void ) {
    Sys_Printf("void TestMath( void )\r\n");
}


/*
============
TestNegate
============
*/

// this wasn't previously in the test
void TestNegate( void ) {
    Sys_Printf("void TestNegate( void )\r\n");
}



/*
============
idSIMD::Test_f
============
*/
void idSIMD::Test_f( const idCmdArgs &args ) {
    Sys_Printf("void idSIMD::Test_f( const idCmdArgs &args )\r\n");
}

