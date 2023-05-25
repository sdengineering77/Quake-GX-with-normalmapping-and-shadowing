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

static const char *smokeParticle_SnapshotName = "_SmokeParticle_Snapshot_";

/*
================
idSmokeParticles::idSmokeParticles
================
*/
idSmokeParticles::idSmokeParticles( void ) {
	initialized = false;
	memset( &renderEntity, 0, sizeof( renderEntity ) );
	renderEntityHandle = -1;
	memset( smokes, 0, sizeof( smokes ) );
	freeSmokes = NULL;
	numActiveSmokes = 0;
	currentParticleTime = -1;
}

/*
================
idSmokeParticles::Init
================
*/
void idSmokeParticles::Init( void ) {
    Sys_Printf("void idSmokeParticles::Init( void )\r\n");
}


/*
================
idSmokeParticles::Shutdown
================
*/
void idSmokeParticles::Shutdown( void ) {
    Sys_Printf("void idSmokeParticles::Shutdown( void )\r\n");
}


/*
================
idSmokeParticles::FreeSmokes
================
*/
void idSmokeParticles::FreeSmokes( void ) {
    Sys_Printf("void idSmokeParticles::FreeSmokes( void )\r\n");
}


/*
================
idSmokeParticles::EmitSmoke

Called by game code to drop another particle into the list
================
*/
bool idSmokeParticles::EmitSmoke( const idDeclParticle *smoke, const int systemStartTime, const float diversity, const idVec3 &origin, const idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSmokeParticles::EmitSmoke( const idDeclParticle *smoke, const int systemStartTime, const float diversity, const idVec3 &origin, const idMat3 &axis )\r\n");
    return retVal;
}


/*
================
idSmokeParticles::UpdateRenderEntity
================
*/
bool idSmokeParticles::UpdateRenderEntity( renderEntity_s *renderEntity, const renderView_t *renderView ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSmokeParticles::UpdateRenderEntity( renderEntity_s *renderEntity, const renderView_t *renderView )\r\n");
    return retVal;
}


/*
================
idSmokeParticles::ModelCallback
================
*/
bool idSmokeParticles::ModelCallback( renderEntity_s *renderEntity, const renderView_t *renderView ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSmokeParticles::ModelCallback( renderEntity_s *renderEntity, const renderView_t *renderView )\r\n");
    return retVal;
}

