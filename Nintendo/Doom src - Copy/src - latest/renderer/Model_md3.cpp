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
#include "Model_md3.h"

/***********************************************************************

	idMD3Mesh

***********************************************************************/

#define	LL(x) x=LittleLong(x)

/*
=================
idRenderModelMD3::InitFromFile
=================
*/
void idRenderModelMD3::InitFromFile( const char *fileName ) {
    Sys_Printf("void idRenderModelMD3::InitFromFile( const char *fileName )\r\n");
}


/*
=================
idRenderModelMD3::IsDynamicModel
=================
*/
dynamicModel_t idRenderModelMD3::IsDynamicModel() const {
    dynamicModel_t retVal;
    memset(&retVal, 0, sizeof(dynamicModel_t));
    Sys_Printf("dynamicModel_t idRenderModelMD3::IsDynamicModel()\r\n");
    return retVal;
}


/*
=================
idRenderModelMD3::LerpMeshVertexes
=================
*/
void idRenderModelMD3::LerpMeshVertexes ( srfTriangles_t *tri, const struct md3Surface_s *surf, const float backlerp, const int frame, const int oldframe ) const {
    Sys_Printf("void idRenderModelMD3::LerpMeshVertexes ( srfTriangles_t *tri, const struct md3Surface_s *surf, const float backlerp, const int frame, const int oldframe )\r\n");
}


/*
=============
idRenderModelMD3::InstantiateDynamicModel
=============
*/
idRenderModel *idRenderModelMD3::InstantiateDynamicModel( const struct renderEntity_s *ent, const struct viewDef_s *view, idRenderModel *cachedModel ) {
    Sys_Printf("idRenderModel *idRenderModelMD3::InstantiateDynamicModel( const struct renderEntity_s *ent, const struct viewDef_s *view, idRenderModel *cachedModel )\r\n");
    return NULL;
}


/*
=====================
idRenderModelMD3::Bounds
=====================
*/

idBounds idRenderModelMD3::Bounds(const struct renderEntity_s *ent) const {
    idBounds retVal;
    memset(&retVal, 0, sizeof(idBounds));
    Sys_Printf("idBounds idRenderModelMD3::Bounds(const struct renderEntity_s *ent)\r\n");
    return retVal;
}


