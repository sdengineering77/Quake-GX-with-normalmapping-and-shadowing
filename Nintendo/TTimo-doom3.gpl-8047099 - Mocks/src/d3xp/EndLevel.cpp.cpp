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

  game_endlevel.cpp

  This entity is targeted to complete a level, and it also handles
  running the stats and moving the camera.

*/


CLASS_DECLARATION( idEntity, idTarget_EndLevel )
	EVENT( EV_Activate,		idTarget_EndLevel::Event_Trigger )
END_CLASS

/*
================
idTarget_EndLevel::Spawn
================
*/
void idTarget_EndLevel::Spawn( void ) {
    Sys_Printf("void idTarget_EndLevel::Spawn( void )\r\n");
}


/*
================
idTarget_EndLevel::~idTarget_EndLevel()
================
*/
idTarget_EndLevel::~idTarget_EndLevel() {
	//FIXME: need to go to smart ptrs for gui allocs or the unique method 
	//delete gui;
}

/*
================
idTarget_EndLevel::Event_Trigger
================
*/
void idTarget_EndLevel::Event_Trigger( idEntity *activator ) {
    Sys_Printf("void idTarget_EndLevel::Event_Trigger( idEntity *activator )\r\n");
}


/*
================
idTarget_EndLevel::Draw
================
*/
void idTarget_EndLevel::Draw() {
    Sys_Printf("void idTarget_EndLevel::Draw()\r\n");
}


/*
================
idTarget_EndLevel::PlayerCommand
================
*/
void idTarget_EndLevel::PlayerCommand( int buttons ) {
    Sys_Printf("void idTarget_EndLevel::PlayerCommand( int buttons )\r\n");
}


/*
================
idTarget_EndLevel::ExitCommand
================
*/
const char *idTarget_EndLevel::ExitCommand() {
    Sys_Printf("char *idTarget_EndLevel::ExitCommand()\r\n");
    return NULL;
}

