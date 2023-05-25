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

#include "../../../idlib/precompiled.h"
#pragma hdrstop

#include "Brush.h"
#include "BrushBSP.h"


#define BSP_GRID_SIZE					512.0f
#define SPLITTER_EPSILON				0.1f
#define VERTEX_MELT_EPSILON				0.1f
#define VERTEX_MELT_HASH_SIZE			32

#define PORTAL_PLANE_NORMAL_EPSILON		0.00001f
#define PORTAL_PLANE_DIST_EPSILON		0.01f

//#define OUPUT_BSP_STATS_PER_GRID_CELL


//===============================================================
//
//	idBrushBSPPortal
//
//===============================================================

/*
============
idBrushBSPPortal::idBrushBSPPortal
============
*/
idBrushBSPPortal::idBrushBSPPortal( void ) {
	planeNum = -1;
	winding = NULL;
	nodes[0] = nodes[1] = NULL;
	next[0] = next[1] = NULL;
	faceNum = 0;
	flags = 0;
}

/*
============
idBrushBSPPortal::~idBrushBSPPortal
============
*/
idBrushBSPPortal::~idBrushBSPPortal( void ) {
	if ( winding ) {
		delete winding;
	}
}

/*
============
idBrushBSPPortal::AddToNodes
============
*/
void idBrushBSPPortal::AddToNodes( idBrushBSPNode *front, idBrushBSPNode *back ) {
    Sys_Printf("void idBrushBSPPortal::AddToNodes( idBrushBSPNode *front, idBrushBSPNode *back )\r\n");
}


/*
============
idBrushBSPPortal::RemoveFromNode
============
*/
void idBrushBSPPortal::RemoveFromNode( idBrushBSPNode *l ) {
    Sys_Printf("void idBrushBSPPortal::RemoveFromNode( idBrushBSPNode *l )\r\n");
}


/*
============
idBrushBSPPortal::Flip
============
*/
void idBrushBSPPortal::Flip( void ) {
    Sys_Printf("void idBrushBSPPortal::Flip( void )\r\n");
}


/*
============
idBrushBSPPortal::Split
============
*/
int idBrushBSPPortal::Split( const idPlane &splitPlane, idBrushBSPPortal **front, idBrushBSPPortal **back ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBrushBSPPortal::Split( const idPlane &splitPlane, idBrushBSPPortal **front, idBrushBSPPortal **back )\r\n");
    return retVal;
}



//===============================================================
//
//	idBrushBSPNode
//
//===============================================================

/*
============
idBrushBSPNode::idBrushBSPNode
============
*/
idBrushBSPNode::idBrushBSPNode( void ) {
	brushList.Clear();
	contents = 0;
	flags = 0;
	volume = NULL;
	portals = NULL;
	children[0] = children[1] = NULL;
	areaNum = 0;
	occupied = 0;
}

/*
============
idBrushBSPNode::~idBrushBSPNode
============
*/
idBrushBSPNode::~idBrushBSPNode( void ) {
	idBrushBSPPortal *p;

	// delete brushes
	brushList.Free();

	// delete volume brush
	if ( volume ) {
    brush retVal;
    memset(&retVal, 0, sizeof(brush));
    Sys_Printf("brushif ( volume )\r\n");
    return retVal;
}


	// delete portals
	for ( p = portals; p; p = portals ) {
		p->RemoveFromNode( this );
		if ( !p->nodes[0] && !p->nodes[1] ) {
			delete p;
		}
	}
}

/*
============
idBrushBSPNode::SetContentsFromBrushes
============
*/
void idBrushBSPNode::SetContentsFromBrushes( void ) {
    Sys_Printf("void idBrushBSPNode::SetContentsFromBrushes( void )\r\n");
}


/*
============
idBrushBSPNode::GetPortalBounds
============
*/
idBounds idBrushBSPNode::GetPortalBounds( void ) {
    idBounds retVal;
    memset(&retVal, 0, sizeof(idBounds));
    Sys_Printf("idBounds idBrushBSPNode::GetPortalBounds( void )\r\n");
    return retVal;
}


/*
============
idBrushBSPNode::TestLeafNode
============
*/
bool idBrushBSPNode::TestLeafNode( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrushBSPNode::TestLeafNode( void )\r\n");
    return retVal;
}


/*
============
idBrushBSPNode::Split
============
*/
bool idBrushBSPNode::Split( const idPlane &splitPlane, int splitPlaneNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrushBSPNode::Split( const idPlane &splitPlane, int splitPlaneNum )\r\n");
    return retVal;
}


/*
============
idBrushBSPNode::PlaneSide
============
*/
int idBrushBSPNode::PlaneSide( const idPlane &plane, float epsilon ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBrushBSPNode::PlaneSide( const idPlane &plane, float epsilon )\r\n");
    return retVal;
}


/*
============
idBrushBSPNode::RemoveFlagFlood
============
*/
void idBrushBSPNode::RemoveFlagFlood( int flag ) {
    Sys_Printf("void idBrushBSPNode::RemoveFlagFlood( int flag )\r\n");
}


/*
============
idBrushBSPNode::RemoveFlagRecurse
============
*/
void idBrushBSPNode::RemoveFlagRecurse( int flag ) {
    Sys_Printf("void idBrushBSPNode::RemoveFlagRecurse( int flag )\r\n");
}


/*
============
idBrushBSPNode::RemoveFlagRecurseFlood
============
*/
void idBrushBSPNode::RemoveFlagRecurseFlood( int flag ) {
    Sys_Printf("void idBrushBSPNode::RemoveFlagRecurseFlood( int flag )\r\n");
}



//===============================================================
//
//	idBrushBSP
//
//===============================================================

/*
============
idBrushBSP::idBrushBSP
============
*/
idBrushBSP::idBrushBSP( void ) {
	root = outside = NULL;
	numSplits = numPrunedSplits = 0;
	brushMapContents = 0;
	brushMap = NULL;
}

/*
============
idBrushBSP::~idBrushBSP
============
*/
idBrushBSP::~idBrushBSP( void ) {

	RemoveMultipleLeafNodeReferences_r( root );
	Free_r( root );

	if ( outside ) {
		delete outside;
	}
}

/*
============
idBrushBSP::RemoveMultipleLeafNodeReferences_r
============
*/
void idBrushBSP::RemoveMultipleLeafNodeReferences_r( idBrushBSPNode *node ) {
    Sys_Printf("void idBrushBSP::RemoveMultipleLeafNodeReferences_r( idBrushBSPNode *node )\r\n");
}


/*
============
idBrushBSP::Free_r
============
*/
void idBrushBSP::Free_r( idBrushBSPNode *node ) {
    Sys_Printf("void idBrushBSP::Free_r( idBrushBSPNode *node )\r\n");
}


/*
============
idBrushBSP::IsValidSplitter
============
*/
ID_INLINE bool idBrushBSP::IsValidSplitter( const idBrushSide *side ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrushBSP::IsValidSplitter( const idBrushSide *side )\r\n");
    return retVal;
}


/*
============
idBrushBSP::BrushSplitterStats
============
*/
typedef struct splitterStats_s {
	int numFront;			// number of brushes at the front of the splitter
	int numBack;			// number of brushes at the back of the splitter
	int numSplits;			// number of brush sides split by the splitter
	int numFacing;			// number of brushes facing this splitter
	int epsilonBrushes;		// number of tiny brushes this splitter would create
} splitterStats_t;

int idBrushBSP::BrushSplitterStats( const idBrush *brush, int planeNum, const idPlaneSet &planeList, bool *testedPlanes, struct splitterStats_s &stats ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBrushBSP::BrushSplitterStats( const idBrush *brush, int planeNum, const idPlaneSet &planeList, bool *testedPlanes, struct splitterStats_s &stats )\r\n");
    return retVal;
}


/*
============
idBrushBSP::FindSplitter
============
*/
int idBrushBSP::FindSplitter( idBrushBSPNode *node, const idPlaneSet &planeList, bool *testedPlanes, struct splitterStats_s &bestStats ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBrushBSP::FindSplitter( idBrushBSPNode *node, const idPlaneSet &planeList, bool *testedPlanes, struct splitterStats_s &bestStats )\r\n");
    return retVal;
}


/*
============
idBrushBSP::SetSplitterUsed
============
*/
void idBrushBSP::SetSplitterUsed( idBrushBSPNode *node, int planeNum ) {
    Sys_Printf("void idBrushBSP::SetSplitterUsed( idBrushBSPNode *node, int planeNum )\r\n");
}


/*
============
idBrushBSP::BuildBrushBSP_r
============
*/
idBrushBSPNode *idBrushBSP::BuildBrushBSP_r( idBrushBSPNode *node, const idPlaneSet &planeList, bool *testedPlanes, int skipContents ) {
    Sys_Printf("idBrushBSPNode *idBrushBSP::BuildBrushBSP_r( idBrushBSPNode *node, const idPlaneSet &planeList, bool *testedPlanes, int skipContents )\r\n");
    return NULL;
}


/*
============
idBrushBSP::ProcessGridCell
============
*/
idBrushBSPNode *idBrushBSP::ProcessGridCell( idBrushBSPNode *node, int skipContents ) {
    Sys_Printf("idBrushBSPNode *idBrushBSP::ProcessGridCell( idBrushBSPNode *node, int skipContents )\r\n");
    return NULL;
}


/*
============
idBrushBSP::BuildGrid_r
============
*/
void idBrushBSP::BuildGrid_r( idList<idBrushBSPNode *> &gridCells, idBrushBSPNode *node ) {
    Sys_Printf("void idBrushBSP::BuildGrid_r( idList<idBrushBSPNode *> &gridCells, idBrushBSPNode *node )\r\n");
}


/*
============
idBrushBSP::Build
============
*/
void idBrushBSP::Build( idBrushList brushList, int skipContents,
								bool (*ChopAllowed)( idBrush *b1, idBrush *b2 ),
								bool (*MergeAllowed)( idBrush *b1, idBrush *b2 ) ) {

	int i;
	idList<idBrushBSPNode *> gridCells;

	common->Printf( "[Brush BSP]\n" );
	common->Printf( "%6d brushes\n", brushList.Num() );

	BrushChopAllowed = ChopAllowed;
	BrushMergeAllowed = MergeAllowed;

	numGridCells = 0;
	treeBounds = brushList.GetBounds();
	root = new idBrushBSPNode();
	root->brushList = brushList;
	root->volume = new idBrush();
	root->volume->FromBounds( treeBounds );
	root->parent = NULL;

	BuildGrid_r( gridCells, root );

	common->Printf( "\r%6d grid cells\n", gridCells.Num() );

#ifdef OUPUT_BSP_STATS_PER_GRID_CELL
	for ( i = 0; i < gridCells.Num(); i++ ) {
		ProcessGridCell( gridCells[i], skipContents );
	}
#else
	common->Printf( "\r%6d %%", 0 );
	for ( i = 0; i < gridCells.Num(); i++ ) {
		DisplayRealTimeString( "\r%6d", i * 100 / gridCells.Num() );
		ProcessGridCell( gridCells[i], skipContents );
	}
	common->Printf( "\r%6d %%\n", 100 );
#endif

	common->Printf( "\r%6d splits\n", numSplits );

	if ( brushMap ) {
		delete brushMap;
	}
}

/*
============
idBrushBSP::WriteBrushMap
============
*/
void idBrushBSP::WriteBrushMap( const idStr &fileName, const idStr &ext, int contents ) {
    Sys_Printf("void idBrushBSP::WriteBrushMap( const idStr &fileName, const idStr &ext, int contents )\r\n");
}


/*
============
idBrushBSP::PruneTree_r
============
*/
void idBrushBSP::PruneTree_r( idBrushBSPNode *node, int contents ) {
    Sys_Printf("void idBrushBSP::PruneTree_r( idBrushBSPNode *node, int contents )\r\n");
}


/*
============
idBrushBSP::PruneTree
============
*/
void idBrushBSP::PruneTree( int contents ) {
    Sys_Printf("void idBrushBSP::PruneTree( int contents )\r\n");
}


/*
============
idBrushBSP::BaseWindingForNode
============
*/
#define	BASE_WINDING_EPSILON		0.001f

idWinding *idBrushBSP::BaseWindingForNode( idBrushBSPNode *node ) {
    Sys_Printf("idWinding *idBrushBSP::BaseWindingForNode( idBrushBSPNode *node )\r\n");
    return NULL;
}


/*
============
idBrushBSP::MakeNodePortal

  create the new portal by taking the full plane winding for the cutting
  plane and clipping it by all of parents of this node
============
*/
void idBrushBSP::MakeNodePortal( idBrushBSPNode *node ) {
    Sys_Printf("void idBrushBSP::MakeNodePortal( idBrushBSPNode *node )\r\n");
}


/*
============
idBrushBSP::SplitNodePortals

  Move or split the portals that bound the node so that the node's children have portals instead of node.
============
*/
#define	SPLIT_WINDING_EPSILON		0.001f

void idBrushBSP::SplitNodePortals( idBrushBSPNode *node ) {
    Sys_Printf("void idBrushBSP::SplitNodePortals( idBrushBSPNode *node )\r\n");
}


/*
============
idBrushBSP::MakeTreePortals_r
============
*/
void idBrushBSP::MakeTreePortals_r( idBrushBSPNode *node ) {
    Sys_Printf("void idBrushBSP::MakeTreePortals_r( idBrushBSPNode *node )\r\n");
}


/*
============
idBrushBSP::MakeOutsidePortals
============
*/
void idBrushBSP::MakeOutsidePortals( void ) {
    Sys_Printf("void idBrushBSP::MakeOutsidePortals( void )\r\n");
}


/*
============
idBrushBSP::Portalize
============
*/
void idBrushBSP::Portalize( void ) {
    Sys_Printf("void idBrushBSP::Portalize( void )\r\n");
}


/*
=============
LeakFile

Finds the shortest possible chain of portals that
leads from the outside leaf to a specific occupied leaf.
=============
*/
void idBrushBSP::LeakFile( const idStr &fileName ) {
    Sys_Printf("void idBrushBSP::LeakFile( const idStr &fileName )\r\n");
}


/*
============
idBrushBSP::FloodThroughPortals_r
============
*/
void idBrushBSP::FloodThroughPortals_r( idBrushBSPNode *node, int contents, int depth ) {
    Sys_Printf("void idBrushBSP::FloodThroughPortals_r( idBrushBSPNode *node, int contents, int depth )\r\n");
}


/*
============
idBrushBSP::FloodFromOrigin
============
*/
bool idBrushBSP::FloodFromOrigin( const idVec3 &origin, int contents ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrushBSP::FloodFromOrigin( const idVec3 &origin, int contents )\r\n");
    return retVal;
}


/*
============
idBrushBSP::FloodFromEntities

  Marks all nodes that can be reached by entites.
============
*/
bool idBrushBSP::FloodFromEntities( const idMapFile *mapFile, int contents, const idStrList &classNames ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrushBSP::FloodFromEntities( const idMapFile *mapFile, int contents, const idStrList &classNames )\r\n");
    return retVal;
}


/*
============
idBrushBSP::RemoveOutside_r
============
*/
void idBrushBSP::RemoveOutside_r( idBrushBSPNode *node, int contents ) {
    Sys_Printf("void idBrushBSP::RemoveOutside_r( idBrushBSPNode *node, int contents )\r\n");
}


/*
============
idBrushBSP::RemoveOutside
============
*/
bool idBrushBSP::RemoveOutside( const idMapFile *mapFile, int contents, const idStrList &classNames ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrushBSP::RemoveOutside( const idMapFile *mapFile, int contents, const idStrList &classNames )\r\n");
    return retVal;
}


/*
============
idBrushBSP::SetPortalPlanes_r
============
*/
void idBrushBSP::SetPortalPlanes_r( idBrushBSPNode *node, idPlaneSet &planeList ) {
    Sys_Printf("void idBrushBSP::SetPortalPlanes_r( idBrushBSPNode *node, idPlaneSet &planeList )\r\n");
}


/*
============
idBrushBSP::SetPortalPlanes

  give all portals a plane number
============
*/
void idBrushBSP::SetPortalPlanes( void ) {
    Sys_Printf("void idBrushBSP::SetPortalPlanes( void )\r\n");
}


/*
============
idBrushBSP::MergeLeafNodePortals
============
*/
void idBrushBSP::MergeLeafNodePortals( idBrushBSPNode *node, int skipContents ) {
    Sys_Printf("void idBrushBSP::MergeLeafNodePortals( idBrushBSPNode *node, int skipContents )\r\n");
}


/*
============
idBrushBSP::MergePortals_r
============
*/
void idBrushBSP::MergePortals_r( idBrushBSPNode *node, int skipContents ) {
    Sys_Printf("void idBrushBSP::MergePortals_r( idBrushBSPNode *node, int skipContents )\r\n");
}


/*
============
idBrushBSP::MergePortals
============
*/
void idBrushBSP::MergePortals( int skipContents ) {
    Sys_Printf("void idBrushBSP::MergePortals( int skipContents )\r\n");
}


/*
============
idBrushBSP::PruneMergedTree_r
============
*/
void idBrushBSP::PruneMergedTree_r( idBrushBSPNode *node ) {
    Sys_Printf("void idBrushBSP::PruneMergedTree_r( idBrushBSPNode *node )\r\n");
}


/*
============
idBrushBSP::UpdateTreeAfterMerge_r
============
*/
void idBrushBSP::UpdateTreeAfterMerge_r( idBrushBSPNode *node, const idBounds &bounds, idBrushBSPNode *oldNode, idBrushBSPNode *newNode ) {
    Sys_Printf("void idBrushBSP::UpdateTreeAfterMerge_r( idBrushBSPNode *node, const idBounds &bounds, idBrushBSPNode *oldNode, idBrushBSPNode *newNode )\r\n");
}


/*
============
idBrushBSP::TryMergeLeafNodes

  NOTE: multiple brances of the BSP tree might point to the same leaf node after merging
============
*/
bool idBrushBSP::TryMergeLeafNodes( idBrushBSPPortal *portal, int side ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBrushBSP::TryMergeLeafNodes( idBrushBSPPortal *portal, int side )\r\n");
    return retVal;
}


/*
============
idBrushBSP::MeltFloor_r

  flood through portals touching the bounds to find all vertices that might be inside the bounds
============
*/
void idBrushBSP::MeltFlood_r( idBrushBSPNode *node, int skipContents, idBounds &bounds, idVectorSet<idVec3,3> &vertexList ) {
    Sys_Printf("void idBrushBSP::MeltFlood_r( idBrushBSPNode *node, int skipContents, idBounds &bounds, idVectorSet<idVec3,3> &vertexList )\r\n");
}


/*
============
idBrushBSP::MeltLeafNodePortals
============
*/
void idBrushBSP::MeltLeafNodePortals( idBrushBSPNode *node, int skipContents, idVectorSet<idVec3,3> &vertexList ) {
    Sys_Printf("void idBrushBSP::MeltLeafNodePortals( idBrushBSPNode *node, int skipContents, idVectorSet<idVec3,3> &vertexList )\r\n");
}


/*
============
idBrushBSP::MeltPortals_r
============
*/
void idBrushBSP::MeltPortals_r( idBrushBSPNode *node, int skipContents, idVectorSet<idVec3,3> &vertexList ) {
    Sys_Printf("void idBrushBSP::MeltPortals_r( idBrushBSPNode *node, int skipContents, idVectorSet<idVec3,3> &vertexList )\r\n");
}


/*
============
idBrushBSP::RemoveLeafNodeColinearPoints
============
*/
void idBrushBSP::RemoveLeafNodeColinearPoints( idBrushBSPNode *node ) {
    Sys_Printf("void idBrushBSP::RemoveLeafNodeColinearPoints( idBrushBSPNode *node )\r\n");
}


/*
============
idBrushBSP::RemoveColinearPoints_r
============
*/
void idBrushBSP::RemoveColinearPoints_r( idBrushBSPNode *node, int skipContents ) {
    Sys_Printf("void idBrushBSP::RemoveColinearPoints_r( idBrushBSPNode *node, int skipContents )\r\n");
}


/*
============
idBrushBSP::MeltPortals
============
*/
void idBrushBSP::MeltPortals( int skipContents ) {
    Sys_Printf("void idBrushBSP::MeltPortals( int skipContents )\r\n");
}

