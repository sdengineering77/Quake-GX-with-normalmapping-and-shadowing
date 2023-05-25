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

// _D3XP : rename all gameLocal.time to gameLocal.slow.time for merge!

// a mover will update any gui entities in it's target list with 
// a key/val pair of "mover" "state" from below.. guis can represent
// realtime info like this
// binary only
static const char *guiBinaryMoverStates[] = {
	"1",	// pos 1
	"2",	// pos 2
	"3",	// moving 1 to 2
	"4"		// moving 2 to 1
};


/*
===============================================================================

idMover

===============================================================================
*/

const idEventDef EV_FindGuiTargets( "<FindGuiTargets>", NULL );
const idEventDef EV_TeamBlocked( "<teamblocked>", "ee" );
const idEventDef EV_PartBlocked( "<partblocked>", "e" );
const idEventDef EV_ReachedPos( "<reachedpos>", NULL );
const idEventDef EV_ReachedAng( "<reachedang>", NULL );
const idEventDef EV_PostRestore( "<postrestore>", "ddddd" );
const idEventDef EV_StopMoving( "stopMoving", NULL );
const idEventDef EV_StopRotating( "stopRotating", NULL );
const idEventDef EV_Speed( "speed", "f" );
const idEventDef EV_Time( "time", "f" );
const idEventDef EV_AccelTime( "accelTime", "f" );
const idEventDef EV_DecelTime( "decelTime", "f" );
const idEventDef EV_MoveTo( "moveTo", "e" );
const idEventDef EV_MoveToPos( "moveToPos", "v" );
const idEventDef EV_Move( "move", "ff" );
const idEventDef EV_MoveAccelerateTo( "accelTo", "ff" );
const idEventDef EV_MoveDecelerateTo( "decelTo", "ff" );
const idEventDef EV_RotateDownTo( "rotateDownTo", "df" );
const idEventDef EV_RotateUpTo( "rotateUpTo", "df" );
const idEventDef EV_RotateTo( "rotateTo", "v" );
const idEventDef EV_Rotate( "rotate", "v" );
const idEventDef EV_RotateOnce( "rotateOnce", "v" );
const idEventDef EV_Bob( "bob", "ffv" );
const idEventDef EV_Sway( "sway", "ffv" );
const idEventDef EV_Mover_OpenPortal( "openPortal" );
const idEventDef EV_Mover_ClosePortal( "closePortal" );
const idEventDef EV_AccelSound( "accelSound", "s" );
const idEventDef EV_DecelSound( "decelSound", "s" );
const idEventDef EV_MoveSound( "moveSound", "s" );
const idEventDef EV_Mover_InitGuiTargets( "<initguitargets>", NULL );
const idEventDef EV_EnableSplineAngles( "enableSplineAngles", NULL );
const idEventDef EV_DisableSplineAngles( "disableSplineAngles", NULL );
const idEventDef EV_RemoveInitialSplineAngles( "removeInitialSplineAngles", NULL );
const idEventDef EV_StartSpline( "startSpline", "e" );
const idEventDef EV_StopSpline( "stopSpline", NULL );
const idEventDef EV_IsMoving( "isMoving", NULL, 'd' );
const idEventDef EV_IsRotating( "isRotating", NULL, 'd' );

CLASS_DECLARATION( idEntity, idMover )
	EVENT( EV_FindGuiTargets,		idMover::Event_FindGuiTargets )
	EVENT( EV_Thread_SetCallback,	idMover::Event_SetCallback )
	EVENT( EV_TeamBlocked,			idMover::Event_TeamBlocked )
	EVENT( EV_PartBlocked,			idMover::Event_PartBlocked )
	EVENT( EV_ReachedPos,			idMover::Event_UpdateMove )
	EVENT( EV_ReachedAng,			idMover::Event_UpdateRotation )
	EVENT( EV_PostRestore,			idMover::Event_PostRestore )
	EVENT( EV_StopMoving,			idMover::Event_StopMoving )
	EVENT( EV_StopRotating,			idMover::Event_StopRotating )
	EVENT( EV_Speed,				idMover::Event_SetMoveSpeed )
	EVENT( EV_Time,					idMover::Event_SetMoveTime )
	EVENT( EV_AccelTime,			idMover::Event_SetAccellerationTime )
	EVENT( EV_DecelTime,			idMover::Event_SetDecelerationTime )
	EVENT( EV_MoveTo,				idMover::Event_MoveTo )
	EVENT( EV_MoveToPos,			idMover::Event_MoveToPos )
	EVENT( EV_Move,					idMover::Event_MoveDir )
	EVENT( EV_MoveAccelerateTo,		idMover::Event_MoveAccelerateTo )
	EVENT( EV_MoveDecelerateTo,		idMover::Event_MoveDecelerateTo )
	EVENT( EV_RotateDownTo,			idMover::Event_RotateDownTo )
	EVENT( EV_RotateUpTo,			idMover::Event_RotateUpTo )
	EVENT( EV_RotateTo,				idMover::Event_RotateTo )
	EVENT( EV_Rotate,				idMover::Event_Rotate )
	EVENT( EV_RotateOnce,			idMover::Event_RotateOnce )
	EVENT( EV_Bob,					idMover::Event_Bob )
	EVENT( EV_Sway,					idMover::Event_Sway )
	EVENT( EV_Mover_OpenPortal,		idMover::Event_OpenPortal )
	EVENT( EV_Mover_ClosePortal,	idMover::Event_ClosePortal )
	EVENT( EV_AccelSound,			idMover::Event_SetAccelSound )
	EVENT( EV_DecelSound,			idMover::Event_SetDecelSound )
	EVENT( EV_MoveSound,			idMover::Event_SetMoveSound )
	EVENT( EV_Mover_InitGuiTargets,	idMover::Event_InitGuiTargets )
	EVENT( EV_EnableSplineAngles,	idMover::Event_EnableSplineAngles )
	EVENT( EV_DisableSplineAngles,	idMover::Event_DisableSplineAngles )
	EVENT( EV_RemoveInitialSplineAngles, idMover::Event_RemoveInitialSplineAngles )
	EVENT( EV_StartSpline,			idMover::Event_StartSpline )
	EVENT( EV_StopSpline,			idMover::Event_StopSpline )
	EVENT( EV_Activate,				idMover::Event_Activate )
	EVENT( EV_IsMoving,				idMover::Event_IsMoving )
	EVENT( EV_IsRotating,			idMover::Event_IsRotating )
END_CLASS

/*
================
idMover::idMover
================
*/
idMover::idMover( void ) {
	memset( &move, 0, sizeof( move ) );
	memset( &rot, 0, sizeof( rot ) );
	move_thread = 0;
	rotate_thread = 0;
	dest_angles.Zero();
	angle_delta.Zero();
	dest_position.Zero();
	move_delta.Zero();
	move_speed = 0.0f;
	move_time = 0;
	deceltime = 0;
	acceltime = 0;
	stopRotation = false;
	useSplineAngles = true;
	lastCommand = MOVER_NONE;
	damage = 0.0f;
	areaPortal = 0;
	fl.networkSync = true;
}

/*
================
idMover::Save
================
*/
void idMover::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idMover::Save( idSaveGame *savefile )\r\n");
}


/*
================
idMover::Restore
================
*/
void idMover::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idMover::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idMover::Event_PostRestore
================
*/
void idMover::Event_PostRestore( int start, int total, int accel, int decel, int useSplineAng ) {
    Sys_Printf("void idMover::Event_PostRestore( int start, int total, int accel, int decel, int useSplineAng )\r\n");
}


/*
================
idMover::Spawn
================
*/
void idMover::Spawn( void ) {
    Sys_Printf("void idMover::Spawn( void )\r\n");
}


/*
================
idMover::Hide
================
*/
void idMover::Hide( void ) {
    Sys_Printf("void idMover::Hide( void )\r\n");
}


/*
================
idMover::Show
================
*/
void idMover::Show( void ) {
    Sys_Printf("void idMover::Show( void )\r\n");
}


/*
============
idMover::Killed
============
*/
void idMover::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    Sys_Printf("void idMover::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
}



/*
================
idMover::Event_SetCallback
================
*/
void idMover::Event_SetCallback( void ) {
    Sys_Printf("void idMover::Event_SetCallback( void )\r\n");
}


/*
================
idMover::VectorForDir
================
*/
void idMover::VectorForDir( float angle, idVec3 &vec ) {
    Sys_Printf("void idMover::VectorForDir( float angle, idVec3 &vec )\r\n");
}


/*
================
idMover::FindGuiTargets
================
*/
void idMover::FindGuiTargets( void ) {
    Sys_Printf("void idMover::FindGuiTargets( void )\r\n");
}


/*
==============================
idMover::SetGuiState

key/val will be set to any renderEntity->gui's on the list
==============================
*/
void idMover::SetGuiState( const char *key, const char *val ) const {
    Sys_Printf("void idMover::SetGuiState( const char *key, const char *val )\r\n");
}


/*
================
idMover::Event_InitGuiTargets
================
*/
void idMover::Event_FindGuiTargets( void ) {
    Sys_Printf("void idMover::Event_FindGuiTargets( void )\r\n");
}


/*
================
idMover::SetGuiStates
================
*/
void idMover::SetGuiStates( const char *state ) {
    Sys_Printf("void idMover::SetGuiStates( const char *state )\r\n");
}


/*
================
idMover::Event_InitGuiTargets
================
*/
void idMover::Event_InitGuiTargets( void ) {
    Sys_Printf("void idMover::Event_InitGuiTargets( void )\r\n");
}


/***********************************************************************

	Translation control functions
	
***********************************************************************/

/*
================
idMover::Event_StopMoving
================
*/
void idMover::Event_StopMoving( void ) {
    Sys_Printf("void idMover::Event_StopMoving( void )\r\n");
}


/*
================
idMover::DoneMoving
================
*/
void idMover::DoneMoving( void ) {
    Sys_Printf("void idMover::DoneMoving( void )\r\n");
}


/*
================
idMover::UpdateMoveSound
================
*/
void idMover::UpdateMoveSound( moveStage_t stage ) {
    Sys_Printf("void idMover::UpdateMoveSound( moveStage_t stage )\r\n");
}


/*
================
idMover::Event_UpdateMove
================
*/
void idMover::Event_UpdateMove( void ) {
    Sys_Printf("void idMover::Event_UpdateMove( void )\r\n");
}


/*
================
idMover::BeginMove
================
*/
void idMover::BeginMove( idThread *thread ) {
    Sys_Printf("void idMover::BeginMove( idThread *thread )\r\n");
}


/***********************************************************************

	Rotation control functions
	
***********************************************************************/

/*
================
idMover::Event_StopRotating
================
*/
void idMover::Event_StopRotating( void ) {
    Sys_Printf("void idMover::Event_StopRotating( void )\r\n");
}


/*
================
idMover::DoneRotating
================
*/
void idMover::DoneRotating( void ) {
    Sys_Printf("void idMover::DoneRotating( void )\r\n");
}


/*
================
idMover::UpdateRotationSound
================
*/
void idMover::UpdateRotationSound( moveStage_t stage ) {
    Sys_Printf("void idMover::UpdateRotationSound( moveStage_t stage )\r\n");
}


/*
================
idMover::Event_UpdateRotation
================
*/
void idMover::Event_UpdateRotation( void ) {
    Sys_Printf("void idMover::Event_UpdateRotation( void )\r\n");
}


/*
================
idMover::BeginRotation
================
*/
void idMover::BeginRotation( idThread *thread, bool stopwhendone ) {
    Sys_Printf("void idMover::BeginRotation( idThread *thread, bool stopwhendone )\r\n");
}



/***********************************************************************

	Script callable routines  
	
***********************************************************************/

/*
===============
idMover::Event_TeamBlocked
===============
*/
void idMover::Event_TeamBlocked( idEntity *blockedEntity, idEntity *blockingEntity ) {
    Sys_Printf("void idMover::Event_TeamBlocked( idEntity *blockedEntity, idEntity *blockingEntity )\r\n");
}


/*
===============
idMover::Event_PartBlocked
===============
*/
void idMover::Event_PartBlocked( idEntity *blockingEntity ) {
    Sys_Printf("void idMover::Event_PartBlocked( idEntity *blockingEntity )\r\n");
}


/*
================
idMover::Event_SetMoveSpeed
================
*/
void idMover::Event_SetMoveSpeed( float speed ) {
    Sys_Printf("void idMover::Event_SetMoveSpeed( float speed )\r\n");
}


/*
================
idMover::Event_SetMoveTime
================
*/
void idMover::Event_SetMoveTime( float time ) {
    Sys_Printf("void idMover::Event_SetMoveTime( float time )\r\n");
}


/*
================
idMover::Event_SetAccellerationTime
================
*/
void idMover::Event_SetAccellerationTime( float time ) {
    Sys_Printf("void idMover::Event_SetAccellerationTime( float time )\r\n");
}


/*
================
idMover::Event_SetDecelerationTime
================
*/
void idMover::Event_SetDecelerationTime( float time ) {
    Sys_Printf("void idMover::Event_SetDecelerationTime( float time )\r\n");
}


/*
================
idMover::Event_MoveTo
================
*/
void idMover::Event_MoveTo( idEntity *ent ) {
    Sys_Printf("void idMover::Event_MoveTo( idEntity *ent )\r\n");
}


/*
================
idMover::MoveToPos
================
*/
void idMover::MoveToPos( const idVec3 &pos ) {
    Sys_Printf("void idMover::MoveToPos( const idVec3 &pos )\r\n");
}


/*
================
idMover::Event_MoveToPos
================
*/
void idMover::Event_MoveToPos( idVec3 &pos ) {
    Sys_Printf("void idMover::Event_MoveToPos( idVec3 &pos )\r\n");
}


/*
================
idMover::Event_MoveDir
================
*/
void idMover::Event_MoveDir( float angle, float distance ) {
    Sys_Printf("void idMover::Event_MoveDir( float angle, float distance )\r\n");
}


/*
================
idMover::Event_MoveAccelerateTo
================
*/
void idMover::Event_MoveAccelerateTo( float speed, float time ) {
    Sys_Printf("void idMover::Event_MoveAccelerateTo( float speed, float time )\r\n");
}


/*
================
idMover::Event_MoveDecelerateTo
================
*/
void idMover::Event_MoveDecelerateTo( float speed, float time ) {
    Sys_Printf("void idMover::Event_MoveDecelerateTo( float speed, float time )\r\n");
}


/*
================
idMover::Event_RotateDownTo
================
*/
void idMover::Event_RotateDownTo( int axis, float angle ) {
    Sys_Printf("void idMover::Event_RotateDownTo( int axis, float angle )\r\n");
}


/*
================
idMover::Event_RotateUpTo
================
*/
void idMover::Event_RotateUpTo( int axis, float angle ) {
    Sys_Printf("void idMover::Event_RotateUpTo( int axis, float angle )\r\n");
}


/*
================
idMover::Event_RotateTo
================
*/
void idMover::Event_RotateTo( idAngles &angles ) {
    Sys_Printf("void idMover::Event_RotateTo( idAngles &angles )\r\n");
}


/*
================
idMover::Event_Rotate
================
*/
void idMover::Event_Rotate( idAngles &angles ) {
    Sys_Printf("void idMover::Event_Rotate( idAngles &angles )\r\n");
}


/*
================
idMover::Event_RotateOnce
================
*/
void idMover::Event_RotateOnce( idAngles &angles ) {
    Sys_Printf("void idMover::Event_RotateOnce( idAngles &angles )\r\n");
}


/*
================
idMover::Event_Bob
================
*/
void idMover::Event_Bob( float speed, float phase, idVec3 &depth ) {
    Sys_Printf("void idMover::Event_Bob( float speed, float phase, idVec3 &depth )\r\n");
}


/*
================
idMover::Event_Sway
================
*/
void idMover::Event_Sway( float speed, float phase, idAngles &depth ) {
    Sys_Printf("void idMover::Event_Sway( float speed, float phase, idAngles &depth )\r\n");
}


/*
================
idMover::Event_OpenPortal

Sets the portal associtated with this mover to be open
================
*/
void idMover::Event_OpenPortal( void ) {
    Sys_Printf("void idMover::Event_OpenPortal( void )\r\n");
}


/*
================
idMover::Event_ClosePortal

Sets the portal associtated with this mover to be closed
================
*/
void idMover::Event_ClosePortal( void ) {
    Sys_Printf("void idMover::Event_ClosePortal( void )\r\n");
}


/*
================
idMover::Event_SetAccelSound
================
*/
void idMover::Event_SetAccelSound( const char *sound ) {
    Sys_Printf("void idMover::Event_SetAccelSound( const char *sound )\r\n");
}


/*
================
idMover::Event_SetDecelSound
================
*/
void idMover::Event_SetDecelSound( const char *sound ) {
    Sys_Printf("void idMover::Event_SetDecelSound( const char *sound )\r\n");
}


/*
================
idMover::Event_SetMoveSound
================
*/
void idMover::Event_SetMoveSound( const char *sound ) {
    Sys_Printf("void idMover::Event_SetMoveSound( const char *sound )\r\n");
}


/*
================
idMover::Event_EnableSplineAngles
================
*/
void idMover::Event_EnableSplineAngles( void ) {
    Sys_Printf("void idMover::Event_EnableSplineAngles( void )\r\n");
}


/*
================
idMover::Event_DisableSplineAngles
================
*/
void idMover::Event_DisableSplineAngles( void ) {
    Sys_Printf("void idMover::Event_DisableSplineAngles( void )\r\n");
}


/*
================
idMover::Event_RemoveInitialSplineAngles
================
*/
void idMover::Event_RemoveInitialSplineAngles( void ) {
    Sys_Printf("void idMover::Event_RemoveInitialSplineAngles( void )\r\n");
}


/*
================
idMover::Event_StartSpline
================
*/
void idMover::Event_StartSpline( idEntity *splineEntity ) {
    Sys_Printf("void idMover::Event_StartSpline( idEntity *splineEntity )\r\n");
}


/*
================
idMover::Event_StopSpline
================
*/
void idMover::Event_StopSpline( void ) {
    Sys_Printf("void idMover::Event_StopSpline( void )\r\n");
}


/*
================
idMover::Event_Activate
================
*/
void idMover::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idMover::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idMover::Event_IsMoving
================
*/
void idMover::Event_IsMoving( void ) {
    Sys_Printf("void idMover::Event_IsMoving( void )\r\n");
}


/*
================
idMover::Event_IsRotating
================
*/
void idMover::Event_IsRotating( void ) {
    Sys_Printf("void idMover::Event_IsRotating( void )\r\n");
}


/*
================
idMover::WriteToSnapshot
================
*/
void idMover::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idMover::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idMover::ReadFromSnapshot
================
*/
void idMover::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idMover::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idMover::SetPortalState
================
*/
void idMover::SetPortalState( bool open ) {
    Sys_Printf("void idMover::SetPortalState( bool open )\r\n");
}


/*
===============================================================================

	idSplinePath, holds a spline path to be used by an idMover

===============================================================================
*/

CLASS_DECLARATION( idEntity, idSplinePath )
END_CLASS

/*
================
idSplinePath::idSplinePath
================
*/
idSplinePath::idSplinePath() {
}

/*
================
idSplinePath::Spawn
================
*/
void idSplinePath::Spawn( void ) {
    Sys_Printf("void idSplinePath::Spawn( void )\r\n");
}



/*
===============================================================================

idElevator

===============================================================================
*/
const idEventDef EV_PostArrival( "postArrival", NULL );
const idEventDef EV_GotoFloor( "gotoFloor", "d" );
#ifdef _D3XP
const idEventDef EV_SetGuiStates( "setGuiStates" );
#endif

CLASS_DECLARATION( idMover, idElevator )
	EVENT( EV_Activate,				idElevator::Event_Activate )
	EVENT( EV_TeamBlocked,			idElevator::Event_TeamBlocked )
	EVENT( EV_PartBlocked,			idElevator::Event_PartBlocked )
	EVENT( EV_PostArrival,			idElevator::Event_PostFloorArrival )
	EVENT( EV_GotoFloor,			idElevator::Event_GotoFloor )
	EVENT( EV_Touch,				idElevator::Event_Touch )
#ifdef _D3XP
	EVENT( EV_SetGuiStates,			idElevator::Event_SetGuiStates )
#endif
END_CLASS

/*
================
idElevator::idElevator
================
*/
idElevator::idElevator( void ) {
	state = INIT;
	floorInfo.Clear();
	currentFloor = 0;
	pendingFloor = 0;
	lastFloor = 0;
	controlsDisabled = false;
	lastTouchTime = 0;
	returnFloor = 0;
	returnTime = 0;
}

/*
================
idElevator::Save
================
*/
void idElevator::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idElevator::Save( idSaveGame *savefile )\r\n");
}


/*
================
idElevator::Restore
================
*/
void idElevator::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idElevator::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idElevator::Spawn
================
*/
void idElevator::Spawn( void ) {
    Sys_Printf("void idElevator::Spawn( void )\r\n");
}


/*
==============
idElevator::Event_Touch
===============
*/
void idElevator::Event_Touch( idEntity *other, trace_t *trace ) {
    Sys_Printf("void idElevator::Event_Touch( idEntity *other, trace_t *trace )\r\n");
}


/*
================
idElevator::Think
================
*/
void idElevator::Think( void ) {
    Sys_Printf("void idElevator::Think( void )\r\n");
}


/*
================
idElevator::Event_Activate
================
*/
void idElevator::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idElevator::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idElevator::Event_TeamBlocked
================
*/
void idElevator::Event_TeamBlocked( idEntity *blockedEntity, idEntity *blockingEntity ) {
    Sys_Printf("void idElevator::Event_TeamBlocked( idEntity *blockedEntity, idEntity *blockingEntity )\r\n");
}


/*
===============
idElevator::HandleSingleGuiCommand
===============
*/
bool idElevator::HandleSingleGuiCommand( idEntity *entityGui, idLexer *src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idElevator::HandleSingleGuiCommand( idEntity *entityGui, idLexer *src )\r\n");
    return retVal;
}


/*
================
idElevator::OpenFloorDoor
================
*/
void idElevator::OpenFloorDoor( int floor ) {
    Sys_Printf("void idElevator::OpenFloorDoor( int floor )\r\n");
}


/*
================
idElevator::OpenInnerDoor
================
*/
void idElevator::OpenInnerDoor( void ) {
    Sys_Printf("void idElevator::OpenInnerDoor( void )\r\n");
}


/*
================
idElevator::GetFloorInfo
================
*/
floorInfo_s *idElevator::GetFloorInfo( int floor ) {
    Sys_Printf("floorInfo_s *idElevator::GetFloorInfo( int floor )\r\n");
    return NULL;
}


/*
================
idElevator::Event_GotoFloor
================
*/
void idElevator::Event_GotoFloor( int floor ) {
    Sys_Printf("void idElevator::Event_GotoFloor( int floor )\r\n");
}


/*
================
idElevator::BeginMove
================
*/
void idElevator::BeginMove( idThread *thread ) {
    Sys_Printf("void idElevator::BeginMove( idThread *thread )\r\n");
}


/*
================
idElevator::GetDoor
================
*/
idDoor *idElevator::GetDoor( const char *name ) {
    Sys_Printf("idDoor *idElevator::GetDoor( const char *name )\r\n");
    return NULL;
}


/*
================
idElevator::Event_PostFloorArrival
================
*/
void idElevator::Event_PostFloorArrival() {
    Sys_Printf("void idElevator::Event_PostFloorArrival()\r\n");
}


#ifdef _D3XP
void idElevator::Event_SetGuiStates() {
    Sys_Printf("void idElevator::Event_SetGuiStates()\r\n");
}

#endif

/*
================
idElevator::DoneMoving
================
*/
void idElevator::DoneMoving( void ) {
    Sys_Printf("void idElevator::DoneMoving( void )\r\n");
}


/*
================
idElevator::CloseAllDoors
================
*/
void idElevator::CloseAllDoors( void ) {
    Sys_Printf("void idElevator::CloseAllDoors( void )\r\n");
}


/*
================
idElevator::DisableAllDoors
================
*/
void idElevator::DisableAllDoors( void ) {
    Sys_Printf("void idElevator::DisableAllDoors( void )\r\n");
}


/*
================
idElevator::EnableProperDoors
================
*/
void idElevator::EnableProperDoors( void ) {
    Sys_Printf("void idElevator::EnableProperDoors( void )\r\n");
}



/*
===============================================================================

idMover_Binary

Doors, plats, and buttons are all binary (two position) movers
Pos1 is "at rest", pos2 is "activated"

===============================================================================
*/

const idEventDef EV_Mover_ReturnToPos1( "<returntopos1>", NULL );
const idEventDef EV_Mover_MatchTeam( "<matchteam>", "dd" );
const idEventDef EV_Mover_Enable( "enable", NULL );
const idEventDef EV_Mover_Disable( "disable", NULL );

CLASS_DECLARATION( idEntity, idMover_Binary )
	EVENT( EV_FindGuiTargets,			idMover_Binary::Event_FindGuiTargets )
	EVENT( EV_Thread_SetCallback,		idMover_Binary::Event_SetCallback )
	EVENT( EV_Mover_ReturnToPos1,		idMover_Binary::Event_ReturnToPos1 )
	EVENT( EV_Activate,					idMover_Binary::Event_Use_BinaryMover )
	EVENT( EV_ReachedPos,				idMover_Binary::Event_Reached_BinaryMover )
	EVENT( EV_Mover_MatchTeam,			idMover_Binary::Event_MatchActivateTeam )
	EVENT( EV_Mover_Enable,				idMover_Binary::Event_Enable )
	EVENT( EV_Mover_Disable,			idMover_Binary::Event_Disable )
	EVENT( EV_Mover_OpenPortal,			idMover_Binary::Event_OpenPortal )
	EVENT( EV_Mover_ClosePortal,		idMover_Binary::Event_ClosePortal )
	EVENT( EV_Mover_InitGuiTargets,		idMover_Binary::Event_InitGuiTargets )
END_CLASS

/*
================
idMover_Binary::idMover_Binary()
================
*/
idMover_Binary::idMover_Binary() {
	pos1.Zero();
	pos2.Zero();
	moverState = MOVER_POS1;
	moveMaster = NULL;
	activateChain = NULL;
	soundPos1 = 0;
	sound1to2 = 0;
	sound2to1 = 0;
	soundPos2 = 0;
	soundLoop = 0;
	wait = 0.0f;
	damage = 0.0f;
	duration = 0;
	accelTime = 0;
	decelTime = 0;
	activatedBy = this;
	stateStartTime = 0;
	team.Clear();
	enabled = false;
	move_thread = 0;
	updateStatus = 0;
	areaPortal = 0;
	blocked = false;
#ifdef _D3XP
	playerOnly = false;
#endif
	fl.networkSync = true;
}

/*
================
idMover_Binary::~idMover_Binary
================
*/
idMover_Binary::~idMover_Binary() {
	idMover_Binary *mover;

	// if this is the mover master
	if ( this == moveMaster ) {
		// make the next mover in the chain the move master
		for ( mover = moveMaster; mover; mover = mover->activateChain ) {
			mover->moveMaster = this->activateChain;
		}
	}
	else {
		// remove mover from the activate chain
		for ( mover = moveMaster; mover; mover = mover->activateChain ) {
			if ( mover->activateChain == this ) {
				mover->activateChain = this->activateChain;
				break;
			}
		}
	}
}

/*
================
idMover_Binary::Save
================
*/
void idMover_Binary::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idMover_Binary::Save( idSaveGame *savefile )\r\n");
}


/*
================
idMover_Binary::Restore
================
*/
void idMover_Binary::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idMover_Binary::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idMover_Binary::Spawn

Base class for all movers.

"wait"		wait before returning (3 default, -1 = never return)
"speed"		movement speed
================
*/
void idMover_Binary::Spawn( void ) {
    Sys_Printf("void idMover_Binary::Spawn( void )\r\n");
}


/*
===============
idMover_Binary::GetMovedir

The editor only specifies a single value for angles (yaw),
but we have special constants to generate an up or down direction.
Angles will be cleared, because it is being used to represent a direction
instead of an orientation.
===============
*/
void idMover_Binary::GetMovedir( float angle, idVec3 &movedir ) {
    Sys_Printf("void idMover_Binary::GetMovedir( float angle, idVec3 &movedir )\r\n");
}


/*
================
idMover_Binary::Event_SetCallback
================
*/
void idMover_Binary::Event_SetCallback( void ) {
    Sys_Printf("void idMover_Binary::Event_SetCallback( void )\r\n");
}


/*
===============
idMover_Binary::UpdateMoverSound
===============
*/
void idMover_Binary::UpdateMoverSound( moverState_t state ) {
    Sys_Printf("void idMover_Binary::UpdateMoverSound( moverState_t state )\r\n");
}


/*
===============
idMover_Binary::SetMoverState
===============
*/
void idMover_Binary::SetMoverState( moverState_t newstate, int time ) {
    Sys_Printf("void idMover_Binary::SetMoverState( moverState_t newstate, int time )\r\n");
}


/*
================
idMover_Binary::MatchActivateTeam

All entities in a mover team will move from pos1 to pos2
in the same amount of time
================
*/
void idMover_Binary::MatchActivateTeam( moverState_t newstate, int time ) {
    Sys_Printf("void idMover_Binary::MatchActivateTeam( moverState_t newstate, int time )\r\n");
}


/*
================
idMover_Binary::Enable
================
*/
void idMover_Binary::Enable( bool b ) {
    Sys_Printf("void idMover_Binary::Enable( bool b )\r\n");
}


/*
================
idMover_Binary::Event_MatchActivateTeam
================
*/
void idMover_Binary::Event_MatchActivateTeam( moverState_t newstate, int time ) {
    Sys_Printf("void idMover_Binary::Event_MatchActivateTeam( moverState_t newstate, int time )\r\n");
}


/*
================
idMover_Binary::BindTeam

All entities in a mover team will be bound 
================
*/
void idMover_Binary::BindTeam( idEntity *bindTo ) {
    Sys_Printf("void idMover_Binary::BindTeam( idEntity *bindTo )\r\n");
}


/*
================
idMover_Binary::JoinActivateTeam

Set all entities in a mover team to be enabled
================
*/
void idMover_Binary::JoinActivateTeam( idMover_Binary *master ) {
    Sys_Printf("void idMover_Binary::JoinActivateTeam( idMover_Binary *master )\r\n");
}


/*
================
idMover_Binary::Event_Enable

Set all entities in a mover team to be enabled
================
*/
void idMover_Binary::Event_Enable( void ) {
    Sys_Printf("void idMover_Binary::Event_Enable( void )\r\n");
}


/*
================
idMover_Binary::Event_Disable

Set all entities in a mover team to be disabled
================
*/
void idMover_Binary::Event_Disable( void ) {
    Sys_Printf("void idMover_Binary::Event_Disable( void )\r\n");
}


/*
================
idMover_Binary::Event_OpenPortal

Sets the portal associtated with this mover to be open
================
*/
void idMover_Binary::Event_OpenPortal( void ) {
    Sys_Printf("void idMover_Binary::Event_OpenPortal( void )\r\n");
}


/*
================
idMover_Binary::Event_ClosePortal

Sets the portal associtated with this mover to be closed
================
*/
void idMover_Binary::Event_ClosePortal( void ) {
    Sys_Printf("void idMover_Binary::Event_ClosePortal( void )\r\n");
}


/*
================
idMover_Binary::Event_ReturnToPos1
================
*/
void idMover_Binary::Event_ReturnToPos1( void ) {
    Sys_Printf("void idMover_Binary::Event_ReturnToPos1( void )\r\n");
}


/*
================
idMover_Binary::Event_Reached_BinaryMover
================
*/
void idMover_Binary::Event_Reached_BinaryMover( void ) {
    Sys_Printf("void idMover_Binary::Event_Reached_BinaryMover( void )\r\n");
}


/*
================
idMover_Binary::GotoPosition1
================
*/
void idMover_Binary::GotoPosition1( void ) {
    Sys_Printf("void idMover_Binary::GotoPosition1( void )\r\n");
}


/*
================
idMover_Binary::GotoPosition2
================
*/
void idMover_Binary::GotoPosition2( void ) {
    Sys_Printf("void idMover_Binary::GotoPosition2( void )\r\n");
}


/*
================
idMover_Binary::UpdateBuddies
================
*/
void idMover_Binary::UpdateBuddies( int val ) {
    Sys_Printf("void idMover_Binary::UpdateBuddies( int val )\r\n");
}


/*
================
idMover_Binary::SetGuiStates
================
*/
void idMover_Binary::SetGuiStates( const char *state ) {
    Sys_Printf("void idMover_Binary::SetGuiStates( const char *state )\r\n");
}


/*
================
idMover_Binary::Use_BinaryMover
================
*/
void idMover_Binary::Use_BinaryMover( idEntity *activator ) {
    Sys_Printf("void idMover_Binary::Use_BinaryMover( idEntity *activator )\r\n");
}


/*
================
idMover_Binary::Event_Use_BinaryMover
================
*/
void idMover_Binary::Event_Use_BinaryMover( idEntity *activator ) {
    Sys_Printf("void idMover_Binary::Event_Use_BinaryMover( idEntity *activator )\r\n");
}


/*
================
idMover_Binary::PreBind
================
*/
void idMover_Binary::PreBind( void ) {
    Sys_Printf("void idMover_Binary::PreBind( void )\r\n");
}


/*
================
idMover_Binary::PostBind
================
*/
void idMover_Binary::PostBind( void ) {
    Sys_Printf("void idMover_Binary::PostBind( void )\r\n");
}


/*
================
idMover_Binary::FindGuiTargets
================
*/
void idMover_Binary::FindGuiTargets( void ) {
    Sys_Printf("void idMover_Binary::FindGuiTargets( void )\r\n");
}


/*
==============================
idMover_Binary::SetGuiState

key/val will be set to any renderEntity->gui's on the list
==============================
*/
void idMover_Binary::SetGuiState( const char *key, const char *val ) const {
    Sys_Printf("void idMover_Binary::SetGuiState( const char *key, const char *val )\r\n");
}


/*
================
idMover_Binary::Event_InitGuiTargets
================
*/
void idMover_Binary::Event_FindGuiTargets( void ) {
    Sys_Printf("void idMover_Binary::Event_FindGuiTargets( void )\r\n");
}


/*
================
idMover_Binary::Event_InitGuiTargets
================
*/
void idMover_Binary::Event_InitGuiTargets( void ) {
    Sys_Printf("void idMover_Binary::Event_InitGuiTargets( void )\r\n");
}


/*
================
idMover_Binary::InitSpeed

pos1, pos2, and speed are passed in so the movement delta can be calculated
================
*/
void idMover_Binary::InitSpeed( idVec3 &mpos1, idVec3 &mpos2, float mspeed, float maccelTime, float mdecelTime ) {
    Sys_Printf("void idMover_Binary::InitSpeed( idVec3 &mpos1, idVec3 &mpos2, float mspeed, float maccelTime, float mdecelTime )\r\n");
}


/*
================
idMover_Binary::InitTime

pos1, pos2, and time are passed in so the movement delta can be calculated
================
*/
void idMover_Binary::InitTime( idVec3 &mpos1, idVec3 &mpos2, float mtime, float maccelTime, float mdecelTime ) {
    Sys_Printf("void idMover_Binary::InitTime( idVec3 &mpos1, idVec3 &mpos2, float mtime, float maccelTime, float mdecelTime )\r\n");
}


/*
================
idMover_Binary::SetBlocked
================
*/
void idMover_Binary::SetBlocked( bool b ) {
    Sys_Printf("void idMover_Binary::SetBlocked( bool b )\r\n");
}


/*
================
idMover_Binary::IsBlocked
================
*/
bool idMover_Binary::IsBlocked( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMover_Binary::IsBlocked( void )\r\n");
    return retVal;
}


/*
================
idMover_Binary::GetActivator
================
*/
idEntity *idMover_Binary::GetActivator( void ) const {
    Sys_Printf("idEntity *idMover_Binary::GetActivator( void )\r\n");
    return NULL;
}


/*
================
idMover_Binary::WriteToSnapshot
================
*/
void idMover_Binary::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idMover_Binary::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idMover_Binary::ReadFromSnapshot
================
*/
void idMover_Binary::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idMover_Binary::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idMover_Binary::SetPortalState
================
*/
void idMover_Binary::SetPortalState( bool open ) {
    Sys_Printf("void idMover_Binary::SetPortalState( bool open )\r\n");
}


/*
===============================================================================

idDoor

A use can be triggered either by a touch function, by being shot, or by being
targeted by another entity.

===============================================================================
*/

const idEventDef EV_Door_StartOpen( "<startOpen>", NULL );
const idEventDef EV_Door_SpawnDoorTrigger( "<spawnDoorTrigger>", NULL );
const idEventDef EV_Door_SpawnSoundTrigger( "<spawnSoundTrigger>", NULL );
const idEventDef EV_Door_Open( "open", NULL );
const idEventDef EV_Door_Close( "close", NULL );
const idEventDef EV_Door_Lock( "lock", "d" );
const idEventDef EV_Door_IsOpen( "isOpen", NULL, 'f' );
const idEventDef EV_Door_IsLocked( "isLocked", NULL, 'f' );

CLASS_DECLARATION( idMover_Binary, idDoor )
	EVENT( EV_TeamBlocked,				idDoor::Event_TeamBlocked )
	EVENT( EV_PartBlocked,				idDoor::Event_PartBlocked )
	EVENT( EV_Touch,					idDoor::Event_Touch )
	EVENT( EV_Activate,					idDoor::Event_Activate )
	EVENT( EV_Door_StartOpen,			idDoor::Event_StartOpen )
	EVENT( EV_Door_SpawnDoorTrigger,	idDoor::Event_SpawnDoorTrigger )
	EVENT( EV_Door_SpawnSoundTrigger,	idDoor::Event_SpawnSoundTrigger )
	EVENT( EV_Door_Open,				idDoor::Event_Open )
	EVENT( EV_Door_Close,				idDoor::Event_Close )
	EVENT( EV_Door_Lock,				idDoor::Event_Lock )
	EVENT( EV_Door_IsOpen,				idDoor::Event_IsOpen )
	EVENT( EV_Door_IsLocked,			idDoor::Event_Locked )
	EVENT( EV_ReachedPos,				idDoor::Event_Reached_BinaryMover )
	EVENT( EV_SpectatorTouch,			idDoor::Event_SpectatorTouch )
	EVENT( EV_Mover_OpenPortal,			idDoor::Event_OpenPortal )
	EVENT( EV_Mover_ClosePortal,		idDoor::Event_ClosePortal )
END_CLASS

/*
================
idDoor::idDoor
================
*/
idDoor::idDoor( void ) {
	triggersize = 1.0f;
	crusher = false;
	noTouch = false;
	aas_area_closed = false;
	buddyStr.Clear();
	trigger = NULL;
	sndTrigger = NULL;
	nextSndTriggerTime = 0;
	localTriggerOrigin.Zero();
	localTriggerAxis.Identity();
	requires.Clear();
	removeItem = 0;
	syncLock.Clear();
	companionDoor = NULL;
	normalAxisIndex = 0;
}

/*
================
idDoor::~idDoor
================
*/
idDoor::~idDoor( void ) {
	if ( trigger ) {
		delete trigger;
	}
	if ( sndTrigger ) {
		delete sndTrigger;
	}
}

/*
================
idDoor::Save
================
*/
void idDoor::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idDoor::Save( idSaveGame *savefile )\r\n");
}


/*
================
idDoor::Restore
================
*/
void idDoor::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idDoor::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idDoor::Spawn
================
*/
void idDoor::Spawn( void ) {
    Sys_Printf("void idDoor::Spawn( void )\r\n");
}


/*
================
idDoor::Think
================
*/
void idDoor::Think( void ) {
    Sys_Printf("void idDoor::Think( void )\r\n");
}


/*
================
idDoor::PreBind
================
*/
void idDoor::PreBind( void ) {
    Sys_Printf("void idDoor::PreBind( void )\r\n");
}


/*
================
idDoor::PostBind
================
*/
void idDoor::PostBind( void ) {
    Sys_Printf("void idDoor::PostBind( void )\r\n");
}


/*
================
idDoor::SetAASAreaState
================
*/
void idDoor::SetAASAreaState( bool closed ) {
    Sys_Printf("void idDoor::SetAASAreaState( bool closed )\r\n");
}


/*
================
idDoor::Hide
================
*/
void idDoor::Hide( void ) {
    Sys_Printf("void idDoor::Hide( void )\r\n");
}


/*
================
idDoor::Show
================
*/
void idDoor::Show( void ) {
    Sys_Printf("void idDoor::Show( void )\r\n");
}


/*
================
idDoor::GetLocalTriggerPosition
================
*/
void idDoor::GetLocalTriggerPosition( const idClipModel *trigger ) {
    Sys_Printf("void idDoor::GetLocalTriggerPosition( const idClipModel *trigger )\r\n");
}


/*
================
idDoor::Use
================
*/
void idDoor::Use( idEntity *other, idEntity *activator ) {
    Sys_Printf("void idDoor::Use( idEntity *other, idEntity *activator )\r\n");
}


/*
================
idDoor::Open
================
*/
void idDoor::Open( void ) {
    Sys_Printf("void idDoor::Open( void )\r\n");
}


/*
================
idDoor::Close
================
*/
void idDoor::Close( void ) {
    Sys_Printf("void idDoor::Close( void )\r\n");
}


/*
================
idDoor::Lock
================
*/
void idDoor::Lock( int f ) {
    Sys_Printf("void idDoor::Lock( int f )\r\n");
}


/*
================
idDoor::IsLocked
================
*/
int idDoor::IsLocked( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDoor::IsLocked( void )\r\n");
    return retVal;
}


/*
================
idDoor::IsOpen
================
*/
bool idDoor::IsOpen( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDoor::IsOpen( void )\r\n");
    return retVal;
}


/*
================
idDoor::IsNoTouch
================
*/
bool idDoor::IsNoTouch( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDoor::IsNoTouch( void )\r\n");
    return retVal;
}


#ifdef _D3XP
/*
================
idDoor::AllowPlayerOnly
================
*/
bool idDoor::AllowPlayerOnly( idEntity *ent ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDoor::AllowPlayerOnly( idEntity *ent )\r\n");
    return retVal;
}

#endif

/*
======================
idDoor::CalcTriggerBounds

Calcs bounds for a trigger.
======================
*/
void idDoor::CalcTriggerBounds( float size, idBounds &bounds ) {
    Sys_Printf("void idDoor::CalcTriggerBounds( float size, idBounds &bounds )\r\n");
}


/*
======================
idDoor::Event_StartOpen

if "start_open", reverse position 1 and 2
======================
*/
void idDoor::Event_StartOpen( void ) {
    Sys_Printf("void idDoor::Event_StartOpen( void )\r\n");
}


/*
======================
idDoor::Event_SpawnDoorTrigger

All of the parts of a door have been spawned, so create
a trigger that encloses all of them.
======================
*/
void idDoor::Event_SpawnDoorTrigger( void ) {
    Sys_Printf("void idDoor::Event_SpawnDoorTrigger( void )\r\n");
}


/*
======================
idDoor::Event_SpawnSoundTrigger

Spawn a sound trigger to activate locked sound if it exists.
======================
*/
void idDoor::Event_SpawnSoundTrigger( void ) {
    Sys_Printf("void idDoor::Event_SpawnSoundTrigger( void )\r\n");
}


/*
================
idDoor::Event_Reached_BinaryMover
================
*/
void idDoor::Event_Reached_BinaryMover( void ) {
    Sys_Printf("void idDoor::Event_Reached_BinaryMover( void )\r\n");
}


/*
================
idDoor::Blocked_Door
================
*/
void idDoor::Event_TeamBlocked( idEntity *blockedEntity, idEntity *blockingEntity ) {
    Sys_Printf("void idDoor::Event_TeamBlocked( idEntity *blockedEntity, idEntity *blockingEntity )\r\n");
}


/*
===============
idDoor::SetCompanion
===============
*/
void idDoor::SetCompanion( idDoor *door ) {
    Sys_Printf("void idDoor::SetCompanion( idDoor *door )\r\n");
}


/*
===============
idDoor::Event_PartBlocked
===============
*/
void idDoor::Event_PartBlocked( idEntity *blockingEntity ) {
    Sys_Printf("void idDoor::Event_PartBlocked( idEntity *blockingEntity )\r\n");
}


/*
================
idDoor::Event_Touch
================
*/
void idDoor::Event_Touch( idEntity *other, trace_t *trace ) {
    Sys_Printf("void idDoor::Event_Touch( idEntity *other, trace_t *trace )\r\n");
}


/*
================
idDoor::Event_SpectatorTouch
================
*/
void idDoor::Event_SpectatorTouch( idEntity *other, trace_t *trace ) {
    Sys_Printf("void idDoor::Event_SpectatorTouch( idEntity *other, trace_t *trace )\r\n");
}


/*
================
idDoor::Event_Activate
================
*/
void idDoor::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idDoor::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idDoor::Event_Open
================
*/
void idDoor::Event_Open( void ) {
    Sys_Printf("void idDoor::Event_Open( void )\r\n");
}


/*
================
idDoor::Event_Close
================
*/
void idDoor::Event_Close( void ) {
    Sys_Printf("void idDoor::Event_Close( void )\r\n");
}


/*
================
idDoor::Event_Lock
================
*/
void idDoor::Event_Lock( int f ) {
    Sys_Printf("void idDoor::Event_Lock( int f )\r\n");
}


/*
================
idDoor::Event_IsOpen
================
*/
void idDoor::Event_IsOpen( void ) {
    Sys_Printf("void idDoor::Event_IsOpen( void )\r\n");
}


/*
================
idDoor::Event_Locked
================
*/
void idDoor::Event_Locked( void ) {
    Sys_Printf("void idDoor::Event_Locked( void )\r\n");
}


/*
================
idDoor::Event_OpenPortal

Sets the portal associtated with this door to be open
================
*/
void idDoor::Event_OpenPortal( void ) {
    Sys_Printf("void idDoor::Event_OpenPortal( void )\r\n");
}


/*
================
idDoor::Event_ClosePortal

Sets the portal associtated with this door to be closed
================
*/
void idDoor::Event_ClosePortal( void ) {
    Sys_Printf("void idDoor::Event_ClosePortal( void )\r\n");
}



/*
===============================================================================

idPlat

===============================================================================
*/

CLASS_DECLARATION( idMover_Binary, idPlat )
	EVENT( EV_Touch,			idPlat::Event_Touch )
	EVENT( EV_TeamBlocked,		idPlat::Event_TeamBlocked )
	EVENT( EV_PartBlocked,		idPlat::Event_PartBlocked )
END_CLASS

/*
===============
idPlat::idPlat
===============
*/
idPlat::idPlat( void ) {
	trigger = NULL;
	localTriggerOrigin.Zero();
	localTriggerAxis.Identity();
}

/*
===============
idPlat::~idPlat
===============
*/
idPlat::~idPlat( void ) {
	if ( trigger ) {
		delete trigger;
	}
}

/*
===============
idPlat::Save
===============
*/
void idPlat::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idPlat::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idPlat::Restore
===============
*/
void idPlat::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idPlat::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idPlat::Spawn
===============
*/
void idPlat::Spawn( void ) {
    Sys_Printf("void idPlat::Spawn( void )\r\n");
}


/*
================
idPlat::Think
================
*/
void idPlat::Think( void ) {
    Sys_Printf("void idPlat::Think( void )\r\n");
}


/*
================
idPlat::PreBind
================
*/
void idPlat::PreBind( void ) {
    Sys_Printf("void idPlat::PreBind( void )\r\n");
}


/*
================
idPlat::PostBind
================
*/
void idPlat::PostBind( void ) {
    Sys_Printf("void idPlat::PostBind( void )\r\n");
}


/*
================
idPlat::GetLocalTriggerPosition
================
*/
void idPlat::GetLocalTriggerPosition( const idClipModel *trigger ) {
    Sys_Printf("void idPlat::GetLocalTriggerPosition( const idClipModel *trigger )\r\n");
}


/*
==============
idPlat::SpawnPlatTrigger
===============
*/
void idPlat::SpawnPlatTrigger( idVec3 &pos ) {
    Sys_Printf("void idPlat::SpawnPlatTrigger( idVec3 &pos )\r\n");
}


/*
==============
idPlat::Event_Touch
===============
*/
void idPlat::Event_Touch( idEntity *other, trace_t *trace ) {
    Sys_Printf("void idPlat::Event_Touch( idEntity *other, trace_t *trace )\r\n");
}


/*
================
idPlat::Event_TeamBlocked
================
*/
void idPlat::Event_TeamBlocked( idEntity *blockedEntity, idEntity *blockingEntity ) {
    Sys_Printf("void idPlat::Event_TeamBlocked( idEntity *blockedEntity, idEntity *blockingEntity )\r\n");
}


/*
===============
idPlat::Event_PartBlocked
===============
*/
void idPlat::Event_PartBlocked( idEntity *blockingEntity ) {
    Sys_Printf("void idPlat::Event_PartBlocked( idEntity *blockingEntity )\r\n");
}



/*
===============================================================================

idMover_Periodic

===============================================================================
*/

CLASS_DECLARATION( idEntity, idMover_Periodic )
	EVENT( EV_TeamBlocked,		idMover_Periodic::Event_TeamBlocked )
	EVENT( EV_PartBlocked,		idMover_Periodic::Event_PartBlocked )
END_CLASS

/*
===============
idMover_Periodic::idMover_Periodic
===============
*/
idMover_Periodic::idMover_Periodic( void ) {
	damage = 0.0f;
	fl.neverDormant	= false;
}

/*
===============
idMover_Periodic::Spawn
===============
*/
void idMover_Periodic::Spawn( void ) {
    Sys_Printf("void idMover_Periodic::Spawn( void )\r\n");
}


/*
===============
idMover_Periodic::Save
===============
*/
void idMover_Periodic::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idMover_Periodic::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idMover_Periodic::Restore
===============
*/
void idMover_Periodic::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idMover_Periodic::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idMover_Periodic::Think
================
*/
void idMover_Periodic::Think( void ) {
    Sys_Printf("void idMover_Periodic::Think( void )\r\n");
}


/*
===============
idMover_Periodic::Event_TeamBlocked
===============
*/
void idMover_Periodic::Event_TeamBlocked( idEntity *blockedEntity, idEntity *blockingEntity ) {
    Sys_Printf("void idMover_Periodic::Event_TeamBlocked( idEntity *blockedEntity, idEntity *blockingEntity )\r\n");
}


/*
===============
idMover_Periodic::Event_PartBlocked
===============
*/
void idMover_Periodic::Event_PartBlocked( idEntity *blockingEntity ) {
    Sys_Printf("void idMover_Periodic::Event_PartBlocked( idEntity *blockingEntity )\r\n");
}


/*
================
idMover_Periodic::WriteToSnapshot
================
*/
void idMover_Periodic::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idMover_Periodic::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idMover_Periodic::ReadFromSnapshot
================
*/
void idMover_Periodic::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idMover_Periodic::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}



/*
===============================================================================

idRotater

===============================================================================
*/

CLASS_DECLARATION( idMover_Periodic, idRotater )
	EVENT( EV_Activate,			idRotater::Event_Activate )
END_CLASS

/*
===============
idRotater::idRotater
===============
*/
idRotater::idRotater( void ) {
	activatedBy = this;
}

/*
===============
idRotater::Spawn
===============
*/
void idRotater::Spawn( void ) {
    Sys_Printf("void idRotater::Spawn( void )\r\n");
}


/*
===============
idRotater::Save
===============
*/
void idRotater::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idRotater::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idRotater::Restore
===============
*/
void idRotater::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idRotater::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idRotater::Event_Activate
===============
*/
void idRotater::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idRotater::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idBobber

===============================================================================
*/

CLASS_DECLARATION( idMover_Periodic, idBobber )
END_CLASS

/*
===============
idBobber::idBobber
===============
*/
idBobber::idBobber( void ) {
}

/*
===============
idBobber::Spawn
===============
*/
void idBobber::Spawn( void ) {
    Sys_Printf("void idBobber::Spawn( void )\r\n");
}



/*
===============================================================================

idPendulum

===============================================================================
*/

CLASS_DECLARATION( idMover_Periodic, idPendulum )
END_CLASS

/*
===============
idPendulum::idPendulum
===============
*/
idPendulum::idPendulum( void ) {
}

/*
===============
idPendulum::Spawn
===============
*/
void idPendulum::Spawn( void ) {
    Sys_Printf("void idPendulum::Spawn( void )\r\n");
}



/*
===============================================================================

idBobber

===============================================================================
*/

CLASS_DECLARATION( idMover_Periodic, idRiser )
EVENT( EV_Activate,				idRiser::Event_Activate )
END_CLASS

/*
===============
idRiser::idRiser
===============
*/
idRiser::idRiser( void ) {
}

/*
===============
idRiser::Spawn
===============
*/
void idRiser::Spawn( void ) {
    Sys_Printf("void idRiser::Spawn( void )\r\n");
}


/*
================
idRiser::Event_Activate
================
*/
void idRiser::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idRiser::Event_Activate( idEntity *activator )\r\n");
}

