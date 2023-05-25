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


CLASS_DECLARATION( idEntity, idBrittleFracture )
	EVENT( EV_Activate, idBrittleFracture::Event_Activate )
	EVENT( EV_Touch, idBrittleFracture::Event_Touch )
END_CLASS

const int SHARD_ALIVE_TIME	= 5000;
const int SHARD_FADE_START	= 2000;

static const char *brittleFracture_SnapshotName = "_BrittleFracture_Snapshot_";

/*
================
idBrittleFracture::idBrittleFracture
================
*/
idBrittleFracture::idBrittleFracture( void ) {
	material = NULL;
	decalMaterial = NULL;
	decalSize = 0.0f;
	maxShardArea = 0.0f;
	maxShatterRadius = 0.0f;
	minShatterRadius = 0.0f;
	linearVelocityScale = 0.0f;
	angularVelocityScale = 0.0f;
	shardMass = 0.0f;
	density = 0.0f;
	friction = 0.0f;
	bouncyness = 0.0f;
	fxFracture.Clear();

	bounds.Clear();
	disableFracture = false;

	lastRenderEntityUpdate = -1;
	changed = false;

	fl.networkSync = true;

#ifdef _D3XP
	isXraySurface = false;
#endif
}

/*
================
idBrittleFracture::~idBrittleFracture
================
*/
idBrittleFracture::~idBrittleFracture( void ) {
	int i;

	for ( i = 0; i < shards.Num(); i++ ) {
		shards[i]->decals.DeleteContents( true );
		delete shards[i];
	}

	// make sure the render entity is freed before the model is freed
	FreeModelDef();
	renderModelManager->FreeModel( renderEntity.hModel );
}

/*
================
idBrittleFracture::Save
================
*/
void idBrittleFracture::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idBrittleFracture::Save( idSaveGame *savefile )\r\n");
}


/*
================
idBrittleFracture::Restore
================
*/
void idBrittleFracture::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idBrittleFracture::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idBrittleFracture::Spawn
================
*/
void idBrittleFracture::Spawn( void ) {
    Sys_Printf("void idBrittleFracture::Spawn( void )\r\n");
}


/*
================
idBrittleFracture::AddShard
================
*/
void idBrittleFracture::AddShard( idClipModel *clipModel, idFixedWinding &w ) {
    Sys_Printf("void idBrittleFracture::AddShard( idClipModel *clipModel, idFixedWinding &w )\r\n");
}


/*
================
idBrittleFracture::RemoveShard
================
*/
void idBrittleFracture::RemoveShard( int index ) {
    Sys_Printf("void idBrittleFracture::RemoveShard( int index )\r\n");
}


/*
================
idBrittleFracture::UpdateRenderEntity
================
*/
bool idBrittleFracture::UpdateRenderEntity( renderEntity_s *renderEntity, const renderView_t *renderView ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrittleFracture::UpdateRenderEntity( renderEntity_s *renderEntity, const renderView_t *renderView )\r\n");
    return retVal;
}


/*
================
idBrittleFracture::ModelCallback
================
*/
bool idBrittleFracture::ModelCallback( renderEntity_s *renderEntity, const renderView_t *renderView ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrittleFracture::ModelCallback( renderEntity_s *renderEntity, const renderView_t *renderView )\r\n");
    return retVal;
}


/*
================
idBrittleFracture::Present
================
*/
void idBrittleFracture::Present() {
    Sys_Printf("void idBrittleFracture::Present()\r\n");
}


/*
================
idBrittleFracture::Think
================
*/
void idBrittleFracture::Think( void ) {
    Sys_Printf("void idBrittleFracture::Think( void )\r\n");
}


/*
================
idBrittleFracture::ApplyImpulse
================
*/
void idBrittleFracture::ApplyImpulse( idEntity *ent, int id, const idVec3 &point, const idVec3 &impulse ) {
    Sys_Printf("void idBrittleFracture::ApplyImpulse( idEntity *ent, int id, const idVec3 &point, const idVec3 &impulse )\r\n");
}


/*
================
idBrittleFracture::AddForce
================
*/
void idBrittleFracture::AddForce( idEntity *ent, int id, const idVec3 &point, const idVec3 &force ) {
    Sys_Printf("void idBrittleFracture::AddForce( idEntity *ent, int id, const idVec3 &point, const idVec3 &force )\r\n");
}


/*
================
idBrittleFracture::ProjectDecal
================
*/
void idBrittleFracture::ProjectDecal( const idVec3 &point, const idVec3 &dir, const int time, const char *damageDefName ) {
    Sys_Printf("void idBrittleFracture::ProjectDecal( const idVec3 &point, const idVec3 &dir, const int time, const char *damageDefName )\r\n");
}


/*
================
idBrittleFracture::DropShard
================
*/
void idBrittleFracture::DropShard( shard_t *shard, const idVec3 &point, const idVec3 &dir, const float impulse, const int time ) {
    Sys_Printf("void idBrittleFracture::DropShard( shard_t *shard, const idVec3 &point, const idVec3 &dir, const float impulse, const int time )\r\n");
}


/*
================
idBrittleFracture::Shatter
================
*/
void idBrittleFracture::Shatter( const idVec3 &point, const idVec3 &impulse, const int time ) {
    Sys_Printf("void idBrittleFracture::Shatter( const idVec3 &point, const idVec3 &impulse, const int time )\r\n");
}


/*
================
idBrittleFracture::DropFloatingIslands
================
*/
void idBrittleFracture::DropFloatingIslands( const idVec3 &point, const idVec3 &impulse, const int time ) {
    Sys_Printf("void idBrittleFracture::DropFloatingIslands( const idVec3 &point, const idVec3 &impulse, const int time )\r\n");
}


/*
================
idBrittleFracture::Break
================
*/
void idBrittleFracture::Break( void ) {
    Sys_Printf("void idBrittleFracture::Break( void )\r\n");
}


/*
================
idBrittleFracture::IsBroken
================
*/
bool idBrittleFracture::IsBroken( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrittleFracture::IsBroken( void )\r\n");
    return retVal;
}


/*
================
idBrittleFracture::Killed
================
*/
void idBrittleFracture::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    Sys_Printf("void idBrittleFracture::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
}


/*
================
idBrittleFracture::AddDamageEffect
================
*/
void idBrittleFracture::AddDamageEffect( const trace_t &collision, const idVec3 &velocity, const char *damageDefName ) {
    Sys_Printf("void idBrittleFracture::AddDamageEffect( const trace_t &collision, const idVec3 &velocity, const char *damageDefName )\r\n");
}


/*
================
idBrittleFracture::Fracture_r
================
*/
void idBrittleFracture::Fracture_r( idFixedWinding &w ) {
    Sys_Printf("void idBrittleFracture::Fracture_r( idFixedWinding &w )\r\n");
}


/*
================
idBrittleFracture::CreateFractures
================
*/
void idBrittleFracture::CreateFractures( const idRenderModel *renderModel ) {
    Sys_Printf("void idBrittleFracture::CreateFractures( const idRenderModel *renderModel )\r\n");
}


/*
================
idBrittleFracture::FindNeighbours
================
*/
void idBrittleFracture::FindNeighbours( void ) {
    Sys_Printf("void idBrittleFracture::FindNeighbours( void )\r\n");
}


/*
================
idBrittleFracture::Event_Activate
================
*/
void idBrittleFracture::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idBrittleFracture::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idBrittleFracture::Event_Touch
================
*/
void idBrittleFracture::Event_Touch( idEntity *other, trace_t *trace ) {
    Sys_Printf("void idBrittleFracture::Event_Touch( idEntity *other, trace_t *trace )\r\n");
}


/*
================
idBrittleFracture::ClientPredictionThink
================
*/
void idBrittleFracture::ClientPredictionThink( void ) {
    Sys_Printf("void idBrittleFracture::ClientPredictionThink( void )\r\n");
}


/*
================
idBrittleFracture::ClientReceiveEvent
================
*/
bool idBrittleFracture::ClientReceiveEvent( int event, int time, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrittleFracture::ClientReceiveEvent( int event, int time, const idBitMsg &msg )\r\n");
    return retVal;
}

