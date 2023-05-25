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

Collision detection for translational motion

===============================================================================
*/

/*
================
idCollisionModelManagerLocal::TranslateEdgeThroughEdge

  calculates fraction of the translation completed at which the edges collide
================
*/
ID_INLINE int idCollisionModelManagerLocal::TranslateEdgeThroughEdge( idVec3 &cross, idPluecker &l1, idPluecker &l2, float *fraction ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::TranslateEdgeThroughEdge( idVec3 &cross, idPluecker &l1, idPluecker &l2, float *fraction )\r\n");
    return retVal;
}


/*
================
CM_AddContact
================
*/
ID_INLINE void CM_AddContact( cm_traceWork_t *tw ) {
    Sys_Printf("void CM_AddContact( cm_traceWork_t *tw )\r\n");
}


/*
================
CM_SetVertexSidedness

  stores for the given model vertex at which side of one of the trm edges it passes
================
*/
ID_INLINE void CM_SetVertexSidedness( cm_vertex_t *v, const idPluecker &vpl, const idPluecker &epl, const int bitNum ) {
    Sys_Printf("void CM_SetVertexSidedness( cm_vertex_t *v, const idPluecker &vpl, const idPluecker &epl, const int bitNum )\r\n");
}


/*
================
CM_SetEdgeSidedness

  stores for the given model edge at which side one of the trm vertices
================
*/
ID_INLINE void CM_SetEdgeSidedness( cm_edge_t *edge, const idPluecker &vpl, const idPluecker &epl, const int bitNum ) {
    Sys_Printf("void CM_SetEdgeSidedness( cm_edge_t *edge, const idPluecker &vpl, const idPluecker &epl, const int bitNum )\r\n");
}


/*
================
idCollisionModelManagerLocal::TranslateTrmEdgeThroughPolygon
================
*/
void idCollisionModelManagerLocal::TranslateTrmEdgeThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *poly, cm_trmEdge_t *trmEdge ) {
    Sys_Printf("void idCollisionModelManagerLocal::TranslateTrmEdgeThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *poly, cm_trmEdge_t *trmEdge )\r\n");
}


/*
================
CM_TranslationPlaneFraction
================
*/

#if 0

float CM_TranslationPlaneFraction( idPlane &plane, idVec3 &start, idVec3 &end ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float CM_TranslationPlaneFraction( idPlane &plane, idVec3 &start, idVec3 &end )\r\n");
    return retVal;
}


#else

float CM_TranslationPlaneFraction( idPlane &plane, idVec3 &start, idVec3 &end ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float CM_TranslationPlaneFraction( idPlane &plane, idVec3 &start, idVec3 &end )\r\n");
    return retVal;
}


#endif

/*
================
idCollisionModelManagerLocal::TranslateTrmVertexThroughPolygon
================
*/
void idCollisionModelManagerLocal::TranslateTrmVertexThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *poly, cm_trmVertex_t *v, int bitNum ) {
    Sys_Printf("void idCollisionModelManagerLocal::TranslateTrmVertexThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *poly, cm_trmVertex_t *v, int bitNum )\r\n");
}


/*
================
idCollisionModelManagerLocal::TranslatePointThroughPolygon
================
*/
void idCollisionModelManagerLocal::TranslatePointThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *poly, cm_trmVertex_t *v ) {
    Sys_Printf("void idCollisionModelManagerLocal::TranslatePointThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *poly, cm_trmVertex_t *v )\r\n");
}


/*
================
idCollisionModelManagerLocal::TranslateVertexThroughTrmPolygon
================
*/
void idCollisionModelManagerLocal::TranslateVertexThroughTrmPolygon( cm_traceWork_t *tw, cm_trmPolygon_t *trmpoly, cm_polygon_t *poly, cm_vertex_t *v, idVec3 &endp, idPluecker &pl ) {
    Sys_Printf("void idCollisionModelManagerLocal::TranslateVertexThroughTrmPolygon( cm_traceWork_t *tw, cm_trmPolygon_t *trmpoly, cm_polygon_t *poly, cm_vertex_t *v, idVec3 &endp, idPluecker &pl )\r\n");
}


/*
================
idCollisionModelManagerLocal::TranslateTrmThroughPolygon

  returns true if the polygon blocks the complete translation
================
*/
bool idCollisionModelManagerLocal::TranslateTrmThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *p ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::TranslateTrmThroughPolygon( cm_traceWork_t *tw, cm_polygon_t *p )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::SetupTrm
================
*/
void idCollisionModelManagerLocal::SetupTrm( cm_traceWork_t *tw, const idTraceModel *trm ) {
    Sys_Printf("void idCollisionModelManagerLocal::SetupTrm( cm_traceWork_t *tw, const idTraceModel *trm )\r\n");
}


/*
================
idCollisionModelManagerLocal::SetupTranslationHeartPlanes
================
*/
void idCollisionModelManagerLocal::SetupTranslationHeartPlanes( cm_traceWork_t *tw ) {
    Sys_Printf("void idCollisionModelManagerLocal::SetupTranslationHeartPlanes( cm_traceWork_t *tw )\r\n");
}


/*
================
idCollisionModelManagerLocal::Translation
================
*/
#ifdef _DEBUG
static int entered = 0;
#endif

void idCollisionModelManagerLocal::Translation( trace_t *results, const idVec3 &start, const idVec3 &end,
										const idTraceModel *trm, const idMat3 &trmAxis, int contentMask,
										cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis ) {
    Sys_Printf("void idCollisionModelManagerLocal::Translation( trace_t *results, const idVec3 &start, const idVec3 &end,const idTraceModel *trm, const idMat3 &trmAxis, int contentMask,cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis )\r\n");
}

