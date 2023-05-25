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

	idEntity

===============================================================================
*/

// overridable events
const idEventDef EV_PostSpawn( "<postspawn>", NULL );
const idEventDef EV_FindTargets( "<findTargets>", NULL );
const idEventDef EV_Touch( "<touch>", "et" );
const idEventDef EV_GetName( "getName", NULL, 's' );
const idEventDef EV_SetName( "setName", "s" );
const idEventDef EV_Activate( "activate", "e" );
const idEventDef EV_ActivateTargets( "activateTargets", "e" );
const idEventDef EV_NumTargets( "numTargets", NULL, 'f' );
const idEventDef EV_GetTarget( "getTarget", "f", 'e' );
const idEventDef EV_RandomTarget( "randomTarget", "s", 'e' );
const idEventDef EV_Bind( "bind", "e" );
const idEventDef EV_BindPosition( "bindPosition", "e" );
const idEventDef EV_BindToJoint( "bindToJoint", "esf" );
const idEventDef EV_Unbind( "unbind", NULL );
const idEventDef EV_RemoveBinds( "removeBinds" );
const idEventDef EV_SpawnBind( "<spawnbind>", NULL );
const idEventDef EV_SetOwner( "setOwner", "e" );
const idEventDef EV_SetModel( "setModel", "s" );
const idEventDef EV_SetSkin( "setSkin", "s" );
const idEventDef EV_GetWorldOrigin( "getWorldOrigin", NULL, 'v' );
const idEventDef EV_SetWorldOrigin( "setWorldOrigin", "v" );
const idEventDef EV_GetOrigin( "getOrigin", NULL, 'v' );
const idEventDef EV_SetOrigin( "setOrigin", "v" );
const idEventDef EV_GetAngles( "getAngles", NULL, 'v' );
const idEventDef EV_SetAngles( "setAngles", "v" );
const idEventDef EV_GetLinearVelocity( "getLinearVelocity", NULL, 'v' );
const idEventDef EV_SetLinearVelocity( "setLinearVelocity", "v" );
const idEventDef EV_GetAngularVelocity( "getAngularVelocity", NULL, 'v' );
const idEventDef EV_SetAngularVelocity( "setAngularVelocity", "v" );
const idEventDef EV_GetSize( "getSize", NULL, 'v' );
const idEventDef EV_SetSize( "setSize", "vv" );
const idEventDef EV_GetMins( "getMins", NULL, 'v' );
const idEventDef EV_GetMaxs( "getMaxs", NULL, 'v' );
const idEventDef EV_IsHidden( "isHidden", NULL, 'd' );
const idEventDef EV_Hide( "hide", NULL );
const idEventDef EV_Show( "show", NULL );
const idEventDef EV_Touches( "touches", "E", 'd' );
const idEventDef EV_ClearSignal( "clearSignal", "d" );
const idEventDef EV_GetShaderParm( "getShaderParm", "d", 'f' );
const idEventDef EV_SetShaderParm( "setShaderParm", "df" );
const idEventDef EV_SetShaderParms( "setShaderParms", "ffff" );
const idEventDef EV_SetColor( "setColor", "fff" );
const idEventDef EV_GetColor( "getColor", NULL, 'v' );
const idEventDef EV_CacheSoundShader( "cacheSoundShader", "s" );
const idEventDef EV_StartSoundShader( "startSoundShader", "sd", 'f' );
const idEventDef EV_StartSound( "startSound", "sdd", 'f' );
const idEventDef EV_StopSound( "stopSound", "dd" );
const idEventDef EV_FadeSound( "fadeSound", "dff" );
const idEventDef EV_SetGuiParm( "setGuiParm", "ss" );
const idEventDef EV_SetGuiFloat( "setGuiFloat", "sf" );
const idEventDef EV_GetNextKey( "getNextKey", "ss", 's' );
const idEventDef EV_SetKey( "setKey", "ss" );
const idEventDef EV_GetKey( "getKey", "s", 's' );
const idEventDef EV_GetIntKey( "getIntKey", "s", 'f' );
const idEventDef EV_GetFloatKey( "getFloatKey", "s", 'f' );
const idEventDef EV_GetVectorKey( "getVectorKey", "s", 'v' );
const idEventDef EV_GetEntityKey( "getEntityKey", "s", 'e' );
const idEventDef EV_RestorePosition( "restorePosition" );
const idEventDef EV_UpdateCameraTarget( "<updateCameraTarget>", NULL );
const idEventDef EV_DistanceTo( "distanceTo", "E", 'f' );
const idEventDef EV_DistanceToPoint( "distanceToPoint", "v", 'f' );
const idEventDef EV_StartFx( "startFx", "s" );
const idEventDef EV_HasFunction( "hasFunction", "s", 'd' );
const idEventDef EV_CallFunction( "callFunction", "s" );
const idEventDef EV_SetNeverDormant( "setNeverDormant", "d" );

ABSTRACT_DECLARATION( idClass, idEntity )
	EVENT( EV_GetName,				idEntity::Event_GetName )
	EVENT( EV_SetName,				idEntity::Event_SetName )
	EVENT( EV_FindTargets,			idEntity::Event_FindTargets )
	EVENT( EV_ActivateTargets,		idEntity::Event_ActivateTargets )
	EVENT( EV_NumTargets,			idEntity::Event_NumTargets )
	EVENT( EV_GetTarget,			idEntity::Event_GetTarget )
	EVENT( EV_RandomTarget,			idEntity::Event_RandomTarget )
	EVENT( EV_BindToJoint,			idEntity::Event_BindToJoint )
	EVENT( EV_RemoveBinds,			idEntity::Event_RemoveBinds )
	EVENT( EV_Bind,					idEntity::Event_Bind )
	EVENT( EV_BindPosition,			idEntity::Event_BindPosition )
	EVENT( EV_Unbind,				idEntity::Event_Unbind )
	EVENT( EV_SpawnBind,			idEntity::Event_SpawnBind )
	EVENT( EV_SetOwner,				idEntity::Event_SetOwner )
	EVENT( EV_SetModel,				idEntity::Event_SetModel )
	EVENT( EV_SetSkin,				idEntity::Event_SetSkin )
	EVENT( EV_GetShaderParm,		idEntity::Event_GetShaderParm )
	EVENT( EV_SetShaderParm,		idEntity::Event_SetShaderParm )
	EVENT( EV_SetShaderParms,		idEntity::Event_SetShaderParms )
	EVENT( EV_SetColor,				idEntity::Event_SetColor )
	EVENT( EV_GetColor,				idEntity::Event_GetColor )
	EVENT( EV_IsHidden,				idEntity::Event_IsHidden )
	EVENT( EV_Hide,					idEntity::Event_Hide )
	EVENT( EV_Show,					idEntity::Event_Show )
	EVENT( EV_CacheSoundShader,		idEntity::Event_CacheSoundShader )
	EVENT( EV_StartSoundShader,		idEntity::Event_StartSoundShader )
	EVENT( EV_StartSound,			idEntity::Event_StartSound )
	EVENT( EV_StopSound,			idEntity::Event_StopSound )
	EVENT( EV_FadeSound,			idEntity::Event_FadeSound )
	EVENT( EV_GetWorldOrigin,		idEntity::Event_GetWorldOrigin )
	EVENT( EV_SetWorldOrigin,		idEntity::Event_SetWorldOrigin )
	EVENT( EV_GetOrigin,			idEntity::Event_GetOrigin )
	EVENT( EV_SetOrigin,			idEntity::Event_SetOrigin )
	EVENT( EV_GetAngles,			idEntity::Event_GetAngles )
	EVENT( EV_SetAngles,			idEntity::Event_SetAngles )
	EVENT( EV_GetLinearVelocity,	idEntity::Event_GetLinearVelocity )
	EVENT( EV_SetLinearVelocity,	idEntity::Event_SetLinearVelocity )
	EVENT( EV_GetAngularVelocity,	idEntity::Event_GetAngularVelocity )
	EVENT( EV_SetAngularVelocity,	idEntity::Event_SetAngularVelocity )
	EVENT( EV_GetSize,				idEntity::Event_GetSize )
	EVENT( EV_SetSize,				idEntity::Event_SetSize )
	EVENT( EV_GetMins,				idEntity::Event_GetMins)
	EVENT( EV_GetMaxs,				idEntity::Event_GetMaxs )
	EVENT( EV_Touches,				idEntity::Event_Touches )
	EVENT( EV_SetGuiParm, 			idEntity::Event_SetGuiParm )
	EVENT( EV_SetGuiFloat, 			idEntity::Event_SetGuiFloat )
	EVENT( EV_GetNextKey,			idEntity::Event_GetNextKey )
	EVENT( EV_SetKey,				idEntity::Event_SetKey )
	EVENT( EV_GetKey,				idEntity::Event_GetKey )
	EVENT( EV_GetIntKey,			idEntity::Event_GetIntKey )
	EVENT( EV_GetFloatKey,			idEntity::Event_GetFloatKey )
	EVENT( EV_GetVectorKey,			idEntity::Event_GetVectorKey )
	EVENT( EV_GetEntityKey,			idEntity::Event_GetEntityKey )
	EVENT( EV_RestorePosition,		idEntity::Event_RestorePosition )
	EVENT( EV_UpdateCameraTarget,	idEntity::Event_UpdateCameraTarget )
	EVENT( EV_DistanceTo,			idEntity::Event_DistanceTo )
	EVENT( EV_DistanceToPoint,		idEntity::Event_DistanceToPoint )
	EVENT( EV_StartFx,				idEntity::Event_StartFx )
	EVENT( EV_Thread_WaitFrame,		idEntity::Event_WaitFrame )
	EVENT( EV_Thread_Wait,			idEntity::Event_Wait )
	EVENT( EV_HasFunction,			idEntity::Event_HasFunction )
	EVENT( EV_CallFunction,			idEntity::Event_CallFunction )
	EVENT( EV_SetNeverDormant,		idEntity::Event_SetNeverDormant )
END_CLASS

/*
================
UpdateGuiParms
================
*/
void UpdateGuiParms( idUserInterface *gui, const idDict *args ) {
    Sys_Printf("void UpdateGuiParms( idUserInterface *gui, const idDict *args )\r\n");
}


/*
================
AddRenderGui
================
*/
void AddRenderGui( const char *name, idUserInterface **gui, const idDict *args ) {
    Sys_Printf("void AddRenderGui( const char *name, idUserInterface **gui, const idDict *args )\r\n");
}


/*
================
idGameEdit::ParseSpawnArgsToRenderEntity

parse the static model parameters
this is the canonical renderEntity parm parsing,
which should be used by dmap and the editor
================
*/
void idGameEdit::ParseSpawnArgsToRenderEntity( const idDict *args, renderEntity_t *renderEntity ) {
    Sys_Printf("void idGameEdit::ParseSpawnArgsToRenderEntity( const idDict *args, renderEntity_t *renderEntity )\r\n");
}


/*
================
idGameEdit::ParseSpawnArgsToRefSound

parse the sound parameters
this is the canonical refSound parm parsing,
which should be used by dmap and the editor
================
*/
void idGameEdit::ParseSpawnArgsToRefSound( const idDict *args, refSound_t *refSound ) {
    Sys_Printf("void idGameEdit::ParseSpawnArgsToRefSound( const idDict *args, refSound_t *refSound )\r\n");
}


/*
===============
idEntity::UpdateChangeableSpawnArgs

Any key val pair that might change during the course of the game ( via a gui or whatever )
should be initialize here so a gui or other trigger can change something and have it updated
properly. An optional source may be provided if the values reside in an outside dictionary and
first need copied over to spawnArgs
===============
*/
void idEntity::UpdateChangeableSpawnArgs( const idDict *source ) {
    Sys_Printf("void idEntity::UpdateChangeableSpawnArgs( const idDict *source )\r\n");
}


/*
================
idEntity::idEntity
================
*/
idEntity::idEntity() {

	entityNumber	= ENTITYNUM_NONE;
	entityDefNumber = -1;

	spawnNode.SetOwner( this );
	activeNode.SetOwner( this );

	snapshotNode.SetOwner( this );
	snapshotSequence = -1;
	snapshotBits = 0;

	thinkFlags		= 0;
	dormantStart	= 0;
	cinematic		= false;
	renderView		= NULL;
	cameraTarget	= NULL;
	health			= 0;

	physics			= NULL;
	bindMaster		= NULL;
	bindJoint		= INVALID_JOINT;
	bindBody		= -1;
	teamMaster		= NULL;
	teamChain		= NULL;
	signals			= NULL;

	memset( PVSAreas, 0, sizeof( PVSAreas ) );
	numPVSAreas		= -1;

	memset( &fl, 0, sizeof( fl ) );
	fl.neverDormant	= true;			// most entities never go dormant

	memset( &renderEntity, 0, sizeof( renderEntity ) );
	modelDefHandle	= -1;
	memset( &refSound, 0, sizeof( refSound ) );

	mpGUIState = -1;
}

/*
================
idEntity::FixupLocalizedStrings
================
*/
void idEntity::FixupLocalizedStrings() {
    Sys_Printf("void idEntity::FixupLocalizedStrings()\r\n");
}


/*
================
idEntity::Spawn
================
*/
void idEntity::Spawn( void ) {
    Sys_Printf("void idEntity::Spawn( void )\r\n");
}


/*
================
idEntity::~idEntity
================
*/
idEntity::~idEntity( void ) {

	if ( gameLocal.GameState() != GAMESTATE_SHUTDOWN && !gameLocal.isClient && fl.networkSync && entityNumber >= MAX_CLIENTS ) {
		idBitMsg	msg;
		byte		msgBuf[ MAX_GAME_MESSAGE_SIZE ];

		msg.Init( msgBuf, sizeof( msgBuf ) );
		msg.WriteByte( GAME_RELIABLE_MESSAGE_DELETE_ENT );
		msg.WriteBits( gameLocal.GetSpawnId( this ), 32 );
		networkSystem->ServerSendReliableMessage( -1, msg );
	}

	DeconstructScriptObject();
	scriptObject.Free();

	if ( thinkFlags ) {
		BecomeInactive( thinkFlags );
	}
	activeNode.Remove();

	Signal( SIG_REMOVED );

	// we have to set back the default physics object before unbinding because the entity
	// specific physics object might be an entity variable and as such could already be destroyed.
	SetPhysics( NULL );

	// remove any entities that are bound to me
	RemoveBinds();

	// unbind from master
	Unbind();
	QuitTeam();

	gameLocal.RemoveEntityFromHash( name.c_str(), this );

	delete renderView;
	renderView = NULL;

	delete signals;
	signals = NULL;

	FreeModelDef();
	FreeSoundEmitter( false );

	gameLocal.UnregisterEntity( this );
}

/*
================
idEntity::Save
================
*/
void idEntity::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idEntity::Save( idSaveGame *savefile )\r\n");
}


/*
================
idEntity::Restore
================
*/
void idEntity::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idEntity::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idEntity::GetEntityDefName
================
*/
const char * idEntity::GetEntityDefName( void ) const {
    Sys_Printf("char * idEntity::GetEntityDefName( void )\r\n");
    return NULL;
}


/*
================
idEntity::SetName
================
*/
void idEntity::SetName( const char *newname ) {
    Sys_Printf("void idEntity::SetName( const char *newname )\r\n");
}


/*
================
idEntity::GetName
================
*/
const char * idEntity::GetName( void ) const {
    Sys_Printf("char * idEntity::GetName( void )\r\n");
    return NULL;
}



/***********************************************************************

	Thinking
	
***********************************************************************/

/*
================
idEntity::Think
================
*/
void idEntity::Think( void ) {
    Sys_Printf("void idEntity::Think( void )\r\n");
}


/*
================
idEntity::DoDormantTests

Monsters and other expensive entities that are completely closed
off from the player can skip all of their work
================
*/
bool idEntity::DoDormantTests( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::DoDormantTests( void )\r\n");
    return retVal;
}


/*
================
idEntity::CheckDormant

Monsters and other expensive entities that are completely closed
off from the player can skip all of their work
================
*/
bool idEntity::CheckDormant( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::CheckDormant( void )\r\n");
    return retVal;
}


/*
================
idEntity::DormantBegin

called when entity becomes dormant
================
*/
void idEntity::DormantBegin( void ) {
    Sys_Printf("void idEntity::DormantBegin( void )\r\n");
}


/*
================
idEntity::DormantEnd

called when entity wakes from being dormant
================
*/
void idEntity::DormantEnd( void ) {
    Sys_Printf("void idEntity::DormantEnd( void )\r\n");
}


/*
================
idEntity::IsActive
================
*/
bool idEntity::IsActive( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::IsActive( void )\r\n");
    return retVal;
}


/*
================
idEntity::BecomeActive
================
*/
void idEntity::BecomeActive( int flags ) {
    Sys_Printf("void idEntity::BecomeActive( int flags )\r\n");
}


/*
================
idEntity::BecomeInactive
================
*/
void idEntity::BecomeInactive( int flags ) {
    Sys_Printf("void idEntity::BecomeInactive( int flags )\r\n");
}


/***********************************************************************

	Visuals
	
***********************************************************************/

/*
================
idEntity::SetShaderParm
================
*/
void idEntity::SetShaderParm( int parmnum, float value ) {
    Sys_Printf("void idEntity::SetShaderParm( int parmnum, float value )\r\n");
}


/*
================
idEntity::SetColor
================
*/
void idEntity::SetColor( float red, float green, float blue ) {
    Sys_Printf("void idEntity::SetColor( float red, float green, float blue )\r\n");
}


/*
================
idEntity::SetColor
================
*/
void idEntity::SetColor( const idVec3 &color ) {
    Sys_Printf("void idEntity::SetColor( const idVec3 &color )\r\n");
}


/*
================
idEntity::GetColor
================
*/
void idEntity::GetColor( idVec3 &out ) const {
    Sys_Printf("void idEntity::GetColor( idVec3 &out )\r\n");
}


/*
================
idEntity::SetColor
================
*/
void idEntity::SetColor( const idVec4 &color ) {
    Sys_Printf("void idEntity::SetColor( const idVec4 &color )\r\n");
}


/*
================
idEntity::GetColor
================
*/
void idEntity::GetColor( idVec4 &out ) const {
    Sys_Printf("void idEntity::GetColor( idVec4 &out )\r\n");
}


/*
================
idEntity::UpdateAnimationControllers
================
*/
bool idEntity::UpdateAnimationControllers( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::UpdateAnimationControllers( void )\r\n");
    return retVal;
}


/*
================
idEntity::SetModel
================
*/
void idEntity::SetModel( const char *modelname ) {
    Sys_Printf("void idEntity::SetModel( const char *modelname )\r\n");
}


/*
================
idEntity::SetSkin
================
*/
void idEntity::SetSkin( const idDeclSkin *skin ) {
    Sys_Printf("void idEntity::SetSkin( const idDeclSkin *skin )\r\n");
}


/*
================
idEntity::GetSkin
================
*/
const idDeclSkin *idEntity::GetSkin( void ) const {
    Sys_Printf("idDeclSkin *idEntity::GetSkin( void )\r\n");
    return NULL;
}


/*
================
idEntity::FreeModelDef
================
*/
void idEntity::FreeModelDef( void ) {
    Sys_Printf("void idEntity::FreeModelDef( void )\r\n");
}


/*
================
idEntity::FreeLightDef
================
*/
void idEntity::FreeLightDef( void ) {
    Sys_Printf("void idEntity::FreeLightDef( void )\r\n");
}


/*
================
idEntity::IsHidden
================
*/
bool idEntity::IsHidden( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::IsHidden( void )\r\n");
    return retVal;
}


/*
================
idEntity::Hide
================
*/
void idEntity::Hide( void ) {
    Sys_Printf("void idEntity::Hide( void )\r\n");
}


/*
================
idEntity::Show
================
*/
void idEntity::Show( void ) {
    Sys_Printf("void idEntity::Show( void )\r\n");
}


/*
================
idEntity::UpdateModelTransform
================
*/
void idEntity::UpdateModelTransform( void ) {
    Sys_Printf("void idEntity::UpdateModelTransform( void )\r\n");
}


/*
================
idEntity::UpdateModel
================
*/
void idEntity::UpdateModel( void ) {
    Sys_Printf("void idEntity::UpdateModel( void )\r\n");
}


/*
================
idEntity::UpdateVisuals
================
*/
void idEntity::UpdateVisuals( void ) {
    Sys_Printf("void idEntity::UpdateVisuals( void )\r\n");
}


/*
================
idEntity::UpdatePVSAreas
================
*/
void idEntity::UpdatePVSAreas( void ) {
    Sys_Printf("void idEntity::UpdatePVSAreas( void )\r\n");
}


/*
================
idEntity::UpdatePVSAreas
================
*/
void idEntity::UpdatePVSAreas( const idVec3 &pos ) {
    Sys_Printf("void idEntity::UpdatePVSAreas( const idVec3 &pos )\r\n");
}


/*
================
idEntity::GetNumPVSAreas
================
*/
int idEntity::GetNumPVSAreas( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idEntity::GetNumPVSAreas( void )\r\n");
    return retVal;
}


/*
================
idEntity::GetPVSAreas
================
*/
const int *idEntity::GetPVSAreas( void ) {
    Sys_Printf("int *idEntity::GetPVSAreas( void )\r\n");
    return NULL;
}


/*
================
idEntity::ClearPVSAreas
================
*/
void idEntity::ClearPVSAreas( void ) {
    Sys_Printf("void idEntity::ClearPVSAreas( void )\r\n");
}


/*
================
idEntity::PhysicsTeamInPVS

  FIXME: for networking also return true if any of the entity shadows is in the PVS
================
*/
bool idEntity::PhysicsTeamInPVS( pvsHandle_t pvsHandle ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::PhysicsTeamInPVS( pvsHandle_t pvsHandle )\r\n");
    return retVal;
}


/*
==============
idEntity::ProjectOverlay
==============
*/
void idEntity::ProjectOverlay( const idVec3 &origin, const idVec3 &dir, float size, const char *material ) {
    Sys_Printf("void idEntity::ProjectOverlay( const idVec3 &origin, const idVec3 &dir, float size, const char *material )\r\n");
}


/*
================
idEntity::Present

Present is called to allow entities to generate refEntities, lights, etc for the renderer.
================
*/
void idEntity::Present( void ) {
    Sys_Printf("void idEntity::Present( void )\r\n");
}


/*
================
idEntity::GetRenderEntity
================
*/
renderEntity_t *idEntity::GetRenderEntity( void ) {
    Sys_Printf("renderEntity_t *idEntity::GetRenderEntity( void )\r\n");
    return NULL;
}


/*
================
idEntity::GetModelDefHandle
================
*/
int idEntity::GetModelDefHandle( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idEntity::GetModelDefHandle( void )\r\n");
    return retVal;
}


/*
================
idEntity::UpdateRenderEntity
================
*/
bool idEntity::UpdateRenderEntity( renderEntity_s *renderEntity, const renderView_t *renderView ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::UpdateRenderEntity( renderEntity_s *renderEntity, const renderView_t *renderView )\r\n");
    return retVal;
}


/*
================
idEntity::ModelCallback

	NOTE: may not change the game state whatsoever!
================
*/
bool idEntity::ModelCallback( renderEntity_s *renderEntity, const renderView_t *renderView ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::ModelCallback( renderEntity_s *renderEntity, const renderView_t *renderView )\r\n");
    return retVal;
}


/*
================
idEntity::GetAnimator

Subclasses will be responsible for allocating animator.
================
*/
idAnimator *idEntity::GetAnimator( void ) {
    Sys_Printf("idAnimator *idEntity::GetAnimator( void )\r\n");
    return NULL;
}


/*
=============
idEntity::GetRenderView

This is used by remote camera views to look from an entity
=============
*/
renderView_t *idEntity::GetRenderView( void ) {
    Sys_Printf("renderView_t *idEntity::GetRenderView( void )\r\n");
    return NULL;
}


/***********************************************************************

  Sound
	
***********************************************************************/

/*
================
idEntity::CanPlayChatterSounds

Used for playing chatter sounds on monsters.
================
*/
bool idEntity::CanPlayChatterSounds( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::CanPlayChatterSounds( void )\r\n");
    return retVal;
}


/*
================
idEntity::StartSound
================
*/
bool idEntity::StartSound( const char *soundName, const s_channelType channel, int soundShaderFlags, bool broadcast, int *length ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::StartSound( const char *soundName, const s_channelType channel, int soundShaderFlags, bool broadcast, int *length )\r\n");
    return retVal;
}


/*
================
idEntity::StartSoundShader
================
*/
bool idEntity::StartSoundShader( const idSoundShader *shader, const s_channelType channel, int soundShaderFlags, bool broadcast, int *length ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::StartSoundShader( const idSoundShader *shader, const s_channelType channel, int soundShaderFlags, bool broadcast, int *length )\r\n");
    return retVal;
}


/*
================
idEntity::StopSound
================
*/
void idEntity::StopSound( const s_channelType channel, bool broadcast ) {
    Sys_Printf("void idEntity::StopSound( const s_channelType channel, bool broadcast )\r\n");
}


/*
================
idEntity::SetSoundVolume

  Must be called before starting a new sound.
================
*/
void idEntity::SetSoundVolume( float volume ) {
    Sys_Printf("void idEntity::SetSoundVolume( float volume )\r\n");
}


/*
================
idEntity::UpdateSound
================
*/
void idEntity::UpdateSound( void ) {
    Sys_Printf("void idEntity::UpdateSound( void )\r\n");
}


/*
================
idEntity::GetListenerId
================
*/
int idEntity::GetListenerId( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idEntity::GetListenerId( void )\r\n");
    return retVal;
}


/*
================
idEntity::GetSoundEmitter
================
*/
idSoundEmitter *idEntity::GetSoundEmitter( void ) const {
    Sys_Printf("idSoundEmitter *idEntity::GetSoundEmitter( void )\r\n");
    return NULL;
}


/*
================
idEntity::FreeSoundEmitter
================
*/
void idEntity::FreeSoundEmitter( bool immediate ) {
    Sys_Printf("void idEntity::FreeSoundEmitter( bool immediate )\r\n");
}


/***********************************************************************

  entity binding
	
***********************************************************************/

/*
================
idEntity::PreBind
================
*/
void idEntity::PreBind( void ) {
    Sys_Printf("void idEntity::PreBind( void )\r\n");
}


/*
================
idEntity::PostBind
================
*/
void idEntity::PostBind( void ) {
    Sys_Printf("void idEntity::PostBind( void )\r\n");
}


/*
================
idEntity::PreUnbind
================
*/
void idEntity::PreUnbind( void ) {
    Sys_Printf("void idEntity::PreUnbind( void )\r\n");
}


/*
================
idEntity::PostUnbind
================
*/
void idEntity::PostUnbind( void ) {
    Sys_Printf("void idEntity::PostUnbind( void )\r\n");
}


/*
================
idEntity::InitBind
================
*/
bool idEntity::InitBind( idEntity *master ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::InitBind( idEntity *master )\r\n");
    return retVal;
}


/*
================
idEntity::FinishBind
================
*/
void idEntity::FinishBind( void ) {
    Sys_Printf("void idEntity::FinishBind( void )\r\n");
}


/*
================
idEntity::Bind

  bind relative to the visual position of the master
================
*/
void idEntity::Bind( idEntity *master, bool orientated ) {
    Sys_Printf("void idEntity::Bind( idEntity *master, bool orientated )\r\n");
}


/*
================
idEntity::BindToJoint

  bind relative to a joint of the md5 model used by the master
================
*/
void idEntity::BindToJoint( idEntity *master, const char *jointname, bool orientated ) {
    Sys_Printf("void idEntity::BindToJoint( idEntity *master, const char *jointname, bool orientated )\r\n");
}


/*
================
idEntity::BindToJoint

  bind relative to a joint of the md5 model used by the master
================
*/
void idEntity::BindToJoint( idEntity *master, jointHandle_t jointnum, bool orientated ) {
    Sys_Printf("void idEntity::BindToJoint( idEntity *master, jointHandle_t jointnum, bool orientated )\r\n");
}


/*
================
idEntity::BindToBody

  bind relative to a collision model used by the physics of the master
================
*/
void idEntity::BindToBody( idEntity *master, int bodyId, bool orientated ) {
    Sys_Printf("void idEntity::BindToBody( idEntity *master, int bodyId, bool orientated )\r\n");
}


/*
================
idEntity::Unbind
================
*/
void idEntity::Unbind( void ) {
    Sys_Printf("void idEntity::Unbind( void )\r\n");
}


/*
================
idEntity::RemoveBinds
================
*/
void idEntity::RemoveBinds( void ) {
    Sys_Printf("void idEntity::RemoveBinds( void )\r\n");
}


/*
================
idEntity::IsBound
================
*/
bool idEntity::IsBound( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::IsBound( void )\r\n");
    return retVal;
}


/*
================
idEntity::IsBoundTo
================
*/
bool idEntity::IsBoundTo( idEntity *master ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::IsBoundTo( idEntity *master )\r\n");
    return retVal;
}


/*
================
idEntity::GetBindMaster
================
*/
idEntity *idEntity::GetBindMaster( void ) const {
    Sys_Printf("idEntity *idEntity::GetBindMaster( void )\r\n");
    return NULL;
}


/*
================
idEntity::GetBindJoint
================
*/
jointHandle_t idEntity::GetBindJoint( void ) const {
    jointHandle_t retVal;
    memset(&retVal, 0, sizeof(jointHandle_t));
    Sys_Printf("jointHandle_t idEntity::GetBindJoint( void )\r\n");
    return retVal;
}


/*
================
idEntity::GetBindBody
================
*/
int idEntity::GetBindBody( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idEntity::GetBindBody( void )\r\n");
    return retVal;
}


/*
================
idEntity::GetTeamMaster
================
*/
idEntity *idEntity::GetTeamMaster( void ) const {
    Sys_Printf("idEntity *idEntity::GetTeamMaster( void )\r\n");
    return NULL;
}


/*
================
idEntity::GetNextTeamEntity
================
*/
idEntity *idEntity::GetNextTeamEntity( void ) const {
    Sys_Printf("idEntity *idEntity::GetNextTeamEntity( void )\r\n");
    return NULL;
}


/*
=====================
idEntity::ConvertLocalToWorldTransform
=====================
*/
void idEntity::ConvertLocalToWorldTransform( idVec3 &offset, idMat3 &axis ) {
    Sys_Printf("void idEntity::ConvertLocalToWorldTransform( idVec3 &offset, idMat3 &axis )\r\n");
}


/*
================
idEntity::GetLocalVector

Takes a vector in worldspace and transforms it into the parent
object's localspace.

Note: Does not take origin into acount.  Use getLocalCoordinate to
convert coordinates.
================
*/
idVec3 idEntity::GetLocalVector( const idVec3 &vec ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idEntity::GetLocalVector( const idVec3 &vec )\r\n");
    return retVal;
}


/*
================
idEntity::GetLocalCoordinates

Takes a vector in world coordinates and transforms it into the parent
object's local coordinates.
================
*/
idVec3 idEntity::GetLocalCoordinates( const idVec3 &vec ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idEntity::GetLocalCoordinates( const idVec3 &vec )\r\n");
    return retVal;
}


/*
================
idEntity::GetWorldVector

Takes a vector in the parent object's local coordinates and transforms
it into world coordinates.

Note: Does not take origin into acount.  Use getWorldCoordinate to
convert coordinates.
================
*/
idVec3 idEntity::GetWorldVector( const idVec3 &vec ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idEntity::GetWorldVector( const idVec3 &vec )\r\n");
    return retVal;
}


/*
================
idEntity::GetWorldCoordinates

Takes a vector in the parent object's local coordinates and transforms
it into world coordinates.
================
*/
idVec3 idEntity::GetWorldCoordinates( const idVec3 &vec ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idEntity::GetWorldCoordinates( const idVec3 &vec )\r\n");
    return retVal;
}


/*
================
idEntity::GetMasterPosition
================
*/
bool idEntity::GetMasterPosition( idVec3 &masterOrigin, idMat3 &masterAxis ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::GetMasterPosition( idVec3 &masterOrigin, idMat3 &masterAxis )\r\n");
    return retVal;
}


/*
================
idEntity::GetWorldVelocities
================
*/
void idEntity::GetWorldVelocities( idVec3 &linearVelocity, idVec3 &angularVelocity ) const {
    Sys_Printf("void idEntity::GetWorldVelocities( idVec3 &linearVelocity, idVec3 &angularVelocity )\r\n");
}


/*
================
idEntity::JoinTeam
================
*/
void idEntity::JoinTeam( idEntity *teammember ) {
    Sys_Printf("void idEntity::JoinTeam( idEntity *teammember )\r\n");
}


/*
================
idEntity::QuitTeam
================
*/
void idEntity::QuitTeam( void ) {
    Sys_Printf("void idEntity::QuitTeam( void )\r\n");
}


/***********************************************************************

  Physics.
	
***********************************************************************/

/*
================
idEntity::InitDefaultPhysics
================
*/
void idEntity::InitDefaultPhysics( const idVec3 &origin, const idMat3 &axis ) {
    Sys_Printf("void idEntity::InitDefaultPhysics( const idVec3 &origin, const idMat3 &axis )\r\n");
}


/*
================
idEntity::SetPhysics
================
*/
void idEntity::SetPhysics( idPhysics *phys ) {
    Sys_Printf("void idEntity::SetPhysics( idPhysics *phys )\r\n");
}


/*
================
idEntity::RestorePhysics
================
*/
void idEntity::RestorePhysics( idPhysics *phys ) {
    Sys_Printf("void idEntity::RestorePhysics( idPhysics *phys )\r\n");
}


/*
================
idEntity::GetPhysics
================
*/
idPhysics *idEntity::GetPhysics( void ) const {
    Sys_Printf("idPhysics *idEntity::GetPhysics( void )\r\n");
    return NULL;
}


/*
================
idEntity::RunPhysics
================
*/
bool idEntity::RunPhysics( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::RunPhysics( void )\r\n");
    return retVal;
}


/*
================
idEntity::UpdateFromPhysics
================
*/
void idEntity::UpdateFromPhysics( bool moveBack ) {
    Sys_Printf("void idEntity::UpdateFromPhysics( bool moveBack )\r\n");
}


/*
================
idEntity::SetOrigin
================
*/
void idEntity::SetOrigin( const idVec3 &org ) {
    Sys_Printf("void idEntity::SetOrigin( const idVec3 &org )\r\n");
}


/*
================
idEntity::SetAxis
================
*/
void idEntity::SetAxis( const idMat3 &axis ) {
    Sys_Printf("void idEntity::SetAxis( const idMat3 &axis )\r\n");
}


/*
================
idEntity::SetAngles
================
*/
void idEntity::SetAngles( const idAngles &ang ) {
    Sys_Printf("void idEntity::SetAngles( const idAngles &ang )\r\n");
}


/*
================
idEntity::GetFloorPos
================
*/
bool idEntity::GetFloorPos( float max_dist, idVec3 &floorpos ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::GetFloorPos( float max_dist, idVec3 &floorpos )\r\n");
    return retVal;
}


/*
================
idEntity::GetPhysicsToVisualTransform
================
*/
bool idEntity::GetPhysicsToVisualTransform( idVec3 &origin, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::GetPhysicsToVisualTransform( idVec3 &origin, idMat3 &axis )\r\n");
    return retVal;
}


/*
================
idEntity::GetPhysicsToSoundTransform
================
*/
bool idEntity::GetPhysicsToSoundTransform( idVec3 &origin, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::GetPhysicsToSoundTransform( idVec3 &origin, idMat3 &axis )\r\n");
    return retVal;
}


/*
================
idEntity::Collide
================
*/
bool idEntity::Collide( const trace_t &collision, const idVec3 &velocity ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::Collide( const trace_t &collision, const idVec3 &velocity )\r\n");
    return retVal;
}


/*
================
idEntity::GetImpactInfo
================
*/
void idEntity::GetImpactInfo( idEntity *ent, int id, const idVec3 &point, impactInfo_t *info ) {
    Sys_Printf("void idEntity::GetImpactInfo( idEntity *ent, int id, const idVec3 &point, impactInfo_t *info )\r\n");
}


/*
================
idEntity::ApplyImpulse
================
*/
void idEntity::ApplyImpulse( idEntity *ent, int id, const idVec3 &point, const idVec3 &impulse ) {
    Sys_Printf("void idEntity::ApplyImpulse( idEntity *ent, int id, const idVec3 &point, const idVec3 &impulse )\r\n");
}


/*
================
idEntity::AddForce
================
*/
void idEntity::AddForce( idEntity *ent, int id, const idVec3 &point, const idVec3 &force ) {
    Sys_Printf("void idEntity::AddForce( idEntity *ent, int id, const idVec3 &point, const idVec3 &force )\r\n");
}


/*
================
idEntity::ActivatePhysics
================
*/
void idEntity::ActivatePhysics( idEntity *ent ) {
    Sys_Printf("void idEntity::ActivatePhysics( idEntity *ent )\r\n");
}


/*
================
idEntity::IsAtRest
================
*/
bool idEntity::IsAtRest( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::IsAtRest( void )\r\n");
    return retVal;
}


/*
================
idEntity::GetRestStartTime
================
*/
int idEntity::GetRestStartTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idEntity::GetRestStartTime( void )\r\n");
    return retVal;
}


/*
================
idEntity::AddContactEntity
================
*/
void idEntity::AddContactEntity( idEntity *ent ) {
    Sys_Printf("void idEntity::AddContactEntity( idEntity *ent )\r\n");
}


/*
================
idEntity::RemoveContactEntity
================
*/
void idEntity::RemoveContactEntity( idEntity *ent ) {
    Sys_Printf("void idEntity::RemoveContactEntity( idEntity *ent )\r\n");
}




/***********************************************************************

	Damage
	
***********************************************************************/

/*
============
idEntity::CanDamage

Returns true if the inflictor can directly damage the target.  Used for
explosions and melee attacks.
============
*/
bool idEntity::CanDamage( const idVec3 &origin, idVec3 &damagePoint ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::CanDamage( const idVec3 &origin, idVec3 &damagePoint )\r\n");
    return retVal;
}


/*
================
idEntity::DamageFeedback

callback function for when another entity received damage from this entity.  damage can be adjusted and returned to the caller.
================
*/
void idEntity::DamageFeedback( idEntity *victim, idEntity *inflictor, int &damage ) {
    Sys_Printf("void idEntity::DamageFeedback( idEntity *victim, idEntity *inflictor, int &damage )\r\n");
}


/*
============
Damage

this		entity that is being damaged
inflictor	entity that is causing the damage
attacker	entity that caused the inflictor to damage targ
	example: this=monster, inflictor=rocket, attacker=player

dir			direction of the attack for knockback in global space
point		point at which the damage is being inflicted, used for headshots
damage		amount of damage being inflicted

inflictor, attacker, dir, and point can be NULL for environmental effects

============
*/
void idEntity::Damage( idEntity *inflictor, idEntity *attacker, const idVec3 &dir, 
					  const char *damageDefName, const float damageScale, const int location ) {
    Sys_Printf("void idEntity::Damage( idEntity *inflictor, idEntity *attacker, const idVec3 &dir, const char *damageDefName, const float damageScale, const int location )\r\n");
}


/*
================
idEntity::AddDamageEffect
================
*/
void idEntity::AddDamageEffect( const trace_t &collision, const idVec3 &velocity, const char *damageDefName ) {
    Sys_Printf("void idEntity::AddDamageEffect( const trace_t &collision, const idVec3 &velocity, const char *damageDefName )\r\n");
}


/*
============
idEntity::Pain

Called whenever an entity recieves damage.  Returns whether the entity responds to the pain.
This is a virtual function that subclasses are expected to implement.
============
*/
bool idEntity::Pain( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::Pain( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
    return retVal;
}


/*
============
idEntity::Killed

Called whenever an entity's health is reduced to 0 or less.
This is a virtual function that subclasses are expected to implement.
============
*/
void idEntity::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    Sys_Printf("void idEntity::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
}



/***********************************************************************

  Script functions
	
***********************************************************************/

/*
================
idEntity::ShouldConstructScriptObjectAtSpawn

Called during idEntity::Spawn to see if it should construct the script object or not.
Overridden by subclasses that need to spawn the script object themselves.
================
*/
bool idEntity::ShouldConstructScriptObjectAtSpawn( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::ShouldConstructScriptObjectAtSpawn( void )\r\n");
    return retVal;
}


/*
================
idEntity::ConstructScriptObject

Called during idEntity::Spawn.  Calls the constructor on the script object.
Can be overridden by subclasses when a thread doesn't need to be allocated.
================
*/
idThread *idEntity::ConstructScriptObject( void ) {
    Sys_Printf("idThread *idEntity::ConstructScriptObject( void )\r\n");
    return NULL;
}


/*
================
idEntity::DeconstructScriptObject

Called during idEntity::~idEntity.  Calls the destructor on the script object.
Can be overridden by subclasses when a thread doesn't need to be allocated.
Not called during idGameLocal::MapShutdown.
================
*/
void idEntity::DeconstructScriptObject( void ) {
    Sys_Printf("void idEntity::DeconstructScriptObject( void )\r\n");
}


/*
================
idEntity::HasSignal
================
*/
bool idEntity::HasSignal( signalNum_t signalnum ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::HasSignal( signalNum_t signalnum )\r\n");
    return retVal;
}


/*
================
idEntity::SetSignal
================
*/
void idEntity::SetSignal( signalNum_t signalnum, idThread *thread, const function_t *function ) {
    Sys_Printf("void idEntity::SetSignal( signalNum_t signalnum, idThread *thread, const function_t *function )\r\n");
}


/*
================
idEntity::ClearSignal
================
*/
void idEntity::ClearSignal( idThread *thread, signalNum_t signalnum ) {
    Sys_Printf("void idEntity::ClearSignal( idThread *thread, signalNum_t signalnum )\r\n");
}


/*
================
idEntity::ClearSignalThread
================
*/
void idEntity::ClearSignalThread( signalNum_t signalnum, idThread *thread ) {
    Sys_Printf("void idEntity::ClearSignalThread( signalNum_t signalnum, idThread *thread )\r\n");
}


/*
================
idEntity::Signal
================
*/
void idEntity::Signal( signalNum_t signalnum ) {
    Sys_Printf("void idEntity::Signal( signalNum_t signalnum )\r\n");
}


/*
================
idEntity::SignalEvent
================
*/
void idEntity::SignalEvent( idThread *thread, signalNum_t signalnum ) {
    Sys_Printf("void idEntity::SignalEvent( idThread *thread, signalNum_t signalnum )\r\n");
}


/***********************************************************************

  Guis.
	
***********************************************************************/


/*
================
idEntity::TriggerGuis
================
*/
void idEntity::TriggerGuis( void ) {
    Sys_Printf("void idEntity::TriggerGuis( void )\r\n");
}


/*
================
idEntity::HandleGuiCommands
================
*/
bool idEntity::HandleGuiCommands( idEntity *entityGui, const char *cmds ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::HandleGuiCommands( idEntity *entityGui, const char *cmds )\r\n");
    return retVal;
}


/*
================
idEntity::HandleSingleGuiCommand
================
*/
bool idEntity::HandleSingleGuiCommand( idEntity *entityGui, idLexer *src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::HandleSingleGuiCommand( idEntity *entityGui, idLexer *src )\r\n");
    return retVal;
}


/***********************************************************************

  Targets
	
***********************************************************************/

/*
===============
idEntity::FindTargets

We have to wait until all entities are spawned
Used to build lists of targets after the entity is spawned.  Since not all entities
have been spawned when the entity is created at map load time, we have to wait
===============
*/
void idEntity::FindTargets( void ) {
    Sys_Printf("void idEntity::FindTargets( void )\r\n");
}


/*
================
idEntity::RemoveNullTargets
================
*/
void idEntity::RemoveNullTargets( void ) {
    Sys_Printf("void idEntity::RemoveNullTargets( void )\r\n");
}


/*
==============================
idEntity::ActivateTargets

"activator" should be set to the entity that initiated the firing.
==============================
*/
void idEntity::ActivateTargets( idEntity *activator ) const {
    Sys_Printf("void idEntity::ActivateTargets( idEntity *activator )\r\n");
}


/***********************************************************************

  Misc.
	
***********************************************************************/

/*
================
idEntity::Teleport
================
*/
void idEntity::Teleport( const idVec3 &origin, const idAngles &angles, idEntity *destination ) {
    Sys_Printf("void idEntity::Teleport( const idVec3 &origin, const idAngles &angles, idEntity *destination )\r\n");
}


/*
============
idEntity::TouchTriggers

  Activate all trigger entities touched at the current position.
============
*/
bool idEntity::TouchTriggers( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::TouchTriggers( void )\r\n");
    return retVal;
}


/*
================
idEntity::GetSpline
================
*/
idCurve_Spline<idVec3> *idEntity::GetSpline( void ) const {
	int i, numPoints, t;
	const idKeyValue *kv;
	idLexer lex;
	idVec3 v;
	idCurve_Spline<idVec3> *spline;
	const char *curveTag = "curve_";

	kv = spawnArgs.MatchPrefix( curveTag );
	if ( !kv ) {
		return NULL;
	}

	idStr str = kv->GetKey().Right( kv->GetKey().Length() - strlen( curveTag ) );
	if ( str.Icmp( "CatmullRomSpline" ) == 0 ) {
		spline = new idCurve_CatmullRomSpline<idVec3>();
	} else if ( str.Icmp( "nubs" ) == 0 ) {
		spline = new idCurve_NonUniformBSpline<idVec3>();
	} else if ( str.Icmp( "nurbs" ) == 0 ) {
		spline = new idCurve_NURBS<idVec3>();
	} else {
		spline = new idCurve_BSpline<idVec3>();
	}

	spline->SetBoundaryType( idCurve_Spline<idVec3>::BT_CLAMPED );

	lex.LoadMemory( kv->GetValue(), kv->GetValue().Length(), curveTag );
	numPoints = lex.ParseInt();
	lex.ExpectTokenString( "(" );
	for ( t = i = 0; i < numPoints; i++, t += 100 ) {
		v.x = lex.ParseFloat();
		v.y = lex.ParseFloat();
		v.z = lex.ParseFloat();
		spline->AddValue( t, v );
	}
	lex.ExpectTokenString( ")" );

	return spline;
}

/*
===============
idEntity::ShowEditingDialog
===============
*/
void idEntity::ShowEditingDialog( void ) {
    Sys_Printf("void idEntity::ShowEditingDialog( void )\r\n");
}


/***********************************************************************

   Events
	
***********************************************************************/

/*
================
idEntity::Event_GetName
================
*/
void idEntity::Event_GetName( void ) {
    Sys_Printf("void idEntity::Event_GetName( void )\r\n");
}


/*
================
idEntity::Event_SetName
================
*/
void idEntity::Event_SetName( const char *newname ) {
    Sys_Printf("void idEntity::Event_SetName( const char *newname )\r\n");
}


/*
===============
idEntity::Event_FindTargets
===============
*/
void idEntity::Event_FindTargets( void ) {
    Sys_Printf("void idEntity::Event_FindTargets( void )\r\n");
}


/*
============
idEntity::Event_ActivateTargets

Activates any entities targeted by this entity.  Mainly used as an
event to delay activating targets.
============
*/
void idEntity::Event_ActivateTargets( idEntity *activator ) {
    Sys_Printf("void idEntity::Event_ActivateTargets( idEntity *activator )\r\n");
}


/*
================
idEntity::Event_NumTargets
================
*/
void idEntity::Event_NumTargets( void ) {
    Sys_Printf("void idEntity::Event_NumTargets( void )\r\n");
}


/*
================
idEntity::Event_GetTarget
================
*/
void idEntity::Event_GetTarget( float index ) {
    Sys_Printf("void idEntity::Event_GetTarget( float index )\r\n");
}


/*
================
idEntity::Event_RandomTarget
================
*/
void idEntity::Event_RandomTarget( const char *ignore ) {
    Sys_Printf("void idEntity::Event_RandomTarget( const char *ignore )\r\n");
}


/*
================
idEntity::Event_BindToJoint
================
*/
void idEntity::Event_BindToJoint( idEntity *master, const char *jointname, float orientated ) {
    Sys_Printf("void idEntity::Event_BindToJoint( idEntity *master, const char *jointname, float orientated )\r\n");
}


/*
================
idEntity::Event_RemoveBinds
================
*/
void idEntity::Event_RemoveBinds( void ) {
    Sys_Printf("void idEntity::Event_RemoveBinds( void )\r\n");
}


/*
================
idEntity::Event_Bind
================
*/
void idEntity::Event_Bind( idEntity *master ) {
    Sys_Printf("void idEntity::Event_Bind( idEntity *master )\r\n");
}


/*
================
idEntity::Event_BindPosition
================
*/
void idEntity::Event_BindPosition( idEntity *master ) {
    Sys_Printf("void idEntity::Event_BindPosition( idEntity *master )\r\n");
}


/*
================
idEntity::Event_Unbind
================
*/
void idEntity::Event_Unbind( void ) {
    Sys_Printf("void idEntity::Event_Unbind( void )\r\n");
}


/*
================
idEntity::Event_SpawnBind
================
*/
void idEntity::Event_SpawnBind( void ) {
    Sys_Printf("void idEntity::Event_SpawnBind( void )\r\n");
}


/*
================
idEntity::Event_SetOwner
================
*/
void idEntity::Event_SetOwner( idEntity *owner ) {
    Sys_Printf("void idEntity::Event_SetOwner( idEntity *owner )\r\n");
}


/*
================
idEntity::Event_SetModel
================
*/
void idEntity::Event_SetModel( const char *modelname ) {
    Sys_Printf("void idEntity::Event_SetModel( const char *modelname )\r\n");
}


/*
================
idEntity::Event_SetSkin
================
*/
void idEntity::Event_SetSkin( const char *skinname ) {
    Sys_Printf("void idEntity::Event_SetSkin( const char *skinname )\r\n");
}


/*
================
idEntity::Event_GetShaderParm
================
*/
void idEntity::Event_GetShaderParm( int parmnum ) {
    Sys_Printf("void idEntity::Event_GetShaderParm( int parmnum )\r\n");
}


/*
================
idEntity::Event_SetShaderParm
================
*/
void idEntity::Event_SetShaderParm( int parmnum, float value ) {
    Sys_Printf("void idEntity::Event_SetShaderParm( int parmnum, float value )\r\n");
}


/*
================
idEntity::Event_SetShaderParms
================
*/
void idEntity::Event_SetShaderParms( float parm0, float parm1, float parm2, float parm3 ) {
    Sys_Printf("void idEntity::Event_SetShaderParms( float parm0, float parm1, float parm2, float parm3 )\r\n");
}



/*
================
idEntity::Event_SetColor
================
*/
void idEntity::Event_SetColor( float red, float green, float blue ) {
    Sys_Printf("void idEntity::Event_SetColor( float red, float green, float blue )\r\n");
}


/*
================
idEntity::Event_GetColor
================
*/
void idEntity::Event_GetColor( void ) {
    Sys_Printf("void idEntity::Event_GetColor( void )\r\n");
}


/*
================
idEntity::Event_IsHidden
================
*/
void idEntity::Event_IsHidden( void ) {
    Sys_Printf("void idEntity::Event_IsHidden( void )\r\n");
}


/*
================
idEntity::Event_Hide
================
*/
void idEntity::Event_Hide( void ) {
    Sys_Printf("void idEntity::Event_Hide( void )\r\n");
}


/*
================
idEntity::Event_Show
================
*/
void idEntity::Event_Show( void ) {
    Sys_Printf("void idEntity::Event_Show( void )\r\n");
}


/*
================
idEntity::Event_CacheSoundShader
================
*/
void idEntity::Event_CacheSoundShader( const char *soundName ) {
    Sys_Printf("void idEntity::Event_CacheSoundShader( const char *soundName )\r\n");
}


/*
================
idEntity::Event_StartSoundShader
================
*/
void idEntity::Event_StartSoundShader( const char *soundName, int channel ) {
    Sys_Printf("void idEntity::Event_StartSoundShader( const char *soundName, int channel )\r\n");
}


/*
================
idEntity::Event_StopSound
================
*/
void idEntity::Event_StopSound( int channel, int netSync ) {
    Sys_Printf("void idEntity::Event_StopSound( int channel, int netSync )\r\n");
}


/*
================
idEntity::Event_StartSound 
================
*/
void idEntity::Event_StartSound( const char *soundName, int channel, int netSync ) {
    Sys_Printf("void idEntity::Event_StartSound( const char *soundName, int channel, int netSync )\r\n");
}


/*
================
idEntity::Event_FadeSound
================
*/
void idEntity::Event_FadeSound( int channel, float to, float over ) {
    Sys_Printf("void idEntity::Event_FadeSound( int channel, float to, float over )\r\n");
}


/*
================
idEntity::Event_GetWorldOrigin
================
*/
void idEntity::Event_GetWorldOrigin( void ) {
    Sys_Printf("void idEntity::Event_GetWorldOrigin( void )\r\n");
}


/*
================
idEntity::Event_SetWorldOrigin
================
*/
void idEntity::Event_SetWorldOrigin( idVec3 const &org ) {
    Sys_Printf("void idEntity::Event_SetWorldOrigin( idVec3 const &org )\r\n");
}


/*
================
idEntity::Event_SetOrigin
================
*/
void idEntity::Event_SetOrigin( idVec3 const &org ) {
    Sys_Printf("void idEntity::Event_SetOrigin( idVec3 const &org )\r\n");
}


/*
================
idEntity::Event_GetOrigin
================
*/
void idEntity::Event_GetOrigin( void ) {
    Sys_Printf("void idEntity::Event_GetOrigin( void )\r\n");
}


/*
================
idEntity::Event_SetAngles
================
*/
void idEntity::Event_SetAngles( idAngles const &ang ) {
    Sys_Printf("void idEntity::Event_SetAngles( idAngles const &ang )\r\n");
}


/*
================
idEntity::Event_GetAngles
================
*/
void idEntity::Event_GetAngles( void ) {
    Sys_Printf("void idEntity::Event_GetAngles( void )\r\n");
}


/*
================
idEntity::Event_SetLinearVelocity
================
*/
void idEntity::Event_SetLinearVelocity( const idVec3 &velocity ) {
    Sys_Printf("void idEntity::Event_SetLinearVelocity( const idVec3 &velocity )\r\n");
}


/*
================
idEntity::Event_GetLinearVelocity
================
*/
void idEntity::Event_GetLinearVelocity( void ) {
    Sys_Printf("void idEntity::Event_GetLinearVelocity( void )\r\n");
}


/*
================
idEntity::Event_SetAngularVelocity
================
*/
void idEntity::Event_SetAngularVelocity( const idVec3 &velocity ) {
    Sys_Printf("void idEntity::Event_SetAngularVelocity( const idVec3 &velocity )\r\n");
}


/*
================
idEntity::Event_GetAngularVelocity
================
*/
void idEntity::Event_GetAngularVelocity( void ) {
    Sys_Printf("void idEntity::Event_GetAngularVelocity( void )\r\n");
}


/*
================
idEntity::Event_SetSize
================
*/
void idEntity::Event_SetSize( idVec3 const &mins, idVec3 const &maxs ) {
    Sys_Printf("void idEntity::Event_SetSize( idVec3 const &mins, idVec3 const &maxs )\r\n");
}


/*
================
idEntity::Event_GetSize
================
*/
void idEntity::Event_GetSize( void ) {
    Sys_Printf("void idEntity::Event_GetSize( void )\r\n");
}


/*
================
idEntity::Event_GetMins
================
*/
void idEntity::Event_GetMins( void ) {
    Sys_Printf("void idEntity::Event_GetMins( void )\r\n");
}


/*
================
idEntity::Event_GetMaxs
================
*/
void idEntity::Event_GetMaxs( void ) {
    Sys_Printf("void idEntity::Event_GetMaxs( void )\r\n");
}


/*
================
idEntity::Event_Touches
================
*/
void idEntity::Event_Touches( idEntity *ent ) {
    Sys_Printf("void idEntity::Event_Touches( idEntity *ent )\r\n");
}


/*
================
idEntity::Event_SetGuiParm
================
*/
void idEntity::Event_SetGuiParm( const char *key, const char *val ) {
    Sys_Printf("void idEntity::Event_SetGuiParm( const char *key, const char *val )\r\n");
}


/*
================
idEntity::Event_SetGuiParm
================
*/
void idEntity::Event_SetGuiFloat( const char *key, float f ) {
    Sys_Printf("void idEntity::Event_SetGuiFloat( const char *key, float f )\r\n");
}


/*
================
idEntity::Event_GetNextKey
================
*/
void idEntity::Event_GetNextKey( const char *prefix, const char *lastMatch ) {
    Sys_Printf("void idEntity::Event_GetNextKey( const char *prefix, const char *lastMatch )\r\n");
}


/*
================
idEntity::Event_SetKey
================
*/
void idEntity::Event_SetKey( const char *key, const char *value ) {
    Sys_Printf("void idEntity::Event_SetKey( const char *key, const char *value )\r\n");
}


/*
================
idEntity::Event_GetKey
================
*/
void idEntity::Event_GetKey( const char *key ) {
    Sys_Printf("void idEntity::Event_GetKey( const char *key )\r\n");
}


/*
================
idEntity::Event_GetIntKey
================
*/
void idEntity::Event_GetIntKey( const char *key ) {
    Sys_Printf("void idEntity::Event_GetIntKey( const char *key )\r\n");
}


/*
================
idEntity::Event_GetFloatKey
================
*/
void idEntity::Event_GetFloatKey( const char *key ) {
    Sys_Printf("void idEntity::Event_GetFloatKey( const char *key )\r\n");
}


/*
================
idEntity::Event_GetVectorKey
================
*/
void idEntity::Event_GetVectorKey( const char *key ) {
    Sys_Printf("void idEntity::Event_GetVectorKey( const char *key )\r\n");
}


/*
================
idEntity::Event_GetEntityKey
================
*/
void idEntity::Event_GetEntityKey( const char *key ) {
    Sys_Printf("void idEntity::Event_GetEntityKey( const char *key )\r\n");
}


/*
================
idEntity::Event_RestorePosition
================
*/
void idEntity::Event_RestorePosition( void ) {
    Sys_Printf("void idEntity::Event_RestorePosition( void )\r\n");
}


/*
================
idEntity::Event_UpdateCameraTarget
================
*/
void idEntity::Event_UpdateCameraTarget( void ) {
    Sys_Printf("void idEntity::Event_UpdateCameraTarget( void )\r\n");
}


/*
================
idEntity::Event_DistanceTo
================
*/
void idEntity::Event_DistanceTo( idEntity *ent ) {
    Sys_Printf("void idEntity::Event_DistanceTo( idEntity *ent )\r\n");
}


/*
================
idEntity::Event_DistanceToPoint
================
*/
void idEntity::Event_DistanceToPoint( const idVec3 &point ) {
    Sys_Printf("void idEntity::Event_DistanceToPoint( const idVec3 &point )\r\n");
}


/*
================
idEntity::Event_StartFx
================
*/
void idEntity::Event_StartFx( const char *fx ) {
    Sys_Printf("void idEntity::Event_StartFx( const char *fx )\r\n");
}


/*
================
idEntity::Event_WaitFrame
================
*/
void idEntity::Event_WaitFrame( void ) {
    Sys_Printf("void idEntity::Event_WaitFrame( void )\r\n");
}


/*
=====================
idEntity::Event_Wait
=====================
*/
void idEntity::Event_Wait( float time ) {
    Sys_Printf("void idEntity::Event_Wait( float time )\r\n");
}


/*
=====================
idEntity::Event_HasFunction
=====================
*/
void idEntity::Event_HasFunction( const char *name ) {
    Sys_Printf("void idEntity::Event_HasFunction( const char *name )\r\n");
}


/*
=====================
idEntity::Event_CallFunction
=====================
*/
void idEntity::Event_CallFunction( const char *funcname ) {
    Sys_Printf("void idEntity::Event_CallFunction( const char *funcname )\r\n");
}


/*
================
idEntity::Event_SetNeverDormant
================
*/
void idEntity::Event_SetNeverDormant( int enable ) {
    Sys_Printf("void idEntity::Event_SetNeverDormant( int enable )\r\n");
}


/***********************************************************************

   Network
	
***********************************************************************/

/*
================
idEntity::ClientPredictionThink
================
*/
void idEntity::ClientPredictionThink( void ) {
    Sys_Printf("void idEntity::ClientPredictionThink( void )\r\n");
}


/*
================
idEntity::WriteBindToSnapshot
================
*/
void idEntity::WriteBindToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idEntity::WriteBindToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idEntity::ReadBindFromSnapshot
================
*/
void idEntity::ReadBindFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idEntity::ReadBindFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idEntity::WriteColorToSnapshot
================
*/
void idEntity::WriteColorToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idEntity::WriteColorToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idEntity::ReadColorFromSnapshot
================
*/
void idEntity::ReadColorFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idEntity::ReadColorFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idEntity::WriteGUIToSnapshot
================
*/
void idEntity::WriteGUIToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idEntity::WriteGUIToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idEntity::ReadGUIFromSnapshot
================
*/
void idEntity::ReadGUIFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idEntity::ReadGUIFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idEntity::WriteToSnapshot
================
*/
void idEntity::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idEntity::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idEntity::ReadFromSnapshot
================
*/
void idEntity::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idEntity::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idEntity::ServerSendEvent

   Saved events are also sent to any client that connects late so all clients
   always receive the events nomatter what time they join the game.
================
*/
void idEntity::ServerSendEvent( int eventId, const idBitMsg *msg, bool saveEvent, int excludeClient ) const {
    Sys_Printf("void idEntity::ServerSendEvent( int eventId, const idBitMsg *msg, bool saveEvent, int excludeClient )\r\n");
}


/*
================
idEntity::ClientSendEvent
================
*/
void idEntity::ClientSendEvent( int eventId, const idBitMsg *msg ) const {
    Sys_Printf("void idEntity::ClientSendEvent( int eventId, const idBitMsg *msg )\r\n");
}


/*
================
idEntity::ServerReceiveEvent
================
*/
bool idEntity::ServerReceiveEvent( int event, int time, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::ServerReceiveEvent( int event, int time, const idBitMsg &msg )\r\n");
    return retVal;
}


/*
================
idEntity::ClientReceiveEvent
================
*/
bool idEntity::ClientReceiveEvent( int event, int time, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntity::ClientReceiveEvent( int event, int time, const idBitMsg &msg )\r\n");
    return retVal;
}


/*
===============================================================================

  idAnimatedEntity

===============================================================================
*/

const idEventDef EV_GetJointHandle( "getJointHandle", "s", 'd' );
const idEventDef EV_ClearAllJoints( "clearAllJoints" );
const idEventDef EV_ClearJoint( "clearJoint", "d" );
const idEventDef EV_SetJointPos( "setJointPos", "ddv" );
const idEventDef EV_SetJointAngle( "setJointAngle", "ddv" );
const idEventDef EV_GetJointPos( "getJointPos", "d", 'v' );
const idEventDef EV_GetJointAngle( "getJointAngle", "d", 'v' );

CLASS_DECLARATION( idEntity, idAnimatedEntity )
	EVENT( EV_GetJointHandle,		idAnimatedEntity::Event_GetJointHandle )
	EVENT( EV_ClearAllJoints,		idAnimatedEntity::Event_ClearAllJoints )
	EVENT( EV_ClearJoint,			idAnimatedEntity::Event_ClearJoint )
	EVENT( EV_SetJointPos,			idAnimatedEntity::Event_SetJointPos )
	EVENT( EV_SetJointAngle,		idAnimatedEntity::Event_SetJointAngle )
	EVENT( EV_GetJointPos,			idAnimatedEntity::Event_GetJointPos )
	EVENT( EV_GetJointAngle,		idAnimatedEntity::Event_GetJointAngle )
END_CLASS

/*
================
idAnimatedEntity::idAnimatedEntity
================
*/
idAnimatedEntity::idAnimatedEntity() {
	animator.SetEntity( this );
	damageEffects = NULL;
}

/*
================
idAnimatedEntity::~idAnimatedEntity
================
*/
idAnimatedEntity::~idAnimatedEntity() {
	damageEffect_t	*de;

	for ( de = damageEffects; de; de = damageEffects ) {
		damageEffects = de->next;
		delete de;
	}
}

/*
================
idAnimatedEntity::Save

archives object for save game file
================
*/
void idAnimatedEntity::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idAnimatedEntity::Save( idSaveGame *savefile )\r\n");
}


/*
================
idAnimatedEntity::Restore

unarchives object from save game file
================
*/
void idAnimatedEntity::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idAnimatedEntity::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idAnimatedEntity::ClientPredictionThink
================
*/
void idAnimatedEntity::ClientPredictionThink( void ) {
    Sys_Printf("void idAnimatedEntity::ClientPredictionThink( void )\r\n");
}


/*
================
idAnimatedEntity::Think
================
*/
void idAnimatedEntity::Think( void ) {
    Sys_Printf("void idAnimatedEntity::Think( void )\r\n");
}


/*
================
idAnimatedEntity::UpdateAnimation
================
*/
void idAnimatedEntity::UpdateAnimation( void ) {
    Sys_Printf("void idAnimatedEntity::UpdateAnimation( void )\r\n");
}


/*
================
idAnimatedEntity::GetAnimator
================
*/
idAnimator *idAnimatedEntity::GetAnimator( void ) {
    Sys_Printf("idAnimator *idAnimatedEntity::GetAnimator( void )\r\n");
    return NULL;
}


/*
================
idAnimatedEntity::SetModel
================
*/
void idAnimatedEntity::SetModel( const char *modelname ) {
    Sys_Printf("void idAnimatedEntity::SetModel( const char *modelname )\r\n");
}


/*
=====================
idAnimatedEntity::GetJointWorldTransform
=====================
*/
bool idAnimatedEntity::GetJointWorldTransform( jointHandle_t jointHandle, int currentTime, idVec3 &offset, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimatedEntity::GetJointWorldTransform( jointHandle_t jointHandle, int currentTime, idVec3 &offset, idMat3 &axis )\r\n");
    return retVal;
}


/*
==============
idAnimatedEntity::GetJointTransformForAnim
==============
*/
bool idAnimatedEntity::GetJointTransformForAnim( jointHandle_t jointHandle, int animNum, int frameTime, idVec3 &offset, idMat3 &axis ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimatedEntity::GetJointTransformForAnim( jointHandle_t jointHandle, int animNum, int frameTime, idVec3 &offset, idMat3 &axis )\r\n");
    return retVal;
}


/*
==============
idAnimatedEntity::AddDamageEffect

  Dammage effects track the animating impact position, spitting out particles.
==============
*/
void idAnimatedEntity::AddDamageEffect( const trace_t &collision, const idVec3 &velocity, const char *damageDefName ) {
    Sys_Printf("void idAnimatedEntity::AddDamageEffect( const trace_t &collision, const idVec3 &velocity, const char *damageDefName )\r\n");
}


/*
==============
idAnimatedEntity::GetDefaultSurfaceType
==============
*/
int	idAnimatedEntity::GetDefaultSurfaceType( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidAnimatedEntity::GetDefaultSurfaceType( void )\r\n");
    return retVal;
}


/*
==============
idAnimatedEntity::AddLocalDamageEffect
==============
*/
void idAnimatedEntity::AddLocalDamageEffect( jointHandle_t jointNum, const idVec3 &localOrigin, const idVec3 &localNormal, const idVec3 &localDir, const idDeclEntityDef *def, const idMaterial *collisionMaterial ) {
    Sys_Printf("void idAnimatedEntity::AddLocalDamageEffect( jointHandle_t jointNum, const idVec3 &localOrigin, const idVec3 &localNormal, const idVec3 &localDir, const idDeclEntityDef *def, const idMaterial *collisionMaterial )\r\n");
}


/*
==============
idAnimatedEntity::UpdateDamageEffects
==============
*/
void idAnimatedEntity::UpdateDamageEffects( void ) {
    Sys_Printf("void idAnimatedEntity::UpdateDamageEffects( void )\r\n");
}


/*
================
idAnimatedEntity::ClientReceiveEvent
================
*/
bool idAnimatedEntity::ClientReceiveEvent( int event, int time, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAnimatedEntity::ClientReceiveEvent( int event, int time, const idBitMsg &msg )\r\n");
    return retVal;
}


/*
================
idAnimatedEntity::Event_GetJointHandle

looks up the number of the specified joint.  returns INVALID_JOINT if the joint is not found.
================
*/
void idAnimatedEntity::Event_GetJointHandle( const char *jointname ) {
    Sys_Printf("void idAnimatedEntity::Event_GetJointHandle( const char *jointname )\r\n");
}


/*
================
idAnimatedEntity::Event_ClearAllJoints

removes any custom transforms on all joints
================
*/
void idAnimatedEntity::Event_ClearAllJoints( void ) {
    Sys_Printf("void idAnimatedEntity::Event_ClearAllJoints( void )\r\n");
}


/*
================
idAnimatedEntity::Event_ClearJoint

removes any custom transforms on the specified joint
================
*/
void idAnimatedEntity::Event_ClearJoint( jointHandle_t jointnum ) {
    Sys_Printf("void idAnimatedEntity::Event_ClearJoint( jointHandle_t jointnum )\r\n");
}


/*
================
idAnimatedEntity::Event_SetJointPos

modifies the position of the joint based on the transform type
================
*/
void idAnimatedEntity::Event_SetJointPos( jointHandle_t jointnum, jointModTransform_t transform_type, const idVec3 &pos ) {
    Sys_Printf("void idAnimatedEntity::Event_SetJointPos( jointHandle_t jointnum, jointModTransform_t transform_type, const idVec3 &pos )\r\n");
}


/*
================
idAnimatedEntity::Event_SetJointAngle

modifies the orientation of the joint based on the transform type
================
*/
void idAnimatedEntity::Event_SetJointAngle( jointHandle_t jointnum, jointModTransform_t transform_type, const idAngles &angles ) {
    Sys_Printf("void idAnimatedEntity::Event_SetJointAngle( jointHandle_t jointnum, jointModTransform_t transform_type, const idAngles &angles )\r\n");
}


/*
================
idAnimatedEntity::Event_GetJointPos

returns the position of the joint in worldspace
================
*/
void idAnimatedEntity::Event_GetJointPos( jointHandle_t jointnum ) {
    Sys_Printf("void idAnimatedEntity::Event_GetJointPos( jointHandle_t jointnum )\r\n");
}


/*
================
idAnimatedEntity::Event_GetJointAngle

returns the orientation of the joint in worldspace
================
*/
void idAnimatedEntity::Event_GetJointAngle( jointHandle_t jointnum ) {
    Sys_Printf("void idAnimatedEntity::Event_GetJointAngle( jointHandle_t jointnum )\r\n");
}

