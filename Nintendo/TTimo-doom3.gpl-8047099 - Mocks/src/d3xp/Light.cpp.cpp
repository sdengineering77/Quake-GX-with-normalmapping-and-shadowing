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

  idLight

===============================================================================
*/

const idEventDef EV_Light_SetShader( "setShader", "s" );
const idEventDef EV_Light_GetLightParm( "getLightParm", "d", 'f' );
const idEventDef EV_Light_SetLightParm( "setLightParm", "df" );
const idEventDef EV_Light_SetLightParms( "setLightParms", "ffff" );
const idEventDef EV_Light_SetRadiusXYZ( "setRadiusXYZ", "fff" );
const idEventDef EV_Light_SetRadius( "setRadius", "f" );
const idEventDef EV_Light_On( "On", NULL );
const idEventDef EV_Light_Off( "Off", NULL );
const idEventDef EV_Light_FadeOut( "fadeOutLight", "f" );
const idEventDef EV_Light_FadeIn( "fadeInLight", "f" );

CLASS_DECLARATION( idEntity, idLight )
	EVENT( EV_Light_SetShader,		idLight::Event_SetShader )
	EVENT( EV_Light_GetLightParm,	idLight::Event_GetLightParm )
	EVENT( EV_Light_SetLightParm,	idLight::Event_SetLightParm )
	EVENT( EV_Light_SetLightParms,	idLight::Event_SetLightParms )
	EVENT( EV_Light_SetRadiusXYZ,	idLight::Event_SetRadiusXYZ )
	EVENT( EV_Light_SetRadius,		idLight::Event_SetRadius )
	EVENT( EV_Hide,					idLight::Event_Hide )
	EVENT( EV_Show,					idLight::Event_Show )
	EVENT( EV_Light_On,				idLight::Event_On )
	EVENT( EV_Light_Off,			idLight::Event_Off )
	EVENT( EV_Activate,				idLight::Event_ToggleOnOff )
	EVENT( EV_PostSpawn,			idLight::Event_SetSoundHandles )
	EVENT( EV_Light_FadeOut,		idLight::Event_FadeOut )
	EVENT( EV_Light_FadeIn,			idLight::Event_FadeIn )
END_CLASS


/*
================
idGameEdit::ParseSpawnArgsToRenderLight

parse the light parameters
this is the canonical renderLight parm parsing,
which should be used by dmap and the editor
================
*/
void idGameEdit::ParseSpawnArgsToRenderLight( const idDict *args, renderLight_t *renderLight ) {
    Sys_Printf("void idGameEdit::ParseSpawnArgsToRenderLight( const idDict *args, renderLight_t *renderLight )\r\n");
}


/*
================
idLight::UpdateChangeableSpawnArgs
================
*/
void idLight::UpdateChangeableSpawnArgs( const idDict *source ) {
    Sys_Printf("void idLight::UpdateChangeableSpawnArgs( const idDict *source )\r\n");
}


/*
================
idLight::idLight
================
*/
idLight::idLight() {
	memset( &renderLight, 0, sizeof( renderLight ) );
	localLightOrigin	= vec3_zero;
	localLightAxis		= mat3_identity;
	lightDefHandle		= -1;
	levels				= 0;
	currentLevel		= 0;
	baseColor			= vec3_zero;
	breakOnTrigger		= false;
	count				= 0;
	triggercount		= 0;
	lightParent			= NULL;
	fadeFrom.Set( 1, 1, 1, 1 );
	fadeTo.Set( 1, 1, 1, 1 );
	fadeStart			= 0;
	fadeEnd				= 0;
	soundWasPlaying		= false;
}

/*
================
idLight::~idLight
================
*/
idLight::~idLight() {
	if ( lightDefHandle != -1 ) {
		gameRenderWorld->FreeLightDef( lightDefHandle );
	}
}

/*
================
idLight::Save

archives object for save game file
================
*/
void idLight::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idLight::Save( idSaveGame *savefile )\r\n");
}


/*
================
idLight::Restore

unarchives object from save game file
================
*/
void idLight::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idLight::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idLight::Spawn
================
*/
void idLight::Spawn( void ) {
    Sys_Printf("void idLight::Spawn( void )\r\n");
}


/*
================
idLight::SetLightLevel
================
*/
void idLight::SetLightLevel( void ) {
    Sys_Printf("void idLight::SetLightLevel( void )\r\n");
}


/*
================
idLight::GetColor
================
*/
void idLight::GetColor( idVec3 &out ) const {
    Sys_Printf("void idLight::GetColor( idVec3 &out )\r\n");
}


/*
================
idLight::GetColor
================
*/
void idLight::GetColor( idVec4 &out ) const {
    Sys_Printf("void idLight::GetColor( idVec4 &out )\r\n");
}


/*
================
idLight::SetColor
================
*/
void idLight::SetColor( float red, float green, float blue ) {
    Sys_Printf("void idLight::SetColor( float red, float green, float blue )\r\n");
}


/*
================
idLight::SetColor
================
*/
void idLight::SetColor( const idVec4 &color ) {
    Sys_Printf("void idLight::SetColor( const idVec4 &color )\r\n");
}


/*
================
idLight::SetShader
================
*/
void idLight::SetShader( const char *shadername ) {
    Sys_Printf("void idLight::SetShader( const char *shadername )\r\n");
}


/*
================
idLight::SetLightParm
================
*/
void idLight::SetLightParm( int parmnum, float value ) {
    Sys_Printf("void idLight::SetLightParm( int parmnum, float value )\r\n");
}


/*
================
idLight::SetLightParms
================
*/
void idLight::SetLightParms( float parm0, float parm1, float parm2, float parm3 ) {
    Sys_Printf("void idLight::SetLightParms( float parm0, float parm1, float parm2, float parm3 )\r\n");
}


/*
================
idLight::SetRadiusXYZ
================
*/
void idLight::SetRadiusXYZ( float x, float y, float z ) {
    Sys_Printf("void idLight::SetRadiusXYZ( float x, float y, float z )\r\n");
}


/*
================
idLight::SetRadius
================
*/
void idLight::SetRadius( float radius ) {
    Sys_Printf("void idLight::SetRadius( float radius )\r\n");
}


/*
================
idLight::On
================
*/
void idLight::On( void ) {
    Sys_Printf("void idLight::On( void )\r\n");
}


/*
================
idLight::Off
================
*/
void idLight::Off( void ) {
    Sys_Printf("void idLight::Off( void )\r\n");
}


/*
================
idLight::Fade
================
*/
void idLight::Fade( const idVec4 &to, float fadeTime ) {
    Sys_Printf("void idLight::Fade( const idVec4 &to, float fadeTime )\r\n");
}


/*
================
idLight::FadeOut
================
*/
void idLight::FadeOut( float time ) {
    Sys_Printf("void idLight::FadeOut( float time )\r\n");
}


/*
================
idLight::FadeIn
================
*/
void idLight::FadeIn( float time ) {
    Sys_Printf("void idLight::FadeIn( float time )\r\n");
}


/*
================
idLight::Killed
================
*/
void idLight::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    Sys_Printf("void idLight::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
}


/*
================
idLight::BecomeBroken
================
*/
void idLight::BecomeBroken( idEntity *activator ) {
    Sys_Printf("void idLight::BecomeBroken( idEntity *activator )\r\n");
}


/*
================
idLight::PresentLightDefChange
================
*/
void idLight::PresentLightDefChange( void ) {
    Sys_Printf("void idLight::PresentLightDefChange( void )\r\n");
}


/*
================
idLight::PresentModelDefChange
================
*/
void idLight::PresentModelDefChange( void ) {
    Sys_Printf("void idLight::PresentModelDefChange( void )\r\n");
}


/*
================
idLight::Present
================
*/
void idLight::Present( void ) {
    Sys_Printf("void idLight::Present( void )\r\n");
}


/*
================
idLight::Think
================
*/
void idLight::Think( void ) {
    Sys_Printf("void idLight::Think( void )\r\n");
}


/*
================
idLight::GetPhysicsToSoundTransform
================
*/
bool idLight::GetPhysicsToSoundTransform( idVec3 &origin, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idLight::GetPhysicsToSoundTransform( idVec3 &origin, idMat3 &axis )\r\n");
    return retVal;
}


/*
================
idLight::FreeLightDef
================
*/
void idLight::FreeLightDef( void ) {
    Sys_Printf("void idLight::FreeLightDef( void )\r\n");
}


/*
================
idLight::SaveState
================
*/
void idLight::SaveState( idDict *args ) {
    Sys_Printf("void idLight::SaveState( idDict *args )\r\n");
}


/*
===============
idLight::ShowEditingDialog
===============
*/
void idLight::ShowEditingDialog( void ) {
    Sys_Printf("void idLight::ShowEditingDialog( void )\r\n");
}


/*
================
idLight::Event_SetShader
================
*/
void idLight::Event_SetShader( const char *shadername ) {
    Sys_Printf("void idLight::Event_SetShader( const char *shadername )\r\n");
}


/*
================
idLight::Event_GetLightParm
================
*/
void idLight::Event_GetLightParm( int parmnum ) {
    Sys_Printf("void idLight::Event_GetLightParm( int parmnum )\r\n");
}


/*
================
idLight::Event_SetLightParm
================
*/
void idLight::Event_SetLightParm( int parmnum, float value ) {
    Sys_Printf("void idLight::Event_SetLightParm( int parmnum, float value )\r\n");
}


/*
================
idLight::Event_SetLightParms
================
*/
void idLight::Event_SetLightParms( float parm0, float parm1, float parm2, float parm3 ) {
    Sys_Printf("void idLight::Event_SetLightParms( float parm0, float parm1, float parm2, float parm3 )\r\n");
}


/*
================
idLight::Event_SetRadiusXYZ
================
*/
void idLight::Event_SetRadiusXYZ( float x, float y, float z ) {
    Sys_Printf("void idLight::Event_SetRadiusXYZ( float x, float y, float z )\r\n");
}


/*
================
idLight::Event_SetRadius
================
*/
void idLight::Event_SetRadius( float radius ) {
    Sys_Printf("void idLight::Event_SetRadius( float radius )\r\n");
}


/*
================
idLight::Event_Hide
================
*/
void idLight::Event_Hide( void ) {
    Sys_Printf("void idLight::Event_Hide( void )\r\n");
}


/*
================
idLight::Event_Show
================
*/
void idLight::Event_Show( void ) {
    Sys_Printf("void idLight::Event_Show( void )\r\n");
}


/*
================
idLight::Event_On
================
*/
void idLight::Event_On( void ) {
    Sys_Printf("void idLight::Event_On( void )\r\n");
}


/*
================
idLight::Event_Off
================
*/
void idLight::Event_Off( void ) {
    Sys_Printf("void idLight::Event_Off( void )\r\n");
}


/*
================
idLight::Event_ToggleOnOff
================
*/
void idLight::Event_ToggleOnOff( idEntity *activator ) {
    Sys_Printf("void idLight::Event_ToggleOnOff( idEntity *activator )\r\n");
}


/*
================
idLight::Event_SetSoundHandles

  set the same sound def handle on all targeted lights
================
*/
void idLight::Event_SetSoundHandles( void ) {
    Sys_Printf("void idLight::Event_SetSoundHandles( void )\r\n");
}


/*
================
idLight::Event_FadeOut
================
*/
void idLight::Event_FadeOut( float time ) {
    Sys_Printf("void idLight::Event_FadeOut( float time )\r\n");
}


/*
================
idLight::Event_FadeIn
================
*/
void idLight::Event_FadeIn( float time ) {
    Sys_Printf("void idLight::Event_FadeIn( float time )\r\n");
}


/*
================
idLight::ClientPredictionThink
================
*/
void idLight::ClientPredictionThink( void ) {
    Sys_Printf("void idLight::ClientPredictionThink( void )\r\n");
}


/*
================
idLight::WriteToSnapshot
================
*/
void idLight::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idLight::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idLight::ReadFromSnapshot
================
*/
void idLight::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idLight::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idLight::ClientReceiveEvent
================
*/
bool idLight::ClientReceiveEvent( int event, int time, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idLight::ClientReceiveEvent( int event, int time, const idBitMsg &msg )\r\n");
    return retVal;
}

