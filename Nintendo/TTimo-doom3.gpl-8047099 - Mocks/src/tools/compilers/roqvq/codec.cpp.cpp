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
#include "../../../idlib/precompiled.h"
#pragma hdrstop

#include "codec.h"

float glimit( const float val ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float glimit( const float val )\r\n");
    return retVal;
}


codec::codec() {
	int i;

	common->Printf("init: initing.....\n");
	codebooksize = 256;
	codebook2 = (VQDATA **) Mem_ClearedAlloc(256*sizeof(VQDATA *));
  	for(i=0; i < 256; i++) {
	    codebook2[i] = (VQDATA *) Mem_ClearedAlloc(16*sizeof(VQDATA));
	}
	codebook4 = (VQDATA **) Mem_ClearedAlloc(256*sizeof(VQDATA *));
  	for(i=0; i < 256; i++) {
	    codebook4[i] = (VQDATA *) Mem_ClearedAlloc(64*sizeof(VQDATA));
	}
	previousImage[0] = 0;
	previousImage[1] = 0;
	image = 0;
	whichFrame = 0;
	qStatus = 0;
	luti = 0;
	overAmount = 0;
	codebookmade = 0;
	slop = 0;
}

codec::~codec()
{
	common->Printf("codec: resetting\n");
	if (qStatus) Mem_Free( qStatus);
	if (luti) Mem_Free(luti);
	if (previousImage[0]) delete previousImage[0];
	if (previousImage[1]) delete previousImage[1];
	qStatus = 0;
	initRGBtab = 0;
	previousImage[0] = 0;
	whichFrame = 0;
	luti = 0;
	return;
}

/* Because Shellsort is a variation on Insertion Sort, it has the same 
 * inconsistency that I noted in the InsertionSort class.  Notice where I 
 * subtract a move to compensate for calling a swap for visual purposes.
 */

void codec::Sort( float *list, int *intIndex, int numElements )
{
    Sys_Printf("void codec::Sort( float *list, int *intIndex, int numElements )\r\n");
}

	
void codec::Segment( int *alist, float *flist, int numElements, float rmse)
{
    Sys_Printf("void codec::Segment( int *alist, float *flist, int numElements, float rmse)\r\n");
}


int	codec::BestCodeword( unsigned char *tempvector, int dimension, VQDATA **codebook )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intcodec::BestCodeword( unsigned char *tempvector, int dimension, VQDATA **codebook )\r\n");
    return retVal;
}
    

void codec::SetPreviousImage( const char*filename, NSBitmapImageRep *timage )
{
    Sys_Printf("void codec::SetPreviousImage( const char*filename, NSBitmapImageRep *timage )\r\n");
}


void codec::MakePreviousImage( quadcel *pquad )
{
    Sys_Printf("void codec::MakePreviousImage( quadcel *pquad )\r\n");
}


void codec::InitImages( void )
{
    Sys_Printf("void codec::InitImages( void )\r\n");
}



void codec::QuadX( int startX, int startY, int quadSize)
{
    Sys_Printf("void codec::QuadX( int startX, int startY, int quadSize)\r\n");
}


void codec::InitQStatus( void )
{
    Sys_Printf("void codec::InitQStatus( void )\r\n");
}



void codec::VqData8( byte *cel, quadcel *pquad )
{
    Sys_Printf("void codec::VqData8( byte *cel, quadcel *pquad )\r\n");
}


void codec::VqData4( byte *cel, quadcel *pquad )
{
    Sys_Printf("void codec::VqData4( byte *cel, quadcel *pquad )\r\n");
}


void codec::VqData2( byte *cel, quadcel *pquad )
{
    Sys_Printf("void codec::VqData2( byte *cel, quadcel *pquad )\r\n");
}


void codec::IRGBtab(void)
{
    Sys_Printf("void codec::IRGBtab(void)\r\n");
}


float codec::Snr( byte *old, byte *bnew, int size ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float codec::Snr( byte *old, byte *bnew, int size )\r\n");
    return retVal;
}


int codec::ComputeMotionBlock( byte *old, byte *bnew, int size )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int codec::ComputeMotionBlock( byte *old, byte *bnew, int size )\r\n");
    return retVal;
}


void codec::FvqData( byte *bitmap, int size, int realx, int realy,  quadcel *pquad, bool clamp)
{
    Sys_Printf("void codec::FvqData( byte *bitmap, int size, int realx, int realy, quadcel *pquad, bool clamp)\r\n");
}



void codec::GetData( unsigned char *iData,  int qSize, int startX, int startY, NSBitmapImageRep *bitmap)
{
    Sys_Printf("void codec::GetData( unsigned char *iData, int qSize, int startX, int startY, NSBitmapImageRep *bitmap)\r\n");
}


void codec::LowestQuad( quadcel*qtemp, int* status, float* snr, int bweigh)
{
    Sys_Printf("void codec::LowestQuad( quadcel*qtemp, int* status, float* snr, int bweigh)\r\n");
}


int	codec::GetCurrentQuadOutputSize( quadcel *pquad )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intcodec::GetCurrentQuadOutputSize( quadcel *pquad )\r\n");
    return retVal;
}


float codec::GetCurrentRMSE( quadcel *pquad )
{
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float codec::GetCurrentRMSE( quadcel *pquad )\r\n");
    return retVal;
}


int codec::AddQuad( quadcel *pquad, int lownum )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int codec::AddQuad( quadcel *pquad, int lownum )\r\n");
    return retVal;
}


int codec::MotMeanX( void )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int codec::MotMeanX( void )\r\n");
    return retVal;
}


int codec::MotMeanY( void )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int codec::MotMeanY( void )\r\n");
    return retVal;
}


void codec::SparseEncode( void )
{
    Sys_Printf("void codec::SparseEncode( void )\r\n");
}


void codec::EncodeNothing( void )
{
    Sys_Printf("void codec::EncodeNothing( void )\r\n");
}


void codec::VQ( const int numEntries, const int dimension, const unsigned char *vectors, float *import, VQDATA **codebook, const bool optimize ) {
    Sys_Printf("void codec::VQ( const int numEntries, const int dimension, const unsigned char *vectors, float *import, VQDATA **codebook, const bool optimize )\r\n");
}


