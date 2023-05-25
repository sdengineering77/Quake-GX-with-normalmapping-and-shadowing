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

CLASS_DECLARATION( idClass, idForce )
END_CLASS

idList<idForce*> idForce::forceList;

/*
================
idForce::idForce
================
*/
idForce::idForce( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idForce::idForce( void ) size %d\r\n", sizeof(*this));
#endif

	forceList.Append( this );
}

/*
================
idForce::~idForce
================
*/
idForce::~idForce( void ) {
	forceList.Remove( this );
}

/*
================
idForce::DeletePhysics
================
*/
void idForce::DeletePhysics( const idPhysics *phys ) {
    Sys_Printf("void idForce::DeletePhysics( const idPhysics *phys )\r\n");
}


/*
================
idForce::ClearForceList
================
*/
void idForce::ClearForceList( void ) {
    Sys_Printf("void idForce::ClearForceList( void )\r\n");
}


/*
================
idForce::Evaluate
================
*/
void idForce::Evaluate( int time ) {
    Sys_Printf("void idForce::Evaluate( int time )\r\n");
}


/*
================
idForce::RemovePhysics
================
*/
void idForce::RemovePhysics( const idPhysics *phys ) {
    Sys_Printf("void idForce::RemovePhysics( const idPhysics *phys )\r\n");
}

