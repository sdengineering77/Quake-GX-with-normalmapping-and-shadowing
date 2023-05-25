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

#include "Game_local.h"

#define MAX_BOUNDS_AREAS	16


typedef struct pvsPassage_s {
	byte *				canSee;		// bit set for all portals that can be seen through this passage
} pvsPassage_t;


typedef struct pvsPortal_s {
	int					areaNum;	// area this portal leads to
	idWinding *			w;			// winding goes counter clockwise seen from the area this portal is part of
	idBounds			bounds;		// winding bounds
	idPlane				plane;		// winding plane, normal points towards the area this portal leads to
	pvsPassage_t *		passages;	// passages to portals in the area this portal leads to
	bool				done;		// true if pvs is calculated for this portal
	byte *				vis;		// PVS for this portal
	byte *				mightSee;	// used during construction
} pvsPortal_t;


typedef struct pvsArea_s {
	int					numPortals;	// number of portals in this area
	idBounds			bounds;		// bounds of the whole area
	pvsPortal_t **		portals;	// array with pointers to the portals of this area
} pvsArea_t;


typedef struct pvsStack_s {
	struct pvsStack_s *	next;		// next stack entry
	byte *				mightSee;	// bit set for all portals that might be visible through this passage/portal stack
} pvsStack_t;


/*
================
idPVS::idPVS
================
*/
idPVS::idPVS( void ) {
	int i;

	numAreas = 0;
	numPortals = 0;

	connectedAreas = NULL;
	areaQueue = NULL;
	areaPVS = NULL;

	for ( i = 0; i < MAX_CURRENT_PVS; i++ ) {
		currentPVS[i].handle.i = -1;
		currentPVS[i].handle.h = 0;
		currentPVS[i].pvs = NULL;
	}

	pvsAreas = NULL;
	pvsPortals = NULL;
}

/*
================
idPVS::~idPVS
================
*/
idPVS::~idPVS( void ) {
	Shutdown();
}

/*
================
idPVS::GetPortalCount
================
*/
int idPVS::GetPortalCount( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPVS::GetPortalCount( void )\r\n");
    return retVal;
}


/*
================
idPVS::CreatePVSData
================
*/
void idPVS::CreatePVSData( void ) {
    Sys_Printf("void idPVS::CreatePVSData( void )\r\n");
}


/*
================
idPVS::DestroyPVSData
================
*/
void idPVS::DestroyPVSData( void ) {
    Sys_Printf("void idPVS::DestroyPVSData( void )\r\n");
}


/*
================
idPVS::FloodFrontPortalPVS_r
================
*/
void idPVS::FloodFrontPortalPVS_r( pvsPortal_t *portal, int areaNum ) const {
    Sys_Printf("void idPVS::FloodFrontPortalPVS_r( pvsPortal_t *portal, int areaNum )\r\n");
}


/*
================
idPVS::FrontPortalPVS
================
*/
void idPVS::FrontPortalPVS( void ) const {
    Sys_Printf("void idPVS::FrontPortalPVS( void )\r\n");
}


/*
===============
idPVS::FloodPassagePVS_r
===============
*/
pvsStack_t *idPVS::FloodPassagePVS_r( pvsPortal_t *source, const pvsPortal_t *portal, pvsStack_t *prevStack ) const {
    Sys_Printf("pvsStack_t *idPVS::FloodPassagePVS_r( pvsPortal_t *source, const pvsPortal_t *portal, pvsStack_t *prevStack )\r\n");
    return NULL;
}


/*
===============
idPVS::PassagePVS
===============
*/
void idPVS::PassagePVS( void ) const {
    Sys_Printf("void idPVS::PassagePVS( void )\r\n");
}


/*
===============
idPVS::AddPassageBoundaries
===============
*/
void idPVS::AddPassageBoundaries( const idWinding &source, const idWinding &pass, bool flipClip, idPlane *bounds, int &numBounds, int maxBounds ) const {
    Sys_Printf("void idPVS::AddPassageBoundaries( const idWinding &source, const idWinding &pass, bool flipClip, idPlane *bounds, int &numBounds, int maxBounds )\r\n");
}


/*
================
idPVS::CreatePassages
================
*/
#define MAX_PASSAGE_BOUNDS		128

void idPVS::CreatePassages( void ) const {
    Sys_Printf("void idPVS::CreatePassages( void )\r\n");
}


/*
================
idPVS::DestroyPassages
================
*/
void idPVS::DestroyPassages( void ) const {
    Sys_Printf("void idPVS::DestroyPassages( void )\r\n");
}


/*
================
idPVS::CopyPortalPVSToMightSee
================
*/
void idPVS::CopyPortalPVSToMightSee( void ) const {
    Sys_Printf("void idPVS::CopyPortalPVSToMightSee( void )\r\n");
}


/*
================
idPVS::AreaPVSFromPortalPVS
================
*/
int idPVS::AreaPVSFromPortalPVS( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPVS::AreaPVSFromPortalPVS( void )\r\n");
    return retVal;
}


/*
================
idPVS::Init
================
*/
void idPVS::Init( void ) {
    Sys_Printf("void idPVS::Init( void )\r\n");
}


/*
================
idPVS::Shutdown
================
*/
void idPVS::Shutdown( void ) {
    Sys_Printf("void idPVS::Shutdown( void )\r\n");
}


/*
================
idPVS::GetConnectedAreas

  assumes the 'areas' array is initialized to false
================
*/
void idPVS::GetConnectedAreas( int srcArea, bool *areas ) const {
    Sys_Printf("void idPVS::GetConnectedAreas( int srcArea, bool *areas )\r\n");
}


/*
================
idPVS::GetPVSArea
================
*/
int idPVS::GetPVSArea( const idVec3 &point ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPVS::GetPVSArea( const idVec3 &point )\r\n");
    return retVal;
}


/*
================
idPVS::GetPVSAreas
================
*/
int idPVS::GetPVSAreas( const idBounds &bounds, int *areas, int maxAreas ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPVS::GetPVSAreas( const idBounds &bounds, int *areas, int maxAreas )\r\n");
    return retVal;
}


/*
================
idPVS::SetupCurrentPVS
================
*/
pvsHandle_t idPVS::SetupCurrentPVS( const idVec3 &source, const pvsType_t type ) const {
    pvsHandle_t retVal;
    memset(&retVal, 0, sizeof(pvsHandle_t));
    Sys_Printf("pvsHandle_t idPVS::SetupCurrentPVS( const idVec3 &source, const pvsType_t type )\r\n");
    return retVal;
}


/*
================
idPVS::SetupCurrentPVS
================
*/
pvsHandle_t idPVS::SetupCurrentPVS( const idBounds &source, const pvsType_t type ) const {
    pvsHandle_t retVal;
    memset(&retVal, 0, sizeof(pvsHandle_t));
    Sys_Printf("pvsHandle_t idPVS::SetupCurrentPVS( const idBounds &source, const pvsType_t type )\r\n");
    return retVal;
}


/*
================
idPVS::SetupCurrentPVS
================
*/
pvsHandle_t idPVS::SetupCurrentPVS( const int sourceArea, const pvsType_t type ) const {
    pvsHandle_t retVal;
    memset(&retVal, 0, sizeof(pvsHandle_t));
    Sys_Printf("pvsHandle_t idPVS::SetupCurrentPVS( const int sourceArea, const pvsType_t type )\r\n");
    return retVal;
}


/*
================
idPVS::SetupCurrentPVS
================
*/
pvsHandle_t idPVS::SetupCurrentPVS( const int *sourceAreas, const int numSourceAreas, const pvsType_t type ) const {
    pvsHandle_t retVal;
    memset(&retVal, 0, sizeof(pvsHandle_t));
    Sys_Printf("pvsHandle_t idPVS::SetupCurrentPVS( const int *sourceAreas, const int numSourceAreas, const pvsType_t type )\r\n");
    return retVal;
}


/*
================
idPVS::MergeCurrentPVS
================
*/
pvsHandle_t idPVS::MergeCurrentPVS( pvsHandle_t pvs1, pvsHandle_t pvs2 ) const {
    pvsHandle_t retVal;
    memset(&retVal, 0, sizeof(pvsHandle_t));
    Sys_Printf("pvsHandle_t idPVS::MergeCurrentPVS( pvsHandle_t pvs1, pvsHandle_t pvs2 )\r\n");
    return retVal;
}


/*
================
idPVS::AllocCurrentPVS
================
*/
pvsHandle_t idPVS::AllocCurrentPVS( unsigned int h ) const {
    pvsHandle_t retVal;
    memset(&retVal, 0, sizeof(pvsHandle_t));
    Sys_Printf("pvsHandle_t idPVS::AllocCurrentPVS( unsigned int h )\r\n");
    return retVal;
}


/*
================
idPVS::FreeCurrentPVS
================
*/
void idPVS::FreeCurrentPVS( pvsHandle_t handle ) const {
    Sys_Printf("void idPVS::FreeCurrentPVS( pvsHandle_t handle )\r\n");
}


/*
================
idPVS::InCurrentPVS
================
*/
bool idPVS::InCurrentPVS( const pvsHandle_t handle, const idVec3 &target ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPVS::InCurrentPVS( const pvsHandle_t handle, const idVec3 &target )\r\n");
    return retVal;
}


/*
================
idPVS::InCurrentPVS
================
*/
bool idPVS::InCurrentPVS( const pvsHandle_t handle, const idBounds &target ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPVS::InCurrentPVS( const pvsHandle_t handle, const idBounds &target )\r\n");
    return retVal;
}


/*
================
idPVS::InCurrentPVS
================
*/
bool idPVS::InCurrentPVS( const pvsHandle_t handle, const int targetArea ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPVS::InCurrentPVS( const pvsHandle_t handle, const int targetArea )\r\n");
    return retVal;
}


/*
================
idPVS::InCurrentPVS
================
*/
bool idPVS::InCurrentPVS( const pvsHandle_t handle, const int *targetAreas, int numTargetAreas ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPVS::InCurrentPVS( const pvsHandle_t handle, const int *targetAreas, int numTargetAreas )\r\n");
    return retVal;
}


/*
================
idPVS::DrawPVS
================
*/
void idPVS::DrawPVS( const idVec3 &source, const pvsType_t type ) const {
    Sys_Printf("void idPVS::DrawPVS( const idVec3 &source, const pvsType_t type )\r\n");
}


/*
================
idPVS::DrawPVS
================
*/
void idPVS::DrawPVS( const idBounds &source, const pvsType_t type ) const {
    Sys_Printf("void idPVS::DrawPVS( const idBounds &source, const pvsType_t type )\r\n");
}


/*
================
idPVS::DrawPVS
================
*/
void idPVS::DrawCurrentPVS( const pvsHandle_t handle, const idVec3 &source ) const {
    Sys_Printf("void idPVS::DrawCurrentPVS( const pvsHandle_t handle, const idVec3 &source )\r\n");
}


#if ASYNC_WRITE_PVS

/*
===================
idPVS::WritePVS
===================
*/
void idPVS::WritePVS( const pvsHandle_t handle, idBitMsg &msg ) {
    Sys_Printf("void idPVS::WritePVS( const pvsHandle_t handle, idBitMsg &msg )\r\n");
}


/*
===================
idPVS::ReadPVS
===================
*/
void idPVS::ReadPVS( const pvsHandle_t handle, const idBitMsg &msg ) {
    Sys_Printf("void idPVS::ReadPVS( const pvsHandle_t handle, const idBitMsg &msg )\r\n");
}


#endif

