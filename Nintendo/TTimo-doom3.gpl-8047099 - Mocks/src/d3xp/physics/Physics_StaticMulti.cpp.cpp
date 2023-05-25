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

CLASS_DECLARATION( idPhysics, idPhysics_StaticMulti )
END_CLASS

staticPState_t defaultState;


/*
================
idPhysics_StaticMulti::idPhysics_StaticMulti
================
*/
idPhysics_StaticMulti::idPhysics_StaticMulti( void ) {
	self = NULL;
	hasMaster = false;
	isOrientated = false;

	defaultState.origin.Zero();
	defaultState.axis.Identity();
	defaultState.localOrigin.Zero();
	defaultState.localAxis.Identity();

	current.SetNum( 1 );
	current[0] = defaultState;
	clipModels.SetNum( 1 );
	clipModels[0] = NULL;
}

/*
================
idPhysics_StaticMulti::~idPhysics_StaticMulti
================
*/
idPhysics_StaticMulti::~idPhysics_StaticMulti( void ) {
	if ( self && self->GetPhysics() == this ) {
		self->SetPhysics( NULL );
	}
	idForce::DeletePhysics( this );
	for ( int i = 0; i < clipModels.Num(); i++ ) {
		delete clipModels[i];
	}
}

/*
================
idPhysics_StaticMulti::Save
================
*/
void idPhysics_StaticMulti::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idPhysics_StaticMulti::Save( idSaveGame *savefile )\r\n");
}


/*
================
idPhysics_StaticMulti::Restore
================
*/
void idPhysics_StaticMulti::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idPhysics_StaticMulti::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idPhysics_StaticMulti::SetSelf
================
*/
void idPhysics_StaticMulti::SetSelf( idEntity *e ) {
    Sys_Printf("void idPhysics_StaticMulti::SetSelf( idEntity *e )\r\n");
}


/*
================
idPhysics_StaticMulti::RemoveIndex
================
*/
void idPhysics_StaticMulti::RemoveIndex( int id, bool freeClipModel ) {
    Sys_Printf("void idPhysics_StaticMulti::RemoveIndex( int id, bool freeClipModel )\r\n");
}


/*
================
idPhysics_StaticMulti::SetClipModel
================
*/
void idPhysics_StaticMulti::SetClipModel( idClipModel *model, float density, int id, bool freeOld ) {
    Sys_Printf("void idPhysics_StaticMulti::SetClipModel( idClipModel *model, float density, int id, bool freeOld )\r\n");
}


/*
================
idPhysics_StaticMulti::GetClipModel
================
*/
idClipModel *idPhysics_StaticMulti::GetClipModel( int id ) const {
    Sys_Printf("idClipModel *idPhysics_StaticMulti::GetClipModel( int id )\r\n");
    return NULL;
}


/*
================
idPhysics_StaticMulti::GetNumClipModels
================
*/
int idPhysics_StaticMulti::GetNumClipModels( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_StaticMulti::GetNumClipModels( void )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::SetMass
================
*/
void idPhysics_StaticMulti::SetMass( float mass, int id ) {
    Sys_Printf("void idPhysics_StaticMulti::SetMass( float mass, int id )\r\n");
}


/*
================
idPhysics_StaticMulti::GetMass
================
*/
float idPhysics_StaticMulti::GetMass( int id ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPhysics_StaticMulti::GetMass( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::SetContents
================
*/
void idPhysics_StaticMulti::SetContents( int contents, int id ) {
    Sys_Printf("void idPhysics_StaticMulti::SetContents( int contents, int id )\r\n");
}


/*
================
idPhysics_StaticMulti::GetContents
================
*/
int idPhysics_StaticMulti::GetContents( int id ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_StaticMulti::GetContents( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::SetClipMask
================
*/
void idPhysics_StaticMulti::SetClipMask( int mask, int id ) {
    Sys_Printf("void idPhysics_StaticMulti::SetClipMask( int mask, int id )\r\n");
}


/*
================
idPhysics_StaticMulti::GetClipMask
================
*/
int idPhysics_StaticMulti::GetClipMask( int id ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_StaticMulti::GetClipMask( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::GetBounds
================
*/
const idBounds &idPhysics_StaticMulti::GetBounds( int id ) const {
	int i;
	static idBounds bounds;

	if ( id >= 0 && id < clipModels.Num() ) {
		if ( clipModels[id] ) {
			return clipModels[id]->GetBounds();
		}
	}
	if ( id == -1 ) {
		bounds.Clear();
		for ( i = 0; i < clipModels.Num(); i++ ) {
			if ( clipModels[i] ) {
				bounds.AddBounds( clipModels[i]->GetAbsBounds() );
			}
		}
		for ( i = 0; i < clipModels.Num(); i++ ) {
			if ( clipModels[i] ) {
				bounds[0] -= clipModels[i]->GetOrigin();
				bounds[1] -= clipModels[i]->GetOrigin();
				break;
			}
		}
		return bounds;
	}
	return bounds_zero;
}

/*
================
idPhysics_StaticMulti::GetAbsBounds
================
*/
const idBounds &idPhysics_StaticMulti::GetAbsBounds( int id ) const {
	int i;
	static idBounds absBounds;

	if ( id >= 0 && id < clipModels.Num() ) {
		if ( clipModels[id] ) {
			return clipModels[id]->GetAbsBounds();
		}
	}
	if ( id == -1 ) {
		absBounds.Clear();
		for ( i = 0; i < clipModels.Num(); i++ ) {
			if ( clipModels[i] ) {
				absBounds.AddBounds( clipModels[i]->GetAbsBounds() );
			}
		}
		return absBounds;
	}
	return bounds_zero;
}

/*
================
idPhysics_StaticMulti::Evaluate
================
*/
bool idPhysics_StaticMulti::Evaluate( int timeStepMSec, int endTimeMSec ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_StaticMulti::Evaluate( int timeStepMSec, int endTimeMSec )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::UpdateTime
================
*/
void idPhysics_StaticMulti::UpdateTime( int endTimeMSec ) {
    Sys_Printf("void idPhysics_StaticMulti::UpdateTime( int endTimeMSec )\r\n");
}


/*
================
idPhysics_StaticMulti::GetTime
================
*/
int idPhysics_StaticMulti::GetTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_StaticMulti::GetTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::GetImpactInfo
================
*/
void idPhysics_StaticMulti::GetImpactInfo( const int id, const idVec3 &point, impactInfo_t *info ) const {
    Sys_Printf("void idPhysics_StaticMulti::GetImpactInfo( const int id, const idVec3 &point, impactInfo_t *info )\r\n");
}


/*
================
idPhysics_StaticMulti::ApplyImpulse
================
*/
void idPhysics_StaticMulti::ApplyImpulse( const int id, const idVec3 &point, const idVec3 &impulse ) {
    Sys_Printf("void idPhysics_StaticMulti::ApplyImpulse( const int id, const idVec3 &point, const idVec3 &impulse )\r\n");
}


/*
================
idPhysics_StaticMulti::AddForce
================
*/
void idPhysics_StaticMulti::AddForce( const int id, const idVec3 &point, const idVec3 &force ) {
    Sys_Printf("void idPhysics_StaticMulti::AddForce( const int id, const idVec3 &point, const idVec3 &force )\r\n");
}


/*
================
idPhysics_StaticMulti::Activate
================
*/
void idPhysics_StaticMulti::Activate( void ) {
    Sys_Printf("void idPhysics_StaticMulti::Activate( void )\r\n");
}


/*
================
idPhysics_StaticMulti::PutToRest
================
*/
void idPhysics_StaticMulti::PutToRest( void ) {
    Sys_Printf("void idPhysics_StaticMulti::PutToRest( void )\r\n");
}


/*
================
idPhysics_StaticMulti::IsAtRest
================
*/
bool idPhysics_StaticMulti::IsAtRest( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_StaticMulti::IsAtRest( void )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::GetRestStartTime
================
*/
int idPhysics_StaticMulti::GetRestStartTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_StaticMulti::GetRestStartTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::IsPushable
================
*/
bool idPhysics_StaticMulti::IsPushable( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_StaticMulti::IsPushable( void )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::SaveState
================
*/
void idPhysics_StaticMulti::SaveState( void ) {
    Sys_Printf("void idPhysics_StaticMulti::SaveState( void )\r\n");
}


/*
================
idPhysics_StaticMulti::RestoreState
================
*/
void idPhysics_StaticMulti::RestoreState( void ) {
    Sys_Printf("void idPhysics_StaticMulti::RestoreState( void )\r\n");
}


/*
================
idPhysics_StaticMulti::SetOrigin
================
*/
void idPhysics_StaticMulti::SetOrigin( const idVec3 &newOrigin, int id ) {
    Sys_Printf("void idPhysics_StaticMulti::SetOrigin( const idVec3 &newOrigin, int id )\r\n");
}


/*
================
idPhysics_StaticMulti::SetAxis
================
*/
void idPhysics_StaticMulti::SetAxis( const idMat3 &newAxis, int id ) {
    Sys_Printf("void idPhysics_StaticMulti::SetAxis( const idMat3 &newAxis, int id )\r\n");
}


/*
================
idPhysics_StaticMulti::Translate
================
*/
void idPhysics_StaticMulti::Translate( const idVec3 &translation, int id ) {
    Sys_Printf("void idPhysics_StaticMulti::Translate( const idVec3 &translation, int id )\r\n");
}


/*
================
idPhysics_StaticMulti::Rotate
================
*/
void idPhysics_StaticMulti::Rotate( const idRotation &rotation, int id ) {
    Sys_Printf("void idPhysics_StaticMulti::Rotate( const idRotation &rotation, int id )\r\n");
}


/*
================
idPhysics_StaticMulti::GetOrigin
================
*/
const idVec3 &idPhysics_StaticMulti::GetOrigin( int id ) const {
	if ( id >= 0 && id < clipModels.Num() ) {
		return current[id].origin;
	}
	if ( clipModels.Num() ) {
		return current[0].origin;
	} else {
		return vec3_origin;
	}
}

/*
================
idPhysics_StaticMulti::GetAxis
================
*/
const idMat3 &idPhysics_StaticMulti::GetAxis( int id ) const {
	if ( id >= 0 && id < clipModels.Num() ) {
		return current[id].axis;
	}
	if ( clipModels.Num() ) {
		return current[0].axis;
	} else {
		return mat3_identity;
	}
}

/*
================
idPhysics_StaticMulti::SetLinearVelocity
================
*/
void idPhysics_StaticMulti::SetLinearVelocity( const idVec3 &newLinearVelocity, int id ) {
    Sys_Printf("void idPhysics_StaticMulti::SetLinearVelocity( const idVec3 &newLinearVelocity, int id )\r\n");
}


/*
================
idPhysics_StaticMulti::SetAngularVelocity
================
*/
void idPhysics_StaticMulti::SetAngularVelocity( const idVec3 &newAngularVelocity, int id ) {
    Sys_Printf("void idPhysics_StaticMulti::SetAngularVelocity( const idVec3 &newAngularVelocity, int id )\r\n");
}


/*
================
idPhysics_StaticMulti::GetLinearVelocity
================
*/
const idVec3 &idPhysics_StaticMulti::GetLinearVelocity( int id ) const {
	return vec3_origin;
}

/*
================
idPhysics_StaticMulti::GetAngularVelocity
================
*/
const idVec3 &idPhysics_StaticMulti::GetAngularVelocity( int id ) const {
	return vec3_origin;
}

/*
================
idPhysics_StaticMulti::SetGravity
================
*/
void idPhysics_StaticMulti::SetGravity( const idVec3 &newGravity ) {
    Sys_Printf("void idPhysics_StaticMulti::SetGravity( const idVec3 &newGravity )\r\n");
}


/*
================
idPhysics_StaticMulti::GetGravity
================
*/
const idVec3 &idPhysics_StaticMulti::GetGravity( void ) const {
	static idVec3 gravity( 0, 0, -g_gravity.GetFloat() );
	return gravity;
}

/*
================
idPhysics_StaticMulti::GetGravityNormal
================
*/
const idVec3 &idPhysics_StaticMulti::GetGravityNormal( void ) const {
	static idVec3 gravity( 0, 0, -1 );
	return gravity;
}

/*
================
idPhysics_StaticMulti::ClipTranslation
================
*/
void idPhysics_StaticMulti::ClipTranslation( trace_t &results, const idVec3 &translation, const idClipModel *model ) const {
    Sys_Printf("void idPhysics_StaticMulti::ClipTranslation( trace_t &results, const idVec3 &translation, const idClipModel *model )\r\n");
}


/*
================
idPhysics_StaticMulti::ClipRotation
================
*/
void idPhysics_StaticMulti::ClipRotation( trace_t &results, const idRotation &rotation, const idClipModel *model ) const {
    Sys_Printf("void idPhysics_StaticMulti::ClipRotation( trace_t &results, const idRotation &rotation, const idClipModel *model )\r\n");
}


/*
================
idPhysics_StaticMulti::ClipContents
================
*/
int idPhysics_StaticMulti::ClipContents( const idClipModel *model ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_StaticMulti::ClipContents( const idClipModel *model )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::DisableClip
================
*/
void idPhysics_StaticMulti::DisableClip( void ) {
    Sys_Printf("void idPhysics_StaticMulti::DisableClip( void )\r\n");
}


/*
================
idPhysics_StaticMulti::EnableClip
================
*/
void idPhysics_StaticMulti::EnableClip( void ) {
    Sys_Printf("void idPhysics_StaticMulti::EnableClip( void )\r\n");
}


/*
================
idPhysics_StaticMulti::UnlinkClip
================
*/
void idPhysics_StaticMulti::UnlinkClip( void ) {
    Sys_Printf("void idPhysics_StaticMulti::UnlinkClip( void )\r\n");
}


/*
================
idPhysics_StaticMulti::LinkClip
================
*/
void idPhysics_StaticMulti::LinkClip( void ) {
    Sys_Printf("void idPhysics_StaticMulti::LinkClip( void )\r\n");
}


/*
================
idPhysics_StaticMulti::EvaluateContacts
================
*/
bool idPhysics_StaticMulti::EvaluateContacts( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_StaticMulti::EvaluateContacts( void )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::GetNumContacts
================
*/
int idPhysics_StaticMulti::GetNumContacts( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_StaticMulti::GetNumContacts( void )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::GetContact
================
*/
const contactInfo_t &idPhysics_StaticMulti::GetContact( int num ) const {
	static contactInfo_t info;
	memset( &info, 0, sizeof( info ) );
	return info;
}

/*
================
idPhysics_StaticMulti::ClearContacts
================
*/
void idPhysics_StaticMulti::ClearContacts( void ) {
    Sys_Printf("void idPhysics_StaticMulti::ClearContacts( void )\r\n");
}


/*
================
idPhysics_StaticMulti::AddContactEntity
================
*/
void idPhysics_StaticMulti::AddContactEntity( idEntity *e ) {
    Sys_Printf("void idPhysics_StaticMulti::AddContactEntity( idEntity *e )\r\n");
}


/*
================
idPhysics_StaticMulti::RemoveContactEntity
================
*/
void idPhysics_StaticMulti::RemoveContactEntity( idEntity *e ) {
    Sys_Printf("void idPhysics_StaticMulti::RemoveContactEntity( idEntity *e )\r\n");
}


/*
================
idPhysics_StaticMulti::HasGroundContacts
================
*/
bool idPhysics_StaticMulti::HasGroundContacts( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_StaticMulti::HasGroundContacts( void )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::IsGroundEntity
================
*/
bool idPhysics_StaticMulti::IsGroundEntity( int entityNum ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_StaticMulti::IsGroundEntity( int entityNum )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::IsGroundClipModel
================
*/
bool idPhysics_StaticMulti::IsGroundClipModel( int entityNum, int id ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_StaticMulti::IsGroundClipModel( int entityNum, int id )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::SetPushed
================
*/
void idPhysics_StaticMulti::SetPushed( int deltaTime ) {
    Sys_Printf("void idPhysics_StaticMulti::SetPushed( int deltaTime )\r\n");
}


/*
================
idPhysics_StaticMulti::GetPushedLinearVelocity
================
*/
const idVec3 &idPhysics_StaticMulti::GetPushedLinearVelocity( const int id ) const {
	return vec3_origin;
}

/*
================
idPhysics_StaticMulti::GetPushedAngularVelocity
================
*/
const idVec3 &idPhysics_StaticMulti::GetPushedAngularVelocity( const int id ) const {
	return vec3_origin;
}

/*
================
idPhysics_StaticMulti::SetMaster
================
*/
void idPhysics_StaticMulti::SetMaster( idEntity *master, const bool orientated ) {
    Sys_Printf("void idPhysics_StaticMulti::SetMaster( idEntity *master, const bool orientated )\r\n");
}


/*
================
idPhysics_StaticMulti::GetBlockingInfo
================
*/
const trace_t *idPhysics_StaticMulti::GetBlockingInfo( void ) const {
    Sys_Printf("trace_t *idPhysics_StaticMulti::GetBlockingInfo( void )\r\n");
    return NULL;
}


/*
================
idPhysics_StaticMulti::GetBlockingEntity
================
*/
idEntity *idPhysics_StaticMulti::GetBlockingEntity( void ) const {
    Sys_Printf("idEntity *idPhysics_StaticMulti::GetBlockingEntity( void )\r\n");
    return NULL;
}


/*
================
idPhysics_StaticMulti::GetLinearEndTime
================
*/
int idPhysics_StaticMulti::GetLinearEndTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_StaticMulti::GetLinearEndTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::GetAngularEndTime
================
*/
int idPhysics_StaticMulti::GetAngularEndTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_StaticMulti::GetAngularEndTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_StaticMulti::WriteToSnapshot
================
*/
void idPhysics_StaticMulti::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idPhysics_StaticMulti::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idPhysics_StaticMulti::ReadFromSnapshot
================
*/
void idPhysics_StaticMulti::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idPhysics_StaticMulti::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}

