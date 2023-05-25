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

static const float CHECK_BOUNDS_EPSILON = 1.0f;


/*
===========================================================================================

VERTEX CACHE GENERATORS

===========================================================================================
*/

/*
==================
R_CreateAmbientCache

Create it if needed
==================
*/
bool R_CreateAmbientCache( srfTriangles_t *tri, bool needsLighting ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool R_CreateAmbientCache( srfTriangles_t *tri, bool needsLighting )\r\n");
    return retVal;
}


/*
==================
R_CreateLightingCache

Returns false if the cache couldn't be allocated, in which case the surface should be skipped.
==================
*/
bool R_CreateLightingCache( const idRenderEntityLocal *ent, const idRenderLightLocal *light, srfTriangles_t *tri ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool R_CreateLightingCache( const idRenderEntityLocal *ent, const idRenderLightLocal *light, srfTriangles_t *tri )\r\n");
    return retVal;
}


/*
==================
R_CreatePrivateShadowCache

This is used only for a specific light
==================
*/
void R_CreatePrivateShadowCache( srfTriangles_t *tri ) {
    Sys_Printf("void R_CreatePrivateShadowCache( srfTriangles_t *tri )\r\n");
}


/*
==================
R_CreateVertexProgramShadowCache

This is constant for any number of lights, the vertex program
takes care of projecting the verts to infinity.
==================
*/
void R_CreateVertexProgramShadowCache( srfTriangles_t *tri ) {
    Sys_Printf("void R_CreateVertexProgramShadowCache( srfTriangles_t *tri )\r\n");
}


/*
==================
R_SkyboxTexGen
==================
*/
void R_SkyboxTexGen( drawSurf_t *surf, const idVec3 &viewOrg ) {
    Sys_Printf("void R_SkyboxTexGen( drawSurf_t *surf, const idVec3 &viewOrg )\r\n");
}


/*
==================
R_WobbleskyTexGen
==================
*/
void R_WobbleskyTexGen( drawSurf_t *surf, const idVec3 &viewOrg ) {
    Sys_Printf("void R_WobbleskyTexGen( drawSurf_t *surf, const idVec3 &viewOrg )\r\n");
}


/*
=================
R_SpecularTexGen

Calculates the specular coordinates for cards without vertex programs.
=================
*/
static void R_SpecularTexGen( drawSurf_t *surf, const idVec3 &globalLightOrigin, const idVec3 &viewOrg ) {
    Sys_Printf("void R_SpecularTexGen( drawSurf_t *surf, const idVec3 &globalLightOrigin, const idVec3 &viewOrg )\r\n");
}



//=======================================================================================================

/*
=============
R_SetEntityDefViewEntity

If the entityDef isn't already on the viewEntity list, create
a viewEntity and add it to the list with an empty scissor rect.

This does not instantiate dynamic models for the entity yet.
=============
*/
viewEntity_t *R_SetEntityDefViewEntity( idRenderEntityLocal *def ) {
    Sys_Printf("viewEntity_t *R_SetEntityDefViewEntity( idRenderEntityLocal *def )\r\n");
    return NULL;
}


/*
====================
R_TestPointInViewLight
====================
*/
static const float INSIDE_LIGHT_FRUSTUM_SLOP = 32;
// this needs to be greater than the dist from origin to corner of near clip plane
static bool R_TestPointInViewLight( const idVec3 &org, const idRenderLightLocal *light ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool R_TestPointInViewLight( const idVec3 &org, const idRenderLightLocal *light )\r\n");
    return retVal;
}


/*
===================
R_PointInFrustum

Assumes positive sides face outward
===================
*/
static bool R_PointInFrustum( idVec3 &p, idPlane *planes, int numPlanes ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool R_PointInFrustum( idVec3 &p, idPlane *planes, int numPlanes )\r\n");
    return retVal;
}


/*
=============
R_SetLightDefViewLight

If the lightDef isn't already on the viewLight list, create
a viewLight and add it to the list with an empty scissor rect.
=============
*/
viewLight_t *R_SetLightDefViewLight( idRenderLightLocal *light ) {
    Sys_Printf("viewLight_t *R_SetLightDefViewLight( idRenderLightLocal *light )\r\n");
    return NULL;
}


/*
=================
idRenderWorldLocal::CreateLightDefInteractions

When a lightDef is determined to effect the view (contact the frustum and non-0 light), it will check to
make sure that it has interactions for all the entityDefs that it might possibly contact.

This does not guarantee that all possible interactions for this light are generated, only that
the ones that may effect the current view are generated. so it does need to be called every view.

This does not cause entityDefs to create dynamic models, all work is done on the referenceBounds.

All entities that have non-empty interactions with viewLights will
have viewEntities made for them and be put on the viewEntity list,
even if their surfaces aren't visible, because they may need to cast shadows.

Interactions are usually removed when a entityDef or lightDef is modified, unless the change
is known to not effect them, so there is no danger of getting a stale interaction, we just need to
check that needed ones are created.

An interaction can be at several levels:

Don't interact (but share an area) (numSurfaces = 0)
Entity reference bounds touches light frustum, but surfaces haven't been generated (numSurfaces = -1)
Shadow surfaces have been generated, but light surfaces have not.  The shadow surface may still be empty due to bounds being conservative.
Both shadow and light surfaces have been generated.  Either or both surfaces may still be empty due to conservative bounds.

=================
*/
void idRenderWorldLocal::CreateLightDefInteractions( idRenderLightLocal *ldef ) {
    Sys_Printf("void idRenderWorldLocal::CreateLightDefInteractions( idRenderLightLocal *ldef )\r\n");
}


//===============================================================================================================

/*
=================
R_LinkLightSurf
=================
*/
void R_LinkLightSurf( const drawSurf_t **link, const srfTriangles_t *tri, const viewEntity_t *space, 
				   const idRenderLightLocal *light, const idMaterial *shader, const idScreenRect &scissor, bool viewInsideShadow ) {
    Sys_Printf("void R_LinkLightSurf( const drawSurf_t **link, const srfTriangles_t *tri, const viewEntity_t *space, const idRenderLightLocal *light, const idMaterial *shader, const idScreenRect &scissor, bool viewInsideShadow )\r\n");
}


/*
======================
R_ClippedLightScissorRectangle
======================
*/
idScreenRect R_ClippedLightScissorRectangle( viewLight_t *vLight ) {
    idScreenRect retVal;
    memset(&retVal, 0, sizeof(idScreenRect));
    Sys_Printf("idScreenRect R_ClippedLightScissorRectangle( viewLight_t *vLight )\r\n");
    return retVal;
}


/*
==================
R_CalcLightScissorRectangle

The light screen bounds will be used to crop the scissor rect during
stencil clears and interaction drawing
==================
*/
int	c_clippedLight, c_unclippedLight;

idScreenRect	R_CalcLightScissorRectangle( viewLight_t *vLight ) {
    idScreenRect retVal;
    memset(&retVal, 0, sizeof(idScreenRect));
    Sys_Printf("idScreenRectR_CalcLightScissorRectangle( viewLight_t *vLight )\r\n");
    return retVal;
}


/*
=================
R_AddLightSurfaces

Calc the light shader values, removing any light from the viewLight list
if it is determined to not have any visible effect due to being flashed off or turned off.

Adds entities to the viewEntity list if they are needed for shadow casting.

Add any precomputed shadow volumes.

Removes lights from the viewLights list if they are completely
turned off, or completely off screen.

Create any new interactions needed between the viewLights
and the viewEntitys due to game movement
=================
*/
void R_AddLightSurfaces( void ) {
    Sys_Printf("void R_AddLightSurfaces( void )\r\n");
}


//===============================================================================================================

/*
==================
R_IssueEntityDefCallback
==================
*/
bool R_IssueEntityDefCallback( idRenderEntityLocal *def ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool R_IssueEntityDefCallback( idRenderEntityLocal *def )\r\n");
    return retVal;
}


/*
===================
R_EntityDefDynamicModel

Issues a deferred entity callback if necessary.
If the model isn't dynamic, it returns the original.
Returns the cached dynamic model if present, otherwise creates
it and any necessary overlays
===================
*/
idRenderModel *R_EntityDefDynamicModel( idRenderEntityLocal *def ) {
    Sys_Printf("idRenderModel *R_EntityDefDynamicModel( idRenderEntityLocal *def )\r\n");
    return NULL;
}


/*
=================
R_AddDrawSurf
=================
*/
void R_AddDrawSurf( const srfTriangles_t *tri, const viewEntity_t *space, const renderEntity_t *renderEntity,
					const idMaterial *shader, const idScreenRect &scissor ) {
    Sys_Printf("void R_AddDrawSurf( const srfTriangles_t *tri, const viewEntity_t *space, const renderEntity_t *renderEntity,const idMaterial *shader, const idScreenRect &scissor )\r\n");
}


/*
===============
R_AddAmbientDrawsurfs

Adds surfaces for the given viewEntity
Walks through the viewEntitys list and creates drawSurf_t for each surface of
each viewEntity that has a non-empty scissorRect
===============
*/
static void R_AddAmbientDrawsurfs( viewEntity_t *vEntity ) {
    Sys_Printf("void R_AddAmbientDrawsurfs( viewEntity_t *vEntity )\r\n");
}


/*
==================
R_CalcEntityScissorRectangle
==================
*/
idScreenRect R_CalcEntityScissorRectangle( viewEntity_t *vEntity ) {
    idScreenRect retVal;
    memset(&retVal, 0, sizeof(idScreenRect));
    Sys_Printf("idScreenRect R_CalcEntityScissorRectangle( viewEntity_t *vEntity )\r\n");
    return retVal;
}


/*
===================
R_AddModelSurfaces

Here is where dynamic models actually get instantiated, and necessary
interactions get created.  This is all done on a sort-by-model basis
to keep source data in cache (most likely L2) as any interactions and
shadows are generated, since dynamic models will typically be lit by
two or more lights.
===================
*/
void R_AddModelSurfaces( void ) {
    Sys_Printf("void R_AddModelSurfaces( void )\r\n");
}


/*
=====================
R_RemoveUnecessaryViewLights
=====================
*/
void R_RemoveUnecessaryViewLights( void ) {
    Sys_Printf("void R_RemoveUnecessaryViewLights( void )\r\n");
}

