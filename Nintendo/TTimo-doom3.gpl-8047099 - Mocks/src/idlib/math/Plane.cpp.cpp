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

idPlane plane_origin( 0.0f, 0.0f, 0.0f, 0.0f );

/*
================
idPlane::Type
================
*/
int idPlane::Type( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPlane::Type( void )\r\n");
    return retVal;
}


/*
================
idPlane::HeightFit
================
*/
bool idPlane::HeightFit( const idVec3 *points, const int numPoints ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlane::HeightFit( const idVec3 *points, const int numPoints )\r\n");
    return retVal;
}


/*
================
idPlane::PlaneIntersection
================
*/
bool idPlane::PlaneIntersection( const idPlane &plane, idVec3 &start, idVec3 &dir ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlane::PlaneIntersection( const idPlane &plane, idVec3 &start, idVec3 &dir )\r\n");
    return retVal;
}


/*
=============
idPlane::ToString
=============
*/
const char *idPlane::ToString( int precision ) const {
    Sys_Printf("char *idPlane::ToString( int precision )\r\n");
    return NULL;
}

