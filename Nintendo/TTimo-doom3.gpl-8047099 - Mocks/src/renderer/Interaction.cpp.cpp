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

/*
===========================================================================

idInteraction implementation

===========================================================================
*/

// FIXME: use private allocator for srfCullInfo_t

/*
================
R_CalcInteractionFacing

Determines which triangles of the surface are facing towards the light origin.

The facing array should be allocated with one extra index than
the number of surface triangles, which will be used to handle dangling
edge silhouettes.
================
*/
void R_CalcInteractionFacing( const idRenderEntityLocal *ent, const srfTriangles_t *tri, const idRenderLightLocal *light, srfCullInfo_t &cullInfo ) {
    Sys_Printf("void R_CalcInteractionFacing( const idRenderEntityLocal *ent, const srfTriangles_t *tri, const idRenderLightLocal *light, srfCullInfo_t &cullInfo )\r\n");
}


/*
=====================
R_CalcInteractionCullBits

We want to cull a little on the sloppy side, because the pre-clipping
of geometry to the lights in dmap will give many cases that are right
at the border we throw things out on the border, because if any one
vertex is clearly inside, the entire triangle will be accepted.
=====================
*/
void R_CalcInteractionCullBits( const idRenderEntityLocal *ent, const srfTriangles_t *tri, const idRenderLightLocal *light, srfCullInfo_t &cullInfo ) {
    Sys_Printf("void R_CalcInteractionCullBits( const idRenderEntityLocal *ent, const srfTriangles_t *tri, const idRenderLightLocal *light, srfCullInfo_t &cullInfo )\r\n");
}


/*
================
R_FreeInteractionCullInfo
================
*/
void R_FreeInteractionCullInfo( srfCullInfo_t &cullInfo ) {
    Sys_Printf("void R_FreeInteractionCullInfo( srfCullInfo_t &cullInfo )\r\n");
}


#define	MAX_CLIPPED_POINTS	20
typedef struct {
	int		numVerts;
	idVec3	verts[MAX_CLIPPED_POINTS];
} clipTri_t;

/*
=============
R_ChopWinding

Clips a triangle from one buffer to another, setting edge flags
The returned buffer may be the same as inNum if no clipping is done
If entirely clipped away, clipTris[returned].numVerts == 0

I have some worries about edge flag cases when polygons are clipped
multiple times near the epsilon.
=============
*/
static int R_ChopWinding( clipTri_t clipTris[2], int inNum, const idPlane plane ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int R_ChopWinding( clipTri_t clipTris[2], int inNum, const idPlane plane )\r\n");
    return retVal;
}


/*
===================
R_ClipTriangleToLight

Returns false if nothing is left after clipping
===================
*/
static bool	R_ClipTriangleToLight( const idVec3 &a, const idVec3 &b, const idVec3 &c, int planeBits, const idPlane frustum[6] ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolR_ClipTriangleToLight( const idVec3 &a, const idVec3 &b, const idVec3 &c, int planeBits, const idPlane frustum[6] )\r\n");
    return retVal;
}


/*
====================
R_CreateLightTris

The resulting surface will be a subset of the original triangles,
it will never clip triangles, but it may cull on a per-triangle basis.
====================
*/
static srfTriangles_t *R_CreateLightTris( const idRenderEntityLocal *ent, 
									 const srfTriangles_t *tri, const idRenderLightLocal *light,
									 const idMaterial *shader, srfCullInfo_t &cullInfo ) {
    Sys_Printf("srfTriangles_t *R_CreateLightTris( const idRenderEntityLocal *ent, const srfTriangles_t *tri, const idRenderLightLocal *light, const idMaterial *shader, srfCullInfo_t &cullInfo )\r\n");
    return NULL;
}


/*
===============
idInteraction::idInteraction
===============
*/
idInteraction::idInteraction( void ) {
	numSurfaces				= 0;
	surfaces				= NULL;
	entityDef				= NULL;
	lightDef				= NULL;
	lightNext				= NULL;
	lightPrev				= NULL;
	entityNext				= NULL;
	entityPrev				= NULL;
	dynamicModelFrameCount	= 0;
	frustumState			= FRUSTUM_UNINITIALIZED;
	frustumAreas			= NULL;
}

/*
===============
idInteraction::AllocAndLink
===============
*/
idInteraction *idInteraction::AllocAndLink( idRenderEntityLocal *edef, idRenderLightLocal *ldef ) {
    Sys_Printf("idInteraction *idInteraction::AllocAndLink( idRenderEntityLocal *edef, idRenderLightLocal *ldef )\r\n");
    return NULL;
}


/*
===============
idInteraction::FreeSurfaces

Frees the surfaces, but leaves the interaction linked in, so it
will be regenerated automatically
===============
*/
void idInteraction::FreeSurfaces( void ) {
    Sys_Printf("void idInteraction::FreeSurfaces( void )\r\n");
}


/*
===============
idInteraction::Unlink
===============
*/
void idInteraction::Unlink( void ) {
    Sys_Printf("void idInteraction::Unlink( void )\r\n");
}


/*
===============
idInteraction::UnlinkAndFree

Removes links and puts it back on the free list.
===============
*/
void idInteraction::UnlinkAndFree( void ) {
    Sys_Printf("void idInteraction::UnlinkAndFree( void )\r\n");
}


/*
===============
idInteraction::MakeEmpty

Makes the interaction empty and links it at the end of the entity's and light's interaction lists.
===============
*/
void idInteraction::MakeEmpty( void ) {
    Sys_Printf("void idInteraction::MakeEmpty( void )\r\n");
}


/*
===============
idInteraction::HasShadows
===============
*/
ID_INLINE bool idInteraction::HasShadows( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idInteraction::HasShadows( void )\r\n");
    return retVal;
}


/*
===============
idInteraction::MemoryUsed

Counts up the memory used by all the surfaceInteractions, which
will be used to determine when we need to start purging old interactions.
===============
*/
int idInteraction::MemoryUsed( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idInteraction::MemoryUsed( void )\r\n");
    return retVal;
}


/*
==================
idInteraction::CalcInteractionScissorRectangle
==================
*/
idScreenRect idInteraction::CalcInteractionScissorRectangle( const idFrustum &viewFrustum ) {
    idScreenRect retVal;
    memset(&retVal, 0, sizeof(idScreenRect));
    Sys_Printf("idScreenRect idInteraction::CalcInteractionScissorRectangle( const idFrustum &viewFrustum )\r\n");
    return retVal;
}


/*
===================
idInteraction::CullInteractionByViewFrustum
===================
*/
bool idInteraction::CullInteractionByViewFrustum( const idFrustum &viewFrustum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idInteraction::CullInteractionByViewFrustum( const idFrustum &viewFrustum )\r\n");
    return retVal;
}


/*
====================
idInteraction::CreateInteraction

Called when a entityDef and a lightDef are both present in a
portalArea, and might be visible.  Performs cull checking before doing the expensive
computations.

References tr.viewCount so lighting surfaces will only be created if the ambient surface is visible,
otherwise it will be marked as deferred.

The results of this are cached and valid until the light or entity change.
====================
*/
void idInteraction::CreateInteraction( const idRenderModel *model ) {
    Sys_Printf("void idInteraction::CreateInteraction( const idRenderModel *model )\r\n");
}


/*
======================
R_PotentiallyInsideInfiniteShadow

If we know that we are "off to the side" of an infinite shadow volume,
we can draw it without caps in zpass mode
======================
*/
static bool R_PotentiallyInsideInfiniteShadow( const srfTriangles_t *occluder,
											  const idVec3 &localView, const idVec3 &localLight ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool R_PotentiallyInsideInfiniteShadow( const srfTriangles_t *occluder, const idVec3 &localView, const idVec3 &localLight )\r\n");
    return retVal;
}


/*
==================
idInteraction::AddActiveInteraction

Create and add any necessary light and shadow triangles

If the model doesn't have any surfaces that need interactions
with this type of light, it can be skipped, but we might need to
instantiate the dynamic model to find out
==================
*/
void idInteraction::AddActiveInteraction( void ) {
    Sys_Printf("void idInteraction::AddActiveInteraction( void )\r\n");
}


/*
===================
R_ShowInteractionMemory_f
===================
*/
void R_ShowInteractionMemory_f( const idCmdArgs &args ) {
    Sys_Printf("void R_ShowInteractionMemory_f( const idCmdArgs &args )\r\n");
}

