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

idRenderEntityLocal::idRenderEntityLocal() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idRenderEntityLocal::idRenderEntityLocal() size %d\r\n", sizeof(*this));
#endif

	memset( &parms, 0, sizeof( parms ) );
	memset( modelMatrix, 0, sizeof( modelMatrix ) );

	world					= NULL;
	index					= 0;
	lastModifiedFrameNum	= 0;
	archived				= false;
	dynamicModel			= NULL;
	dynamicModelFrameCount	= 0;
	cachedDynamicModel		= NULL;
	referenceBounds			= bounds_zero;
	viewCount				= 0;
	viewEntity				= NULL;
	visibleCount			= 0;
	decals					= NULL;
	overlay					= NULL;
	entityRefs				= NULL;
	firstInteraction		= NULL;
	lastInteraction			= NULL;
	needsPortalSky			= false;
}

#ifdef DOOMGX
void * idRenderEntityLocal::operator new(std::size_t size) throw(std::bad_alloc) {
	void *alloc = Mem_Alloc16(size);
	if (!alloc) {
		throw std::bad_alloc();
	}
	return alloc;
}

void idRenderEntityLocal::operator delete(void *pMem) throw() {
	if ((unsigned int) pMem >= 0x90000000) {
		Mem_Free16(pMem);
	} else {
		free(pMem);
	}
}

void * idRenderEntityLocal::operator new[](std::size_t size) throw(std::bad_alloc) {
	void *alloc = Mem_Alloc16(size);
	if (!alloc) {
		throw std::bad_alloc();
	}
	return alloc;
}

void idRenderEntityLocal::operator delete[](void *pMem) throw() {
	if ((unsigned int) pMem >= 0x90000000) {
		Mem_Free16(pMem);
	} else {
		free(pMem);
	}
}
#endif

void idRenderEntityLocal::FreeRenderEntity() {
}

void idRenderEntityLocal::UpdateRenderEntity( const renderEntity_t *re, bool forceUpdate ) {
}

void idRenderEntityLocal::GetRenderEntity( renderEntity_t *re ) {
}

void idRenderEntityLocal::ForceUpdate() {
}

int idRenderEntityLocal::GetIndex() {
	return index;
}

void idRenderEntityLocal::ProjectOverlay( const idPlane localTextureAxis[2], const idMaterial *material ) {
}
void idRenderEntityLocal::RemoveDecals() {
}

//======================================================================

idRenderLightLocal::idRenderLightLocal() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idRenderLightLocal::idRenderLightLocal() size %d\r\n", sizeof(*this));
#endif

	memset( &parms, 0, sizeof( parms ) );
	memset( modelMatrix, 0, sizeof( modelMatrix ) );
	memset( shadowFrustums, 0, sizeof( shadowFrustums ) );
	memset( lightProject, 0, sizeof( lightProject ) );
	memset( frustum, 0, sizeof( frustum ) );
	memset( frustumWindings, 0, sizeof( frustumWindings ) );

	lightHasMoved			= false;
	world					= NULL;
	index					= 0;
	areaNum					= 0;
	lastModifiedFrameNum	= 0;
	archived				= false;
	lightShader				= NULL;
	falloffImage			= NULL;
	globalLightOrigin		= vec3_zero;
	frustumTris				= NULL;
	numShadowFrustums		= 0;
	viewCount				= 0;
	viewLight				= NULL;
	references				= NULL;
	foggedPortals			= NULL;
	firstInteraction		= NULL;
	lastInteraction			= NULL;
}

#ifdef DOOMGX
void * idRenderLightLocal::operator new(std::size_t size) throw(std::bad_alloc) {
	void *alloc = Mem_Alloc16(size);
	if (!alloc) {
		throw std::bad_alloc();
	}
	return alloc;
}

void idRenderLightLocal::operator delete(void *pMem) throw() {
	if ((unsigned int) pMem >= 0x90000000) {
		Mem_Free16(pMem);
	} else {
		free(pMem);
	}
}

void * idRenderLightLocal::operator new[](std::size_t size) throw(std::bad_alloc) {
	void *alloc = Mem_Alloc16(size);
	if (!alloc) {
		throw std::bad_alloc();
	}
	return alloc;
}

void idRenderLightLocal::operator delete[](void *pMem) throw() {
	if ((unsigned int) pMem >= 0x90000000) {
		Mem_Free16(pMem);
	} else {
		free(pMem);
	}
}
#endif


void idRenderLightLocal::FreeRenderLight() {
}
void idRenderLightLocal::UpdateRenderLight( const renderLight_t *re, bool forceUpdate ) {
}
void idRenderLightLocal::GetRenderLight( renderLight_t *re ) {
}
void idRenderLightLocal::ForceUpdate() {
}
int idRenderLightLocal::GetIndex() {
	return index;
}
