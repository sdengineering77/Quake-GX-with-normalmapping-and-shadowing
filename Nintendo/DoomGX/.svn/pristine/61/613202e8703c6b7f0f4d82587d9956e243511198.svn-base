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

CLASS_DECLARATION( idPhysics_Base, idPhysics_Actor )
END_CLASS

/*
================
idPhysics_Actor::idPhysics_Actor
================
*/
idPhysics_Actor::idPhysics_Actor( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idPhysics_Actor::idPhysics_Actor( void ) size %d\r\n", sizeof(*this));
#endif

	clipModel = NULL;
	SetClipModelAxis();
	mass = 100.0f;
	invMass = 1.0f / mass;
	masterEntity = NULL;
	masterYaw = 0.0f;
	masterDeltaYaw = 0.0f;
	groundEntityPtr = NULL;
}

/*
================
idPhysics_Actor::~idPhysics_Actor
================
*/
idPhysics_Actor::~idPhysics_Actor( void ) {
	if ( clipModel ) {
		delete clipModel;
		clipModel = NULL;
	}
}

/*
================
idPhysics_Actor::Save
================
*/
void idPhysics_Actor::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idPhysics_Actor::Save( idSaveGame *savefile )\r\n");
}


/*
================
idPhysics_Actor::Restore
================
*/
void idPhysics_Actor::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idPhysics_Actor::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idPhysics_Actor::SetClipModelAxis
================
*/
void idPhysics_Actor::SetClipModelAxis( void ) {
    Sys_Printf("void idPhysics_Actor::SetClipModelAxis( void )\r\n");
}


/*
================
idPhysics_Actor::GetGravityAxis
================
*/
const idMat3 &idPhysics_Actor::GetGravityAxis( void ) const {
	return clipModelAxis;
}

/*
================
idPhysics_Actor::GetMasterDeltaYaw
================
*/
float idPhysics_Actor::GetMasterDeltaYaw( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPhysics_Actor::GetMasterDeltaYaw( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Actor::GetGroundEntity
================
*/
idEntity *idPhysics_Actor::GetGroundEntity( void ) const {
    Sys_Printf("idEntity *idPhysics_Actor::GetGroundEntity( void )\r\n");
    return NULL;
}


/*
================
idPhysics_Actor::SetClipModel
================
*/
void idPhysics_Actor::SetClipModel( idClipModel *model, const float density, int id, bool freeOld ) {
    Sys_Printf("void idPhysics_Actor::SetClipModel( idClipModel *model, const float density, int id, bool freeOld )\r\n");
}


/*
================
idPhysics_Actor::GetClipModel
================
*/
idClipModel *idPhysics_Actor::GetClipModel( int id ) const {
    Sys_Printf("idClipModel *idPhysics_Actor::GetClipModel( int id )\r\n");
    return NULL;
}


/*
================
idPhysics_Actor::GetNumClipModels
================
*/
int idPhysics_Actor::GetNumClipModels( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Actor::GetNumClipModels( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Actor::SetMass
================
*/
void idPhysics_Actor::SetMass( float _mass, int id ) {
    Sys_Printf("void idPhysics_Actor::SetMass( float _mass, int id )\r\n");
}


/*
================
idPhysics_Actor::GetMass
================
*/
float idPhysics_Actor::GetMass( int id ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPhysics_Actor::GetMass( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_Actor::SetClipMask
================
*/
void idPhysics_Actor::SetContents( int contents, int id ) {
    Sys_Printf("void idPhysics_Actor::SetContents( int contents, int id )\r\n");
}


/*
================
idPhysics_Actor::SetClipMask
================
*/
int idPhysics_Actor::GetContents( int id ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Actor::GetContents( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_Actor::GetBounds
================
*/
const idBounds &idPhysics_Actor::GetBounds( int id ) const {
	return clipModel->GetBounds();
}

/*
================
idPhysics_Actor::GetAbsBounds
================
*/
const idBounds &idPhysics_Actor::GetAbsBounds( int id ) const {
	return clipModel->GetAbsBounds();
}

/*
================
idPhysics_Actor::IsPushable
================
*/
bool idPhysics_Actor::IsPushable( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Actor::IsPushable( void )\r\n");
    return retVal;
}


/*
================
idPhysics_Actor::GetOrigin
================
*/
const idVec3 &idPhysics_Actor::GetOrigin( int id ) const {
	return clipModel->GetOrigin();
}

/*
================
idPhysics_Player::GetAxis
================
*/
const idMat3 &idPhysics_Actor::GetAxis( int id ) const {
	return clipModel->GetAxis();
}

/*
================
idPhysics_Actor::SetGravity
================
*/
void idPhysics_Actor::SetGravity( const idVec3 &newGravity ) {
    Sys_Printf("void idPhysics_Actor::SetGravity( const idVec3 &newGravity )\r\n");
}


/*
================
idPhysics_Actor::ClipTranslation
================
*/
void idPhysics_Actor::ClipTranslation( trace_t &results, const idVec3 &translation, const idClipModel *model ) const {
    Sys_Printf("void idPhysics_Actor::ClipTranslation( trace_t &results, const idVec3 &translation, const idClipModel *model )\r\n");
}


/*
================
idPhysics_Actor::ClipRotation
================
*/
void idPhysics_Actor::ClipRotation( trace_t &results, const idRotation &rotation, const idClipModel *model ) const {
    Sys_Printf("void idPhysics_Actor::ClipRotation( trace_t &results, const idRotation &rotation, const idClipModel *model )\r\n");
}


/*
================
idPhysics_Actor::ClipContents
================
*/
int idPhysics_Actor::ClipContents( const idClipModel *model ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_Actor::ClipContents( const idClipModel *model )\r\n");
    return retVal;
}


/*
================
idPhysics_Actor::DisableClip
================
*/
void idPhysics_Actor::DisableClip( void ) {
    Sys_Printf("void idPhysics_Actor::DisableClip( void )\r\n");
}


/*
================
idPhysics_Actor::EnableClip
================
*/
void idPhysics_Actor::EnableClip( void ) {
    Sys_Printf("void idPhysics_Actor::EnableClip( void )\r\n");
}


/*
================
idPhysics_Actor::UnlinkClip
================
*/
void idPhysics_Actor::UnlinkClip( void ) {
    Sys_Printf("void idPhysics_Actor::UnlinkClip( void )\r\n");
}


/*
================
idPhysics_Actor::LinkClip
================
*/
void idPhysics_Actor::LinkClip( void ) {
    Sys_Printf("void idPhysics_Actor::LinkClip( void )\r\n");
}


/*
================
idPhysics_Actor::EvaluateContacts
================
*/
bool idPhysics_Actor::EvaluateContacts( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_Actor::EvaluateContacts( void )\r\n");
    return retVal;
}

