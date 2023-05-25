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

/***********************************************************************

	AI Events

***********************************************************************/

const idEventDef AI_FindEnemy( "findEnemy", "d", 'e' );
const idEventDef AI_FindEnemyAI( "findEnemyAI", "d", 'e' );
const idEventDef AI_FindEnemyInCombatNodes( "findEnemyInCombatNodes", NULL, 'e' );
const idEventDef AI_ClosestReachableEnemyOfEntity( "closestReachableEnemyOfEntity", "E", 'e' );
const idEventDef AI_HeardSound( "heardSound", "d", 'e' );
const idEventDef AI_SetEnemy( "setEnemy", "E" );
const idEventDef AI_ClearEnemy( "clearEnemy" );
const idEventDef AI_MuzzleFlash( "muzzleFlash", "s" );
const idEventDef AI_CreateMissile( "createMissile", "s", 'e' );
const idEventDef AI_AttackMissile( "attackMissile", "s", 'e' );
const idEventDef AI_FireMissileAtTarget( "fireMissileAtTarget", "ss", 'e' );
const idEventDef AI_LaunchMissile( "launchMissile", "vv", 'e' );
#ifdef _D3XP
const idEventDef AI_LaunchProjectile( "launchProjectile", "s" );
#endif
const idEventDef AI_AttackMelee( "attackMelee", "s", 'd' );
const idEventDef AI_DirectDamage( "directDamage", "es" );
const idEventDef AI_RadiusDamageFromJoint( "radiusDamageFromJoint", "ss" );
const idEventDef AI_BeginAttack( "attackBegin", "s" );
const idEventDef AI_EndAttack( "attackEnd" );
const idEventDef AI_MeleeAttackToJoint( "meleeAttackToJoint", "ss", 'd' );
const idEventDef AI_RandomPath( "randomPath", NULL, 'e' );
const idEventDef AI_CanBecomeSolid( "canBecomeSolid", NULL, 'f' );
const idEventDef AI_BecomeSolid( "becomeSolid" );
const idEventDef AI_BecomeRagdoll( "becomeRagdoll", NULL, 'd' );
const idEventDef AI_StopRagdoll( "stopRagdoll" );
const idEventDef AI_SetHealth( "setHealth", "f" );
const idEventDef AI_GetHealth( "getHealth", NULL, 'f' );
const idEventDef AI_AllowDamage( "allowDamage" );
const idEventDef AI_IgnoreDamage( "ignoreDamage" );
const idEventDef AI_GetCurrentYaw( "getCurrentYaw", NULL, 'f' );
const idEventDef AI_TurnTo( "turnTo", "f" );
const idEventDef AI_TurnToPos( "turnToPos", "v" );
const idEventDef AI_TurnToEntity( "turnToEntity", "E" );
const idEventDef AI_MoveStatus( "moveStatus", NULL, 'd' );
const idEventDef AI_StopMove( "stopMove" );
const idEventDef AI_MoveToCover( "moveToCover" );
const idEventDef AI_MoveToEnemy( "moveToEnemy" );
const idEventDef AI_MoveToEnemyHeight( "moveToEnemyHeight" );
const idEventDef AI_MoveOutOfRange( "moveOutOfRange", "ef" );
const idEventDef AI_MoveToAttackPosition( "moveToAttackPosition", "es" );
const idEventDef AI_Wander( "wander" );
const idEventDef AI_MoveToEntity( "moveToEntity", "e" );
const idEventDef AI_MoveToPosition( "moveToPosition", "v" );
const idEventDef AI_SlideTo( "slideTo", "vf" );
const idEventDef AI_FacingIdeal( "facingIdeal", NULL, 'd' );
const idEventDef AI_FaceEnemy( "faceEnemy" );
const idEventDef AI_FaceEntity( "faceEntity", "E" );
const idEventDef AI_GetCombatNode( "getCombatNode", NULL, 'e' );
const idEventDef AI_EnemyInCombatCone( "enemyInCombatCone", "Ed", 'd' );
const idEventDef AI_WaitMove( "waitMove" );
const idEventDef AI_GetJumpVelocity( "getJumpVelocity", "vff", 'v' );
const idEventDef AI_EntityInAttackCone( "entityInAttackCone", "E", 'd' );
const idEventDef AI_CanSeeEntity( "canSee", "E", 'd' );
const idEventDef AI_SetTalkTarget( "setTalkTarget", "E" );
const idEventDef AI_GetTalkTarget( "getTalkTarget", NULL, 'e' );
const idEventDef AI_SetTalkState( "setTalkState", "d" );
const idEventDef AI_EnemyRange( "enemyRange", NULL, 'f' );
const idEventDef AI_EnemyRange2D( "enemyRange2D", NULL, 'f' );
const idEventDef AI_GetEnemy( "getEnemy", NULL, 'e' );
const idEventDef AI_GetEnemyPos( "getEnemyPos", NULL, 'v' );
const idEventDef AI_GetEnemyEyePos( "getEnemyEyePos", NULL, 'v' );
const idEventDef AI_PredictEnemyPos( "predictEnemyPos", "f", 'v' );
const idEventDef AI_CanHitEnemy( "canHitEnemy", NULL, 'd' );
const idEventDef AI_CanHitEnemyFromAnim( "canHitEnemyFromAnim", "s", 'd' );
const idEventDef AI_CanHitEnemyFromJoint( "canHitEnemyFromJoint", "s", 'd' );
const idEventDef AI_EnemyPositionValid( "enemyPositionValid", NULL, 'd' );
const idEventDef AI_ChargeAttack( "chargeAttack", "s" );
const idEventDef AI_TestChargeAttack( "testChargeAttack", NULL, 'f' );
const idEventDef AI_TestMoveToPosition( "testMoveToPosition", "v", 'd' );
const idEventDef AI_TestAnimMoveTowardEnemy( "testAnimMoveTowardEnemy", "s", 'd' );
const idEventDef AI_TestAnimMove( "testAnimMove", "s", 'd' );
const idEventDef AI_TestMeleeAttack( "testMeleeAttack", NULL, 'd' );
const idEventDef AI_TestAnimAttack( "testAnimAttack", "s", 'd' );
const idEventDef AI_Shrivel( "shrivel", "f" );
const idEventDef AI_Burn( "burn" );
const idEventDef AI_ClearBurn( "clearBurn" );
const idEventDef AI_PreBurn( "preBurn" );
const idEventDef AI_SetSmokeVisibility( "setSmokeVisibility", "dd" );
const idEventDef AI_NumSmokeEmitters( "numSmokeEmitters", NULL, 'd' );
const idEventDef AI_WaitAction( "waitAction", "s" );
const idEventDef AI_StopThinking( "stopThinking" );
const idEventDef AI_GetTurnDelta( "getTurnDelta", NULL, 'f' );
const idEventDef AI_GetMoveType( "getMoveType", NULL, 'd' );
const idEventDef AI_SetMoveType( "setMoveType", "d" );
const idEventDef AI_SaveMove( "saveMove" );
const idEventDef AI_RestoreMove( "restoreMove" );
const idEventDef AI_AllowMovement( "allowMovement", "f" );
const idEventDef AI_JumpFrame( "<jumpframe>" );
const idEventDef AI_EnableClip( "enableClip" );
const idEventDef AI_DisableClip( "disableClip" );
const idEventDef AI_EnableGravity( "enableGravity" );
const idEventDef AI_DisableGravity( "disableGravity" );
const idEventDef AI_EnableAFPush( "enableAFPush" );
const idEventDef AI_DisableAFPush( "disableAFPush" );
const idEventDef AI_SetFlySpeed( "setFlySpeed", "f" );
const idEventDef AI_SetFlyOffset( "setFlyOffset", "d" );
const idEventDef AI_ClearFlyOffset( "clearFlyOffset" );
const idEventDef AI_GetClosestHiddenTarget( "getClosestHiddenTarget", "s", 'e' );
const idEventDef AI_GetRandomTarget( "getRandomTarget", "s", 'e' );
const idEventDef AI_TravelDistanceToPoint( "travelDistanceToPoint", "v", 'f' );
const idEventDef AI_TravelDistanceToEntity( "travelDistanceToEntity", "e", 'f' );
const idEventDef AI_TravelDistanceBetweenPoints( "travelDistanceBetweenPoints", "vv", 'f' );
const idEventDef AI_TravelDistanceBetweenEntities( "travelDistanceBetweenEntities", "ee", 'f' );
const idEventDef AI_LookAtEntity( "lookAt", "Ef" );
const idEventDef AI_LookAtEnemy( "lookAtEnemy", "f" );
const idEventDef AI_SetJointMod( "setBoneMod", "d" );
const idEventDef AI_ThrowMoveable( "throwMoveable" );
const idEventDef AI_ThrowAF( "throwAF" );
const idEventDef AI_RealKill( "<kill>" );
const idEventDef AI_Kill( "kill" );
const idEventDef AI_WakeOnFlashlight( "wakeOnFlashlight", "d" );
const idEventDef AI_LocateEnemy( "locateEnemy" );
const idEventDef AI_KickObstacles( "kickObstacles", "Ef" );
const idEventDef AI_GetObstacle( "getObstacle", NULL, 'e' );
const idEventDef AI_PushPointIntoAAS( "pushPointIntoAAS", "v", 'v' );
const idEventDef AI_GetTurnRate( "getTurnRate", NULL, 'f' );
const idEventDef AI_SetTurnRate( "setTurnRate", "f" );
const idEventDef AI_AnimTurn( "animTurn", "f" );
const idEventDef AI_AllowHiddenMovement( "allowHiddenMovement", "d" );
const idEventDef AI_TriggerParticles( "triggerParticles", "s" );
const idEventDef AI_FindActorsInBounds( "findActorsInBounds", "vv", 'e' );
const idEventDef AI_CanReachPosition( "canReachPosition", "v", 'd' );
const idEventDef AI_CanReachEntity( "canReachEntity", "E", 'd' );
const idEventDef AI_CanReachEnemy( "canReachEnemy", NULL, 'd' );
const idEventDef AI_GetReachableEntityPosition( "getReachableEntityPosition", "e", 'v' );
#ifdef _D3XP
const idEventDef AI_MoveToPositionDirect( "moveToPositionDirect", "v" );
const idEventDef AI_AvoidObstacles( "avoidObstacles", "d" );
const idEventDef AI_TriggerFX( "triggerFX", "ss" ); 
const idEventDef AI_StartEmitter( "startEmitter", "sss", 'e' ); 
const idEventDef AI_GetEmitter( "getEmitter", "s", 'e' ); 
const idEventDef AI_StopEmitter( "stopEmitter", "s" ); 


#endif

CLASS_DECLARATION( idActor, idAI )
	EVENT( EV_Activate,							idAI::Event_Activate )
	EVENT( EV_Touch,							idAI::Event_Touch )
	EVENT( AI_FindEnemy,						idAI::Event_FindEnemy )
	EVENT( AI_FindEnemyAI,						idAI::Event_FindEnemyAI )
	EVENT( AI_FindEnemyInCombatNodes,			idAI::Event_FindEnemyInCombatNodes )
	EVENT( AI_ClosestReachableEnemyOfEntity,	idAI::Event_ClosestReachableEnemyOfEntity )
	EVENT( AI_HeardSound,						idAI::Event_HeardSound )
	EVENT( AI_SetEnemy,							idAI::Event_SetEnemy )
	EVENT( AI_ClearEnemy,						idAI::Event_ClearEnemy )
	EVENT( AI_MuzzleFlash,						idAI::Event_MuzzleFlash )
	EVENT( AI_CreateMissile,					idAI::Event_CreateMissile )
	EVENT( AI_AttackMissile,					idAI::Event_AttackMissile )
	EVENT( AI_FireMissileAtTarget,				idAI::Event_FireMissileAtTarget )
	EVENT( AI_LaunchMissile,					idAI::Event_LaunchMissile )
#ifdef _D3XP
	EVENT( AI_LaunchProjectile,					idAI::Event_LaunchProjectile )
#endif
	EVENT( AI_AttackMelee,						idAI::Event_AttackMelee )
	EVENT( AI_DirectDamage,						idAI::Event_DirectDamage )
	EVENT( AI_RadiusDamageFromJoint,			idAI::Event_RadiusDamageFromJoint )
	EVENT( AI_BeginAttack,						idAI::Event_BeginAttack )
	EVENT( AI_EndAttack,						idAI::Event_EndAttack )
	EVENT( AI_MeleeAttackToJoint,				idAI::Event_MeleeAttackToJoint )
	EVENT( AI_RandomPath,						idAI::Event_RandomPath )
	EVENT( AI_CanBecomeSolid,					idAI::Event_CanBecomeSolid )
	EVENT( AI_BecomeSolid,						idAI::Event_BecomeSolid )
	EVENT( EV_BecomeNonSolid,					idAI::Event_BecomeNonSolid )
	EVENT( AI_BecomeRagdoll,					idAI::Event_BecomeRagdoll )
	EVENT( AI_StopRagdoll,						idAI::Event_StopRagdoll )
	EVENT( AI_SetHealth,						idAI::Event_SetHealth )
	EVENT( AI_GetHealth,						idAI::Event_GetHealth )
	EVENT( AI_AllowDamage,						idAI::Event_AllowDamage )
	EVENT( AI_IgnoreDamage,						idAI::Event_IgnoreDamage )
	EVENT( AI_GetCurrentYaw,					idAI::Event_GetCurrentYaw )
	EVENT( AI_TurnTo,							idAI::Event_TurnTo )
	EVENT( AI_TurnToPos,						idAI::Event_TurnToPos )
	EVENT( AI_TurnToEntity,						idAI::Event_TurnToEntity )
	EVENT( AI_MoveStatus,						idAI::Event_MoveStatus )
	EVENT( AI_StopMove,							idAI::Event_StopMove )
	EVENT( AI_MoveToCover,						idAI::Event_MoveToCover )
	EVENT( AI_MoveToEnemy,						idAI::Event_MoveToEnemy )
	EVENT( AI_MoveToEnemyHeight,				idAI::Event_MoveToEnemyHeight )
	EVENT( AI_MoveOutOfRange,					idAI::Event_MoveOutOfRange )
	EVENT( AI_MoveToAttackPosition,				idAI::Event_MoveToAttackPosition )
	EVENT( AI_Wander,							idAI::Event_Wander )
	EVENT( AI_MoveToEntity,						idAI::Event_MoveToEntity )
	EVENT( AI_MoveToPosition,					idAI::Event_MoveToPosition )
	EVENT( AI_SlideTo,							idAI::Event_SlideTo )
	EVENT( AI_FacingIdeal,						idAI::Event_FacingIdeal )
	EVENT( AI_FaceEnemy,						idAI::Event_FaceEnemy )
	EVENT( AI_FaceEntity,						idAI::Event_FaceEntity )
	EVENT( AI_WaitAction,						idAI::Event_WaitAction )
	EVENT( AI_GetCombatNode,					idAI::Event_GetCombatNode )
	EVENT( AI_EnemyInCombatCone,				idAI::Event_EnemyInCombatCone )
	EVENT( AI_WaitMove,							idAI::Event_WaitMove )
	EVENT( AI_GetJumpVelocity,					idAI::Event_GetJumpVelocity )
	EVENT( AI_EntityInAttackCone,				idAI::Event_EntityInAttackCone )
	EVENT( AI_CanSeeEntity,						idAI::Event_CanSeeEntity )
	EVENT( AI_SetTalkTarget,					idAI::Event_SetTalkTarget )
	EVENT( AI_GetTalkTarget,					idAI::Event_GetTalkTarget )
	EVENT( AI_SetTalkState,						idAI::Event_SetTalkState )
	EVENT( AI_EnemyRange,						idAI::Event_EnemyRange )
	EVENT( AI_EnemyRange2D,						idAI::Event_EnemyRange2D )
	EVENT( AI_GetEnemy,							idAI::Event_GetEnemy )
	EVENT( AI_GetEnemyPos,						idAI::Event_GetEnemyPos )
	EVENT( AI_GetEnemyEyePos,					idAI::Event_GetEnemyEyePos )
	EVENT( AI_PredictEnemyPos,					idAI::Event_PredictEnemyPos )
	EVENT( AI_CanHitEnemy,						idAI::Event_CanHitEnemy )
	EVENT( AI_CanHitEnemyFromAnim,				idAI::Event_CanHitEnemyFromAnim )
	EVENT( AI_CanHitEnemyFromJoint,				idAI::Event_CanHitEnemyFromJoint )
	EVENT( AI_EnemyPositionValid,				idAI::Event_EnemyPositionValid )
	EVENT( AI_ChargeAttack,						idAI::Event_ChargeAttack )
	EVENT( AI_TestChargeAttack,					idAI::Event_TestChargeAttack )
	EVENT( AI_TestAnimMoveTowardEnemy,			idAI::Event_TestAnimMoveTowardEnemy )
	EVENT( AI_TestAnimMove,						idAI::Event_TestAnimMove )
	EVENT( AI_TestMoveToPosition,				idAI::Event_TestMoveToPosition )
	EVENT( AI_TestMeleeAttack,					idAI::Event_TestMeleeAttack )
	EVENT( AI_TestAnimAttack,					idAI::Event_TestAnimAttack )
	EVENT( AI_Shrivel,							idAI::Event_Shrivel )
	EVENT( AI_Burn,								idAI::Event_Burn )
	EVENT( AI_PreBurn,							idAI::Event_PreBurn )
	EVENT( AI_SetSmokeVisibility,				idAI::Event_SetSmokeVisibility )
	EVENT( AI_NumSmokeEmitters,					idAI::Event_NumSmokeEmitters )
	EVENT( AI_ClearBurn,						idAI::Event_ClearBurn )
	EVENT( AI_StopThinking,						idAI::Event_StopThinking )
	EVENT( AI_GetTurnDelta,						idAI::Event_GetTurnDelta )
	EVENT( AI_GetMoveType,						idAI::Event_GetMoveType )
	EVENT( AI_SetMoveType,						idAI::Event_SetMoveType )
	EVENT( AI_SaveMove,							idAI::Event_SaveMove )
	EVENT( AI_RestoreMove,						idAI::Event_RestoreMove )
	EVENT( AI_AllowMovement,					idAI::Event_AllowMovement )	
	EVENT( AI_JumpFrame,						idAI::Event_JumpFrame )
	EVENT( AI_EnableClip,						idAI::Event_EnableClip )
	EVENT( AI_DisableClip,						idAI::Event_DisableClip )
	EVENT( AI_EnableGravity,					idAI::Event_EnableGravity )
	EVENT( AI_DisableGravity,					idAI::Event_DisableGravity )
	EVENT( AI_EnableAFPush,						idAI::Event_EnableAFPush )
	EVENT( AI_DisableAFPush,					idAI::Event_DisableAFPush )
	EVENT( AI_SetFlySpeed,						idAI::Event_SetFlySpeed )
	EVENT( AI_SetFlyOffset,						idAI::Event_SetFlyOffset )
	EVENT( AI_ClearFlyOffset,					idAI::Event_ClearFlyOffset )
	EVENT( AI_GetClosestHiddenTarget,			idAI::Event_GetClosestHiddenTarget )
	EVENT( AI_GetRandomTarget,					idAI::Event_GetRandomTarget )
	EVENT( AI_TravelDistanceToPoint,			idAI::Event_TravelDistanceToPoint )
	EVENT( AI_TravelDistanceToEntity,			idAI::Event_TravelDistanceToEntity )
	EVENT( AI_TravelDistanceBetweenPoints,		idAI::Event_TravelDistanceBetweenPoints )
	EVENT( AI_TravelDistanceBetweenEntities,	idAI::Event_TravelDistanceBetweenEntities )
	EVENT( AI_LookAtEntity,						idAI::Event_LookAtEntity )
	EVENT( AI_LookAtEnemy,						idAI::Event_LookAtEnemy )
	EVENT( AI_SetJointMod,						idAI::Event_SetJointMod )
	EVENT( AI_ThrowMoveable,					idAI::Event_ThrowMoveable )
	EVENT( AI_ThrowAF,							idAI::Event_ThrowAF )
	EVENT( EV_GetAngles,						idAI::Event_GetAngles )
	EVENT( EV_SetAngles,						idAI::Event_SetAngles )
	EVENT( AI_RealKill,							idAI::Event_RealKill )
	EVENT( AI_Kill,								idAI::Event_Kill )
	EVENT( AI_WakeOnFlashlight,					idAI::Event_WakeOnFlashlight )
	EVENT( AI_LocateEnemy,						idAI::Event_LocateEnemy )
	EVENT( AI_KickObstacles,					idAI::Event_KickObstacles )
	EVENT( AI_GetObstacle,						idAI::Event_GetObstacle )
	EVENT( AI_PushPointIntoAAS,					idAI::Event_PushPointIntoAAS )
	EVENT( AI_GetTurnRate,						idAI::Event_GetTurnRate )
	EVENT( AI_SetTurnRate,						idAI::Event_SetTurnRate )
	EVENT( AI_AnimTurn,							idAI::Event_AnimTurn )
	EVENT( AI_AllowHiddenMovement,				idAI::Event_AllowHiddenMovement )
	EVENT( AI_TriggerParticles,					idAI::Event_TriggerParticles )
	EVENT( AI_FindActorsInBounds,				idAI::Event_FindActorsInBounds )
	EVENT( AI_CanReachPosition,					idAI::Event_CanReachPosition )
	EVENT( AI_CanReachEntity,					idAI::Event_CanReachEntity )
	EVENT( AI_CanReachEnemy,					idAI::Event_CanReachEnemy )
	EVENT( AI_GetReachableEntityPosition,		idAI::Event_GetReachableEntityPosition )
#ifdef _D3XP
	EVENT( AI_MoveToPositionDirect,				idAI::Event_MoveToPositionDirect )
	EVENT( AI_AvoidObstacles, 					idAI::Event_AvoidObstacles )
	EVENT( AI_TriggerFX,						idAI::Event_TriggerFX )
	EVENT( AI_StartEmitter,						idAI::Event_StartEmitter )
	EVENT( AI_GetEmitter,						idAI::Event_GetEmitter )
	EVENT( AI_StopEmitter,						idAI::Event_StopEmitter )
#endif
END_CLASS

/*
=====================
idAI::Event_Activate
=====================
*/
void idAI::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idAI::Event_Activate( idEntity *activator )\r\n");
}


/*
=====================
idAI::Event_Touch
=====================
*/
void idAI::Event_Touch( idEntity *other, trace_t *trace ) {
    Sys_Printf("void idAI::Event_Touch( idEntity *other, trace_t *trace )\r\n");
}


/*
=====================
idAI::Event_FindEnemy
=====================
*/
void idAI::Event_FindEnemy( int useFOV ) {
    Sys_Printf("void idAI::Event_FindEnemy( int useFOV )\r\n");
}


/*
=====================
idAI::Event_FindEnemyAI
=====================
*/
void idAI::Event_FindEnemyAI( int useFOV ) {
    Sys_Printf("void idAI::Event_FindEnemyAI( int useFOV )\r\n");
}


/*
=====================
idAI::Event_FindEnemyInCombatNodes
=====================
*/
void idAI::Event_FindEnemyInCombatNodes( void ) {
    Sys_Printf("void idAI::Event_FindEnemyInCombatNodes( void )\r\n");
}


/*
=====================
idAI::Event_ClosestReachableEnemyOfEntity
=====================
*/
void idAI::Event_ClosestReachableEnemyOfEntity( idEntity *team_mate ) {
    Sys_Printf("void idAI::Event_ClosestReachableEnemyOfEntity( idEntity *team_mate )\r\n");
}


/*
=====================
idAI::Event_HeardSound
=====================
*/
void idAI::Event_HeardSound( int ignore_team ) {
    Sys_Printf("void idAI::Event_HeardSound( int ignore_team )\r\n");
}


/*
=====================
idAI::Event_SetEnemy
=====================
*/
void idAI::Event_SetEnemy( idEntity *ent ) {
    Sys_Printf("void idAI::Event_SetEnemy( idEntity *ent )\r\n");
}


/*
=====================
idAI::Event_ClearEnemy
=====================
*/
void idAI::Event_ClearEnemy( void ) {
    Sys_Printf("void idAI::Event_ClearEnemy( void )\r\n");
}


/*
=====================
idAI::Event_MuzzleFlash
=====================
*/
void idAI::Event_MuzzleFlash( const char *jointname ) {
    Sys_Printf("void idAI::Event_MuzzleFlash( const char *jointname )\r\n");
}


/*
=====================
idAI::Event_CreateMissile
=====================
*/
void idAI::Event_CreateMissile( const char *jointname ) {
    Sys_Printf("void idAI::Event_CreateMissile( const char *jointname )\r\n");
}


/*
=====================
idAI::Event_AttackMissile
=====================
*/
void idAI::Event_AttackMissile( const char *jointname ) {
    Sys_Printf("void idAI::Event_AttackMissile( const char *jointname )\r\n");
}


/*
=====================
idAI::Event_FireMissileAtTarget
=====================
*/
void idAI::Event_FireMissileAtTarget( const char *jointname, const char *targetname ) {
    Sys_Printf("void idAI::Event_FireMissileAtTarget( const char *jointname, const char *targetname )\r\n");
}


/*
=====================
idAI::Event_LaunchMissile
=====================
*/
void idAI::Event_LaunchMissile( const idVec3 &org, const idAngles &ang ) {
    Sys_Printf("void idAI::Event_LaunchMissile( const idVec3 &org, const idAngles &ang )\r\n");
}



#ifdef _D3XP
/*
=====================
idAI::Event_LaunchProjectile
=====================
*/
void idAI::Event_LaunchProjectile( const char *entityDefName ) {
    Sys_Printf("void idAI::Event_LaunchProjectile( const char *entityDefName )\r\n");
}


#endif


/*
=====================
idAI::Event_AttackMelee
=====================
*/
void idAI::Event_AttackMelee( const char *meleeDefName ) {
    Sys_Printf("void idAI::Event_AttackMelee( const char *meleeDefName )\r\n");
}


/*
=====================
idAI::Event_DirectDamage
=====================
*/
void idAI::Event_DirectDamage( idEntity *damageTarget, const char *damageDefName ) {
    Sys_Printf("void idAI::Event_DirectDamage( idEntity *damageTarget, const char *damageDefName )\r\n");
}


/*
=====================
idAI::Event_RadiusDamageFromJoint
=====================
*/
void idAI::Event_RadiusDamageFromJoint( const char *jointname, const char *damageDefName ) {
    Sys_Printf("void idAI::Event_RadiusDamageFromJoint( const char *jointname, const char *damageDefName )\r\n");
}


/*
=====================
idAI::Event_RandomPath
=====================
*/
void idAI::Event_RandomPath( void ) {
    Sys_Printf("void idAI::Event_RandomPath( void )\r\n");
}


/*
=====================
idAI::Event_BeginAttack
=====================
*/
void idAI::Event_BeginAttack( const char *name ) {
    Sys_Printf("void idAI::Event_BeginAttack( const char *name )\r\n");
}


/*
=====================
idAI::Event_EndAttack
=====================
*/
void idAI::Event_EndAttack( void ) {
    Sys_Printf("void idAI::Event_EndAttack( void )\r\n");
}


/*
=====================
idAI::Event_MeleeAttackToJoint
=====================
*/
void idAI::Event_MeleeAttackToJoint( const char *jointname, const char *meleeDefName ) {
    Sys_Printf("void idAI::Event_MeleeAttackToJoint( const char *jointname, const char *meleeDefName )\r\n");
}


/*
=====================
idAI::Event_CanBecomeSolid
=====================
*/
void idAI::Event_CanBecomeSolid( void ) {
    Sys_Printf("void idAI::Event_CanBecomeSolid( void )\r\n");
}


/*
=====================
idAI::Event_BecomeSolid
=====================
*/
void idAI::Event_BecomeSolid( void ) {
    Sys_Printf("void idAI::Event_BecomeSolid( void )\r\n");
}


/*
=====================
idAI::Event_BecomeNonSolid
=====================
*/
void idAI::Event_BecomeNonSolid( void ) {
    Sys_Printf("void idAI::Event_BecomeNonSolid( void )\r\n");
}


/*
=====================
idAI::Event_BecomeRagdoll
=====================
*/
void idAI::Event_BecomeRagdoll( void ) {
    Sys_Printf("void idAI::Event_BecomeRagdoll( void )\r\n");
}


/*
=====================
idAI::Event_StopRagdoll
=====================
*/
void idAI::Event_StopRagdoll( void ) {
    Sys_Printf("void idAI::Event_StopRagdoll( void )\r\n");
}


/*
=====================
idAI::Event_SetHealth
=====================
*/
void idAI::Event_SetHealth( float newHealth ) {
    Sys_Printf("void idAI::Event_SetHealth( float newHealth )\r\n");
}


/*
=====================
idAI::Event_GetHealth
=====================
*/
void idAI::Event_GetHealth( void ) {
    Sys_Printf("void idAI::Event_GetHealth( void )\r\n");
}


/*
=====================
idAI::Event_AllowDamage
=====================
*/
void idAI::Event_AllowDamage( void ) {
    Sys_Printf("void idAI::Event_AllowDamage( void )\r\n");
}


/*
=====================
idAI::Event_IgnoreDamage
=====================
*/
void idAI::Event_IgnoreDamage( void ) {
    Sys_Printf("void idAI::Event_IgnoreDamage( void )\r\n");
}


/*
=====================
idAI::Event_GetCurrentYaw
=====================
*/
void idAI::Event_GetCurrentYaw( void ) {
    Sys_Printf("void idAI::Event_GetCurrentYaw( void )\r\n");
}


/*
=====================
idAI::Event_TurnTo
=====================
*/
void idAI::Event_TurnTo( float angle ) {
    Sys_Printf("void idAI::Event_TurnTo( float angle )\r\n");
}


/*
=====================
idAI::Event_TurnToPos
=====================
*/
void idAI::Event_TurnToPos( const idVec3 &pos ) {
    Sys_Printf("void idAI::Event_TurnToPos( const idVec3 &pos )\r\n");
}


/*
=====================
idAI::Event_TurnToEntity
=====================
*/
void idAI::Event_TurnToEntity( idEntity *ent ) {
    Sys_Printf("void idAI::Event_TurnToEntity( idEntity *ent )\r\n");
}


/*
=====================
idAI::Event_MoveStatus
=====================
*/
void idAI::Event_MoveStatus( void ) {
    Sys_Printf("void idAI::Event_MoveStatus( void )\r\n");
}


/*
=====================
idAI::Event_StopMove
=====================
*/
void idAI::Event_StopMove( void ) {
    Sys_Printf("void idAI::Event_StopMove( void )\r\n");
}


/*
=====================
idAI::Event_MoveToCover
=====================
*/
void idAI::Event_MoveToCover( void ) {
    Sys_Printf("void idAI::Event_MoveToCover( void )\r\n");
}


/*
=====================
idAI::Event_MoveToEnemy
=====================
*/
void idAI::Event_MoveToEnemy( void ) {
    Sys_Printf("void idAI::Event_MoveToEnemy( void )\r\n");
}


/*
=====================
idAI::Event_MoveToEnemyHeight
=====================
*/
void idAI::Event_MoveToEnemyHeight( void ) {
    Sys_Printf("void idAI::Event_MoveToEnemyHeight( void )\r\n");
}


/*
=====================
idAI::Event_MoveOutOfRange
=====================
*/
void idAI::Event_MoveOutOfRange( idEntity *entity, float range ) {
    Sys_Printf("void idAI::Event_MoveOutOfRange( idEntity *entity, float range )\r\n");
}


/*
=====================
idAI::Event_MoveToAttackPosition
=====================
*/
void idAI::Event_MoveToAttackPosition( idEntity *entity, const char *attack_anim ) {
    Sys_Printf("void idAI::Event_MoveToAttackPosition( idEntity *entity, const char *attack_anim )\r\n");
}


/*
=====================
idAI::Event_MoveToEntity
=====================
*/
void idAI::Event_MoveToEntity( idEntity *ent ) {
    Sys_Printf("void idAI::Event_MoveToEntity( idEntity *ent )\r\n");
}


/*
=====================
idAI::Event_MoveToPosition
=====================
*/
void idAI::Event_MoveToPosition( const idVec3 &pos ) {
    Sys_Printf("void idAI::Event_MoveToPosition( const idVec3 &pos )\r\n");
}


/*
=====================
idAI::Event_SlideTo
=====================
*/
void idAI::Event_SlideTo( const idVec3 &pos, float time ) {
    Sys_Printf("void idAI::Event_SlideTo( const idVec3 &pos, float time )\r\n");
}

/*
=====================
idAI::Event_Wander
=====================
*/
void idAI::Event_Wander( void ) {
    Sys_Printf("void idAI::Event_Wander( void )\r\n");
}


/*
=====================
idAI::Event_FacingIdeal
=====================
*/
void idAI::Event_FacingIdeal( void ) {
    Sys_Printf("void idAI::Event_FacingIdeal( void )\r\n");
}


/*
=====================
idAI::Event_FaceEnemy
=====================
*/
void idAI::Event_FaceEnemy( void ) {
    Sys_Printf("void idAI::Event_FaceEnemy( void )\r\n");
}


/*
=====================
idAI::Event_FaceEntity
=====================
*/
void idAI::Event_FaceEntity( idEntity *ent ) {
    Sys_Printf("void idAI::Event_FaceEntity( idEntity *ent )\r\n");
}


/*
=====================
idAI::Event_WaitAction
=====================
*/
void idAI::Event_WaitAction( const char *waitForState ) {
    Sys_Printf("void idAI::Event_WaitAction( const char *waitForState )\r\n");
}


/*
=====================
idAI::Event_GetCombatNode
=====================
*/
void idAI::Event_GetCombatNode( void ) {
    Sys_Printf("void idAI::Event_GetCombatNode( void )\r\n");
}


/*
=====================
idAI::Event_EnemyInCombatCone
=====================
*/
void idAI::Event_EnemyInCombatCone( idEntity *ent, int use_current_enemy_location ) {
    Sys_Printf("void idAI::Event_EnemyInCombatCone( idEntity *ent, int use_current_enemy_location )\r\n");
}


/*
=====================
idAI::Event_WaitMove
=====================
*/
void idAI::Event_WaitMove( void ) {
    Sys_Printf("void idAI::Event_WaitMove( void )\r\n");
}


/*
=====================
idAI::Event_GetJumpVelocity
=====================
*/
void idAI::Event_GetJumpVelocity( const idVec3 &pos, float speed, float max_height ) {
    Sys_Printf("void idAI::Event_GetJumpVelocity( const idVec3 &pos, float speed, float max_height )\r\n");
}


/*
=====================
idAI::Event_EntityInAttackCone
=====================
*/
void idAI::Event_EntityInAttackCone( idEntity *ent ) {
    Sys_Printf("void idAI::Event_EntityInAttackCone( idEntity *ent )\r\n");
}


/*
=====================
idAI::Event_CanSeeEntity
=====================
*/
void idAI::Event_CanSeeEntity( idEntity *ent ) {
    Sys_Printf("void idAI::Event_CanSeeEntity( idEntity *ent )\r\n");
}


/*
=====================
idAI::Event_SetTalkTarget
=====================
*/
void idAI::Event_SetTalkTarget( idEntity *target ) {
    Sys_Printf("void idAI::Event_SetTalkTarget( idEntity *target )\r\n");
}


/*
=====================
idAI::Event_GetTalkTarget
=====================
*/
void idAI::Event_GetTalkTarget( void ) {
    Sys_Printf("void idAI::Event_GetTalkTarget( void )\r\n");
}


/*
================
idAI::Event_SetTalkState
================
*/
void idAI::Event_SetTalkState( int state ) {
    Sys_Printf("void idAI::Event_SetTalkState( int state )\r\n");
}


/*
=====================
idAI::Event_EnemyRange
=====================
*/
void idAI::Event_EnemyRange( void ) {
    Sys_Printf("void idAI::Event_EnemyRange( void )\r\n");
}


/*
=====================
idAI::Event_EnemyRange2D
=====================
*/
void idAI::Event_EnemyRange2D( void ) {
    Sys_Printf("void idAI::Event_EnemyRange2D( void )\r\n");
}


/*
=====================
idAI::Event_GetEnemy
=====================
*/
void idAI::Event_GetEnemy( void ) {
    Sys_Printf("void idAI::Event_GetEnemy( void )\r\n");
}


/*
=====================
idAI::Event_GetEnemyPos
=====================
*/
void idAI::Event_GetEnemyPos( void ) {
    Sys_Printf("void idAI::Event_GetEnemyPos( void )\r\n");
}


/*
=====================
idAI::Event_GetEnemyEyePos
=====================
*/
void idAI::Event_GetEnemyEyePos( void ) {
    Sys_Printf("void idAI::Event_GetEnemyEyePos( void )\r\n");
}


/*
=====================
idAI::Event_PredictEnemyPos
=====================
*/
void idAI::Event_PredictEnemyPos( float time ) {
    Sys_Printf("void idAI::Event_PredictEnemyPos( float time )\r\n");
}


/*
=====================
idAI::Event_CanHitEnemy
=====================
*/
void idAI::Event_CanHitEnemy( void ) {
    Sys_Printf("void idAI::Event_CanHitEnemy( void )\r\n");
}


/*
=====================
idAI::Event_CanHitEnemyFromAnim
=====================
*/
void idAI::Event_CanHitEnemyFromAnim( const char *animname ) {
    Sys_Printf("void idAI::Event_CanHitEnemyFromAnim( const char *animname )\r\n");
}


/*
=====================
idAI::Event_CanHitEnemyFromJoint
=====================
*/
void idAI::Event_CanHitEnemyFromJoint( const char *jointname ) {
    Sys_Printf("void idAI::Event_CanHitEnemyFromJoint( const char *jointname )\r\n");
}


/*
=====================
idAI::Event_EnemyPositionValid
=====================
*/
void idAI::Event_EnemyPositionValid( void ) {
    Sys_Printf("void idAI::Event_EnemyPositionValid( void )\r\n");
}


/*
=====================
idAI::Event_ChargeAttack
=====================
*/
void idAI::Event_ChargeAttack( const char *damageDef ) {
    Sys_Printf("void idAI::Event_ChargeAttack( const char *damageDef )\r\n");
}


/*
=====================
idAI::Event_TestChargeAttack
=====================
*/
void idAI::Event_TestChargeAttack( void ) {
    Sys_Printf("void idAI::Event_TestChargeAttack( void )\r\n");
}


/*
=====================
idAI::Event_TestAnimMoveTowardEnemy
=====================
*/
void idAI::Event_TestAnimMoveTowardEnemy( const char *animname ) {
    Sys_Printf("void idAI::Event_TestAnimMoveTowardEnemy( const char *animname )\r\n");
}


/*
=====================
idAI::Event_TestAnimMove
=====================
*/
void idAI::Event_TestAnimMove( const char *animname ) {
    Sys_Printf("void idAI::Event_TestAnimMove( const char *animname )\r\n");
}


/*
=====================
idAI::Event_TestMoveToPosition
=====================
*/
void idAI::Event_TestMoveToPosition( const idVec3 &position ) {
    Sys_Printf("void idAI::Event_TestMoveToPosition( const idVec3 &position )\r\n");
}


/*
=====================
idAI::Event_TestMeleeAttack
=====================
*/
void idAI::Event_TestMeleeAttack( void ) {
    Sys_Printf("void idAI::Event_TestMeleeAttack( void )\r\n");
}


/*
=====================
idAI::Event_TestAnimAttack
=====================
*/
void idAI::Event_TestAnimAttack( const char *animname ) {
    Sys_Printf("void idAI::Event_TestAnimAttack( const char *animname )\r\n");
}


/*
=====================
idAI::Event_Shrivel
=====================
*/
void idAI::Event_Shrivel( float shrivel_time ) {
    Sys_Printf("void idAI::Event_Shrivel( float shrivel_time )\r\n");
}


/*
=====================
idAI::Event_PreBurn
=====================
*/
void idAI::Event_PreBurn( void ) {
    Sys_Printf("void idAI::Event_PreBurn( void )\r\n");
}


/*
=====================
idAI::Event_Burn
=====================
*/
void idAI::Event_Burn( void ) {
    Sys_Printf("void idAI::Event_Burn( void )\r\n");
}


/*
=====================
idAI::Event_ClearBurn
=====================
*/
void idAI::Event_ClearBurn( void ) {
    Sys_Printf("void idAI::Event_ClearBurn( void )\r\n");
}


/*
=====================
idAI::Event_SetSmokeVisibility
=====================
*/
void idAI::Event_SetSmokeVisibility( int num, int on ) {
    Sys_Printf("void idAI::Event_SetSmokeVisibility( int num, int on )\r\n");
}


/*
=====================
idAI::Event_NumSmokeEmitters
=====================
*/
void idAI::Event_NumSmokeEmitters( void ) {
    Sys_Printf("void idAI::Event_NumSmokeEmitters( void )\r\n");
}


/*
=====================
idAI::Event_StopThinking
=====================
*/
void idAI::Event_StopThinking( void ) {
    Sys_Printf("void idAI::Event_StopThinking( void )\r\n");
}


/*
=====================
idAI::Event_GetTurnDelta
=====================
*/
void idAI::Event_GetTurnDelta( void ) {
    Sys_Printf("void idAI::Event_GetTurnDelta( void )\r\n");
}


/*
=====================
idAI::Event_GetMoveType
=====================
*/
void idAI::Event_GetMoveType( void ) {
    Sys_Printf("void idAI::Event_GetMoveType( void )\r\n");
}


/*
=====================
idAI::Event_SetMoveTypes
=====================
*/
void idAI::Event_SetMoveType( int moveType ) {
    Sys_Printf("void idAI::Event_SetMoveType( int moveType )\r\n");
}


/*
=====================
idAI::Event_SaveMove
=====================
*/
void idAI::Event_SaveMove( void ) {
    Sys_Printf("void idAI::Event_SaveMove( void )\r\n");
}


/*
=====================
idAI::Event_RestoreMove
=====================
*/
void idAI::Event_RestoreMove( void ) {
    Sys_Printf("void idAI::Event_RestoreMove( void )\r\n");
}


/*
=====================
idAI::Event_AllowMovement
=====================
*/
void idAI::Event_AllowMovement( float flag ) {
    Sys_Printf("void idAI::Event_AllowMovement( float flag )\r\n");
}


/*
=====================
idAI::Event_JumpFrame
=====================
*/
void idAI::Event_JumpFrame( void ) {
    Sys_Printf("void idAI::Event_JumpFrame( void )\r\n");
}


/*
=====================
idAI::Event_EnableClip
=====================
*/
void idAI::Event_EnableClip( void ) {
    Sys_Printf("void idAI::Event_EnableClip( void )\r\n");
}


/*
=====================
idAI::Event_DisableClip
=====================
*/
void idAI::Event_DisableClip( void ) {
    Sys_Printf("void idAI::Event_DisableClip( void )\r\n");
}


/*
=====================
idAI::Event_EnableGravity
=====================
*/
void idAI::Event_EnableGravity( void ) {
    Sys_Printf("void idAI::Event_EnableGravity( void )\r\n");
}


/*
=====================
idAI::Event_DisableGravity
=====================
*/
void idAI::Event_DisableGravity( void ) {
    Sys_Printf("void idAI::Event_DisableGravity( void )\r\n");
}


/*
=====================
idAI::Event_EnableAFPush
=====================
*/
void idAI::Event_EnableAFPush( void ) {
    Sys_Printf("void idAI::Event_EnableAFPush( void )\r\n");
}


/*
=====================
idAI::Event_DisableAFPush
=====================
*/
void idAI::Event_DisableAFPush( void ) {
    Sys_Printf("void idAI::Event_DisableAFPush( void )\r\n");
}


/*
=====================
idAI::Event_SetFlySpeed
=====================
*/
void idAI::Event_SetFlySpeed( float speed ) {
    Sys_Printf("void idAI::Event_SetFlySpeed( float speed )\r\n");
}


/*
================
idAI::Event_SetFlyOffset
================
*/
void idAI::Event_SetFlyOffset( int offset ) {
    Sys_Printf("void idAI::Event_SetFlyOffset( int offset )\r\n");
}


/*
================
idAI::Event_ClearFlyOffset
================
*/
void idAI::Event_ClearFlyOffset( void ) {
    Sys_Printf("void idAI::Event_ClearFlyOffset( void )\r\n");
}


/*
=====================
idAI::Event_GetClosestHiddenTarget
=====================
*/
void idAI::Event_GetClosestHiddenTarget( const char *type ) {
    Sys_Printf("void idAI::Event_GetClosestHiddenTarget( const char *type )\r\n");
}


/*
=====================
idAI::Event_GetRandomTarget
=====================
*/
void idAI::Event_GetRandomTarget( const char *type ) {
    Sys_Printf("void idAI::Event_GetRandomTarget( const char *type )\r\n");
}


/*
================
idAI::Event_TravelDistanceToPoint
================
*/
void idAI::Event_TravelDistanceToPoint( const idVec3 &pos ) {
    Sys_Printf("void idAI::Event_TravelDistanceToPoint( const idVec3 &pos )\r\n");
}


/*
================
idAI::Event_TravelDistanceToEntity
================
*/
void idAI::Event_TravelDistanceToEntity( idEntity *ent ) {
    Sys_Printf("void idAI::Event_TravelDistanceToEntity( idEntity *ent )\r\n");
}


/*
================
idAI::Event_TravelDistanceBetweenPoints
================
*/
void idAI::Event_TravelDistanceBetweenPoints( const idVec3 &source, const idVec3 &dest ) {
    Sys_Printf("void idAI::Event_TravelDistanceBetweenPoints( const idVec3 &source, const idVec3 &dest )\r\n");
}


/*
================
idAI::Event_TravelDistanceBetweenEntities
================
*/
void idAI::Event_TravelDistanceBetweenEntities( idEntity *source, idEntity *dest ) {
    Sys_Printf("void idAI::Event_TravelDistanceBetweenEntities( idEntity *source, idEntity *dest )\r\n");
}


/*
=====================
idAI::Event_LookAtEntity
=====================
*/
void idAI::Event_LookAtEntity( idEntity *ent, float duration ) {
    Sys_Printf("void idAI::Event_LookAtEntity( idEntity *ent, float duration )\r\n");
}


/*
=====================
idAI::Event_LookAtEnemy
=====================
*/
void idAI::Event_LookAtEnemy( float duration ) {
    Sys_Printf("void idAI::Event_LookAtEnemy( float duration )\r\n");
}


/*
===============
idAI::Event_SetJointMod
===============
*/
void idAI::Event_SetJointMod( int allow ) {
    Sys_Printf("void idAI::Event_SetJointMod( int allow )\r\n");
}


/*
================
idAI::Event_ThrowMoveable
================
*/
void idAI::Event_ThrowMoveable( void ) {
    Sys_Printf("void idAI::Event_ThrowMoveable( void )\r\n");
}


/*
================
idAI::Event_ThrowAF
================
*/
void idAI::Event_ThrowAF( void ) {
    Sys_Printf("void idAI::Event_ThrowAF( void )\r\n");
}


/*
================
idAI::Event_SetAngles
================
*/
void idAI::Event_SetAngles( idAngles const &ang ) {
    Sys_Printf("void idAI::Event_SetAngles( idAngles const &ang )\r\n");
}


/*
================
idAI::Event_GetAngles
================
*/
void idAI::Event_GetAngles( void ) {
    Sys_Printf("void idAI::Event_GetAngles( void )\r\n");
}


/*
================
idAI::Event_RealKill
================
*/
void idAI::Event_RealKill( void ) {
    Sys_Printf("void idAI::Event_RealKill( void )\r\n");
}


/*
================
idAI::Event_Kill
================
*/
void idAI::Event_Kill( void ) {
    Sys_Printf("void idAI::Event_Kill( void )\r\n");
}


/*
================
idAI::Event_WakeOnFlashlight
================
*/
void idAI::Event_WakeOnFlashlight( int enable ) {
    Sys_Printf("void idAI::Event_WakeOnFlashlight( int enable )\r\n");
}


/*
================
idAI::Event_LocateEnemy
================
*/
void idAI::Event_LocateEnemy( void ) {
    Sys_Printf("void idAI::Event_LocateEnemy( void )\r\n");
}


/*
================
idAI::Event_KickObstacles
================
*/
void idAI::Event_KickObstacles( idEntity *kickEnt, float force ) {
    Sys_Printf("void idAI::Event_KickObstacles( idEntity *kickEnt, float force )\r\n");
}


/*
================
idAI::Event_GetObstacle
================
*/
void idAI::Event_GetObstacle( void ) {
    Sys_Printf("void idAI::Event_GetObstacle( void )\r\n");
}


/*
================
idAI::Event_PushPointIntoAAS
================
*/
void idAI::Event_PushPointIntoAAS( const idVec3 &pos ) {
    Sys_Printf("void idAI::Event_PushPointIntoAAS( const idVec3 &pos )\r\n");
}



/*
================
idAI::Event_GetTurnRate
================
*/
void idAI::Event_GetTurnRate( void ) {
    Sys_Printf("void idAI::Event_GetTurnRate( void )\r\n");
}


/*
================
idAI::Event_SetTurnRate
================
*/
void idAI::Event_SetTurnRate( float rate ) {
    Sys_Printf("void idAI::Event_SetTurnRate( float rate )\r\n");
}


/*
================
idAI::Event_AnimTurn
================
*/
void idAI::Event_AnimTurn( float angles ) {
    Sys_Printf("void idAI::Event_AnimTurn( float angles )\r\n");
}


/*
================
idAI::Event_AllowHiddenMovement
================
*/
void idAI::Event_AllowHiddenMovement( int enable ) {
    Sys_Printf("void idAI::Event_AllowHiddenMovement( int enable )\r\n");
}


/*
================
idAI::Event_TriggerParticles
================
*/
void idAI::Event_TriggerParticles( const char *jointName ) {
    Sys_Printf("void idAI::Event_TriggerParticles( const char *jointName )\r\n");
}


/*
=====================
idAI::Event_FindActorsInBounds
=====================
*/
void idAI::Event_FindActorsInBounds( const idVec3 &mins, const idVec3 &maxs ) {
    Sys_Printf("void idAI::Event_FindActorsInBounds( const idVec3 &mins, const idVec3 &maxs )\r\n");
}


/*
================
idAI::Event_CanReachPosition
================
*/
void idAI::Event_CanReachPosition( const idVec3 &pos ) {
    Sys_Printf("void idAI::Event_CanReachPosition( const idVec3 &pos )\r\n");
}


/*
================
idAI::Event_CanReachEntity
================
*/
void idAI::Event_CanReachEntity( idEntity *ent ) {
    Sys_Printf("void idAI::Event_CanReachEntity( idEntity *ent )\r\n");
}


/*
================
idAI::Event_CanReachEnemy
================
*/
void idAI::Event_CanReachEnemy( void ) {
    Sys_Printf("void idAI::Event_CanReachEnemy( void )\r\n");
}


/*
================
idAI::Event_GetReachableEntityPosition
================
*/
void idAI::Event_GetReachableEntityPosition( idEntity *ent ) {
    Sys_Printf("void idAI::Event_GetReachableEntityPosition( idEntity *ent )\r\n");
}


#ifdef _D3XP
/*
================
idAI::Event_MoveToPositionDirect
================
*/
void idAI::Event_MoveToPositionDirect( const idVec3 &pos ) {
    Sys_Printf("void idAI::Event_MoveToPositionDirect( const idVec3 &pos )\r\n");
}


/*
================
idAI::Event_AvoidObstacles
================
*/
void idAI::Event_AvoidObstacles( int ignore) {
    Sys_Printf("void idAI::Event_AvoidObstacles( int ignore)\r\n");
}


/*
================
idAI::Event_TriggerFX
================
*/
void idAI::Event_TriggerFX( const char* joint, const char* fx ) {
    Sys_Printf("void idAI::Event_TriggerFX( const char* joint, const char* fx )\r\n");
}


void idAI::Event_StartEmitter( const char* name, const char* joint, const char* particle ) {
    Sys_Printf("void idAI::Event_StartEmitter( const char* name, const char* joint, const char* particle )\r\n");
}


void idAI::Event_GetEmitter( const char* name ) {
    Sys_Printf("void idAI::Event_GetEmitter( const char* name )\r\n");
}


void idAI::Event_StopEmitter( const char* name ) {
    Sys_Printf("void idAI::Event_StopEmitter( const char* name )\r\n");
}


#endif

