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

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "tr_local.h"
#ifdef __ppc__
#include <vecLib/vecLib.h>
#endif
#if defined(MACOS_X) && defined(__i386__)
#include <xmmintrin.h>
#endif

//====================================================================

/*
======================
idScreenRect::Clear
======================
*/
void idScreenRect::Clear() {
    Sys_Printf("void idScreenRect::Clear()\r\n");
}


/*
======================
idScreenRect::AddPoint
======================
*/
void idScreenRect::AddPoint( float x, float y ) {
    Sys_Printf("void idScreenRect::AddPoint( float x, float y )\r\n");
}


/*
======================
idScreenRect::Expand
======================
*/
void idScreenRect::Expand() {
    Sys_Printf("void idScreenRect::Expand()\r\n");
}


/*
======================
idScreenRect::Intersect
======================
*/
void idScreenRect::Intersect( const idScreenRect &rect ) {
    Sys_Printf("void idScreenRect::Intersect( const idScreenRect &rect )\r\n");
}


/*
======================
idScreenRect::Union
======================
*/
void idScreenRect::Union( const idScreenRect &rect ) {
    Sys_Printf("void idScreenRect::Union( const idScreenRect &rect )\r\n");
}


/*
======================
idScreenRect::Equals
======================
*/
bool idScreenRect::Equals( const idScreenRect &rect ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idScreenRect::Equals( const idScreenRect &rect )\r\n");
    return retVal;
}


/*
======================
idScreenRect::IsEmpty
======================
*/
bool idScreenRect::IsEmpty() const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idScreenRect::IsEmpty()\r\n");
    return retVal;
}


/*
======================
R_ScreenRectFromViewFrustumBounds
======================
*/
idScreenRect R_ScreenRectFromViewFrustumBounds( const idBounds &bounds ) {
    idScreenRect retVal;
    memset(&retVal, 0, sizeof(idScreenRect));
    Sys_Printf("idScreenRect R_ScreenRectFromViewFrustumBounds( const idBounds &bounds )\r\n");
    return retVal;
}


/*
======================
R_ShowColoredScreenRect
======================
*/
void R_ShowColoredScreenRect( const idScreenRect &rect, int colorIndex ) {
    Sys_Printf("void R_ShowColoredScreenRect( const idScreenRect &rect, int colorIndex )\r\n");
}


/*
====================
R_ToggleSmpFrame
====================
*/
void R_ToggleSmpFrame( void ) {
    Sys_Printf("void R_ToggleSmpFrame( void )\r\n");
}



//=====================================================

#define	MEMORY_BLOCK_SIZE	0x100000

/*
=====================
R_ShutdownFrameData
=====================
*/
void R_ShutdownFrameData( void ) {
	frameData_t *frame;
	frameMemoryBlock_t *block;

	// free any current data
	frame = frameData;
	if ( !frame ) {
		return;
	}

	R_FreeDeferredTriSurfs( frame );

	frameMemoryBlock_t *nextBlock;
	for ( block = frame->memory ; block ; block = nextBlock ) {
		nextBlock = block->next;
		Mem_Free( block );
	}
	Mem_Free( frame );
	frameData = NULL;
}

/*
=====================
R_InitFrameData
=====================
*/
void R_InitFrameData( void ) {
	int size;
	frameData_t *frame;
	frameMemoryBlock_t *block;

	R_ShutdownFrameData();

	frameData = (frameData_t *)Mem_ClearedAlloc( sizeof( *frameData ));
	frame = frameData;
	size = MEMORY_BLOCK_SIZE;
	block = (frameMemoryBlock_t *)Mem_Alloc( size + sizeof( *block ) );
	if ( !block ) {
		common->FatalError( "R_InitFrameData: Mem_Alloc() failed" );
	}
	block->size = size;
	block->used = 0;
	block->next = NULL;
	frame->memory = block;
	frame->memoryHighwater = 0;

	R_ToggleSmpFrame();
}

/*
================
R_CountFrameData
================
*/
int R_CountFrameData( void ) {
	frameData_t		*frame;
	frameMemoryBlock_t	*block;
	int				count;

	count = 0;
	frame = frameData;
	for ( block = frame->memory ; block ; block=block->next ) {
		count += block->used;
		if ( block == frame->alloc ) {
			break;
		}
	}

	// note if this is a new highwater mark
	if ( count > frame->memoryHighwater ) {
		frame->memoryHighwater = count;
	}

	return count;
}

/*
=================
R_StaticAlloc
=================
*/
void *R_StaticAlloc( int bytes ) {
	void	*buf;

	tr.pc.c_alloc++;

	tr.staticAllocCount += bytes;

    buf = Mem_Alloc( bytes );

	// don't exit on failure on zero length allocations since the old code didn't
	if ( !buf && ( bytes != 0 ) ) {
		common->FatalError( "R_StaticAlloc failed on %i bytes", bytes );
	}
	return buf;
}

/*
=================
R_ClearedStaticAlloc
=================
*/
void *R_ClearedStaticAlloc( int bytes ) {
	void	*buf;

	buf = R_StaticAlloc( bytes );
	SIMDProcessor->Memset( buf, 0, bytes );
	return buf;
}

/*
=================
R_StaticFree
=================
*/
void R_StaticFree( void *data ) {
	tr.pc.c_free++;
    Mem_Free( data );
}

/*
================
R_FrameAlloc

This data will be automatically freed when the
current frame's back end completes.

This should only be called by the front end.  The
back end shouldn't need to allocate memory.

If we passed smpFrame in, the back end could
alloc memory, because it will always be a
different frameData than the front end is using.

All temporary data, like dynamic tesselations
and local spaces are allocated here.

The memory will not move, but it may not be
contiguous with previous allocations even
from this frame.

The memory is NOT zero filled.
Should part of this be inlined in a macro?
================
*/
void *R_FrameAlloc( int bytes ) {
	frameData_t		*frame;
	frameMemoryBlock_t	*block;
	void			*buf;

	bytes = (bytes+16)&~15;
	// see if it can be satisfied in the current block
	frame = frameData;
	block = frame->alloc;

	if ( block->size - block->used >= bytes ) {
		buf = block->base + block->used;
		block->used += bytes;
		return buf;
	}

	// advance to the next memory block if available
	block = block->next;
	// create a new block if we are at the end of
	// the chain
	if ( !block ) {
		int		size;

		size = MEMORY_BLOCK_SIZE;
		block = (frameMemoryBlock_t *)Mem_Alloc( size + sizeof( *block ) );
		if ( !block ) {
			common->FatalError( "R_FrameAlloc: Mem_Alloc() failed" );
		}
		block->size = size;
		block->used = 0;
		block->next = NULL;
		frame->alloc->next = block;
	}

	// we could fix this if we needed to...
	if ( bytes > block->size ) {
		common->FatalError( "R_FrameAlloc of %i exceeded MEMORY_BLOCK_SIZE",
			bytes );
	}

	frame->alloc = block;

	block->used = bytes;

	return block->base;
}

/*
==================
R_ClearedFrameAlloc
==================
*/
void *R_ClearedFrameAlloc( int bytes ) {
	void	*r;

	r = R_FrameAlloc( bytes );
	SIMDProcessor->Memset( r, 0, bytes );
	return r;
}


/*
==================
R_FrameFree

This does nothing at all, as the frame data is reused every frame
and can only be stack allocated.

The only reason for it's existance is so functions that can
use either static or frame memory can set function pointers
to both alloc and free.
==================
*/
void R_FrameFree( void *data ) {
}




//==========================================================================

void R_AxisToModelMatrix( const idMat3 &axis, const idVec3 &origin, float modelMatrix[16] ) {
    Sys_Printf("void R_AxisToModelMatrix( const idMat3 &axis, const idVec3 &origin, float modelMatrix[16] )\r\n");
}



// FIXME: these assume no skewing or scaling transforms

void R_LocalPointToGlobal( const float modelMatrix[16], const idVec3 &in, idVec3 &out ) {
    Sys_Printf("void R_LocalPointToGlobal( const float modelMatrix[16], const idVec3 &in, idVec3 &out )\r\n");
}


void R_PointTimesMatrix( const float modelMatrix[16], const idVec4 &in, idVec4 &out ) {
    Sys_Printf("void R_PointTimesMatrix( const float modelMatrix[16], const idVec4 &in, idVec4 &out )\r\n");
}


void R_GlobalPointToLocal( const float modelMatrix[16], const idVec3 &in, idVec3 &out ) {
    Sys_Printf("void R_GlobalPointToLocal( const float modelMatrix[16], const idVec3 &in, idVec3 &out )\r\n");
}


void R_LocalVectorToGlobal( const float modelMatrix[16], const idVec3 &in, idVec3 &out ) {
    Sys_Printf("void R_LocalVectorToGlobal( const float modelMatrix[16], const idVec3 &in, idVec3 &out )\r\n");
}


void R_GlobalVectorToLocal( const float modelMatrix[16], const idVec3 &in, idVec3 &out ) {
    Sys_Printf("void R_GlobalVectorToLocal( const float modelMatrix[16], const idVec3 &in, idVec3 &out )\r\n");
}


void R_GlobalPlaneToLocal( const float modelMatrix[16], const idPlane &in, idPlane &out ) {
    Sys_Printf("void R_GlobalPlaneToLocal( const float modelMatrix[16], const idPlane &in, idPlane &out )\r\n");
}


void R_LocalPlaneToGlobal( const float modelMatrix[16], const idPlane &in, idPlane &out ) {
    Sys_Printf("void R_LocalPlaneToGlobal( const float modelMatrix[16], const idPlane &in, idPlane &out )\r\n");
}


// transform Z in eye coordinates to window coordinates
void R_TransformEyeZToWin( float src_z, const float *projectionMatrix, float &dst_z ) {
    Sys_Printf("void R_TransformEyeZToWin( float src_z, const float *projectionMatrix, float &dst_z )\r\n");
}


/*
=================
R_RadiusCullLocalBox

A fast, conservative center-to-corner culling test
Returns true if the box is outside the given global frustum, (positive sides are out)
=================
*/
bool R_RadiusCullLocalBox( const idBounds &bounds, const float modelMatrix[16], int numPlanes, const idPlane *planes ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool R_RadiusCullLocalBox( const idBounds &bounds, const float modelMatrix[16], int numPlanes, const idPlane *planes )\r\n");
    return retVal;
}


/*
=================
R_CornerCullLocalBox

Tests all corners against the frustum.
Can still generate a few false positives when the box is outside a corner.
Returns true if the box is outside the given global frustum, (positive sides are out)
=================
*/
bool R_CornerCullLocalBox( const idBounds &bounds, const float modelMatrix[16], int numPlanes, const idPlane *planes ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool R_CornerCullLocalBox( const idBounds &bounds, const float modelMatrix[16], int numPlanes, const idPlane *planes )\r\n");
    return retVal;
}


/*
=================
R_CullLocalBox

Performs quick test before expensive test
Returns true if the box is outside the given global frustum, (positive sides are out)
=================
*/
bool R_CullLocalBox( const idBounds &bounds, const float modelMatrix[16], int numPlanes, const idPlane *planes ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool R_CullLocalBox( const idBounds &bounds, const float modelMatrix[16], int numPlanes, const idPlane *planes )\r\n");
    return retVal;
}


/*
==========================
R_TransformModelToClip
==========================
*/
void R_TransformModelToClip( const idVec3 &src, const float *modelMatrix, const float *projectionMatrix, idPlane &eye, idPlane &dst ) {
    Sys_Printf("void R_TransformModelToClip( const idVec3 &src, const float *modelMatrix, const float *projectionMatrix, idPlane &eye, idPlane &dst )\r\n");
}


/*
==========================
R_GlobalToNormalizedDeviceCoordinates

-1 to 1 range in x, y, and z
==========================
*/
void R_GlobalToNormalizedDeviceCoordinates( const idVec3 &global, idVec3 &ndc ) {
    Sys_Printf("void R_GlobalToNormalizedDeviceCoordinates( const idVec3 &global, idVec3 &ndc )\r\n");
}


/*
==========================
R_TransformClipToDevice

Clip to normalized device coordinates
==========================
*/
void R_TransformClipToDevice( const idPlane &clip, const viewDef_t *view, idVec3 &normalized ) {
    Sys_Printf("void R_TransformClipToDevice( const idPlane &clip, const viewDef_t *view, idVec3 &normalized )\r\n");
}



/*
==========================
myGlMultMatrix
==========================
*/
void myGlMultMatrix( const float a[16], const float b[16], float out[16] ) {
    Sys_Printf("void myGlMultMatrix( const float a[16], const float b[16], float out[16] )\r\n");
}


/*
================
R_TransposeGLMatrix
================
*/
void R_TransposeGLMatrix( const float in[16], float out[16] ) {
    Sys_Printf("void R_TransposeGLMatrix( const float in[16], float out[16] )\r\n");
}


/*
=================
R_SetViewMatrix

Sets up the world to view matrix for a given viewParm
=================
*/
void R_SetViewMatrix( viewDef_t *viewDef ) {
    Sys_Printf("void R_SetViewMatrix( viewDef_t *viewDef )\r\n");
}


/*
===============
R_SetupProjection

This uses the "infinite far z" trick
===============
*/
void R_SetupProjection( void ) {
    Sys_Printf("void R_SetupProjection( void )\r\n");
}


/*
=================
R_SetupViewFrustum

Setup that culling frustum planes for the current view
FIXME: derive from modelview matrix times projection matrix
=================
*/
static void R_SetupViewFrustum( void ) {
    Sys_Printf("void R_SetupViewFrustum( void )\r\n");
}


/*
===================
R_ConstrainViewFrustum
===================
*/
static void R_ConstrainViewFrustum( void ) {
    Sys_Printf("void R_ConstrainViewFrustum( void )\r\n");
}


/*
==========================================================================================

DRAWSURF SORTING

==========================================================================================
*/


/*
=======================
R_QsortSurfaces

=======================
*/
static int R_QsortSurfaces( const void *a, const void *b ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int R_QsortSurfaces( const void *a, const void *b )\r\n");
    return retVal;
}



/*
=================
R_SortDrawSurfs
=================
*/
static void R_SortDrawSurfs( void ) {
    Sys_Printf("void R_SortDrawSurfs( void )\r\n");
}




//========================================================================


//==============================================================================



/*
================
R_RenderView

A view may be either the actual camera view,
a mirror / remote location, or a 3D view on a gui surface.

Parms will typically be allocated with R_FrameAlloc
================
*/
void R_RenderView( viewDef_t *parms ) {
    Sys_Printf("void R_RenderView( viewDef_t *parms )\r\n");
}

