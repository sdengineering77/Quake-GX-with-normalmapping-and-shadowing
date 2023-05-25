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

#include "../../idlib/precompiled.h"
#pragma hdrstop

#include "../Game_local.h"

CLASS_DECLARATION( idPhysics_Actor, idPhysics_Player )
END_CLASS

// movement parameters
const float PM_STOPSPEED		= 100.0f;
const float PM_SWIMSCALE		= 0.5f;
const float PM_LADDERSPEED		= 100.0f;
const float PM_STEPSCALE		= 1.0f;

const float PM_ACCELERATE		= 10.0f;
const float PM_AIRACCELERATE	= 1.0f;
const float PM_WATERACCELERATE	= 4.0f;
const float PM_FLYACCELERATE	= 8.0f;

const float PM_FRICTION			= 6.0f;
const float PM_AIRFRICTION		= 0.0f;
const float PM_WATERFRICTION	= 1.0f;
const float PM_FLYFRICTION		= 3.0f;
const float PM_NOCLIPFRICTION	= 12.0f;

const float MIN_WALK_NORMAL		= 0.7f;		// can't walk on very steep slopes
const float OVERCLIP			= 1.001f;

// movementFlags
const int PMF_DUCKED			= 1;		// set when ducking
const int PMF_JUMPED			= 2;		// set when the player jumped this frame
const int PMF_STEPPED_UP		= 4;		// set when the player stepped up this frame
const int PMF_STEPPED_DOWN		= 8;		// set when the player stepped down this frame
const int PMF_JUMP_HELD			= 16;		// set when jump button is held down
const int PMF_TIME_LAND			= 32;		// movementTime is time before rejump
const int PMF_TIME_KNOCKBACK	= 64;		// movementTime is an air-accelerate only time
const int PMF_TIME_WATERJUMP	= 128;		// movementTime is waterjump
const int PMF_ALL_TIMES			= (PMF_TIME_WATERJUMP|PMF_TIME_LAND|PMF_TIME_KNOCKBACK);

int c_pmove = 0;

/*
============
idPhysics_Player::CmdScale

Returns the scale factor to apply to cmd movements
This allows the clients to use axial -127 to 127 values for all directions
without getting a sqrt(2) distortion in speed.
============
*/
float idPhysics_Player::CmdScale( const usercmd_t &cmd ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPhysics_Player::CmdScale( const usercmd_t &cmd )\r\n");
    return retVal;
}


/*
==============
idPhysics_Player::Accelerate

Handles user intended acceleration
==============
*/
void idPhysics_Player::Accelerate( const idVec3 &wishdir, const float wishspeed, const float accel ) {
    Sys_Printf("void idPhysics_Player::Accelerate( const idVec3 &wishdir, const float wishspeed, const float accel )\r\n");
}


/*
==================
idPhysics_Player::SlideMove

Returns true if the velocity was clipped in some way
==================
*/
#define	MAX_CLIP_PLANES	5

bool idPhysics_Player::SlideMove( bool gravity, bool stepUp, bool stepDown, bool push ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Player::SlideMove( bool gravity, bool stepUp, bool stepDown, bool push )\r\n");
    return retVal;
}


/*
==================
idPhysics_Player::Friction

Handles both ground friction and water friction
==================
*/
void idPhysics_Player::Friction( void ) {
    Sys_Printf("void idPhysics_Player::Friction( void )\r\n");
}


/*
===================
idPhysics_Player::WaterJumpMove

Flying out of the water
===================
*/
void idPhysics_Player::WaterJumpMove( void ) {
    Sys_Printf("void idPhysics_Player::WaterJumpMove( void )\r\n");
}


/*
===================
idPhysics_Player::WaterMove
===================
*/
void idPhysics_Player::WaterMove( void ) {
    Sys_Printf("void idPhysics_Player::WaterMove( void )\r\n");
}


/*
===================
idPhysics_Player::FlyMove
===================
*/
void idPhysics_Player::FlyMove( void ) {
    Sys_Printf("void idPhysics_Player::FlyMove( void )\r\n");
}


/*
===================
idPhysics_Player::AirMove
===================
*/
void idPhysics_Player::AirMove( void ) {
    Sys_Printf("void idPhysics_Player::AirMove( void )\r\n");
}


/*
===================
idPhysics_Player::WalkMove
===================
*/
void idPhysics_Player::WalkMove( void ) {
    Sys_Printf("void idPhysics_Player::WalkMove( void )\r\n");
}


/*
==============
idPhysics_Player::DeadMove
==============
*/
void idPhysics_Player::DeadMove( void ) {
    Sys_Printf("void idPhysics_Player::DeadMove( void )\r\n");
}


/*
===============
idPhysics_Player::NoclipMove
===============
*/
void idPhysics_Player::NoclipMove( void ) {
    Sys_Printf("void idPhysics_Player::NoclipMove( void )\r\n");
}


/*
===============
idPhysics_Player::SpectatorMove
===============
*/
void idPhysics_Player::SpectatorMove( void ) {
    Sys_Printf("void idPhysics_Player::SpectatorMove( void )\r\n");
}


/*
============
idPhysics_Player::LadderMove
============
*/
void idPhysics_Player::LadderMove( void ) {
    Sys_Printf("void idPhysics_Player::LadderMove( void )\r\n");
}


/*
=============
idPhysics_Player::CorrectAllSolid
=============
*/
void idPhysics_Player::CorrectAllSolid( trace_t &trace, int contents ) {
    Sys_Printf("void idPhysics_Player::CorrectAllSolid( trace_t &trace, int contents )\r\n");
}


/*
=============
idPhysics_Player::CheckGround
=============
*/
void idPhysics_Player::CheckGround( void ) {
    Sys_Printf("void idPhysics_Player::CheckGround( void )\r\n");
}


/*
==============
idPhysics_Player::CheckDuck

Sets clip model size
==============
*/
void idPhysics_Player::CheckDuck( void ) {
    Sys_Printf("void idPhysics_Player::CheckDuck( void )\r\n");
}


/*
================
idPhysics_Player::CheckLadder
================
*/
void idPhysics_Player::CheckLadder( void ) {
    Sys_Printf("void idPhysics_Player::CheckLadder( void )\r\n");
}


/*
=============
idPhysics_Player::CheckJump
=============
*/
bool idPhysics_Player::CheckJump( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Player::CheckJump( void )\r\n");
    return retVal;
}


/*
=============
idPhysics_Player::CheckWaterJump
=============
*/
bool idPhysics_Player::CheckWaterJump( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Player::CheckWaterJump( void )\r\n");
    return retVal;
}


/*
=============
idPhysics_Player::SetWaterLevel
=============
*/
void idPhysics_Player::SetWaterLevel( void ) {
    Sys_Printf("void idPhysics_Player::SetWaterLevel( void )\r\n");
}


/*
================
idPhysics_Player::DropTimers
================
*/
void idPhysics_Player::DropTimers( void ) {
    Sys_Printf("void idPhysics_Player::DropTimers( void )\r\n");
}


/*
================
idPhysics_Player::MovePlayer
================
*/
void idPhysics_Player::MovePlayer( int msec ) {
    Sys_Printf("void idPhysics_Player::MovePlayer( int msec )\r\n");
}


/*
================
idPhysics_Player::GetWaterLevel
================
*/
waterLevel_t idPhysics_Player::GetWaterLevel( void ) const {
    waterLevel_t retVal;
    memset(&retVal, 0, sizeof(waterLevel_t));
    Sys_Printf("waterLevel_t idPhysics_Player::GetWaterLevel( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Player::GetWaterType
================
*/
int idPhysics_Player::GetWaterType( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Player::GetWaterType( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Player::HasJumped
================
*/
bool idPhysics_Player::HasJumped( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Player::HasJumped( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Player::HasSteppedUp
================
*/
bool idPhysics_Player::HasSteppedUp( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Player::HasSteppedUp( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Player::GetStepUp
================
*/
float idPhysics_Player::GetStepUp( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPhysics_Player::GetStepUp( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Player::IsCrouching
================
*/
bool idPhysics_Player::IsCrouching( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Player::IsCrouching( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Player::OnLadder
================
*/
bool idPhysics_Player::OnLadder( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Player::OnLadder( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Player::idPhysics_Player
================
*/
idPhysics_Player::idPhysics_Player( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idPhysics_Player::idPhysics_Player( void ) size %d\r\n", sizeof(*this));
#endif

	debugLevel = false;
	clipModel = NULL;
	clipMask = 0;
	memset( &current, 0, sizeof( current ) );
	saved = current;
	walkSpeed = 0;
	crouchSpeed = 0;
	maxStepHeight = 0;
	maxJumpHeight = 0;
	memset( &command, 0, sizeof( command ) );
	viewAngles.Zero();
	framemsec = 0;
	frametime = 0;
	playerSpeed = 0;
	viewForward.Zero();
	viewRight.Zero();
	walking = false;
	groundPlane = false;
	memset( &groundTrace, 0, sizeof( groundTrace ) );
	groundMaterial = NULL;
	ladder = false;
	ladderNormal.Zero();
	waterLevel = WATERLEVEL_NONE;
	waterType = 0;
}

/*
================
idPhysics_Player_SavePState
================
*/
void idPhysics_Player_SavePState( idSaveGame *savefile, const playerPState_t &state ) {
    Sys_Printf("void idPhysics_Player_SavePState( idSaveGame *savefile, const playerPState_t &state )\r\n");
}


/*
================
idPhysics_Player_RestorePState
================
*/
void idPhysics_Player_RestorePState( idRestoreGame *savefile, playerPState_t &state ) {
    Sys_Printf("void idPhysics_Player_RestorePState( idRestoreGame *savefile, playerPState_t &state )\r\n");
}


/*
================
idPhysics_Player::Save
================
*/
void idPhysics_Player::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idPhysics_Player::Save( idSaveGame *savefile )\r\n");
}


/*
================
idPhysics_Player::Restore
================
*/
void idPhysics_Player::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idPhysics_Player::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idPhysics_Player::SetPlayerInput
================
*/
void idPhysics_Player::SetPlayerInput( const usercmd_t &cmd, const idAngles &newViewAngles ) {
    Sys_Printf("void idPhysics_Player::SetPlayerInput( const usercmd_t &cmd, const idAngles &newViewAngles )\r\n");
}


/*
================
idPhysics_Player::SetSpeed
================
*/
void idPhysics_Player::SetSpeed( const float newWalkSpeed, const float newCrouchSpeed ) {
    Sys_Printf("void idPhysics_Player::SetSpeed( const float newWalkSpeed, const float newCrouchSpeed )\r\n");
}


/*
================
idPhysics_Player::SetMaxStepHeight
================
*/
void idPhysics_Player::SetMaxStepHeight( const float newMaxStepHeight ) {
    Sys_Printf("void idPhysics_Player::SetMaxStepHeight( const float newMaxStepHeight )\r\n");
}


/*
================
idPhysics_Player::GetMaxStepHeight
================
*/
float idPhysics_Player::GetMaxStepHeight( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPhysics_Player::GetMaxStepHeight( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Player::SetMaxJumpHeight
================
*/
void idPhysics_Player::SetMaxJumpHeight( const float newMaxJumpHeight ) {
    Sys_Printf("void idPhysics_Player::SetMaxJumpHeight( const float newMaxJumpHeight )\r\n");
}


/*
================
idPhysics_Player::SetMovementType
================
*/
void idPhysics_Player::SetMovementType( const pmtype_t type ) {
    Sys_Printf("void idPhysics_Player::SetMovementType( const pmtype_t type )\r\n");
}


/*
================
idPhysics_Player::SetKnockBack
================
*/
void idPhysics_Player::SetKnockBack( const int knockBackTime ) {
    Sys_Printf("void idPhysics_Player::SetKnockBack( const int knockBackTime )\r\n");
}


/*
================
idPhysics_Player::SetDebugLevel
================
*/
void idPhysics_Player::SetDebugLevel( bool set ) {
    Sys_Printf("void idPhysics_Player::SetDebugLevel( bool set )\r\n");
}


/*
================
idPhysics_Player::Evaluate
================
*/
bool idPhysics_Player::Evaluate( int timeStepMSec, int endTimeMSec ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Player::Evaluate( int timeStepMSec, int endTimeMSec )\r\n");
    return retVal;
}


/*
================
idPhysics_Player::UpdateTime
================
*/
void idPhysics_Player::UpdateTime( int endTimeMSec ) {
    Sys_Printf("void idPhysics_Player::UpdateTime( int endTimeMSec )\r\n");
}


/*
================
idPhysics_Player::GetTime
================
*/
int idPhysics_Player::GetTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Player::GetTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Player::GetImpactInfo
================
*/
void idPhysics_Player::GetImpactInfo( const int id, const idVec3 &point, impactInfo_t *info ) const {
    Sys_Printf("void idPhysics_Player::GetImpactInfo( const int id, const idVec3 &point, impactInfo_t *info )\r\n");
}


/*
================
idPhysics_Player::ApplyImpulse
================
*/
void idPhysics_Player::ApplyImpulse( const int id, const idVec3 &point, const idVec3 &impulse ) {
    Sys_Printf("void idPhysics_Player::ApplyImpulse( const int id, const idVec3 &point, const idVec3 &impulse )\r\n");
}


/*
================
idPhysics_Player::IsAtRest
================
*/
bool idPhysics_Player::IsAtRest( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Player::IsAtRest( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Player::GetRestStartTime
================
*/
int idPhysics_Player::GetRestStartTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Player::GetRestStartTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Player::SaveState
================
*/
void idPhysics_Player::SaveState( void ) {
    Sys_Printf("void idPhysics_Player::SaveState( void )\r\n");
}


/*
================
idPhysics_Player::RestoreState
================
*/
void idPhysics_Player::RestoreState( void ) {
    Sys_Printf("void idPhysics_Player::RestoreState( void )\r\n");
}


/*
================
idPhysics_Player::SetOrigin
================
*/
void idPhysics_Player::SetOrigin( const idVec3 &newOrigin, int id ) {
    Sys_Printf("void idPhysics_Player::SetOrigin( const idVec3 &newOrigin, int id )\r\n");
}


/*
================
idPhysics_Player::GetOrigin
================
*/
const idVec3 & idPhysics_Player::PlayerGetOrigin( void ) const {
	return current.origin;
}

/*
================
idPhysics_Player::SetAxis
================
*/
void idPhysics_Player::SetAxis( const idMat3 &newAxis, int id ) {
    Sys_Printf("void idPhysics_Player::SetAxis( const idMat3 &newAxis, int id )\r\n");
}


/*
================
idPhysics_Player::Translate
================
*/
void idPhysics_Player::Translate( const idVec3 &translation, int id ) {
    Sys_Printf("void idPhysics_Player::Translate( const idVec3 &translation, int id )\r\n");
}


/*
================
idPhysics_Player::Rotate
================
*/
void idPhysics_Player::Rotate( const idRotation &rotation, int id ) {
    Sys_Printf("void idPhysics_Player::Rotate( const idRotation &rotation, int id )\r\n");
}


/*
================
idPhysics_Player::SetLinearVelocity
================
*/
void idPhysics_Player::SetLinearVelocity( const idVec3 &newLinearVelocity, int id ) {
    Sys_Printf("void idPhysics_Player::SetLinearVelocity( const idVec3 &newLinearVelocity, int id )\r\n");
}


/*
================
idPhysics_Player::GetLinearVelocity
================
*/
const idVec3 &idPhysics_Player::GetLinearVelocity( int id ) const {
	return current.velocity;
}

/*
================
idPhysics_Player::SetPushed
================
*/
void idPhysics_Player::SetPushed( int deltaTime ) {
    Sys_Printf("void idPhysics_Player::SetPushed( int deltaTime )\r\n");
}


/*
================
idPhysics_Player::GetPushedLinearVelocity
================
*/
const idVec3 &idPhysics_Player::GetPushedLinearVelocity( const int id ) const {
	return current.pushVelocity;
}

/*
================
idPhysics_Player::ClearPushedVelocity
================
*/
void idPhysics_Player::ClearPushedVelocity( void ) {
    Sys_Printf("void idPhysics_Player::ClearPushedVelocity( void )\r\n");
}


/*
================
idPhysics_Player::SetMaster

  the binding is never orientated
================
*/
void idPhysics_Player::SetMaster( idEntity *master, const bool orientated ) {
    Sys_Printf("void idPhysics_Player::SetMaster( idEntity *master, const bool orientated )\r\n");
}


const float	PLAYER_VELOCITY_MAX				= 4000;
const int	PLAYER_VELOCITY_TOTAL_BITS		= 16;
const int	PLAYER_VELOCITY_EXPONENT_BITS	= idMath::BitsForInteger( idMath::BitsForFloat( PLAYER_VELOCITY_MAX ) ) + 1;
const int	PLAYER_VELOCITY_MANTISSA_BITS	= PLAYER_VELOCITY_TOTAL_BITS - 1 - PLAYER_VELOCITY_EXPONENT_BITS;
const int	PLAYER_MOVEMENT_TYPE_BITS		= 3;
const int	PLAYER_MOVEMENT_FLAGS_BITS		= 8;

/*
================
idPhysics_Player::WriteToSnapshot
================
*/
void idPhysics_Player::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idPhysics_Player::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idPhysics_Player::ReadFromSnapshot
================
*/
void idPhysics_Player::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idPhysics_Player::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


