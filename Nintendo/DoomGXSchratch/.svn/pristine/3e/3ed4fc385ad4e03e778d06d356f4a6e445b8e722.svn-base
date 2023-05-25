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

bool idAnimManager::forceExport = false;

/***********************************************************************

	idMD5Anim

***********************************************************************/

/*
====================
idMD5Anim::idMD5Anim
====================
*/
idMD5Anim::idMD5Anim() {
	ref_count	= 0;
	numFrames	= 0;
	numJoints	= 0;
	frameRate	= 24;
	animLength	= 0;
	totaldelta.Zero();
}

/*
====================
idMD5Anim::idMD5Anim
====================
*/
idMD5Anim::~idMD5Anim() {
	Free();
}

/*
====================
idMD5Anim::Free
====================
*/
void idMD5Anim::Free( void ) {
    Sys_Printf("void idMD5Anim::Free( void )\r\n");
}


/*
====================
idMD5Anim::NumFrames
====================
*/
int	idMD5Anim::NumFrames( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidMD5Anim::NumFrames( void )\r\n");
    return retVal;
}


/*
====================
idMD5Anim::NumJoints
====================
*/
int	idMD5Anim::NumJoints( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidMD5Anim::NumJoints( void )\r\n");
    return retVal;
}


/*
====================
idMD5Anim::Length
====================
*/
int idMD5Anim::Length( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMD5Anim::Length( void )\r\n");
    return retVal;
}


/*
=====================
idMD5Anim::TotalMovementDelta
=====================
*/
const idVec3 &idMD5Anim::TotalMovementDelta( void ) const {
	return totaldelta;
}

/*
=====================
idMD5Anim::TotalMovementDelta
=====================
*/
const char *idMD5Anim::Name( void ) const {
    Sys_Printf("char *idMD5Anim::Name( void )\r\n");
    return NULL;
}


/*
====================
idMD5Anim::Reload
====================
*/
bool idMD5Anim::Reload( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMD5Anim::Reload( void )\r\n");
    return retVal;
}


/*
====================
idMD5Anim::Allocated
====================
*/
size_t idMD5Anim::Allocated( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idMD5Anim::Allocated( void )\r\n");
    return retVal;
}


/*
====================
idMD5Anim::LoadAnim
====================
*/
bool idMD5Anim::LoadAnim( const char *filename ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMD5Anim::LoadAnim( const char *filename )\r\n");
    return retVal;
}


/*
====================
idMD5Anim::IncreaseRefs
====================
*/
void idMD5Anim::IncreaseRefs( void ) const {
    Sys_Printf("void idMD5Anim::IncreaseRefs( void )\r\n");
}


/*
====================
idMD5Anim::DecreaseRefs
====================
*/
void idMD5Anim::DecreaseRefs( void ) const {
    Sys_Printf("void idMD5Anim::DecreaseRefs( void )\r\n");
}


/*
====================
idMD5Anim::NumRefs
====================
*/
int idMD5Anim::NumRefs( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMD5Anim::NumRefs( void )\r\n");
    return retVal;
}


/*
====================
idMD5Anim::GetFrameBlend
====================
*/
void idMD5Anim::GetFrameBlend( int framenum, frameBlend_t &frame ) const {
    Sys_Printf("void idMD5Anim::GetFrameBlend( int framenum, frameBlend_t &frame )\r\n");
}


/*
====================
idMD5Anim::ConvertTimeToFrame
====================
*/
void idMD5Anim::ConvertTimeToFrame( int time, int cyclecount, frameBlend_t &frame ) const {
    Sys_Printf("void idMD5Anim::ConvertTimeToFrame( int time, int cyclecount, frameBlend_t &frame )\r\n");
}


/*
====================
idMD5Anim::GetOrigin
====================
*/
void idMD5Anim::GetOrigin( idVec3 &offset, int time, int cyclecount ) const {
    Sys_Printf("void idMD5Anim::GetOrigin( idVec3 &offset, int time, int cyclecount )\r\n");
}


/*
====================
idMD5Anim::GetOriginRotation
====================
*/
void idMD5Anim::GetOriginRotation( idQuat &rotation, int time, int cyclecount ) const {
    Sys_Printf("void idMD5Anim::GetOriginRotation( idQuat &rotation, int time, int cyclecount )\r\n");
}


/*
====================
idMD5Anim::GetBounds
====================
*/
void idMD5Anim::GetBounds( idBounds &bnds, int time, int cyclecount ) const {
    Sys_Printf("void idMD5Anim::GetBounds( idBounds &bnds, int time, int cyclecount )\r\n");
}


/*
====================
idMD5Anim::GetInterpolatedFrame
====================
*/
void idMD5Anim::GetInterpolatedFrame( frameBlend_t &frame, idJointQuat *joints, const int *index, int numIndexes ) const {
    Sys_Printf("void idMD5Anim::GetInterpolatedFrame( frameBlend_t &frame, idJointQuat *joints, const int *index, int numIndexes )\r\n");
}


/*
====================
idMD5Anim::GetSingleFrame
====================
*/
void idMD5Anim::GetSingleFrame( int framenum, idJointQuat *joints, const int *index, int numIndexes ) const {
    Sys_Printf("void idMD5Anim::GetSingleFrame( int framenum, idJointQuat *joints, const int *index, int numIndexes )\r\n");
}


/*
====================
idMD5Anim::CheckModelHierarchy
====================
*/
void idMD5Anim::CheckModelHierarchy( const idRenderModel *model ) const {
    Sys_Printf("void idMD5Anim::CheckModelHierarchy( const idRenderModel *model )\r\n");
}


/***********************************************************************

	idAnimManager

***********************************************************************/

/*
====================
idAnimManager::idAnimManager
====================
*/
idAnimManager::idAnimManager() {
}

/*
====================
idAnimManager::~idAnimManager
====================
*/
idAnimManager::~idAnimManager() {
	Shutdown();
}

/*
====================
idAnimManager::Shutdown
====================
*/
void idAnimManager::Shutdown( void ) {
    Sys_Printf("void idAnimManager::Shutdown( void )\r\n");
}


/*
====================
idAnimManager::GetAnim
====================
*/
idMD5Anim *idAnimManager::GetAnim( const char *name ) {
    Sys_Printf("idMD5Anim *idAnimManager::GetAnim( const char *name )\r\n");
    return NULL;
}


/*
================
idAnimManager::ReloadAnims
================
*/
void idAnimManager::ReloadAnims( void ) {
    Sys_Printf("void idAnimManager::ReloadAnims( void )\r\n");
}


/*
================
idAnimManager::JointIndex
================
*/
int	idAnimManager::JointIndex( const char *name ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidAnimManager::JointIndex( const char *name )\r\n");
    return retVal;
}


/*
================
idAnimManager::JointName
================
*/
const char *idAnimManager::JointName( int index ) const {
    Sys_Printf("char *idAnimManager::JointName( int index )\r\n");
    return NULL;
}


/*
================
idAnimManager::ListAnims
================
*/
void idAnimManager::ListAnims( void ) const {
    Sys_Printf("void idAnimManager::ListAnims( void )\r\n");
}


/*
================
idAnimManager::FlushUnusedAnims
================
*/
void idAnimManager::FlushUnusedAnims( void ) {
    Sys_Printf("void idAnimManager::FlushUnusedAnims( void )\r\n");
}

