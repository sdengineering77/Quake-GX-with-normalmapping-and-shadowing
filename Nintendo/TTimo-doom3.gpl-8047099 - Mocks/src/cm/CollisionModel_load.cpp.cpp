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

	It is more important to minimize the number of collision polygons
	than it is to minimize the number of edges used for collision
	detection (total edges - internal edges).

	Stitching the world tends to minimize the number of edges used
	for collision detection (more internal edges). However stitching
	also results in more collision polygons which usually makes a
	stitched world slower.

	In an average map over 30% of all edges is internal.

===============================================================================
*/

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "CollisionModel_local.h"


idCollisionModelManagerLocal	collisionModelManagerLocal;
idCollisionModelManager *		collisionModelManager = &collisionModelManagerLocal;

cm_windingList_t *				cm_windingList;
cm_windingList_t *				cm_outList;
cm_windingList_t *				cm_tmpList;

idHashIndex *					cm_vertexHash;
idHashIndex *					cm_edgeHash;

idBounds						cm_modelBounds;
int								cm_vertexShift;


/*
===============================================================================

Proc BSP tree for data pruning

===============================================================================
*/

/*
================
idCollisionModelManagerLocal::ParseProcNodes
================
*/
void idCollisionModelManagerLocal::ParseProcNodes( idLexer *src ) {
    Sys_Printf("void idCollisionModelManagerLocal::ParseProcNodes( idLexer *src )\r\n");
}


/*
================
idCollisionModelManagerLocal::LoadProcBSP

  FIXME: if the nodes would be at the start of the .proc file it would speed things up considerably
================
*/
void idCollisionModelManagerLocal::LoadProcBSP( const char *name ) {
    Sys_Printf("void idCollisionModelManagerLocal::LoadProcBSP( const char *name )\r\n");
}


/*
===============================================================================

Free map

===============================================================================
*/

/*
================
idCollisionModelManagerLocal::Clear
================
*/
void idCollisionModelManagerLocal::Clear( void ) {
    Sys_Printf("void idCollisionModelManagerLocal::Clear( void )\r\n");
}


/*
================
idCollisionModelManagerLocal::RemovePolygonReferences_r
================
*/
void idCollisionModelManagerLocal::RemovePolygonReferences_r( cm_node_t *node, cm_polygon_t *p ) {
    Sys_Printf("void idCollisionModelManagerLocal::RemovePolygonReferences_r( cm_node_t *node, cm_polygon_t *p )\r\n");
}


/*
================
idCollisionModelManagerLocal::RemoveBrushReferences_r
================
*/
void idCollisionModelManagerLocal::RemoveBrushReferences_r( cm_node_t *node, cm_brush_t *b ) {
    Sys_Printf("void idCollisionModelManagerLocal::RemoveBrushReferences_r( cm_node_t *node, cm_brush_t *b )\r\n");
}


/*
================
idCollisionModelManagerLocal::FreeNode
================
*/
void idCollisionModelManagerLocal::FreeNode( cm_node_t *node ) {
    Sys_Printf("void idCollisionModelManagerLocal::FreeNode( cm_node_t *node )\r\n");
}


/*
================
idCollisionModelManagerLocal::FreePolygonReference
================
*/
void idCollisionModelManagerLocal::FreePolygonReference( cm_polygonRef_t *pref ) {
    Sys_Printf("void idCollisionModelManagerLocal::FreePolygonReference( cm_polygonRef_t *pref )\r\n");
}


/*
================
idCollisionModelManagerLocal::FreeBrushReference
================
*/
void idCollisionModelManagerLocal::FreeBrushReference( cm_brushRef_t *bref ) {
    Sys_Printf("void idCollisionModelManagerLocal::FreeBrushReference( cm_brushRef_t *bref )\r\n");
}


/*
================
idCollisionModelManagerLocal::FreePolygon
================
*/
void idCollisionModelManagerLocal::FreePolygon( cm_model_t *model, cm_polygon_t *poly ) {
    Sys_Printf("void idCollisionModelManagerLocal::FreePolygon( cm_model_t *model, cm_polygon_t *poly )\r\n");
}


/*
================
idCollisionModelManagerLocal::FreeBrush
================
*/
void idCollisionModelManagerLocal::FreeBrush( cm_model_t *model, cm_brush_t *brush ) {
    Sys_Printf("void idCollisionModelManagerLocal::FreeBrush( cm_model_t *model, cm_brush_t *brush )\r\n");
}


/*
================
idCollisionModelManagerLocal::FreeTree_r
================
*/
void idCollisionModelManagerLocal::FreeTree_r( cm_model_t *model, cm_node_t *headNode, cm_node_t *node ) {
    Sys_Printf("void idCollisionModelManagerLocal::FreeTree_r( cm_model_t *model, cm_node_t *headNode, cm_node_t *node )\r\n");
}


/*
================
idCollisionModelManagerLocal::FreeModel
================
*/
void idCollisionModelManagerLocal::FreeModel( cm_model_t *model ) {
    Sys_Printf("void idCollisionModelManagerLocal::FreeModel( cm_model_t *model )\r\n");
}


/*
================
idCollisionModelManagerLocal::FreeMap
================
*/
void idCollisionModelManagerLocal::FreeMap( void ) {
    Sys_Printf("void idCollisionModelManagerLocal::FreeMap( void )\r\n");
}


/*
================
idCollisionModelManagerLocal::FreeTrmModelStructure
================
*/
void idCollisionModelManagerLocal::FreeTrmModelStructure( void ) {
    Sys_Printf("void idCollisionModelManagerLocal::FreeTrmModelStructure( void )\r\n");
}



/*
===============================================================================

Edge normals

===============================================================================
*/

/*
================
idCollisionModelManagerLocal::CalculateEdgeNormals
================
*/
#define SHARP_EDGE_DOT	-0.7f

void idCollisionModelManagerLocal::CalculateEdgeNormals( cm_model_t *model, cm_node_t *node ) {
    Sys_Printf("void idCollisionModelManagerLocal::CalculateEdgeNormals( cm_model_t *model, cm_node_t *node )\r\n");
}


/*
===============================================================================

Trace model to general collision model

===============================================================================
*/

/*
================
idCollisionModelManagerLocal::AllocModel
================
*/
cm_model_t *idCollisionModelManagerLocal::AllocModel( void ) {
    Sys_Printf("cm_model_t *idCollisionModelManagerLocal::AllocModel( void )\r\n");
    return NULL;
}


/*
================
idCollisionModelManagerLocal::AllocNode
================
*/
cm_node_t *idCollisionModelManagerLocal::AllocNode( cm_model_t *model, int blockSize ) {
    Sys_Printf("cm_node_t *idCollisionModelManagerLocal::AllocNode( cm_model_t *model, int blockSize )\r\n");
    return NULL;
}


/*
================
idCollisionModelManagerLocal::AllocPolygonReference
================
*/
cm_polygonRef_t *idCollisionModelManagerLocal::AllocPolygonReference( cm_model_t *model, int blockSize ) {
    Sys_Printf("cm_polygonRef_t *idCollisionModelManagerLocal::AllocPolygonReference( cm_model_t *model, int blockSize )\r\n");
    return NULL;
}


/*
================
idCollisionModelManagerLocal::AllocBrushReference
================
*/
cm_brushRef_t *idCollisionModelManagerLocal::AllocBrushReference( cm_model_t *model, int blockSize ) {
    Sys_Printf("cm_brushRef_t *idCollisionModelManagerLocal::AllocBrushReference( cm_model_t *model, int blockSize )\r\n");
    return NULL;
}


/*
================
idCollisionModelManagerLocal::AllocPolygon
================
*/
cm_polygon_t *idCollisionModelManagerLocal::AllocPolygon( cm_model_t *model, int numEdges ) {
    Sys_Printf("cm_polygon_t *idCollisionModelManagerLocal::AllocPolygon( cm_model_t *model, int numEdges )\r\n");
    return NULL;
}


/*
================
idCollisionModelManagerLocal::AllocBrush
================
*/
cm_brush_t *idCollisionModelManagerLocal::AllocBrush( cm_model_t *model, int numPlanes ) {
    Sys_Printf("cm_brush_t *idCollisionModelManagerLocal::AllocBrush( cm_model_t *model, int numPlanes )\r\n");
    return NULL;
}


/*
================
idCollisionModelManagerLocal::AddPolygonToNode
================
*/
void idCollisionModelManagerLocal::AddPolygonToNode( cm_model_t *model, cm_node_t *node, cm_polygon_t *p ) {
    Sys_Printf("void idCollisionModelManagerLocal::AddPolygonToNode( cm_model_t *model, cm_node_t *node, cm_polygon_t *p )\r\n");
}


/*
================
idCollisionModelManagerLocal::AddBrushToNode
================
*/
void idCollisionModelManagerLocal::AddBrushToNode( cm_model_t *model, cm_node_t *node, cm_brush_t *b ) {
    Sys_Printf("void idCollisionModelManagerLocal::AddBrushToNode( cm_model_t *model, cm_node_t *node, cm_brush_t *b )\r\n");
}


/*
================
idCollisionModelManagerLocal::SetupTrmModelStructure
================
*/
void idCollisionModelManagerLocal::SetupTrmModelStructure( void ) {
    Sys_Printf("void idCollisionModelManagerLocal::SetupTrmModelStructure( void )\r\n");
}


/*
================
idCollisionModelManagerLocal::SetupTrmModel

Trace models (item boxes, etc) are converted to collision models on the fly, using the last model slot
as a reusable temporary buffer
================
*/
cmHandle_t idCollisionModelManagerLocal::SetupTrmModel( const idTraceModel &trm, const idMaterial *material ) {
    cmHandle_t retVal;
    memset(&retVal, 0, sizeof(cmHandle_t));
    Sys_Printf("cmHandle_t idCollisionModelManagerLocal::SetupTrmModel( const idTraceModel &trm, const idMaterial *material )\r\n");
    return retVal;
}


/*
===============================================================================

Optimisation, removal of polygons contained within brushes or solid

===============================================================================
*/

/*
============
idCollisionModelManagerLocal::R_ChoppedAwayByProcBSP
============
*/
int idCollisionModelManagerLocal::R_ChoppedAwayByProcBSP( int nodeNum, idFixedWinding *w, const idVec3 &normal, const idVec3 &origin, const float radius ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::R_ChoppedAwayByProcBSP( int nodeNum, idFixedWinding *w, const idVec3 &normal, const idVec3 &origin, const float radius )\r\n");
    return retVal;
}


/*
============
idCollisionModelManagerLocal::ChoppedAwayByProcBSP
============
*/
int idCollisionModelManagerLocal::ChoppedAwayByProcBSP( const idFixedWinding &w, const idPlane &plane, int contents ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::ChoppedAwayByProcBSP( const idFixedWinding &w, const idPlane &plane, int contents )\r\n");
    return retVal;
}


/*
=============
idCollisionModelManagerLocal::ChopWindingWithBrush

  returns the least number of winding fragments outside the brush
=============
*/
void idCollisionModelManagerLocal::ChopWindingListWithBrush( cm_windingList_t *list, cm_brush_t *b ) {
    Sys_Printf("void idCollisionModelManagerLocal::ChopWindingListWithBrush( cm_windingList_t *list, cm_brush_t *b )\r\n");
}


/*
============
idCollisionModelManagerLocal::R_ChopWindingListWithTreeBrushes
============
*/
void idCollisionModelManagerLocal::R_ChopWindingListWithTreeBrushes( cm_windingList_t *list, cm_node_t *node ) {
    Sys_Printf("void idCollisionModelManagerLocal::R_ChopWindingListWithTreeBrushes( cm_windingList_t *list, cm_node_t *node )\r\n");
}


/*
============
idCollisionModelManagerLocal::WindingOutsideBrushes

  Returns one winding which is not fully contained in brushes.
  We always favor less polygons over a stitched world.
  If the winding is partly contained and the contained pieces can be chopped off
  without creating multiple winding fragments then the chopped winding is returned.
============
*/
idFixedWinding *idCollisionModelManagerLocal::WindingOutsideBrushes( idFixedWinding *w, const idPlane &plane, int contents, int primitiveNum, cm_node_t *headNode ) {
    Sys_Printf("idFixedWinding *idCollisionModelManagerLocal::WindingOutsideBrushes( idFixedWinding *w, const idPlane &plane, int contents, int primitiveNum, cm_node_t *headNode )\r\n");
    return NULL;
}


/*
===============================================================================

Merging polygons

===============================================================================
*/

/*
=============
idCollisionModelManagerLocal::ReplacePolygons

  does not allow for a node to have multiple references to the same polygon
=============
*/
void idCollisionModelManagerLocal::ReplacePolygons( cm_model_t *model, cm_node_t *node, cm_polygon_t *p1, cm_polygon_t *p2, cm_polygon_t *newp ) {
    Sys_Printf("void idCollisionModelManagerLocal::ReplacePolygons( cm_model_t *model, cm_node_t *node, cm_polygon_t *p1, cm_polygon_t *p2, cm_polygon_t *newp )\r\n");
}


/*
=============
idCollisionModelManagerLocal::TryMergePolygons
=============
*/
#define	CONTINUOUS_EPSILON	0.005f
#define NORMAL_EPSILON		0.01f

cm_polygon_t *idCollisionModelManagerLocal::TryMergePolygons( cm_model_t *model, cm_polygon_t *p1, cm_polygon_t *p2 ) {
    Sys_Printf("cm_polygon_t *idCollisionModelManagerLocal::TryMergePolygons( cm_model_t *model, cm_polygon_t *p1, cm_polygon_t *p2 )\r\n");
    return NULL;
}


/*
=============
idCollisionModelManagerLocal::MergePolygonWithTreePolygons
=============
*/
bool idCollisionModelManagerLocal::MergePolygonWithTreePolygons( cm_model_t *model, cm_node_t *node, cm_polygon_t *polygon ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::MergePolygonWithTreePolygons( cm_model_t *model, cm_node_t *node, cm_polygon_t *polygon )\r\n");
    return retVal;
}


/*
=============
idCollisionModelManagerLocal::MergeTreePolygons

  try to merge any two polygons with the same surface flags and the same contents
=============
*/
void idCollisionModelManagerLocal::MergeTreePolygons( cm_model_t *model, cm_node_t *node ) {
    Sys_Printf("void idCollisionModelManagerLocal::MergeTreePolygons( cm_model_t *model, cm_node_t *node )\r\n");
}


/*
===============================================================================

Find internal edges

===============================================================================
*/

/*

	if (two polygons have the same contents)
		if (the normals of the two polygon planes face towards each other)
			if (an edge is shared between the polygons)
				if (the edge is not shared in the same direction)
					then this is an internal edge
			else
				if (this edge is on the plane of the other polygon)
					if (this edge if fully inside the winding of the other polygon)
						then this edge is an internal edge

*/

/*
=============
idCollisionModelManagerLocal::PointInsidePolygon
=============
*/
bool idCollisionModelManagerLocal::PointInsidePolygon( cm_model_t *model, cm_polygon_t *p, idVec3 &v ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::PointInsidePolygon( cm_model_t *model, cm_polygon_t *p, idVec3 &v )\r\n");
    return retVal;
}


/*
=============
idCollisionModelManagerLocal::FindInternalEdgesOnPolygon
=============
*/
void idCollisionModelManagerLocal::FindInternalEdgesOnPolygon( cm_model_t *model, cm_polygon_t *p1, cm_polygon_t *p2 ) {
    Sys_Printf("void idCollisionModelManagerLocal::FindInternalEdgesOnPolygon( cm_model_t *model, cm_polygon_t *p1, cm_polygon_t *p2 )\r\n");
}


/*
=============
idCollisionModelManagerLocal::FindInternalPolygonEdges
=============
*/
void idCollisionModelManagerLocal::FindInternalPolygonEdges( cm_model_t *model, cm_node_t *node, cm_polygon_t *polygon ) {
    Sys_Printf("void idCollisionModelManagerLocal::FindInternalPolygonEdges( cm_model_t *model, cm_node_t *node, cm_polygon_t *polygon )\r\n");
}


/*
=============
idCollisionModelManagerLocal::FindContainedEdges
=============
*/
void idCollisionModelManagerLocal::FindContainedEdges( cm_model_t *model, cm_polygon_t *p ) {
    Sys_Printf("void idCollisionModelManagerLocal::FindContainedEdges( cm_model_t *model, cm_polygon_t *p )\r\n");
}


/*
=============
idCollisionModelManagerLocal::FindInternalEdges
=============
*/
void idCollisionModelManagerLocal::FindInternalEdges( cm_model_t *model, cm_node_t *node ) {
    Sys_Printf("void idCollisionModelManagerLocal::FindInternalEdges( cm_model_t *model, cm_node_t *node )\r\n");
}


/*
===============================================================================

Spatial subdivision

===============================================================================
*/

/*
================
CM_FindSplitter
================
*/
static int CM_FindSplitter( const cm_node_t *node, const idBounds &bounds, int *planeType, float *planeDist ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CM_FindSplitter( const cm_node_t *node, const idBounds &bounds, int *planeType, float *planeDist )\r\n");
    return retVal;
}


/*
================
CM_R_InsideAllChildren
================
*/
static int CM_R_InsideAllChildren( cm_node_t *node, const idBounds &bounds ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CM_R_InsideAllChildren( cm_node_t *node, const idBounds &bounds )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::R_FilterPolygonIntoTree
================
*/
void idCollisionModelManagerLocal::R_FilterPolygonIntoTree( cm_model_t *model, cm_node_t *node, cm_polygonRef_t *pref, cm_polygon_t *p ) {
    Sys_Printf("void idCollisionModelManagerLocal::R_FilterPolygonIntoTree( cm_model_t *model, cm_node_t *node, cm_polygonRef_t *pref, cm_polygon_t *p )\r\n");
}


/*
================
idCollisionModelManagerLocal::R_FilterBrushIntoTree
================
*/
void idCollisionModelManagerLocal::R_FilterBrushIntoTree( cm_model_t *model, cm_node_t *node, cm_brushRef_t *pref, cm_brush_t *b ) {
    Sys_Printf("void idCollisionModelManagerLocal::R_FilterBrushIntoTree( cm_model_t *model, cm_node_t *node, cm_brushRef_t *pref, cm_brush_t *b )\r\n");
}


/*
================
idCollisionModelManagerLocal::R_CreateAxialBSPTree

  a brush or polygon is linked in the node closest to the root where
  the brush or polygon is inside all children
================
*/
cm_node_t *idCollisionModelManagerLocal::R_CreateAxialBSPTree( cm_model_t *model, cm_node_t *node, const idBounds &bounds ) {
    Sys_Printf("cm_node_t *idCollisionModelManagerLocal::R_CreateAxialBSPTree( cm_model_t *model, cm_node_t *node, const idBounds &bounds )\r\n");
    return NULL;
}


/*
int cm_numSavedPolygonLinks;
int cm_numSavedBrushLinks;

int CM_R_CountChildren( cm_node_t *node ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CM_R_CountChildren( cm_node_t *node )\r\n");
    return retVal;
}


void CM_R_TestOptimisation( cm_node_t *node ) {
    Sys_Printf("void CM_R_TestOptimisation( cm_node_t *node )\r\n");
}

*/

/*
================
idCollisionModelManagerLocal::CreateAxialBSPTree
================
*/
cm_node_t *idCollisionModelManagerLocal::CreateAxialBSPTree( cm_model_t *model, cm_node_t *node ) {
    Sys_Printf("cm_node_t *idCollisionModelManagerLocal::CreateAxialBSPTree( cm_model_t *model, cm_node_t *node )\r\n");
    return NULL;
}


/*
===============================================================================

Raw polygon and brush data

===============================================================================
*/

/*
================
idCollisionModelManagerLocal::SetupHash
================
*/
void idCollisionModelManagerLocal::SetupHash( void ) {
    Sys_Printf("void idCollisionModelManagerLocal::SetupHash( void )\r\n");
}


/*
================
idCollisionModelManagerLocal::ShutdownHash
================
*/
void idCollisionModelManagerLocal::ShutdownHash( void ) {
    Sys_Printf("void idCollisionModelManagerLocal::ShutdownHash( void )\r\n");
}


/*
================
idCollisionModelManagerLocal::ClearHash
================
*/
void idCollisionModelManagerLocal::ClearHash( idBounds &bounds ) {
    Sys_Printf("void idCollisionModelManagerLocal::ClearHash( idBounds &bounds )\r\n");
}


/*
================
idCollisionModelManagerLocal::HashVec
================
*/
ID_INLINE int idCollisionModelManagerLocal::HashVec(const idVec3 &vec) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::HashVec(const idVec3 &vec)\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::GetVertex
================
*/
int idCollisionModelManagerLocal::GetVertex( cm_model_t *model, const idVec3 &v, int *vertexNum ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::GetVertex( cm_model_t *model, const idVec3 &v, int *vertexNum )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::GetEdge
================
*/
int idCollisionModelManagerLocal::GetEdge( cm_model_t *model, const idVec3 &v1, const idVec3 &v2, int *edgeNum, int v1num ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::GetEdge( cm_model_t *model, const idVec3 &v1, const idVec3 &v2, int *edgeNum, int v1num )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::CreatePolygon
================
*/
void idCollisionModelManagerLocal::CreatePolygon( cm_model_t *model, idFixedWinding *w, const idPlane &plane, const idMaterial *material, int primitiveNum ) {
    Sys_Printf("void idCollisionModelManagerLocal::CreatePolygon( cm_model_t *model, idFixedWinding *w, const idPlane &plane, const idMaterial *material, int primitiveNum )\r\n");
}


/*
================
idCollisionModelManagerLocal::PolygonFromWinding

  NOTE: for patches primitiveNum < 0 and abs(primitiveNum) is the real number
================
*/
void idCollisionModelManagerLocal::PolygonFromWinding( cm_model_t *model, idFixedWinding *w, const idPlane &plane, const idMaterial *material, int primitiveNum ) {
    Sys_Printf("void idCollisionModelManagerLocal::PolygonFromWinding( cm_model_t *model, idFixedWinding *w, const idPlane &plane, const idMaterial *material, int primitiveNum )\r\n");
}


/*
=================
idCollisionModelManagerLocal::CreatePatchPolygons
=================
*/
void idCollisionModelManagerLocal::CreatePatchPolygons( cm_model_t *model, idSurface_Patch &mesh, const idMaterial *material, int primitiveNum ) {
    Sys_Printf("void idCollisionModelManagerLocal::CreatePatchPolygons( cm_model_t *model, idSurface_Patch &mesh, const idMaterial *material, int primitiveNum )\r\n");
}


/*
=================
CM_EstimateVertsAndEdges
=================
*/
static void CM_EstimateVertsAndEdges( const idMapEntity *mapEnt, int *numVerts, int *numEdges ) {
    Sys_Printf("void CM_EstimateVertsAndEdges( const idMapEntity *mapEnt, int *numVerts, int *numEdges )\r\n");
}


/*
=================
idCollisionModelManagerLocal::ConverPatch
=================
*/
void idCollisionModelManagerLocal::ConvertPatch( cm_model_t *model, const idMapPatch *patch, int primitiveNum ) {
    Sys_Printf("void idCollisionModelManagerLocal::ConvertPatch( cm_model_t *model, const idMapPatch *patch, int primitiveNum )\r\n");
}


/*
================
idCollisionModelManagerLocal::ConvertBrushSides
================
*/
void idCollisionModelManagerLocal::ConvertBrushSides( cm_model_t *model, const idMapBrush *mapBrush, int primitiveNum ) {
    Sys_Printf("void idCollisionModelManagerLocal::ConvertBrushSides( cm_model_t *model, const idMapBrush *mapBrush, int primitiveNum )\r\n");
}


/*
================
idCollisionModelManagerLocal::ConvertBrush
================
*/
void idCollisionModelManagerLocal::ConvertBrush( cm_model_t *model, const idMapBrush *mapBrush, int primitiveNum ) {
    Sys_Printf("void idCollisionModelManagerLocal::ConvertBrush( cm_model_t *model, const idMapBrush *mapBrush, int primitiveNum )\r\n");
}


/*
================
CM_CountNodeBrushes
================
*/
static int CM_CountNodeBrushes( const cm_node_t *node ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CM_CountNodeBrushes( const cm_node_t *node )\r\n");
    return retVal;
}


/*
================
CM_R_GetModelBounds
================
*/
static void CM_R_GetNodeBounds( idBounds *bounds, cm_node_t *node ) {
    Sys_Printf("void CM_R_GetNodeBounds( idBounds *bounds, cm_node_t *node )\r\n");
}


/*
================
CM_GetNodeBounds
================
*/
void CM_GetNodeBounds( idBounds *bounds, cm_node_t *node ) {
    Sys_Printf("void CM_GetNodeBounds( idBounds *bounds, cm_node_t *node )\r\n");
}


/*
================
CM_GetNodeContents
================
*/
int CM_GetNodeContents( cm_node_t *node ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CM_GetNodeContents( cm_node_t *node )\r\n");
    return retVal;
}


/*
==================
idCollisionModelManagerLocal::RemapEdges
==================
*/
void idCollisionModelManagerLocal::RemapEdges( cm_node_t *node, int *edgeRemap ) {
    Sys_Printf("void idCollisionModelManagerLocal::RemapEdges( cm_node_t *node, int *edgeRemap )\r\n");
}


/*
==================
idCollisionModelManagerLocal::OptimizeArrays

  due to polygon merging and polygon removal the vertex and edge array
  can have a lot of unused entries.
==================
*/
void idCollisionModelManagerLocal::OptimizeArrays( cm_model_t *model ) {
    Sys_Printf("void idCollisionModelManagerLocal::OptimizeArrays( cm_model_t *model )\r\n");
}


/*
================
idCollisionModelManagerLocal::FinishModel
================
*/
void idCollisionModelManagerLocal::FinishModel( cm_model_t *model ) {
    Sys_Printf("void idCollisionModelManagerLocal::FinishModel( cm_model_t *model )\r\n");
}


/*
================
idCollisionModelManagerLocal::LoadRenderModel
================
*/
cm_model_t *idCollisionModelManagerLocal::LoadRenderModel( const char *fileName ) {
    Sys_Printf("cm_model_t *idCollisionModelManagerLocal::LoadRenderModel( const char *fileName )\r\n");
    return NULL;
}


/*
================
idCollisionModelManagerLocal::CollisionModelForMapEntity
================
*/
cm_model_t *idCollisionModelManagerLocal::CollisionModelForMapEntity( const idMapEntity *mapEnt ) {
    Sys_Printf("cm_model_t *idCollisionModelManagerLocal::CollisionModelForMapEntity( const idMapEntity *mapEnt )\r\n");
    return NULL;
}


/*
================
idCollisionModelManagerLocal::FindModel
================
*/
cmHandle_t idCollisionModelManagerLocal::FindModel( const char *name ) {
    cmHandle_t retVal;
    memset(&retVal, 0, sizeof(cmHandle_t));
    Sys_Printf("cmHandle_t idCollisionModelManagerLocal::FindModel( const char *name )\r\n");
    return retVal;
}


/*
==================
idCollisionModelManagerLocal::PrintModelInfo
==================
*/
void idCollisionModelManagerLocal::PrintModelInfo( const cm_model_t *model ) {
    Sys_Printf("void idCollisionModelManagerLocal::PrintModelInfo( const cm_model_t *model )\r\n");
}


/*
================
idCollisionModelManagerLocal::AccumulateModelInfo
================
*/
void idCollisionModelManagerLocal::AccumulateModelInfo( cm_model_t *model ) {
    Sys_Printf("void idCollisionModelManagerLocal::AccumulateModelInfo( cm_model_t *model )\r\n");
}


/*
================
idCollisionModelManagerLocal::ModelInfo
================
*/
void idCollisionModelManagerLocal::ModelInfo( cmHandle_t model ) {
    Sys_Printf("void idCollisionModelManagerLocal::ModelInfo( cmHandle_t model )\r\n");
}


/*
================
idCollisionModelManagerLocal::ListModels
================
*/
void idCollisionModelManagerLocal::ListModels( void ) {
    Sys_Printf("void idCollisionModelManagerLocal::ListModels( void )\r\n");
}


/*
================
idCollisionModelManagerLocal::BuildModels
================
*/
void idCollisionModelManagerLocal::BuildModels( const idMapFile *mapFile ) {
    Sys_Printf("void idCollisionModelManagerLocal::BuildModels( const idMapFile *mapFile )\r\n");
}



/*
================
idCollisionModelManagerLocal::LoadMap
================
*/
void idCollisionModelManagerLocal::LoadMap( const idMapFile *mapFile ) {
    Sys_Printf("void idCollisionModelManagerLocal::LoadMap( const idMapFile *mapFile )\r\n");
}


/*
===================
idCollisionModelManagerLocal::GetModelName
===================
*/
const char *idCollisionModelManagerLocal::GetModelName( cmHandle_t model ) const {
    Sys_Printf("char *idCollisionModelManagerLocal::GetModelName( cmHandle_t model )\r\n");
    return NULL;
}


/*
===================
idCollisionModelManagerLocal::GetModelBounds
===================
*/
bool idCollisionModelManagerLocal::GetModelBounds( cmHandle_t model, idBounds &bounds ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::GetModelBounds( cmHandle_t model, idBounds &bounds )\r\n");
    return retVal;
}


/*
===================
idCollisionModelManagerLocal::GetModelContents
===================
*/
bool idCollisionModelManagerLocal::GetModelContents( cmHandle_t model, int &contents ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::GetModelContents( cmHandle_t model, int &contents )\r\n");
    return retVal;
}


/*
===================
idCollisionModelManagerLocal::GetModelVertex
===================
*/
bool idCollisionModelManagerLocal::GetModelVertex( cmHandle_t model, int vertexNum, idVec3 &vertex ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::GetModelVertex( cmHandle_t model, int vertexNum, idVec3 &vertex )\r\n");
    return retVal;
}


/*
===================
idCollisionModelManagerLocal::GetModelEdge
===================
*/
bool idCollisionModelManagerLocal::GetModelEdge( cmHandle_t model, int edgeNum, idVec3 &start, idVec3 &end ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::GetModelEdge( cmHandle_t model, int edgeNum, idVec3 &start, idVec3 &end )\r\n");
    return retVal;
}


/*
===================
idCollisionModelManagerLocal::GetModelPolygon
===================
*/
bool idCollisionModelManagerLocal::GetModelPolygon( cmHandle_t model, int polygonNum, idFixedWinding &winding ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::GetModelPolygon( cmHandle_t model, int polygonNum, idFixedWinding &winding )\r\n");
    return retVal;
}


/*
==================
idCollisionModelManagerLocal::LoadModel
==================
*/
cmHandle_t idCollisionModelManagerLocal::LoadModel( const char *modelName, const bool precache ) {
    cmHandle_t retVal;
    memset(&retVal, 0, sizeof(cmHandle_t));
    Sys_Printf("cmHandle_t idCollisionModelManagerLocal::LoadModel( const char *modelName, const bool precache )\r\n");
    return retVal;
}


/*
==================
idCollisionModelManagerLocal::TrmFromModel_r
==================
*/
bool idCollisionModelManagerLocal::TrmFromModel_r( idTraceModel &trm, cm_node_t *node ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::TrmFromModel_r( idTraceModel &trm, cm_node_t *node )\r\n");
    return retVal;
}


/*
==================
idCollisionModelManagerLocal::TrmFromModel

  NOTE: polygon merging can merge colinear edges and as such might cause dangling edges.
==================
*/
bool idCollisionModelManagerLocal::TrmFromModel( const cm_model_t *model, idTraceModel &trm ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::TrmFromModel( const cm_model_t *model, idTraceModel &trm )\r\n");
    return retVal;
}


/*
==================
idCollisionModelManagerLocal::TrmFromModel
==================
*/
bool idCollisionModelManagerLocal::TrmFromModel( const char *modelName, idTraceModel &trm ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::TrmFromModel( const char *modelName, idTraceModel &trm )\r\n");
    return retVal;
}

