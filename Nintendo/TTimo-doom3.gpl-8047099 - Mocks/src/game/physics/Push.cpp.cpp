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


/*
============
idPush::InitSavingPushedEntityPositions
============
*/
void idPush::InitSavingPushedEntityPositions( void ) {
    Sys_Printf("void idPush::InitSavingPushedEntityPositions( void )\r\n");
}


/*
============
idPush::SaveEntityPosition
============
*/
void idPush::SaveEntityPosition( idEntity *ent ) {
    Sys_Printf("void idPush::SaveEntityPosition( idEntity *ent )\r\n");
}


/*
============
idPush::RestorePushedEntityPositions
============
*/
void idPush::RestorePushedEntityPositions( void ) {
    Sys_Printf("void idPush::RestorePushedEntityPositions( void )\r\n");
}


/*
============
idPush::RotateEntityToAxial
============
*/
bool idPush::RotateEntityToAxial( idEntity *ent, idVec3 rotationPoint ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPush::RotateEntityToAxial( idEntity *ent, idVec3 rotationPoint )\r\n");
    return retVal;
}


#ifdef NEW_PUSH

/*
============
idPush::CanPushEntity
============
*/
bool idPush::CanPushEntity( idEntity *ent, idEntity *pusher, idEntity *initialPusher, const int flags ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPush::CanPushEntity( idEntity *ent, idEntity *pusher, idEntity *initialPusher, const int flags )\r\n");
    return retVal;
}


/*
============
idPush::AddEntityToPushedGroup
============
*/
void idPush::AddEntityToPushedGroup( idEntity *ent, float fraction, bool groundContact ) {
    Sys_Printf("void idPush::AddEntityToPushedGroup( idEntity *ent, float fraction, bool groundContact )\r\n");
}


/*
============
idPush::IsFullyPushed
============
*/
bool idPush::IsFullyPushed( idEntity *ent ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPush::IsFullyPushed( idEntity *ent )\r\n");
    return retVal;
}


/*
============
idPush::ClipTranslationAgainstPusher
============
*/
bool idPush::ClipTranslationAgainstPusher( trace_t &results, idEntity *ent, idEntity *pusher, const idVec3 &translation ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPush::ClipTranslationAgainstPusher( trace_t &results, idEntity *ent, idEntity *pusher, const idVec3 &translation )\r\n");
    return retVal;
}


/*
============
idPush::GetPushableEntitiesForTranslation
============
*/
int idPush::GetPushableEntitiesForTranslation( idEntity *pusher, idEntity *initialPusher, const int flags,
											const idVec3 &translation, idEntity *entityList[], int maxEntities ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPush::GetPushableEntitiesForTranslation( idEntity *pusher, idEntity *initialPusher, const int flags,const idVec3 &translation, idEntity *entityList[], int maxEntities )\r\n");
    return retVal;
}


/*
============
idPush::ClipTranslationalPush

  Try to push other entities by translating the given entity.
============
*/
float idPush::ClipTranslationalPush( trace_t &results, idEntity *pusher, const int flags,
										const idVec3 &newOrigin, const idVec3 &translation ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPush::ClipTranslationalPush( trace_t &results, idEntity *pusher, const int flags,const idVec3 &newOrigin, const idVec3 &translation )\r\n");
    return retVal;
}


/*
============
idPush::ClipRotationAgainstPusher
============
*/
bool idPush::ClipRotationAgainstPusher( trace_t &results, idEntity *ent, idEntity *pusher, const idRotation &rotation ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPush::ClipRotationAgainstPusher( trace_t &results, idEntity *ent, idEntity *pusher, const idRotation &rotation )\r\n");
    return retVal;
}


/*
============
idPush::GetPushableEntitiesForRotation
============
*/
int idPush::GetPushableEntitiesForRotation( idEntity *pusher, idEntity *initialPusher, const int flags,
											const idRotation &rotation, idEntity *entityList[], int maxEntities ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPush::GetPushableEntitiesForRotation( idEntity *pusher, idEntity *initialPusher, const int flags,const idRotation &rotation, idEntity *entityList[], int maxEntities )\r\n");
    return retVal;
}


/*
============
idPush::ClipRotationalPush

  Try to push other entities by rotating the given entity.
============
*/
float idPush::ClipRotationalPush( trace_t &results, idEntity *pusher, const int flags,
									const idMat3 &newAxis, const idRotation &rotation ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPush::ClipRotationalPush( trace_t &results, idEntity *pusher, const int flags,const idMat3 &newAxis, const idRotation &rotation )\r\n");
    return retVal;
}


#else /* !NEW_PUSH */

enum {
	PUSH_NO,			// not pushed
	PUSH_OK,			// pushed ok
	PUSH_BLOCKED		// blocked
};

/*
============
idPush::ClipEntityRotation
============
*/
void idPush::ClipEntityRotation( trace_t &trace, const idEntity *ent, const idClipModel *clipModel, idClipModel *skip, const idRotation &rotation ) {
    Sys_Printf("void idPush::ClipEntityRotation( trace_t &trace, const idEntity *ent, const idClipModel *clipModel, idClipModel *skip, const idRotation &rotation )\r\n");
}


/*
============
idPush::ClipEntityTranslation
============
*/
void idPush::ClipEntityTranslation( trace_t &trace, const idEntity *ent, const idClipModel *clipModel, idClipModel *skip, const idVec3 &translation ) {
    Sys_Printf("void idPush::ClipEntityTranslation( trace_t &trace, const idEntity *ent, const idClipModel *clipModel, idClipModel *skip, const idVec3 &translation )\r\n");
}


/*
============
idPush::TryRotatePushEntity
============
*/
#ifdef _DEBUG
//	#define ROTATIONAL_PUSH_DEBUG
#endif

int idPush::TryRotatePushEntity( trace_t &results, idEntity *check, idClipModel *clipModel, const int flags,
											 const idMat3 &newAxis, const idRotation &rotation ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPush::TryRotatePushEntity( trace_t &results, idEntity *check, idClipModel *clipModel, const int flags, const idMat3 &newAxis, const idRotation &rotation )\r\n");
    return retVal;
}


/*
============
idPush::TryTranslatePushEntity
============
*/
#ifdef _DEBUG
//	#define TRANSLATIONAL_PUSH_DEBUG
#endif

int idPush::TryTranslatePushEntity( trace_t &results, idEntity *check, idClipModel *clipModel, const int flags,
										const idVec3 &newOrigin, const idVec3 &move ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPush::TryTranslatePushEntity( trace_t &results, idEntity *check, idClipModel *clipModel, const int flags,const idVec3 &newOrigin, const idVec3 &move )\r\n");
    return retVal;
}


/*
============
idPush::DiscardEntities
============
*/
int idPush::DiscardEntities( idEntity *entityList[], int numEntities, int flags, idEntity *pusher ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPush::DiscardEntities( idEntity *entityList[], int numEntities, int flags, idEntity *pusher )\r\n");
    return retVal;
}


/*
============
idPush::ClipTranslationalPush

  Try to push other entities by moving the given entity.
============
*/
float idPush::ClipTranslationalPush( trace_t &results, idEntity *pusher, const int flags,
										const idVec3 &newOrigin, const idVec3 &translation ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPush::ClipTranslationalPush( trace_t &results, idEntity *pusher, const int flags,const idVec3 &newOrigin, const idVec3 &translation )\r\n");
    return retVal;
}


/*
============
idPush::ClipRotationalPush

  Try to push other entities by moving the given entity.
============
*/
float idPush::ClipRotationalPush( trace_t &results, idEntity *pusher, const int flags,
									const idMat3 &newAxis, const idRotation &rotation ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPush::ClipRotationalPush( trace_t &results, idEntity *pusher, const int flags,const idMat3 &newAxis, const idRotation &rotation )\r\n");
    return retVal;
}


#endif /* !NEW_PUSH */


/*
============
idPush::ClipPush

  Try to push other entities by moving the given entity.
============
*/
float idPush::ClipPush( trace_t &results, idEntity *pusher, const int flags,
								const idVec3 &oldOrigin, const idMat3 &oldAxis,
									idVec3 &newOrigin, idMat3 &newAxis ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPush::ClipPush( trace_t &results, idEntity *pusher, const int flags,const idVec3 &oldOrigin, const idMat3 &oldAxis,idVec3 &newOrigin, idMat3 &newAxis )\r\n");
    return retVal;
}

