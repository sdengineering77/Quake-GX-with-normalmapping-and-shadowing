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

#include "../../idlib/precompiled.h"
#pragma hdrstop

#include "AAS_local.h"

#define SUBSAMPLE_WALK_PATH		1
#define SUBSAMPLE_FLY_PATH		0

const int		maxWalkPathIterations		= 10;
const float		maxWalkPathDistance			= 500.0f;
const float		walkPathSampleDistance		= 8.0f;

const int		maxFlyPathIterations		= 10;
const float		maxFlyPathDistance			= 500.0f;
const float		flyPathSampleDistance		= 8.0f;


/*
============
idAASLocal::EdgeSplitPoint

  calculates split point of the edge with the plane
  returns true if the split point is between the edge vertices
============
*/
bool idAASLocal::EdgeSplitPoint( idVec3 &split, int edgeNum, const idPlane &plane ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASLocal::EdgeSplitPoint( idVec3 &split, int edgeNum, const idPlane &plane )\r\n");
    return retVal;
}


/*
============
idAASLocal::FloorEdgeSplitPoint

  calculates either the closest or furthest point on the floor of the area which also lies on the pathPlane
  the point has to be on the front side of the frontPlane to be valid
============
*/
bool idAASLocal::FloorEdgeSplitPoint( idVec3 &bestSplit, int areaNum, const idPlane &pathPlane, const idPlane &frontPlane, bool closest ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASLocal::FloorEdgeSplitPoint( idVec3 &bestSplit, int areaNum, const idPlane &pathPlane, const idPlane &frontPlane, bool closest )\r\n");
    return retVal;
}


/*
============
idAASLocal::WalkPathValid

  returns true if one can walk in a straight line between origin and goalOrigin
============
*/
bool idAASLocal::WalkPathValid( int areaNum, const idVec3 &origin, int goalAreaNum, const idVec3 &goalOrigin, int travelFlags, idVec3 &endPos, int &endAreaNum ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASLocal::WalkPathValid( int areaNum, const idVec3 &origin, int goalAreaNum, const idVec3 &goalOrigin, int travelFlags, idVec3 &endPos, int &endAreaNum )\r\n");
    return retVal;
}


/*
============
idAASLocal::SubSampleWalkPath
============
*/
idVec3 idAASLocal::SubSampleWalkPath( int areaNum, const idVec3 &origin, const idVec3 &start, const idVec3 &end, int travelFlags, int &endAreaNum ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAASLocal::SubSampleWalkPath( int areaNum, const idVec3 &origin, const idVec3 &start, const idVec3 &end, int travelFlags, int &endAreaNum )\r\n");
    return retVal;
}


/*
============
idAASLocal::WalkPathToGoal

  FIXME: don't stop optimizing on first failure ?
============
*/
bool idAASLocal::WalkPathToGoal( aasPath_t &path, int areaNum, const idVec3 &origin, int goalAreaNum, const idVec3 &goalOrigin, int travelFlags ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASLocal::WalkPathToGoal( aasPath_t &path, int areaNum, const idVec3 &origin, int goalAreaNum, const idVec3 &goalOrigin, int travelFlags )\r\n");
    return retVal;
}


/*
============
idAASLocal::FlyPathValid

  returns true if one can fly in a straight line between origin and goalOrigin
============
*/
bool idAASLocal::FlyPathValid( int areaNum, const idVec3 &origin, int goalAreaNum, const idVec3 &goalOrigin, int travelFlags, idVec3 &endPos, int &endAreaNum ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASLocal::FlyPathValid( int areaNum, const idVec3 &origin, int goalAreaNum, const idVec3 &goalOrigin, int travelFlags, idVec3 &endPos, int &endAreaNum )\r\n");
    return retVal;
}


/*
============
idAASLocal::SubSampleFlyPath
============
*/
idVec3 idAASLocal::SubSampleFlyPath( int areaNum, const idVec3 &origin, const idVec3 &start, const idVec3 &end, int travelFlags, int &endAreaNum ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAASLocal::SubSampleFlyPath( int areaNum, const idVec3 &origin, const idVec3 &start, const idVec3 &end, int travelFlags, int &endAreaNum )\r\n");
    return retVal;
}


/*
============
idAASLocal::FlyPathToGoal

  FIXME: don't stop optimizing on first failure ?
============
*/
bool idAASLocal::FlyPathToGoal( aasPath_t &path, int areaNum, const idVec3 &origin, int goalAreaNum, const idVec3 &goalOrigin, int travelFlags ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASLocal::FlyPathToGoal( aasPath_t &path, int areaNum, const idVec3 &origin, int goalAreaNum, const idVec3 &goalOrigin, int travelFlags )\r\n");
    return retVal;
}


typedef struct wallEdge_s {
	int					edgeNum;
	int					verts[2];
	struct wallEdge_s *	next;
} wallEdge_t;

/*
============
idAASLocal::SortWallEdges
============
*/
void idAASLocal::SortWallEdges( int *edges, int numEdges ) const {
    Sys_Printf("void idAASLocal::SortWallEdges( int *edges, int numEdges )\r\n");
}


/*
============
idAASLocal::GetWallEdges
============
*/
int idAASLocal::GetWallEdges( int areaNum, const idBounds &bounds, int travelFlags, int *edges, int maxEdges ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASLocal::GetWallEdges( int areaNum, const idBounds &bounds, int travelFlags, int *edges, int maxEdges )\r\n");
    return retVal;
}

