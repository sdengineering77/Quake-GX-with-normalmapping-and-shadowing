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

#ifdef _D3XP

#include "Game_local.h"
#include "Misc.h"

#define MAX_DRAG_TRACE_DISTANCE			384.0f
#define TRACE_BOUNDS_SIZE				3.f
#define HOLD_DISTANCE					72.f
#define FIRING_DELAY					1000.0f
#define DRAG_FAIL_LEN					64.f
#define	THROW_SCALE						1000
#define MAX_PICKUP_VELOCITY				1500 * 1500
#define MAX_PICKUP_SIZE					96

/*
===============================================================================

	Allows entities to be dragged through the world with physics.

===============================================================================
*/

CLASS_DECLARATION( idEntity, idGrabber )
END_CLASS

/*
==============
idGrabber::idGrabber
==============
*/
idGrabber::idGrabber( void ) {
	dragEnt = NULL;
	owner = NULL;
	beam = NULL;
	beamTarget = NULL;
	oldUcmdFlags = 0;
	shakeForceFlip = false;
	holdingAF = false;
	endTime = 0;
	lastFiredTime = -FIRING_DELAY;
	dragFailTime = 0;
	startDragTime = 0;
	warpId = -1;
	dragTraceDist = MAX_DRAG_TRACE_DISTANCE;
}

/*
==============
idGrabber::~idGrabber
==============
*/
idGrabber::~idGrabber( void ) {
	StopDrag( true );
	if ( beam ) {
		delete beam;
	}
	if ( beamTarget ) {
		delete beamTarget;
	}
}

/*
==============
idGrabber::Save
==============
*/
void idGrabber::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idGrabber::Save( idSaveGame *savefile )\r\n");
}


/*
==============
idGrabber::Restore
==============
*/
void idGrabber::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idGrabber::Restore( idRestoreGame *savefile )\r\n");
}


/*
==============
idGrabber::Initialize
==============
*/
void idGrabber::Initialize( void ) {
    Sys_Printf("void idGrabber::Initialize( void )\r\n");
}


/*
==============
idGrabber::SetDragDistance
==============
*/
void idGrabber::SetDragDistance( float dist ) {
    Sys_Printf("void idGrabber::SetDragDistance( float dist )\r\n");
}


/*
==============
idGrabber::StartDrag
==============
*/
void idGrabber::StartDrag( idEntity *grabEnt, int id ) {
    Sys_Printf("void idGrabber::StartDrag( idEntity *grabEnt, int id )\r\n");
}


/*
==============
idGrabber::StopDrag
==============
*/
void idGrabber::StopDrag( bool dropOnly ) {
    Sys_Printf("void idGrabber::StopDrag( bool dropOnly )\r\n");
}


/*
==============
idGrabber::Update
==============
*/
int idGrabber::Update( idPlayer *player, bool hide ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idGrabber::Update( idPlayer *player, bool hide )\r\n");
    return retVal;
}


/*
======================
idGrabber::UpdateBeams
======================
*/
void idGrabber::UpdateBeams( void ) {
    Sys_Printf("void idGrabber::UpdateBeams( void )\r\n");
}


/*
==============
idGrabber::ApplyShake
==============
*/
void idGrabber::ApplyShake( void ) {
    Sys_Printf("void idGrabber::ApplyShake( void )\r\n");
}


/*
==============
idGrabber::grabbableAI
==============
*/
bool idGrabber::grabbableAI( const char *aiName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGrabber::grabbableAI( const char *aiName )\r\n");
    return retVal;
}


#endif
