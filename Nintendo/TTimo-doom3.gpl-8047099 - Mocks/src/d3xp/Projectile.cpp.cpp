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

	idProjectile

===============================================================================
*/


static const int BFG_DAMAGE_FREQUENCY			= 333;
static const float BOUNCE_SOUND_MIN_VELOCITY	= 200.0f;
static const float BOUNCE_SOUND_MAX_VELOCITY	= 400.0f;

const idEventDef EV_Explode( "<explode>", NULL );
const idEventDef EV_Fizzle( "<fizzle>", NULL );
const idEventDef EV_RadiusDamage( "<radiusdmg>", "e" );
const idEventDef EV_GetProjectileState( "getProjectileState", NULL, 'd' );

#ifdef _D3XP
const idEventDef EV_CreateProjectile( "projectileCreateProjectile", "evv" );
const idEventDef EV_LaunchProjectile( "projectileLaunchProjectile", "vvv" );
const idEventDef EV_SetGravity( "setGravity", "f" );
#endif

CLASS_DECLARATION( idEntity, idProjectile )
	EVENT( EV_Explode,				idProjectile::Event_Explode )
	EVENT( EV_Fizzle,				idProjectile::Event_Fizzle )
	EVENT( EV_Touch,				idProjectile::Event_Touch )
	EVENT( EV_RadiusDamage,			idProjectile::Event_RadiusDamage )
	EVENT( EV_GetProjectileState,	idProjectile::Event_GetProjectileState )
#ifdef _D3XP
	EVENT( EV_CreateProjectile,		idProjectile::Event_CreateProjectile )
	EVENT( EV_LaunchProjectile,		idProjectile::Event_LaunchProjectile )
	EVENT( EV_SetGravity,			idProjectile::Event_SetGravity )
#endif
END_CLASS

/*
================
idProjectile::idProjectile
================
*/
idProjectile::idProjectile( void ) {
	owner				= NULL;
	lightDefHandle		= -1;
	thrust				= 0.0f;
	thrust_end			= 0;
	smokeFly			= NULL;
	smokeFlyTime		= 0;
	state				= SPAWNED;
	lightOffset			= vec3_zero;
	lightStartTime		= 0;
	lightEndTime		= 0;
	lightColor			= vec3_zero;
	state				= SPAWNED;
	damagePower			= 1.0f;
	memset( &projectileFlags, 0, sizeof( projectileFlags ) );
	memset( &renderLight, 0, sizeof( renderLight ) );

	// note: for net_instanthit projectiles, we will force this back to false at spawn time
	fl.networkSync		= true;

	netSyncPhysics		= false;
}

/*
================
idProjectile::Spawn
================
*/
void idProjectile::Spawn( void ) {
    Sys_Printf("void idProjectile::Spawn( void )\r\n");
}


/*
================
idProjectile::Save
================
*/
void idProjectile::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idProjectile::Save( idSaveGame *savefile )\r\n");
}


/*
================
idProjectile::Restore
================
*/
void idProjectile::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idProjectile::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idProjectile::GetOwner
================
*/
idEntity *idProjectile::GetOwner( void ) const {
    Sys_Printf("idEntity *idProjectile::GetOwner( void )\r\n");
    return NULL;
}


/*
================
idProjectile::Create
================
*/
void idProjectile::Create( idEntity *owner, const idVec3 &start, const idVec3 &dir ) {
    Sys_Printf("void idProjectile::Create( idEntity *owner, const idVec3 &start, const idVec3 &dir )\r\n");
}


/*
=================
idProjectile::~idProjectile
=================
*/
idProjectile::~idProjectile() {
	StopSound( SND_CHANNEL_ANY, false );
	FreeLightDef();
}

/*
=================
idProjectile::FreeLightDef
=================
*/
void idProjectile::FreeLightDef( void ) {
    Sys_Printf("void idProjectile::FreeLightDef( void )\r\n");
}


/*
=================
idProjectile::Launch
=================
*/
void idProjectile::Launch( const idVec3 &start, const idVec3 &dir, const idVec3 &pushVelocity, const float timeSinceFire, const float launchPower, const float dmgPower ) {
    Sys_Printf("void idProjectile::Launch( const idVec3 &start, const idVec3 &dir, const idVec3 &pushVelocity, const float timeSinceFire, const float launchPower, const float dmgPower )\r\n");
}


/*
================
idProjectile::Think
================
*/
void idProjectile::Think( void ) {
    Sys_Printf("void idProjectile::Think( void )\r\n");
}


/*
=================
idProjectile::Collide
=================
*/
bool idProjectile::Collide( const trace_t &collision, const idVec3 &velocity ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idProjectile::Collide( const trace_t &collision, const idVec3 &velocity )\r\n");
    return retVal;
}


/*
=================
idProjectile::DefaultDamageEffect
=================
*/
void idProjectile::DefaultDamageEffect( idEntity *soundEnt, const idDict &projectileDef, const trace_t &collision, const idVec3 &velocity ) {
    Sys_Printf("void idProjectile::DefaultDamageEffect( idEntity *soundEnt, const idDict &projectileDef, const trace_t &collision, const idVec3 &velocity )\r\n");
}


/*
=================
idProjectile::AddDefaultDamageEffect
=================
*/
void idProjectile::AddDefaultDamageEffect( const trace_t &collision, const idVec3 &velocity ) {
    Sys_Printf("void idProjectile::AddDefaultDamageEffect( const trace_t &collision, const idVec3 &velocity )\r\n");
}


/*
================
idProjectile::Killed
================
*/
void idProjectile::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    Sys_Printf("void idProjectile::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
}


/*
================
idProjectile::Fizzle
================
*/
void idProjectile::Fizzle( void ) {
    Sys_Printf("void idProjectile::Fizzle( void )\r\n");
}


/*
================
idProjectile::Event_RadiusDamage
================
*/
void idProjectile::Event_RadiusDamage( idEntity *ignore ) {
    Sys_Printf("void idProjectile::Event_RadiusDamage( idEntity *ignore )\r\n");
}


/*
================
idProjectile::Event_RadiusDamage
================
*/
void idProjectile::Event_GetProjectileState( void ) {
    Sys_Printf("void idProjectile::Event_GetProjectileState( void )\r\n");
}


/*
================
idProjectile::Explode
================
*/
void idProjectile::Explode( const trace_t &collision, idEntity *ignore ) {
    Sys_Printf("void idProjectile::Explode( const trace_t &collision, idEntity *ignore )\r\n");
}


/*
================
idProjectile::GetVelocity
================
*/
idVec3 idProjectile::GetVelocity( const idDict *projectile ) {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idProjectile::GetVelocity( const idDict *projectile )\r\n");
    return retVal;
}


/*
================
idProjectile::GetGravity
================
*/
idVec3 idProjectile::GetGravity( const idDict *projectile ) {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idProjectile::GetGravity( const idDict *projectile )\r\n");
    return retVal;
}


/*
================
idProjectile::Event_Explode
================
*/
void idProjectile::Event_Explode( void ) {
    Sys_Printf("void idProjectile::Event_Explode( void )\r\n");
}


/*
================
idProjectile::Event_Fizzle
================
*/
void idProjectile::Event_Fizzle( void ) {
    Sys_Printf("void idProjectile::Event_Fizzle( void )\r\n");
}


/*
================
idProjectile::Event_Touch
================
*/
void idProjectile::Event_Touch( idEntity *other, trace_t *trace ) {
    Sys_Printf("void idProjectile::Event_Touch( idEntity *other, trace_t *trace )\r\n");
}


#ifdef _D3XP
/*
================
idProjectile::CatchProjectile
================
*/
void idProjectile::CatchProjectile( idEntity* o, const char* reflectName ) {
    Sys_Printf("void idProjectile::CatchProjectile( idEntity* o, const char* reflectName )\r\n");
}


/*
================
idProjectile::GetProjectileState
================
*/
int idProjectile::GetProjectileState( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idProjectile::GetProjectileState( void )\r\n");
    return retVal;
}


/*
================
idProjectile::Event_CreateProjectile
================
*/
void idProjectile::Event_CreateProjectile( idEntity *owner, const idVec3 &start, const idVec3 &dir ) {
    Sys_Printf("void idProjectile::Event_CreateProjectile( idEntity *owner, const idVec3 &start, const idVec3 &dir )\r\n");
}


/*
================
idProjectile::Event_LaunchProjectile
================
*/
void idProjectile::Event_LaunchProjectile( const idVec3 &start, const idVec3 &dir, const idVec3 &pushVelocity ) {
    Sys_Printf("void idProjectile::Event_LaunchProjectile( const idVec3 &start, const idVec3 &dir, const idVec3 &pushVelocity )\r\n");
}


/*
================
idProjectile::Event_SetGravity
================
*/
void idProjectile::Event_SetGravity( float gravity ) {
    Sys_Printf("void idProjectile::Event_SetGravity( float gravity )\r\n");
}

#endif

/*
=================
idProjectile::ClientPredictionCollide
=================
*/
bool idProjectile::ClientPredictionCollide( idEntity *soundEnt, const idDict &projectileDef, const trace_t &collision, const idVec3 &velocity, bool addDamageEffect ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idProjectile::ClientPredictionCollide( idEntity *soundEnt, const idDict &projectileDef, const trace_t &collision, const idVec3 &velocity, bool addDamageEffect )\r\n");
    return retVal;
}


/*
================
idProjectile::ClientPredictionThink
================
*/
void idProjectile::ClientPredictionThink( void ) {
    Sys_Printf("void idProjectile::ClientPredictionThink( void )\r\n");
}


/*
================
idProjectile::WriteToSnapshot
================
*/
void idProjectile::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idProjectile::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idProjectile::ReadFromSnapshot
================
*/
void idProjectile::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idProjectile::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idProjectile::ClientReceiveEvent
================
*/
bool idProjectile::ClientReceiveEvent( int event, int time, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idProjectile::ClientReceiveEvent( int event, int time, const idBitMsg &msg )\r\n");
    return retVal;
}


/*
===============================================================================

	idGuidedProjectile

===============================================================================
*/

#ifdef _D3XP
const idEventDef EV_SetEnemy( "setEnemy", "E" );
#endif

CLASS_DECLARATION( idProjectile, idGuidedProjectile )
#ifdef _D3XP
	EVENT( EV_SetEnemy,		idGuidedProjectile::Event_SetEnemy )
#endif
END_CLASS

/*
================
idGuidedProjectile::idGuidedProjectile
================
*/
idGuidedProjectile::idGuidedProjectile( void ) {
	enemy			= NULL;
	speed			= 0.0f;
	turn_max		= 0.0f;
	clamp_dist		= 0.0f;
	rndScale		= ang_zero;
	rndAng			= ang_zero;
	rndUpdateTime	= 0;
	angles			= ang_zero;
	burstMode		= false;
	burstDist		= 0;
	burstVelocity	= 0.0f;
	unGuided		= false;
}

/*
=================
idGuidedProjectile::~idGuidedProjectile
=================
*/
idGuidedProjectile::~idGuidedProjectile( void ) {
}

/*
================
idGuidedProjectile::Spawn
================
*/
void idGuidedProjectile::Spawn( void ) {
    Sys_Printf("void idGuidedProjectile::Spawn( void )\r\n");
}


/*
================
idGuidedProjectile::Save
================
*/
void idGuidedProjectile::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idGuidedProjectile::Save( idSaveGame *savefile )\r\n");
}


/*
================
idGuidedProjectile::Restore
================
*/
void idGuidedProjectile::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idGuidedProjectile::Restore( idRestoreGame *savefile )\r\n");
}



/*
================
idGuidedProjectile::GetSeekPos
================
*/
void idGuidedProjectile::GetSeekPos( idVec3 &out ) {
    Sys_Printf("void idGuidedProjectile::GetSeekPos( idVec3 &out )\r\n");
}


/*
================
idGuidedProjectile::Think
================
*/
void idGuidedProjectile::Think( void ) {
    Sys_Printf("void idGuidedProjectile::Think( void )\r\n");
}


/*
=================
idGuidedProjectile::Launch
=================
*/
void idGuidedProjectile::Launch( const idVec3 &start, const idVec3 &dir, const idVec3 &pushVelocity, const float timeSinceFire, const float launchPower, float dmgPower ) {
    Sys_Printf("void idGuidedProjectile::Launch( const idVec3 &start, const idVec3 &dir, const idVec3 &pushVelocity, const float timeSinceFire, const float launchPower, float dmgPower )\r\n");
}


#ifdef _D3XP
void idGuidedProjectile::SetEnemy( idEntity *ent ) {
    Sys_Printf("void idGuidedProjectile::SetEnemy( idEntity *ent )\r\n");
}

void idGuidedProjectile::Event_SetEnemy(idEntity *ent) {
    Sys_Printf("void idGuidedProjectile::Event_SetEnemy(idEntity *ent)\r\n");
}

#endif

/*
===============================================================================

idSoulCubeMissile

===============================================================================
*/

CLASS_DECLARATION( idGuidedProjectile, idSoulCubeMissile )
END_CLASS

/*
================
idSoulCubeMissile::Spawn( void )
================
*/
void idSoulCubeMissile::Spawn( void ) {
    Sys_Printf("void idSoulCubeMissile::Spawn( void )\r\n");
}


/*
=================
idSoulCubeMissile::~idSoulCubeMissile
=================
*/
idSoulCubeMissile::~idSoulCubeMissile() {
}

/*
================
idSoulCubeMissile::Save
================
*/
void idSoulCubeMissile::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idSoulCubeMissile::Save( idSaveGame *savefile )\r\n");
}


/*
================
idSoulCubeMissile::Restore
================
*/
void idSoulCubeMissile::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idSoulCubeMissile::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idSoulCubeMissile::KillTarget
================
*/
void idSoulCubeMissile::KillTarget( const idVec3 &dir ) {
    Sys_Printf("void idSoulCubeMissile::KillTarget( const idVec3 &dir )\r\n");
}


/*
================
idSoulCubeMissile::Think
================
*/
void idSoulCubeMissile::Think( void ) {
    Sys_Printf("void idSoulCubeMissile::Think( void )\r\n");
}


/*
================
idSoulCubeMissile::GetSeekPos
================
*/
void idSoulCubeMissile::GetSeekPos( idVec3 &out ) {
    Sys_Printf("void idSoulCubeMissile::GetSeekPos( idVec3 &out )\r\n");
}



/*
================
idSoulCubeMissile::Event_ReturnToOwner
================
*/
void idSoulCubeMissile::ReturnToOwner() {
    Sys_Printf("void idSoulCubeMissile::ReturnToOwner()\r\n");
}



/*
=================
idSoulCubeMissile::Launch
=================
*/
void idSoulCubeMissile::Launch( const idVec3 &start, const idVec3 &dir, const idVec3 &pushVelocity, const float timeSinceFire, const float launchPower, float dmgPower ) {
    Sys_Printf("void idSoulCubeMissile::Launch( const idVec3 &start, const idVec3 &dir, const idVec3 &pushVelocity, const float timeSinceFire, const float launchPower, float dmgPower )\r\n");
}



/*
===============================================================================

idBFGProjectile

===============================================================================
*/
const idEventDef EV_RemoveBeams( "<removeBeams>", NULL );

CLASS_DECLARATION( idProjectile, idBFGProjectile )
	EVENT( EV_RemoveBeams,		idBFGProjectile::Event_RemoveBeams )
END_CLASS


/*
=================
idBFGProjectile::idBFGProjectile
=================
*/
idBFGProjectile::idBFGProjectile() {
	memset( &secondModel, 0, sizeof( secondModel ) );
	secondModelDefHandle = -1;
	nextDamageTime = 0;
}

/*
=================
idBFGProjectile::~idBFGProjectile
=================
*/
idBFGProjectile::~idBFGProjectile() {
	FreeBeams();

	if ( secondModelDefHandle >= 0 ) {
		gameRenderWorld->FreeEntityDef( secondModelDefHandle );
		secondModelDefHandle = -1;
	}
}

/*
================
idBFGProjectile::Spawn
================
*/
void idBFGProjectile::Spawn( void ) {
    Sys_Printf("void idBFGProjectile::Spawn( void )\r\n");
}


/*
================
idBFGProjectile::Save
================
*/
void idBFGProjectile::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idBFGProjectile::Save( idSaveGame *savefile )\r\n");
}


/*
================
idBFGProjectile::Restore
================
*/
void idBFGProjectile::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idBFGProjectile::Restore( idRestoreGame *savefile )\r\n");
}


/*
=================
idBFGProjectile::FreeBeams
=================
*/
void idBFGProjectile::FreeBeams() {
    Sys_Printf("void idBFGProjectile::FreeBeams()\r\n");
}


/*
================
idBFGProjectile::Think
================
*/
void idBFGProjectile::Think( void ) {
    Sys_Printf("void idBFGProjectile::Think( void )\r\n");
}


/*
=================
idBFGProjectile::Launch
=================
*/
void idBFGProjectile::Launch( const idVec3 &start, const idVec3 &dir, const idVec3 &pushVelocity, const float timeSinceFire, const float power, const float dmgPower ) {
    Sys_Printf("void idBFGProjectile::Launch( const idVec3 &start, const idVec3 &dir, const idVec3 &pushVelocity, const float timeSinceFire, const float power, const float dmgPower )\r\n");
}


/*
================
idProjectile::Event_RemoveBeams
================
*/
void idBFGProjectile::Event_RemoveBeams() {
    Sys_Printf("void idBFGProjectile::Event_RemoveBeams()\r\n");
}


/*
================
idProjectile::Explode
================
*/
void idBFGProjectile::Explode( const trace_t &collision, idEntity *ignore ) {
    Sys_Printf("void idBFGProjectile::Explode( const trace_t &collision, idEntity *ignore )\r\n");
}



/*
===============================================================================

	idDebris

===============================================================================
*/

CLASS_DECLARATION( idEntity, idDebris )
EVENT( EV_Explode,			idDebris::Event_Explode )
EVENT( EV_Fizzle,			idDebris::Event_Fizzle )
END_CLASS

/*
================
idDebris::Spawn
================
*/
void idDebris::Spawn( void ) {
    Sys_Printf("void idDebris::Spawn( void )\r\n");
}


/*
================
idDebris::Create
================
*/
void idDebris::Create( idEntity *owner, const idVec3 &start, const idMat3 &axis ) {
    Sys_Printf("void idDebris::Create( idEntity *owner, const idVec3 &start, const idMat3 &axis )\r\n");
}


/*
=================
idDebris::idDebris
=================
*/
idDebris::idDebris( void ) {
	owner = NULL;
	smokeFly = NULL;
	smokeFlyTime = 0;
	sndBounce = NULL;
}

/*
=================
idDebris::~idDebris
=================
*/
idDebris::~idDebris( void ) {
}

/*
=================
idDebris::Save
=================
*/
void idDebris::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idDebris::Save( idSaveGame *savefile )\r\n");
}


/*
=================
idDebris::Restore
=================
*/
void idDebris::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idDebris::Restore( idRestoreGame *savefile )\r\n");
}


/*
=================
idDebris::Launch
=================
*/
void idDebris::Launch( void ) {
    Sys_Printf("void idDebris::Launch( void )\r\n");
}


/*
================
idDebris::Think
================
*/
void idDebris::Think( void ) {
    Sys_Printf("void idDebris::Think( void )\r\n");
}


/*
================
idDebris::Killed
================
*/
void idDebris::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    Sys_Printf("void idDebris::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
}


/*
=================
idDebris::Collide
=================
*/
bool idDebris::Collide( const trace_t &collision, const idVec3 &velocity ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDebris::Collide( const trace_t &collision, const idVec3 &velocity )\r\n");
    return retVal;
}



/*
================
idDebris::Fizzle
================
*/
void idDebris::Fizzle( void ) {
    Sys_Printf("void idDebris::Fizzle( void )\r\n");
}


/*
================
idDebris::Explode
================
*/
void idDebris::Explode( void ) {
    Sys_Printf("void idDebris::Explode( void )\r\n");
}


/*
================
idDebris::Event_Explode
================
*/
void idDebris::Event_Explode( void ) {
    Sys_Printf("void idDebris::Event_Explode( void )\r\n");
}


/*
================
idDebris::Event_Fizzle
================
*/
void idDebris::Event_Fizzle( void ) {
    Sys_Printf("void idDebris::Event_Fizzle( void )\r\n");
}

