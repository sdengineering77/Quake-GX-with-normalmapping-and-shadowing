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


/*
===============================================================================

  Articulated figure controller.

===============================================================================
*/
#define ARTICULATED_FIGURE_ANIM		"af_pose"
#define POSE_BOUNDS_EXPANSION		5.0f

/*
================
idAF::idAF
================
*/
idAF::idAF( void ) {
	self = NULL;
	animator = NULL;
	modifiedAnim = 0;
	baseOrigin.Zero();
	baseAxis.Identity();
	poseTime = -1;
	restStartTime = -1;
	isLoaded = false;
	isActive = false;
	hasBindConstraints = false;
}

/*
================
idAF::~idAF
================
*/
idAF::~idAF( void ) {
}

/*
================
idAF::Save
================
*/
void idAF::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idAF::Save( idSaveGame *savefile )\r\n");
}


/*
================
idAF::Restore
================
*/
void idAF::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idAF::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idAF::UpdateAnimation
================
*/
bool idAF::UpdateAnimation( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAF::UpdateAnimation( void )\r\n");
    return retVal;
}


/*
================
idAF::GetBounds

  returns bounds for the current pose
================
*/
idBounds idAF::GetBounds( void ) const {
    idBounds retVal;
    memset(&retVal, 0, sizeof(idBounds));
    Sys_Printf("idBounds idAF::GetBounds( void )\r\n");
    return retVal;
}


/*
================
idAF::SetupPose

  Transforms the articulated figure to match the current animation pose of the given entity.
================
*/
void idAF::SetupPose( idEntity *ent, int time ) {
    Sys_Printf("void idAF::SetupPose( idEntity *ent, int time )\r\n");
}


/*
================
idAF::ChangePose

   Change the articulated figure to match the current animation pose of the given entity
   and set the velocity relative to the previous pose.
================
*/
void idAF::ChangePose( idEntity *ent, int time ) {
    Sys_Printf("void idAF::ChangePose( idEntity *ent, int time )\r\n");
}


/*
================
idAF::EntitiesTouchingAF
================
*/
int idAF::EntitiesTouchingAF( afTouch_t touchList[ MAX_GENTITIES ] ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAF::EntitiesTouchingAF( afTouch_t touchList[ MAX_GENTITIES ] )\r\n");
    return retVal;
}


/*
================
idAF::BodyForClipModelId
================
*/
int idAF::BodyForClipModelId( int id ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAF::BodyForClipModelId( int id )\r\n");
    return retVal;
}


/*
================
idAF::GetPhysicsToVisualTransform
================
*/
void idAF::GetPhysicsToVisualTransform( idVec3 &origin, idMat3 &axis ) const {
    Sys_Printf("void idAF::GetPhysicsToVisualTransform( idVec3 &origin, idMat3 &axis )\r\n");
}


/*
================
idAF::GetImpactInfo
================
*/
void idAF::GetImpactInfo( idEntity *ent, int id, const idVec3 &point, impactInfo_t *info ) {
    Sys_Printf("void idAF::GetImpactInfo( idEntity *ent, int id, const idVec3 &point, impactInfo_t *info )\r\n");
}


/*
================
idAF::ApplyImpulse
================
*/
void idAF::ApplyImpulse( idEntity *ent, int id, const idVec3 &point, const idVec3 &impulse ) {
    Sys_Printf("void idAF::ApplyImpulse( idEntity *ent, int id, const idVec3 &point, const idVec3 &impulse )\r\n");
}


/*
================
idAF::AddForce
================
*/
void idAF::AddForce( idEntity *ent, int id, const idVec3 &point, const idVec3 &force ) {
    Sys_Printf("void idAF::AddForce( idEntity *ent, int id, const idVec3 &point, const idVec3 &force )\r\n");
}


/*
================
idAF::AddBody

  Adds a body.
================
*/
void idAF::AddBody( idAFBody *body, const idJointMat *joints, const char *jointName, const AFJointModType_t mod ) {
    Sys_Printf("void idAF::AddBody( idAFBody *body, const idJointMat *joints, const char *jointName, const AFJointModType_t mod )\r\n");
}


/*
================
idAF::SetBase

  Sets the base body.
================
*/
void idAF::SetBase( idAFBody *body, const idJointMat *joints ) {
    Sys_Printf("void idAF::SetBase( idAFBody *body, const idJointMat *joints )\r\n");
}


/*
================
idAF::LoadBody
================
*/
bool idAF::LoadBody( const idDeclAF_Body *fb, const idJointMat *joints ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAF::LoadBody( const idDeclAF_Body *fb, const idJointMat *joints )\r\n");
    return retVal;
}


/*
================
idAF::LoadConstraint
================
*/
bool idAF::LoadConstraint( const idDeclAF_Constraint *fc ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAF::LoadConstraint( const idDeclAF_Constraint *fc )\r\n");
    return retVal;
}


/*
================
GetJointTransform
================
*/
static bool GetJointTransform( void *model, const idJointMat *frame, const char *jointName, idVec3 &origin, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GetJointTransform( void *model, const idJointMat *frame, const char *jointName, idVec3 &origin, idMat3 &axis )\r\n");
    return retVal;
}


/*
================
idAF::Load
================
*/
bool idAF::Load( idEntity *ent, const char *fileName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAF::Load( idEntity *ent, const char *fileName )\r\n");
    return retVal;
}


/*
================
idAF::Start
================
*/
void idAF::Start( void ) {
    Sys_Printf("void idAF::Start( void )\r\n");
}


/*
================
idAF::TestSolid
================
*/
bool idAF::TestSolid( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAF::TestSolid( void )\r\n");
    return retVal;
}


/*
================
idAF::StartFromCurrentPose
================
*/
void idAF::StartFromCurrentPose( int inheritVelocityTime ) {
    Sys_Printf("void idAF::StartFromCurrentPose( int inheritVelocityTime )\r\n");
}


/*
================
idAF::Stop
================
*/
void idAF::Stop( void ) {
    Sys_Printf("void idAF::Stop( void )\r\n");
}


/*
================
idAF::Rest
================
*/
void idAF::Rest( void ) {
    Sys_Printf("void idAF::Rest( void )\r\n");
}


/*
================
idAF::SetConstraintPosition

  Only moves constraints that bind the entity to another entity.
================
*/
void idAF::SetConstraintPosition( const char *name, const idVec3 &pos ) {
    Sys_Printf("void idAF::SetConstraintPosition( const char *name, const idVec3 &pos )\r\n");
}


/*
================
idAF::SaveState
================
*/
void idAF::SaveState( idDict &args ) const {
    Sys_Printf("void idAF::SaveState( idDict &args )\r\n");
}


/*
================
idAF::LoadState
================
*/
void idAF::LoadState( const idDict &args ) {
    Sys_Printf("void idAF::LoadState( const idDict &args )\r\n");
}


/*
================
idAF::AddBindConstraints
================
*/
void idAF::AddBindConstraints( void ) {
    Sys_Printf("void idAF::AddBindConstraints( void )\r\n");
}


/*
================
idAF::RemoveBindConstraints
================
*/
void idAF::RemoveBindConstraints( void ) {
    Sys_Printf("void idAF::RemoveBindConstraints( void )\r\n");
}

