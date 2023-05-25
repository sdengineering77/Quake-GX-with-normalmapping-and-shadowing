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

Contents test

===============================================================================
*/

/*
================
idCollisionModelManagerLocal::TestTrmVertsInBrush

  returns true if any of the trm vertices is inside the brush
================
*/
bool idCollisionModelManagerLocal::TestTrmVertsInBrush( cm_traceWork_t *tw, cm_brush_t *b ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::TestTrmVertsInBrush( cm_traceWork_t *tw, cm_brush_t *b )\r\n");
    return retVal;
}


/*
================
CM_SetTrmEdgeSidedness
================
*/
#define CM_SetTrmEdgeSidedness( edge, bpl, epl, bitNum ) {							\
	if ( !(edge->sideSet & (1<<bitNum)) ) {											\
		float fl;																	\
		fl = (bpl).PermutedInnerProduct( epl );										\
		edge->side = (edge->side & ~(1<<bitNum)) | (FLOATSIGNBITSET(fl) << bitNum);	\
		edge->sideSet |= (1 << bitNum);												\
	}																				\
}

/*
================
CM_SetTrmPolygonSidedness
================
*/
#define CM_SetTrmPolygonSidedness( v, plane, bitNum ) {								\
	if ( !((v)->sideSet & (1<<bitNum)) ) {											\
		float fl;																	\
		fl = plane.Distance( (v)->p );												\
		/* cannot use float sign bit because it is undetermined when fl == 0.0f */	\
		if ( fl < 0.0f ) {															\
			(v)->side |= (1 << bitNum);												\
		}																			\
		else {																		\
			(v)->side &= ~(1 << bitNum);											\
		}																			\
		(v)->sideSet |= (1 << bitNum);												\
	}																				\
}

/*
================
idCollisionModelManagerLocal::TestTrmInPolygon

  returns true if the trm intersects the polygon
================
*/
bool idCollisionModelManagerLocal::TestTrmInPolygon( cm_traceWork_t *tw, cm_polygon_t *p ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::TestTrmInPolygon( cm_traceWork_t *tw, cm_polygon_t *p )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::PointNode
================
*/
cm_node_t *idCollisionModelManagerLocal::PointNode( const idVec3 &p, cm_model_t *model ) {
    Sys_Printf("cm_node_t *idCollisionModelManagerLocal::PointNode( const idVec3 &p, cm_model_t *model )\r\n");
    return NULL;
}


/*
================
idCollisionModelManagerLocal::PointContents
================
*/
int idCollisionModelManagerLocal::PointContents( const idVec3 p, cmHandle_t model ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::PointContents( const idVec3 p, cmHandle_t model )\r\n");
    return retVal;
}


/*
==================
idCollisionModelManagerLocal::TransformedPointContents
==================
*/
int	idCollisionModelManagerLocal::TransformedPointContents( const idVec3 &p, cmHandle_t model, const idVec3 &origin, const idMat3 &modelAxis ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidCollisionModelManagerLocal::TransformedPointContents( const idVec3 &p, cmHandle_t model, const idVec3 &origin, const idMat3 &modelAxis )\r\n");
    return retVal;
}



/*
==================
idCollisionModelManagerLocal::ContentsTrm
==================
*/
int idCollisionModelManagerLocal::ContentsTrm( trace_t *results, const idVec3 &start,
									const idTraceModel *trm, const idMat3 &trmAxis, int contentMask,
									cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::ContentsTrm( trace_t *results, const idVec3 &start,const idTraceModel *trm, const idMat3 &trmAxis, int contentMask,cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis )\r\n");
    return retVal;
}


/*
==================
idCollisionModelManagerLocal::Contents
==================
*/
int idCollisionModelManagerLocal::Contents( const idVec3 &start,
									const idTraceModel *trm, const idMat3 &trmAxis, int contentMask,
									cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::Contents( const idVec3 &start,const idTraceModel *trm, const idMat3 &trmAxis, int contentMask,cmHandle_t model, const idVec3 &modelOrigin, const idMat3 &modelAxis )\r\n");
    return retVal;
}

