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


idSphere sphere_zero( vec3_zero, 0.0f );


/*
================
idSphere::PlaneDistance
================
*/
float idSphere::PlaneDistance( const idPlane &plane ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idSphere::PlaneDistance( const idPlane &plane )\r\n");
    return retVal;
}


/*
================
idSphere::PlaneSide
================
*/
int idSphere::PlaneSide( const idPlane &plane, const float epsilon ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSphere::PlaneSide( const idPlane &plane, const float epsilon )\r\n");
    return retVal;
}


/*
============
idSphere::LineIntersection

  Returns true if the line intersects the sphere between the start and end point.
============
*/
bool idSphere::LineIntersection( const idVec3 &start, const idVec3 &end ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSphere::LineIntersection( const idVec3 &start, const idVec3 &end )\r\n");
    return retVal;
}


/*
============
idSphere::RayIntersection

  Returns true if the ray intersects the sphere.
  The ray can intersect the sphere in both directions from the start point.
  If start is inside the sphere then scale1 < 0 and scale2 > 0.
============
*/
bool idSphere::RayIntersection( const idVec3 &start, const idVec3 &dir, float &scale1, float &scale2 ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSphere::RayIntersection( const idVec3 &start, const idVec3 &dir, float &scale1, float &scale2 )\r\n");
    return retVal;
}


/*
============
idSphere::FromPoints

  Tight sphere for a point set.
============
*/
void idSphere::FromPoints( const idVec3 *points, const int numPoints ) {
    Sys_Printf("void idSphere::FromPoints( const idVec3 *points, const int numPoints )\r\n");
}

