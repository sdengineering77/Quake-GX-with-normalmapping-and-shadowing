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

CLASS_DECLARATION( idPhysics_Base, idPhysics_Parametric )
END_CLASS


/*
================
idPhysics_Parametric::Activate
================
*/
void idPhysics_Parametric::Activate( void ) {
    Sys_Printf("void idPhysics_Parametric::Activate( void )\r\n");
}


/*
================
idPhysics_Parametric::TestIfAtRest
================
*/
bool idPhysics_Parametric::TestIfAtRest( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Parametric::TestIfAtRest( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::Rest
================
*/
void idPhysics_Parametric::Rest( void ) {
    Sys_Printf("void idPhysics_Parametric::Rest( void )\r\n");
}


/*
================
idPhysics_Parametric::idPhysics_Parametric
================
*/
idPhysics_Parametric::idPhysics_Parametric( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idPhysics_Parametric::idPhysics_Parametric( void ) size %d\r\n", sizeof(*this));
#endif


	current.time = gameLocal.time;
	current.atRest = -1;
	current.useSplineAngles = false;
	current.origin.Zero();
	current.angles.Zero();
	current.axis.Identity();
	current.localOrigin.Zero();
	current.localAngles.Zero();
	current.linearExtrapolation.Init( 0, 0, vec3_zero, vec3_zero, vec3_zero, EXTRAPOLATION_NONE );
	current.angularExtrapolation.Init( 0, 0, ang_zero, ang_zero, ang_zero, EXTRAPOLATION_NONE );
	current.linearInterpolation.Init( 0, 0, 0, 0, vec3_zero, vec3_zero );
	current.angularInterpolation.Init( 0, 0, 0, 0, ang_zero, ang_zero );
	current.spline = NULL;
	current.splineInterpolate.Init( 0, 1, 1, 2, 0, 0 );

	saved = current;

	isPusher = false;
	pushFlags = 0;
	clipModel = NULL;
	isBlocked = false;
	memset( &pushResults, 0, sizeof( pushResults ) );

	hasMaster = false;
	isOrientated = false;
}

/*
================
idPhysics_Parametric::~idPhysics_Parametric
================
*/
idPhysics_Parametric::~idPhysics_Parametric( void ) {
	if ( clipModel != NULL ) {
		delete clipModel;
		clipModel = NULL;
	}
	if ( current.spline != NULL ) {
		delete current.spline;
		current.spline = NULL;
	}
}

/*
================
idPhysics_Parametric_SavePState
================
*/
void idPhysics_Parametric_SavePState( idSaveGame *savefile, const parametricPState_t &state ) {
    Sys_Printf("void idPhysics_Parametric_SavePState( idSaveGame *savefile, const parametricPState_t &state )\r\n");
}


/*
================
idPhysics_Parametric_RestorePState
================
*/
void idPhysics_Parametric_RestorePState( idRestoreGame *savefile, parametricPState_t &state ) {
    Sys_Printf("void idPhysics_Parametric_RestorePState( idRestoreGame *savefile, parametricPState_t &state )\r\n");
}


/*
================
idPhysics_Parametric::Save
================
*/
void idPhysics_Parametric::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idPhysics_Parametric::Save( idSaveGame *savefile )\r\n");
}


/*
================
idPhysics_Parametric::Restore
================
*/
void idPhysics_Parametric::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idPhysics_Parametric::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idPhysics_Parametric::SetPusher
================
*/
void idPhysics_Parametric::SetPusher( int flags ) {
    Sys_Printf("void idPhysics_Parametric::SetPusher( int flags )\r\n");
}


/*
================
idPhysics_Parametric::IsPusher
================
*/
bool idPhysics_Parametric::IsPusher( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Parametric::IsPusher( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::SetLinearExtrapolation
================
*/
void idPhysics_Parametric::SetLinearExtrapolation( extrapolation_t type, int time, int duration, const idVec3 &base, const idVec3 &speed, const idVec3 &baseSpeed ) {
    Sys_Printf("void idPhysics_Parametric::SetLinearExtrapolation( extrapolation_t type, int time, int duration, const idVec3 &base, const idVec3 &speed, const idVec3 &baseSpeed )\r\n");
}


/*
================
idPhysics_Parametric::SetAngularExtrapolation
================
*/
void idPhysics_Parametric::SetAngularExtrapolation( extrapolation_t type, int time, int duration, const idAngles &base, const idAngles &speed, const idAngles &baseSpeed ) {
    Sys_Printf("void idPhysics_Parametric::SetAngularExtrapolation( extrapolation_t type, int time, int duration, const idAngles &base, const idAngles &speed, const idAngles &baseSpeed )\r\n");
}


/*
================
idPhysics_Parametric::GetLinearExtrapolationType
================
*/
extrapolation_t idPhysics_Parametric::GetLinearExtrapolationType( void ) const {
    extrapolation_t retVal;
    memset(&retVal, 0, sizeof(extrapolation_t));
    Sys_Printf("extrapolation_t idPhysics_Parametric::GetLinearExtrapolationType( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::GetAngularExtrapolationType
================
*/
extrapolation_t idPhysics_Parametric::GetAngularExtrapolationType( void ) const {
    extrapolation_t retVal;
    memset(&retVal, 0, sizeof(extrapolation_t));
    Sys_Printf("extrapolation_t idPhysics_Parametric::GetAngularExtrapolationType( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::SetLinearInterpolation
================
*/
void idPhysics_Parametric::SetLinearInterpolation( int time, int accelTime, int decelTime, int duration, const idVec3 &startPos, const idVec3 &endPos ) {
    Sys_Printf("void idPhysics_Parametric::SetLinearInterpolation( int time, int accelTime, int decelTime, int duration, const idVec3 &startPos, const idVec3 &endPos )\r\n");
}


/*
================
idPhysics_Parametric::SetAngularInterpolation
================
*/
void idPhysics_Parametric::SetAngularInterpolation( int time, int accelTime, int decelTime, int duration, const idAngles &startAng, const idAngles &endAng ) {
    Sys_Printf("void idPhysics_Parametric::SetAngularInterpolation( int time, int accelTime, int decelTime, int duration, const idAngles &startAng, const idAngles &endAng )\r\n");
}


/*
================
idPhysics_Parametric::SetSpline
================
*/
void idPhysics_Parametric::SetSpline( idCurve_Spline<idVec3> *spline, int accelTime, int decelTime, bool useSplineAngles ) {
    Sys_Printf("void idPhysics_Parametric::SetSpline( idCurve_Spline<idVec3> *spline, int accelTime, int decelTime, bool useSplineAngles )\r\n");
}


/*
================
idPhysics_Parametric::GetSpline
================
*/
idCurve_Spline<idVec3> *idPhysics_Parametric::GetSpline( void ) const {
	return current.spline;
}

/*
================
idPhysics_Parametric::GetSplineAcceleration
================
*/
int idPhysics_Parametric::GetSplineAcceleration( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Parametric::GetSplineAcceleration( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::GetSplineDeceleration
================
*/
int idPhysics_Parametric::GetSplineDeceleration( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Parametric::GetSplineDeceleration( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::UsingSplineAngles
================
*/
bool idPhysics_Parametric::UsingSplineAngles( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Parametric::UsingSplineAngles( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::GetLocalOrigin
================
*/
void idPhysics_Parametric::GetLocalOrigin( idVec3 &curOrigin ) const {
    Sys_Printf("void idPhysics_Parametric::GetLocalOrigin( idVec3 &curOrigin )\r\n");
}


/*
================
idPhysics_Parametric::GetLocalAngles
================
*/
void idPhysics_Parametric::GetLocalAngles( idAngles &curAngles ) const {
    Sys_Printf("void idPhysics_Parametric::GetLocalAngles( idAngles &curAngles )\r\n");
}


/*
================
idPhysics_Parametric::SetClipModel
================
*/
void idPhysics_Parametric::SetClipModel( idClipModel *model, float density, int id, bool freeOld ) {
    Sys_Printf("void idPhysics_Parametric::SetClipModel( idClipModel *model, float density, int id, bool freeOld )\r\n");
}


/*
================
idPhysics_Parametric::GetClipModel
================
*/
idClipModel *idPhysics_Parametric::GetClipModel( int id ) const {
    Sys_Printf("idClipModel *idPhysics_Parametric::GetClipModel( int id )\r\n");
    return NULL;
}


/*
================
idPhysics_Parametric::GetNumClipModels
================
*/
int idPhysics_Parametric::GetNumClipModels( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Parametric::GetNumClipModels( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::SetMass
================
*/
void idPhysics_Parametric::SetMass( float mass, int id ) {
    Sys_Printf("void idPhysics_Parametric::SetMass( float mass, int id )\r\n");
}


/*
================
idPhysics_Parametric::GetMass
================
*/
float idPhysics_Parametric::GetMass( int id ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPhysics_Parametric::GetMass( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::SetClipMask
================
*/
void idPhysics_Parametric::SetContents( int contents, int id ) {
    Sys_Printf("void idPhysics_Parametric::SetContents( int contents, int id )\r\n");
}


/*
================
idPhysics_Parametric::SetClipMask
================
*/
int idPhysics_Parametric::GetContents( int id ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Parametric::GetContents( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::GetBounds
================
*/
const idBounds &idPhysics_Parametric::GetBounds( int id ) const {
	if ( clipModel ) {
		return clipModel->GetBounds();
	}
	return idPhysics_Base::GetBounds();
}

/*
================
idPhysics_Parametric::GetAbsBounds
================
*/
const idBounds &idPhysics_Parametric::GetAbsBounds( int id ) const {
	if ( clipModel ) {
		return clipModel->GetAbsBounds();
	}
	return idPhysics_Base::GetAbsBounds();
}

/*
================
idPhysics_Parametric::Evaluate
================
*/
bool idPhysics_Parametric::Evaluate( int timeStepMSec, int endTimeMSec ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Parametric::Evaluate( int timeStepMSec, int endTimeMSec )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::UpdateTime
================
*/
void idPhysics_Parametric::UpdateTime( int endTimeMSec ) {
    Sys_Printf("void idPhysics_Parametric::UpdateTime( int endTimeMSec )\r\n");
}


/*
================
idPhysics_Parametric::GetTime
================
*/
int idPhysics_Parametric::GetTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Parametric::GetTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::IsAtRest
================
*/
bool idPhysics_Parametric::IsAtRest( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Parametric::IsAtRest( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::GetRestStartTime
================
*/
int idPhysics_Parametric::GetRestStartTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Parametric::GetRestStartTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::IsPushable
================
*/
bool idPhysics_Parametric::IsPushable( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Parametric::IsPushable( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::SaveState
================
*/
void idPhysics_Parametric::SaveState( void ) {
    Sys_Printf("void idPhysics_Parametric::SaveState( void )\r\n");
}


/*
================
idPhysics_Parametric::RestoreState
================
*/
void idPhysics_Parametric::RestoreState( void ) {
    Sys_Printf("void idPhysics_Parametric::RestoreState( void )\r\n");
}


/*
================
idPhysics_Parametric::SetOrigin
================
*/
void idPhysics_Parametric::SetOrigin( const idVec3 &newOrigin, int id ) {
    Sys_Printf("void idPhysics_Parametric::SetOrigin( const idVec3 &newOrigin, int id )\r\n");
}


/*
================
idPhysics_Parametric::SetAxis
================
*/
void idPhysics_Parametric::SetAxis( const idMat3 &newAxis, int id ) {
    Sys_Printf("void idPhysics_Parametric::SetAxis( const idMat3 &newAxis, int id )\r\n");
}


/*
================
idPhysics_Parametric::Move
================
*/
void idPhysics_Parametric::Translate( const idVec3 &translation, int id ) {
    Sys_Printf("void idPhysics_Parametric::Translate( const idVec3 &translation, int id )\r\n");
}


/*
================
idPhysics_Parametric::Rotate
================
*/
void idPhysics_Parametric::Rotate( const idRotation &rotation, int id ) {
    Sys_Printf("void idPhysics_Parametric::Rotate( const idRotation &rotation, int id )\r\n");
}


/*
================
idPhysics_Parametric::GetOrigin
================
*/
const idVec3 &idPhysics_Parametric::GetOrigin( int id ) const {
	return current.origin;
}

/*
================
idPhysics_Parametric::GetAxis
================
*/
const idMat3 &idPhysics_Parametric::GetAxis( int id ) const {
	return current.axis;
}

/*
================
idPhysics_Parametric::GetAngles
================
*/
void idPhysics_Parametric::GetAngles( idAngles &curAngles ) const {
    Sys_Printf("void idPhysics_Parametric::GetAngles( idAngles &curAngles )\r\n");
}


/*
================
idPhysics_Parametric::SetLinearVelocity
================
*/
void idPhysics_Parametric::SetLinearVelocity( const idVec3 &newLinearVelocity, int id ) {
    Sys_Printf("void idPhysics_Parametric::SetLinearVelocity( const idVec3 &newLinearVelocity, int id )\r\n");
}


/*
================
idPhysics_Parametric::SetAngularVelocity
================
*/
void idPhysics_Parametric::SetAngularVelocity( const idVec3 &newAngularVelocity, int id ) {
    Sys_Printf("void idPhysics_Parametric::SetAngularVelocity( const idVec3 &newAngularVelocity, int id )\r\n");
}


/*
================
idPhysics_Parametric::GetLinearVelocity
================
*/
const idVec3 &idPhysics_Parametric::GetLinearVelocity( int id ) const {
	static idVec3 curLinearVelocity;

	curLinearVelocity = current.linearExtrapolation.GetCurrentSpeed( gameLocal.time );
	return curLinearVelocity;
}

/*
================
idPhysics_Parametric::GetAngularVelocity
================
*/
const idVec3 &idPhysics_Parametric::GetAngularVelocity( int id ) const {
	static idVec3 curAngularVelocity;
	idAngles angles;

	angles = current.angularExtrapolation.GetCurrentSpeed( gameLocal.time );
	curAngularVelocity = angles.ToAngularVelocity();
	return curAngularVelocity;
}

/*
================
idPhysics_Parametric::DisableClip
================
*/
void idPhysics_Parametric::DisableClip( void ) {
    Sys_Printf("void idPhysics_Parametric::DisableClip( void )\r\n");
}


/*
================
idPhysics_Parametric::EnableClip
================
*/
void idPhysics_Parametric::EnableClip( void ) {
    Sys_Printf("void idPhysics_Parametric::EnableClip( void )\r\n");
}


/*
================
idPhysics_Parametric::UnlinkClip
================
*/
void idPhysics_Parametric::UnlinkClip( void ) {
    Sys_Printf("void idPhysics_Parametric::UnlinkClip( void )\r\n");
}


/*
================
idPhysics_Parametric::LinkClip
================
*/
void idPhysics_Parametric::LinkClip( void ) {
    Sys_Printf("void idPhysics_Parametric::LinkClip( void )\r\n");
}


/*
================
idPhysics_Parametric::GetBlockingInfo
================
*/
const trace_t *idPhysics_Parametric::GetBlockingInfo( void ) const {
    Sys_Printf("trace_t *idPhysics_Parametric::GetBlockingInfo( void )\r\n");
    return NULL;
}


/*
================
idPhysics_Parametric::GetBlockingEntity
================
*/
idEntity *idPhysics_Parametric::GetBlockingEntity( void ) const {
    Sys_Printf("idEntity *idPhysics_Parametric::GetBlockingEntity( void )\r\n");
    return NULL;
}


/*
================
idPhysics_Parametric::SetMaster
================
*/
void idPhysics_Parametric::SetMaster( idEntity *master, const bool orientated ) {
    Sys_Printf("void idPhysics_Parametric::SetMaster( idEntity *master, const bool orientated )\r\n");
}


/*
================
idPhysics_Parametric::GetLinearEndTime
================
*/
int idPhysics_Parametric::GetLinearEndTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Parametric::GetLinearEndTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::GetAngularEndTime
================
*/
int idPhysics_Parametric::GetAngularEndTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Parametric::GetAngularEndTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Parametric::WriteToSnapshot
================
*/
void idPhysics_Parametric::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idPhysics_Parametric::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idPhysics_Parametric::ReadFromSnapshot
================
*/
void idPhysics_Parametric::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idPhysics_Parametric::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}

