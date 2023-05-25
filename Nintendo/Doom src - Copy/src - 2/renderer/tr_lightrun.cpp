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


Prelight models

"_prelight_<lightname>", ie "_prelight_light1"

Static surfaces available to dmap will be processed to optimized
shadow and lit surface geometry

Entity models are never prelighted.

Light entity can have a "noPrelight 1" key set to avoid the preprocessing
and carving of the world.  A light that will move should usually have this
set.

Prelight models will usually have multiple surfaces

Shadow volume surfaces will have the material "_shadowVolume"

The exact same vertexes as the ambient surfaces will be used for the
non-shadow surfaces, so there is opportunity to share


Reference their parent surfaces?
Reference their parent area?


If we don't track parts that are in different areas, there will be huge
losses when an areaportal closed door has a light poking slightly
through it.

There is potential benefit to splitting even the shadow volumes
at area boundaries, but it would involve the possibility of an
extra plane of shadow drawing at the area boundary.


interaction	lightName	numIndexes

Shadow volume surface

Surfaces in the world cannot have "no self shadow" properties, because all
the surfaces are considered together for the optimized shadow volume.  If
you want no self shadow on a static surface, you must still make it into an
entity so it isn't considered in the prelight.


r_hidePrelights
r_hideNonPrelights



each surface could include prelight indexes

generation procedure in dmap:

carve original surfaces into areas

for each light
	build shadow volume and beam tree
	cut all potentially lit surfaces into the beam tree
		move lit fragments into a new optimize group

optimize groups

build light models




*/

/*
=================================================================================

LIGHT TESTING

=================================================================================
*/


/*
====================
R_ModulateLights_f

Modifies the shaderParms on all the lights so the level
designers can easily test different color schemes
====================
*/
void R_ModulateLights_f( const idCmdArgs &args ) {
    Sys_Printf("void R_ModulateLights_f( const idCmdArgs &args )\r\n");
}




//======================================================================================


/*
===============
R_CreateEntityRefs

Creates all needed model references in portal areas,
chaining them to both the area and the entityDef.

Bumps tr.viewCount.
===============
*/
void R_CreateEntityRefs( idRenderEntityLocal *def ) {
    Sys_Printf("void R_CreateEntityRefs( idRenderEntityLocal *def )\r\n");
}



/*
=================================================================================

CREATE LIGHT REFS

=================================================================================
*/

/*
=====================
R_SetLightProject

All values are reletive to the origin
Assumes that right and up are not normalized
This is also called by dmap during map processing.
=====================
*/
void R_SetLightProject( idPlane lightProject[4], const idVec3 origin, const idVec3 target,
					   const idVec3 rightVector, const idVec3 upVector, const idVec3 start, const idVec3 stop ) {
    Sys_Printf("void R_SetLightProject( idPlane lightProject[4], const idVec3 origin, const idVec3 target, const idVec3 rightVector, const idVec3 upVector, const idVec3 start, const idVec3 stop )\r\n");
}


/*
===================
R_SetLightFrustum

Creates plane equations from the light projection, positive sides
face out of the light
===================
*/
void R_SetLightFrustum( const idPlane lightProject[4], idPlane frustum[6] ) {
    Sys_Printf("void R_SetLightFrustum( const idPlane lightProject[4], idPlane frustum[6] )\r\n");
}


/*
====================
R_FreeLightDefFrustum
====================
*/
void R_FreeLightDefFrustum( idRenderLightLocal *ldef ) {
    Sys_Printf("void R_FreeLightDefFrustum( idRenderLightLocal *ldef )\r\n");
}


/*
=================
R_DeriveLightData

Fills everything in based on light->parms
=================
*/
void R_DeriveLightData( idRenderLightLocal *light ) {
    Sys_Printf("void R_DeriveLightData( idRenderLightLocal *light )\r\n");
}


/*
=================
R_CreateLightRefs
=================
*/
#define	MAX_LIGHT_VERTS	40
void R_CreateLightRefs( idRenderLightLocal *light ) {
    Sys_Printf("void R_CreateLightRefs( idRenderLightLocal *light )\r\n");
}


/*
===============
R_RenderLightFrustum

Called by the editor and dmap to operate on light volumes
===============
*/
void R_RenderLightFrustum( const renderLight_t &renderLight, idPlane lightFrustum[6] ) {
    Sys_Printf("void R_RenderLightFrustum( const renderLight_t &renderLight, idPlane lightFrustum[6] )\r\n");
}



//=================================================================================

/*
===============
WindingCompletelyInsideLight
===============
*/
bool WindingCompletelyInsideLight( const idWinding *w, const idRenderLightLocal *ldef ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool WindingCompletelyInsideLight( const idWinding *w, const idRenderLightLocal *ldef )\r\n");
    return retVal;
}


/*
======================
R_CreateLightDefFogPortals

When a fog light is created or moved, see if it completely
encloses any portals, which may allow them to be fogged closed.
======================
*/
void R_CreateLightDefFogPortals( idRenderLightLocal *ldef ) {
    Sys_Printf("void R_CreateLightDefFogPortals( idRenderLightLocal *ldef )\r\n");
}


/*
====================
R_FreeLightDefDerivedData

Frees all references and lit surfaces from the light
====================
*/
void R_FreeLightDefDerivedData( idRenderLightLocal *ldef ) {
    Sys_Printf("void R_FreeLightDefDerivedData( idRenderLightLocal *ldef )\r\n");
}


/*
===================
R_FreeEntityDefDerivedData

Used by both RE_FreeEntityDef and RE_UpdateEntityDef
Does not actually free the entityDef.
===================
*/
void R_FreeEntityDefDerivedData( idRenderEntityLocal *def, bool keepDecals, bool keepCachedDynamicModel ) {
    Sys_Printf("void R_FreeEntityDefDerivedData( idRenderEntityLocal *def, bool keepDecals, bool keepCachedDynamicModel )\r\n");
}


/*
==================
R_ClearEntityDefDynamicModel

If we know the reference bounds stays the same, we
only need to do this on entity update, not the full
R_FreeEntityDefDerivedData
==================
*/
void R_ClearEntityDefDynamicModel( idRenderEntityLocal *def ) {
    Sys_Printf("void R_ClearEntityDefDynamicModel( idRenderEntityLocal *def )\r\n");
}


/*
===================
R_FreeEntityDefDecals
===================
*/
void R_FreeEntityDefDecals( idRenderEntityLocal *def ) {
    Sys_Printf("void R_FreeEntityDefDecals( idRenderEntityLocal *def )\r\n");
}


/*
===================
R_FreeEntityDefFadedDecals
===================
*/
void R_FreeEntityDefFadedDecals( idRenderEntityLocal *def, int time ) {
    Sys_Printf("void R_FreeEntityDefFadedDecals( idRenderEntityLocal *def, int time )\r\n");
}


/*
===================
R_FreeEntityDefOverlay
===================
*/
void R_FreeEntityDefOverlay( idRenderEntityLocal *def ) {
    Sys_Printf("void R_FreeEntityDefOverlay( idRenderEntityLocal *def )\r\n");
}


/*
===================
R_FreeDerivedData

ReloadModels and RegenerateWorld call this
// FIXME: need to do this for all worlds
===================
*/
void R_FreeDerivedData( void ) {
    Sys_Printf("void R_FreeDerivedData( void )\r\n");
}


/*
===================
R_CheckForEntityDefsUsingModel
===================
*/
void R_CheckForEntityDefsUsingModel( idRenderModel *model ) {
    Sys_Printf("void R_CheckForEntityDefsUsingModel( idRenderModel *model )\r\n");
}


/*
===================
R_ReCreateWorldReferences

ReloadModels and RegenerateWorld call this
// FIXME: need to do this for all worlds
===================
*/
void R_ReCreateWorldReferences( void ) {
    Sys_Printf("void R_ReCreateWorldReferences( void )\r\n");
}


/*
===================
R_RegenerateWorld_f

Frees and regenerates all references and interactions, which
must be done when switching between display list mode and immediate mode
===================
*/
void R_RegenerateWorld_f( const idCmdArgs &args ) {
    Sys_Printf("void R_RegenerateWorld_f( const idCmdArgs &args )\r\n");
}

