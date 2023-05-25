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

CLASS_DECLARATION( idPhysics, idPhysics_Static )
END_CLASS

/*
================
idPhysics_Static::idPhysics_Static
================
*/
idPhysics_Static::idPhysics_Static( void ) {
	self = NULL;
	clipModel = NULL;
	current.origin.Zero();
	current.axis.Identity();
	current.localOrigin.Zero();
	current.localAxis.Identity();
	hasMaster = false;
	isOrientated = false;
}

/*
================
idPhysics_Static::~idPhysics_Static
================
*/
idPhysics_Static::~idPhysics_Static( void ) {
	if ( self && self->GetPhysics() == this ) {
		self->SetPhysics( NULL );
	}
	idForce::DeletePhysics( this );
	if ( clipModel ) {
		delete clipModel;
	}
}

/*
================
idPhysics_Static::Save
================
*/
void idPhysics_Static::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idPhysics_Static::Save( idSaveGame *savefile )\r\n");
}


/*
================
idPhysics_Static::Restore
================
*/
void idPhysics_Static::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idPhysics_Static::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idPhysics_Static::SetSelf
================
*/
void idPhysics_Static::SetSelf( idEntity *e ) {
    Sys_Printf("void idPhysics_Static::SetSelf( idEntity *e )\r\n");
}


/*
================
idPhysics_Static::SetClipModel
================
*/
void idPhysics_Static::SetClipModel( idClipModel *model, float density, int id, bool freeOld ) {
    Sys_Printf("void idPhysics_Static::SetClipModel( idClipModel *model, float density, int id, bool freeOld )\r\n");
}


/*
================
idPhysics_Static::GetClipModel
================
*/
idClipModel *idPhysics_Static::GetClipModel( int id ) const {
    Sys_Printf("idClipModel *idPhysics_Static::GetClipModel( int id )\r\n");
    return NULL;
}


/*
================
idPhysics_Static::GetNumClipModels
================
*/
int idPhysics_Static::GetNumClipModels( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Static::GetNumClipModels( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::SetMass
================
*/
void idPhysics_Static::SetMass( float mass, int id ) {
    Sys_Printf("void idPhysics_Static::SetMass( float mass, int id )\r\n");
}


/*
================
idPhysics_Static::GetMass
================
*/
float idPhysics_Static::GetMass( int id ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPhysics_Static::GetMass( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::SetContents
================
*/
void idPhysics_Static::SetContents( int contents, int id ) {
    Sys_Printf("void idPhysics_Static::SetContents( int contents, int id )\r\n");
}


/*
================
idPhysics_Static::GetContents
================
*/
int idPhysics_Static::GetContents( int id ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Static::GetContents( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::SetClipMask
================
*/
void idPhysics_Static::SetClipMask( int mask, int id ) {
    Sys_Printf("void idPhysics_Static::SetClipMask( int mask, int id )\r\n");
}


/*
================
idPhysics_Static::GetClipMask
================
*/
int idPhysics_Static::GetClipMask( int id ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Static::GetClipMask( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::GetBounds
================
*/
const idBounds &idPhysics_Static::GetBounds( int id ) const {
	if ( clipModel ) {
		return clipModel->GetBounds();
	}
	return bounds_zero;
}

/*
================
idPhysics_Static::GetAbsBounds
================
*/
const idBounds &idPhysics_Static::GetAbsBounds( int id ) const {
	static idBounds absBounds;

	if ( clipModel ) {
		return clipModel->GetAbsBounds();
	}
	absBounds[0] = absBounds[1] = current.origin;
	return absBounds;
}

/*
================
idPhysics_Static::Evaluate
================
*/
bool idPhysics_Static::Evaluate( int timeStepMSec, int endTimeMSec ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Static::Evaluate( int timeStepMSec, int endTimeMSec )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::UpdateTime
================
*/
void idPhysics_Static::UpdateTime( int endTimeMSec ) {
    Sys_Printf("void idPhysics_Static::UpdateTime( int endTimeMSec )\r\n");
}


/*
================
idPhysics_Static::GetTime
================
*/
int idPhysics_Static::GetTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Static::GetTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::GetImpactInfo
================
*/
void idPhysics_Static::GetImpactInfo( const int id, const idVec3 &point, impactInfo_t *info ) const {
    Sys_Printf("void idPhysics_Static::GetImpactInfo( const int id, const idVec3 &point, impactInfo_t *info )\r\n");
}


/*
================
idPhysics_Static::ApplyImpulse
================
*/
void idPhysics_Static::ApplyImpulse( const int id, const idVec3 &point, const idVec3 &impulse ) {
    Sys_Printf("void idPhysics_Static::ApplyImpulse( const int id, const idVec3 &point, const idVec3 &impulse )\r\n");
}


/*
================
idPhysics_Static::AddForce
================
*/
void idPhysics_Static::AddForce( const int id, const idVec3 &point, const idVec3 &force ) {
    Sys_Printf("void idPhysics_Static::AddForce( const int id, const idVec3 &point, const idVec3 &force )\r\n");
}


/*
================
idPhysics_Static::Activate
================
*/
void idPhysics_Static::Activate( void ) {
    Sys_Printf("void idPhysics_Static::Activate( void )\r\n");
}


/*
================
idPhysics_Static::PutToRest
================
*/
void idPhysics_Static::PutToRest( void ) {
    Sys_Printf("void idPhysics_Static::PutToRest( void )\r\n");
}


/*
================
idPhysics_Static::IsAtRest
================
*/
bool idPhysics_Static::IsAtRest( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Static::IsAtRest( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::GetRestStartTime
================
*/
int idPhysics_Static::GetRestStartTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Static::GetRestStartTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::IsPushable
================
*/
bool idPhysics_Static::IsPushable( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Static::IsPushable( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::SaveState
================
*/
void idPhysics_Static::SaveState( void ) {
    Sys_Printf("void idPhysics_Static::SaveState( void )\r\n");
}


/*
================
idPhysics_Static::RestoreState
================
*/
void idPhysics_Static::RestoreState( void ) {
    Sys_Printf("void idPhysics_Static::RestoreState( void )\r\n");
}


/*
================
idPhysics_Static::SetOrigin
================
*/
void idPhysics_Static::SetOrigin( const idVec3 &newOrigin, int id ) {
    Sys_Printf("void idPhysics_Static::SetOrigin( const idVec3 &newOrigin, int id )\r\n");
}


/*
================
idPhysics_Static::SetAxis
================
*/
void idPhysics_Static::SetAxis( const idMat3 &newAxis, int id ) {
    Sys_Printf("void idPhysics_Static::SetAxis( const idMat3 &newAxis, int id )\r\n");
}


/*
================
idPhysics_Static::Translate
================
*/
void idPhysics_Static::Translate( const idVec3 &translation, int id ) {
    Sys_Printf("void idPhysics_Static::Translate( const idVec3 &translation, int id )\r\n");
}


/*
================
idPhysics_Static::Rotate
================
*/
void idPhysics_Static::Rotate( const idRotation &rotation, int id ) {
    Sys_Printf("void idPhysics_Static::Rotate( const idRotation &rotation, int id )\r\n");
}


/*
================
idPhysics_Static::GetOrigin
================
*/
const idVec3 &idPhysics_Static::GetOrigin( int id ) const {
	return current.origin;
}

/*
================
idPhysics_Static::GetAxis
================
*/
const idMat3 &idPhysics_Static::GetAxis( int id ) const {
	return current.axis;
}

/*
================
idPhysics_Static::SetLinearVelocity
================
*/
void idPhysics_Static::SetLinearVelocity( const idVec3 &newLinearVelocity, int id ) {
    Sys_Printf("void idPhysics_Static::SetLinearVelocity( const idVec3 &newLinearVelocity, int id )\r\n");
}


/*
================
idPhysics_Static::SetAngularVelocity
================
*/
void idPhysics_Static::SetAngularVelocity( const idVec3 &newAngularVelocity, int id ) {
    Sys_Printf("void idPhysics_Static::SetAngularVelocity( const idVec3 &newAngularVelocity, int id )\r\n");
}


/*
================
idPhysics_Static::GetLinearVelocity
================
*/
const idVec3 &idPhysics_Static::GetLinearVelocity( int id ) const {
	return vec3_origin;
}

/*
================
idPhysics_Static::GetAngularVelocity
================
*/
const idVec3 &idPhysics_Static::GetAngularVelocity( int id ) const {
	return vec3_origin;
}

/*
================
idPhysics_Static::SetGravity
================
*/
void idPhysics_Static::SetGravity( const idVec3 &newGravity ) {
    Sys_Printf("void idPhysics_Static::SetGravity( const idVec3 &newGravity )\r\n");
}


/*
================
idPhysics_Static::GetGravity
================
*/
const idVec3 &idPhysics_Static::GetGravity( void ) const {
	static idVec3 gravity( 0, 0, -g_gravity.GetFloat() );
	return gravity;
}

/*
================
idPhysics_Static::GetGravityNormal
================
*/
const idVec3 &idPhysics_Static::GetGravityNormal( void ) const {
	static idVec3 gravity( 0, 0, -1 );
	return gravity;
}

/*
================
idPhysics_Static::ClipTranslation
================
*/
void idPhysics_Static::ClipTranslation( trace_t &results, const idVec3 &translation, const idClipModel *model ) const {
    Sys_Printf("void idPhysics_Static::ClipTranslation( trace_t &results, const idVec3 &translation, const idClipModel *model )\r\n");
}


/*
================
idPhysics_Static::ClipRotation
================
*/
void idPhysics_Static::ClipRotation( trace_t &results, const idRotation &rotation, const idClipModel *model ) const {
    Sys_Printf("void idPhysics_Static::ClipRotation( trace_t &results, const idRotation &rotation, const idClipModel *model )\r\n");
}


/*
================
idPhysics_Static::ClipContents
================
*/
int idPhysics_Static::ClipContents( const idClipModel *model ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Static::ClipContents( const idClipModel *model )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::DisableClip
================
*/
void idPhysics_Static::DisableClip( void ) {
    Sys_Printf("void idPhysics_Static::DisableClip( void )\r\n");
}


/*
================
idPhysics_Static::EnableClip
================
*/
void idPhysics_Static::EnableClip( void ) {
    Sys_Printf("void idPhysics_Static::EnableClip( void )\r\n");
}


/*
================
idPhysics_Static::UnlinkClip
================
*/
void idPhysics_Static::UnlinkClip( void ) {
    Sys_Printf("void idPhysics_Static::UnlinkClip( void )\r\n");
}


/*
================
idPhysics_Static::LinkClip
================
*/
void idPhysics_Static::LinkClip( void ) {
    Sys_Printf("void idPhysics_Static::LinkClip( void )\r\n");
}


/*
================
idPhysics_Static::EvaluateContacts
================
*/
bool idPhysics_Static::EvaluateContacts( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Static::EvaluateContacts( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::GetNumContacts
================
*/
int idPhysics_Static::GetNumContacts( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Static::GetNumContacts( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::GetContact
================
*/
const contactInfo_t &idPhysics_Static::GetContact( int num ) const {
	static contactInfo_t info;
	memset( &info, 0, sizeof( info ) );
	return info;
}

/*
================
idPhysics_Static::ClearContacts
================
*/
void idPhysics_Static::ClearContacts( void ) {
    Sys_Printf("void idPhysics_Static::ClearContacts( void )\r\n");
}


/*
================
idPhysics_Static::AddContactEntity
================
*/
void idPhysics_Static::AddContactEntity( idEntity *e ) {
    Sys_Printf("void idPhysics_Static::AddContactEntity( idEntity *e )\r\n");
}


/*
================
idPhysics_Static::RemoveContactEntity
================
*/
void idPhysics_Static::RemoveContactEntity( idEntity *e ) {
    Sys_Printf("void idPhysics_Static::RemoveContactEntity( idEntity *e )\r\n");
}


/*
================
idPhysics_Static::HasGroundContacts
================
*/
bool idPhysics_Static::HasGroundContacts( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Static::HasGroundContacts( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::IsGroundEntity
================
*/
bool idPhysics_Static::IsGroundEntity( int entityNum ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Static::IsGroundEntity( int entityNum )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::IsGroundClipModel
================
*/
bool idPhysics_Static::IsGroundClipModel( int entityNum, int id ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Static::IsGroundClipModel( int entityNum, int id )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::SetPushed
================
*/
void idPhysics_Static::SetPushed( int deltaTime ) {
    Sys_Printf("void idPhysics_Static::SetPushed( int deltaTime )\r\n");
}


/*
================
idPhysics_Static::GetPushedLinearVelocity
================
*/
const idVec3 &idPhysics_Static::GetPushedLinearVelocity( const int id ) const {
	return vec3_origin;
}

/*
================
idPhysics_Static::GetPushedAngularVelocity
================
*/
const idVec3 &idPhysics_Static::GetPushedAngularVelocity( const int id ) const {
	return vec3_origin;
}

/*
================
idPhysics_Static::SetMaster
================
*/
void idPhysics_Static::SetMaster( idEntity *master, const bool orientated ) {
    Sys_Printf("void idPhysics_Static::SetMaster( idEntity *master, const bool orientated )\r\n");
}


/*
================
idPhysics_Static::GetBlockingInfo
================
*/
const trace_t *idPhysics_Static::GetBlockingInfo( void ) const {
    Sys_Printf("trace_t *idPhysics_Static::GetBlockingInfo( void )\r\n");
    return NULL;
}


/*
================
idPhysics_Static::GetBlockingEntity
================
*/
idEntity *idPhysics_Static::GetBlockingEntity( void ) const {
    Sys_Printf("idEntity *idPhysics_Static::GetBlockingEntity( void )\r\n");
    return NULL;
}


/*
================
idPhysics_Static::GetLinearEndTime
================
*/
int idPhysics_Static::GetLinearEndTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Static::GetLinearEndTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::GetAngularEndTime
================
*/
int idPhysics_Static::GetAngularEndTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Static::GetAngularEndTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Static::WriteToSnapshot
================
*/
void idPhysics_Static::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idPhysics_Static::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idPhysics_Base::ReadFromSnapshot
================
*/
void idPhysics_Static::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idPhysics_Static::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}

