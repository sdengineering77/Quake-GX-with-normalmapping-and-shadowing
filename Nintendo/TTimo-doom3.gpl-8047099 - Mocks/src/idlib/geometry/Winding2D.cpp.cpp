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

#include "Winding2D.h"


/*
============
GetAxialBevel
============
*/
bool GetAxialBevel( const idVec3 &plane1, const idVec3 &plane2, const idVec2 &point, idVec3 &bevel ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GetAxialBevel( const idVec3 &plane1, const idVec3 &plane2, const idVec2 &point, idVec3 &bevel )\r\n");
    return retVal;
}


/*
============
idWinding2D::ExpandForAxialBox
============
*/
void idWinding2D::ExpandForAxialBox( const idVec2 bounds[2] ) {
    Sys_Printf("void idWinding2D::ExpandForAxialBox( const idVec2 bounds[2] )\r\n");
}


/*
============
idWinding2D::Expand
============
*/
void idWinding2D::Expand( const float d ) {
    Sys_Printf("void idWinding2D::Expand( const float d )\r\n");
}


/*
=============
idWinding2D::Split
=============
*/
int idWinding2D::Split( const idVec3 &plane, const float epsilon, idWinding2D **front, idWinding2D **back ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWinding2D::Split( const idVec3 &plane, const float epsilon, idWinding2D **front, idWinding2D **back )\r\n");
    return retVal;
}


/*
============
idWinding2D::ClipInPlace
============
*/
bool idWinding2D::ClipInPlace( const idVec3 &plane, const float epsilon, const bool keepOn ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding2D::ClipInPlace( const idVec3 &plane, const float epsilon, const bool keepOn )\r\n");
    return retVal;
}


/*
=============
idWinding2D::Copy
=============
*/
idWinding2D *idWinding2D::Copy( void ) const {
    Sys_Printf("idWinding2D *idWinding2D::Copy( void )\r\n");
    return NULL;
}


/*
=============
idWinding2D::Reverse
=============
*/
idWinding2D *idWinding2D::Reverse( void ) const {
    Sys_Printf("idWinding2D *idWinding2D::Reverse( void )\r\n");
    return NULL;
}


/*
============
idWinding2D::GetArea
============
*/
float idWinding2D::GetArea( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idWinding2D::GetArea( void )\r\n");
    return retVal;
}


/*
============
idWinding2D::GetCenter
============
*/
idVec2 idWinding2D::GetCenter( void ) const {
    idVec2 retVal;
    memset(&retVal, 0, sizeof(idVec2));
    Sys_Printf("idVec2 idWinding2D::GetCenter( void )\r\n");
    return retVal;
}


/*
============
idWinding2D::GetRadius
============
*/
float idWinding2D::GetRadius( const idVec2 &center ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idWinding2D::GetRadius( const idVec2 &center )\r\n");
    return retVal;
}


/*
============
idWinding2D::GetBounds
============
*/
void idWinding2D::GetBounds( idVec2 bounds[2] ) const {
    Sys_Printf("void idWinding2D::GetBounds( idVec2 bounds[2] )\r\n");
}


/*
=============
idWinding2D::IsTiny
=============
*/
#define	EDGE_LENGTH		0.2f

bool idWinding2D::IsTiny( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding2D::IsTiny( void )\r\n");
    return retVal;
}


/*
=============
idWinding2D::IsHuge
=============
*/
bool idWinding2D::IsHuge( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding2D::IsHuge( void )\r\n");
    return retVal;
}


/*
=============
idWinding2D::Print
=============
*/
void idWinding2D::Print( void ) const {
    Sys_Printf("void idWinding2D::Print( void )\r\n");
}


/*
=============
idWinding2D::PlaneDistance
=============
*/
float idWinding2D::PlaneDistance( const idVec3 &plane ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idWinding2D::PlaneDistance( const idVec3 &plane )\r\n");
    return retVal;
}


/*
=============
idWinding2D::PlaneSide
=============
*/
int idWinding2D::PlaneSide( const idVec3 &plane, const float epsilon ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWinding2D::PlaneSide( const idVec3 &plane, const float epsilon )\r\n");
    return retVal;
}


/*
============
idWinding2D::PointInside
============
*/
bool idWinding2D::PointInside( const idVec2 &point, const float epsilon ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding2D::PointInside( const idVec2 &point, const float epsilon )\r\n");
    return retVal;
}


/*
============
idWinding2D::LineIntersection
============
*/
bool idWinding2D::LineIntersection( const idVec2 &start, const idVec2 &end ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding2D::LineIntersection( const idVec2 &start, const idVec2 &end )\r\n");
    return retVal;
}


/*
============
idWinding2D::RayIntersection
============
*/
bool idWinding2D::RayIntersection( const idVec2 &start, const idVec2 &dir, float &scale1, float &scale2, int *edgeNums ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding2D::RayIntersection( const idVec2 &start, const idVec2 &dir, float &scale1, float &scale2, int *edgeNums )\r\n");
    return retVal;
}

