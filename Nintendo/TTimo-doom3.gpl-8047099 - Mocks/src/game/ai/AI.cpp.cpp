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

static const char *moveCommandString[ NUM_MOVE_COMMANDS ] = {
	"MOVE_NONE",
	"MOVE_FACE_ENEMY",
	"MOVE_FACE_ENTITY",
	"MOVE_TO_ENEMY",
	"MOVE_TO_ENEMYHEIGHT",
	"MOVE_TO_ENTITY",
	"MOVE_OUT_OF_RANGE",
	"MOVE_TO_ATTACK_POSITION",
	"MOVE_TO_COVER",
	"MOVE_TO_POSITION",
	"MOVE_TO_POSITION_DIRECT",
	"MOVE_SLIDE_TO_POSITION",
	"MOVE_WANDER"
};

/*
=====================
idMoveState::idMoveState
=====================
*/
idMoveState::idMoveState() {
	moveType			= MOVETYPE_ANIM;
	moveCommand			= MOVE_NONE;
	moveStatus			= MOVE_STATUS_DONE;
	moveDest.Zero();
	moveDir.Set( 1.0f, 0.0f, 0.0f );
	goalEntity			= NULL;
	goalEntityOrigin.Zero();
	toAreaNum			= 0;
	startTime			= 0;
	duration			= 0;
	speed				= 0.0f;
	range				= 0.0f;
	wanderYaw			= 0;
	nextWanderTime		= 0;
	blockTime			= 0;
	obstacle			= NULL;
	lastMoveOrigin		= vec3_origin;
	lastMoveTime		= 0;
	anim				= 0;
}

/*
=====================
idMoveState::Save
=====================
*/
void idMoveState::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idMoveState::Save( idSaveGame *savefile )\r\n");
}


/*
=====================
idMoveState::Restore
=====================
*/
void idMoveState::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idMoveState::Restore( idRestoreGame *savefile )\r\n");
}


/*
============
idAASFindCover::idAASFindCover
============
*/
idAASFindCover::idAASFindCover( const idVec3 &hideFromPos ) {
	int			numPVSAreas;
	idBounds	bounds( hideFromPos - idVec3( 16, 16, 0 ), hideFromPos + idVec3( 16, 16, 64 ) );

	// setup PVS
	numPVSAreas = gameLocal.pvs.GetPVSAreas( bounds, PVSAreas, idEntity::MAX_PVS_AREAS );
	hidePVS		= gameLocal.pvs.SetupCurrentPVS( PVSAreas, numPVSAreas );
}

/*
============
idAASFindCover::~idAASFindCover
============
*/
idAASFindCover::~idAASFindCover() {
	gameLocal.pvs.FreeCurrentPVS( hidePVS );
}

/*
============
idAASFindCover::TestArea
============
*/
bool idAASFindCover::TestArea( const idAAS *aas, int areaNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFindCover::TestArea( const idAAS *aas, int areaNum )\r\n");
    return retVal;
}


/*
============
idAASFindAreaOutOfRange::idAASFindAreaOutOfRange
============
*/
idAASFindAreaOutOfRange::idAASFindAreaOutOfRange( const idVec3 &targetPos, float maxDist ) {
	this->targetPos		= targetPos;
	this->maxDistSqr	= maxDist * maxDist;
}

/*
============
idAASFindAreaOutOfRange::TestArea
============
*/
bool idAASFindAreaOutOfRange::TestArea( const idAAS *aas, int areaNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFindAreaOutOfRange::TestArea( const idAAS *aas, int areaNum )\r\n");
    return retVal;
}


/*
============
idAASFindAttackPosition::idAASFindAttackPosition
============
*/
idAASFindAttackPosition::idAASFindAttackPosition( const idAI *self, const idMat3 &gravityAxis, idEntity *target, const idVec3 &targetPos, const idVec3 &fireOffset ) {
	int	numPVSAreas;

	this->target		= target;
	this->targetPos		= targetPos;
	this->fireOffset	= fireOffset;
	this->self			= self;
	this->gravityAxis	= gravityAxis;

	excludeBounds		= idBounds( idVec3( -64.0, -64.0f, -8.0f ), idVec3( 64.0, 64.0f, 64.0f ) );
	excludeBounds.TranslateSelf( self->GetPhysics()->GetOrigin() );	

	// setup PVS
	idBounds bounds( targetPos - idVec3( 16, 16, 0 ), targetPos + idVec3( 16, 16, 64 ) );
	numPVSAreas = gameLocal.pvs.GetPVSAreas( bounds, PVSAreas, idEntity::MAX_PVS_AREAS );
	targetPVS	= gameLocal.pvs.SetupCurrentPVS( PVSAreas, numPVSAreas );
}

/*
============
idAASFindAttackPosition::~idAASFindAttackPosition
============
*/
idAASFindAttackPosition::~idAASFindAttackPosition() {
	gameLocal.pvs.FreeCurrentPVS( targetPVS );
}

/*
============
idAASFindAttackPosition::TestArea
============
*/
bool idAASFindAttackPosition::TestArea( const idAAS *aas, int areaNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFindAttackPosition::TestArea( const idAAS *aas, int areaNum )\r\n");
    return retVal;
}


/*
=====================
idAI::idAI
=====================
*/
idAI::idAI() {
	aas					= NULL;
	travelFlags			= TFL_WALK|TFL_AIR;

	kickForce			= 2048.0f;
	ignore_obstacles	= false;
	blockedRadius		= 0.0f;
	blockedMoveTime		= 750;
	blockedAttackTime	= 750;
	turnRate			= 360.0f;
	turnVel				= 0.0f;
	anim_turn_yaw		= 0.0f;
	anim_turn_amount	= 0.0f;
	anim_turn_angles	= 0.0f;
	fly_offset			= 0;
	fly_seek_scale		= 1.0f;
	fly_roll_scale		= 0.0f;
	fly_roll_max		= 0.0f;
	fly_roll			= 0.0f;
	fly_pitch_scale		= 0.0f;
	fly_pitch_max		= 0.0f;
	fly_pitch			= 0.0f;
	allowMove			= false;
	allowHiddenMovement	= false;
	fly_speed			= 0.0f;
	fly_bob_strength	= 0.0f;
	fly_bob_vert		= 0.0f;
	fly_bob_horz		= 0.0f;
	lastHitCheckResult	= false;
	lastHitCheckTime	= 0;
	lastAttackTime		= 0;
	melee_range			= 0.0f;
	projectile_height_to_distance_ratio = 1.0f;
	projectileDef		= NULL;
	projectile			= NULL;
	projectileClipModel	= NULL;
	projectileRadius	= 0.0f;
	projectileVelocity	= vec3_origin;
	projectileGravity	= vec3_origin;
	projectileSpeed		= 0.0f;
	chat_snd			= NULL;
	chat_min			= 0;
	chat_max			= 0;
	chat_time			= 0;
	talk_state			= TALK_NEVER;
	talkTarget			= NULL;

	particles.Clear();
	restartParticles	= true;
	useBoneAxis			= false;

	wakeOnFlashlight	= false;
	memset( &worldMuzzleFlash, 0, sizeof ( worldMuzzleFlash ) );
	worldMuzzleFlashHandle = -1;

	enemy				= NULL;
	lastVisibleEnemyPos.Zero();
	lastVisibleEnemyEyeOffset.Zero();
	lastVisibleReachableEnemyPos.Zero();
	lastReachableEnemyPos.Zero();
	shrivel_rate		= 0.0f;
	shrivel_start		= 0;
	fl.neverDormant		= false;		// AI's can go dormant
	current_yaw			= 0.0f;
	ideal_yaw			= 0.0f;

	num_cinematics		= 0;
	current_cinematic	= 0;

	allowEyeFocus		= true;
	allowPain			= true;
	allowJointMod		= true;
	focusEntity			= NULL;
	focusTime			= 0;
	alignHeadTime		= 0;
	forceAlignHeadTime	= 0;

	currentFocusPos.Zero();
	eyeAng.Zero();
	lookAng.Zero();
	destLookAng.Zero();
	lookMin.Zero();
	lookMax.Zero();

	eyeMin.Zero();
	eyeMax.Zero();
	muzzleFlashEnd		= 0;
	flashTime			= 0;
	flashJointWorld		= INVALID_JOINT;

	focusJoint			= INVALID_JOINT;
	orientationJoint	= INVALID_JOINT;
	flyTiltJoint		= INVALID_JOINT;

	eyeVerticalOffset	= 0.0f;
	eyeHorizontalOffset = 0.0f;
	eyeFocusRate		= 0.0f;
	headFocusRate		= 0.0f;
	focusAlignTime		= 0;
}

/*
=====================
idAI::~idAI
=====================
*/
idAI::~idAI() {
	delete projectileClipModel;
	DeconstructScriptObject();
	scriptObject.Free();
	if ( worldMuzzleFlashHandle != -1 ) {
		gameRenderWorld->FreeLightDef( worldMuzzleFlashHandle );
		worldMuzzleFlashHandle = -1;
	}
}

/*
=====================
idAI::Save
=====================
*/
void idAI::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idAI::Save( idSaveGame *savefile )\r\n");
}


/*
=====================
idAI::Restore
=====================
*/
void idAI::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idAI::Restore( idRestoreGame *savefile )\r\n");
}


/*
=====================
idAI::Spawn
=====================
*/
void idAI::Spawn( void ) {
    Sys_Printf("void idAI::Spawn( void )\r\n");
}


/*
===================
idAI::InitMuzzleFlash
===================
*/
void idAI::InitMuzzleFlash( void ) {
    Sys_Printf("void idAI::InitMuzzleFlash( void )\r\n");
}


/*
===================
idAI::List_f
===================
*/
void idAI::List_f( const idCmdArgs &args ) {
    Sys_Printf("void idAI::List_f( const idCmdArgs &args )\r\n");
}


/*
================
idAI::DormantBegin

called when entity becomes dormant
================
*/
void idAI::DormantBegin( void ) {
    Sys_Printf("void idAI::DormantBegin( void )\r\n");
}


/*
================
idAI::DormantEnd

called when entity wakes from being dormant
================
*/
void idAI::DormantEnd( void ) {
    Sys_Printf("void idAI::DormantEnd( void )\r\n");
}


/*
=====================
idAI::Think
=====================
*/
void idAI::Think( void ) {
    Sys_Printf("void idAI::Think( void )\r\n");
}


/***********************************************************************

	AI script state management

***********************************************************************/

/*
=====================
idAI::LinkScriptVariables
=====================
*/
void idAI::LinkScriptVariables( void ) {
    Sys_Printf("void idAI::LinkScriptVariables( void )\r\n");
}


/*
=====================
idAI::UpdateAIScript
=====================
*/
void idAI::UpdateAIScript( void ) {
    Sys_Printf("void idAI::UpdateAIScript( void )\r\n");
}


/***********************************************************************

	navigation

***********************************************************************/

/*
============
idAI::KickObstacles
============
*/
void idAI::KickObstacles( const idVec3 &dir, float force, idEntity *alwaysKick ) {
    Sys_Printf("void idAI::KickObstacles( const idVec3 &dir, float force, idEntity *alwaysKick )\r\n");
}


/*
============
ValidForBounds
============
*/
bool ValidForBounds( const idAASSettings *settings, const idBounds &bounds ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool ValidForBounds( const idAASSettings *settings, const idBounds &bounds )\r\n");
    return retVal;
}


/*
=====================
idAI::SetAAS
=====================
*/
void idAI::SetAAS( void ) {
    Sys_Printf("void idAI::SetAAS( void )\r\n");
}


/*
=====================
idAI::DrawRoute
=====================
*/
void idAI::DrawRoute( void ) const {
    Sys_Printf("void idAI::DrawRoute( void )\r\n");
}


/*
=====================
idAI::ReachedPos
=====================
*/
bool idAI::ReachedPos( const idVec3 &pos, const moveCommand_t moveCommand ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::ReachedPos( const idVec3 &pos, const moveCommand_t moveCommand )\r\n");
    return retVal;
}


/*
=====================
idAI::PointReachableAreaNum
=====================
*/
int idAI::PointReachableAreaNum( const idVec3 &pos, const float boundsScale ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAI::PointReachableAreaNum( const idVec3 &pos, const float boundsScale )\r\n");
    return retVal;
}


/*
=====================
idAI::PathToGoal
=====================
*/
bool idAI::PathToGoal( aasPath_t &path, int areaNum, const idVec3 &origin, int goalAreaNum, const idVec3 &goalOrigin ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::PathToGoal( aasPath_t &path, int areaNum, const idVec3 &origin, int goalAreaNum, const idVec3 &goalOrigin )\r\n");
    return retVal;
}


/*
=====================
idAI::TravelDistance

Returns the approximate travel distance from one position to the goal, or if no AAS, the straight line distance.

This is feakin' slow, so it's not good to do it too many times per frame.  It also is slower the further you
are from the goal, so try to break the goals up into shorter distances.
=====================
*/
float idAI::TravelDistance( const idVec3 &start, const idVec3 &end ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAI::TravelDistance( const idVec3 &start, const idVec3 &end )\r\n");
    return retVal;
}


/*
=====================
idAI::StopMove
=====================
*/
void idAI::StopMove( moveStatus_t status ) {
    Sys_Printf("void idAI::StopMove( moveStatus_t status )\r\n");
}


/*
=====================
idAI::FaceEnemy

Continually face the enemy's last known position.  MoveDone is always true in this case.
=====================
*/
bool idAI::FaceEnemy( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::FaceEnemy( void )\r\n");
    return retVal;
}


/*
=====================
idAI::FaceEntity

Continually face the entity position.  MoveDone is always true in this case.
=====================
*/
bool idAI::FaceEntity( idEntity *ent ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::FaceEntity( idEntity *ent )\r\n");
    return retVal;
}


/*
=====================
idAI::DirectMoveToPosition
=====================
*/
bool idAI::DirectMoveToPosition( const idVec3 &pos ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::DirectMoveToPosition( const idVec3 &pos )\r\n");
    return retVal;
}


/*
=====================
idAI::MoveToEnemyHeight
=====================
*/
bool idAI::MoveToEnemyHeight( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::MoveToEnemyHeight( void )\r\n");
    return retVal;
}


/*
=====================
idAI::MoveToEnemy
=====================
*/
bool idAI::MoveToEnemy( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::MoveToEnemy( void )\r\n");
    return retVal;
}


/*
=====================
idAI::MoveToEntity
=====================
*/
bool idAI::MoveToEntity( idEntity *ent ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::MoveToEntity( idEntity *ent )\r\n");
    return retVal;
}


/*
=====================
idAI::MoveOutOfRange
=====================
*/
bool idAI::MoveOutOfRange( idEntity *ent, float range ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::MoveOutOfRange( idEntity *ent, float range )\r\n");
    return retVal;
}


/*
=====================
idAI::MoveToAttackPosition
=====================
*/
bool idAI::MoveToAttackPosition( idEntity *ent, int attack_anim ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::MoveToAttackPosition( idEntity *ent, int attack_anim )\r\n");
    return retVal;
}


/*
=====================
idAI::MoveToPosition
=====================
*/
bool idAI::MoveToPosition( const idVec3 &pos ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::MoveToPosition( const idVec3 &pos )\r\n");
    return retVal;
}


/*
=====================
idAI::MoveToCover
=====================
*/
bool idAI::MoveToCover( idEntity *entity, const idVec3 &hideFromPos ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::MoveToCover( idEntity *entity, const idVec3 &hideFromPos )\r\n");
    return retVal;
}


/*
=====================
idAI::SlideToPosition
=====================
*/
bool idAI::SlideToPosition( const idVec3 &pos, float time ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::SlideToPosition( const idVec3 &pos, float time )\r\n");
    return retVal;
}


/*
=====================
idAI::WanderAround
=====================
*/
bool idAI::WanderAround( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::WanderAround( void )\r\n");
    return retVal;
}


/*
=====================
idAI::MoveDone
=====================
*/
bool idAI::MoveDone( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::MoveDone( void )\r\n");
    return retVal;
}


/*
================
idAI::StepDirection
================
*/
bool idAI::StepDirection( float dir ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::StepDirection( float dir )\r\n");
    return retVal;
}


/*
================
idAI::NewWanderDir
================
*/
bool idAI::NewWanderDir( const idVec3 &dest ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::NewWanderDir( const idVec3 &dest )\r\n");
    return retVal;
}


/*
=====================
idAI::GetMovePos
=====================
*/
bool idAI::GetMovePos( idVec3 &seekPos ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::GetMovePos( idVec3 &seekPos )\r\n");
    return retVal;
}


/*
=====================
idAI::EntityCanSeePos
=====================
*/
bool idAI::EntityCanSeePos( idActor *actor, const idVec3 &actorOrigin, const idVec3 &pos ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::EntityCanSeePos( idActor *actor, const idVec3 &actorOrigin, const idVec3 &pos )\r\n");
    return retVal;
}


/*
=====================
idAI::BlockedFailSafe
=====================
*/
void idAI::BlockedFailSafe( void ) {
    Sys_Printf("void idAI::BlockedFailSafe( void )\r\n");
}


/***********************************************************************

	turning

***********************************************************************/

/*
=====================
idAI::Turn
=====================
*/
void idAI::Turn( void ) {
    Sys_Printf("void idAI::Turn( void )\r\n");
}


/*
=====================
idAI::FacingIdeal
=====================
*/
bool idAI::FacingIdeal( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::FacingIdeal( void )\r\n");
    return retVal;
}


/*
=====================
idAI::TurnToward
=====================
*/
bool idAI::TurnToward( float yaw ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::TurnToward( float yaw )\r\n");
    return retVal;
}


/*
=====================
idAI::TurnToward
=====================
*/
bool idAI::TurnToward( const idVec3 &pos ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::TurnToward( const idVec3 &pos )\r\n");
    return retVal;
}


/***********************************************************************

	Movement

***********************************************************************/

/*
================
idAI::ApplyImpulse
================
*/
void idAI::ApplyImpulse( idEntity *ent, int id, const idVec3 &point, const idVec3 &impulse ) {
    Sys_Printf("void idAI::ApplyImpulse( idEntity *ent, int id, const idVec3 &point, const idVec3 &impulse )\r\n");
}


/*
=====================
idAI::GetMoveDelta
=====================
*/
void idAI::GetMoveDelta( const idMat3 &oldaxis, const idMat3 &axis, idVec3 &delta ) {
    Sys_Printf("void idAI::GetMoveDelta( const idMat3 &oldaxis, const idMat3 &axis, idVec3 &delta )\r\n");
}


/*
=====================
idAI::CheckObstacleAvoidance
=====================
*/
void idAI::CheckObstacleAvoidance( const idVec3 &goalPos, idVec3 &newPos ) {
    Sys_Printf("void idAI::CheckObstacleAvoidance( const idVec3 &goalPos, idVec3 &newPos )\r\n");
}


/*
=====================
idAI::DeadMove
=====================
*/
void idAI::DeadMove( void ) {
    Sys_Printf("void idAI::DeadMove( void )\r\n");
}


/*
=====================
idAI::AnimMove
=====================
*/
void idAI::AnimMove( void ) {
    Sys_Printf("void idAI::AnimMove( void )\r\n");
}


/*
=====================
Seek
=====================
*/
idVec3 Seek( idVec3 &vel, const idVec3 &org, const idVec3 &goal, float prediction ) {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 Seek( idVec3 &vel, const idVec3 &org, const idVec3 &goal, float prediction )\r\n");
    return retVal;
}


/*
=====================
idAI::SlideMove
=====================
*/
void idAI::SlideMove( void ) {
    Sys_Printf("void idAI::SlideMove( void )\r\n");
}


/*
=====================
idAI::AdjustFlyingAngles
=====================
*/
void idAI::AdjustFlyingAngles( void ) {
    Sys_Printf("void idAI::AdjustFlyingAngles( void )\r\n");
}


/*
=====================
idAI::AddFlyBob
=====================
*/
void idAI::AddFlyBob( idVec3 &vel ) {
    Sys_Printf("void idAI::AddFlyBob( idVec3 &vel )\r\n");
}


/*
=====================
idAI::AdjustFlyHeight
=====================
*/
void idAI::AdjustFlyHeight( idVec3 &vel, const idVec3 &goalPos ) {
    Sys_Printf("void idAI::AdjustFlyHeight( idVec3 &vel, const idVec3 &goalPos )\r\n");
}


/*
=====================
idAI::FlySeekGoal
=====================
*/
void idAI::FlySeekGoal( idVec3 &vel, idVec3 &goalPos ) {
    Sys_Printf("void idAI::FlySeekGoal( idVec3 &vel, idVec3 &goalPos )\r\n");
}


/*
=====================
idAI::AdjustFlySpeed
=====================
*/
void idAI::AdjustFlySpeed( idVec3 &vel ) {
    Sys_Printf("void idAI::AdjustFlySpeed( idVec3 &vel )\r\n");
}


/*
=====================
idAI::FlyTurn
=====================
*/
void idAI::FlyTurn( void ) {
    Sys_Printf("void idAI::FlyTurn( void )\r\n");
}


/*
=====================
idAI::FlyMove
=====================
*/
void idAI::FlyMove( void ) {
    Sys_Printf("void idAI::FlyMove( void )\r\n");
}


/*
=====================
idAI::StaticMove
=====================
*/
void idAI::StaticMove( void ) {
    Sys_Printf("void idAI::StaticMove( void )\r\n");
}


/***********************************************************************

	Damage

***********************************************************************/

/*
=====================
idAI::ReactionTo
=====================
*/
int idAI::ReactionTo( const idEntity *ent ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAI::ReactionTo( const idEntity *ent )\r\n");
    return retVal;
}



/*
=====================
idAI::Pain
=====================
*/
bool idAI::Pain( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::Pain( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
    return retVal;
}



/*
=====================
idAI::SpawnParticles
=====================
*/
void idAI::SpawnParticles( const char *keyName ) {
    Sys_Printf("void idAI::SpawnParticles( const char *keyName )\r\n");
}


/*
=====================
idAI::SpawnParticlesOnJoint
=====================
*/
const idDeclParticle *idAI::SpawnParticlesOnJoint( particleEmitter_t &pe, const char *particleName, const char *jointName ) {
    Sys_Printf("idDeclParticle *idAI::SpawnParticlesOnJoint( particleEmitter_t &pe, const char *particleName, const char *jointName )\r\n");
    return NULL;
}


/*
=====================
idAI::Killed
=====================
*/
void idAI::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    Sys_Printf("void idAI::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
}


/***********************************************************************

	Targeting/Combat

***********************************************************************/

/*
=====================
idAI::PlayCinematic
=====================
*/
void idAI::PlayCinematic( void ) {
    Sys_Printf("void idAI::PlayCinematic( void )\r\n");
}


/*
=====================
idAI::Activate

Notifies the script that a monster has been activated by a trigger or flashlight
=====================
*/
void idAI::Activate( idEntity *activator ) {
    Sys_Printf("void idAI::Activate( idEntity *activator )\r\n");
}


/*
=====================
idAI::EnemyDead
=====================
*/
void idAI::EnemyDead( void ) {
    Sys_Printf("void idAI::EnemyDead( void )\r\n");
}


/*
=====================
idAI::TalkTo
=====================
*/
void idAI::TalkTo( idActor *actor ) {
    Sys_Printf("void idAI::TalkTo( idActor *actor )\r\n");
}


/*
=====================
idAI::GetEnemy
=====================
*/
idActor	*idAI::GetEnemy( void ) const {
    Sys_Printf("idActor*idAI::GetEnemy( void )\r\n");
    return NULL;
}


/*
=====================
idAI::GetTalkState
=====================
*/
talkState_t idAI::GetTalkState( void ) const {
    talkState_t retVal;
    memset(&retVal, 0, sizeof(talkState_t));
    Sys_Printf("talkState_t idAI::GetTalkState( void )\r\n");
    return retVal;
}


/*
=====================
idAI::TouchedByFlashlight
=====================
*/
void idAI::TouchedByFlashlight( idActor *flashlight_owner ) {
    Sys_Printf("void idAI::TouchedByFlashlight( idActor *flashlight_owner )\r\n");
}


/*
=====================
idAI::ClearEnemy
=====================
*/
void idAI::ClearEnemy( void ) {
    Sys_Printf("void idAI::ClearEnemy( void )\r\n");
}


/*
=====================
idAI::EnemyPositionValid
=====================
*/
bool idAI::EnemyPositionValid( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::EnemyPositionValid( void )\r\n");
    return retVal;
}


/*
=====================
idAI::SetEnemyPosition
=====================
*/
void idAI::SetEnemyPosition( void ) {
    Sys_Printf("void idAI::SetEnemyPosition( void )\r\n");
}


/*
=====================
idAI::UpdateEnemyPosition
=====================
*/
void idAI::UpdateEnemyPosition( void ) {
    Sys_Printf("void idAI::UpdateEnemyPosition( void )\r\n");
}


/*
=====================
idAI::SetEnemy
=====================
*/
void idAI::SetEnemy( idActor *newEnemy ) {
    Sys_Printf("void idAI::SetEnemy( idActor *newEnemy )\r\n");
}


/*
============
idAI::FirstVisiblePointOnPath
============
*/
idVec3 idAI::FirstVisiblePointOnPath( const idVec3 origin, const idVec3 &target, int travelFlags ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAI::FirstVisiblePointOnPath( const idVec3 origin, const idVec3 &target, int travelFlags )\r\n");
    return retVal;
}


/*
===================
idAI::CalculateAttackOffsets

calculate joint positions on attack frames so we can do proper "can hit" tests
===================
*/
void idAI::CalculateAttackOffsets( void ) {
    Sys_Printf("void idAI::CalculateAttackOffsets( void )\r\n");
}


/*
=====================
idAI::CreateProjectileClipModel
=====================
*/
void idAI::CreateProjectileClipModel( void ) const {
    Sys_Printf("void idAI::CreateProjectileClipModel( void )\r\n");
}


/*
=====================
idAI::GetAimDir
=====================
*/
bool idAI::GetAimDir( const idVec3 &firePos, idEntity *aimAtEnt, const idEntity *ignore, idVec3 &aimDir ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::GetAimDir( const idVec3 &firePos, idEntity *aimAtEnt, const idEntity *ignore, idVec3 &aimDir )\r\n");
    return retVal;
}


/*
=====================
idAI::BeginAttack
=====================
*/
void idAI::BeginAttack( const char *name ) {
    Sys_Printf("void idAI::BeginAttack( const char *name )\r\n");
}


/*
=====================
idAI::EndAttack
=====================
*/
void idAI::EndAttack( void ) {
    Sys_Printf("void idAI::EndAttack( void )\r\n");
}


/*
=====================
idAI::CreateProjectile
=====================
*/
idProjectile *idAI::CreateProjectile( const idVec3 &pos, const idVec3 &dir ) {
    Sys_Printf("idProjectile *idAI::CreateProjectile( const idVec3 &pos, const idVec3 &dir )\r\n");
    return NULL;
}


/*
=====================
idAI::RemoveProjectile
=====================
*/
void idAI::RemoveProjectile( void ) {
    Sys_Printf("void idAI::RemoveProjectile( void )\r\n");
}


/*
=====================
idAI::LaunchProjectile
=====================
*/
idProjectile *idAI::LaunchProjectile( const char *jointname, idEntity *target, bool clampToAttackCone ) {
    Sys_Printf("idProjectile *idAI::LaunchProjectile( const char *jointname, idEntity *target, bool clampToAttackCone )\r\n");
    return NULL;
}


/*
================
idAI::DamageFeedback

callback function for when another entity received damage from this entity.  damage can be adjusted and returned to the caller.

FIXME: This gets called when we call idPlayer::CalcDamagePoints from idAI::AttackMelee, which then checks for a saving throw,
possibly forcing a miss.  This is harmless behavior ATM, but is not intuitive.
================
*/
void idAI::DamageFeedback( idEntity *victim, idEntity *inflictor, int &damage ) {
    Sys_Printf("void idAI::DamageFeedback( idEntity *victim, idEntity *inflictor, int &damage )\r\n");
}


/*
=====================
idAI::DirectDamage

Causes direct damage to an entity

kickDir is specified in the monster's coordinate system, and gives the direction
that the view kick and knockback should go
=====================
*/
void idAI::DirectDamage( const char *meleeDefName, idEntity *ent ) {
    Sys_Printf("void idAI::DirectDamage( const char *meleeDefName, idEntity *ent )\r\n");
}


/*
=====================
idAI::TestMelee
=====================
*/
bool idAI::TestMelee( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::TestMelee( void )\r\n");
    return retVal;
}


/*
=====================
idAI::AttackMelee

jointname allows the endpoint to be exactly specified in the model,
as for the commando tentacle.  If not specified, it will be set to
the facing direction + melee_range.

kickDir is specified in the monster's coordinate system, and gives the direction
that the view kick and knockback should go
=====================
*/
bool idAI::AttackMelee( const char *meleeDefName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::AttackMelee( const char *meleeDefName )\r\n");
    return retVal;
}


/*
================
idAI::PushWithAF
================
*/
void idAI::PushWithAF( void ) {
    Sys_Printf("void idAI::PushWithAF( void )\r\n");
}


/***********************************************************************

	Misc

***********************************************************************/

/*
================
idAI::GetMuzzle
================
*/
void idAI::GetMuzzle( const char *jointname, idVec3 &muzzle, idMat3 &axis ) {
    Sys_Printf("void idAI::GetMuzzle( const char *jointname, idVec3 &muzzle, idMat3 &axis )\r\n");
}


/*
================
idAI::TriggerWeaponEffects
================
*/
void idAI::TriggerWeaponEffects( const idVec3 &muzzle ) {
    Sys_Printf("void idAI::TriggerWeaponEffects( const idVec3 &muzzle )\r\n");
}


/*
================
idAI::UpdateMuzzleFlash
================
*/
void idAI::UpdateMuzzleFlash( void ) {
    Sys_Printf("void idAI::UpdateMuzzleFlash( void )\r\n");
}


/*
================
idAI::Hide
================
*/
void idAI::Hide( void ) {
    Sys_Printf("void idAI::Hide( void )\r\n");
}


/*
================
idAI::Show
================
*/
void idAI::Show( void ) {
    Sys_Printf("void idAI::Show( void )\r\n");
}


/*
=====================
idAI::SetChatSound
=====================
*/
void idAI::SetChatSound( void ) {
    Sys_Printf("void idAI::SetChatSound( void )\r\n");
}


/*
================
idAI::CanPlayChatterSounds

Used for playing chatter sounds on monsters.
================
*/
bool idAI::CanPlayChatterSounds( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::CanPlayChatterSounds( void )\r\n");
    return retVal;
}


/*
=====================
idAI::PlayChatter
=====================
*/
void idAI::PlayChatter( void ) {
    Sys_Printf("void idAI::PlayChatter( void )\r\n");
}


/*
=====================
idAI::UpdateParticles
=====================
*/
void idAI::UpdateParticles( void ) {
    Sys_Printf("void idAI::UpdateParticles( void )\r\n");
}


/*
=====================
idAI::TriggerParticles
=====================
*/
void idAI::TriggerParticles( const char *jointName ) {
    Sys_Printf("void idAI::TriggerParticles( const char *jointName )\r\n");
}



/***********************************************************************

	Head & torso aiming

***********************************************************************/

/*
================
idAI::UpdateAnimationControllers
================
*/
bool idAI::UpdateAnimationControllers( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAI::UpdateAnimationControllers( void )\r\n");
    return retVal;
}


/***********************************************************************

idCombatNode

***********************************************************************/

const idEventDef EV_CombatNode_MarkUsed( "markUsed" );

CLASS_DECLARATION( idEntity, idCombatNode )
	EVENT( EV_CombatNode_MarkUsed,				idCombatNode::Event_MarkUsed )
	EVENT( EV_Activate,							idCombatNode::Event_Activate )
END_CLASS

/*
=====================
idCombatNode::idCombatNode
=====================
*/
idCombatNode::idCombatNode( void ) {
	min_dist = 0.0f;
	max_dist = 0.0f;
	cone_dist = 0.0f;
	min_height = 0.0f;
	max_height = 0.0f;
	cone_left.Zero();
	cone_right.Zero();
	offset.Zero();
	disabled = false;
}

/*
=====================
idCombatNode::Save
=====================
*/
void idCombatNode::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idCombatNode::Save( idSaveGame *savefile )\r\n");
}


/*
=====================
idCombatNode::Restore
=====================
*/
void idCombatNode::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idCombatNode::Restore( idRestoreGame *savefile )\r\n");
}


/*
=====================
idCombatNode::Spawn
=====================
*/
void idCombatNode::Spawn( void ) {
    Sys_Printf("void idCombatNode::Spawn( void )\r\n");
}


/*
=====================
idCombatNode::IsDisabled
=====================
*/
bool idCombatNode::IsDisabled( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCombatNode::IsDisabled( void )\r\n");
    return retVal;
}


/*
=====================
idCombatNode::DrawDebugInfo
=====================
*/
void idCombatNode::DrawDebugInfo( void ) {
    Sys_Printf("void idCombatNode::DrawDebugInfo( void )\r\n");
}


/*
=====================
idCombatNode::EntityInView
=====================
*/
bool idCombatNode::EntityInView( idActor *actor, const idVec3 &pos ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCombatNode::EntityInView( idActor *actor, const idVec3 &pos )\r\n");
    return retVal;
}


/*
=====================
idCombatNode::Event_Activate
=====================
*/
void idCombatNode::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idCombatNode::Event_Activate( idEntity *activator )\r\n");
}


/*
=====================
idCombatNode::Event_MarkUsed
=====================
*/
void idCombatNode::Event_MarkUsed( void ) {
    Sys_Printf("void idCombatNode::Event_MarkUsed( void )\r\n");
}

