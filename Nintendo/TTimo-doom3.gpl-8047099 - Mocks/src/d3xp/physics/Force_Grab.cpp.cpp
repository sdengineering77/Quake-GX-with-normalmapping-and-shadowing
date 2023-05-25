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

#ifdef _D3XP

#include "../Game_local.h"

CLASS_DECLARATION( idForce, idForce_Grab )
END_CLASS


/*
================
idForce_Grab::Save
================
*/
void idForce_Grab::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idForce_Grab::Save( idSaveGame *savefile )\r\n");
}


/*
================
idForce_Grab::Restore
================
*/
void idForce_Grab::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idForce_Grab::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idForce_Grab::idForce_Grab
================
*/
idForce_Grab::idForce_Grab( void ) {
	damping			= 0.5f;
	physics			= NULL;
	id				= 0;
}

/*
================
idForce_Grab::~idForce_Grab
================
*/
idForce_Grab::~idForce_Grab( void ) {
}

/*
================
idForce_Grab::Init
================
*/
void idForce_Grab::Init( float damping ) {
    Sys_Printf("void idForce_Grab::Init( float damping )\r\n");
}


/*
================
idForce_Grab::SetPhysics
================
*/
void idForce_Grab::SetPhysics( idPhysics *phys, int id, const idVec3 &goal ) {
    Sys_Printf("void idForce_Grab::SetPhysics( idPhysics *phys, int id, const idVec3 &goal )\r\n");
}


/*
================
idForce_Grab::SetGoalPosition
================
*/
void idForce_Grab::SetGoalPosition( const idVec3 &goal ) {
    Sys_Printf("void idForce_Grab::SetGoalPosition( const idVec3 &goal )\r\n");
}


/*
=================
idForce_Grab::GetDistanceToGoal
=================
*/
float idForce_Grab::GetDistanceToGoal( void ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idForce_Grab::GetDistanceToGoal( void )\r\n");
    return retVal;
}


/*
================
idForce_Grab::Evaluate
================
*/
void idForce_Grab::Evaluate( int time ) {
    Sys_Printf("void idForce_Grab::Evaluate( int time )\r\n");
}


/*
================
idForce_Grab::RemovePhysics
================
*/
void idForce_Grab::RemovePhysics( const idPhysics *phys ) {
    Sys_Printf("void idForce_Grab::RemovePhysics( const idPhysics *phys )\r\n");
}


#endif	// _D3XP
