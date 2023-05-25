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
/*

Various utility objects and functions.

*/

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "Game_local.h"

/*
===============================================================================

idSpawnableEntity

A simple, spawnable entity with a model and no functionable ability of it's own.
For example, it can be used as a placeholder during development, for marking
locations on maps for script, or for simple placed models without any behavior
that can be bound to other entities.  Should not be subclassed.
===============================================================================
*/

CLASS_DECLARATION( idEntity, idSpawnableEntity )
END_CLASS

/*
======================
idSpawnableEntity::Spawn
======================
*/
void idSpawnableEntity::Spawn() {
    Sys_Printf("void idSpawnableEntity::Spawn()\r\n");
}


/*
===============================================================================

	idPlayerStart

===============================================================================
*/

const idEventDef EV_TeleportStage( "<TeleportStage>", "e" );

CLASS_DECLARATION( idEntity, idPlayerStart )
	EVENT( EV_Activate,			idPlayerStart::Event_TeleportPlayer )
	EVENT( EV_TeleportStage,	idPlayerStart::Event_TeleportStage )
END_CLASS

/*
===============
idPlayerStart::idPlayerStart
================
*/
idPlayerStart::idPlayerStart( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idPlayerStart::idPlayerStart( void ) size %d\r\n", sizeof(*this));
#endif

	teleportStage = 0;
}

/*
===============
idPlayerStart::Spawn
================
*/
void idPlayerStart::Spawn( void ) {
    Sys_Printf("void idPlayerStart::Spawn( void )\r\n");
}


/*
================
idPlayerStart::Save
================
*/
void idPlayerStart::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idPlayerStart::Save( idSaveGame *savefile )\r\n");
}


/*
================
idPlayerStart::Restore
================
*/
void idPlayerStart::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idPlayerStart::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idPlayerStart::ClientReceiveEvent
================
*/
bool idPlayerStart::ClientReceiveEvent( int event, int time, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayerStart::ClientReceiveEvent( int event, int time, const idBitMsg &msg )\r\n");
    return retVal;
}


/*
===============
idPlayerStart::Event_TeleportStage

FIXME: add functionality to fx system ( could be done with player scripting too )
================
*/
void idPlayerStart::Event_TeleportStage( idEntity *_player ) {
    Sys_Printf("void idPlayerStart::Event_TeleportStage( idEntity *_player )\r\n");
}


/*
===============
idPlayerStart::TeleportPlayer
================
*/
void idPlayerStart::TeleportPlayer( idPlayer *player ) {
    Sys_Printf("void idPlayerStart::TeleportPlayer( idPlayer *player )\r\n");
}


/*
===============
idPlayerStart::Event_TeleportPlayer
================
*/
void idPlayerStart::Event_TeleportPlayer( idEntity *activator ) {
    Sys_Printf("void idPlayerStart::Event_TeleportPlayer( idEntity *activator )\r\n");
}


/*
===============================================================================

	idActivator

===============================================================================
*/

CLASS_DECLARATION( idEntity, idActivator )
	EVENT( EV_Activate,		idActivator::Event_Activate )
END_CLASS

/*
===============
idActivator::Save
================
*/
void idActivator::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idActivator::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idActivator::Restore
================
*/
void idActivator::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idActivator::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idActivator::Spawn
================
*/
void idActivator::Spawn( void ) {
    Sys_Printf("void idActivator::Spawn( void )\r\n");
}


/*
===============
idActivator::Think
================
*/
void idActivator::Think( void ) {
    Sys_Printf("void idActivator::Think( void )\r\n");
}


/*
===============
idActivator::Activate
================
*/
void idActivator::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idActivator::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idPathCorner

===============================================================================
*/

CLASS_DECLARATION( idEntity, idPathCorner )
	EVENT( AI_RandomPath,		idPathCorner::Event_RandomPath )
END_CLASS

/*
=====================
idPathCorner::Spawn
=====================
*/
void idPathCorner::Spawn( void ) {
    Sys_Printf("void idPathCorner::Spawn( void )\r\n");
}


/*
=====================
idPathCorner::DrawDebugInfo
=====================
*/
void idPathCorner::DrawDebugInfo( void ) {
    Sys_Printf("void idPathCorner::DrawDebugInfo( void )\r\n");
}


/*
============
idPathCorner::RandomPath
============
*/
idPathCorner *idPathCorner::RandomPath( const idEntity *source, const idEntity *ignore ) {
    Sys_Printf("idPathCorner *idPathCorner::RandomPath( const idEntity *source, const idEntity *ignore )\r\n");
    return NULL;
}


/*
=====================
idPathCorner::Event_RandomPath
=====================
*/
void idPathCorner::Event_RandomPath( void ) {
    Sys_Printf("void idPathCorner::Event_RandomPath( void )\r\n");
}


/*
===============================================================================

  idDamagable
	
===============================================================================
*/

const idEventDef EV_RestoreDamagable( "<RestoreDamagable>" );

CLASS_DECLARATION( idEntity, idDamagable )
	EVENT( EV_Activate,			idDamagable::Event_BecomeBroken )
	EVENT( EV_RestoreDamagable,	idDamagable::Event_RestoreDamagable )
END_CLASS

/*
================
idDamagable::idDamagable
================
*/
idDamagable::idDamagable( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idDamagable::idDamagable( void ) size %d\r\n", sizeof(*this));
#endif

	count = 0;
	nextTriggerTime = 0;
}

/*
================
idDamagable::Save
================
*/
void idDamagable::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idDamagable::Save( idSaveGame *savefile )\r\n");
}


/*
================
idDamagable::Restore
================
*/
void idDamagable::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idDamagable::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idDamagable::Spawn
================
*/
void idDamagable::Spawn( void ) {
    Sys_Printf("void idDamagable::Spawn( void )\r\n");
}


/*
================
idDamagable::BecomeBroken
================
*/
void idDamagable::BecomeBroken( idEntity *activator ) {
    Sys_Printf("void idDamagable::BecomeBroken( idEntity *activator )\r\n");
}


/*
================
idDamagable::Killed
================
*/
void idDamagable::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    Sys_Printf("void idDamagable::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
}


/*
================
idDamagable::Event_BecomeBroken
================
*/
void idDamagable::Event_BecomeBroken( idEntity *activator ) {
    Sys_Printf("void idDamagable::Event_BecomeBroken( idEntity *activator )\r\n");
}


/*
================
idDamagable::Event_RestoreDamagable
================
*/
void idDamagable::Event_RestoreDamagable( void ) {
    Sys_Printf("void idDamagable::Event_RestoreDamagable( void )\r\n");
}



/*
===============================================================================

  idExplodable
	
===============================================================================
*/

CLASS_DECLARATION( idEntity, idExplodable )
	EVENT( EV_Activate,	idExplodable::Event_Explode )
END_CLASS

/*
================
idExplodable::Spawn
================
*/
void idExplodable::Spawn( void ) {
    Sys_Printf("void idExplodable::Spawn( void )\r\n");
}


/*
================
idExplodable::Event_Explode
================
*/
void idExplodable::Event_Explode( idEntity *activator ) {
    Sys_Printf("void idExplodable::Event_Explode( idEntity *activator )\r\n");
}



/*
===============================================================================

  idSpring
	
===============================================================================
*/

CLASS_DECLARATION( idEntity, idSpring )
	EVENT( EV_PostSpawn,	idSpring::Event_LinkSpring )
END_CLASS

/*
================
idSpring::Think
================
*/
void idSpring::Think( void ) {
    Sys_Printf("void idSpring::Think( void )\r\n");
}


/*
================
idSpring::Event_LinkSpring
================
*/
void idSpring::Event_LinkSpring( void ) {
    Sys_Printf("void idSpring::Event_LinkSpring( void )\r\n");
}


/*
================
idSpring::Spawn
================
*/
void idSpring::Spawn( void ) {
    Sys_Printf("void idSpring::Spawn( void )\r\n");
}


/*
===============================================================================

  idForceField
	
===============================================================================
*/

const idEventDef EV_Toggle( "Toggle", NULL );

CLASS_DECLARATION( idEntity, idForceField )
	EVENT( EV_Activate,		idForceField::Event_Activate )
	EVENT( EV_Toggle,		idForceField::Event_Toggle )
	EVENT( EV_FindTargets,	idForceField::Event_FindTargets )
END_CLASS

/*
===============
idForceField::Toggle
================
*/
void idForceField::Toggle( void ) {
    Sys_Printf("void idForceField::Toggle( void )\r\n");
}


/*
================
idForceField::Think
================
*/
void idForceField::Think( void ) {
    Sys_Printf("void idForceField::Think( void )\r\n");
}


/*
================
idForceField::Save
================
*/
void idForceField::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idForceField::Save( idSaveGame *savefile )\r\n");
}


/*
================
idForceField::Restore
================
*/
void idForceField::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idForceField::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idForceField::Spawn
================
*/
void idForceField::Spawn( void ) {
    Sys_Printf("void idForceField::Spawn( void )\r\n");
}


/*
===============
idForceField::Event_Toggle
================
*/
void idForceField::Event_Toggle( void ) {
    Sys_Printf("void idForceField::Event_Toggle( void )\r\n");
}


/*
================
idForceField::Event_Activate
================
*/
void idForceField::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idForceField::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idForceField::Event_FindTargets
================
*/
void idForceField::Event_FindTargets( void ) {
    Sys_Printf("void idForceField::Event_FindTargets( void )\r\n");
}



/*
===============================================================================

	idAnimated

===============================================================================
*/

const idEventDef EV_Animated_Start( "<start>" );
const idEventDef EV_LaunchMissiles( "launchMissiles", "ssssdf" );
const idEventDef EV_LaunchMissilesUpdate( "<launchMissiles>", "dddd" );
const idEventDef EV_AnimDone( "<AnimDone>", "d" );
const idEventDef EV_StartRagdoll( "startRagdoll" );

CLASS_DECLARATION( idAFEntity_Gibbable, idAnimated )
	EVENT( EV_Activate,				idAnimated::Event_Activate )
	EVENT( EV_Animated_Start,		idAnimated::Event_Start )
	EVENT( EV_StartRagdoll,			idAnimated::Event_StartRagdoll )
	EVENT( EV_AnimDone,				idAnimated::Event_AnimDone )
	EVENT( EV_Footstep,				idAnimated::Event_Footstep )
	EVENT( EV_FootstepLeft,			idAnimated::Event_Footstep )
	EVENT( EV_FootstepRight,		idAnimated::Event_Footstep )
	EVENT( EV_LaunchMissiles,		idAnimated::Event_LaunchMissiles )
	EVENT( EV_LaunchMissilesUpdate,	idAnimated::Event_LaunchMissilesUpdate )
END_CLASS

/*
===============
idAnimated::idAnimated
================
*/
idAnimated::idAnimated() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idAnimated::idAnimated() size %d\r\n", sizeof(*this));
#endif

	anim = 0;
	blendFrames = 0;
	soundJoint = INVALID_JOINT;
	activated = false;
	combatModel = NULL;
	activator = NULL;
	current_anim_index = 0;
	num_anims = 0;

}

/*
===============
idAnimated::idAnimated
================
*/
idAnimated::~idAnimated() {
	delete combatModel;
	combatModel = NULL;
}

/*
===============
idAnimated::Save
================
*/
void idAnimated::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idAnimated::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idAnimated::Restore
================
*/
void idAnimated::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idAnimated::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idAnimated::Spawn
================
*/
void idAnimated::Spawn( void ) {
    Sys_Printf("void idAnimated::Spawn( void )\r\n");
}


/*
===============
idAnimated::LoadAF
===============
*/
bool idAnimated::LoadAF( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimated::LoadAF( void )\r\n");
    return retVal;
}


/*
===============
idAnimated::GetPhysicsToSoundTransform
===============
*/
bool idAnimated::GetPhysicsToSoundTransform( idVec3 &origin, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimated::GetPhysicsToSoundTransform( idVec3 &origin, idMat3 &axis )\r\n");
    return retVal;
}


/*
================
idAnimated::StartRagdoll
================
*/
bool idAnimated::StartRagdoll( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimated::StartRagdoll( void )\r\n");
    return retVal;
}


/*
=====================
idAnimated::PlayNextAnim
=====================
*/
void idAnimated::PlayNextAnim( void ) {
    Sys_Printf("void idAnimated::PlayNextAnim( void )\r\n");
}


/*
===============
idAnimated::Event_StartRagdoll
================
*/
void idAnimated::Event_StartRagdoll( void ) {
    Sys_Printf("void idAnimated::Event_StartRagdoll( void )\r\n");
}


/*
===============
idAnimated::Event_AnimDone
================
*/
void idAnimated::Event_AnimDone( int animindex ) {
    Sys_Printf("void idAnimated::Event_AnimDone( int animindex )\r\n");
}


/*
===============
idAnimated::Event_Activate
================
*/
void idAnimated::Event_Activate( idEntity *_activator ) {
    Sys_Printf("void idAnimated::Event_Activate( idEntity *_activator )\r\n");
}


/*
===============
idAnimated::Event_Start
================
*/
void idAnimated::Event_Start( void ) {
    Sys_Printf("void idAnimated::Event_Start( void )\r\n");
}


/*
===============
idAnimated::Event_Footstep
===============
*/
void idAnimated::Event_Footstep( void ) {
    Sys_Printf("void idAnimated::Event_Footstep( void )\r\n");
}


/*
=====================
idAnimated::Event_LaunchMissilesUpdate
=====================
*/
void idAnimated::Event_LaunchMissilesUpdate( int launchjoint, int targetjoint, int numshots, int framedelay ) {
    Sys_Printf("void idAnimated::Event_LaunchMissilesUpdate( int launchjoint, int targetjoint, int numshots, int framedelay )\r\n");
}


/*
=====================
idAnimated::Event_LaunchMissiles
=====================
*/
void idAnimated::Event_LaunchMissiles( const char *projectilename, const char *sound, const char *launchjoint, const char *targetjoint, int numshots, int framedelay ) {
    Sys_Printf("void idAnimated::Event_LaunchMissiles( const char *projectilename, const char *sound, const char *launchjoint, const char *targetjoint, int numshots, int framedelay )\r\n");
}



/*
===============================================================================

	idStaticEntity

	Some static entities may be optimized into inline geometry by dmap

===============================================================================
*/

CLASS_DECLARATION( idEntity, idStaticEntity )
	EVENT( EV_Activate,				idStaticEntity::Event_Activate )
END_CLASS

/*
===============
idStaticEntity::idStaticEntity
===============
*/
idStaticEntity::idStaticEntity( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idStaticEntity::idStaticEntity( void ) size %d\r\n", sizeof(*this));
#endif

	spawnTime = 0;
	active = false;
	fadeFrom.Set( 1, 1, 1, 1 );
	fadeTo.Set( 1, 1, 1, 1 );
	fadeStart = 0;
	fadeEnd	= 0;
	runGui = false;
}

/*
===============
idStaticEntity::Save
===============
*/
void idStaticEntity::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idStaticEntity::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idStaticEntity::Restore
===============
*/
void idStaticEntity::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idStaticEntity::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idStaticEntity::Spawn
===============
*/
void idStaticEntity::Spawn( void ) {
    Sys_Printf("void idStaticEntity::Spawn( void )\r\n");
}


/*
================
idStaticEntity::ShowEditingDialog
================
*/
void idStaticEntity::ShowEditingDialog( void ) {
    Sys_Printf("void idStaticEntity::ShowEditingDialog( void )\r\n");
}

/*
================
idStaticEntity::Think
================
*/
void idStaticEntity::Think( void ) {
    Sys_Printf("void idStaticEntity::Think( void )\r\n");
}


/*
================
idStaticEntity::Fade
================
*/
void idStaticEntity::Fade( const idVec4 &to, float fadeTime ) {
    Sys_Printf("void idStaticEntity::Fade( const idVec4 &to, float fadeTime )\r\n");
}


/*
================
idStaticEntity::Hide
================
*/
void idStaticEntity::Hide( void ) {
    Sys_Printf("void idStaticEntity::Hide( void )\r\n");
}


/*
================
idStaticEntity::Show
================
*/
void idStaticEntity::Show( void ) {
    Sys_Printf("void idStaticEntity::Show( void )\r\n");
}


/*
================
idStaticEntity::Event_Activate
================
*/
void idStaticEntity::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idStaticEntity::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idStaticEntity::WriteToSnapshot
================
*/
void idStaticEntity::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idStaticEntity::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idStaticEntity::ReadFromSnapshot
================
*/
void idStaticEntity::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idStaticEntity::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}



/*
===============================================================================

idFuncEmitter

===============================================================================
*/


CLASS_DECLARATION( idStaticEntity, idFuncEmitter )
EVENT( EV_Activate,				idFuncEmitter::Event_Activate )
END_CLASS

/*
===============
idFuncEmitter::idFuncEmitter
===============
*/
idFuncEmitter::idFuncEmitter( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idFuncEmitter::idFuncEmitter( void ) size %d\r\n", sizeof(*this));
#endif

	hidden = false;
}

/*
===============
idFuncEmitter::Spawn
===============
*/
void idFuncEmitter::Spawn( void ) {
    Sys_Printf("void idFuncEmitter::Spawn( void )\r\n");
}


/*
===============
idFuncEmitter::Save
===============
*/
void idFuncEmitter::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idFuncEmitter::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idFuncEmitter::Restore
===============
*/
void idFuncEmitter::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idFuncEmitter::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idFuncEmitter::Event_Activate
================
*/
void idFuncEmitter::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idFuncEmitter::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idFuncEmitter::WriteToSnapshot
================
*/
void idFuncEmitter::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idFuncEmitter::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idFuncEmitter::ReadFromSnapshot
================
*/
void idFuncEmitter::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idFuncEmitter::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}



/*
===============================================================================

idFuncSplat

===============================================================================
*/


const idEventDef EV_Splat( "<Splat>" );
CLASS_DECLARATION( idFuncEmitter, idFuncSplat )
EVENT( EV_Activate,		idFuncSplat::Event_Activate )
EVENT( EV_Splat,		idFuncSplat::Event_Splat )
END_CLASS

/*
===============
idFuncSplat::idFuncSplat
===============
*/
idFuncSplat::idFuncSplat( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idFuncSplat::idFuncSplat( void ) size %d\r\n", sizeof(*this));
#endif

}

/*
===============
idFuncSplat::Spawn
===============
*/
void idFuncSplat::Spawn( void ) {
    Sys_Printf("void idFuncSplat::Spawn( void )\r\n");
}


/*
================
idFuncSplat::Event_Splat
================
*/
void idFuncSplat::Event_Splat( void ) {
    Sys_Printf("void idFuncSplat::Event_Splat( void )\r\n");
}


/*
================
idFuncSplat::Event_Activate
================
*/
void idFuncSplat::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idFuncSplat::Event_Activate( idEntity *activator )\r\n");
}


/*
===============================================================================

idFuncSmoke

===============================================================================
*/

CLASS_DECLARATION( idEntity, idFuncSmoke )
EVENT( EV_Activate,				idFuncSmoke::Event_Activate )
END_CLASS

/*
===============
idFuncSmoke::idFuncSmoke
===============
*/
idFuncSmoke::idFuncSmoke() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idFuncSmoke::idFuncSmoke() size %d\r\n", sizeof(*this));
#endif

	smokeTime = 0;
	smoke = NULL;
	restart = false;
}

/*
===============
idFuncSmoke::Save
===============
*/
void idFuncSmoke::Save(	idSaveGame *savefile ) const {
    Sys_Printf("void idFuncSmoke::Save(idSaveGame *savefile )\r\n");
}


/*
===============
idFuncSmoke::Restore
===============
*/
void idFuncSmoke::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idFuncSmoke::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idFuncSmoke::Spawn
===============
*/
void idFuncSmoke::Spawn( void ) {
    Sys_Printf("void idFuncSmoke::Spawn( void )\r\n");
}


/*
================
idFuncSmoke::Event_Activate
================
*/
void idFuncSmoke::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idFuncSmoke::Event_Activate( idEntity *activator )\r\n");
}


/*
===============
idFuncSmoke::Think
================
*/
void idFuncSmoke::Think( void ) {
    Sys_Printf("void idFuncSmoke::Think( void )\r\n");
}



/*
===============================================================================

	idTextEntity

===============================================================================
*/

CLASS_DECLARATION( idEntity, idTextEntity )
END_CLASS

/*
================
idTextEntity::Spawn
================
*/
void idTextEntity::Spawn( void ) {
    Sys_Printf("void idTextEntity::Spawn( void )\r\n");
}


/*
================
idTextEntity::Save
================
*/
void idTextEntity::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idTextEntity::Save( idSaveGame *savefile )\r\n");
}


/*
================
idTextEntity::Restore
================
*/
void idTextEntity::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idTextEntity::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idTextEntity::Think
================
*/
void idTextEntity::Think( void ) {
    Sys_Printf("void idTextEntity::Think( void )\r\n");
}



/*
===============================================================================

	idVacuumSeperatorEntity

	Can be triggered to let vacuum through a portal (blown out window)

===============================================================================
*/

CLASS_DECLARATION( idEntity, idVacuumSeparatorEntity )
	EVENT( EV_Activate,		idVacuumSeparatorEntity::Event_Activate )
END_CLASS


/*
================
idVacuumSeparatorEntity::idVacuumSeparatorEntity
================
*/
idVacuumSeparatorEntity::idVacuumSeparatorEntity( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idVacuumSeparatorEntity::idVacuumSeparatorEntity( void ) size %d\r\n", sizeof(*this));
#endif

	portal = 0;
}

/*
================
idVacuumSeparatorEntity::Save
================
*/
void idVacuumSeparatorEntity::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idVacuumSeparatorEntity::Save( idSaveGame *savefile )\r\n");
}


/*
================
idVacuumSeparatorEntity::Restore
================
*/
void idVacuumSeparatorEntity::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idVacuumSeparatorEntity::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idVacuumSeparatorEntity::Spawn
================
*/
void idVacuumSeparatorEntity::Spawn() {
    Sys_Printf("void idVacuumSeparatorEntity::Spawn()\r\n");
}


/*
================
idVacuumSeparatorEntity::Event_Activate
================
*/
void idVacuumSeparatorEntity::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idVacuumSeparatorEntity::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idLocationSeparatorEntity

===============================================================================
*/

CLASS_DECLARATION( idEntity, idLocationSeparatorEntity )
END_CLASS

/*
================
idLocationSeparatorEntity::Spawn
================
*/
void idLocationSeparatorEntity::Spawn() {
    Sys_Printf("void idLocationSeparatorEntity::Spawn()\r\n");
}



/*
===============================================================================

	idVacuumEntity

	Levels should only have a single vacuum entity.

===============================================================================
*/

CLASS_DECLARATION( idEntity, idVacuumEntity )
END_CLASS

/*
================
idVacuumEntity::Spawn
================
*/
void idVacuumEntity::Spawn() {
    Sys_Printf("void idVacuumEntity::Spawn()\r\n");
}



/*
===============================================================================

idLocationEntity

===============================================================================
*/

CLASS_DECLARATION( idEntity, idLocationEntity )
END_CLASS

/*
======================
idLocationEntity::Spawn
======================
*/
void idLocationEntity::Spawn() {
    Sys_Printf("void idLocationEntity::Spawn()\r\n");
}


/*
======================
idLocationEntity::GetLocation
======================
*/
const char *idLocationEntity::GetLocation( void ) const {
    Sys_Printf("char *idLocationEntity::GetLocation( void )\r\n");
    return NULL;
}


/*
===============================================================================

	idBeam

===============================================================================
*/

CLASS_DECLARATION( idEntity, idBeam )
	EVENT( EV_PostSpawn,			idBeam::Event_MatchTarget )
	EVENT( EV_Activate,				idBeam::Event_Activate )
END_CLASS

/*
===============
idBeam::idBeam
===============
*/
idBeam::idBeam() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idBeam::idBeam() size %d\r\n", sizeof(*this));
#endif

	target = NULL;
	master = NULL;
}

/*
===============
idBeam::Save
===============
*/
void idBeam::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idBeam::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idBeam::Restore
===============
*/
void idBeam::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idBeam::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idBeam::Spawn
===============
*/
void idBeam::Spawn( void ) {
    Sys_Printf("void idBeam::Spawn( void )\r\n");
}


/*
================
idBeam::Think
================
*/
void idBeam::Think( void ) {
    Sys_Printf("void idBeam::Think( void )\r\n");
}


/*
================
idBeam::SetMaster
================
*/
void idBeam::SetMaster( idBeam *masterbeam ) {
    Sys_Printf("void idBeam::SetMaster( idBeam *masterbeam )\r\n");
}


/*
================
idBeam::SetBeamTarget
================
*/
void idBeam::SetBeamTarget( const idVec3 &origin ) {
    Sys_Printf("void idBeam::SetBeamTarget( const idVec3 &origin )\r\n");
}


/*
================
idBeam::Show
================
*/
void idBeam::Show( void ) {
    Sys_Printf("void idBeam::Show( void )\r\n");
}


/*
================
idBeam::Event_MatchTarget
================
*/
void idBeam::Event_MatchTarget( void ) {
    Sys_Printf("void idBeam::Event_MatchTarget( void )\r\n");
}


/*
================
idBeam::Event_Activate
================
*/
void idBeam::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idBeam::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idBeam::WriteToSnapshot
================
*/
void idBeam::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idBeam::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idBeam::ReadFromSnapshot
================
*/
void idBeam::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idBeam::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}



/*
===============================================================================

	idLiquid

===============================================================================
*/

CLASS_DECLARATION( idEntity, idLiquid )
	EVENT( EV_Touch,			idLiquid::Event_Touch )
END_CLASS

/*
================
idLiquid::Save
================
*/
void idLiquid::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idLiquid::Save( idSaveGame *savefile )\r\n");
}


/*
================
idLiquid::Restore
================
*/
void idLiquid::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idLiquid::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idLiquid::Spawn
================
*/
void idLiquid::Spawn() {
    Sys_Printf("void idLiquid::Spawn()\r\n");
}


/*
================
idLiquid::Event_Touch
================
*/
void idLiquid::Event_Touch( idEntity *other, trace_t *trace ) {
    Sys_Printf("void idLiquid::Event_Touch( idEntity *other, trace_t *trace )\r\n");
}



/*
===============================================================================

	idShaking

===============================================================================
*/

CLASS_DECLARATION( idEntity, idShaking )
	EVENT( EV_Activate,				idShaking::Event_Activate )
END_CLASS

/*
===============
idShaking::idShaking
===============
*/
idShaking::idShaking() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idShaking::idShaking() size %d\r\n", sizeof(*this));
#endif

	active = false;
}

/*
===============
idShaking::Save
===============
*/
void idShaking::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idShaking::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idShaking::Restore
===============
*/
void idShaking::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idShaking::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idShaking::Spawn
===============
*/
void idShaking::Spawn( void ) {
    Sys_Printf("void idShaking::Spawn( void )\r\n");
}


/*
================
idShaking::BeginShaking
================
*/
void idShaking::BeginShaking( void ) {
    Sys_Printf("void idShaking::BeginShaking( void )\r\n");
}


/*
================
idShaking::Event_Activate
================
*/
void idShaking::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idShaking::Event_Activate( idEntity *activator )\r\n");
}


/*
===============================================================================

	idEarthQuake

===============================================================================
*/

CLASS_DECLARATION( idEntity, idEarthQuake )
	EVENT( EV_Activate,				idEarthQuake::Event_Activate )
END_CLASS

/*
===============
idEarthQuake::idEarthQuake
===============
*/
idEarthQuake::idEarthQuake() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idEarthQuake::idEarthQuake() size %d\r\n", sizeof(*this));
#endif

	wait = 0.0f;
	random = 0.0f;
	nextTriggerTime = 0;
	shakeStopTime = 0;
	triggered = false;
	playerOriented = false;
	disabled = false;
	shakeTime = 0.0f;
}

/*
===============
idEarthQuake::Save
===============
*/
void idEarthQuake::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idEarthQuake::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idEarthQuake::Restore
===============
*/
void idEarthQuake::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idEarthQuake::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idEarthQuake::Spawn
===============
*/
void idEarthQuake::Spawn( void ) {
    Sys_Printf("void idEarthQuake::Spawn( void )\r\n");
}


/*
================
idEarthQuake::Event_Activate
================
*/
void idEarthQuake::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idEarthQuake::Event_Activate( idEntity *activator )\r\n");
}



/*
===============
idEarthQuake::Think
================
*/
void idEarthQuake::Think( void ) {
    Sys_Printf("void idEarthQuake::Think( void )\r\n");
}


/*
===============================================================================

	idFuncPortal

===============================================================================
*/

CLASS_DECLARATION( idEntity, idFuncPortal )
	EVENT( EV_Activate,				idFuncPortal::Event_Activate )
END_CLASS

/*
===============
idFuncPortal::idFuncPortal
===============
*/
idFuncPortal::idFuncPortal() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idFuncPortal::idFuncPortal() size %d\r\n", sizeof(*this));
#endif

	portal = 0;
	state = false;
}

/*
===============
idFuncPortal::Save
===============
*/
void idFuncPortal::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idFuncPortal::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idFuncPortal::Restore
===============
*/
void idFuncPortal::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idFuncPortal::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idFuncPortal::Spawn
===============
*/
void idFuncPortal::Spawn( void ) {
    Sys_Printf("void idFuncPortal::Spawn( void )\r\n");
}


/*
================
idFuncPortal::Event_Activate
================
*/
void idFuncPortal::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idFuncPortal::Event_Activate( idEntity *activator )\r\n");
}


/*
===============================================================================

	idFuncAASPortal

===============================================================================
*/

CLASS_DECLARATION( idEntity, idFuncAASPortal )
	EVENT( EV_Activate,				idFuncAASPortal::Event_Activate )
END_CLASS

/*
===============
idFuncAASPortal::idFuncAASPortal
===============
*/
idFuncAASPortal::idFuncAASPortal() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idFuncAASPortal::idFuncAASPortal() size %d\r\n", sizeof(*this));
#endif

	state = false;
}

/*
===============
idFuncAASPortal::Save
===============
*/
void idFuncAASPortal::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idFuncAASPortal::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idFuncAASPortal::Restore
===============
*/
void idFuncAASPortal::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idFuncAASPortal::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idFuncAASPortal::Spawn
===============
*/
void idFuncAASPortal::Spawn( void ) {
    Sys_Printf("void idFuncAASPortal::Spawn( void )\r\n");
}


/*
================
idFuncAASPortal::Event_Activate
================
*/
void idFuncAASPortal::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idFuncAASPortal::Event_Activate( idEntity *activator )\r\n");
}


/*
===============================================================================

	idFuncAASObstacle

===============================================================================
*/

CLASS_DECLARATION( idEntity, idFuncAASObstacle )
	EVENT( EV_Activate,				idFuncAASObstacle::Event_Activate )
END_CLASS

/*
===============
idFuncAASObstacle::idFuncAASObstacle
===============
*/
idFuncAASObstacle::idFuncAASObstacle() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idFuncAASObstacle::idFuncAASObstacle() size %d\r\n", sizeof(*this));
#endif

	state = false;
}

/*
===============
idFuncAASObstacle::Save
===============
*/
void idFuncAASObstacle::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idFuncAASObstacle::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idFuncAASObstacle::Restore
===============
*/
void idFuncAASObstacle::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idFuncAASObstacle::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idFuncAASObstacle::Spawn
===============
*/
void idFuncAASObstacle::Spawn( void ) {
    Sys_Printf("void idFuncAASObstacle::Spawn( void )\r\n");
}


/*
================
idFuncAASObstacle::Event_Activate
================
*/
void idFuncAASObstacle::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idFuncAASObstacle::Event_Activate( idEntity *activator )\r\n");
}




/*
===============================================================================

idFuncRadioChatter

===============================================================================
*/

const idEventDef EV_ResetRadioHud( "<resetradiohud>", "e" );


CLASS_DECLARATION( idEntity, idFuncRadioChatter )
EVENT( EV_Activate,				idFuncRadioChatter::Event_Activate )
EVENT( EV_ResetRadioHud,		idFuncRadioChatter::Event_ResetRadioHud )
END_CLASS

/*
===============
idFuncRadioChatter::idFuncRadioChatter
===============
*/
idFuncRadioChatter::idFuncRadioChatter() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idFuncRadioChatter::idFuncRadioChatter() size %d\r\n", sizeof(*this));
#endif

	time = 0.0;
}

/*
===============
idFuncRadioChatter::Save
===============
*/
void idFuncRadioChatter::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idFuncRadioChatter::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idFuncRadioChatter::Restore
===============
*/
void idFuncRadioChatter::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idFuncRadioChatter::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idFuncRadioChatter::Spawn
===============
*/
void idFuncRadioChatter::Spawn( void ) {
    Sys_Printf("void idFuncRadioChatter::Spawn( void )\r\n");
}


/*
================
idFuncRadioChatter::Event_Activate
================
*/
void idFuncRadioChatter::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idFuncRadioChatter::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idFuncRadioChatter::Event_ResetRadioHud
================
*/
void idFuncRadioChatter::Event_ResetRadioHud( idEntity *activator ) {
    Sys_Printf("void idFuncRadioChatter::Event_ResetRadioHud( idEntity *activator )\r\n");
}



/*
===============================================================================

	idPhantomObjects

===============================================================================
*/

CLASS_DECLARATION( idEntity, idPhantomObjects )
	EVENT( EV_Activate,				idPhantomObjects::Event_Activate )
END_CLASS

/*
===============
idPhantomObjects::idPhantomObjects
===============
*/
idPhantomObjects::idPhantomObjects() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idPhantomObjects::idPhantomObjects() size %d\r\n", sizeof(*this));
#endif

	target			= NULL;
	end_time		= 0;
	throw_time 		= 0.0f;
	shake_time 		= 0.0f;
	shake_ang.Zero();
	speed			= 0.0f;
	min_wait		= 0;
	max_wait		= 0;
	fl.neverDormant	= false;
}

/*
===============
idPhantomObjects::Save
===============
*/
void idPhantomObjects::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idPhantomObjects::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idPhantomObjects::Restore
===============
*/
void idPhantomObjects::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idPhantomObjects::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idPhantomObjects::Spawn
===============
*/
void idPhantomObjects::Spawn( void ) {
    Sys_Printf("void idPhantomObjects::Spawn( void )\r\n");
}


/*
================
idPhantomObjects::Event_Activate
================
*/
void idPhantomObjects::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idPhantomObjects::Event_Activate( idEntity *activator )\r\n");
}


/*
===============
idPhantomObjects::Think
================
*/
void idPhantomObjects::Think( void ) {
    Sys_Printf("void idPhantomObjects::Think( void )\r\n");
}

