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


/***********************************************************************

	idAnimState

***********************************************************************/

/*
=====================
idAnimState::idAnimState
=====================
*/
idAnimState::idAnimState() {
	self			= NULL;
	animator		= NULL;
	thread			= NULL;
	idleAnim		= true;
	disabled		= true;
	channel			= ANIMCHANNEL_ALL;
	animBlendFrames = 0;
	lastAnimBlendFrames = 0;
}

/*
=====================
idAnimState::~idAnimState
=====================
*/
idAnimState::~idAnimState() {
	delete thread;
}

/*
=====================
idAnimState::Save
=====================
*/
void idAnimState::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idAnimState::Save( idSaveGame *savefile )\r\n");
}


/*
=====================
idAnimState::Restore
=====================
*/
void idAnimState::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idAnimState::Restore( idRestoreGame *savefile )\r\n");
}


/*
=====================
idAnimState::Init
=====================
*/
void idAnimState::Init( idActor *owner, idAnimator *_animator, int animchannel ) {
    Sys_Printf("void idAnimState::Init( idActor *owner, idAnimator *_animator, int animchannel )\r\n");
}


/*
=====================
idAnimState::Shutdown
=====================
*/
void idAnimState::Shutdown( void ) {
    Sys_Printf("void idAnimState::Shutdown( void )\r\n");
}


/*
=====================
idAnimState::SetState
=====================
*/
void idAnimState::SetState( const char *statename, int blendFrames ) {
    Sys_Printf("void idAnimState::SetState( const char *statename, int blendFrames )\r\n");
}


/*
=====================
idAnimState::StopAnim
=====================
*/
void idAnimState::StopAnim( int frames ) {
    Sys_Printf("void idAnimState::StopAnim( int frames )\r\n");
}


/*
=====================
idAnimState::PlayAnim
=====================
*/
void idAnimState::PlayAnim( int anim ) {
    Sys_Printf("void idAnimState::PlayAnim( int anim )\r\n");
}


/*
=====================
idAnimState::CycleAnim
=====================
*/
void idAnimState::CycleAnim( int anim ) {
    Sys_Printf("void idAnimState::CycleAnim( int anim )\r\n");
}


/*
=====================
idAnimState::BecomeIdle
=====================
*/
void idAnimState::BecomeIdle( void ) {
    Sys_Printf("void idAnimState::BecomeIdle( void )\r\n");
}


/*
=====================
idAnimState::Disabled
=====================
*/
bool idAnimState::Disabled( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimState::Disabled( void )\r\n");
    return retVal;
}


/*
=====================
idAnimState::AnimDone
=====================
*/
bool idAnimState::AnimDone( int blendFrames ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimState::AnimDone( int blendFrames )\r\n");
    return retVal;
}


/*
=====================
idAnimState::IsIdle
=====================
*/
bool idAnimState::IsIdle( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimState::IsIdle( void )\r\n");
    return retVal;
}


/*
=====================
idAnimState::GetAnimFlags
=====================
*/
animFlags_t idAnimState::GetAnimFlags( void ) const {
    animFlags_t retVal;
    memset(&retVal, 0, sizeof(animFlags_t));
    Sys_Printf("animFlags_t idAnimState::GetAnimFlags( void )\r\n");
    return retVal;
}


/*
=====================
idAnimState::Enable
=====================
*/
void idAnimState::Enable( int blendFrames ) {
    Sys_Printf("void idAnimState::Enable( int blendFrames )\r\n");
}


/*
=====================
idAnimState::Disable
=====================
*/
void idAnimState::Disable( void ) {
    Sys_Printf("void idAnimState::Disable( void )\r\n");
}


/*
=====================
idAnimState::UpdateState
=====================
*/
bool idAnimState::UpdateState( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimState::UpdateState( void )\r\n");
    return retVal;
}


/***********************************************************************

	idActor

***********************************************************************/

const idEventDef AI_EnableEyeFocus( "enableEyeFocus" );
const idEventDef AI_DisableEyeFocus( "disableEyeFocus" );
const idEventDef EV_Footstep( "footstep" );
const idEventDef EV_FootstepLeft( "leftFoot" );
const idEventDef EV_FootstepRight( "rightFoot" );
const idEventDef EV_EnableWalkIK( "EnableWalkIK" );
const idEventDef EV_DisableWalkIK( "DisableWalkIK" );
const idEventDef EV_EnableLegIK( "EnableLegIK", "d" );
const idEventDef EV_DisableLegIK( "DisableLegIK", "d" );
const idEventDef AI_StopAnim( "stopAnim", "dd" );
const idEventDef AI_PlayAnim( "playAnim", "ds", 'd' );
const idEventDef AI_PlayCycle( "playCycle", "ds", 'd' );
const idEventDef AI_IdleAnim( "idleAnim", "ds", 'd' );
const idEventDef AI_SetSyncedAnimWeight( "setSyncedAnimWeight", "ddf" );
const idEventDef AI_SetBlendFrames( "setBlendFrames", "dd" );
const idEventDef AI_GetBlendFrames( "getBlendFrames", "d", 'd' );
const idEventDef AI_AnimState( "animState", "dsd" );
const idEventDef AI_GetAnimState( "getAnimState", "d", 's' );
const idEventDef AI_InAnimState( "inAnimState", "ds", 'd' );
const idEventDef AI_FinishAction( "finishAction", "s" );
const idEventDef AI_AnimDone( "animDone", "dd", 'd' );
const idEventDef AI_OverrideAnim( "overrideAnim", "d" );
const idEventDef AI_EnableAnim( "enableAnim", "dd" );
const idEventDef AI_PreventPain( "preventPain", "f" );
const idEventDef AI_DisablePain( "disablePain" );
const idEventDef AI_EnablePain( "enablePain" );
const idEventDef AI_GetPainAnim( "getPainAnim", NULL, 's' );
const idEventDef AI_SetAnimPrefix( "setAnimPrefix", "s" );
const idEventDef AI_HasAnim( "hasAnim", "ds", 'f' );
const idEventDef AI_CheckAnim( "checkAnim", "ds" );
const idEventDef AI_ChooseAnim( "chooseAnim", "ds", 's' );
const idEventDef AI_AnimLength( "animLength", "ds", 'f' );
const idEventDef AI_AnimDistance( "animDistance", "ds", 'f' );
const idEventDef AI_HasEnemies( "hasEnemies", NULL, 'd' );
const idEventDef AI_NextEnemy( "nextEnemy", "E", 'e' );
const idEventDef AI_ClosestEnemyToPoint( "closestEnemyToPoint", "v", 'e' );
const idEventDef AI_SetNextState( "setNextState", "s" );
const idEventDef AI_SetState( "setState", "s" );
const idEventDef AI_GetState( "getState", NULL, 's' );
const idEventDef AI_GetHead( "getHead", NULL, 'e' );
#ifdef _D3XP
const idEventDef EV_SetDamageGroupScale( "setDamageGroupScale", "sf" );
const idEventDef EV_SetDamageGroupScaleAll( "setDamageGroupScaleAll", "f" );
const idEventDef EV_GetDamageGroupScale( "getDamageGroupScale", "s", 'f' );
const idEventDef EV_SetDamageCap( "setDamageCap", "f" );
const idEventDef EV_SetWaitState( "setWaitState" , "s" );
const idEventDef EV_GetWaitState( "getWaitState", NULL, 's' );
#endif

CLASS_DECLARATION( idAFEntity_Gibbable, idActor )
	EVENT( AI_EnableEyeFocus,			idActor::Event_EnableEyeFocus )
	EVENT( AI_DisableEyeFocus,			idActor::Event_DisableEyeFocus )
	EVENT( EV_Footstep,					idActor::Event_Footstep )
	EVENT( EV_FootstepLeft,				idActor::Event_Footstep )
	EVENT( EV_FootstepRight,			idActor::Event_Footstep )
	EVENT( EV_EnableWalkIK,				idActor::Event_EnableWalkIK )
	EVENT( EV_DisableWalkIK,			idActor::Event_DisableWalkIK )
	EVENT( EV_EnableLegIK,				idActor::Event_EnableLegIK )
	EVENT( EV_DisableLegIK,				idActor::Event_DisableLegIK )
	EVENT( AI_PreventPain,				idActor::Event_PreventPain )
	EVENT( AI_DisablePain,				idActor::Event_DisablePain )
	EVENT( AI_EnablePain,				idActor::Event_EnablePain )
	EVENT( AI_GetPainAnim,				idActor::Event_GetPainAnim )
	EVENT( AI_SetAnimPrefix,			idActor::Event_SetAnimPrefix )
	EVENT( AI_StopAnim,					idActor::Event_StopAnim )
	EVENT( AI_PlayAnim,					idActor::Event_PlayAnim )
	EVENT( AI_PlayCycle,				idActor::Event_PlayCycle )
	EVENT( AI_IdleAnim,					idActor::Event_IdleAnim )
	EVENT( AI_SetSyncedAnimWeight,		idActor::Event_SetSyncedAnimWeight )
	EVENT( AI_SetBlendFrames,			idActor::Event_SetBlendFrames )
	EVENT( AI_GetBlendFrames,			idActor::Event_GetBlendFrames )
	EVENT( AI_AnimState,				idActor::Event_AnimState )
	EVENT( AI_GetAnimState,				idActor::Event_GetAnimState )
	EVENT( AI_InAnimState,				idActor::Event_InAnimState )
	EVENT( AI_FinishAction,				idActor::Event_FinishAction )
	EVENT( AI_AnimDone,					idActor::Event_AnimDone )
	EVENT( AI_OverrideAnim,				idActor::Event_OverrideAnim )
	EVENT( AI_EnableAnim,				idActor::Event_EnableAnim )
	EVENT( AI_HasAnim,					idActor::Event_HasAnim )
	EVENT( AI_CheckAnim,				idActor::Event_CheckAnim )
	EVENT( AI_ChooseAnim,				idActor::Event_ChooseAnim )
	EVENT( AI_AnimLength,				idActor::Event_AnimLength )
	EVENT( AI_AnimDistance,				idActor::Event_AnimDistance )
	EVENT( AI_HasEnemies,				idActor::Event_HasEnemies )
	EVENT( AI_NextEnemy,				idActor::Event_NextEnemy )
	EVENT( AI_ClosestEnemyToPoint,		idActor::Event_ClosestEnemyToPoint )
	EVENT( EV_StopSound,				idActor::Event_StopSound )
	EVENT( AI_SetNextState,				idActor::Event_SetNextState )
	EVENT( AI_SetState,					idActor::Event_SetState )
	EVENT( AI_GetState,					idActor::Event_GetState )
	EVENT( AI_GetHead,					idActor::Event_GetHead )
#ifdef _D3XP
	EVENT( EV_SetDamageGroupScale,		idActor::Event_SetDamageGroupScale )
	EVENT( EV_SetDamageGroupScaleAll,	idActor::Event_SetDamageGroupScaleAll )
	EVENT( EV_GetDamageGroupScale,		idActor::Event_GetDamageGroupScale )
	EVENT( EV_SetDamageCap,				idActor::Event_SetDamageCap )
	EVENT( EV_SetWaitState,				idActor::Event_SetWaitState )
	EVENT( EV_GetWaitState,				idActor::Event_GetWaitState )
#endif
END_CLASS

/*
=====================
idActor::idActor
=====================
*/
idActor::idActor( void ) {
	viewAxis.Identity();

	scriptThread		= NULL;		// initialized by ConstructScriptObject, which is called by idEntity::Spawn

	use_combat_bbox		= false;
	head				= NULL;

	team				= 0;
	rank				= 0;
	fovDot				= 0.0f;
	eyeOffset.Zero();
	pain_debounce_time	= 0;
	pain_delay			= 0;
	pain_threshold		= 0;

	state				= NULL;
	idealState			= NULL;

	leftEyeJoint		= INVALID_JOINT;
	rightEyeJoint		= INVALID_JOINT;
	soundJoint			= INVALID_JOINT;

	modelOffset.Zero();
	deltaViewAngles.Zero();

	painTime			= 0;
	allowPain			= false;
	allowEyeFocus		= false;

	waitState			= "";
	
	blink_anim			= 0;
	blink_time			= 0;
	blink_min			= 0;
	blink_max			= 0;

	finalBoss			= false;

	attachments.SetGranularity( 1 );

	enemyNode.SetOwner( this );
	enemyList.SetOwner( this );

#ifdef _D3XP
	damageCap = -1;
#endif
}

/*
=====================
idActor::~idActor
=====================
*/
idActor::~idActor( void ) {
	int i;
	idEntity *ent;

	DeconstructScriptObject();
	scriptObject.Free();

	StopSound( SND_CHANNEL_ANY, false );

	delete combatModel;
	combatModel = NULL;

	if ( head.GetEntity() ) {
		head.GetEntity()->ClearBody();
		head.GetEntity()->PostEventMS( &EV_Remove, 0 );
	}

	// remove any attached entities
	for( i = 0; i < attachments.Num(); i++ ) {
		ent = attachments[ i ].ent.GetEntity();
		if ( ent ) {
			ent->PostEventMS( &EV_Remove, 0 );
		}
	}

	ShutdownThreads();
}

/*
=====================
idActor::Spawn
=====================
*/
void idActor::Spawn( void ) {
    Sys_Printf("void idActor::Spawn( void )\r\n");
}


/*
================
idActor::FinishSetup
================
*/
void idActor::FinishSetup( void ) {
    Sys_Printf("void idActor::FinishSetup( void )\r\n");
}


/*
================
idActor::SetupHead
================
*/
void idActor::SetupHead( void ) {
    Sys_Printf("void idActor::SetupHead( void )\r\n");
}


/*
================
idActor::CopyJointsFromBodyToHead
================
*/
void idActor::CopyJointsFromBodyToHead( void ) {
    Sys_Printf("void idActor::CopyJointsFromBodyToHead( void )\r\n");
}


/*
================
idActor::Restart
================
*/
void idActor::Restart( void ) {
    Sys_Printf("void idActor::Restart( void )\r\n");
}


/*
================
idActor::Save

archive object for savegame file
================
*/
void idActor::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idActor::Save( idSaveGame *savefile )\r\n");
}


/*
================
idActor::Restore

unarchives object from save game file
================
*/
void idActor::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idActor::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idActor::Hide
================
*/
void idActor::Hide( void ) {
    Sys_Printf("void idActor::Hide( void )\r\n");
}


/*
================
idActor::Show
================
*/
void idActor::Show( void ) {
    Sys_Printf("void idActor::Show( void )\r\n");
}


/*
==============
idActor::GetDefaultSurfaceType
==============
*/
int	idActor::GetDefaultSurfaceType( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidActor::GetDefaultSurfaceType( void )\r\n");
    return retVal;
}


/*
================
idActor::ProjectOverlay
================
*/
void idActor::ProjectOverlay( const idVec3 &origin, const idVec3 &dir, float size, const char *material ) {
    Sys_Printf("void idActor::ProjectOverlay( const idVec3 &origin, const idVec3 &dir, float size, const char *material )\r\n");
}


/*
================
idActor::LoadAF
================
*/
bool idActor::LoadAF( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idActor::LoadAF( void )\r\n");
    return retVal;
}


/*
=====================
idActor::SetupBody
=====================
*/
void idActor::SetupBody( void ) {
    Sys_Printf("void idActor::SetupBody( void )\r\n");
}


/*
=====================
idActor::CheckBlink
=====================
*/
void idActor::CheckBlink( void ) {
    Sys_Printf("void idActor::CheckBlink( void )\r\n");
}


/*
================
idActor::GetPhysicsToVisualTransform
================
*/
bool idActor::GetPhysicsToVisualTransform( idVec3 &origin, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idActor::GetPhysicsToVisualTransform( idVec3 &origin, idMat3 &axis )\r\n");
    return retVal;
}


/*
================
idActor::GetPhysicsToSoundTransform
================
*/
bool idActor::GetPhysicsToSoundTransform( idVec3 &origin, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idActor::GetPhysicsToSoundTransform( idVec3 &origin, idMat3 &axis )\r\n");
    return retVal;
}


/***********************************************************************

	script state management

***********************************************************************/

/*
================
idActor::ShutdownThreads
================
*/
void idActor::ShutdownThreads( void ) {
    Sys_Printf("void idActor::ShutdownThreads( void )\r\n");
}


/*
================
idActor::ShouldConstructScriptObjectAtSpawn

Called during idEntity::Spawn to see if it should construct the script object or not.
Overridden by subclasses that need to spawn the script object themselves.
================
*/
bool idActor::ShouldConstructScriptObjectAtSpawn( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idActor::ShouldConstructScriptObjectAtSpawn( void )\r\n");
    return retVal;
}


/*
================
idActor::ConstructScriptObject

Called during idEntity::Spawn.  Calls the constructor on the script object.
Can be overridden by subclasses when a thread doesn't need to be allocated.
================
*/
idThread *idActor::ConstructScriptObject( void ) {
    Sys_Printf("idThread *idActor::ConstructScriptObject( void )\r\n");
    return NULL;
}


/*
=====================
idActor::GetScriptFunction
=====================
*/
const function_t *idActor::GetScriptFunction( const char *funcname ) {
    Sys_Printf("function_t *idActor::GetScriptFunction( const char *funcname )\r\n");
    return NULL;
}


/*
=====================
idActor::SetState
=====================
*/
void idActor::SetState( const function_t *newState ) {
    Sys_Printf("void idActor::SetState( const function_t *newState )\r\n");
}


/*
=====================
idActor::SetState
=====================
*/
void idActor::SetState( const char *statename ) {
    Sys_Printf("void idActor::SetState( const char *statename )\r\n");
}


/*
=====================
idActor::UpdateScript
=====================
*/
void idActor::UpdateScript( void ) {
    Sys_Printf("void idActor::UpdateScript( void )\r\n");
}


/***********************************************************************

	vision

***********************************************************************/

/*
=====================
idActor::setFov
=====================
*/
void idActor::SetFOV( float fov ) {
    Sys_Printf("void idActor::SetFOV( float fov )\r\n");
}


/*
=====================
idActor::SetEyeHeight
=====================
*/
void idActor::SetEyeHeight( float height ) {
    Sys_Printf("void idActor::SetEyeHeight( float height )\r\n");
}


/*
=====================
idActor::EyeHeight
=====================
*/
float idActor::EyeHeight( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idActor::EyeHeight( void )\r\n");
    return retVal;
}


/*
=====================
idActor::EyeOffset
=====================
*/
idVec3 idActor::EyeOffset( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idActor::EyeOffset( void )\r\n");
    return retVal;
}


/*
=====================
idActor::GetEyePosition
=====================
*/
idVec3 idActor::GetEyePosition( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idActor::GetEyePosition( void )\r\n");
    return retVal;
}


/*
=====================
idActor::GetViewPos
=====================
*/
void idActor::GetViewPos( idVec3 &origin, idMat3 &axis ) const {
    Sys_Printf("void idActor::GetViewPos( idVec3 &origin, idMat3 &axis )\r\n");
}


/*
=====================
idActor::CheckFOV
=====================
*/
bool idActor::CheckFOV( const idVec3 &pos ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idActor::CheckFOV( const idVec3 &pos )\r\n");
    return retVal;
}


/*
=====================
idActor::CanSee
=====================
*/
bool idActor::CanSee( idEntity *ent, bool useFov ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idActor::CanSee( idEntity *ent, bool useFov )\r\n");
    return retVal;
}


/*
=====================
idActor::PointVisible
=====================
*/
bool idActor::PointVisible( const idVec3 &point ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idActor::PointVisible( const idVec3 &point )\r\n");
    return retVal;
}


/*
=====================
idActor::GetAIAimTargets

Returns positions for the AI to aim at.
=====================
*/
void idActor::GetAIAimTargets( const idVec3 &lastSightPos, idVec3 &headPos, idVec3 &chestPos ) {
    Sys_Printf("void idActor::GetAIAimTargets( const idVec3 &lastSightPos, idVec3 &headPos, idVec3 &chestPos )\r\n");
}


/*
=====================
idActor::GetRenderView
=====================
*/
renderView_t *idActor::GetRenderView() {
    Sys_Printf("renderView_t *idActor::GetRenderView()\r\n");
    return NULL;
}


/***********************************************************************

	Model/Ragdoll

***********************************************************************/

/*
================
idActor::SetCombatModel
================
*/
void idActor::SetCombatModel( void ) {
    Sys_Printf("void idActor::SetCombatModel( void )\r\n");
}


/*
================
idActor::GetCombatModel
================
*/
idClipModel *idActor::GetCombatModel( void ) const {
    Sys_Printf("idClipModel *idActor::GetCombatModel( void )\r\n");
    return NULL;
}


/*
================
idActor::LinkCombat
================
*/
void idActor::LinkCombat( void ) {
    Sys_Printf("void idActor::LinkCombat( void )\r\n");
}


/*
================
idActor::UnlinkCombat
================
*/
void idActor::UnlinkCombat( void ) {
    Sys_Printf("void idActor::UnlinkCombat( void )\r\n");
}


/*
================
idActor::StartRagdoll
================
*/
bool idActor::StartRagdoll( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idActor::StartRagdoll( void )\r\n");
    return retVal;
}


/*
================
idActor::StopRagdoll
================
*/
void idActor::StopRagdoll( void ) {
    Sys_Printf("void idActor::StopRagdoll( void )\r\n");
}


/*
================
idActor::UpdateAnimationControllers
================
*/
bool idActor::UpdateAnimationControllers( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idActor::UpdateAnimationControllers( void )\r\n");
    return retVal;
}


/*
================
idActor::RemoveAttachments
================
*/
void idActor::RemoveAttachments( void ) {
    Sys_Printf("void idActor::RemoveAttachments( void )\r\n");
}


/*
================
idActor::Attach
================
*/
void idActor::Attach( idEntity *ent ) {
    Sys_Printf("void idActor::Attach( idEntity *ent )\r\n");
}


/*
================
idActor::Teleport
================
*/
void idActor::Teleport( const idVec3 &origin, const idAngles &angles, idEntity *destination ) {
    Sys_Printf("void idActor::Teleport( const idVec3 &origin, const idAngles &angles, idEntity *destination )\r\n");
}


/*
================
idActor::GetDeltaViewAngles
================
*/
const idAngles &idActor::GetDeltaViewAngles( void ) const {
	return deltaViewAngles;
}

/*
================
idActor::SetDeltaViewAngles
================
*/
void idActor::SetDeltaViewAngles( const idAngles &delta ) {
    Sys_Printf("void idActor::SetDeltaViewAngles( const idAngles &delta )\r\n");
}


/*
================
idActor::HasEnemies
================
*/
bool idActor::HasEnemies( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idActor::HasEnemies( void )\r\n");
    return retVal;
}


/*
================
idActor::ClosestEnemyToPoint
================
*/
idActor *idActor::ClosestEnemyToPoint( const idVec3 &pos ) {
    Sys_Printf("idActor *idActor::ClosestEnemyToPoint( const idVec3 &pos )\r\n");
    return NULL;
}


/*
================
idActor::EnemyWithMostHealth
================
*/
idActor *idActor::EnemyWithMostHealth() {
    Sys_Printf("idActor *idActor::EnemyWithMostHealth()\r\n");
    return NULL;
}


/*
================
idActor::OnLadder
================
*/
bool idActor::OnLadder( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idActor::OnLadder( void )\r\n");
    return retVal;
}


/*
==============
idActor::GetAASLocation
==============
*/
void idActor::GetAASLocation( idAAS *aas, idVec3 &pos, int &areaNum ) const {
    Sys_Printf("void idActor::GetAASLocation( idAAS *aas, idVec3 &pos, int &areaNum )\r\n");
}


/***********************************************************************

	animation state

***********************************************************************/

/*
=====================
idActor::SetAnimState
=====================
*/
void idActor::SetAnimState( int channel, const char *statename, int blendFrames ) {
    Sys_Printf("void idActor::SetAnimState( int channel, const char *statename, int blendFrames )\r\n");
}


/*
=====================
idActor::GetAnimState
=====================
*/
const char *idActor::GetAnimState( int channel ) const {
    Sys_Printf("char *idActor::GetAnimState( int channel )\r\n");
    return NULL;
}


/*
=====================
idActor::InAnimState
=====================
*/
bool idActor::InAnimState( int channel, const char *statename ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idActor::InAnimState( int channel, const char *statename )\r\n");
    return retVal;
}


/*
=====================
idActor::WaitState
=====================
*/
const char *idActor::WaitState( void ) const {
    Sys_Printf("char *idActor::WaitState( void )\r\n");
    return NULL;
}


/*
=====================
idActor::SetWaitState
=====================
*/
void idActor::SetWaitState( const char *_waitstate ) {
    Sys_Printf("void idActor::SetWaitState( const char *_waitstate )\r\n");
}


/*
=====================
idActor::UpdateAnimState
=====================
*/
void idActor::UpdateAnimState( void ) {
    Sys_Printf("void idActor::UpdateAnimState( void )\r\n");
}


/*
=====================
idActor::GetAnim
=====================
*/
int idActor::GetAnim( int channel, const char *animname ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idActor::GetAnim( int channel, const char *animname )\r\n");
    return retVal;
}


/*
===============
idActor::SyncAnimChannels
===============
*/
void idActor::SyncAnimChannels( int channel, int syncToChannel, int blendFrames ) {
    Sys_Printf("void idActor::SyncAnimChannels( int channel, int syncToChannel, int blendFrames )\r\n");
}


/***********************************************************************

	Damage

***********************************************************************/

/*
============
idActor::Gib
============
*/
void idActor::Gib( const idVec3 &dir, const char *damageDefName ) {
    Sys_Printf("void idActor::Gib( const idVec3 &dir, const char *damageDefName )\r\n");
}



/*
============
idActor::Damage

this		entity that is being damaged
inflictor	entity that is causing the damage
attacker	entity that caused the inflictor to damage targ
	example: this=monster, inflictor=rocket, attacker=player

dir			direction of the attack for knockback in global space
point		point at which the damage is being inflicted, used for headshots
damage		amount of damage being inflicted

inflictor, attacker, dir, and point can be NULL for environmental effects

Bleeding wounds and surface overlays are applied in the collision code that
calls Damage()
============
*/
void idActor::Damage( idEntity *inflictor, idEntity *attacker, const idVec3 &dir, 
					  const char *damageDefName, const float damageScale, const int location ) {
    Sys_Printf("void idActor::Damage( idEntity *inflictor, idEntity *attacker, const idVec3 &dir, const char *damageDefName, const float damageScale, const int location )\r\n");
}


/*
=====================
idActor::ClearPain
=====================
*/
void idActor::ClearPain( void ) {
    Sys_Printf("void idActor::ClearPain( void )\r\n");
}


/*
=====================
idActor::Pain
=====================
*/
bool idActor::Pain( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idActor::Pain( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
    return retVal;
}


/*
=====================
idActor::SpawnGibs
=====================
*/
void idActor::SpawnGibs( const idVec3 &dir, const char *damageDefName ) {
    Sys_Printf("void idActor::SpawnGibs( const idVec3 &dir, const char *damageDefName )\r\n");
}


/*
=====================
idActor::SetupDamageGroups

FIXME: only store group names once and store an index for each joint
=====================
*/
void idActor::SetupDamageGroups( void ) {
    Sys_Printf("void idActor::SetupDamageGroups( void )\r\n");
}


/*
=====================
idActor::GetDamageForLocation
=====================
*/
int idActor::GetDamageForLocation( int damage, int location ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idActor::GetDamageForLocation( int damage, int location )\r\n");
    return retVal;
}


/*
=====================
idActor::GetDamageGroup
=====================
*/
const char *idActor::GetDamageGroup( int location ) {
    Sys_Printf("char *idActor::GetDamageGroup( int location )\r\n");
    return NULL;
}



/***********************************************************************

	Events

***********************************************************************/

/*
=====================
idActor::Event_EnableEyeFocus
=====================
*/
void idActor::PlayFootStepSound( void ) {
    Sys_Printf("void idActor::PlayFootStepSound( void )\r\n");
}


/*
=====================
idActor::Event_EnableEyeFocus
=====================
*/
void idActor::Event_EnableEyeFocus( void ) {
    Sys_Printf("void idActor::Event_EnableEyeFocus( void )\r\n");
}


/*
=====================
idActor::Event_DisableEyeFocus
=====================
*/
void idActor::Event_DisableEyeFocus( void ) {
    Sys_Printf("void idActor::Event_DisableEyeFocus( void )\r\n");
}


/*
===============
idActor::Event_Footstep
===============
*/
void idActor::Event_Footstep( void ) {
    Sys_Printf("void idActor::Event_Footstep( void )\r\n");
}


/*
=====================
idActor::Event_EnableWalkIK
=====================
*/
void idActor::Event_EnableWalkIK( void ) {
    Sys_Printf("void idActor::Event_EnableWalkIK( void )\r\n");
}


/*
=====================
idActor::Event_DisableWalkIK
=====================
*/
void idActor::Event_DisableWalkIK( void ) {
    Sys_Printf("void idActor::Event_DisableWalkIK( void )\r\n");
}


/*
=====================
idActor::Event_EnableLegIK
=====================
*/
void idActor::Event_EnableLegIK( int num ) {
    Sys_Printf("void idActor::Event_EnableLegIK( int num )\r\n");
}


/*
=====================
idActor::Event_DisableLegIK
=====================
*/
void idActor::Event_DisableLegIK( int num ) {
    Sys_Printf("void idActor::Event_DisableLegIK( int num )\r\n");
}


/*
=====================
idActor::Event_PreventPain
=====================
*/
void idActor::Event_PreventPain( float duration ) {
    Sys_Printf("void idActor::Event_PreventPain( float duration )\r\n");
}


/*
===============
idActor::Event_DisablePain
===============
*/
void idActor::Event_DisablePain( void ) {
    Sys_Printf("void idActor::Event_DisablePain( void )\r\n");
}


/*
===============
idActor::Event_EnablePain
===============
*/
void idActor::Event_EnablePain( void ) {
    Sys_Printf("void idActor::Event_EnablePain( void )\r\n");
}


/*
=====================
idActor::Event_GetPainAnim
=====================
*/
void idActor::Event_GetPainAnim( void ) {
    Sys_Printf("void idActor::Event_GetPainAnim( void )\r\n");
}


/*
=====================
idActor::Event_SetAnimPrefix
=====================
*/
void idActor::Event_SetAnimPrefix( const char *prefix ) {
    Sys_Printf("void idActor::Event_SetAnimPrefix( const char *prefix )\r\n");
}


/*
===============
idActor::Event_StopAnim
===============
*/
void idActor::Event_StopAnim( int channel, int frames ) {
    Sys_Printf("void idActor::Event_StopAnim( int channel, int frames )\r\n");
}


/*
===============
idActor::Event_PlayAnim
===============
*/
void idActor::Event_PlayAnim( int channel, const char *animname ) {
    Sys_Printf("void idActor::Event_PlayAnim( int channel, const char *animname )\r\n");
}


/*
===============
idActor::Event_PlayCycle
===============
*/
void idActor::Event_PlayCycle( int channel, const char *animname ) {
    Sys_Printf("void idActor::Event_PlayCycle( int channel, const char *animname )\r\n");
}


/*
===============
idActor::Event_IdleAnim
===============
*/
void idActor::Event_IdleAnim( int channel, const char *animname ) {
    Sys_Printf("void idActor::Event_IdleAnim( int channel, const char *animname )\r\n");
}


/*
================
idActor::Event_SetSyncedAnimWeight
================
*/
void idActor::Event_SetSyncedAnimWeight( int channel, int anim, float weight ) {
    Sys_Printf("void idActor::Event_SetSyncedAnimWeight( int channel, int anim, float weight )\r\n");
}


/*
===============
idActor::Event_OverrideAnim
===============
*/
void idActor::Event_OverrideAnim( int channel ) {
    Sys_Printf("void idActor::Event_OverrideAnim( int channel )\r\n");
}


/*
===============
idActor::Event_EnableAnim
===============
*/
void idActor::Event_EnableAnim( int channel, int blendFrames ) {
    Sys_Printf("void idActor::Event_EnableAnim( int channel, int blendFrames )\r\n");
}


/*
===============
idActor::Event_SetBlendFrames
===============
*/
void idActor::Event_SetBlendFrames( int channel, int blendFrames ) {
    Sys_Printf("void idActor::Event_SetBlendFrames( int channel, int blendFrames )\r\n");
}


/*
===============
idActor::Event_GetBlendFrames
===============
*/
void idActor::Event_GetBlendFrames( int channel ) {
    Sys_Printf("void idActor::Event_GetBlendFrames( int channel )\r\n");
}


/*
===============
idActor::Event_AnimState
===============
*/
void idActor::Event_AnimState( int channel, const char *statename, int blendFrames ) {
    Sys_Printf("void idActor::Event_AnimState( int channel, const char *statename, int blendFrames )\r\n");
}


/*
===============
idActor::Event_GetAnimState
===============
*/
void idActor::Event_GetAnimState( int channel ) {
    Sys_Printf("void idActor::Event_GetAnimState( int channel )\r\n");
}


/*
===============
idActor::Event_InAnimState
===============
*/
void idActor::Event_InAnimState( int channel, const char *statename ) {
    Sys_Printf("void idActor::Event_InAnimState( int channel, const char *statename )\r\n");
}


/*
===============
idActor::Event_FinishAction
===============
*/
void idActor::Event_FinishAction( const char *actionname ) {
    Sys_Printf("void idActor::Event_FinishAction( const char *actionname )\r\n");
}


/*
===============
idActor::Event_AnimDone
===============
*/
void idActor::Event_AnimDone( int channel, int blendFrames ) {
    Sys_Printf("void idActor::Event_AnimDone( int channel, int blendFrames )\r\n");
}


/*
================
idActor::Event_HasAnim
================
*/
void idActor::Event_HasAnim( int channel, const char *animname ) {
    Sys_Printf("void idActor::Event_HasAnim( int channel, const char *animname )\r\n");
}


/*
================
idActor::Event_CheckAnim
================
*/
void idActor::Event_CheckAnim( int channel, const char *animname ) {
    Sys_Printf("void idActor::Event_CheckAnim( int channel, const char *animname )\r\n");
}


/*
================
idActor::Event_ChooseAnim
================
*/
void idActor::Event_ChooseAnim( int channel, const char *animname ) {
    Sys_Printf("void idActor::Event_ChooseAnim( int channel, const char *animname )\r\n");
}


/*
================
idActor::Event_AnimLength
================
*/
void idActor::Event_AnimLength( int channel, const char *animname ) {
    Sys_Printf("void idActor::Event_AnimLength( int channel, const char *animname )\r\n");
}


/*
================
idActor::Event_AnimDistance
================
*/
void idActor::Event_AnimDistance( int channel, const char *animname ) {
    Sys_Printf("void idActor::Event_AnimDistance( int channel, const char *animname )\r\n");
}


/*
================
idActor::Event_HasEnemies
================
*/
void idActor::Event_HasEnemies( void ) {
    Sys_Printf("void idActor::Event_HasEnemies( void )\r\n");
}


/*
================
idActor::Event_NextEnemy
================
*/
void idActor::Event_NextEnemy( idEntity *ent ) {
    Sys_Printf("void idActor::Event_NextEnemy( idEntity *ent )\r\n");
}


/*
================
idActor::Event_ClosestEnemyToPoint
================
*/
void idActor::Event_ClosestEnemyToPoint( const idVec3 &pos ) {
    Sys_Printf("void idActor::Event_ClosestEnemyToPoint( const idVec3 &pos )\r\n");
}


/*
================
idActor::Event_StopSound
================
*/
void idActor::Event_StopSound( int channel, int netSync ) {
    Sys_Printf("void idActor::Event_StopSound( int channel, int netSync )\r\n");
}


/*
=====================
idActor::Event_SetNextState
=====================
*/
void idActor::Event_SetNextState( const char *name ) {
    Sys_Printf("void idActor::Event_SetNextState( const char *name )\r\n");
}


/*
=====================
idActor::Event_SetState
=====================
*/
void idActor::Event_SetState( const char *name ) {
    Sys_Printf("void idActor::Event_SetState( const char *name )\r\n");
}


/*
=====================
idActor::Event_GetState
=====================
*/
void idActor::Event_GetState( void ) {
    Sys_Printf("void idActor::Event_GetState( void )\r\n");
}


/*
=====================
idActor::Event_GetHead
=====================
*/
void idActor::Event_GetHead( void ) {
    Sys_Printf("void idActor::Event_GetHead( void )\r\n");
}


#ifdef _D3XP
/*
================
idActor::Event_SetDamageGroupScale
================
*/
void idActor::Event_SetDamageGroupScale( const char* groupName, float scale) {
    Sys_Printf("void idActor::Event_SetDamageGroupScale( const char* groupName, float scale)\r\n");
}


/*
================
idActor::Event_SetDamageGroupScaleAll
================
*/
void idActor::Event_SetDamageGroupScaleAll( float scale ) {
    Sys_Printf("void idActor::Event_SetDamageGroupScaleAll( float scale )\r\n");
}


void idActor::Event_GetDamageGroupScale( const char* groupName ) {
    Sys_Printf("void idActor::Event_GetDamageGroupScale( const char* groupName )\r\n");
}


void idActor::Event_SetDamageCap( float _damageCap ) {
    Sys_Printf("void idActor::Event_SetDamageCap( float _damageCap )\r\n");
}


void idActor::Event_SetWaitState( const char* waitState) {
    Sys_Printf("void idActor::Event_SetWaitState( const char* waitState)\r\n");
}


void idActor::Event_GetWaitState() {
    Sys_Printf("void idActor::Event_GetWaitState()\r\n");
}

#endif
