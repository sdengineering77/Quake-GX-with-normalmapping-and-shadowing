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

idBounds bounds_zero( vec3_zero, vec3_zero );

/*
============
idBounds::GetRadius
============
*/
float idBounds::GetRadius( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idBounds::GetRadius( void )\r\n");
    return retVal;
}


/*
============
idBounds::GetRadius
============
*/
float idBounds::GetRadius( const idVec3 &center ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idBounds::GetRadius( const idVec3 &center )\r\n");
    return retVal;
}


/*
================
idBounds::PlaneDistance
================
*/
float idBounds::PlaneDistance( const idPlane &plane ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idBounds::PlaneDistance( const idPlane &plane )\r\n");
    return retVal;
}


/*
================
idBounds::PlaneSide
================
*/
int idBounds::PlaneSide( const idPlane &plane, const float epsilon ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBounds::PlaneSide( const idPlane &plane, const float epsilon )\r\n");
    return retVal;
}


/*
============
idBounds::LineIntersection

  Returns true if the line intersects the bounds between the start and end point.
============
*/
bool idBounds::LineIntersection( const idVec3 &start, const idVec3 &end ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBounds::LineIntersection( const idVec3 &start, const idVec3 &end )\r\n");
    return retVal;
}


/*
============
idBounds::RayIntersection

  Returns true if the ray intersects the bounds.
  The ray can intersect the bounds in both directions from the start point.
  If start is inside the bounds it is considered an intersection with scale = 0
============
*/
bool idBounds::RayIntersection( const idVec3 &start, const idVec3 &dir, float &scale ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBounds::RayIntersection( const idVec3 &start, const idVec3 &dir, float &scale )\r\n");
    return retVal;
}


/*
============
idBounds::FromTransformedBounds
============
*/
void idBounds::FromTransformedBounds( const idBounds &bounds, const idVec3 &origin, const idMat3 &axis ) {
    Sys_Printf("void idBounds::FromTransformedBounds( const idBounds &bounds, const idVec3 &origin, const idMat3 &axis )\r\n");
}


/*
============
idBounds::FromPoints

  Most tight bounds for a point set.
============
*/
void idBounds::FromPoints( const idVec3 *points, const int numPoints ) {
    Sys_Printf("void idBounds::FromPoints( const idVec3 *points, const int numPoints )\r\n");
}


/*
============
idBounds::FromPointTranslation

  Most tight bounds for the translational movement of the given point.
============
*/
void idBounds::FromPointTranslation( const idVec3 &point, const idVec3 &translation ) {
    Sys_Printf("void idBounds::FromPointTranslation( const idVec3 &point, const idVec3 &translation )\r\n");
}


/*
============
idBounds::FromBoundsTranslation

  Most tight bounds for the translational movement of the given bounds.
============
*/
void idBounds::FromBoundsTranslation( const idBounds &bounds, const idVec3 &origin, const idMat3 &axis, const idVec3 &translation ) {
    Sys_Printf("void idBounds::FromBoundsTranslation( const idBounds &bounds, const idVec3 &origin, const idMat3 &axis, const idVec3 &translation )\r\n");
}


/*
================
BoundsForPointRotation

  only for rotations < 180 degrees
================
*/
idBounds BoundsForPointRotation( const idVec3 &start, const idRotation &rotation ) {
    idBounds retVal;
    memset(&retVal, 0, sizeof(idBounds));
    Sys_Printf("idBounds BoundsForPointRotation( const idVec3 &start, const idRotation &rotation )\r\n");
    return retVal;
}


/*
============
idBounds::FromPointRotation

  Most tight bounds for the rotational movement of the given point.
============
*/
void idBounds::FromPointRotation( const idVec3 &point, const idRotation &rotation ) {
    Sys_Printf("void idBounds::FromPointRotation( const idVec3 &point, const idRotation &rotation )\r\n");
}


/*
============
idBounds::FromBoundsRotation

  Most tight bounds for the rotational movement of the given bounds.
============
*/
void idBounds::FromBoundsRotation( const idBounds &bounds, const idVec3 &origin, const idMat3 &axis, const idRotation &rotation ) {
    Sys_Printf("void idBounds::FromBoundsRotation( const idBounds &bounds, const idVec3 &origin, const idMat3 &axis, const idRotation &rotation )\r\n");
}


/*
============
idBounds::ToPoints
============
*/
void idBounds::ToPoints( idVec3 points[8] ) const {
    Sys_Printf("void idBounds::ToPoints( idVec3 points[8] )\r\n");
}

