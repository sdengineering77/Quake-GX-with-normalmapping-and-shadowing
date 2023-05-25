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

// decalFade	filter 5 0.1
// polygonOffset
// {
// map invertColor( textures/splat )
// blend GL_ZERO GL_ONE_MINUS_SRC
// vertexColor
// clamp
// }

/*
==================
idRenderModelDecal::idRenderModelDecal
==================
*/
idRenderModelDecal::idRenderModelDecal( void ) {
	memset( &tri, 0, sizeof( tri ) );
	tri.verts = verts;
	tri.indexes = indexes;
	material = NULL;
	nextDecal = NULL;
}

/*
==================
idRenderModelDecal::~idRenderModelDecal
==================
*/
idRenderModelDecal::~idRenderModelDecal( void ) {
}

/*
==================
idRenderModelDecal::idRenderModelDecal
==================
*/
idRenderModelDecal *idRenderModelDecal::Alloc( void ) {
    Sys_Printf("idRenderModelDecal *idRenderModelDecal::Alloc( void )\r\n");
    return NULL;
}


/*
==================
idRenderModelDecal::idRenderModelDecal
==================
*/
void idRenderModelDecal::Free( idRenderModelDecal *decal ) {
    Sys_Printf("void idRenderModelDecal::Free( idRenderModelDecal *decal )\r\n");
}


/*
=================
idRenderModelDecal::CreateProjectionInfo
=================
*/
bool idRenderModelDecal::CreateProjectionInfo( decalProjectionInfo_t &info, const idFixedWinding &winding, const idVec3 &projectionOrigin, const bool parallel, const float fadeDepth, const idMaterial *material, const int startTime ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idRenderModelDecal::CreateProjectionInfo( decalProjectionInfo_t &info, const idFixedWinding &winding, const idVec3 &projectionOrigin, const bool parallel, const float fadeDepth, const idMaterial *material, const int startTime )\r\n");
    return retVal;
}


/*
=================
idRenderModelDecal::CreateProjectionInfo
=================
*/
void idRenderModelDecal::GlobalProjectionInfoToLocal( decalProjectionInfo_t &localInfo, const decalProjectionInfo_t &info, const idVec3 &origin, const idMat3 &axis ) {
    Sys_Printf("void idRenderModelDecal::GlobalProjectionInfoToLocal( decalProjectionInfo_t &localInfo, const decalProjectionInfo_t &info, const idVec3 &origin, const idMat3 &axis )\r\n");
}


/*
=================
idRenderModelDecal::AddWinding
=================
*/
void idRenderModelDecal::AddWinding( const idWinding &w, const idMaterial *decalMaterial, const idPlane fadePlanes[2], float fadeDepth, int startTime ) {
    Sys_Printf("void idRenderModelDecal::AddWinding( const idWinding &w, const idMaterial *decalMaterial, const idPlane fadePlanes[2], float fadeDepth, int startTime )\r\n");
}


/*
=================
idRenderModelDecal::AddDepthFadedWinding
=================
*/
void idRenderModelDecal::AddDepthFadedWinding( const idWinding &w, const idMaterial *decalMaterial, const idPlane fadePlanes[2], float fadeDepth, int startTime ) {
    Sys_Printf("void idRenderModelDecal::AddDepthFadedWinding( const idWinding &w, const idMaterial *decalMaterial, const idPlane fadePlanes[2], float fadeDepth, int startTime )\r\n");
}


/*
=================
idRenderModelDecal::CreateDecal
=================
*/
void idRenderModelDecal::CreateDecal( const idRenderModel *model, const decalProjectionInfo_t &localInfo ) {
    Sys_Printf("void idRenderModelDecal::CreateDecal( const idRenderModel *model, const decalProjectionInfo_t &localInfo )\r\n");
}


/*
=====================
idRenderModelDecal::RemoveFadedDecals
=====================
*/
idRenderModelDecal *idRenderModelDecal::RemoveFadedDecals( idRenderModelDecal *decals, int time ) {
    Sys_Printf("idRenderModelDecal *idRenderModelDecal::RemoveFadedDecals( idRenderModelDecal *decals, int time )\r\n");
    return NULL;
}


/*
=====================
idRenderModelDecal::AddDecalDrawSurf
=====================
*/
void idRenderModelDecal::AddDecalDrawSurf( viewEntity_t *space ) {
    Sys_Printf("void idRenderModelDecal::AddDecalDrawSurf( viewEntity_t *space )\r\n");
}


/*
====================
idRenderModelDecal::ReadFromDemoFile
====================
*/
void idRenderModelDecal::ReadFromDemoFile( idDemoFile *f ) {
    Sys_Printf("void idRenderModelDecal::ReadFromDemoFile( idDemoFile *f )\r\n");
}


/*
====================
idRenderModelDecal::WriteToDemoFile
====================
*/
void idRenderModelDecal::WriteToDemoFile( idDemoFile *f ) const {
    Sys_Printf("void idRenderModelDecal::WriteToDemoFile( idDemoFile *f )\r\n");
}

