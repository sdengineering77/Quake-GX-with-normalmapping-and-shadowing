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

CLASS_DECLARATION( idPhysics_Base, idPhysics_RigidBody )
END_CLASS

const float STOP_SPEED		= 10.0f;


#undef RB_TIMINGS

#ifdef RB_TIMINGS
static int lastTimerReset = 0;
static int numRigidBodies = 0;
static idTimer timer_total, timer_collision;
#endif


/*
================
RigidBodyDerivatives
================
*/
void RigidBodyDerivatives( const float t, const void *clientData, const float *state, float *derivatives ) {
    Sys_Printf("void RigidBodyDerivatives( const float t, const void *clientData, const float *state, float *derivatives )\r\n");
}


/*
================
idPhysics_RigidBody::Integrate

  Calculate next state from the current state using an integrator.
================
*/
void idPhysics_RigidBody::Integrate( float deltaTime, rigidBodyPState_t &next ) {
    Sys_Printf("void idPhysics_RigidBody::Integrate( float deltaTime, rigidBodyPState_t &next )\r\n");
}


/*
================
idPhysics_RigidBody::CollisionImpulse

  Calculates the collision impulse using the velocity relative to the collision object.
  The current state should be set to the moment of impact.
================
*/
bool idPhysics_RigidBody::CollisionImpulse( const trace_t &collision, idVec3 &impulse ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_RigidBody::CollisionImpulse( const trace_t &collision, idVec3 &impulse )\r\n");
    return retVal;
}


/*
================
idPhysics_RigidBody::CheckForCollisions

  Check for collisions between the current and next state.
  If there is a collision the next state is set to the state at the moment of impact.
================
*/
bool idPhysics_RigidBody::CheckForCollisions( const float deltaTime, rigidBodyPState_t &next, trace_t &collision ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_RigidBody::CheckForCollisions( const float deltaTime, rigidBodyPState_t &next, trace_t &collision )\r\n");
    return retVal;
}


/*
================
idPhysics_RigidBody::ContactFriction

  Does not solve friction for multiple simultaneous contacts but applies contact friction in isolation.
  Uses absolute velocity at the contact points instead of the velocity relative to the contact object.
================
*/
void idPhysics_RigidBody::ContactFriction( float deltaTime ) {
    Sys_Printf("void idPhysics_RigidBody::ContactFriction( float deltaTime )\r\n");
}


/*
================
idPhysics_RigidBody::TestIfAtRest

  Returns true if the body is considered at rest.
  Does not catch all cases where the body is at rest but is generally good enough.
================
*/
bool idPhysics_RigidBody::TestIfAtRest( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_RigidBody::TestIfAtRest( void )\r\n");
    return retVal;
}


/*
================
idPhysics_RigidBody::DropToFloorAndRest

  Drops the object straight down to the floor and verifies if the object is at rest on the floor.
================
*/
void idPhysics_RigidBody::DropToFloorAndRest( void ) {
    Sys_Printf("void idPhysics_RigidBody::DropToFloorAndRest( void )\r\n");
}


/*
================
idPhysics_RigidBody::DebugDraw
================
*/
void idPhysics_RigidBody::DebugDraw( void ) {
    Sys_Printf("void idPhysics_RigidBody::DebugDraw( void )\r\n");
}


/*
================
idPhysics_RigidBody::idPhysics_RigidBody
================
*/
idPhysics_RigidBody::idPhysics_RigidBody( void ) {

	// set default rigid body properties
	SetClipMask( MASK_SOLID );
	SetBouncyness( 0.6f );
	SetFriction( 0.6f, 0.6f, 0.0f );
	clipModel = NULL;

	memset( &current, 0, sizeof( current ) );

	current.atRest = -1;
	current.lastTimeStep = USERCMD_MSEC;

	current.i.position.Zero();
	current.i.orientation.Identity();

	current.i.linearMomentum.Zero();
	current.i.angularMomentum.Zero();

	saved = current;

	mass = 1.0f;
	inverseMass = 1.0f;
	centerOfMass.Zero();
	inertiaTensor.Identity();
	inverseInertiaTensor.Identity();

	// use the least expensive euler integrator
	integrator = new idODE_Euler( sizeof(rigidBodyIState_t) / sizeof(float), RigidBodyDerivatives, this );

	dropToFloor = false;
	noImpact = false;
	noContact = false;

	hasMaster = false;
	isOrientated = false;

#ifdef RB_TIMINGS
	lastTimerReset = 0;
#endif
}

/*
================
idPhysics_RigidBody::~idPhysics_RigidBody
================
*/
idPhysics_RigidBody::~idPhysics_RigidBody( void ) {
	if ( clipModel ) {
		delete clipModel;
		clipModel = NULL;
	}
	delete integrator;
}

/*
================
idPhysics_RigidBody_SavePState
================
*/
void idPhysics_RigidBody_SavePState( idSaveGame *savefile, const rigidBodyPState_t &state ) {
    Sys_Printf("void idPhysics_RigidBody_SavePState( idSaveGame *savefile, const rigidBodyPState_t &state )\r\n");
}


/*
================
idPhysics_RigidBody_RestorePState
================
*/
void idPhysics_RigidBody_RestorePState( idRestoreGame *savefile, rigidBodyPState_t &state ) {
    Sys_Printf("void idPhysics_RigidBody_RestorePState( idRestoreGame *savefile, rigidBodyPState_t &state )\r\n");
}


/*
================
idPhysics_RigidBody::Save
================
*/
void idPhysics_RigidBody::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idPhysics_RigidBody::Save( idSaveGame *savefile )\r\n");
}


/*
================
idPhysics_RigidBody::Restore
================
*/
void idPhysics_RigidBody::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idPhysics_RigidBody::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idPhysics_RigidBody::SetClipModel
================
*/
#define MAX_INERTIA_SCALE		10.0f

void idPhysics_RigidBody::SetClipModel( idClipModel *model, const float density, int id, bool freeOld ) {
    Sys_Printf("void idPhysics_RigidBody::SetClipModel( idClipModel *model, const float density, int id, bool freeOld )\r\n");
}


/*
================
idPhysics_RigidBody::GetClipModel
================
*/
idClipModel *idPhysics_RigidBody::GetClipModel( int id ) const {
    Sys_Printf("idClipModel *idPhysics_RigidBody::GetClipModel( int id )\r\n");
    return NULL;
}


/*
================
idPhysics_RigidBody::GetNumClipModels
================
*/
int idPhysics_RigidBody::GetNumClipModels( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_RigidBody::GetNumClipModels( void )\r\n");
    return retVal;
}


/*
================
idPhysics_RigidBody::SetMass
================
*/
void idPhysics_RigidBody::SetMass( float mass, int id ) {
    Sys_Printf("void idPhysics_RigidBody::SetMass( float mass, int id )\r\n");
}


/*
================
idPhysics_RigidBody::GetMass
================
*/
float idPhysics_RigidBody::GetMass( int id ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPhysics_RigidBody::GetMass( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_RigidBody::SetFriction
================
*/
void idPhysics_RigidBody::SetFriction( const float linear, const float angular, const float contact ) {
    Sys_Printf("void idPhysics_RigidBody::SetFriction( const float linear, const float angular, const float contact )\r\n");
}


/*
================
idPhysics_RigidBody::SetBouncyness
================
*/
void idPhysics_RigidBody::SetBouncyness( const float b ) {
    Sys_Printf("void idPhysics_RigidBody::SetBouncyness( const float b )\r\n");
}


/*
================
idPhysics_RigidBody::Rest
================
*/
void idPhysics_RigidBody::Rest( void ) {
    Sys_Printf("void idPhysics_RigidBody::Rest( void )\r\n");
}


/*
================
idPhysics_RigidBody::DropToFloor
================
*/
void idPhysics_RigidBody::DropToFloor( void ) {
    Sys_Printf("void idPhysics_RigidBody::DropToFloor( void )\r\n");
}


/*
================
idPhysics_RigidBody::NoContact
================
*/
void idPhysics_RigidBody::NoContact( void ) {
    Sys_Printf("void idPhysics_RigidBody::NoContact( void )\r\n");
}


/*
================
idPhysics_RigidBody::Activate
================
*/
void idPhysics_RigidBody::Activate( void ) {
    Sys_Printf("void idPhysics_RigidBody::Activate( void )\r\n");
}


/*
================
idPhysics_RigidBody::PutToRest

  put to rest untill something collides with this physics object
================
*/
void idPhysics_RigidBody::PutToRest( void ) {
    Sys_Printf("void idPhysics_RigidBody::PutToRest( void )\r\n");
}


/*
================
idPhysics_RigidBody::EnableImpact
================
*/
void idPhysics_RigidBody::EnableImpact( void ) {
    Sys_Printf("void idPhysics_RigidBody::EnableImpact( void )\r\n");
}


/*
================
idPhysics_RigidBody::DisableImpact
================
*/
void idPhysics_RigidBody::DisableImpact( void ) {
    Sys_Printf("void idPhysics_RigidBody::DisableImpact( void )\r\n");
}


/*
================
idPhysics_RigidBody::SetContents
================
*/
void idPhysics_RigidBody::SetContents( int contents, int id ) {
    Sys_Printf("void idPhysics_RigidBody::SetContents( int contents, int id )\r\n");
}


/*
================
idPhysics_RigidBody::GetContents
================
*/
int idPhysics_RigidBody::GetContents( int id ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_RigidBody::GetContents( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_RigidBody::GetBounds
================
*/
const idBounds &idPhysics_RigidBody::GetBounds( int id ) const {
	return clipModel->GetBounds();
}

/*
================
idPhysics_RigidBody::GetAbsBounds
================
*/
const idBounds &idPhysics_RigidBody::GetAbsBounds( int id ) const {
	return clipModel->GetAbsBounds();
}

/*
================
idPhysics_RigidBody::Evaluate

  Evaluate the impulse based rigid body physics.
  When a collision occurs an impulse is applied at the moment of impact but
  the remaining time after the collision is ignored.
================
*/
bool idPhysics_RigidBody::Evaluate( int timeStepMSec, int endTimeMSec ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_RigidBody::Evaluate( int timeStepMSec, int endTimeMSec )\r\n");
    return retVal;
}


/*
================
idPhysics_RigidBody::UpdateTime
================
*/
void idPhysics_RigidBody::UpdateTime( int endTimeMSec ) {
    Sys_Printf("void idPhysics_RigidBody::UpdateTime( int endTimeMSec )\r\n");
}


/*
================
idPhysics_RigidBody::GetTime
================
*/
int idPhysics_RigidBody::GetTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_RigidBody::GetTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_RigidBody::GetImpactInfo
================
*/
void idPhysics_RigidBody::GetImpactInfo( const int id, const idVec3 &point, impactInfo_t *info ) const {
    Sys_Printf("void idPhysics_RigidBody::GetImpactInfo( const int id, const idVec3 &point, impactInfo_t *info )\r\n");
}


/*
================
idPhysics_RigidBody::ApplyImpulse
================
*/
void idPhysics_RigidBody::ApplyImpulse( const int id, const idVec3 &point, const idVec3 &impulse ) {
    Sys_Printf("void idPhysics_RigidBody::ApplyImpulse( const int id, const idVec3 &point, const idVec3 &impulse )\r\n");
}


/*
================
idPhysics_RigidBody::AddForce
================
*/
void idPhysics_RigidBody::AddForce( const int id, const idVec3 &point, const idVec3 &force ) {
    Sys_Printf("void idPhysics_RigidBody::AddForce( const int id, const idVec3 &point, const idVec3 &force )\r\n");
}


/*
================
idPhysics_RigidBody::IsAtRest
================
*/
bool idPhysics_RigidBody::IsAtRest( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_RigidBody::IsAtRest( void )\r\n");
    return retVal;
}


/*
================
idPhysics_RigidBody::GetRestStartTime
================
*/
int idPhysics_RigidBody::GetRestStartTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_RigidBody::GetRestStartTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_RigidBody::IsPushable
================
*/
bool idPhysics_RigidBody::IsPushable( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_RigidBody::IsPushable( void )\r\n");
    return retVal;
}


/*
================
idPhysics_RigidBody::SaveState
================
*/
void idPhysics_RigidBody::SaveState( void ) {
    Sys_Printf("void idPhysics_RigidBody::SaveState( void )\r\n");
}


/*
================
idPhysics_RigidBody::RestoreState
================
*/
void idPhysics_RigidBody::RestoreState( void ) {
    Sys_Printf("void idPhysics_RigidBody::RestoreState( void )\r\n");
}


/*
================
idPhysics::SetOrigin
================
*/
void idPhysics_RigidBody::SetOrigin( const idVec3 &newOrigin, int id ) {
    Sys_Printf("void idPhysics_RigidBody::SetOrigin( const idVec3 &newOrigin, int id )\r\n");
}


/*
================
idPhysics::SetAxis
================
*/
void idPhysics_RigidBody::SetAxis( const idMat3 &newAxis, int id ) {
    Sys_Printf("void idPhysics_RigidBody::SetAxis( const idMat3 &newAxis, int id )\r\n");
}


/*
================
idPhysics::Move
================
*/
void idPhysics_RigidBody::Translate( const idVec3 &translation, int id ) {
    Sys_Printf("void idPhysics_RigidBody::Translate( const idVec3 &translation, int id )\r\n");
}


/*
================
idPhysics::Rotate
================
*/
void idPhysics_RigidBody::Rotate( const idRotation &rotation, int id ) {
    Sys_Printf("void idPhysics_RigidBody::Rotate( const idRotation &rotation, int id )\r\n");
}


/*
================
idPhysics_RigidBody::GetOrigin
================
*/
const idVec3 &idPhysics_RigidBody::GetOrigin( int id ) const {
	return current.i.position;
}

/*
================
idPhysics_RigidBody::GetAxis
================
*/
const idMat3 &idPhysics_RigidBody::GetAxis( int id ) const {
	return current.i.orientation;
}

/*
================
idPhysics_RigidBody::SetLinearVelocity
================
*/
void idPhysics_RigidBody::SetLinearVelocity( const idVec3 &newLinearVelocity, int id ) {
    Sys_Printf("void idPhysics_RigidBody::SetLinearVelocity( const idVec3 &newLinearVelocity, int id )\r\n");
}


/*
================
idPhysics_RigidBody::SetAngularVelocity
================
*/
void idPhysics_RigidBody::SetAngularVelocity( const idVec3 &newAngularVelocity, int id ) {
    Sys_Printf("void idPhysics_RigidBody::SetAngularVelocity( const idVec3 &newAngularVelocity, int id )\r\n");
}


/*
================
idPhysics_RigidBody::GetLinearVelocity
================
*/
const idVec3 &idPhysics_RigidBody::GetLinearVelocity( int id ) const {
	static idVec3 curLinearVelocity;
	curLinearVelocity = current.i.linearMomentum * inverseMass;
	return curLinearVelocity;
}

/*
================
idPhysics_RigidBody::GetAngularVelocity
================
*/
const idVec3 &idPhysics_RigidBody::GetAngularVelocity( int id ) const {
	static idVec3 curAngularVelocity;
	idMat3 inverseWorldInertiaTensor;

	inverseWorldInertiaTensor = current.i.orientation.Transpose() * inverseInertiaTensor * current.i.orientation;
	curAngularVelocity = inverseWorldInertiaTensor * current.i.angularMomentum;
	return curAngularVelocity;
}

/*
================
idPhysics_RigidBody::ClipTranslation
================
*/
void idPhysics_RigidBody::ClipTranslation( trace_t &results, const idVec3 &translation, const idClipModel *model ) const {
    Sys_Printf("void idPhysics_RigidBody::ClipTranslation( trace_t &results, const idVec3 &translation, const idClipModel *model )\r\n");
}


/*
================
idPhysics_RigidBody::ClipRotation
================
*/
void idPhysics_RigidBody::ClipRotation( trace_t &results, const idRotation &rotation, const idClipModel *model ) const {
    Sys_Printf("void idPhysics_RigidBody::ClipRotation( trace_t &results, const idRotation &rotation, const idClipModel *model )\r\n");
}


/*
================
idPhysics_RigidBody::ClipContents
================
*/
int idPhysics_RigidBody::ClipContents( const idClipModel *model ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_RigidBody::ClipContents( const idClipModel *model )\r\n");
    return retVal;
}


/*
================
idPhysics_RigidBody::DisableClip
================
*/
void idPhysics_RigidBody::DisableClip( void ) {
    Sys_Printf("void idPhysics_RigidBody::DisableClip( void )\r\n");
}


/*
================
idPhysics_RigidBody::EnableClip
================
*/
void idPhysics_RigidBody::EnableClip( void ) {
    Sys_Printf("void idPhysics_RigidBody::EnableClip( void )\r\n");
}


/*
================
idPhysics_RigidBody::UnlinkClip
================
*/
void idPhysics_RigidBody::UnlinkClip( void ) {
    Sys_Printf("void idPhysics_RigidBody::UnlinkClip( void )\r\n");
}


/*
================
idPhysics_RigidBody::LinkClip
================
*/
void idPhysics_RigidBody::LinkClip( void ) {
    Sys_Printf("void idPhysics_RigidBody::LinkClip( void )\r\n");
}


/*
================
idPhysics_RigidBody::EvaluateContacts
================
*/
bool idPhysics_RigidBody::EvaluateContacts( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_RigidBody::EvaluateContacts( void )\r\n");
    return retVal;
}


/*
================
idPhysics_RigidBody::SetPushed
================
*/
void idPhysics_RigidBody::SetPushed( int deltaTime ) {
    Sys_Printf("void idPhysics_RigidBody::SetPushed( int deltaTime )\r\n");
}


/*
================
idPhysics_RigidBody::GetPushedLinearVelocity
================
*/
const idVec3 &idPhysics_RigidBody::GetPushedLinearVelocity( const int id ) const {
	return current.pushVelocity.SubVec3(0);
}

/*
================
idPhysics_RigidBody::GetPushedAngularVelocity
================
*/
const idVec3 &idPhysics_RigidBody::GetPushedAngularVelocity( const int id ) const {
	return current.pushVelocity.SubVec3(1);
}

/*
================
idPhysics_RigidBody::SetMaster
================
*/
void idPhysics_RigidBody::SetMaster( idEntity *master, const bool orientated ) {
    Sys_Printf("void idPhysics_RigidBody::SetMaster( idEntity *master, const bool orientated )\r\n");
}


const float	RB_VELOCITY_MAX				= 16000;
const int	RB_VELOCITY_TOTAL_BITS		= 16;
const int	RB_VELOCITY_EXPONENT_BITS	= idMath::BitsForInteger( idMath::BitsForFloat( RB_VELOCITY_MAX ) ) + 1;
const int	RB_VELOCITY_MANTISSA_BITS	= RB_VELOCITY_TOTAL_BITS - 1 - RB_VELOCITY_EXPONENT_BITS;
const float	RB_MOMENTUM_MAX				= 1e20f;
const int	RB_MOMENTUM_TOTAL_BITS		= 16;
const int	RB_MOMENTUM_EXPONENT_BITS	= idMath::BitsForInteger( idMath::BitsForFloat( RB_MOMENTUM_MAX ) ) + 1;
const int	RB_MOMENTUM_MANTISSA_BITS	= RB_MOMENTUM_TOTAL_BITS - 1 - RB_MOMENTUM_EXPONENT_BITS;
const float	RB_FORCE_MAX				= 1e20f;
const int	RB_FORCE_TOTAL_BITS			= 16;
const int	RB_FORCE_EXPONENT_BITS		= idMath::BitsForInteger( idMath::BitsForFloat( RB_FORCE_MAX ) ) + 1;
const int	RB_FORCE_MANTISSA_BITS		= RB_FORCE_TOTAL_BITS - 1 - RB_FORCE_EXPONENT_BITS;

/*
================
idPhysics_RigidBody::WriteToSnapshot
================
*/
void idPhysics_RigidBody::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idPhysics_RigidBody::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idPhysics_RigidBody::ReadFromSnapshot
================
*/
void idPhysics_RigidBody::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idPhysics_RigidBody::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}

