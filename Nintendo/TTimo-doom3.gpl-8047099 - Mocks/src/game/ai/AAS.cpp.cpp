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

/*
============
idAAS::Alloc
============
*/
idAAS *idAAS::Alloc( void ) {
    Sys_Printf("idAAS *idAAS::Alloc( void )\r\n");
    return NULL;
}


/*
============
idAAS::idAAS
============
*/
idAAS::~idAAS( void ) {
}

/*
============
idAASLocal::idAASLocal
============
*/
idAASLocal::idAASLocal( void ) {
	file = NULL;
}

/*
============
idAASLocal::~idAASLocal
============
*/
idAASLocal::~idAASLocal( void ) {
	Shutdown();
}

/*
============
idAASLocal::Init
============
*/
bool idAASLocal::Init( const idStr &mapName, unsigned int mapFileCRC ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASLocal::Init( const idStr &mapName, unsigned int mapFileCRC )\r\n");
    return retVal;
}


/*
============
idAASLocal::Shutdown
============
*/
void idAASLocal::Shutdown( void ) {
    Sys_Printf("void idAASLocal::Shutdown( void )\r\n");
}


/*
============
idAASLocal::Stats
============
*/
void idAASLocal::Stats( void ) const {
    Sys_Printf("void idAASLocal::Stats( void )\r\n");
}


/*
============
idAASLocal::GetSettings
============
*/
const idAASSettings *idAASLocal::GetSettings( void ) const {
    Sys_Printf("idAASSettings *idAASLocal::GetSettings( void )\r\n");
    return NULL;
}


/*
============
idAASLocal::PointAreaNum
============
*/
int idAASLocal::PointAreaNum( const idVec3 &origin ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASLocal::PointAreaNum( const idVec3 &origin )\r\n");
    return retVal;
}


/*
============
idAASLocal::PointReachableAreaNum
============
*/
int idAASLocal::PointReachableAreaNum( const idVec3 &origin, const idBounds &searchBounds, const int areaFlags ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASLocal::PointReachableAreaNum( const idVec3 &origin, const idBounds &searchBounds, const int areaFlags )\r\n");
    return retVal;
}


/*
============
idAASLocal::BoundsReachableAreaNum
============
*/
int idAASLocal::BoundsReachableAreaNum( const idBounds &bounds, const int areaFlags ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASLocal::BoundsReachableAreaNum( const idBounds &bounds, const int areaFlags )\r\n");
    return retVal;
}


/*
============
idAASLocal::PushPointIntoAreaNum
============
*/
void idAASLocal::PushPointIntoAreaNum( int areaNum, idVec3 &origin ) const {
    Sys_Printf("void idAASLocal::PushPointIntoAreaNum( int areaNum, idVec3 &origin )\r\n");
}


/*
============
idAASLocal::AreaCenter
============
*/
idVec3 idAASLocal::AreaCenter( int areaNum ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAASLocal::AreaCenter( int areaNum )\r\n");
    return retVal;
}


/*
============
idAASLocal::AreaFlags
============
*/
int idAASLocal::AreaFlags( int areaNum ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASLocal::AreaFlags( int areaNum )\r\n");
    return retVal;
}


/*
============
idAASLocal::AreaTravelFlags
============
*/
int idAASLocal::AreaTravelFlags( int areaNum ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASLocal::AreaTravelFlags( int areaNum )\r\n");
    return retVal;
}


/*
============
idAASLocal::Trace
============
*/
bool idAASLocal::Trace( aasTrace_t &trace, const idVec3 &start, const idVec3 &end ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASLocal::Trace( aasTrace_t &trace, const idVec3 &start, const idVec3 &end )\r\n");
    return retVal;
}


/*
============
idAASLocal::GetPlane
============
*/
const idPlane &idAASLocal::GetPlane( int planeNum ) const {
	if ( !file ) {
		static idPlane dummy;
		return dummy;
	}
	return file->GetPlane( planeNum );
}

/*
============
idAASLocal::GetEdgeVertexNumbers
============
*/
void idAASLocal::GetEdgeVertexNumbers( int edgeNum, int verts[2] ) const {
    Sys_Printf("void idAASLocal::GetEdgeVertexNumbers( int edgeNum, int verts[2] )\r\n");
}


/*
============
idAASLocal::GetEdge
============
*/
void idAASLocal::GetEdge( int edgeNum, idVec3 &start, idVec3 &end ) const {
    Sys_Printf("void idAASLocal::GetEdge( int edgeNum, idVec3 &start, idVec3 &end )\r\n");
}

