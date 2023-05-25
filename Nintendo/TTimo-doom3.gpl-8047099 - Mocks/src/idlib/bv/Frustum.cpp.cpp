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

//#define FRUSTUM_DEBUG

/*
  bit 0 = min x
  bit 1 = max x
  bit 2 = min y
  bit 3 = max y
  bit 4 = min z
  bit 5 = max z
*/
static int boxVertPlanes[8] = {
	( (1<<0) | (1<<2) | (1<<4) ),
	( (1<<1) | (1<<2) | (1<<4) ),
	( (1<<1) | (1<<3) | (1<<4) ),
	( (1<<0) | (1<<3) | (1<<4) ),
	( (1<<0) | (1<<2) | (1<<5) ),
	( (1<<1) | (1<<2) | (1<<5) ),
	( (1<<1) | (1<<3) | (1<<5) ),
	( (1<<0) | (1<<3) | (1<<5) ),
};

/*
============
BoxToPoints
============
*/
void BoxToPoints( const idVec3 &center, const idVec3 &extents, const idMat3 &axis, idVec3 points[8] ) {
    Sys_Printf("void BoxToPoints( const idVec3 &center, const idVec3 &extents, const idMat3 &axis, idVec3 points[8] )\r\n");
}


/*
================
idFrustum::PlaneDistance
================
*/
float idFrustum::PlaneDistance( const idPlane &plane ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idFrustum::PlaneDistance( const idPlane &plane )\r\n");
    return retVal;
}


/*
================
idFrustum::PlaneSide
================
*/
int idFrustum::PlaneSide( const idPlane &plane, const float epsilon ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFrustum::PlaneSide( const idPlane &plane, const float epsilon )\r\n");
    return retVal;
}


/*
============
idFrustum::CullPoint
============
*/
bool idFrustum::CullPoint( const idVec3 &point ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::CullPoint( const idVec3 &point )\r\n");
    return retVal;
}


/*
============
idFrustum::CullLocalBox

  Tests if any of the planes of the frustum can be used as a separating plane.

   3 muls best case
  25 muls worst case
============
*/
bool idFrustum::CullLocalBox( const idVec3 &localOrigin, const idVec3 &extents, const idMat3 &localAxis ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::CullLocalBox( const idVec3 &localOrigin, const idVec3 &extents, const idMat3 &localAxis )\r\n");
    return retVal;
}


/*
============
idFrustum::CullBounds

  Tests if any of the planes of the frustum can be used as a separating plane.

  24 muls best case
  37 muls worst case
============
*/
bool idFrustum::CullBounds( const idBounds &bounds ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::CullBounds( const idBounds &bounds )\r\n");
    return retVal;
}


/*
============
idFrustum::CullBounds

  Tests if any of the planes of the frustum can be used as a separating plane.

  39 muls best case
  61 muls worst case
============
*/
bool idFrustum::CullBox( const idBox &box ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::CullBox( const idBox &box )\r\n");
    return retVal;
}


/*
============
idFrustum::CullSphere

  Tests if any of the planes of the frustum can be used as a separating plane.

   9 muls best case
  21 muls worst case
============
*/
bool idFrustum::CullSphere( const idSphere &sphere ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::CullSphere( const idSphere &sphere )\r\n");
    return retVal;
}


/*
============
idFrustum::CullLocalFrustum

  Tests if any of the planes of this frustum can be used as a separating plane.

   0 muls best case
  30 muls worst case
============
*/
bool idFrustum::CullLocalFrustum( const idFrustum &localFrustum, const idVec3 indexPoints[8], const idVec3 cornerVecs[4] ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::CullLocalFrustum( const idFrustum &localFrustum, const idVec3 indexPoints[8], const idVec3 cornerVecs[4] )\r\n");
    return retVal;
}


/*
============
idFrustum::CullFrustum

  Tests if any of the planes of this frustum can be used as a separating plane.

  58 muls best case
  88 muls worst case
============
*/
bool idFrustum::CullFrustum( const idFrustum &frustum ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::CullFrustum( const idFrustum &frustum )\r\n");
    return retVal;
}


/*
============
idFrustum::CullLocalWinding
============
*/
bool idFrustum::CullLocalWinding( const idVec3 *points, const int numPoints, int *pointCull ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::CullLocalWinding( const idVec3 *points, const int numPoints, int *pointCull )\r\n");
    return retVal;
}


/*
============
idFrustum::CullWinding
============
*/
bool idFrustum::CullWinding( const idWinding &winding ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::CullWinding( const idWinding &winding )\r\n");
    return retVal;
}


/*
============
idFrustum::BoundsCullLocalFrustum

  Tests if any of the bounding box planes can be used as a separating plane.
============
*/
bool idFrustum::BoundsCullLocalFrustum( const idBounds &bounds, const idFrustum &localFrustum, const idVec3 indexPoints[8], const idVec3 cornerVecs[4] ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::BoundsCullLocalFrustum( const idBounds &bounds, const idFrustum &localFrustum, const idVec3 indexPoints[8], const idVec3 cornerVecs[4] )\r\n");
    return retVal;
}


/*
============
idFrustum::LocalLineIntersection

   7 divs
  30 muls
============
*/
bool idFrustum::LocalLineIntersection( const idVec3 &start, const idVec3 &end ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::LocalLineIntersection( const idVec3 &start, const idVec3 &end )\r\n");
    return retVal;
}


/*
============
idFrustum::LocalRayIntersection

  Returns true if the ray starts inside the frustum.
  If there was an intersection scale1 <= scale2
============
*/
bool idFrustum::LocalRayIntersection( const idVec3 &start, const idVec3 &dir, float &scale1, float &scale2 ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::LocalRayIntersection( const idVec3 &start, const idVec3 &dir, float &scale1, float &scale2 )\r\n");
    return retVal;
}


/*
============
idFrustum::ContainsPoint
============
*/
bool idFrustum::ContainsPoint( const idVec3 &point ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::ContainsPoint( const idVec3 &point )\r\n");
    return retVal;
}


/*
============
idFrustum::LocalFrustumIntersectsFrustum
============
*/
bool idFrustum::LocalFrustumIntersectsFrustum( const idVec3 points[8], const bool testFirstSide ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::LocalFrustumIntersectsFrustum( const idVec3 points[8], const bool testFirstSide )\r\n");
    return retVal;
}


/*
============
idFrustum::LocalFrustumIntersectsBounds
============
*/
bool idFrustum::LocalFrustumIntersectsBounds( const idVec3 points[8], const idBounds &bounds ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::LocalFrustumIntersectsBounds( const idVec3 points[8], const idBounds &bounds )\r\n");
    return retVal;
}


/*
============
idFrustum::IntersectsBounds
============
*/
bool idFrustum::IntersectsBounds( const idBounds &bounds ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::IntersectsBounds( const idBounds &bounds )\r\n");
    return retVal;
}


/*
============
idFrustum::IntersectsBox
============
*/
bool idFrustum::IntersectsBox( const idBox &box ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::IntersectsBox( const idBox &box )\r\n");
    return retVal;
}


/*
============
idFrustum::IntersectsSphere

  FIXME: test this
============
*/
#define VORONOI_INDEX( x, y, z )	( x + y * 3 + z * 9 )

bool idFrustum::IntersectsSphere( const idSphere &sphere ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::IntersectsSphere( const idSphere &sphere )\r\n");
    return retVal;
}


/*
============
idFrustum::IntersectsFrustum
============
*/
bool idFrustum::IntersectsFrustum( const idFrustum &frustum ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::IntersectsFrustum( const idFrustum &frustum )\r\n");
    return retVal;
}


/*
============
idFrustum::IntersectsWinding
============
*/
bool idFrustum::IntersectsWinding( const idWinding &winding ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::IntersectsWinding( const idWinding &winding )\r\n");
    return retVal;
}


/*
============
idFrustum::LineIntersection

  Returns true if the line intersects the box between the start and end point.
============
*/
bool idFrustum::LineIntersection( const idVec3 &start, const idVec3 &end ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::LineIntersection( const idVec3 &start, const idVec3 &end )\r\n");
    return retVal;
}


/*
============
idFrustum::RayIntersection

  Returns true if the ray intersects the bounds.
  The ray can intersect the bounds in both directions from the start point.
  If start is inside the frustum then scale1 < 0 and scale2 > 0.
============
*/
bool idFrustum::RayIntersection( const idVec3 &start, const idVec3 &dir, float &scale1, float &scale2 ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::RayIntersection( const idVec3 &start, const idVec3 &dir, float &scale1, float &scale2 )\r\n");
    return retVal;
}


/*
============
idFrustum::FromProjection

  Creates a frustum which contains the projection of the bounds.
============
*/
bool idFrustum::FromProjection( const idBounds &bounds, const idVec3 &projectionOrigin, const float dFar ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::FromProjection( const idBounds &bounds, const idVec3 &projectionOrigin, const float dFar )\r\n");
    return retVal;
}


/*
============
idFrustum::FromProjection

  Creates a frustum which contains the projection of the box.
============
*/
bool idFrustum::FromProjection( const idBox &box, const idVec3 &projectionOrigin, const float dFar ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::FromProjection( const idBox &box, const idVec3 &projectionOrigin, const float dFar )\r\n");
    return retVal;
}


/*
============
idFrustum::FromProjection

  Creates a frustum which contains the projection of the sphere.
============
*/
bool idFrustum::FromProjection( const idSphere &sphere, const idVec3 &projectionOrigin, const float dFar ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::FromProjection( const idSphere &sphere, const idVec3 &projectionOrigin, const float dFar )\r\n");
    return retVal;
}


/*
============
idFrustum::ConstrainToBounds

  Returns false if no part of the bounds extends beyond the near plane.
============
*/
bool idFrustum::ConstrainToBounds( const idBounds &bounds ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::ConstrainToBounds( const idBounds &bounds )\r\n");
    return retVal;
}


/*
============
idFrustum::ConstrainToBox

  Returns false if no part of the box extends beyond the near plane.
============
*/
bool idFrustum::ConstrainToBox( const idBox &box ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::ConstrainToBox( const idBox &box )\r\n");
    return retVal;
}


/*
============
idFrustum::ConstrainToSphere

  Returns false if no part of the sphere extends beyond the near plane.
============
*/
bool idFrustum::ConstrainToSphere( const idSphere &sphere ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::ConstrainToSphere( const idSphere &sphere )\r\n");
    return retVal;
}


/*
============
idFrustum::ConstrainToFrustum

  Returns false if no part of the frustum extends beyond the near plane.
============
*/
bool idFrustum::ConstrainToFrustum( const idFrustum &frustum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::ConstrainToFrustum( const idFrustum &frustum )\r\n");
    return retVal;
}


/*
============
idFrustum::ToPlanes

  planes point outwards
============
*/
void idFrustum::ToPlanes( idPlane planes[6] ) const {
    Sys_Printf("void idFrustum::ToPlanes( idPlane planes[6] )\r\n");
}


/*
============
idFrustum::ToPoints
============
*/
void idFrustum::ToPoints( idVec3 points[8] ) const {
    Sys_Printf("void idFrustum::ToPoints( idVec3 points[8] )\r\n");
}


/*
============
idFrustum::ToClippedPoints
============
*/
void idFrustum::ToClippedPoints( const float fractions[4], idVec3 points[8] ) const {
    Sys_Printf("void idFrustum::ToClippedPoints( const float fractions[4], idVec3 points[8] )\r\n");
}


/*
============
idFrustum::ToIndexPoints
============
*/
void idFrustum::ToIndexPoints( idVec3 indexPoints[8] ) const {
    Sys_Printf("void idFrustum::ToIndexPoints( idVec3 indexPoints[8] )\r\n");
}


/*
============
idFrustum::ToIndexPointsAndCornerVecs

  22 muls
============
*/
void idFrustum::ToIndexPointsAndCornerVecs( idVec3 indexPoints[8], idVec3 cornerVecs[4] ) const {
    Sys_Printf("void idFrustum::ToIndexPointsAndCornerVecs( idVec3 indexPoints[8], idVec3 cornerVecs[4] )\r\n");
}


/*
============
idFrustum::AxisProjection

  18 muls
============
*/
void idFrustum::AxisProjection( const idVec3 indexPoints[8], const idVec3 cornerVecs[4], const idVec3 &dir, float &min, float &max ) const {
    Sys_Printf("void idFrustum::AxisProjection( const idVec3 indexPoints[8], const idVec3 cornerVecs[4], const idVec3 &dir, float &min, float &max )\r\n");
}


/*
============
idFrustum::AxisProjection

  40 muls
============
*/
void idFrustum::AxisProjection( const idVec3 &dir, float &min, float &max ) const {
    Sys_Printf("void idFrustum::AxisProjection( const idVec3 &dir, float &min, float &max )\r\n");
}


/*
============
idFrustum::AxisProjection

  76 muls
============
*/
void idFrustum::AxisProjection( const idMat3 &ax, idBounds &bounds ) const {
    Sys_Printf("void idFrustum::AxisProjection( const idMat3 &ax, idBounds &bounds )\r\n");
}


/*
============
idFrustum::AddLocalLineToProjectionBoundsSetCull
============
*/
void idFrustum::AddLocalLineToProjectionBoundsSetCull( const idVec3 &start, const idVec3 &end, int &startCull, int &endCull, idBounds &bounds ) const {
    Sys_Printf("void idFrustum::AddLocalLineToProjectionBoundsSetCull( const idVec3 &start, const idVec3 &end, int &startCull, int &endCull, idBounds &bounds )\r\n");
}


/*
============
idFrustum::AddLocalLineToProjectionBoundsUseCull
============
*/
void idFrustum::AddLocalLineToProjectionBoundsUseCull( const idVec3 &start, const idVec3 &end, int startCull, int endCull, idBounds &bounds ) const {
    Sys_Printf("void idFrustum::AddLocalLineToProjectionBoundsUseCull( const idVec3 &start, const idVec3 &end, int startCull, int endCull, idBounds &bounds )\r\n");
}


/*
============
idFrustum::BoundsRayIntersection

  Returns true if the ray starts inside the bounds.
  If there was an intersection scale1 <= scale2
============
*/
bool idFrustum::BoundsRayIntersection( const idBounds &bounds, const idVec3 &start, const idVec3 &dir, float &scale1, float &scale2 ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::BoundsRayIntersection( const idBounds &bounds, const idVec3 &start, const idVec3 &dir, float &scale1, float &scale2 )\r\n");
    return retVal;
}


/*
============
idFrustum::ProjectionBounds
============
*/
bool idFrustum::ProjectionBounds( const idBounds &bounds, idBounds &projectionBounds ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::ProjectionBounds( const idBounds &bounds, idBounds &projectionBounds )\r\n");
    return retVal;
}


#ifndef __linux__

/*
============
idFrustum::ProjectionBounds
============
*/
bool idFrustum::ProjectionBounds( const idBox &box, idBounds &projectionBounds ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::ProjectionBounds( const idBox &box, idBounds &projectionBounds )\r\n");
    return retVal;
}


#endif

/*
============
idFrustum::ProjectionBounds
============
*/
bool idFrustum::ProjectionBounds( const idSphere &sphere, idBounds &projectionBounds ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::ProjectionBounds( const idSphere &sphere, idBounds &projectionBounds )\r\n");
    return retVal;
}


/*
============
idFrustum::ProjectionBounds
============
*/
bool idFrustum::ProjectionBounds( const idFrustum &frustum, idBounds &projectionBounds ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::ProjectionBounds( const idFrustum &frustum, idBounds &projectionBounds )\r\n");
    return retVal;
}


/*
============
idFrustum::ProjectionBounds
============
*/
bool idFrustum::ProjectionBounds( const idWinding &winding, idBounds &projectionBounds ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::ProjectionBounds( const idWinding &winding, idBounds &projectionBounds )\r\n");
    return retVal;
}


/*
============
idFrustum::ClipFrustumToBox

  Clips the frustum far extents to the box.
============
*/
void idFrustum::ClipFrustumToBox( const idBox &box, float clipFractions[4], int clipPlanes[4] ) const {
    Sys_Printf("void idFrustum::ClipFrustumToBox( const idBox &box, float clipFractions[4], int clipPlanes[4] )\r\n");
}


/*
============
idFrustum::ClipLine

  Returns true if part of the line is inside the frustum.
  Does not clip to the near and far plane.
============
*/
bool idFrustum::ClipLine( const idVec3 localPoints[8], const idVec3 points[8], int startIndex, int endIndex, idVec3 &start, idVec3 &end, int &startClip, int &endClip ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::ClipLine( const idVec3 localPoints[8], const idVec3 points[8], int startIndex, int endIndex, idVec3 &start, idVec3 &end, int &startClip, int &endClip )\r\n");
    return retVal;
}


/*
============
idFrustum::AddLocalCapsToProjectionBounds
============
*/
static int capPointIndex[4][2] = {
	{ 0, 3 },
	{ 1, 2 },
	{ 0, 1 },
	{ 2, 3 }
};

ID_INLINE bool idFrustum::AddLocalCapsToProjectionBounds( const idVec3 endPoints[4], const int endPointCull[4], const idVec3 &point, int pointCull, int pointClip, idBounds &projectionBounds ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::AddLocalCapsToProjectionBounds( const idVec3 endPoints[4], const int endPointCull[4], const idVec3 &point, int pointCull, int pointClip, idBounds &projectionBounds )\r\n");
    return retVal;
}


/*
============
idFrustum::ClippedProjectionBounds
============
*/
bool idFrustum::ClippedProjectionBounds( const idFrustum &frustum, const idBox &clipBox, idBounds &projectionBounds ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFrustum::ClippedProjectionBounds( const idFrustum &frustum, const idBox &clipBox, idBounds &projectionBounds )\r\n");
    return retVal;
}

