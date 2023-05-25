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
#include "Model_local.h"

#define LIQUID_MAX_SKIP_FRAMES	5
#define LIQUID_MAX_TYPES		3

/*
====================
idRenderModelLiquid::idRenderModelLiquid
====================
*/
idRenderModelLiquid::idRenderModelLiquid() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idRenderModelLiquid::idRenderModelLiquid() size %d\r\n", sizeof(*this));
#endif

	verts_x		= 32;
	verts_y		= 32;
	scale_x		= 256.0f;
	scale_y		= 256.0f;
	liquid_type = 0;
	density		= 0.97f;
	drop_height = 4;
	drop_radius = 4;
	drop_delay	= 1000;
    shader		= declManager->FindMaterial( NULL );
	update_tics	= 33;  // ~30 hz
	time		= 0;
	seed		= 0;

	random.SetSeed( 0 );
}

/*
====================
idRenderModelLiquid::GenerateSurface
====================
*/
modelSurface_t idRenderModelLiquid::GenerateSurface( float lerp ) {
    modelSurface_t retVal;
    memset(&retVal, 0, sizeof(modelSurface_t));
    Sys_Printf("modelSurface_t idRenderModelLiquid::GenerateSurface( float lerp )\r\n");
    return retVal;
}


/*
====================
idRenderModelLiquid::WaterDrop
====================
*/
void idRenderModelLiquid::WaterDrop( int x, int y, float *page ) {
    Sys_Printf("void idRenderModelLiquid::WaterDrop( int x, int y, float *page )\r\n");
}


/*
====================
idRenderModelLiquid::IntersectBounds
====================
*/
void idRenderModelLiquid::IntersectBounds( const idBounds &bounds, float displacement ) {
    Sys_Printf("void idRenderModelLiquid::IntersectBounds( const idBounds &bounds, float displacement )\r\n");
}


/*
====================
idRenderModelLiquid::Update
====================
*/
void idRenderModelLiquid::Update( void ) {
    Sys_Printf("void idRenderModelLiquid::Update( void )\r\n");
}


/*
====================
idRenderModelLiquid::Reset
====================
*/
void idRenderModelLiquid::Reset() {
    Sys_Printf("void idRenderModelLiquid::Reset()\r\n");
}


/*
====================
idRenderModelLiquid::InitFromFile
====================
*/
void idRenderModelLiquid::InitFromFile( const char *fileName ) {
    Sys_Printf("void idRenderModelLiquid::InitFromFile( const char *fileName )\r\n");
}


/*
====================
idRenderModelLiquid::InstantiateDynamicModel
====================
*/
idRenderModel *idRenderModelLiquid::InstantiateDynamicModel( const struct renderEntity_s *ent, const struct viewDef_s *view, idRenderModel *cachedModel ) {
    Sys_Printf("idRenderModel *idRenderModelLiquid::InstantiateDynamicModel( const struct renderEntity_s *ent, const struct viewDef_s *view, idRenderModel *cachedModel )\r\n");
    return NULL;
}


/*
====================
idRenderModelLiquid::IsDynamicModel
====================
*/
dynamicModel_t idRenderModelLiquid::IsDynamicModel() const {
    dynamicModel_t retVal;
    memset(&retVal, 0, sizeof(dynamicModel_t));
    Sys_Printf("dynamicModel_t idRenderModelLiquid::IsDynamicModel()\r\n");
    return retVal;
}


/*
====================
idRenderModelLiquid::Bounds
====================
*/
idBounds idRenderModelLiquid::Bounds(const struct renderEntity_s *ent) const {
    idBounds retVal;
    memset(&retVal, 0, sizeof(idBounds));
    Sys_Printf("idBounds idRenderModelLiquid::Bounds(const struct renderEntity_s *ent)\r\n");
    return retVal;
}

