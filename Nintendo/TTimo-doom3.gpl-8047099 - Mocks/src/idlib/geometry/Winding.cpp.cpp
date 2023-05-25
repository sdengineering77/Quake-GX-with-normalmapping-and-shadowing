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


//===============================================================
//
//	idWinding
//
//===============================================================

/*
=============
idWinding::ReAllocate
=============
*/
bool idWinding::ReAllocate( int n, bool keep ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding::ReAllocate( int n, bool keep )\r\n");
    return retVal;
}


/*
=============
idWinding::BaseForPlane
=============
*/
void idWinding::BaseForPlane( const idVec3 &normal, const float dist ) {
    Sys_Printf("void idWinding::BaseForPlane( const idVec3 &normal, const float dist )\r\n");
}


/*
=============
idWinding::Split
=============
*/
int idWinding::Split( const idPlane &plane, const float epsilon, idWinding **front, idWinding **back ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWinding::Split( const idPlane &plane, const float epsilon, idWinding **front, idWinding **back )\r\n");
    return retVal;
}


/*
=============
idWinding::Clip
=============
*/
idWinding *idWinding::Clip( const idPlane &plane, const float epsilon, const bool keepOn ) {
    Sys_Printf("idWinding *idWinding::Clip( const idPlane &plane, const float epsilon, const bool keepOn )\r\n");
    return NULL;
}


/*
=============
idWinding::ClipInPlace
=============
*/
bool idWinding::ClipInPlace( const idPlane &plane, const float epsilon, const bool keepOn ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding::ClipInPlace( const idPlane &plane, const float epsilon, const bool keepOn )\r\n");
    return retVal;
}


/*
=============
idWinding::Copy
=============
*/
idWinding *idWinding::Copy( void ) const {
    Sys_Printf("idWinding *idWinding::Copy( void )\r\n");
    return NULL;
}


/*
=============
idWinding::Reverse
=============
*/
idWinding *idWinding::Reverse( void ) const {
    Sys_Printf("idWinding *idWinding::Reverse( void )\r\n");
    return NULL;
}


/*
=============
idWinding::ReverseSelf
=============
*/
void idWinding::ReverseSelf( void ) {
    Sys_Printf("void idWinding::ReverseSelf( void )\r\n");
}


/*
=============
idWinding::Check
=============
*/
bool idWinding::Check( bool print ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding::Check( bool print )\r\n");
    return retVal;
}


/*
=============
idWinding::GetArea
=============
*/
float idWinding::GetArea( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idWinding::GetArea( void )\r\n");
    return retVal;
}


/*
=============
idWinding::GetRadius
=============
*/
float idWinding::GetRadius( const idVec3 &center ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idWinding::GetRadius( const idVec3 &center )\r\n");
    return retVal;
}


/*
=============
idWinding::GetCenter
=============
*/
idVec3 idWinding::GetCenter( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idWinding::GetCenter( void )\r\n");
    return retVal;
}


/*
=============
idWinding::GetPlane
=============
*/
void idWinding::GetPlane( idVec3 &normal, float &dist ) const {
    Sys_Printf("void idWinding::GetPlane( idVec3 &normal, float &dist )\r\n");
}


/*
=============
idWinding::GetPlane
=============
*/
void idWinding::GetPlane( idPlane &plane ) const {
    Sys_Printf("void idWinding::GetPlane( idPlane &plane )\r\n");
}


/*
=============
idWinding::GetBounds
=============
*/
void idWinding::GetBounds( idBounds &bounds ) const {
    Sys_Printf("void idWinding::GetBounds( idBounds &bounds )\r\n");
}


/*
=============
idWinding::RemoveEqualPoints
=============
*/
void idWinding::RemoveEqualPoints( const float epsilon ) {
    Sys_Printf("void idWinding::RemoveEqualPoints( const float epsilon )\r\n");
}


/*
=============
idWinding::RemoveColinearPoints
=============
*/
void idWinding::RemoveColinearPoints( const idVec3 &normal, const float epsilon ) {
    Sys_Printf("void idWinding::RemoveColinearPoints( const idVec3 &normal, const float epsilon )\r\n");
}


/*
=============
idWinding::AddToConvexHull

  Adds the given winding to the convex hull.
  Assumes the current winding already is a convex hull with three or more points.
=============
*/
void idWinding::AddToConvexHull( const idWinding *winding, const idVec3 &normal, const float epsilon ) {
    Sys_Printf("void idWinding::AddToConvexHull( const idWinding *winding, const idVec3 &normal, const float epsilon )\r\n");
}


/*
=============
idWinding::AddToConvexHull

  Add a point to the convex hull.
  The current winding must be convex but may be degenerate and can have less than three points.
=============
*/
void idWinding::AddToConvexHull( const idVec3 &point, const idVec3 &normal, const float epsilon ) {
    Sys_Printf("void idWinding::AddToConvexHull( const idVec3 &point, const idVec3 &normal, const float epsilon )\r\n");
}


/*
=============
idWinding::TryMerge
=============
*/
#define	CONTINUOUS_EPSILON	0.005f

idWinding *idWinding::TryMerge( const idWinding &w, const idVec3 &planenormal, int keep ) const {
    Sys_Printf("idWinding *idWinding::TryMerge( const idWinding &w, const idVec3 &planenormal, int keep )\r\n");
    return NULL;
}


/*
=============
idWinding::RemovePoint
=============
*/
void idWinding::RemovePoint( int point ) {
    Sys_Printf("void idWinding::RemovePoint( int point )\r\n");
}


/*
=============
idWinding::InsertPoint
=============
*/
void idWinding::InsertPoint( const idVec3 &point, int spot ) {
    Sys_Printf("void idWinding::InsertPoint( const idVec3 &point, int spot )\r\n");
}


/*
=============
idWinding::InsertPointIfOnEdge
=============
*/
bool idWinding::InsertPointIfOnEdge( const idVec3 &point, const idPlane &plane, const float epsilon ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding::InsertPointIfOnEdge( const idVec3 &point, const idPlane &plane, const float epsilon )\r\n");
    return retVal;
}


/*
=============
idWinding::IsTiny
=============
*/
#define	EDGE_LENGTH		0.2f

bool idWinding::IsTiny( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding::IsTiny( void )\r\n");
    return retVal;
}


/*
=============
idWinding::IsHuge
=============
*/
bool idWinding::IsHuge( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding::IsHuge( void )\r\n");
    return retVal;
}


/*
=============
idWinding::Print
=============
*/
void idWinding::Print( void ) const {
    Sys_Printf("void idWinding::Print( void )\r\n");
}


/*
=============
idWinding::PlaneDistance
=============
*/
float idWinding::PlaneDistance( const idPlane &plane ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idWinding::PlaneDistance( const idPlane &plane )\r\n");
    return retVal;
}


/*
=============
idWinding::PlaneSide
=============
*/
int idWinding::PlaneSide( const idPlane &plane, const float epsilon ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWinding::PlaneSide( const idPlane &plane, const float epsilon )\r\n");
    return retVal;
}


/*
=============
idWinding::PlanesConcave
=============
*/
#define WCONVEX_EPSILON		0.2f

bool idWinding::PlanesConcave( const idWinding &w2, const idVec3 &normal1, const idVec3 &normal2, float dist1, float dist2 ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding::PlanesConcave( const idWinding &w2, const idVec3 &normal1, const idVec3 &normal2, float dist1, float dist2 )\r\n");
    return retVal;
}


/*
=============
idWinding::PointInside
=============
*/
bool idWinding::PointInside( const idVec3 &normal, const idVec3 &point, const float epsilon ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding::PointInside( const idVec3 &normal, const idVec3 &point, const float epsilon )\r\n");
    return retVal;
}


/*
=============
idWinding::LineIntersection
=============
*/
bool idWinding::LineIntersection( const idPlane &windingPlane, const idVec3 &start, const idVec3 &end, bool backFaceCull ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding::LineIntersection( const idPlane &windingPlane, const idVec3 &start, const idVec3 &end, bool backFaceCull )\r\n");
    return retVal;
}


/*
=============
idWinding::RayIntersection
=============
*/
bool idWinding::RayIntersection( const idPlane &windingPlane, const idVec3 &start, const idVec3 &dir, float &scale, bool backFaceCull ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWinding::RayIntersection( const idPlane &windingPlane, const idVec3 &start, const idVec3 &dir, float &scale, bool backFaceCull )\r\n");
    return retVal;
}


/*
=================
idWinding::TriangleArea
=================
*/
float idWinding::TriangleArea( const idVec3 &a, const idVec3 &b, const idVec3 &c ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idWinding::TriangleArea( const idVec3 &a, const idVec3 &b, const idVec3 &c )\r\n");
    return retVal;
}



//===============================================================
//
//	idFixedWinding
//
//===============================================================

/*
=============
idFixedWinding::ReAllocate
=============
*/
bool idFixedWinding::ReAllocate( int n, bool keep ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFixedWinding::ReAllocate( int n, bool keep )\r\n");
    return retVal;
}


/*
=============
idFixedWinding::Split
=============
*/
int idFixedWinding::Split( idFixedWinding *back, const idPlane &plane, const float epsilon ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFixedWinding::Split( idFixedWinding *back, const idPlane &plane, const float epsilon )\r\n");
    return retVal;
}

