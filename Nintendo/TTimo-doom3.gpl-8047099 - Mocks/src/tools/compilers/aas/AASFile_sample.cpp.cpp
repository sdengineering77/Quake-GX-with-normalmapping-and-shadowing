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

#include "AASFile.h"
#include "AASFile_local.h"


//===============================================================
//
//	Environment Sampling
//
//===============================================================

/*
================
idAASFileLocal::EdgeCenter
================
*/
idVec3 idAASFileLocal::EdgeCenter( int edgeNum ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAASFileLocal::EdgeCenter( int edgeNum )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::FaceCenter
================
*/
idVec3 idAASFileLocal::FaceCenter( int faceNum ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAASFileLocal::FaceCenter( int faceNum )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::AreaCenter
================
*/
idVec3 idAASFileLocal::AreaCenter( int areaNum ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAASFileLocal::AreaCenter( int areaNum )\r\n");
    return retVal;
}


/*
============
idAASFileLocal::AreaReachableGoal
============
*/
idVec3 idAASFileLocal::AreaReachableGoal( int areaNum ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAASFileLocal::AreaReachableGoal( int areaNum )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::EdgeBounds
================
*/
idBounds idAASFileLocal::EdgeBounds( int edgeNum ) const {
    idBounds retVal;
    memset(&retVal, 0, sizeof(idBounds));
    Sys_Printf("idBounds idAASFileLocal::EdgeBounds( int edgeNum )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::FaceBounds
================
*/
idBounds idAASFileLocal::FaceBounds( int faceNum ) const {
    idBounds retVal;
    memset(&retVal, 0, sizeof(idBounds));
    Sys_Printf("idBounds idAASFileLocal::FaceBounds( int faceNum )\r\n");
    return retVal;
}


/*
================
idAASFileLocal::AreaBounds
================
*/
idBounds idAASFileLocal::AreaBounds( int areaNum ) const {
    idBounds retVal;
    memset(&retVal, 0, sizeof(idBounds));
    Sys_Printf("idBounds idAASFileLocal::AreaBounds( int areaNum )\r\n");
    return retVal;
}


/*
============
idAASFileLocal::PointAreaNum
============
*/
int idAASFileLocal::PointAreaNum( const idVec3 &origin ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASFileLocal::PointAreaNum( const idVec3 &origin )\r\n");
    return retVal;
}


/*
============
idAASFileLocal::PointReachableAreaNum
============
*/
int idAASFileLocal::PointReachableAreaNum( const idVec3 &origin, const idBounds &searchBounds, const int areaFlags, const int excludeTravelFlags ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASFileLocal::PointReachableAreaNum( const idVec3 &origin, const idBounds &searchBounds, const int areaFlags, const int excludeTravelFlags )\r\n");
    return retVal;
}


/*
============
idAASFileLocal::BoundsReachableAreaNum_r
============
*/
int idAASFileLocal::BoundsReachableAreaNum_r( int nodeNum, const idBounds &bounds, const int areaFlags, const int excludeTravelFlags ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASFileLocal::BoundsReachableAreaNum_r( int nodeNum, const idBounds &bounds, const int areaFlags, const int excludeTravelFlags )\r\n");
    return retVal;
}


/*
============
idAASFileLocal::BoundsReachableAreaNum
============
*/
int idAASFileLocal::BoundsReachableAreaNum( const idBounds &bounds, const int areaFlags, const int excludeTravelFlags ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASFileLocal::BoundsReachableAreaNum( const idBounds &bounds, const int areaFlags, const int excludeTravelFlags )\r\n");
    return retVal;
}


/*
============
idAASFileLocal::PushPointIntoAreaNum
============
*/
void idAASFileLocal::PushPointIntoAreaNum( int areaNum, idVec3 &point ) const {
    Sys_Printf("void idAASFileLocal::PushPointIntoAreaNum( int areaNum, idVec3 &point )\r\n");
}


/*
============
idAASFileLocal::Trace
============
*/
#define TRACEPLANE_EPSILON		0.125f

typedef struct aasTraceStack_s
{
	idVec3			start;
	idVec3			end;
	int				planeNum;
	int				nodeNum;
} aasTraceStack_t;

bool idAASFileLocal::Trace( aasTrace_t &trace, const idVec3 &start, const idVec3 &end ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASFileLocal::Trace( aasTrace_t &trace, const idVec3 &start, const idVec3 &end )\r\n");
    return retVal;
}


/*
============
idAASLocal::AreaContentsTravelFlags
============
*/
int idAASFileLocal::AreaContentsTravelFlags( int areaNum ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASFileLocal::AreaContentsTravelFlags( int areaNum )\r\n");
    return retVal;
}


/*
============
idAASFileLocal::MaxTreeDepth_r
============
*/
void idAASFileLocal::MaxTreeDepth_r( int nodeNum, int &depth, int &maxDepth ) const {
    Sys_Printf("void idAASFileLocal::MaxTreeDepth_r( int nodeNum, int &depth, int &maxDepth )\r\n");
}


/*
============
idAASFileLocal::MaxTreeDepth
============
*/
int idAASFileLocal::MaxTreeDepth( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASFileLocal::MaxTreeDepth( void )\r\n");
    return retVal;
}

