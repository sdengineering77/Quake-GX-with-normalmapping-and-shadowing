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

#include "../precompiled.h"
#pragma hdrstop

#define POLYTOPE_VERTEX_EPSILON		0.1f


/*
====================
idSurface_Polytope::FromPlanes
====================
*/
void idSurface_Polytope::FromPlanes( const idPlane *planes, const int numPlanes ) {
    Sys_Printf("void idSurface_Polytope::FromPlanes( const idPlane *planes, const int numPlanes )\r\n");
}


/*
====================
idSurface_Polytope::SetupTetrahedron
====================
*/
void idSurface_Polytope::SetupTetrahedron( const idBounds &bounds ) {
    Sys_Printf("void idSurface_Polytope::SetupTetrahedron( const idBounds &bounds )\r\n");
}


/*
====================
idSurface_Polytope::SetupHexahedron
====================
*/
void idSurface_Polytope::SetupHexahedron( const idBounds &bounds ) {
    Sys_Printf("void idSurface_Polytope::SetupHexahedron( const idBounds &bounds )\r\n");
}


/*
====================
idSurface_Polytope::SetupOctahedron
====================
*/
void idSurface_Polytope::SetupOctahedron( const idBounds &bounds ) {
    Sys_Printf("void idSurface_Polytope::SetupOctahedron( const idBounds &bounds )\r\n");
}


/*
====================
idSurface_Polytope::SetupDodecahedron
====================
*/
void idSurface_Polytope::SetupDodecahedron( const idBounds &bounds ) {
    Sys_Printf("void idSurface_Polytope::SetupDodecahedron( const idBounds &bounds )\r\n");
}


/*
====================
idSurface_Polytope::SetupIcosahedron
====================
*/
void idSurface_Polytope::SetupIcosahedron( const idBounds &bounds ) {
    Sys_Printf("void idSurface_Polytope::SetupIcosahedron( const idBounds &bounds )\r\n");
}


/*
====================
idSurface_Polytope::SetupCylinder
====================
*/
void idSurface_Polytope::SetupCylinder( const idBounds &bounds, const int numSides ) {
    Sys_Printf("void idSurface_Polytope::SetupCylinder( const idBounds &bounds, const int numSides )\r\n");
}


/*
====================
idSurface_Polytope::SetupCone
====================
*/
void idSurface_Polytope::SetupCone( const idBounds &bounds, const int numSides ) {
    Sys_Printf("void idSurface_Polytope::SetupCone( const idBounds &bounds, const int numSides )\r\n");
}


/*
====================
idSurface_Polytope::SplitPolytope
====================
*/
int idSurface_Polytope::SplitPolytope( const idPlane &plane, const float epsilon, idSurface_Polytope **front, idSurface_Polytope **back ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSurface_Polytope::SplitPolytope( const idPlane &plane, const float epsilon, idSurface_Polytope **front, idSurface_Polytope **back )\r\n");
    return retVal;
}

