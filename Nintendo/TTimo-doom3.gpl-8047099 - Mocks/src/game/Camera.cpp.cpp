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

  idCamera

  Base class for cameras

===============================================================================
*/

ABSTRACT_DECLARATION( idEntity, idCamera )
END_CLASS

/*
=====================
idCamera::Spawn
=====================
*/
void idCamera::Spawn( void ) {
    Sys_Printf("void idCamera::Spawn( void )\r\n");
}


/*
=====================
idCamera::GetRenderView
=====================
*/
renderView_t *idCamera::GetRenderView() {
    Sys_Printf("renderView_t *idCamera::GetRenderView()\r\n");
    return NULL;
}


/***********************************************************************

  idCameraView

***********************************************************************/
const idEventDef EV_Camera_SetAttachments( "<getattachments>", NULL );

CLASS_DECLARATION( idCamera, idCameraView )
	EVENT( EV_Activate,				idCameraView::Event_Activate )
	EVENT( EV_Camera_SetAttachments, idCameraView::Event_SetAttachments )
END_CLASS


/*
===============
idCameraView::idCameraView
================
*/
idCameraView::idCameraView() {
	fov = 90.0f;
	attachedTo = NULL;
	attachedView = NULL;
}

/*
===============
idCameraView::Save
================
*/
void idCameraView::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idCameraView::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idCameraView::Restore
================
*/
void idCameraView::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idCameraView::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idCameraView::Event_SetAttachments
================
*/
void idCameraView::Event_SetAttachments(  ) {
    Sys_Printf("void idCameraView::Event_SetAttachments(  )\r\n");
}


/*
===============
idCameraView::Event_Activate
================
*/
void idCameraView::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idCameraView::Event_Activate( idEntity *activator )\r\n");
}


/*
=====================
idCameraView::Stop
=====================
*/
void idCameraView::Stop( void ) {
    Sys_Printf("void idCameraView::Stop( void )\r\n");
}



/*
=====================
idCameraView::Spawn
=====================
*/
void idCameraView::SetAttachment( idEntity **e, const char *p  ) {
    Sys_Printf("void idCameraView::SetAttachment( idEntity **e, const char *p  )\r\n");
}



/*
=====================
idCameraView::Spawn
=====================
*/
void idCameraView::Spawn( void ) {
    Sys_Printf("void idCameraView::Spawn( void )\r\n");
}


/*
=====================
idCameraView::GetViewParms
=====================
*/
void idCameraView::GetViewParms( renderView_t *view ) {
    Sys_Printf("void idCameraView::GetViewParms( renderView_t *view )\r\n");
}


/*
===============================================================================

  idCameraAnim

===============================================================================
*/

const idEventDef EV_Camera_Start( "start", NULL );
const idEventDef EV_Camera_Stop( "stop", NULL );

CLASS_DECLARATION( idCamera, idCameraAnim )
	EVENT( EV_Thread_SetCallback,	idCameraAnim::Event_SetCallback )
	EVENT( EV_Camera_Stop,			idCameraAnim::Event_Stop )
	EVENT( EV_Camera_Start,			idCameraAnim::Event_Start )
	EVENT( EV_Activate,				idCameraAnim::Event_Activate )
END_CLASS


/*
=====================
idCameraAnim::idCameraAnim
=====================
*/
idCameraAnim::idCameraAnim() {
	threadNum = 0;
	offset.Zero();
	frameRate = 0;
	cycle = 1;
	starttime = 0;
	activator = NULL;

}

/*
=====================
idCameraAnim::~idCameraAnim
=====================
*/
idCameraAnim::~idCameraAnim() {
	if ( gameLocal.GetCamera() == this ) {
		gameLocal.SetCamera( NULL );
	}
}

/*
===============
idCameraAnim::Save
================
*/
void idCameraAnim::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idCameraAnim::Save( idSaveGame *savefile )\r\n");
}


/*
===============
idCameraAnim::Restore
================
*/
void idCameraAnim::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idCameraAnim::Restore( idRestoreGame *savefile )\r\n");
}


/*
=====================
idCameraAnim::Spawn
=====================
*/
void idCameraAnim::Spawn( void ) {
    Sys_Printf("void idCameraAnim::Spawn( void )\r\n");
}


/*
================
idCameraAnim::Load
================
*/
void idCameraAnim::LoadAnim( void ) {
    Sys_Printf("void idCameraAnim::LoadAnim( void )\r\n");
}


/*
===============
idCameraAnim::Start
================
*/
void idCameraAnim::Start( void ) {
    Sys_Printf("void idCameraAnim::Start( void )\r\n");
}


/*
=====================
idCameraAnim::Stop
=====================
*/
void idCameraAnim::Stop( void ) {
    Sys_Printf("void idCameraAnim::Stop( void )\r\n");
}


/*
=====================
idCameraAnim::Think
=====================
*/
void idCameraAnim::Think( void ) {
    Sys_Printf("void idCameraAnim::Think( void )\r\n");
}


/*
=====================
idCameraAnim::GetViewParms
=====================
*/
void idCameraAnim::GetViewParms( renderView_t *view ) {
    Sys_Printf("void idCameraAnim::GetViewParms( renderView_t *view )\r\n");
}


/*
===============
idCameraAnim::Event_Activate
================
*/
void idCameraAnim::Event_Activate( idEntity *_activator ) {
    Sys_Printf("void idCameraAnim::Event_Activate( idEntity *_activator )\r\n");
}


/*
===============
idCameraAnim::Event_Start
================
*/
void idCameraAnim::Event_Start( void ) {
    Sys_Printf("void idCameraAnim::Event_Start( void )\r\n");
}


/*
===============
idCameraAnim::Event_Stop
================
*/
void idCameraAnim::Event_Stop( void ) {
    Sys_Printf("void idCameraAnim::Event_Stop( void )\r\n");
}


/*
================
idCameraAnim::Event_SetCallback
================
*/
void idCameraAnim::Event_SetCallback( void ) {
    Sys_Printf("void idCameraAnim::Event_SetCallback( void )\r\n");
}

