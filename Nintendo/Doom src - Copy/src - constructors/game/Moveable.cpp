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

/*
===============================================================================

  idMoveable
	
===============================================================================
*/

const idEventDef EV_BecomeNonSolid( "becomeNonSolid" );
const idEventDef EV_SetOwnerFromSpawnArgs( "<setOwnerFromSpawnArgs>" );
const idEventDef EV_IsAtRest( "isAtRest", NULL, 'd' );
const idEventDef EV_EnableDamage( "enableDamage", "f" );

CLASS_DECLARATION( idEntity, idMoveable )
	EVENT( EV_Activate,					idMoveable::Event_Activate )
	EVENT( EV_BecomeNonSolid,			idMoveable::Event_BecomeNonSolid )
	EVENT( EV_SetOwnerFromSpawnArgs,	idMoveable::Event_SetOwnerFromSpawnArgs )
	EVENT( EV_IsAtRest,					idMoveable::Event_IsAtRest )
	EVENT( EV_EnableDamage,				idMoveable::Event_EnableDamage )
END_CLASS


static const float BOUNCE_SOUND_MIN_VELOCITY	= 80.0f;
static const float BOUNCE_SOUND_MAX_VELOCITY	= 200.0f;

/*
================
idMoveable::idMoveable
================
*/
idMoveable::idMoveable( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idMoveable::idMoveable( void ) size %d\r\n", sizeof(*this));
#endif

	minDamageVelocity	= 100.0f;
	maxDamageVelocity	= 200.0f;
	nextCollideFxTime	= 0;
	nextDamageTime		= 0;
	nextSoundTime		= 0;
	initialSpline		= NULL;
	initialSplineDir	= vec3_zero;
	explode				= false;
	unbindOnDeath		= false;
	allowStep			= false;
	canDamage			= false;
}

/*
================
idMoveable::~idMoveable
================
*/
idMoveable::~idMoveable( void ) {
	delete initialSpline;
	initialSpline = NULL;
}

/*
================
idMoveable::Spawn
================
*/
void idMoveable::Spawn( void ) {
    Sys_Printf("void idMoveable::Spawn( void )\r\n");
}


/*
================
idMoveable::Save
================
*/
void idMoveable::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idMoveable::Save( idSaveGame *savefile )\r\n");
}


/*
================
idMoveable::Restore
================
*/
void idMoveable::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idMoveable::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idMoveable::Hide
================
*/
void idMoveable::Hide( void ) {
    Sys_Printf("void idMoveable::Hide( void )\r\n");
}


/*
================
idMoveable::Show
================
*/
void idMoveable::Show( void ) {
    Sys_Printf("void idMoveable::Show( void )\r\n");
}


/*
=================
idMoveable::Collide
=================
*/
bool idMoveable::Collide( const trace_t &collision, const idVec3 &velocity ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMoveable::Collide( const trace_t &collision, const idVec3 &velocity )\r\n");
    return retVal;
}


/*
============
idMoveable::Killed
============
*/
void idMoveable::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    Sys_Printf("void idMoveable::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
}


/*
================
idMoveable::AllowStep
================
*/
bool idMoveable::AllowStep( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMoveable::AllowStep( void )\r\n");
    return retVal;
}


/*
================
idMoveable::BecomeNonSolid
================
*/
void idMoveable::BecomeNonSolid( void ) {
    Sys_Printf("void idMoveable::BecomeNonSolid( void )\r\n");
}


/*
================
idMoveable::EnableDamage
================
*/
void idMoveable::EnableDamage( bool enable, float duration ) {
    Sys_Printf("void idMoveable::EnableDamage( bool enable, float duration )\r\n");
}


/*
================
idMoveable::InitInitialSpline
================
*/
void idMoveable::InitInitialSpline( int startTime ) {
    Sys_Printf("void idMoveable::InitInitialSpline( int startTime )\r\n");
}


/*
================
idMoveable::FollowInitialSplinePath
================
*/
bool idMoveable::FollowInitialSplinePath( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMoveable::FollowInitialSplinePath( void )\r\n");
    return retVal;
}


/*
================
idMoveable::Think
================
*/
void idMoveable::Think( void ) {
    Sys_Printf("void idMoveable::Think( void )\r\n");
}


/*
================
idMoveable::GetRenderModelMaterial
================
*/
const idMaterial *idMoveable::GetRenderModelMaterial( void ) const {
    Sys_Printf("idMaterial *idMoveable::GetRenderModelMaterial( void )\r\n");
    return NULL;
}


/*
================
idMoveable::WriteToSnapshot
================
*/
void idMoveable::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idMoveable::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idMoveable::ReadFromSnapshot
================
*/
void idMoveable::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idMoveable::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idMoveable::Event_BecomeNonSolid
================
*/
void idMoveable::Event_BecomeNonSolid( void ) {
    Sys_Printf("void idMoveable::Event_BecomeNonSolid( void )\r\n");
}


/*
================
idMoveable::Event_Activate
================
*/
void idMoveable::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idMoveable::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idMoveable::Event_SetOwnerFromSpawnArgs
================
*/
void idMoveable::Event_SetOwnerFromSpawnArgs( void ) {
    Sys_Printf("void idMoveable::Event_SetOwnerFromSpawnArgs( void )\r\n");
}


/*
================
idMoveable::Event_IsAtRest
================
*/
void idMoveable::Event_IsAtRest( void ) {
    Sys_Printf("void idMoveable::Event_IsAtRest( void )\r\n");
}


/*
================
idMoveable::Event_EnableDamage
================
*/
void idMoveable::Event_EnableDamage( float enable ) {
    Sys_Printf("void idMoveable::Event_EnableDamage( float enable )\r\n");
}



/*
===============================================================================

  idBarrel
	
===============================================================================
*/

CLASS_DECLARATION( idMoveable, idBarrel )
END_CLASS

/*
================
idBarrel::idBarrel
================
*/
idBarrel::idBarrel() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idBarrel::idBarrel() size %d\r\n", sizeof(*this));
#endif

	radius = 1.0f;
	barrelAxis = 0;
	lastOrigin.Zero();
	lastAxis.Identity();
	additionalRotation = 0.0f;
	additionalAxis.Identity();
	fl.networkSync = true;
}

/*
================
idBarrel::Save
================
*/
void idBarrel::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idBarrel::Save( idSaveGame *savefile )\r\n");
}


/*
================
idBarrel::Restore
================
*/
void idBarrel::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idBarrel::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idBarrel::BarrelThink
================
*/
void idBarrel::BarrelThink( void ) {
    Sys_Printf("void idBarrel::BarrelThink( void )\r\n");
}


/*
================
idBarrel::Think
================
*/
void idBarrel::Think( void ) {
    Sys_Printf("void idBarrel::Think( void )\r\n");
}


/*
================
idBarrel::GetPhysicsToVisualTransform
================
*/
bool idBarrel::GetPhysicsToVisualTransform( idVec3 &origin, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBarrel::GetPhysicsToVisualTransform( idVec3 &origin, idMat3 &axis )\r\n");
    return retVal;
}


/*
================
idBarrel::Spawn
================
*/
void idBarrel::Spawn( void ) {
    Sys_Printf("void idBarrel::Spawn( void )\r\n");
}


/*
================
idBarrel::ClientPredictionThink
================
*/
void idBarrel::ClientPredictionThink( void ) {
    Sys_Printf("void idBarrel::ClientPredictionThink( void )\r\n");
}



/*
===============================================================================

idExplodingBarrel

===============================================================================
*/
const idEventDef EV_Respawn( "<respawn>" );
const idEventDef EV_TriggerTargets( "<triggertargets>" );

CLASS_DECLARATION( idBarrel, idExplodingBarrel )
	EVENT( EV_Activate,					idExplodingBarrel::Event_Activate )
	EVENT( EV_Respawn,					idExplodingBarrel::Event_Respawn )
	EVENT( EV_Explode,					idExplodingBarrel::Event_Explode )
	EVENT( EV_TriggerTargets,			idExplodingBarrel::Event_TriggerTargets )
END_CLASS

/*
================
idExplodingBarrel::idExplodingBarrel
================
*/
idExplodingBarrel::idExplodingBarrel() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idExplodingBarrel::idExplodingBarrel() size %d\r\n", sizeof(*this));
#endif

	spawnOrigin.Zero();
	spawnAxis.Zero();
	state = NORMAL;
	particleModelDefHandle = -1;
	lightDefHandle = -1;
	memset( &particleRenderEntity, 0, sizeof( particleRenderEntity ) );
	memset( &light, 0, sizeof( light ) );
	particleTime = 0;
	lightTime = 0;
	time = 0.0f;
}

/*
================
idExplodingBarrel::~idExplodingBarrel
================
*/
idExplodingBarrel::~idExplodingBarrel() {
	if ( particleModelDefHandle >= 0 ){
		gameRenderWorld->FreeEntityDef( particleModelDefHandle );
	}
	if ( lightDefHandle >= 0 ) {
		gameRenderWorld->FreeLightDef( lightDefHandle );
	}
}

/*
================
idExplodingBarrel::Save
================
*/
void idExplodingBarrel::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idExplodingBarrel::Save( idSaveGame *savefile )\r\n");
}


/*
================
idExplodingBarrel::Restore
================
*/
void idExplodingBarrel::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idExplodingBarrel::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idExplodingBarrel::Spawn
================
*/
void idExplodingBarrel::Spawn( void ) {
    Sys_Printf("void idExplodingBarrel::Spawn( void )\r\n");
}


/*
================
idExplodingBarrel::Think
================
*/
void idExplodingBarrel::Think( void ) {
    Sys_Printf("void idExplodingBarrel::Think( void )\r\n");
}


/*
================
idExplodingBarrel::AddParticles
================
*/
void idExplodingBarrel::AddParticles( const char *name, bool burn ) {
    Sys_Printf("void idExplodingBarrel::AddParticles( const char *name, bool burn )\r\n");
}


/*
================
idExplodingBarrel::AddLight
================
*/
void idExplodingBarrel::AddLight( const char *name, bool burn ) {
    Sys_Printf("void idExplodingBarrel::AddLight( const char *name, bool burn )\r\n");
}


/*
================
idExplodingBarrel::ExplodingEffects
================
*/
void idExplodingBarrel::ExplodingEffects( void ) {
    Sys_Printf("void idExplodingBarrel::ExplodingEffects( void )\r\n");
}


/*
================
idExplodingBarrel::Killed
================
*/
void idExplodingBarrel::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    Sys_Printf("void idExplodingBarrel::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
}


/*
================
idExplodingBarrel::Damage
================
*/
void idExplodingBarrel::Damage( idEntity *inflictor, idEntity *attacker, const idVec3 &dir, 
					  const char *damageDefName, const float damageScale, const int location ) {
    Sys_Printf("void idExplodingBarrel::Damage( idEntity *inflictor, idEntity *attacker, const idVec3 &dir, const char *damageDefName, const float damageScale, const int location )\r\n");
}


/*
================
idExplodingBarrel::Event_TriggerTargets
================
*/
void idExplodingBarrel::Event_TriggerTargets() {
    Sys_Printf("void idExplodingBarrel::Event_TriggerTargets()\r\n");
}


/*
================
idExplodingBarrel::Event_Explode
================
*/
void idExplodingBarrel::Event_Explode() {
    Sys_Printf("void idExplodingBarrel::Event_Explode()\r\n");
}


/*
================
idExplodingBarrel::Event_Respawn
================
*/
void idExplodingBarrel::Event_Respawn() {
    Sys_Printf("void idExplodingBarrel::Event_Respawn()\r\n");
}


/*
================
idMoveable::Event_Activate
================
*/
void idExplodingBarrel::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idExplodingBarrel::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idMoveable::WriteToSnapshot
================
*/
void idExplodingBarrel::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idExplodingBarrel::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idMoveable::ReadFromSnapshot
================
*/
void idExplodingBarrel::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idExplodingBarrel::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idExplodingBarrel::ClientReceiveEvent
================
*/
bool idExplodingBarrel::ClientReceiveEvent( int event, int time, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idExplodingBarrel::ClientReceiveEvent( int event, int time, const idBitMsg &msg )\r\n");
    return retVal;
}

