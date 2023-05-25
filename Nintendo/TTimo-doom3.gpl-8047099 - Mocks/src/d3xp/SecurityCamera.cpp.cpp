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

  SecurityCamera.cpp

  Security camera that triggers targets when player is in view

*/

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "Game_local.h"


/***********************************************************************

  idSecurityCamera
	
***********************************************************************/

const idEventDef EV_SecurityCam_ReverseSweep( "<reverseSweep>" );
const idEventDef EV_SecurityCam_ContinueSweep( "<continueSweep>" );
const idEventDef EV_SecurityCam_Pause( "<pause>" );
const idEventDef EV_SecurityCam_Alert( "<alert>" );
const idEventDef EV_SecurityCam_AddLight( "<addLight>" );

CLASS_DECLARATION( idEntity, idSecurityCamera )
	EVENT( EV_SecurityCam_ReverseSweep,		idSecurityCamera::Event_ReverseSweep )
	EVENT( EV_SecurityCam_ContinueSweep,	idSecurityCamera::Event_ContinueSweep )
	EVENT( EV_SecurityCam_Pause,			idSecurityCamera::Event_Pause )
	EVENT( EV_SecurityCam_Alert,			idSecurityCamera::Event_Alert )
	EVENT( EV_SecurityCam_AddLight,			idSecurityCamera::Event_AddLight )
END_CLASS

/*
================
idSecurityCamera::Save
================
*/
void idSecurityCamera::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idSecurityCamera::Save( idSaveGame *savefile )\r\n");
}


/*
================
idSecurityCamera::Restore
================
*/
void idSecurityCamera::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idSecurityCamera::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idSecurityCamera::Spawn
================
*/
void idSecurityCamera::Spawn( void ) {
    Sys_Printf("void idSecurityCamera::Spawn( void )\r\n");
}


/*
================
idSecurityCamera::Event_AddLight
================
*/
void idSecurityCamera::Event_AddLight( void ) {
    Sys_Printf("void idSecurityCamera::Event_AddLight( void )\r\n");
}


/*
================
idSecurityCamera::DrawFov
================
*/
void idSecurityCamera::DrawFov( void ) {
    Sys_Printf("void idSecurityCamera::DrawFov( void )\r\n");
}


/*
================
idSecurityCamera::GetRenderView
================
*/
renderView_t *idSecurityCamera::GetRenderView() {
    Sys_Printf("renderView_t *idSecurityCamera::GetRenderView()\r\n");
    return NULL;
}


/*
================
idSecurityCamera::CanSeePlayer
================
*/
bool idSecurityCamera::CanSeePlayer( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSecurityCamera::CanSeePlayer( void )\r\n");
    return retVal;
}


/*
================
idSecurityCamera::SetAlertMode
================
*/
void idSecurityCamera::SetAlertMode( int alert ) {
    Sys_Printf("void idSecurityCamera::SetAlertMode( int alert )\r\n");
}


/*
================
idSecurityCamera::Think
================
*/
void idSecurityCamera::Think( void ) {
    Sys_Printf("void idSecurityCamera::Think( void )\r\n");
}


/*
================
idSecurityCamera::GetAxis
================
*/
const idVec3 idSecurityCamera::GetAxis( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idSecurityCamera::GetAxis( void )\r\n");
    return retVal;
}
;

/*
================
idSecurityCamera::SweepSpeed
================
*/
float idSecurityCamera::SweepSpeed( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idSecurityCamera::SweepSpeed( void )\r\n");
    return retVal;
}


/*
================
idSecurityCamera::StartSweep
================
*/
void idSecurityCamera::StartSweep( void ) {
    Sys_Printf("void idSecurityCamera::StartSweep( void )\r\n");
}


/*
================
idSecurityCamera::Event_ContinueSweep
================
*/
void idSecurityCamera::Event_ContinueSweep( void ) {
    Sys_Printf("void idSecurityCamera::Event_ContinueSweep( void )\r\n");
}


/*
================
idSecurityCamera::Event_Alert
================
*/
void idSecurityCamera::Event_Alert( void ) {
    Sys_Printf("void idSecurityCamera::Event_Alert( void )\r\n");
}


/*
================
idSecurityCamera::Event_ReverseSweep
================
*/
void idSecurityCamera::Event_ReverseSweep( void ) {
    Sys_Printf("void idSecurityCamera::Event_ReverseSweep( void )\r\n");
}


/*
================
idSecurityCamera::Event_Pause
================
*/
void idSecurityCamera::Event_Pause( void ) {
    Sys_Printf("void idSecurityCamera::Event_Pause( void )\r\n");
}


/*
============
idSecurityCamera::Killed
============
*/
void idSecurityCamera::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    Sys_Printf("void idSecurityCamera::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
}



/*
============
idSecurityCamera::Pain
============
*/
bool idSecurityCamera::Pain( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSecurityCamera::Pain( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
    return retVal;
}



/*
================
idSecurityCamera::Present

Present is called to allow entities to generate refEntities, lights, etc for the renderer.
================
*/
void idSecurityCamera::Present( void ) {
    Sys_Printf("void idSecurityCamera::Present( void )\r\n");
}

