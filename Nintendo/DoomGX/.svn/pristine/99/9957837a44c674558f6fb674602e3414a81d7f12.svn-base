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

CLASS_DECLARATION( idForce, idForce_Drag )
END_CLASS

/*
================
idForce_Drag::idForce_Drag
================
*/
idForce_Drag::idForce_Drag( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idForce_Drag::idForce_Drag( void ) size %d\r\n", sizeof(*this));
#endif

	damping			= 0.5f;
	dragPosition	= vec3_zero;
	physics			= NULL;
	id				= 0;
	p				= vec3_zero;
	dragPosition	= vec3_zero;
}

/*
================
idForce_Drag::~idForce_Drag
================
*/
idForce_Drag::~idForce_Drag( void ) {
}

/*
================
idForce_Drag::Init
================
*/
void idForce_Drag::Init( float damping ) {
    Sys_Printf("void idForce_Drag::Init( float damping )\r\n");
}


/*
================
idForce_Drag::SetPhysics
================
*/
void idForce_Drag::SetPhysics( idPhysics *phys, int id, const idVec3 &p ) {
    Sys_Printf("void idForce_Drag::SetPhysics( idPhysics *phys, int id, const idVec3 &p )\r\n");
}


/*
================
idForce_Drag::SetDragPosition
================
*/
void idForce_Drag::SetDragPosition( const idVec3 &pos ) {
    Sys_Printf("void idForce_Drag::SetDragPosition( const idVec3 &pos )\r\n");
}


/*
================
idForce_Drag::GetDragPosition
================
*/
const idVec3 &idForce_Drag::GetDragPosition( void ) const {
	return this->dragPosition;
}

/*
================
idForce_Drag::GetDraggedPosition
================
*/
const idVec3 idForce_Drag::GetDraggedPosition( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idForce_Drag::GetDraggedPosition( void )\r\n");
    return retVal;
}


/*
================
idForce_Drag::Evaluate
================
*/
void idForce_Drag::Evaluate( int time ) {
    Sys_Printf("void idForce_Drag::Evaluate( int time )\r\n");
}


/*
================
idForce_Drag::RemovePhysics
================
*/
void idForce_Drag::RemovePhysics( const idPhysics *phys ) {
    Sys_Printf("void idForce_Drag::RemovePhysics( const idPhysics *phys )\r\n");
}

