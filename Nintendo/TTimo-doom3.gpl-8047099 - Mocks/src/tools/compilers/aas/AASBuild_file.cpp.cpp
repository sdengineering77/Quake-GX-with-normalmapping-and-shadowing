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

#define VERTEX_HASH_BOXSIZE				(1<<6)	// must be power of 2
#define VERTEX_HASH_SIZE				(VERTEX_HASH_BOXSIZE*VERTEX_HASH_BOXSIZE)
#define EDGE_HASH_SIZE					(1<<14)

#define INTEGRAL_EPSILON				0.01f
#define VERTEX_EPSILON					0.1f

#define AAS_PLANE_NORMAL_EPSILON		0.00001f
#define AAS_PLANE_DIST_EPSILON			0.01f


idHashIndex *aas_vertexHash;
idHashIndex *aas_edgeHash;
idBounds aas_vertexBounds;
int aas_vertexShift;

/*
================
idAASBuild::SetupHash
================
*/
void idAASBuild::SetupHash( void ) {
    Sys_Printf("void idAASBuild::SetupHash( void )\r\n");
}


/*
================
idAASBuild::ShutdownHash
================
*/
void idAASBuild::ShutdownHash( void ) {
    Sys_Printf("void idAASBuild::ShutdownHash( void )\r\n");
}


/*
================
idAASBuild::ClearHash
================
*/
void idAASBuild::ClearHash( const idBounds &bounds ) {
    Sys_Printf("void idAASBuild::ClearHash( const idBounds &bounds )\r\n");
}


/*
================
idAASBuild::HashVec
================
*/
ID_INLINE int idAASBuild::HashVec( const idVec3 &vec ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASBuild::HashVec( const idVec3 &vec )\r\n");
    return retVal;
}


/*
================
idAASBuild::GetVertex
================
*/
bool idAASBuild::GetVertex( const idVec3 &v, int *vertexNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASBuild::GetVertex( const idVec3 &v, int *vertexNum )\r\n");
    return retVal;
}


/*
================
idAASBuild::GetEdge
================
*/
bool idAASBuild::GetEdge( const idVec3 &v1, const idVec3 &v2, int *edgeNum, int v1num ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASBuild::GetEdge( const idVec3 &v1, const idVec3 &v2, int *edgeNum, int v1num )\r\n");
    return retVal;
}


/*
================
idAASBuild::GetFaceForPortal
================
*/
bool idAASBuild::GetFaceForPortal( idBrushBSPPortal *portal, int side, int *faceNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASBuild::GetFaceForPortal( idBrushBSPPortal *portal, int side, int *faceNum )\r\n");
    return retVal;
}


/*
================
idAASBuild::GetAreaForLeafNode
================
*/
bool idAASBuild::GetAreaForLeafNode( idBrushBSPNode *node, int *areaNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASBuild::GetAreaForLeafNode( idBrushBSPNode *node, int *areaNum )\r\n");
    return retVal;
}


/*
================
idAASBuild::StoreTree_r
================
*/
int idAASBuild::StoreTree_r( idBrushBSPNode *node ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAASBuild::StoreTree_r( idBrushBSPNode *node )\r\n");
    return retVal;
}


/*
================
idAASBuild::GetSizeEstimate_r
================
*/
typedef struct sizeEstimate_s {
	int			numEdgeIndexes;
	int			numFaceIndexes;
	int			numAreas;
	int			numNodes;
} sizeEstimate_t;

void idAASBuild::GetSizeEstimate_r( idBrushBSPNode *parent, idBrushBSPNode *node, struct sizeEstimate_s &size ) {
    Sys_Printf("void idAASBuild::GetSizeEstimate_r( idBrushBSPNode *parent, idBrushBSPNode *node, struct sizeEstimate_s &size )\r\n");
}


/*
================
idAASBuild::SetSizeEstimate
================
*/
void idAASBuild::SetSizeEstimate( const idBrushBSP &bsp, idAASFileLocal *file ) {
    Sys_Printf("void idAASBuild::SetSizeEstimate( const idBrushBSP &bsp, idAASFileLocal *file )\r\n");
}


/*
================
idAASBuild::StoreFile
================
*/
bool idAASBuild::StoreFile( const idBrushBSP &bsp ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAASBuild::StoreFile( const idBrushBSP &bsp )\r\n");
    return retVal;
}

