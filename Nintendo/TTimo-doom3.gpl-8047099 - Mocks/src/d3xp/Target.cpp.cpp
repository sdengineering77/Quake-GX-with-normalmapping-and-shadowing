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
/*

Invisible entities that affect other entities or the world when activated.

*/

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "Game_local.h"

/*
===============================================================================

idTarget

===============================================================================
*/

CLASS_DECLARATION( idEntity, idTarget )
END_CLASS


/*
===============================================================================

idTarget_Remove

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_Remove )
	EVENT( EV_Activate, idTarget_Remove::Event_Activate )
END_CLASS

/*
================
idTarget_Remove::Event_Activate
================
*/
void idTarget_Remove::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_Remove::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idTarget_Show

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_Show )
	EVENT( EV_Activate, idTarget_Show::Event_Activate )
END_CLASS

/*
================
idTarget_Show::Event_Activate
================
*/
void idTarget_Show::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_Show::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idTarget_Damage

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_Damage )
	EVENT( EV_Activate, idTarget_Damage::Event_Activate )
END_CLASS

/*
================
idTarget_Damage::Event_Activate
================
*/
void idTarget_Damage::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_Damage::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idTarget_SessionCommand

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_SessionCommand )
	EVENT( EV_Activate, idTarget_SessionCommand::Event_Activate )
END_CLASS

/*
================
idTarget_SessionCommand::Event_Activate
================
*/
void idTarget_SessionCommand::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_SessionCommand::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idTarget_EndLevel

Just a modified form of idTarget_SessionCommand
===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_EndLevel )
	EVENT( EV_Activate,		idTarget_EndLevel::Event_Activate )
END_CLASS

/*
================
idTarget_EndLevel::Event_Activate
================
*/
void idTarget_EndLevel::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_EndLevel::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idTarget_WaitForButton

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_WaitForButton )
	EVENT( EV_Activate, idTarget_WaitForButton::Event_Activate )
END_CLASS

/*
================
idTarget_WaitForButton::Event_Activate
================
*/
void idTarget_WaitForButton::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_WaitForButton::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idTarget_WaitForButton::Think
================
*/
void idTarget_WaitForButton::Think( void ) {
    Sys_Printf("void idTarget_WaitForButton::Think( void )\r\n");
}



/*
===============================================================================

idTarget_SetGlobalShaderParm

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_SetGlobalShaderTime )
EVENT( EV_Activate,	idTarget_SetGlobalShaderTime::Event_Activate )
END_CLASS

/*
================
idTarget_SetGlobalShaderTime::Event_Activate
================
*/
void idTarget_SetGlobalShaderTime::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_SetGlobalShaderTime::Event_Activate( idEntity *activator )\r\n");
}


/*
===============================================================================

idTarget_SetShaderParm

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_SetShaderParm )
	EVENT( EV_Activate,	idTarget_SetShaderParm::Event_Activate )
END_CLASS

/*
================
idTarget_SetShaderParm::Event_Activate
================
*/
void idTarget_SetShaderParm::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_SetShaderParm::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idTarget_SetShaderTime

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_SetShaderTime )
	EVENT( EV_Activate,	idTarget_SetShaderTime::Event_Activate )
END_CLASS

/*
================
idTarget_SetShaderTime::Event_Activate
================
*/
void idTarget_SetShaderTime::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_SetShaderTime::Event_Activate( idEntity *activator )\r\n");
}


/*
===============================================================================

idTarget_FadeEntity

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_FadeEntity )
	EVENT( EV_Activate,				idTarget_FadeEntity::Event_Activate )
END_CLASS

/*
================
idTarget_FadeEntity::idTarget_FadeEntity
================
*/
idTarget_FadeEntity::idTarget_FadeEntity( void ) {
	fadeFrom.Zero();
	fadeStart = 0;
	fadeEnd = 0;
}

/*
================
idTarget_FadeEntity::Save
================
*/
void idTarget_FadeEntity::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idTarget_FadeEntity::Save( idSaveGame *savefile )\r\n");
}


/*
================
idTarget_FadeEntity::Restore
================
*/
void idTarget_FadeEntity::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idTarget_FadeEntity::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idTarget_FadeEntity::Event_Activate
================
*/
void idTarget_FadeEntity::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_FadeEntity::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idTarget_FadeEntity::Think
================
*/
void idTarget_FadeEntity::Think( void ) {
    Sys_Printf("void idTarget_FadeEntity::Think( void )\r\n");
}


/*
===============================================================================

idTarget_LightFadeIn

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_LightFadeIn )
	EVENT( EV_Activate,				idTarget_LightFadeIn::Event_Activate )
END_CLASS

/*
================
idTarget_LightFadeIn::Event_Activate
================
*/
void idTarget_LightFadeIn::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_LightFadeIn::Event_Activate( idEntity *activator )\r\n");
}


/*
===============================================================================

idTarget_LightFadeOut

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_LightFadeOut )
	EVENT( EV_Activate,				idTarget_LightFadeOut::Event_Activate )
END_CLASS

/*
================
idTarget_LightFadeOut::Event_Activate
================
*/
void idTarget_LightFadeOut::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_LightFadeOut::Event_Activate( idEntity *activator )\r\n");
}


/*
===============================================================================

idTarget_Give

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_Give )
	EVENT( EV_Activate,				idTarget_Give::Event_Activate )
END_CLASS

/*
================
idTarget_Give::Spawn
================
*/
void idTarget_Give::Spawn( void ) {
    Sys_Printf("void idTarget_Give::Spawn( void )\r\n");
}


/*
================
idTarget_Give::Event_Activate
================
*/
void idTarget_Give::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_Give::Event_Activate( idEntity *activator )\r\n");
}


/*
===============================================================================

idTarget_GiveEmail

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_GiveEmail )
EVENT( EV_Activate,				idTarget_GiveEmail::Event_Activate )
END_CLASS

/*
================
idTarget_GiveEmail::Spawn
================
*/
void idTarget_GiveEmail::Spawn( void ) {
    Sys_Printf("void idTarget_GiveEmail::Spawn( void )\r\n");
}


/*
================
idTarget_GiveEmail::Event_Activate
================
*/
void idTarget_GiveEmail::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_GiveEmail::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idTarget_SetModel

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_SetModel )
	EVENT( EV_Activate,	idTarget_SetModel::Event_Activate )
END_CLASS

/*
================
idTarget_SetModel::Spawn
================
*/
void idTarget_SetModel::Spawn( void ) {
    Sys_Printf("void idTarget_SetModel::Spawn( void )\r\n");
}


/*
================
idTarget_SetModel::Event_Activate
================
*/
void idTarget_SetModel::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_SetModel::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idTarget_SetInfluence

===============================================================================
*/

const idEventDef EV_RestoreInfluence( "<RestoreInfluece>" );
const idEventDef EV_GatherEntities( "<GatherEntities>" );
const idEventDef EV_Flash( "<Flash>", "fd" );
const idEventDef EV_ClearFlash( "<ClearFlash>", "f" );

CLASS_DECLARATION( idTarget, idTarget_SetInfluence )
	EVENT( EV_Activate,	idTarget_SetInfluence::Event_Activate )
	EVENT( EV_RestoreInfluence,	idTarget_SetInfluence::Event_RestoreInfluence )
	EVENT( EV_GatherEntities, idTarget_SetInfluence::Event_GatherEntities )
	EVENT( EV_Flash, idTarget_SetInfluence::Event_Flash )
	EVENT( EV_ClearFlash, idTarget_SetInfluence::Event_ClearFlash )
END_CLASS

/*
================
idTarget_SetInfluence::idTarget_SetInfluence
================
*/
idTarget_SetInfluence::idTarget_SetInfluence( void ) {
	flashIn = 0.0f;
	flashOut = 0.0f;
	delay = 0.0f;
	switchToCamera = NULL;
	soundFaded = false;
	restoreOnTrigger = false;
}

/*
================
idTarget_SetInfluence::Save
================
*/
void idTarget_SetInfluence::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idTarget_SetInfluence::Save( idSaveGame *savefile )\r\n");
}


/*
================
idTarget_SetInfluence::Restore
================
*/
void idTarget_SetInfluence::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idTarget_SetInfluence::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idTarget_SetInfluence::Spawn
================
*/
void idTarget_SetInfluence::Spawn() {
    Sys_Printf("void idTarget_SetInfluence::Spawn()\r\n");
}


/*
================
idTarget_SetInfluence::Event_Flash
================
*/
void idTarget_SetInfluence::Event_Flash( float flash, int out ) {
    Sys_Printf("void idTarget_SetInfluence::Event_Flash( float flash, int out )\r\n");
}



/*
================
idTarget_SetInfluence::Event_ClearFlash
================
*/
void idTarget_SetInfluence::Event_ClearFlash( float flash ) {
    Sys_Printf("void idTarget_SetInfluence::Event_ClearFlash( float flash )\r\n");
}

/*
================
idTarget_SetInfluence::Event_GatherEntities
================
*/
void idTarget_SetInfluence::Event_GatherEntities() {
    Sys_Printf("void idTarget_SetInfluence::Event_GatherEntities()\r\n");
}


/*
================
idTarget_SetInfluence::Event_Activate
================
*/
void idTarget_SetInfluence::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_SetInfluence::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idTarget_SetInfluence::Think
================
*/
void idTarget_SetInfluence::Think( void ) {
    Sys_Printf("void idTarget_SetInfluence::Think( void )\r\n");
}



/*
================
idTarget_SetInfluence::Event_RestoreInfluence
================
*/
void idTarget_SetInfluence::Event_RestoreInfluence() {
    Sys_Printf("void idTarget_SetInfluence::Event_RestoreInfluence()\r\n");
}


/*
===============================================================================

idTarget_SetKeyVal

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_SetKeyVal )
	EVENT( EV_Activate,	idTarget_SetKeyVal::Event_Activate )
END_CLASS

/*
================
idTarget_SetKeyVal::Event_Activate
================
*/
void idTarget_SetKeyVal::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_SetKeyVal::Event_Activate( idEntity *activator )\r\n");
}


/*
===============================================================================

idTarget_SetFov

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_SetFov )
	EVENT( EV_Activate,	idTarget_SetFov::Event_Activate )
END_CLASS


/*
================
idTarget_SetFov::Save
================
*/
void idTarget_SetFov::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idTarget_SetFov::Save( idSaveGame *savefile )\r\n");
}


/*
================
idTarget_SetFov::Restore
================
*/
void idTarget_SetFov::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idTarget_SetFov::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idTarget_SetFov::Event_Activate
================
*/
void idTarget_SetFov::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_SetFov::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idTarget_SetFov::Think
================
*/
void idTarget_SetFov::Think( void ) {
    Sys_Printf("void idTarget_SetFov::Think( void )\r\n");
}



/*
===============================================================================

idTarget_SetPrimaryObjective

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_SetPrimaryObjective )
	EVENT( EV_Activate,	idTarget_SetPrimaryObjective::Event_Activate )
END_CLASS

/*
================
idTarget_SetPrimaryObjective::Event_Activate
================
*/
void idTarget_SetPrimaryObjective::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_SetPrimaryObjective::Event_Activate( idEntity *activator )\r\n");
}


/*
===============================================================================

idTarget_LockDoor

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_LockDoor )
	EVENT( EV_Activate,	idTarget_LockDoor::Event_Activate )
END_CLASS

/*
================
idTarget_LockDoor::Event_Activate
================
*/
void idTarget_LockDoor::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_LockDoor::Event_Activate( idEntity *activator )\r\n");
}


/*
===============================================================================

idTarget_CallObjectFunction

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_CallObjectFunction )
	EVENT( EV_Activate,	idTarget_CallObjectFunction::Event_Activate )
END_CLASS

/*
================
idTarget_CallObjectFunction::Event_Activate
================
*/
void idTarget_CallObjectFunction::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_CallObjectFunction::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idTarget_EnableLevelWeapons

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_EnableLevelWeapons )
	EVENT( EV_Activate,	idTarget_EnableLevelWeapons::Event_Activate )
END_CLASS

/*
================
idTarget_EnableLevelWeapons::Event_Activate
================
*/
void idTarget_EnableLevelWeapons::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_EnableLevelWeapons::Event_Activate( idEntity *activator )\r\n");
}


/*
===============================================================================

idTarget_Tip

===============================================================================
*/

const idEventDef EV_TipOff( "<TipOff>" );
extern const idEventDef EV_GetPlayerPos( "<getplayerpos>" );

CLASS_DECLARATION( idTarget, idTarget_Tip )
	EVENT( EV_Activate,		idTarget_Tip::Event_Activate )
	EVENT( EV_TipOff,		idTarget_Tip::Event_TipOff )
	EVENT( EV_GetPlayerPos,	idTarget_Tip::Event_GetPlayerPos )
END_CLASS


/*
================
idTarget_Tip::idTarget_Tip
================
*/
idTarget_Tip::idTarget_Tip( void ) {
	playerPos.Zero();
}

/*
================
idTarget_Tip::Spawn
================
*/
void idTarget_Tip::Spawn( void ) {
    Sys_Printf("void idTarget_Tip::Spawn( void )\r\n");
}


/*
================
idTarget_Tip::Save
================
*/
void idTarget_Tip::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idTarget_Tip::Save( idSaveGame *savefile )\r\n");
}


/*
================
idTarget_Tip::Restore
================
*/
void idTarget_Tip::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idTarget_Tip::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idTarget_Tip::Event_Activate
================
*/
void idTarget_Tip::Event_GetPlayerPos( void ) {
    Sys_Printf("void idTarget_Tip::Event_GetPlayerPos( void )\r\n");
}


/*
================
idTarget_Tip::Event_Activate
================
*/
void idTarget_Tip::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_Tip::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idTarget_Tip::Event_TipOff
================
*/
void idTarget_Tip::Event_TipOff( void ) {
    Sys_Printf("void idTarget_Tip::Event_TipOff( void )\r\n");
}



/*
===============================================================================

idTarget_GiveSecurity

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_GiveSecurity )
EVENT( EV_Activate,	idTarget_GiveSecurity::Event_Activate )
END_CLASS

/*
================
idTarget_GiveEmail::Event_Activate
================
*/
void idTarget_GiveSecurity::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_GiveSecurity::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idTarget_RemoveWeapons

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_RemoveWeapons )
EVENT( EV_Activate,	idTarget_RemoveWeapons::Event_Activate )
END_CLASS

/*
================
idTarget_RemoveWeapons::Event_Activate
================
*/
void idTarget_RemoveWeapons::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_RemoveWeapons::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idTarget_LevelTrigger

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_LevelTrigger )
EVENT( EV_Activate,	idTarget_LevelTrigger::Event_Activate )
END_CLASS

/*
================
idTarget_LevelTrigger::Event_Activate
================
*/
void idTarget_LevelTrigger::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_LevelTrigger::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

idTarget_EnableStamina

===============================================================================
*/

CLASS_DECLARATION( idTarget, idTarget_EnableStamina )
EVENT( EV_Activate,	idTarget_EnableStamina::Event_Activate )
END_CLASS

/*
================
idTarget_EnableStamina::Event_Activate
================
*/
void idTarget_EnableStamina::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_EnableStamina::Event_Activate( idEntity *activator )\r\n");
}


/*
===============================================================================

idTarget_FadeSoundClass

===============================================================================
*/

const idEventDef EV_RestoreVolume( "<RestoreVolume>" );
CLASS_DECLARATION( idTarget, idTarget_FadeSoundClass )
EVENT( EV_Activate,	idTarget_FadeSoundClass::Event_Activate )
EVENT( EV_RestoreVolume, idTarget_FadeSoundClass::Event_RestoreVolume )
END_CLASS

/*
================
idTarget_FadeSoundClass::Event_Activate
================
*/
void idTarget_FadeSoundClass::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idTarget_FadeSoundClass::Event_Activate( idEntity *activator )\r\n");
}


/*
================
idTarget_FadeSoundClass::Event_RestoreVolume
================
*/
void idTarget_FadeSoundClass::Event_RestoreVolume() {
    Sys_Printf("void idTarget_FadeSoundClass::Event_RestoreVolume()\r\n");
}


