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

  idIK

===============================================================================
*/

/*
================
idIK::idIK
================
*/
idIK::idIK( void ) {
	ik_activate = false;
	initialized = false;
	self = NULL;
	animator = NULL;
	modifiedAnim = 0;
	modelOffset.Zero();
}

/*
================
idIK::~idIK
================
*/
idIK::~idIK( void ) {
}

/*
================
idIK::Save
================
*/
void idIK::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idIK::Save( idSaveGame *savefile )\r\n");
}


/*
================
idIK::Restore
================
*/
void idIK::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idIK::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idIK::IsInitialized
================
*/
bool idIK::IsInitialized( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idIK::IsInitialized( void )\r\n");
    return retVal;
}


/*
================
idIK::Init
================
*/
bool idIK::Init( idEntity *self, const char *anim, const idVec3 &modelOffset ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idIK::Init( idEntity *self, const char *anim, const idVec3 &modelOffset )\r\n");
    return retVal;
}


/*
================
idIK::Evaluate
================
*/
void idIK::Evaluate( void ) {
    Sys_Printf("void idIK::Evaluate( void )\r\n");
}


/*
================
idIK::ClearJointMods
================
*/
void idIK::ClearJointMods( void ) {
    Sys_Printf("void idIK::ClearJointMods( void )\r\n");
}


/*
================
idIK::SolveTwoBones
================
*/
bool idIK::SolveTwoBones( const idVec3 &startPos, const idVec3 &endPos, const idVec3 &dir, float len0, float len1, idVec3 &jointPos ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idIK::SolveTwoBones( const idVec3 &startPos, const idVec3 &endPos, const idVec3 &dir, float len0, float len1, idVec3 &jointPos )\r\n");
    return retVal;
}


/*
================
idIK::GetBoneAxis
================
*/
float idIK::GetBoneAxis( const idVec3 &startPos, const idVec3 &endPos, const idVec3 &dir, idMat3 &axis ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idIK::GetBoneAxis( const idVec3 &startPos, const idVec3 &endPos, const idVec3 &dir, idMat3 &axis )\r\n");
    return retVal;
}



/*
===============================================================================

  idIK_Walk

===============================================================================
*/

/*
================
idIK_Walk::idIK_Walk
================
*/
idIK_Walk::idIK_Walk() {
	int i;

	initialized = false;
	footModel = NULL;
	numLegs = 0;
	enabledLegs = 0;
	for ( i = 0; i < MAX_LEGS; i++ ) {
		footJoints[i] = INVALID_JOINT;
		ankleJoints[i] = INVALID_JOINT;
		kneeJoints[i] = INVALID_JOINT;
		hipJoints[i] = INVALID_JOINT;
		dirJoints[i] = INVALID_JOINT;
		hipForward[i].Zero();
		kneeForward[i].Zero();
		upperLegLength[i] = 0.0f;
		lowerLegLength[i] = 0.0f;
		upperLegToHipJoint[i].Identity();
		lowerLegToKneeJoint[i].Identity();
		oldAnkleHeights[i] = 0.0f;
	}
	waistJoint = INVALID_JOINT;

	smoothing = 0.75f;
	waistSmoothing = 0.5f;
	footShift = 0.0f;
	waistShift = 0.0f;
	minWaistFloorDist = 0.0f;
	minWaistAnkleDist = 0.0f;
	footUpTrace = 32.0f;
	footDownTrace = 32.0f;
	tiltWaist = false;
	usePivot = false;

	pivotFoot = -1;
	pivotYaw = 0.0f;
	pivotPos.Zero();

	oldHeightsValid = false;
	oldWaistHeight = 0.0f;
	waistOffset.Zero();
}

/*
================
idIK_Walk::~idIK_Walk
================
*/
idIK_Walk::~idIK_Walk() {
	if ( footModel ) {
		delete footModel;
	}
}

/*
================
idIK_Walk::Save
================
*/
void idIK_Walk::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idIK_Walk::Save( idSaveGame *savefile )\r\n");
}


/*
================
idIK_Walk::Restore
================
*/
void idIK_Walk::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idIK_Walk::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idIK_Walk::Init
================
*/
bool idIK_Walk::Init( idEntity *self, const char *anim, const idVec3 &modelOffset ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idIK_Walk::Init( idEntity *self, const char *anim, const idVec3 &modelOffset )\r\n");
    return retVal;
}


/*
================
idIK_Walk::Evaluate
================
*/
void idIK_Walk::Evaluate( void ) {
    Sys_Printf("void idIK_Walk::Evaluate( void )\r\n");
}


/*
================
idIK_Walk::ClearJointMods
================
*/
void idIK_Walk::ClearJointMods( void ) {
    Sys_Printf("void idIK_Walk::ClearJointMods( void )\r\n");
}


/*
================
idIK_Walk::EnableAll
================
*/
void idIK_Walk::EnableAll( void ) {
    Sys_Printf("void idIK_Walk::EnableAll( void )\r\n");
}


/*
================
idIK_Walk::DisableAll
================
*/
void idIK_Walk::DisableAll( void ) {
    Sys_Printf("void idIK_Walk::DisableAll( void )\r\n");
}


/*
================
idIK_Walk::EnableLeg
================
*/
void idIK_Walk::EnableLeg( int num ) {
    Sys_Printf("void idIK_Walk::EnableLeg( int num )\r\n");
}


/*
================
idIK_Walk::DisableLeg
================
*/
void idIK_Walk::DisableLeg( int num ) {
    Sys_Printf("void idIK_Walk::DisableLeg( int num )\r\n");
}



/*
===============================================================================

  idIK_Reach

===============================================================================
*/

/*
================
idIK_Reach::idIK_Reach
================
*/
idIK_Reach::idIK_Reach() {
	int i;

	initialized = false;
	numArms = 0;
	enabledArms = 0;
	for ( i = 0; i < MAX_ARMS; i++ ) {
		handJoints[i] = INVALID_JOINT;
		elbowJoints[i] = INVALID_JOINT;
		shoulderJoints[i] = INVALID_JOINT;
		dirJoints[i] = INVALID_JOINT;
		shoulderForward[i].Zero();
		elbowForward[i].Zero();
		upperArmLength[i] = 0.0f;
		lowerArmLength[i] = 0.0f;
		upperArmToShoulderJoint[i].Identity();
		lowerArmToElbowJoint[i].Identity();
	}
}

/*
================
idIK_Reach::~idIK_Reach
================
*/
idIK_Reach::~idIK_Reach() {
}

/*
================
idIK_Reach::Save
================
*/
void idIK_Reach::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idIK_Reach::Save( idSaveGame *savefile )\r\n");
}


/*
================
idIK_Reach::Restore
================
*/
void idIK_Reach::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idIK_Reach::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idIK_Reach::Init
================
*/
bool idIK_Reach::Init( idEntity *self, const char *anim, const idVec3 &modelOffset ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idIK_Reach::Init( idEntity *self, const char *anim, const idVec3 &modelOffset )\r\n");
    return retVal;
}


/*
================
idIK_Reach::Evaluate
================
*/
void idIK_Reach::Evaluate( void ) {
    Sys_Printf("void idIK_Reach::Evaluate( void )\r\n");
}


/*
================
idIK_Reach::ClearJointMods
================
*/
void idIK_Reach::ClearJointMods( void ) {
    Sys_Printf("void idIK_Reach::ClearJointMods( void )\r\n");
}

