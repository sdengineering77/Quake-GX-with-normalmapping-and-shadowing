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

#include "Model_local.h"
#include "tr_local.h"


/*
====================
idRenderModelOverlay::idRenderModelOverlay
====================
*/
idRenderModelOverlay::idRenderModelOverlay() {
}

/*
====================
idRenderModelOverlay::~idRenderModelOverlay
====================
*/
idRenderModelOverlay::~idRenderModelOverlay() {
	int i, k;

	for ( k = 0; k < materials.Num(); k++ ) {
		for ( i = 0; i < materials[k]->surfaces.Num(); i++ ) {
			FreeSurface( materials[k]->surfaces[i] );
		}
		materials[k]->surfaces.Clear();
		delete materials[k];
	}
	materials.Clear();
}

/*
====================
idRenderModelOverlay::Alloc
====================
*/
idRenderModelOverlay *idRenderModelOverlay::Alloc( void ) {
    Sys_Printf("idRenderModelOverlay *idRenderModelOverlay::Alloc( void )\r\n");
    return NULL;
}


/*
====================
idRenderModelOverlay::Free
====================
*/
void idRenderModelOverlay::Free( idRenderModelOverlay *overlay ) {
    Sys_Printf("void idRenderModelOverlay::Free( idRenderModelOverlay *overlay )\r\n");
}


/*
====================
idRenderModelOverlay::FreeSurface
====================
*/
void idRenderModelOverlay::FreeSurface( overlaySurface_t *surface ) {
    Sys_Printf("void idRenderModelOverlay::FreeSurface( overlaySurface_t *surface )\r\n");
}


/*
=====================
idRenderModelOverlay::CreateOverlay

This projects on both front and back sides to avoid seams
The material should be clamped, because entire triangles are added, some of which
may extend well past the 0.0 to 1.0 texture range
=====================
*/
void idRenderModelOverlay::CreateOverlay( const idRenderModel *model, const idPlane localTextureAxis[2], const idMaterial *mtr ) {
    Sys_Printf("void idRenderModelOverlay::CreateOverlay( const idRenderModel *model, const idPlane localTextureAxis[2], const idMaterial *mtr )\r\n");
}


/*
====================
idRenderModelOverlay::AddOverlaySurfacesToModel
====================
*/
void idRenderModelOverlay::AddOverlaySurfacesToModel( idRenderModel *baseModel ) {
    Sys_Printf("void idRenderModelOverlay::AddOverlaySurfacesToModel( idRenderModel *baseModel )\r\n");
}


/*
====================
idRenderModelOverlay::RemoveOverlaySurfacesFromModel
====================
*/
void idRenderModelOverlay::RemoveOverlaySurfacesFromModel( idRenderModel *baseModel ) {
    Sys_Printf("void idRenderModelOverlay::RemoveOverlaySurfacesFromModel( idRenderModel *baseModel )\r\n");
}


/*
====================
idRenderModelOverlay::ReadFromDemoFile
====================
*/
void idRenderModelOverlay::ReadFromDemoFile( idDemoFile *f ) {
    Sys_Printf("void idRenderModelOverlay::ReadFromDemoFile( idDemoFile *f )\r\n");
}


/*
====================
idRenderModelOverlay::WriteToDemoFile
====================
*/
void idRenderModelOverlay::WriteToDemoFile( idDemoFile *f ) const {
    Sys_Printf("void idRenderModelOverlay::WriteToDemoFile( idDemoFile *f )\r\n");
}

