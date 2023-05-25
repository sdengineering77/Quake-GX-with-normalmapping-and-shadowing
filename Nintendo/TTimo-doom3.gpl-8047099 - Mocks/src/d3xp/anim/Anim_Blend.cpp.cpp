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

static const char *channelNames[ ANIM_NumAnimChannels ] = {
	"all", "torso", "legs", "head", "eyelids"
};

/***********************************************************************

	idAnim

***********************************************************************/

/*
=====================
idAnim::idAnim
=====================
*/
idAnim::idAnim() {
	modelDef = NULL;
	numAnims = 0;
	memset( anims, 0, sizeof( anims ) );
	memset( &flags, 0, sizeof( flags ) );
}

/*
=====================
idAnim::idAnim
=====================
*/
idAnim::idAnim( const idDeclModelDef *modelDef, const idAnim *anim ) {
	int i;

	this->modelDef = modelDef;
	numAnims = anim->numAnims;
	name = anim->name;
	realname = anim->realname;
	flags = anim->flags;

	memset( anims, 0, sizeof( anims ) );
	for( i = 0; i < numAnims; i++ ) {
		anims[ i ] = anim->anims[ i ];
		anims[ i ]->IncreaseRefs();
	}

	frameLookup.SetNum( anim->frameLookup.Num() );
	memcpy( frameLookup.Ptr(), anim->frameLookup.Ptr(), frameLookup.MemoryUsed() );

	frameCommands.SetNum( anim->frameCommands.Num() );
	for( i = 0; i < frameCommands.Num(); i++ ) {
		frameCommands[ i ] = anim->frameCommands[ i ];
		if ( anim->frameCommands[ i ].string ) {
			frameCommands[ i ].string = new idStr( *anim->frameCommands[ i ].string );
		}
	}
}

/*
=====================
idAnim::~idAnim
=====================
*/
idAnim::~idAnim() {
	int i;

	for( i = 0; i < numAnims; i++ ) {
		anims[ i ]->DecreaseRefs();
	}

	for( i = 0; i < frameCommands.Num(); i++ ) {
		delete frameCommands[ i ].string;
	}
}

/*
=====================
idAnim::SetAnim
=====================
*/
void idAnim::SetAnim( const idDeclModelDef *modelDef, const char *sourcename, const char *animname, int num, const idMD5Anim *md5anims[ ANIM_MaxSyncedAnims ] ) {
    Sys_Printf("void idAnim::SetAnim( const idDeclModelDef *modelDef, const char *sourcename, const char *animname, int num, const idMD5Anim *md5anims[ ANIM_MaxSyncedAnims ] )\r\n");
}


/*
=====================
idAnim::Name
=====================
*/
const char *idAnim::Name( void ) const {
    Sys_Printf("char *idAnim::Name( void )\r\n");
    return NULL;
}


/*
=====================
idAnim::FullName
=====================
*/
const char *idAnim::FullName( void ) const {
    Sys_Printf("char *idAnim::FullName( void )\r\n");
    return NULL;
}


/*
=====================
idAnim::MD5Anim

index 0 will never be NULL.  Any anim >= NumAnims will return NULL.
=====================
*/
const idMD5Anim *idAnim::MD5Anim( int num ) const {
    Sys_Printf("idMD5Anim *idAnim::MD5Anim( int num )\r\n");
    return NULL;
}


/*
=====================
idAnim::ModelDef
=====================
*/
const idDeclModelDef *idAnim::ModelDef( void ) const {
    Sys_Printf("idDeclModelDef *idAnim::ModelDef( void )\r\n");
    return NULL;
}


/*
=====================
idAnim::Length
=====================
*/
int idAnim::Length( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAnim::Length( void )\r\n");
    return retVal;
}


/*
=====================
idAnim::NumFrames
=====================
*/
int	idAnim::NumFrames( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidAnim::NumFrames( void )\r\n");
    return retVal;
}


/*
=====================
idAnim::NumAnims
=====================
*/
int	idAnim::NumAnims( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidAnim::NumAnims( void )\r\n");
    return retVal;
}


/*
=====================
idAnim::TotalMovementDelta
=====================
*/
const idVec3 &idAnim::TotalMovementDelta( void ) const {
	if ( !anims[ 0 ] ) {
		return vec3_zero;
	}
	
	return anims[ 0 ]->TotalMovementDelta();
}

/*
=====================
idAnim::GetOrigin
=====================
*/
bool idAnim::GetOrigin( idVec3 &offset, int animNum, int currentTime, int cyclecount ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnim::GetOrigin( idVec3 &offset, int animNum, int currentTime, int cyclecount )\r\n");
    return retVal;
}


/*
=====================
idAnim::GetOriginRotation
=====================
*/
bool idAnim::GetOriginRotation( idQuat &rotation, int animNum, int currentTime, int cyclecount ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnim::GetOriginRotation( idQuat &rotation, int animNum, int currentTime, int cyclecount )\r\n");
    return retVal;
}


/*
=====================
idAnim::GetBounds
=====================
*/
ID_INLINE bool idAnim::GetBounds( idBounds &bounds, int animNum, int currentTime, int cyclecount ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnim::GetBounds( idBounds &bounds, int animNum, int currentTime, int cyclecount )\r\n");
    return retVal;
}



/*
=====================
idAnim::AddFrameCommand

Returns NULL if no error.
=====================
*/
const char *idAnim::AddFrameCommand( const idDeclModelDef *modelDef, int framenum, idLexer &src, const idDict *def ) {
    Sys_Printf("char *idAnim::AddFrameCommand( const idDeclModelDef *modelDef, int framenum, idLexer &src, const idDict *def )\r\n");
    return NULL;
}


/*
=====================
idAnim::CallFrameCommands
=====================
*/
void idAnim::CallFrameCommands( idEntity *ent, int from, int to ) const {
    Sys_Printf("void idAnim::CallFrameCommands( idEntity *ent, int from, int to )\r\n");
}


/*
=====================
idAnim::FindFrameForFrameCommand
=====================
*/
int	idAnim::FindFrameForFrameCommand( frameCommandType_t framecommand, const frameCommand_t **command ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidAnim::FindFrameForFrameCommand( frameCommandType_t framecommand, const frameCommand_t **command )\r\n");
    return retVal;
}


/*
=====================
idAnim::HasFrameCommands
=====================
*/
bool idAnim::HasFrameCommands( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnim::HasFrameCommands( void )\r\n");
    return retVal;
}


/*
=====================
idAnim::SetAnimFlags
=====================
*/
void idAnim::SetAnimFlags( const animFlags_t &animflags ) {
    Sys_Printf("void idAnim::SetAnimFlags( const animFlags_t &animflags )\r\n");
}


/*
=====================
idAnim::GetAnimFlags
=====================
*/
const animFlags_t &idAnim::GetAnimFlags( void ) const {
	return flags;
}

/***********************************************************************

	idAnimBlend

***********************************************************************/

/*
=====================
idAnimBlend::idAnimBlend
=====================
*/
idAnimBlend::idAnimBlend( void ) {
	Reset( NULL );
}

/*
=====================
idAnimBlend::Save

archives object for save game file
=====================
*/
void idAnimBlend::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idAnimBlend::Save( idSaveGame *savefile )\r\n");
}


/*
=====================
idAnimBlend::Restore

unarchives object from save game file
=====================
*/
void idAnimBlend::Restore( idRestoreGame *savefile, const idDeclModelDef *modelDef ) {
    Sys_Printf("void idAnimBlend::Restore( idRestoreGame *savefile, const idDeclModelDef *modelDef )\r\n");
}


/*
=====================
idAnimBlend::Reset
=====================
*/
void idAnimBlend::Reset( const idDeclModelDef *_modelDef ) {
    Sys_Printf("void idAnimBlend::Reset( const idDeclModelDef *_modelDef )\r\n");
}


/*
=====================
idAnimBlend::FullName
=====================
*/
const char *idAnimBlend::AnimFullName( void ) const {
    Sys_Printf("char *idAnimBlend::AnimFullName( void )\r\n");
    return NULL;
}


/*
=====================
idAnimBlend::AnimName
=====================
*/
const char *idAnimBlend::AnimName( void ) const {
    Sys_Printf("char *idAnimBlend::AnimName( void )\r\n");
    return NULL;
}


/*
=====================
idAnimBlend::NumFrames
=====================
*/
int idAnimBlend::NumFrames( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAnimBlend::NumFrames( void )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::Length
=====================
*/
int	idAnimBlend::Length( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidAnimBlend::Length( void )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::GetWeight
=====================
*/
float idAnimBlend::GetWeight( int currentTime ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAnimBlend::GetWeight( int currentTime )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::GetFinalWeight
=====================
*/
float idAnimBlend::GetFinalWeight( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAnimBlend::GetFinalWeight( void )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::SetWeight
=====================
*/
void idAnimBlend::SetWeight( float newweight, int currentTime, int blendTime ) {
    Sys_Printf("void idAnimBlend::SetWeight( float newweight, int currentTime, int blendTime )\r\n");
}


/*
=====================
idAnimBlend::NumSyncedAnims
=====================
*/
int idAnimBlend::NumSyncedAnims( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAnimBlend::NumSyncedAnims( void )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::SetSyncedAnimWeight
=====================
*/
bool idAnimBlend::SetSyncedAnimWeight( int num, float weight ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimBlend::SetSyncedAnimWeight( int num, float weight )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::SetFrame
=====================
*/
void idAnimBlend::SetFrame( const idDeclModelDef *modelDef, int _animNum, int _frame, int currentTime, int blendTime ) {
    Sys_Printf("void idAnimBlend::SetFrame( const idDeclModelDef *modelDef, int _animNum, int _frame, int currentTime, int blendTime )\r\n");
}


/*
=====================
idAnimBlend::CycleAnim
=====================
*/
void idAnimBlend::CycleAnim( const idDeclModelDef *modelDef, int _animNum, int currentTime, int blendTime ) {
    Sys_Printf("void idAnimBlend::CycleAnim( const idDeclModelDef *modelDef, int _animNum, int currentTime, int blendTime )\r\n");
}


/*
=====================
idAnimBlend::PlayAnim
=====================
*/
void idAnimBlend::PlayAnim( const idDeclModelDef *modelDef, int _animNum, int currentTime, int blendTime ) {
    Sys_Printf("void idAnimBlend::PlayAnim( const idDeclModelDef *modelDef, int _animNum, int currentTime, int blendTime )\r\n");
}


/*
=====================
idAnimBlend::Clear
=====================
*/
void idAnimBlend::Clear( int currentTime, int clearTime ) {
    Sys_Printf("void idAnimBlend::Clear( int currentTime, int clearTime )\r\n");
}


/*
=====================
idAnimBlend::IsDone
=====================
*/
bool idAnimBlend::IsDone( int currentTime ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimBlend::IsDone( int currentTime )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::FrameHasChanged
=====================
*/
bool idAnimBlend::FrameHasChanged( int currentTime ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimBlend::FrameHasChanged( int currentTime )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::GetCycleCount
=====================
*/
int idAnimBlend::GetCycleCount( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAnimBlend::GetCycleCount( void )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::SetCycleCount
=====================
*/
void idAnimBlend::SetCycleCount( int count ) {
    Sys_Printf("void idAnimBlend::SetCycleCount( int count )\r\n");
}


/*
=====================
idAnimBlend::SetPlaybackRate
=====================
*/
void idAnimBlend::SetPlaybackRate( int currentTime, float newRate ) {
    Sys_Printf("void idAnimBlend::SetPlaybackRate( int currentTime, float newRate )\r\n");
}


/*
=====================
idAnimBlend::GetPlaybackRate
=====================
*/
float idAnimBlend::GetPlaybackRate( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAnimBlend::GetPlaybackRate( void )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::SetStartTime
=====================
*/
void idAnimBlend::SetStartTime( int _startTime ) {
    Sys_Printf("void idAnimBlend::SetStartTime( int _startTime )\r\n");
}


/*
=====================
idAnimBlend::GetStartTime
=====================
*/
int idAnimBlend::GetStartTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAnimBlend::GetStartTime( void )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::GetEndTime
=====================
*/
int idAnimBlend::GetEndTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAnimBlend::GetEndTime( void )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::PlayLength
=====================
*/
int idAnimBlend::PlayLength( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAnimBlend::PlayLength( void )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::AllowMovement
=====================
*/
void idAnimBlend::AllowMovement( bool allow ) {
    Sys_Printf("void idAnimBlend::AllowMovement( bool allow )\r\n");
}


/*
=====================
idAnimBlend::AllowFrameCommands
=====================
*/
void idAnimBlend::AllowFrameCommands( bool allow ) {
    Sys_Printf("void idAnimBlend::AllowFrameCommands( bool allow )\r\n");
}



/*
=====================
idAnimBlend::Anim
=====================
*/
const idAnim *idAnimBlend::Anim( void ) const {
    Sys_Printf("idAnim *idAnimBlend::Anim( void )\r\n");
    return NULL;
}


/*
=====================
idAnimBlend::AnimNum
=====================
*/
int idAnimBlend::AnimNum( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAnimBlend::AnimNum( void )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::AnimTime
=====================
*/
int idAnimBlend::AnimTime( int currentTime ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAnimBlend::AnimTime( int currentTime )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::GetFrameNumber
=====================
*/
int idAnimBlend::GetFrameNumber( int currentTime ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAnimBlend::GetFrameNumber( int currentTime )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::CallFrameCommands
=====================
*/
void idAnimBlend::CallFrameCommands( idEntity *ent, int fromtime, int totime ) const {
    Sys_Printf("void idAnimBlend::CallFrameCommands( idEntity *ent, int fromtime, int totime )\r\n");
}


/*
=====================
idAnimBlend::BlendAnim
=====================
*/
bool idAnimBlend::BlendAnim( int currentTime, int channel, int numJoints, idJointQuat *blendFrame, float &blendWeight, bool removeOriginOffset, bool overrideBlend, bool printInfo ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimBlend::BlendAnim( int currentTime, int channel, int numJoints, idJointQuat *blendFrame, float &blendWeight, bool removeOriginOffset, bool overrideBlend, bool printInfo )\r\n");
    return retVal;
}


/*
=====================
idAnimBlend::BlendOrigin
=====================
*/
void idAnimBlend::BlendOrigin( int currentTime, idVec3 &blendPos, float &blendWeight, bool removeOriginOffset ) const {
    Sys_Printf("void idAnimBlend::BlendOrigin( int currentTime, idVec3 &blendPos, float &blendWeight, bool removeOriginOffset )\r\n");
}


/*
=====================
idAnimBlend::BlendDelta
=====================
*/
void idAnimBlend::BlendDelta( int fromtime, int totime, idVec3 &blendDelta, float &blendWeight ) const {
    Sys_Printf("void idAnimBlend::BlendDelta( int fromtime, int totime, idVec3 &blendDelta, float &blendWeight )\r\n");
}


/*
=====================
idAnimBlend::BlendDeltaRotation
=====================
*/
void idAnimBlend::BlendDeltaRotation( int fromtime, int totime, idQuat &blendDelta, float &blendWeight ) const {
    Sys_Printf("void idAnimBlend::BlendDeltaRotation( int fromtime, int totime, idQuat &blendDelta, float &blendWeight )\r\n");
}


/*
=====================
idAnimBlend::AddBounds
=====================
*/
bool idAnimBlend::AddBounds( int currentTime, idBounds &bounds, bool removeOriginOffset ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimBlend::AddBounds( int currentTime, idBounds &bounds, bool removeOriginOffset )\r\n");
    return retVal;
}


/***********************************************************************

	idDeclModelDef

***********************************************************************/

/*
=====================
idDeclModelDef::idDeclModelDef
=====================
*/
idDeclModelDef::idDeclModelDef() {
	modelHandle	= NULL;
	skin		= NULL;
	offset.Zero();
	for ( int i = 0; i < ANIM_NumAnimChannels; i++ ) {
		channelJoints[i].Clear();
	}
}

/*
=====================
idDeclModelDef::~idDeclModelDef
=====================
*/
idDeclModelDef::~idDeclModelDef() {
	FreeData();
}

/*
=================
idDeclModelDef::Size
=================
*/
size_t idDeclModelDef::Size( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idDeclModelDef::Size( void )\r\n");
    return retVal;
}


/*
=====================
idDeclModelDef::CopyDecl
=====================
*/
void idDeclModelDef::CopyDecl( const idDeclModelDef *decl ) {
    Sys_Printf("void idDeclModelDef::CopyDecl( const idDeclModelDef *decl )\r\n");
}


/*
=====================
idDeclModelDef::FreeData
=====================
*/
void idDeclModelDef::FreeData( void ) {
    Sys_Printf("void idDeclModelDef::FreeData( void )\r\n");
}


/*
================
idDeclModelDef::DefaultDefinition
================
*/
const char *idDeclModelDef::DefaultDefinition( void ) const {
    Sys_Printf("char *idDeclModelDef::DefaultDefinition( void )\r\n");
    return NULL;
}


/*
====================
idDeclModelDef::FindJoint
====================
*/
const jointInfo_t *idDeclModelDef::FindJoint( const char *name ) const {
    Sys_Printf("jointInfo_t *idDeclModelDef::FindJoint( const char *name )\r\n");
    return NULL;
}


/*
=====================
idDeclModelDef::ModelHandle
=====================
*/
idRenderModel *idDeclModelDef::ModelHandle( void ) const {
    Sys_Printf("idRenderModel *idDeclModelDef::ModelHandle( void )\r\n");
    return NULL;
}


/*
=====================
idDeclModelDef::GetJointList
=====================
*/
void idDeclModelDef::GetJointList( const char *jointnames, idList<jointHandle_t> &jointList ) const {
    Sys_Printf("void idDeclModelDef::GetJointList( const char *jointnames, idList<jointHandle_t> &jointList )\r\n");
}


/*
=====================
idDeclModelDef::Touch
=====================
*/
void idDeclModelDef::Touch( void ) const {
    Sys_Printf("void idDeclModelDef::Touch( void )\r\n");
}


/*
=====================
idDeclModelDef::GetDefaultSkin
=====================
*/
const idDeclSkin *idDeclModelDef::GetDefaultSkin( void ) const {
    Sys_Printf("idDeclSkin *idDeclModelDef::GetDefaultSkin( void )\r\n");
    return NULL;
}


/*
=====================
idDeclModelDef::GetDefaultPose
=====================
*/
const idJointQuat *idDeclModelDef::GetDefaultPose( void ) const {
    Sys_Printf("idJointQuat *idDeclModelDef::GetDefaultPose( void )\r\n");
    return NULL;
}


/*
=====================
idDeclModelDef::SetupJoints
=====================
*/
void idDeclModelDef::SetupJoints( int *numJoints, idJointMat **jointList, idBounds &frameBounds, bool removeOriginOffset ) const {
    Sys_Printf("void idDeclModelDef::SetupJoints( int *numJoints, idJointMat **jointList, idBounds &frameBounds, bool removeOriginOffset )\r\n");
}


/*
=====================
idDeclModelDef::ParseAnim
=====================
*/
bool idDeclModelDef::ParseAnim( idLexer &src, int numDefaultAnims ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclModelDef::ParseAnim( idLexer &src, int numDefaultAnims )\r\n");
    return retVal;
}


/*
================
idDeclModelDef::Parse
================
*/
bool idDeclModelDef::Parse( const char *text, const int textLength ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclModelDef::Parse( const char *text, const int textLength )\r\n");
    return retVal;
}


/*
=====================
idDeclModelDef::HasAnim
=====================
*/
bool idDeclModelDef::HasAnim( const char *name ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclModelDef::HasAnim( const char *name )\r\n");
    return retVal;
}


/*
=====================
idDeclModelDef::NumAnims
=====================
*/
int idDeclModelDef::NumAnims( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclModelDef::NumAnims( void )\r\n");
    return retVal;
}


/*
=====================
idDeclModelDef::GetSpecificAnim

Gets the exact anim for the name, without randomization.
=====================
*/
int idDeclModelDef::GetSpecificAnim( const char *name ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclModelDef::GetSpecificAnim( const char *name )\r\n");
    return retVal;
}


/*
=====================
idDeclModelDef::GetAnim
=====================
*/
const idAnim *idDeclModelDef::GetAnim( int index ) const {
    Sys_Printf("idAnim *idDeclModelDef::GetAnim( int index )\r\n");
    return NULL;
}


/*
=====================
idDeclModelDef::GetAnim
=====================
*/
int idDeclModelDef::GetAnim( const char *name ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclModelDef::GetAnim( const char *name )\r\n");
    return retVal;
}


/*
=====================
idDeclModelDef::GetSkin
=====================
*/
const idDeclSkin *idDeclModelDef::GetSkin( void ) const {
    Sys_Printf("idDeclSkin *idDeclModelDef::GetSkin( void )\r\n");
    return NULL;
}


/*
=====================
idDeclModelDef::GetModelName
=====================
*/
const char *idDeclModelDef::GetModelName( void ) const {
    Sys_Printf("char *idDeclModelDef::GetModelName( void )\r\n");
    return NULL;
}


/*
=====================
idDeclModelDef::Joints
=====================
*/
const idList<jointInfo_t> &idDeclModelDef::Joints( void ) const {
	return joints;
}

/*
=====================
idDeclModelDef::JointParents
=====================
*/
const int * idDeclModelDef::JointParents( void ) const {
    Sys_Printf("int * idDeclModelDef::JointParents( void )\r\n");
    return NULL;
}


/*
=====================
idDeclModelDef::NumJoints
=====================
*/
int idDeclModelDef::NumJoints( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclModelDef::NumJoints( void )\r\n");
    return retVal;
}


/*
=====================
idDeclModelDef::GetJoint
=====================
*/
const jointInfo_t *idDeclModelDef::GetJoint( int jointHandle ) const {
    Sys_Printf("jointInfo_t *idDeclModelDef::GetJoint( int jointHandle )\r\n");
    return NULL;
}


/*
====================
idDeclModelDef::GetJointName
====================
*/
const char *idDeclModelDef::GetJointName( int jointHandle ) const {
    Sys_Printf("char *idDeclModelDef::GetJointName( int jointHandle )\r\n");
    return NULL;
}


/*
=====================
idDeclModelDef::NumJointsOnChannel
=====================
*/
int idDeclModelDef::NumJointsOnChannel( int channel ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclModelDef::NumJointsOnChannel( int channel )\r\n");
    return retVal;
}


/*
=====================
idDeclModelDef::GetChannelJoints
=====================
*/
const int * idDeclModelDef::GetChannelJoints( int channel ) const {
    Sys_Printf("int * idDeclModelDef::GetChannelJoints( int channel )\r\n");
    return NULL;
}


/*
=====================
idDeclModelDef::GetVisualOffset
=====================
*/
const idVec3 &idDeclModelDef::GetVisualOffset( void ) const {
	return offset;
}

/***********************************************************************

	idAnimator

***********************************************************************/

/*
=====================
idAnimator::idAnimator
=====================
*/
idAnimator::idAnimator() {
	int	i, j;

	modelDef				= NULL;
	entity					= NULL;
	numJoints				= 0;
	joints					= NULL;
	lastTransformTime		= -1;
	stoppedAnimatingUpdate	= false;
	removeOriginOffset		= false;
	forceUpdate				= false;

	frameBounds.Clear();

	AFPoseJoints.SetGranularity( 1 );
	AFPoseJointMods.SetGranularity( 1 );
	AFPoseJointFrame.SetGranularity( 1 );

	ClearAFPose();

	for( i = ANIMCHANNEL_ALL; i < ANIM_NumAnimChannels; i++ ) {
		for( j = 0; j < ANIM_MaxAnimsPerChannel; j++ ) {
			channels[ i ][ j ].Reset( NULL );
		}
	}
}

/*
=====================
idAnimator::~idAnimator
=====================
*/
idAnimator::~idAnimator() {
	FreeData();
}

/*
=====================
idAnimator::Allocated
=====================
*/
size_t idAnimator::Allocated( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idAnimator::Allocated( void )\r\n");
    return retVal;
}


/*
=====================
idAnimator::Save

archives object for save game file
=====================
*/
void idAnimator::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idAnimator::Save( idSaveGame *savefile )\r\n");
}


/*
=====================
idAnimator::Restore

unarchives object from save game file
=====================
*/
void idAnimator::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idAnimator::Restore( idRestoreGame *savefile )\r\n");
}


/*
=====================
idAnimator::FreeData
=====================
*/
void idAnimator::FreeData( void ) {
    Sys_Printf("void idAnimator::FreeData( void )\r\n");
}


/*
=====================
idAnimator::PushAnims
=====================
*/
void idAnimator::PushAnims( int channelNum, int currentTime, int blendTime ) {
    Sys_Printf("void idAnimator::PushAnims( int channelNum, int currentTime, int blendTime )\r\n");
}


/*
=====================
idAnimator::SetModel
=====================
*/
idRenderModel *idAnimator::SetModel( const char *modelname ) {
    Sys_Printf("idRenderModel *idAnimator::SetModel( const char *modelname )\r\n");
    return NULL;
}


/*
=====================
idAnimator::Size
=====================
*/
size_t idAnimator::Size( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idAnimator::Size( void )\r\n");
    return retVal;
}


/*
=====================
idAnimator::SetEntity
=====================
*/
void idAnimator::SetEntity( idEntity *ent ) {
    Sys_Printf("void idAnimator::SetEntity( idEntity *ent )\r\n");
}


/*
=====================
idAnimator::GetEntity
=====================
*/
idEntity *idAnimator::GetEntity( void ) const {
    Sys_Printf("idEntity *idAnimator::GetEntity( void )\r\n");
    return NULL;
}


/*
=====================
idAnimator::RemoveOriginOffset
=====================
*/
void idAnimator::RemoveOriginOffset( bool remove ) {
    Sys_Printf("void idAnimator::RemoveOriginOffset( bool remove )\r\n");
}


/*
=====================
idAnimator::RemoveOrigin
=====================
*/
bool idAnimator::RemoveOrigin( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimator::RemoveOrigin( void )\r\n");
    return retVal;
}


/*
=====================
idAnimator::GetJointList
=====================
*/
void idAnimator::GetJointList( const char *jointnames, idList<jointHandle_t> &jointList ) const {
    Sys_Printf("void idAnimator::GetJointList( const char *jointnames, idList<jointHandle_t> &jointList )\r\n");
}


/*
=====================
idAnimator::NumAnims
=====================
*/
int	idAnimator::NumAnims( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidAnimator::NumAnims( void )\r\n");
    return retVal;
}


/*
=====================
idAnimator::GetAnim
=====================
*/
const idAnim *idAnimator::GetAnim( int index ) const {
    Sys_Printf("idAnim *idAnimator::GetAnim( int index )\r\n");
    return NULL;
}


/*
=====================
idAnimator::GetAnim
=====================
*/
int idAnimator::GetAnim( const char *name ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAnimator::GetAnim( const char *name )\r\n");
    return retVal;
}


/*
=====================
idAnimator::HasAnim
=====================
*/
bool idAnimator::HasAnim( const char *name ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimator::HasAnim( const char *name )\r\n");
    return retVal;
}


/*
=====================
idAnimator::NumJoints
=====================
*/
int	idAnimator::NumJoints( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidAnimator::NumJoints( void )\r\n");
    return retVal;
}


/*
=====================
idAnimator::ModelHandle
=====================
*/
idRenderModel *idAnimator::ModelHandle( void ) const {
    Sys_Printf("idRenderModel *idAnimator::ModelHandle( void )\r\n");
    return NULL;
}


/*
=====================
idAnimator::ModelDef
=====================
*/
const idDeclModelDef *idAnimator::ModelDef( void ) const {
    Sys_Printf("idDeclModelDef *idAnimator::ModelDef( void )\r\n");
    return NULL;
}


/*
=====================
idAnimator::CurrentAnim
=====================
*/
idAnimBlend *idAnimator::CurrentAnim( int channelNum ) {
    Sys_Printf("idAnimBlend *idAnimator::CurrentAnim( int channelNum )\r\n");
    return NULL;
}


/*
=====================
idAnimator::Clear
=====================
*/
void idAnimator::Clear( int channelNum, int currentTime, int cleartime ) {
    Sys_Printf("void idAnimator::Clear( int channelNum, int currentTime, int cleartime )\r\n");
}


/*
=====================
idAnimator::SetFrame
=====================
*/
void idAnimator::SetFrame( int channelNum, int animNum, int frame, int currentTime, int blendTime ) {
    Sys_Printf("void idAnimator::SetFrame( int channelNum, int animNum, int frame, int currentTime, int blendTime )\r\n");
}


/*
=====================
idAnimator::CycleAnim
=====================
*/
void idAnimator::CycleAnim( int channelNum, int animNum, int currentTime, int blendTime ) {
    Sys_Printf("void idAnimator::CycleAnim( int channelNum, int animNum, int currentTime, int blendTime )\r\n");
}


/*
=====================
idAnimator::PlayAnim
=====================
*/
void idAnimator::PlayAnim( int channelNum, int animNum, int currentTime, int blendTime ) {
    Sys_Printf("void idAnimator::PlayAnim( int channelNum, int animNum, int currentTime, int blendTime )\r\n");
}


/*
=====================
idAnimator::SyncAnimChannels
=====================
*/
void idAnimator::SyncAnimChannels( int channelNum, int fromChannelNum, int currentTime, int blendTime ) {
    Sys_Printf("void idAnimator::SyncAnimChannels( int channelNum, int fromChannelNum, int currentTime, int blendTime )\r\n");
}


/*
=====================
idAnimator::SetJointPos
=====================
*/
void idAnimator::SetJointPos( jointHandle_t jointnum, jointModTransform_t transform_type, const idVec3 &pos ) {
    Sys_Printf("void idAnimator::SetJointPos( jointHandle_t jointnum, jointModTransform_t transform_type, const idVec3 &pos )\r\n");
}


/*
=====================
idAnimator::SetJointAxis
=====================
*/
void idAnimator::SetJointAxis( jointHandle_t jointnum, jointModTransform_t transform_type, const idMat3 &mat ) {
    Sys_Printf("void idAnimator::SetJointAxis( jointHandle_t jointnum, jointModTransform_t transform_type, const idMat3 &mat )\r\n");
}


/*
=====================
idAnimator::ClearJoint
=====================
*/
void idAnimator::ClearJoint( jointHandle_t jointnum ) {
    Sys_Printf("void idAnimator::ClearJoint( jointHandle_t jointnum )\r\n");
}


/*
=====================
idAnimator::ClearAllJoints
=====================
*/
void idAnimator::ClearAllJoints( void ) {
    Sys_Printf("void idAnimator::ClearAllJoints( void )\r\n");
}


/*
=====================
idAnimator::ClearAllAnims
=====================
*/
void idAnimator::ClearAllAnims( int currentTime, int cleartime ) {
    Sys_Printf("void idAnimator::ClearAllAnims( int currentTime, int cleartime )\r\n");
}


/*
====================
idAnimator::GetDelta
====================
*/
void idAnimator::GetDelta( int fromtime, int totime, idVec3 &delta ) const {
    Sys_Printf("void idAnimator::GetDelta( int fromtime, int totime, idVec3 &delta )\r\n");
}


/*
====================
idAnimator::GetDeltaRotation
====================
*/
bool idAnimator::GetDeltaRotation( int fromtime, int totime, idMat3 &delta ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimator::GetDeltaRotation( int fromtime, int totime, idMat3 &delta )\r\n");
    return retVal;
}


/*
====================
idAnimator::GetOrigin
====================
*/
void idAnimator::GetOrigin( int currentTime, idVec3 &pos ) const {
    Sys_Printf("void idAnimator::GetOrigin( int currentTime, idVec3 &pos )\r\n");
}


/*
====================
idAnimator::GetBounds
====================
*/
bool idAnimator::GetBounds( int currentTime, idBounds &bounds ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimator::GetBounds( int currentTime, idBounds &bounds )\r\n");
    return retVal;
}


/*
=====================
idAnimator::InitAFPose
=====================
*/
void idAnimator::InitAFPose( void ) {
    Sys_Printf("void idAnimator::InitAFPose( void )\r\n");
}


/*
=====================
idAnimator::SetAFPoseJointMod
=====================
*/
void idAnimator::SetAFPoseJointMod( const jointHandle_t jointNum, const AFJointModType_t mod, const idMat3 &axis, const idVec3 &origin ) {
    Sys_Printf("void idAnimator::SetAFPoseJointMod( const jointHandle_t jointNum, const AFJointModType_t mod, const idMat3 &axis, const idVec3 &origin )\r\n");
}


/*
=====================
idAnimator::FinishAFPose
=====================
*/
void idAnimator::FinishAFPose( int animNum, const idBounds &bounds, const int time ) {
    Sys_Printf("void idAnimator::FinishAFPose( int animNum, const idBounds &bounds, const int time )\r\n");
}


/*
=====================
idAnimator::SetAFPoseBlendWeight
=====================
*/
void idAnimator::SetAFPoseBlendWeight( float blendWeight ) {
    Sys_Printf("void idAnimator::SetAFPoseBlendWeight( float blendWeight )\r\n");
}


/*
=====================
idAnimator::BlendAFPose
=====================
*/
bool idAnimator::BlendAFPose( idJointQuat *blendFrame ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimator::BlendAFPose( idJointQuat *blendFrame )\r\n");
    return retVal;
}


/*
=====================
idAnimator::ClearAFPose
=====================
*/
void idAnimator::ClearAFPose( void ) {
    Sys_Printf("void idAnimator::ClearAFPose( void )\r\n");
}


/*
=====================
idAnimator::ServiceAnims
=====================
*/
void idAnimator::ServiceAnims( int fromtime, int totime ) {
    Sys_Printf("void idAnimator::ServiceAnims( int fromtime, int totime )\r\n");
}


/*
=====================
idAnimator::IsAnimating
=====================
*/
bool idAnimator::IsAnimating( int currentTime ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimator::IsAnimating( int currentTime )\r\n");
    return retVal;
}


/*
=====================
idAnimator::FrameHasChanged
=====================
*/
bool idAnimator::FrameHasChanged( int currentTime ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimator::FrameHasChanged( int currentTime )\r\n");
    return retVal;
}


/*
=====================
idAnimator::CreateFrame
=====================
*/
bool idAnimator::CreateFrame( int currentTime, bool force ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimator::CreateFrame( int currentTime, bool force )\r\n");
    return retVal;
}


/*
=====================
idAnimator::ForceUpdate
=====================
*/
void idAnimator::ForceUpdate( void ) {
    Sys_Printf("void idAnimator::ForceUpdate( void )\r\n");
}


/*
=====================
idAnimator::ClearForceUpdate
=====================
*/
void idAnimator::ClearForceUpdate( void ) {
    Sys_Printf("void idAnimator::ClearForceUpdate( void )\r\n");
}


/*
=====================
idAnimator::GetJointTransform>	gamex86.dll!idAnimator::ForceUpdate()  Line 4268	C++

=====================
*/
bool idAnimator::GetJointTransform( jointHandle_t jointHandle, int currentTime, idVec3 &offset, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimator::GetJointTransform( jointHandle_t jointHandle, int currentTime, idVec3 &offset, idMat3 &axis )\r\n");
    return retVal;
}


/*
=====================
idAnimator::GetJointLocalTransform
=====================
*/
bool idAnimator::GetJointLocalTransform( jointHandle_t jointHandle, int currentTime, idVec3 &offset, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimator::GetJointLocalTransform( jointHandle_t jointHandle, int currentTime, idVec3 &offset, idMat3 &axis )\r\n");
    return retVal;
}


/*
=====================
idAnimator::GetJointHandle
=====================
*/
jointHandle_t idAnimator::GetJointHandle( const char *name ) const {
    jointHandle_t retVal;
    memset(&retVal, 0, sizeof(jointHandle_t));
    Sys_Printf("jointHandle_t idAnimator::GetJointHandle( const char *name )\r\n");
    return retVal;
}


/*
=====================
idAnimator::GetJointName
=====================
*/
const char *idAnimator::GetJointName( jointHandle_t handle ) const {
    Sys_Printf("char *idAnimator::GetJointName( jointHandle_t handle )\r\n");
    return NULL;
}


/*
=====================
idAnimator::GetChannelForJoint
=====================
*/
int idAnimator::GetChannelForJoint( jointHandle_t joint ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAnimator::GetChannelForJoint( jointHandle_t joint )\r\n");
    return retVal;
}


/*
=====================
idAnimator::GetFirstChild
=====================
*/
jointHandle_t idAnimator::GetFirstChild( const char *name ) const {
    jointHandle_t retVal;
    memset(&retVal, 0, sizeof(jointHandle_t));
    Sys_Printf("jointHandle_t idAnimator::GetFirstChild( const char *name )\r\n");
    return retVal;
}


/*
=====================
idAnimator::GetFirstChild
=====================
*/
jointHandle_t idAnimator::GetFirstChild( jointHandle_t jointnum ) const {
    jointHandle_t retVal;
    memset(&retVal, 0, sizeof(jointHandle_t));
    Sys_Printf("jointHandle_t idAnimator::GetFirstChild( jointHandle_t jointnum )\r\n");
    return retVal;
}


/*
=====================
idAnimator::GetJoints
=====================
*/
void idAnimator::GetJoints( int *numJoints, idJointMat **jointsPtr ) {
    Sys_Printf("void idAnimator::GetJoints( int *numJoints, idJointMat **jointsPtr )\r\n");
}


/*
=====================
idAnimator::GetAnimFlags
=====================
*/
const animFlags_t idAnimator::GetAnimFlags( int animNum ) const {
    animFlags_t retVal;
    memset(&retVal, 0, sizeof(animFlags_t));
    Sys_Printf("animFlags_t idAnimator::GetAnimFlags( int animNum )\r\n");
    return retVal;
}


/*
=====================
idAnimator::NumFrames
=====================
*/
int	idAnimator::NumFrames( int animNum ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidAnimator::NumFrames( int animNum )\r\n");
    return retVal;
}


/*
=====================
idAnimator::NumSyncedAnims
=====================
*/
int	idAnimator::NumSyncedAnims( int animNum ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidAnimator::NumSyncedAnims( int animNum )\r\n");
    return retVal;
}


/*
=====================
idAnimator::AnimName
=====================
*/
const char *idAnimator::AnimName( int animNum ) const {
    Sys_Printf("char *idAnimator::AnimName( int animNum )\r\n");
    return NULL;
}


/*
=====================
idAnimator::AnimFullName
=====================
*/
const char *idAnimator::AnimFullName( int animNum ) const {
    Sys_Printf("char *idAnimator::AnimFullName( int animNum )\r\n");
    return NULL;
}


/*
=====================
idAnimator::AnimLength
=====================
*/
int	idAnimator::AnimLength( int animNum ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidAnimator::AnimLength( int animNum )\r\n");
    return retVal;
}


/*
=====================
idAnimator::TotalMovementDelta
=====================
*/
const idVec3 &idAnimator::TotalMovementDelta( int animNum ) const {
	const idAnim *anim = GetAnim( animNum );
	if ( anim ) {
		return anim->TotalMovementDelta();
	} else {
		return vec3_origin;
	}
}

/***********************************************************************

	Util functions

***********************************************************************/

/*
=====================
ANIM_GetModelDefFromEntityDef
=====================
*/
const idDeclModelDef *ANIM_GetModelDefFromEntityDef( const idDict *args ) {
    Sys_Printf("idDeclModelDef *ANIM_GetModelDefFromEntityDef( const idDict *args )\r\n");
    return NULL;
}


/*
=====================
idGameEdit::ANIM_GetModelFromEntityDef
=====================
*/
idRenderModel *idGameEdit::ANIM_GetModelFromEntityDef( const idDict *args ) {
    Sys_Printf("idRenderModel *idGameEdit::ANIM_GetModelFromEntityDef( const idDict *args )\r\n");
    return NULL;
}


/*
=====================
idGameEdit::ANIM_GetModelFromEntityDef
=====================
*/
idRenderModel *idGameEdit::ANIM_GetModelFromEntityDef( const char *classname ) {
    Sys_Printf("idRenderModel *idGameEdit::ANIM_GetModelFromEntityDef( const char *classname )\r\n");
    return NULL;
}


/*
=====================
idGameEdit::ANIM_GetModelOffsetFromEntityDef
=====================
*/
const idVec3 &idGameEdit::ANIM_GetModelOffsetFromEntityDef( const char *classname ) {
	const idDict *args;
	const idDeclModelDef *modelDef;

	args = gameLocal.FindEntityDefDict( classname, false );
	if ( !args ) {
		return vec3_origin;
	}

	modelDef = ANIM_GetModelDefFromEntityDef( args );
	if ( !modelDef ) {
		return vec3_origin;
	}

	return modelDef->GetVisualOffset();
}

/*
=====================
idGameEdit::ANIM_GetModelFromName
=====================
*/
idRenderModel *idGameEdit::ANIM_GetModelFromName( const char *modelName ) {
    Sys_Printf("idRenderModel *idGameEdit::ANIM_GetModelFromName( const char *modelName )\r\n");
    return NULL;
}


/*
=====================
idGameEdit::ANIM_GetAnimFromEntityDef
=====================
*/
const idMD5Anim *idGameEdit::ANIM_GetAnimFromEntityDef( const char *classname, const char *animname ) {
    Sys_Printf("idMD5Anim *idGameEdit::ANIM_GetAnimFromEntityDef( const char *classname, const char *animname )\r\n");
    return NULL;
}


/*
=====================
idGameEdit::ANIM_GetNumAnimsFromEntityDef
=====================
*/
int idGameEdit::ANIM_GetNumAnimsFromEntityDef( const idDict *args ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idGameEdit::ANIM_GetNumAnimsFromEntityDef( const idDict *args )\r\n");
    return retVal;
}


/*
=====================
idGameEdit::ANIM_GetAnimNameFromEntityDef
=====================
*/
const char *idGameEdit::ANIM_GetAnimNameFromEntityDef( const idDict *args, int animNum ) {
    Sys_Printf("char *idGameEdit::ANIM_GetAnimNameFromEntityDef( const idDict *args, int animNum )\r\n");
    return NULL;
}


/*
=====================
idGameEdit::ANIM_GetAnim
=====================
*/
const idMD5Anim *idGameEdit::ANIM_GetAnim( const char *fileName ) {
    Sys_Printf("idMD5Anim *idGameEdit::ANIM_GetAnim( const char *fileName )\r\n");
    return NULL;
}


/*
=====================
idGameEdit::ANIM_GetLength
=====================
*/
int	idGameEdit::ANIM_GetLength( const idMD5Anim *anim ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidGameEdit::ANIM_GetLength( const idMD5Anim *anim )\r\n");
    return retVal;
}


/*
=====================
idGameEdit::ANIM_GetNumFrames
=====================
*/
int idGameEdit::ANIM_GetNumFrames( const idMD5Anim *anim ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idGameEdit::ANIM_GetNumFrames( const idMD5Anim *anim )\r\n");
    return retVal;
}


/*
=====================
idGameEdit::ANIM_CreateAnimFrame
=====================
*/
void idGameEdit::ANIM_CreateAnimFrame( const idRenderModel *model, const idMD5Anim *anim, int numJoints, idJointMat *joints, int time, const idVec3 &offset, bool remove_origin_offset ) {
    Sys_Printf("void idGameEdit::ANIM_CreateAnimFrame( const idRenderModel *model, const idMD5Anim *anim, int numJoints, idJointMat *joints, int time, const idVec3 &offset, bool remove_origin_offset )\r\n");
}


/*
=====================
idGameEdit::ANIM_CreateMeshForAnim
=====================
*/
idRenderModel *idGameEdit::ANIM_CreateMeshForAnim( idRenderModel *model, const char *classname, const char *animname, int frame, bool remove_origin_offset ) {
    Sys_Printf("idRenderModel *idGameEdit::ANIM_CreateMeshForAnim( idRenderModel *model, const char *classname, const char *animname, int frame, bool remove_origin_offset )\r\n");
    return NULL;
}

