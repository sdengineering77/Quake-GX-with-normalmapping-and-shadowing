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

CLASS_DECLARATION( idPhysics, idPhysics_Base )
END_CLASS

/*
================
idPhysics_Base::idPhysics_Base
================
*/
idPhysics_Base::idPhysics_Base( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idPhysics_Base::idPhysics_Base( void ) size %d\r\n", sizeof(*this));
#endif

	self = NULL;
	clipMask = 0;
	SetGravity( gameLocal.GetGravity() );
	ClearContacts();
}

/*
================
idPhysics_Base::~idPhysics_Base
================
*/
idPhysics_Base::~idPhysics_Base( void ) {
	if ( self && self->GetPhysics() == this ) {
		self->SetPhysics( NULL );
	}
	idForce::DeletePhysics( this );
	ClearContacts();
}

/*
================
idPhysics_Base::Save
================
*/
void idPhysics_Base::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idPhysics_Base::Save( idSaveGame *savefile )\r\n");
}


/*
================
idPhysics_Base::Restore
================
*/
void idPhysics_Base::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idPhysics_Base::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idPhysics_Base::SetSelf
================
*/
void idPhysics_Base::SetSelf( idEntity *e ) {
    Sys_Printf("void idPhysics_Base::SetSelf( idEntity *e )\r\n");
}


/*
================
idPhysics_Base::SetClipModel
================
*/
void idPhysics_Base::SetClipModel( idClipModel *model, float density, int id, bool freeOld ) {
    Sys_Printf("void idPhysics_Base::SetClipModel( idClipModel *model, float density, int id, bool freeOld )\r\n");
}


/*
================
idPhysics_Base::GetClipModel
================
*/
idClipModel *idPhysics_Base::GetClipModel( int id ) const {
    Sys_Printf("idClipModel *idPhysics_Base::GetClipModel( int id )\r\n");
    return NULL;
}


/*
================
idPhysics_Base::GetNumClipModels
================
*/
int idPhysics_Base::GetNumClipModels( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Base::GetNumClipModels( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::SetMass
================
*/
void idPhysics_Base::SetMass( float mass, int id ) {
    Sys_Printf("void idPhysics_Base::SetMass( float mass, int id )\r\n");
}


/*
================
idPhysics_Base::GetMass
================
*/
float idPhysics_Base::GetMass( int id ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPhysics_Base::GetMass( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::SetContents
================
*/
void idPhysics_Base::SetContents( int contents, int id ) {
    Sys_Printf("void idPhysics_Base::SetContents( int contents, int id )\r\n");
}


/*
================
idPhysics_Base::SetClipMask
================
*/
int idPhysics_Base::GetContents( int id ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Base::GetContents( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::SetClipMask
================
*/
void idPhysics_Base::SetClipMask( int mask, int id ) {
    Sys_Printf("void idPhysics_Base::SetClipMask( int mask, int id )\r\n");
}


/*
================
idPhysics_Base::GetClipMask
================
*/
int idPhysics_Base::GetClipMask( int id ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Base::GetClipMask( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::GetBounds
================
*/
const idBounds &idPhysics_Base::GetBounds( int id ) const {
	return bounds_zero;
}

/*
================
idPhysics_Base::GetAbsBounds
================
*/
const idBounds &idPhysics_Base::GetAbsBounds( int id ) const {
	return bounds_zero;
}

/*
================
idPhysics_Base::Evaluate
================
*/
bool idPhysics_Base::Evaluate( int timeStepMSec, int endTimeMSec ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Base::Evaluate( int timeStepMSec, int endTimeMSec )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::UpdateTime
================
*/
void idPhysics_Base::UpdateTime( int endTimeMSec ) {
    Sys_Printf("void idPhysics_Base::UpdateTime( int endTimeMSec )\r\n");
}


/*
================
idPhysics_Base::GetTime
================
*/
int idPhysics_Base::GetTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Base::GetTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::GetImpactInfo
================
*/
void idPhysics_Base::GetImpactInfo( const int id, const idVec3 &point, impactInfo_t *info ) const {
    Sys_Printf("void idPhysics_Base::GetImpactInfo( const int id, const idVec3 &point, impactInfo_t *info )\r\n");
}


/*
================
idPhysics_Base::ApplyImpulse
================
*/
void idPhysics_Base::ApplyImpulse( const int id, const idVec3 &point, const idVec3 &impulse ) {
    Sys_Printf("void idPhysics_Base::ApplyImpulse( const int id, const idVec3 &point, const idVec3 &impulse )\r\n");
}


/*
================
idPhysics_Base::AddForce
================
*/
void idPhysics_Base::AddForce( const int id, const idVec3 &point, const idVec3 &force ) {
    Sys_Printf("void idPhysics_Base::AddForce( const int id, const idVec3 &point, const idVec3 &force )\r\n");
}


/*
================
idPhysics_Base::Activate
================
*/
void idPhysics_Base::Activate( void ) {
    Sys_Printf("void idPhysics_Base::Activate( void )\r\n");
}


/*
================
idPhysics_Base::PutToRest
================
*/
void idPhysics_Base::PutToRest( void ) {
    Sys_Printf("void idPhysics_Base::PutToRest( void )\r\n");
}


/*
================
idPhysics_Base::IsAtRest
================
*/
bool idPhysics_Base::IsAtRest( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Base::IsAtRest( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::GetRestStartTime
================
*/
int idPhysics_Base::GetRestStartTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Base::GetRestStartTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::IsPushable
================
*/
bool idPhysics_Base::IsPushable( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Base::IsPushable( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::SaveState
================
*/
void idPhysics_Base::SaveState( void ) {
    Sys_Printf("void idPhysics_Base::SaveState( void )\r\n");
}


/*
================
idPhysics_Base::RestoreState
================
*/
void idPhysics_Base::RestoreState( void ) {
    Sys_Printf("void idPhysics_Base::RestoreState( void )\r\n");
}


/*
================
idPhysics_Base::SetOrigin
================
*/
void idPhysics_Base::SetOrigin( const idVec3 &newOrigin, int id ) {
    Sys_Printf("void idPhysics_Base::SetOrigin( const idVec3 &newOrigin, int id )\r\n");
}


/*
================
idPhysics_Base::SetAxis
================
*/
void idPhysics_Base::SetAxis( const idMat3 &newAxis, int id ) {
    Sys_Printf("void idPhysics_Base::SetAxis( const idMat3 &newAxis, int id )\r\n");
}


/*
================
idPhysics_Base::Translate
================
*/
void idPhysics_Base::Translate( const idVec3 &translation, int id ) {
    Sys_Printf("void idPhysics_Base::Translate( const idVec3 &translation, int id )\r\n");
}


/*
================
idPhysics_Base::Rotate
================
*/
void idPhysics_Base::Rotate( const idRotation &rotation, int id ) {
    Sys_Printf("void idPhysics_Base::Rotate( const idRotation &rotation, int id )\r\n");
}


/*
================
idPhysics_Base::GetOrigin
================
*/
const idVec3 &idPhysics_Base::GetOrigin( int id ) const {
	return vec3_origin;
}

/*
================
idPhysics_Base::GetAxis
================
*/
const idMat3 &idPhysics_Base::GetAxis( int id ) const {
	return mat3_identity;
}

/*
================
idPhysics_Base::SetLinearVelocity
================
*/
void idPhysics_Base::SetLinearVelocity( const idVec3 &newLinearVelocity, int id ) {
    Sys_Printf("void idPhysics_Base::SetLinearVelocity( const idVec3 &newLinearVelocity, int id )\r\n");
}


/*
================
idPhysics_Base::SetAngularVelocity
================
*/
void idPhysics_Base::SetAngularVelocity( const idVec3 &newAngularVelocity, int id ) {
    Sys_Printf("void idPhysics_Base::SetAngularVelocity( const idVec3 &newAngularVelocity, int id )\r\n");
}


/*
================
idPhysics_Base::GetLinearVelocity
================
*/
const idVec3 &idPhysics_Base::GetLinearVelocity( int id ) const {
	return vec3_origin;
}

/*
================
idPhysics_Base::GetAngularVelocity
================
*/
const idVec3 &idPhysics_Base::GetAngularVelocity( int id ) const {
	return vec3_origin;
}

/*
================
idPhysics_Base::SetGravity
================
*/
void idPhysics_Base::SetGravity( const idVec3 &newGravity ) {
    Sys_Printf("void idPhysics_Base::SetGravity( const idVec3 &newGravity )\r\n");
}


/*
================
idPhysics_Base::GetGravity
================
*/
const idVec3 &idPhysics_Base::GetGravity( void ) const {
	return gravityVector;
}

/*
================
idPhysics_Base::GetGravityNormal
================
*/
const idVec3 &idPhysics_Base::GetGravityNormal( void ) const {
	return gravityNormal;
}

/*
================
idPhysics_Base::ClipTranslation
================
*/
void idPhysics_Base::ClipTranslation( trace_t &results, const idVec3 &translation, const idClipModel *model ) const {
    Sys_Printf("void idPhysics_Base::ClipTranslation( trace_t &results, const idVec3 &translation, const idClipModel *model )\r\n");
}


/*
================
idPhysics_Base::ClipRotation
================
*/
void idPhysics_Base::ClipRotation( trace_t &results, const idRotation &rotation, const idClipModel *model ) const {
    Sys_Printf("void idPhysics_Base::ClipRotation( trace_t &results, const idRotation &rotation, const idClipModel *model )\r\n");
}


/*
================
idPhysics_Base::ClipContents
================
*/
int idPhysics_Base::ClipContents( const idClipModel *model ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Base::ClipContents( const idClipModel *model )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::DisableClip
================
*/
void idPhysics_Base::DisableClip( void ) {
    Sys_Printf("void idPhysics_Base::DisableClip( void )\r\n");
}


/*
================
idPhysics_Base::EnableClip
================
*/
void idPhysics_Base::EnableClip( void ) {
    Sys_Printf("void idPhysics_Base::EnableClip( void )\r\n");
}


/*
================
idPhysics_Base::UnlinkClip
================
*/
void idPhysics_Base::UnlinkClip( void ) {
    Sys_Printf("void idPhysics_Base::UnlinkClip( void )\r\n");
}


/*
================
idPhysics_Base::LinkClip
================
*/
void idPhysics_Base::LinkClip( void ) {
    Sys_Printf("void idPhysics_Base::LinkClip( void )\r\n");
}


/*
================
idPhysics_Base::EvaluateContacts
================
*/
bool idPhysics_Base::EvaluateContacts( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Base::EvaluateContacts( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::GetNumContacts
================
*/
int idPhysics_Base::GetNumContacts( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Base::GetNumContacts( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::GetContact
================
*/
const contactInfo_t &idPhysics_Base::GetContact( int num ) const {
	return contacts[num];
}

/*
================
idPhysics_Base::ClearContacts
================
*/
void idPhysics_Base::ClearContacts( void ) {
    Sys_Printf("void idPhysics_Base::ClearContacts( void )\r\n");
}


/*
================
idPhysics_Base::AddContactEntity
================
*/
void idPhysics_Base::AddContactEntity( idEntity *e ) {
    Sys_Printf("void idPhysics_Base::AddContactEntity( idEntity *e )\r\n");
}


/*
================
idPhysics_Base::RemoveContactEntity
================
*/
void idPhysics_Base::RemoveContactEntity( idEntity *e ) {
    Sys_Printf("void idPhysics_Base::RemoveContactEntity( idEntity *e )\r\n");
}


/*
================
idPhysics_Base::HasGroundContacts
================
*/
bool idPhysics_Base::HasGroundContacts( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Base::HasGroundContacts( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::IsGroundEntity
================
*/
bool idPhysics_Base::IsGroundEntity( int entityNum ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Base::IsGroundEntity( int entityNum )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::IsGroundClipModel
================
*/
bool idPhysics_Base::IsGroundClipModel( int entityNum, int id ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Base::IsGroundClipModel( int entityNum, int id )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::SetPushed
================
*/
void idPhysics_Base::SetPushed( int deltaTime ) {
    Sys_Printf("void idPhysics_Base::SetPushed( int deltaTime )\r\n");
}


/*
================
idPhysics_Base::GetPushedLinearVelocity
================
*/
const idVec3 &idPhysics_Base::GetPushedLinearVelocity( const int id ) const {
	return vec3_origin;
}

/*
================
idPhysics_Base::GetPushedAngularVelocity
================
*/
const idVec3 &idPhysics_Base::GetPushedAngularVelocity( const int id ) const {
	return vec3_origin;
}

/*
================
idPhysics_Base::SetMaster
================
*/
void idPhysics_Base::SetMaster( idEntity *master, const bool orientated ) {
    Sys_Printf("void idPhysics_Base::SetMaster( idEntity *master, const bool orientated )\r\n");
}


/*
================
idPhysics_Base::GetBlockingInfo
================
*/
const trace_t *idPhysics_Base::GetBlockingInfo( void ) const {
    Sys_Printf("trace_t *idPhysics_Base::GetBlockingInfo( void )\r\n");
    return NULL;
}


/*
================
idPhysics_Base::GetBlockingEntity
================
*/
idEntity *idPhysics_Base::GetBlockingEntity( void ) const {
    Sys_Printf("idEntity *idPhysics_Base::GetBlockingEntity( void )\r\n");
    return NULL;
}


/*
================
idPhysics_Base::GetLinearEndTime
================
*/
int idPhysics_Base::GetLinearEndTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Base::GetLinearEndTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::GetAngularEndTime
================
*/
int idPhysics_Base::GetAngularEndTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Base::GetAngularEndTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::AddGroundContacts
================
*/
void idPhysics_Base::AddGroundContacts( const idClipModel *clipModel ) {
    Sys_Printf("void idPhysics_Base::AddGroundContacts( const idClipModel *clipModel )\r\n");
}


/*
================
idPhysics_Base::AddContactEntitiesForContacts
================
*/
void idPhysics_Base::AddContactEntitiesForContacts( void ) {
    Sys_Printf("void idPhysics_Base::AddContactEntitiesForContacts( void )\r\n");
}


/*
================
idPhysics_Base::ActivateContactEntities
================
*/
void idPhysics_Base::ActivateContactEntities( void ) {
    Sys_Printf("void idPhysics_Base::ActivateContactEntities( void )\r\n");
}


/*
================
idPhysics_Base::IsOutsideWorld
================
*/
bool idPhysics_Base::IsOutsideWorld( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Base::IsOutsideWorld( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Base::DrawVelocity
================
*/
void idPhysics_Base::DrawVelocity( int id, float linearScale, float angularScale ) const {
    Sys_Printf("void idPhysics_Base::DrawVelocity( int id, float linearScale, float angularScale )\r\n");
}


/*
================
idPhysics_Base::WriteToSnapshot
================
*/
void idPhysics_Base::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idPhysics_Base::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idPhysics_Base::ReadFromSnapshot
================
*/
void idPhysics_Base::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idPhysics_Base::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}

