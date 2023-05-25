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

#include "AASBuild_local.h"

#define LEDGE_EPSILON		0.1f

//===============================================================
//
//	idLedge
//
//===============================================================

/*
============
idLedge::idLedge
============
*/
idLedge::idLedge( void ) {
}

/*
============
idLedge::idLedge
============
*/
idLedge::idLedge( const idVec3 &v1, const idVec3 &v2, const idVec3 &gravityDir, idBrushBSPNode *n ) {
	start = v1;
	end = v2;
	node = n;
	numPlanes = 4;
	planes[0].SetNormal( (v1 - v2).Cross( gravityDir ) );
	planes[0].Normalize();
	planes[0].FitThroughPoint( v1 );
	planes[1].SetNormal( (v1 - v2).Cross( planes[0].Normal() ) );
	planes[1].Normalize();
	planes[1].FitThroughPoint( v1 );
	planes[2].SetNormal( v1 - v2 );
	planes[2].Normalize();
	planes[2].FitThroughPoint( v1 );
	planes[3].SetNormal( v2 - v1 );
	planes[3].Normalize();
	planes[3].FitThroughPoint( v2 );
}

/*
============
idLedge::AddPoint
============
*/
void idLedge::AddPoint( const idVec3 &v ) {
    Sys_Printf("void idLedge::AddPoint( const idVec3 &v )\r\n");
}


/*
============
idLedge::CreateBevels

  NOTE: this assumes the gravity is vertical
============
*/
void idLedge::CreateBevels( const idVec3 &gravityDir ) {
    Sys_Printf("void idLedge::CreateBevels( const idVec3 &gravityDir )\r\n");
}


/*
============
idLedge::Expand
============
*/
void idLedge::Expand( const idBounds &bounds, float maxStepHeight ) {
    Sys_Printf("void idLedge::Expand( const idBounds &bounds, float maxStepHeight )\r\n");
}


/*
============
idLedge::ChopWinding
============
*/
idWinding *idLedge::ChopWinding( const idWinding *winding ) const {
    Sys_Printf("idWinding *idLedge::ChopWinding( const idWinding *winding )\r\n");
    return NULL;
}


/*
============
idLedge::PointBetweenBounds
============
*/
bool idLedge::PointBetweenBounds( const idVec3 &v ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idLedge::PointBetweenBounds( const idVec3 &v )\r\n");
    return retVal;
}



//===============================================================
//
//	idAASBuild
//
//===============================================================

/*
============
idAASBuild::LedgeSubdivFlood_r
============
*/
void idAASBuild::LedgeSubdivFlood_r( idBrushBSPNode *node, const idLedge *ledge ) {
    Sys_Printf("void idAASBuild::LedgeSubdivFlood_r( idBrushBSPNode *node, const idLedge *ledge )\r\n");
}


/*
============
idAASBuild::LedgeSubdivLeafNodes_r

  The node the ledge was originally part of might be split by other ledges.
  Here we recurse down the tree from the original node to find all the new leaf nodes the ledge might be part of.
============
*/
void idAASBuild::LedgeSubdivLeafNodes_r( idBrushBSPNode *node, const idLedge *ledge ) {
    Sys_Printf("void idAASBuild::LedgeSubdivLeafNodes_r( idBrushBSPNode *node, const idLedge *ledge )\r\n");
}


/*
============
idAASBuild::LedgeSubdiv
============
*/
void idAASBuild::LedgeSubdiv( idBrushBSPNode *root ) {
    Sys_Printf("void idAASBuild::LedgeSubdiv( idBrushBSPNode *root )\r\n");
}


/*
============
idAASBuild::IsLedgeSide_r
============
*/
bool idAASBuild::IsLedgeSide_r( idBrushBSPNode *node, idFixedWinding *w, const idPlane &plane, const idVec3 &normal, const idVec3 &origin, const float radius ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASBuild::IsLedgeSide_r( idBrushBSPNode *node, idFixedWinding *w, const idPlane &plane, const idVec3 &normal, const idVec3 &origin, const float radius )\r\n");
    return retVal;
}


/*
============
idAASBuild::AddLedge
============
*/
void idAASBuild::AddLedge( const idVec3 &v1, const idVec3 &v2, idBrushBSPNode *node ) {
    Sys_Printf("void idAASBuild::AddLedge( const idVec3 &v1, const idVec3 &v2, idBrushBSPNode *node )\r\n");
}


/*
============
idAASBuild::FindLeafNodeLedges
============
*/
void idAASBuild::FindLeafNodeLedges( idBrushBSPNode *root, idBrushBSPNode *node ) {
    Sys_Printf("void idAASBuild::FindLeafNodeLedges( idBrushBSPNode *root, idBrushBSPNode *node )\r\n");
}


/*
============
idAASBuild::FindLedges_r
============
*/
void idAASBuild::FindLedges_r( idBrushBSPNode *root, idBrushBSPNode *node ) {
    Sys_Printf("void idAASBuild::FindLedges_r( idBrushBSPNode *root, idBrushBSPNode *node )\r\n");
}


/*
============
idAASBuild::WriteLedgeMap
============
*/
void idAASBuild::WriteLedgeMap( const idStr &fileName, const idStr &ext ) {
    Sys_Printf("void idAASBuild::WriteLedgeMap( const idStr &fileName, const idStr &ext )\r\n");
}


/*
============
idAASBuild::LedgeSubdivision

  NOTE: this assumes the bounding box is higher than the maximum step height
		only ledges with vertical sides are considered
============
*/
void idAASBuild::LedgeSubdivision( idBrushBSP &bsp ) {
    Sys_Printf("void idAASBuild::LedgeSubdivision( idBrushBSP &bsp )\r\n");
}

