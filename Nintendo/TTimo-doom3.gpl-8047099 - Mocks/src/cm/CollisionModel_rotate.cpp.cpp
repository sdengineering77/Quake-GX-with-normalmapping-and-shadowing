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

/*
===============================================================================

	Trace model vs. polygonal model collision detection.

===============================================================================
*/

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "CollisionModel_local.h"

/*
===============================================================================

Collision detection for rotational motion

===============================================================================
*/

// epsilon for round-off errors in epsilon calculations
#define CM_PL_RANGE_EPSILON			1e-4f
// if the collision point is this close to the rotation axis it is not considered a collision
#define ROTATION_AXIS_EPSILON		(CM_CLIP_EPSILON*0.25f)


/*
================
CM_RotatePoint

  rotates a point about an arbitrary axis using the tangent of half the rotation angle
================
*/
void CM_RotatePoint( idVec3 &point, const idVec3 &origin, const idVec3 &axis, const float tanHalfAngle ) {
    Sys_Printf("void CM_RotatePoint( idVec3 &point, const idVec3 &origin, const idVec3 &axis, const float tanHalfAngle )\r\n");
}


/*
================
CM_RotateEdge

  rotates an edge about an arbitrary axis using the tangent of half the rotation angle
================
*/
void CM_RotateEdge( idVec3 &start, idVec3 &end, const idVec3 &origin, const idVec3 &axis, const float tanHalfAngle ) {
    Sys_Printf("void CM_RotateEdge( idVec3 &start, idVec3 &end, const idVec3 &origin, const idVec3 &axis, const float tanHalfAngle )\r\n");
}


/*
================
idCollisionModelManagerLocal::CollisionBetweenEdgeBounds

  verifies if the collision of two edges occurs between the edge bounds
  also calculates the collision point and collision plane normal if the collision occurs between the bounds
================
*/
int idCollisionModelManagerLocal::CollisionBetweenEdgeBounds( cm_traceWork_t *tw, const idVec3 &va, const idVec3 &vb,
												   const idVec3 &vc, const idVec3 &vd, float tanHalfAngle,
												   idVec3 &collisionPoint, idVec3 &collisionNormal ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::CollisionBetweenEdgeBounds( cm_traceWork_t *tw, const idVec3 &va, const idVec3 &vb, const idVec3 &vc, const idVec3 &vd, float tanHalfAngle, idVec3 &collisionPoint, idVec3 &collisionNormal )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::RotateEdgeThroughEdge

  calculates the tangent of half the rotation angle at which the edges collide
================
*/
int idCollisionModelManagerLocal::RotateEdgeThroughEdge( cm_traceWork_t *tw, const idPluecker &pl1,
												const idVec3 &vc, const idVec3 &vd,
												const float minTan, float &tanHalfAngle ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::RotateEdgeThroughEdge( cm_traceWork_t *tw, const idPluecker &pl1,const idVec3 &vc, const idVec3 &vd,const float minTan, float &tanHalfAngle )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::EdgeFurthestFromEdge

  calculates the direction of motion at the initial position, where dir < 0 means the edges move towards each other
  if the edges move away from each other the tangent of half the rotation angle at which
  the edges are furthest apart is also calculated
================
*/
int idCollisionModelManagerLocal::EdgeFurthestFromEdge( cm_traceWork_t *tw, const idPluecker &pl1,
												const idVec3 &vc, const idVec3 &vd,
												float &tanHalfAngle, float &dir ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::EdgeFurthestFromEdge( cm_traceWork_t *tw, const idPluecker &pl1,const idVec3 &vc, const idVec3 &vd,float &tanHalfAngle, float &dir )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::RotateTrmEdgeThroughPolygon
================
*/
void idCollisionModelManagerLocal::RotateTrmEdgeThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *poly, cm_trmEdge_t *trmEdge ) {
    Sys_Printf("void idCollisionModelManagerLocal::RotateTrmEdgeThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *poly, cm_trmEdge_t *trmEdge )\r\n");
}


/*
================
idCollisionModelManagerLocal::RotatePointThroughPlane

  calculates the tangent of half the rotation angle at which the point collides with the plane
================
*/
int idCollisionModelManagerLocal::RotatePointThroughPlane( const cm_traceWork_t *tw, const idVec3 &point, const idPlane &plane,
													const float angle, const float minTan, float &tanHalfAngle ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::RotatePointThroughPlane( const cm_traceWork_t *tw, const idVec3 &point, const idPlane &plane,const float angle, const float minTan, float &tanHalfAngle )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::PointFurthestFromPlane

  calculates the direction of motion at the initial position, where dir < 0 means the point moves towards the plane
  if the point moves away from the plane the tangent of half the rotation angle at which
  the point is furthest away from the plane is also calculated
================
*/
int idCollisionModelManagerLocal::PointFurthestFromPlane( const cm_traceWork_t *tw, const idVec3 &point, const idPlane &plane,
													const float angle, float &tanHalfAngle, float &dir ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::PointFurthestFromPlane( const cm_traceWork_t *tw, const idVec3 &point, const idPlane &plane,const float angle, float &tanHalfAngle, float &dir )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::RotatePointThroughEpsilonPlane
================
*/
int idCollisionModelManagerLocal::RotatePointThroughEpsilonPlane( const cm_traceWork_t *tw, const idVec3 &point, const idVec3 &endPoint,
							const idPlane &plane, const float angle, const idVec3 &origin,
							float &tanHalfAngle, idVec3 &collisionPoint, idVec3 &endDir ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::RotatePointThroughEpsilonPlane( const cm_traceWork_t *tw, const idVec3 &point, const idVec3 &endPoint,const idPlane &plane, const float angle, const idVec3 &origin,float &tanHalfAngle, idVec3 &collisionPoint, idVec3 &endDir )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::RotateTrmVertexThroughPolygon
================
*/
void idCollisionModelManagerLocal::RotateTrmVertexThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *poly, cm_trmVertex_t *v, int vertexNum ) {
    Sys_Printf("void idCollisionModelManagerLocal::RotateTrmVertexThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *poly, cm_trmVertex_t *v, int vertexNum )\r\n");
}


/*
================
idCollisionModelManagerLocal::RotateVertexThroughTrmPolygon
================
*/
void idCollisionModelManagerLocal::RotateVertexThroughTrmPolygon( cm_traceWork_t *tw, cm_trmPolygon_t *trmpoly, cm_polygon_t *poly, cm_vertex_t *v, idVec3 &rotationOrigin ) {
    Sys_Printf("void idCollisionModelManagerLocal::RotateVertexThroughTrmPolygon( cm_traceWork_t *tw, cm_trmPolygon_t *trmpoly, cm_polygon_t *poly, cm_vertex_t *v, idVec3 &rotationOrigin )\r\n");
}


/*
================
idCollisionModelManagerLocal::RotateTrmThroughPolygon

  returns true if the polygon blocks the complete rotation
================
*/
bool idCollisionModelManagerLocal::RotateTrmThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *p ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::RotateTrmThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *p )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::BoundsForRotation

  only for rotations < 180 degrees
================
*/
void idCollisionModelManagerLocal::BoundsForRotation( const idVec3 &origin, const idVec3 &axis, const idVec3 &start, const idVec3 &end, idBounds &bounds ) {
    Sys_Printf("void idCollisionModelManagerLocal::BoundsForRotation( const idVec3 &origin, const idVec3 &axis, const idVec3 &start, const idVec3 &end, idBounds &bounds )\r\n");
}


/*
================
idCollisionModelManagerLocal::Rotation180
================
*/
void idCollisionModelManagerLocal::Rotation180( trace_t *results, const idVec3 &rorg, const idVec3 &axis,
										const float startAngle, const float endAngle, const idVec3 &start,
										const idTraceModel *trm, const idMat3 &trmAxis, int contentMask,
										cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis ) {
    Sys_Printf("void idCollisionModelManagerLocal::Rotation180( trace_t *results, const idVec3 &rorg, const idVec3 &axis,const float startAngle, const float endAngle, const idVec3 &start,const idTraceModel *trm, const idMat3 &trmAxis, int contentMask,cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis )\r\n");
}


/*
================
idCollisionModelManagerLocal::Rotation
================
*/
#ifdef _DEBUG
static int entered = 0;
#endif

void idCollisionModelManagerLocal::Rotation( trace_t *results, const idVec3 &start, const idRotation &rotation,
										const idTraceModel *trm, const idMat3 &trmAxis, int contentMask,
										cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis ) {
    Sys_Printf("void idCollisionModelManagerLocal::Rotation( trace_t *results, const idVec3 &start, const idRotation &rotation,const idTraceModel *trm, const idMat3 &trmAxis, int contentMask,cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis )\r\n");
}

