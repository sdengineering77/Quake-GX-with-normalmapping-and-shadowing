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

CLASS_DECLARATION( idPhysics_Actor, idPhysics_Monster )
END_CLASS

const float OVERCLIP = 1.001f;

/*
=====================
idPhysics_Monster::CheckGround
=====================
*/
void idPhysics_Monster::CheckGround( monsterPState_t &state ) {
    Sys_Printf("void idPhysics_Monster::CheckGround( monsterPState_t &state )\r\n");
}


/*
=====================
idPhysics_Monster::SlideMove
=====================
*/
monsterMoveResult_t idPhysics_Monster::SlideMove( idVec3 &start, idVec3 &velocity, const idVec3 &delta ) {
    monsterMoveResult_t retVal;
    memset(&retVal, 0, sizeof(monsterMoveResult_t));
    Sys_Printf("monsterMoveResult_t idPhysics_Monster::SlideMove( idVec3 &start, idVec3 &velocity, const idVec3 &delta )\r\n");
    return retVal;
}


/*
=====================
idPhysics_Monster::StepMove

  move start into the delta direction
  the velocity is clipped conform any collisions
=====================
*/
monsterMoveResult_t idPhysics_Monster::StepMove( idVec3 &start, idVec3 &velocity, const idVec3 &delta ) {
    monsterMoveResult_t retVal;
    memset(&retVal, 0, sizeof(monsterMoveResult_t));
    Sys_Printf("monsterMoveResult_t idPhysics_Monster::StepMove( idVec3 &start, idVec3 &velocity, const idVec3 &delta )\r\n");
    return retVal;
}


/*
================
idPhysics_Monster::Activate
================
*/
void idPhysics_Monster::Activate( void ) {
    Sys_Printf("void idPhysics_Monster::Activate( void )\r\n");
}


/*
================
idPhysics_Monster::Rest
================
*/
void idPhysics_Monster::Rest( void ) {
    Sys_Printf("void idPhysics_Monster::Rest( void )\r\n");
}


/*
================
idPhysics_Monster::PutToRest
================
*/
void idPhysics_Monster::PutToRest( void ) {
    Sys_Printf("void idPhysics_Monster::PutToRest( void )\r\n");
}


/*
================
idPhysics_Monster::idPhysics_Monster
================
*/
idPhysics_Monster::idPhysics_Monster( void ) {

	memset( &current, 0, sizeof( current ) );
	current.atRest = -1;
	saved = current;
	
	delta.Zero();
	maxStepHeight = 18.0f;
	minFloorCosine = 0.7f;
	moveResult = MM_OK;
	forceDeltaMove = false;
	fly = false;
	useVelocityMove = false;
	noImpact = false;
	blockingEntity = NULL;
}

/*
================
idPhysics_Monster_SavePState
================
*/
void idPhysics_Monster_SavePState( idSaveGame *savefile, const monsterPState_t &state ) {
    Sys_Printf("void idPhysics_Monster_SavePState( idSaveGame *savefile, const monsterPState_t &state )\r\n");
}


/*
================
idPhysics_Monster_RestorePState
================
*/
void idPhysics_Monster_RestorePState( idRestoreGame *savefile, monsterPState_t &state ) {
    Sys_Printf("void idPhysics_Monster_RestorePState( idRestoreGame *savefile, monsterPState_t &state )\r\n");
}


/*
================
idPhysics_Monster::Save
================
*/
void idPhysics_Monster::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idPhysics_Monster::Save( idSaveGame *savefile )\r\n");
}


/*
================
idPhysics_Monster::Restore
================
*/
void idPhysics_Monster::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idPhysics_Monster::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idPhysics_Monster::SetDelta
================
*/
void idPhysics_Monster::SetDelta( const idVec3 &d ) {
    Sys_Printf("void idPhysics_Monster::SetDelta( const idVec3 &d )\r\n");
}


/*
================
idPhysics_Monster::SetMaxStepHeight
================
*/
void idPhysics_Monster::SetMaxStepHeight( const float newMaxStepHeight ) {
    Sys_Printf("void idPhysics_Monster::SetMaxStepHeight( const float newMaxStepHeight )\r\n");
}


/*
================
idPhysics_Monster::GetMaxStepHeight
================
*/
float idPhysics_Monster::GetMaxStepHeight( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPhysics_Monster::GetMaxStepHeight( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Monster::OnGround
================
*/
bool idPhysics_Monster::OnGround( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Monster::OnGround( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Monster::GetSlideMoveEntity
================
*/
idEntity *idPhysics_Monster::GetSlideMoveEntity( void ) const {
    Sys_Printf("idEntity *idPhysics_Monster::GetSlideMoveEntity( void )\r\n");
    return NULL;
}


/*
================
idPhysics_Monster::GetMoveResult
================
*/
monsterMoveResult_t idPhysics_Monster::GetMoveResult( void ) const {
    monsterMoveResult_t retVal;
    memset(&retVal, 0, sizeof(monsterMoveResult_t));
    Sys_Printf("monsterMoveResult_t idPhysics_Monster::GetMoveResult( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Monster::ForceDeltaMove
================
*/
void idPhysics_Monster::ForceDeltaMove( bool force ) {
    Sys_Printf("void idPhysics_Monster::ForceDeltaMove( bool force )\r\n");
}


/*
================
idPhysics_Monster::UseFlyMove
================
*/
void idPhysics_Monster::UseFlyMove( bool force ) {
    Sys_Printf("void idPhysics_Monster::UseFlyMove( bool force )\r\n");
}


/*
================
idPhysics_Monster::UseVelocityMove
================
*/
void idPhysics_Monster::UseVelocityMove( bool force ) {
    Sys_Printf("void idPhysics_Monster::UseVelocityMove( bool force )\r\n");
}


/*
================
idPhysics_Monster::EnableImpact
================
*/
void idPhysics_Monster::EnableImpact( void ) {
    Sys_Printf("void idPhysics_Monster::EnableImpact( void )\r\n");
}


/*
================
idPhysics_Monster::DisableImpact
================
*/
void idPhysics_Monster::DisableImpact( void ) {
    Sys_Printf("void idPhysics_Monster::DisableImpact( void )\r\n");
}


/*
================
idPhysics_Monster::Evaluate
================
*/
bool idPhysics_Monster::Evaluate( int timeStepMSec, int endTimeMSec ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Monster::Evaluate( int timeStepMSec, int endTimeMSec )\r\n");
    return retVal;
}


/*
================
idPhysics_Monster::UpdateTime
================
*/
void idPhysics_Monster::UpdateTime( int endTimeMSec ) {
    Sys_Printf("void idPhysics_Monster::UpdateTime( int endTimeMSec )\r\n");
}


/*
================
idPhysics_Monster::GetTime
================
*/
int idPhysics_Monster::GetTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Monster::GetTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Monster::GetImpactInfo
================
*/
void idPhysics_Monster::GetImpactInfo( const int id, const idVec3 &point, impactInfo_t *info ) const {
    Sys_Printf("void idPhysics_Monster::GetImpactInfo( const int id, const idVec3 &point, impactInfo_t *info )\r\n");
}


/*
================
idPhysics_Monster::ApplyImpulse
================
*/
void idPhysics_Monster::ApplyImpulse( const int id, const idVec3 &point, const idVec3 &impulse ) {
    Sys_Printf("void idPhysics_Monster::ApplyImpulse( const int id, const idVec3 &point, const idVec3 &impulse )\r\n");
}


/*
================
idPhysics_Monster::IsAtRest
================
*/
bool idPhysics_Monster::IsAtRest( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Monster::IsAtRest( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Monster::GetRestStartTime
================
*/
int idPhysics_Monster::GetRestStartTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Monster::GetRestStartTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Monster::SaveState
================
*/
void idPhysics_Monster::SaveState( void ) {
    Sys_Printf("void idPhysics_Monster::SaveState( void )\r\n");
}


/*
================
idPhysics_Monster::RestoreState
================
*/
void idPhysics_Monster::RestoreState( void ) {
    Sys_Printf("void idPhysics_Monster::RestoreState( void )\r\n");
}


/*
================
idPhysics_Player::SetOrigin
================
*/
void idPhysics_Monster::SetOrigin( const idVec3 &newOrigin, int id ) {
    Sys_Printf("void idPhysics_Monster::SetOrigin( const idVec3 &newOrigin, int id )\r\n");
}


/*
================
idPhysics_Player::SetAxis
================
*/
void idPhysics_Monster::SetAxis( const idMat3 &newAxis, int id ) {
    Sys_Printf("void idPhysics_Monster::SetAxis( const idMat3 &newAxis, int id )\r\n");
}


/*
================
idPhysics_Monster::Translate
================
*/
void idPhysics_Monster::Translate( const idVec3 &translation, int id ) {
    Sys_Printf("void idPhysics_Monster::Translate( const idVec3 &translation, int id )\r\n");
}


/*
================
idPhysics_Monster::Rotate
================
*/
void idPhysics_Monster::Rotate( const idRotation &rotation, int id ) {
    Sys_Printf("void idPhysics_Monster::Rotate( const idRotation &rotation, int id )\r\n");
}


/*
================
idPhysics_Monster::SetLinearVelocity
================
*/
void idPhysics_Monster::SetLinearVelocity( const idVec3 &newLinearVelocity, int id ) {
    Sys_Printf("void idPhysics_Monster::SetLinearVelocity( const idVec3 &newLinearVelocity, int id )\r\n");
}


/*
================
idPhysics_Monster::GetLinearVelocity
================
*/
const idVec3 &idPhysics_Monster::GetLinearVelocity( int id ) const {
	return current.velocity;
}

/*
================
idPhysics_Monster::SetPushed
================
*/
void idPhysics_Monster::SetPushed( int deltaTime ) {
    Sys_Printf("void idPhysics_Monster::SetPushed( int deltaTime )\r\n");
}


/*
================
idPhysics_Monster::GetPushedLinearVelocity
================
*/
const idVec3 &idPhysics_Monster::GetPushedLinearVelocity( const int id ) const {
	return current.pushVelocity;
}

/*
================
idPhysics_Monster::SetMaster

  the binding is never orientated
================
*/
void idPhysics_Monster::SetMaster( idEntity *master, const bool orientated ) {
    Sys_Printf("void idPhysics_Monster::SetMaster( idEntity *master, const bool orientated )\r\n");
}


const float	MONSTER_VELOCITY_MAX			= 4000;
const int	MONSTER_VELOCITY_TOTAL_BITS		= 16;
const int	MONSTER_VELOCITY_EXPONENT_BITS	= idMath::BitsForInteger( idMath::BitsForFloat( MONSTER_VELOCITY_MAX ) ) + 1;
const int	MONSTER_VELOCITY_MANTISSA_BITS	= MONSTER_VELOCITY_TOTAL_BITS - 1 - MONSTER_VELOCITY_EXPONENT_BITS;

/*
================
idPhysics_Monster::WriteToSnapshot
================
*/
void idPhysics_Monster::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idPhysics_Monster::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idPhysics_Monster::ReadFromSnapshot
================
*/
void idPhysics_Monster::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idPhysics_Monster::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}

