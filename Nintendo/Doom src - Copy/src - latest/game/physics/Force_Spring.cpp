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

CLASS_DECLARATION( idForce, idForce_Spring )
END_CLASS

/*
================
idForce_Spring::idForce_Spring
================
*/
idForce_Spring::idForce_Spring( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idForce_Spring::idForce_Spring( void ) size %d\r\n", sizeof(*this));
#endif

	Kstretch		= 100.0f;
	Kcompress		= 100.0f;
	damping			= 0.0f;
	restLength		= 0.0f;
	physics1		= NULL;
	id1				= 0;
	p1				= vec3_zero;
	physics2		= NULL;
	id2				= 0;
	p2				= vec3_zero;
}

/*
================
idForce_Spring::~idForce_Spring
================
*/
idForce_Spring::~idForce_Spring( void ) {
}

/*
================
idForce_Spring::InitSpring
================
*/
void idForce_Spring::InitSpring( float Kstretch, float Kcompress, float damping, float restLength ) {
    Sys_Printf("void idForce_Spring::InitSpring( float Kstretch, float Kcompress, float damping, float restLength )\r\n");
}


/*
================
idForce_Spring::SetPosition
================
*/
void idForce_Spring::SetPosition( idPhysics *physics1, int id1, const idVec3 &p1, idPhysics *physics2, int id2, const idVec3 &p2 ) {
    Sys_Printf("void idForce_Spring::SetPosition( idPhysics *physics1, int id1, const idVec3 &p1, idPhysics *physics2, int id2, const idVec3 &p2 )\r\n");
}


/*
================
idForce_Spring::Evaluate
================
*/
void idForce_Spring::Evaluate( int time ) {
    Sys_Printf("void idForce_Spring::Evaluate( int time )\r\n");
}


/*
================
idForce_Spring::RemovePhysics
================
*/
void idForce_Spring::RemovePhysics( const idPhysics *phys ) {
    Sys_Printf("void idForce_Spring::RemovePhysics( const idPhysics *phys )\r\n");
}

