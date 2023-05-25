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


/*
=================
UpdateVertexIndex
=================
*/
ID_INLINE int UpdateVertexIndex( int vertexIndexNum[2], int *vertexRemap, int *vertexCopyIndex, int vertNum ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int UpdateVertexIndex( int vertexIndexNum[2], int *vertexRemap, int *vertexCopyIndex, int vertNum )\r\n");
    return retVal;
}


/*
=================
idSurface::Split
=================
*/
int idSurface::Split( const idPlane &plane, const float epsilon, idSurface **front, idSurface **back, int *frontOnPlaneEdges, int *backOnPlaneEdges ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSurface::Split( const idPlane &plane, const float epsilon, idSurface **front, idSurface **back, int *frontOnPlaneEdges, int *backOnPlaneEdges )\r\n");
    return retVal;
}


/*
=================
idSurface::ClipInPlace
=================
*/
bool idSurface::ClipInPlace( const idPlane &plane, const float epsilon, const bool keepOn ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSurface::ClipInPlace( const idPlane &plane, const float epsilon, const bool keepOn )\r\n");
    return retVal;
}


/*
=============
idSurface::IsConnected
=============
*/
bool idSurface::IsConnected( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSurface::IsConnected( void )\r\n");
    return retVal;
}


/*
=================
idSurface::IsClosed
=================
*/
bool idSurface::IsClosed( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSurface::IsClosed( void )\r\n");
    return retVal;
}


/*
=============
idSurface::IsPolytope
=============
*/
bool idSurface::IsPolytope( const float epsilon ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSurface::IsPolytope( const float epsilon )\r\n");
    return retVal;
}


/*
=============
idSurface::PlaneDistance
=============
*/
float idSurface::PlaneDistance( const idPlane &plane ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idSurface::PlaneDistance( const idPlane &plane )\r\n");
    return retVal;
}


/*
=============
idSurface::PlaneSide
=============
*/
int idSurface::PlaneSide( const idPlane &plane, const float epsilon ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSurface::PlaneSide( const idPlane &plane, const float epsilon )\r\n");
    return retVal;
}


/*
=================
idSurface::LineIntersection
=================
*/
bool idSurface::LineIntersection( const idVec3 &start, const idVec3 &end, bool backFaceCull ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSurface::LineIntersection( const idVec3 &start, const idVec3 &end, bool backFaceCull )\r\n");
    return retVal;
}


/*
=================
idSurface::RayIntersection
=================
*/
bool idSurface::RayIntersection( const idVec3 &start, const idVec3 &dir, float &scale, bool backFaceCull ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSurface::RayIntersection( const idVec3 &start, const idVec3 &dir, float &scale, bool backFaceCull )\r\n");
    return retVal;
}


/*
=================
idSurface::GenerateEdgeIndexes

  Assumes each edge is shared by at most two triangles.
=================
*/
void idSurface::GenerateEdgeIndexes( void ) {
    Sys_Printf("void idSurface::GenerateEdgeIndexes( void )\r\n");
}


/*
=================
idSurface::FindEdge
=================
*/
int idSurface::FindEdge( int v1, int v2 ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSurface::FindEdge( int v1, int v2 )\r\n");
    return retVal;
}

