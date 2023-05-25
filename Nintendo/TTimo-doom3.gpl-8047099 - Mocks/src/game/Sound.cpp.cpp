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

  SOUND

===============================================================================
*/

const idEventDef EV_Speaker_On( "On", NULL );
const idEventDef EV_Speaker_Off( "Off", NULL );
const idEventDef EV_Speaker_Timer( "<timer>", NULL );

CLASS_DECLARATION( idEntity, idSound )
	EVENT( EV_Activate,				idSound::Event_Trigger )
	EVENT( EV_Speaker_On,			idSound::Event_On )
	EVENT( EV_Speaker_Off,			idSound::Event_Off )
	EVENT( EV_Speaker_Timer,		idSound::Event_Timer )
END_CLASS


/*
================
idSound::idSound
================
*/
idSound::idSound( void ) {
	lastSoundVol = 0.0f;
	soundVol = 0.0f;
	shakeTranslate.Zero();
	shakeRotate.Zero();
	random = 0.0f;
	wait = 0.0f;
	timerOn = false;
	playingUntilTime = 0;
}

/*
================
idSound::Save
================
*/
void idSound::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idSound::Save( idSaveGame *savefile )\r\n");
}


/*
================
idSound::Restore
================
*/
void idSound::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idSound::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idSound::Spawn
================
*/
void idSound::Spawn( void ) {
    Sys_Printf("void idSound::Spawn( void )\r\n");
}


/*
================
idSound::Event_Trigger

this will toggle the idle idSound on and off
================
*/
void idSound::Event_Trigger( idEntity *activator ) {
    Sys_Printf("void idSound::Event_Trigger( idEntity *activator )\r\n");
}


/*
================
idSound::Event_Timer
================
*/
void idSound::Event_Timer( void ) {
    Sys_Printf("void idSound::Event_Timer( void )\r\n");
}


/*
================
idSound::Think
================
*/
void idSound::Think( void ) {
    Sys_Printf("void idSound::Think( void )\r\n");
}


/*
===============
idSound::UpdateChangableSpawnArgs
===============
*/
void idSound::UpdateChangeableSpawnArgs( const idDict *source ) {
    Sys_Printf("void idSound::UpdateChangeableSpawnArgs( const idDict *source )\r\n");
}


/*
===============
idSound::SetSound
===============
*/
void idSound::SetSound( const char *sound, int channel ) {
    Sys_Printf("void idSound::SetSound( const char *sound, int channel )\r\n");
}


/*
================
idSound::DoSound
================
*/
void idSound::DoSound( bool play ) {
    Sys_Printf("void idSound::DoSound( bool play )\r\n");
}


/*
================
idSound::Event_On
================
*/
void idSound::Event_On( void ) {
    Sys_Printf("void idSound::Event_On( void )\r\n");
}


/*
================
idSound::Event_Off
================
*/
void idSound::Event_Off( void ) {
    Sys_Printf("void idSound::Event_Off( void )\r\n");
}


/*
===============
idSound::ShowEditingDialog
===============
*/
void idSound::ShowEditingDialog( void ) {
    Sys_Printf("void idSound::ShowEditingDialog( void )\r\n");
}


