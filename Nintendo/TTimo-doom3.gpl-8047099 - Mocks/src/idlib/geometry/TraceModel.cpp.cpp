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

#include "TraceModel.h"


/*
============
idTraceModel::SetupBox
============
*/
void idTraceModel::SetupBox( const idBounds &boxBounds ) {
    Sys_Printf("void idTraceModel::SetupBox( const idBounds &boxBounds )\r\n");
}


/*
============
idTraceModel::SetupBox

  The origin is placed at the center of the cube.
============
*/
void idTraceModel::SetupBox( const float size ) {
    Sys_Printf("void idTraceModel::SetupBox( const float size )\r\n");
}


/*
============
idTraceModel::InitBox

  Initialize size independent box.
============
*/
void idTraceModel::InitBox( void ) {
    Sys_Printf("void idTraceModel::InitBox( void )\r\n");
}


/*
============
idTraceModel::SetupOctahedron
============
*/
void idTraceModel::SetupOctahedron( const idBounds &octBounds ) {
    Sys_Printf("void idTraceModel::SetupOctahedron( const idBounds &octBounds )\r\n");
}


/*
============
idTraceModel::SetupOctahedron

  The origin is placed at the center of the octahedron.
============
*/
void idTraceModel::SetupOctahedron( const float size ) {
    Sys_Printf("void idTraceModel::SetupOctahedron( const float size )\r\n");
}


/*
============
idTraceModel::InitOctahedron

  Initialize size independent octahedron.
============
*/
void idTraceModel::InitOctahedron( void ) {
    Sys_Printf("void idTraceModel::InitOctahedron( void )\r\n");
}


/*
============
idTraceModel::SetupDodecahedron
============
*/
void idTraceModel::SetupDodecahedron( const idBounds &dodBounds ) {
    Sys_Printf("void idTraceModel::SetupDodecahedron( const idBounds &dodBounds )\r\n");
}


/*
============
idTraceModel::SetupDodecahedron

  The origin is placed at the center of the octahedron.
============
*/
void idTraceModel::SetupDodecahedron( const float size ) {
    Sys_Printf("void idTraceModel::SetupDodecahedron( const float size )\r\n");
}


/*
============
idTraceModel::InitDodecahedron

  Initialize size independent dodecahedron.
============
*/
void idTraceModel::InitDodecahedron( void ) {
    Sys_Printf("void idTraceModel::InitDodecahedron( void )\r\n");
}


/*
============
idTraceModel::SetupCylinder
============
*/
void idTraceModel::SetupCylinder( const idBounds &cylBounds, const int numSides ) {
    Sys_Printf("void idTraceModel::SetupCylinder( const idBounds &cylBounds, const int numSides )\r\n");
}


/*
============
idTraceModel::SetupCylinder

  The origin is placed at the center of the cylinder.
============
*/
void idTraceModel::SetupCylinder( const float height, const float width, const int numSides ) {
    Sys_Printf("void idTraceModel::SetupCylinder( const float height, const float width, const int numSides )\r\n");
}


/*
============
idTraceModel::SetupCone
============
*/
void idTraceModel::SetupCone( const idBounds &coneBounds, const int numSides ) {
    Sys_Printf("void idTraceModel::SetupCone( const idBounds &coneBounds, const int numSides )\r\n");
}


/*
============
idTraceModel::SetupCone

  The origin is placed at the apex of the cone.
============
*/
void idTraceModel::SetupCone( const float height, const float width, const int numSides ) {
    Sys_Printf("void idTraceModel::SetupCone( const float height, const float width, const int numSides )\r\n");
}


/*
============
idTraceModel::SetupBone

  The origin is placed at the center of the bone.
============
*/
void idTraceModel::SetupBone( const float length, const float width ) {
    Sys_Printf("void idTraceModel::SetupBone( const float length, const float width )\r\n");
}


/*
============
idTraceModel::InitBone

  Initialize size independent bone.
============
*/
void idTraceModel::InitBone( void ) {
    Sys_Printf("void idTraceModel::InitBone( void )\r\n");
}


/*
============
idTraceModel::SetupPolygon
============
*/
void idTraceModel::SetupPolygon( const idVec3 *v, const int count ) {
    Sys_Printf("void idTraceModel::SetupPolygon( const idVec3 *v, const int count )\r\n");
}


/*
============
idTraceModel::SetupPolygon
============
*/
void idTraceModel::SetupPolygon( const idWinding &w ) {
    Sys_Printf("void idTraceModel::SetupPolygon( const idWinding &w )\r\n");
}


/*
============
idTraceModel::VolumeFromPolygon
============
*/
void idTraceModel::VolumeFromPolygon( idTraceModel &trm, float thickness ) const {
    Sys_Printf("void idTraceModel::VolumeFromPolygon( idTraceModel &trm, float thickness )\r\n");
}


/*
============
idTraceModel::GenerateEdgeNormals
============
*/
#define SHARP_EDGE_DOT	-0.7f

int idTraceModel::GenerateEdgeNormals( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTraceModel::GenerateEdgeNormals( void )\r\n");
    return retVal;
}


/*
============
idTraceModel::Translate
============
*/
void idTraceModel::Translate( const idVec3 &translation ) {
    Sys_Printf("void idTraceModel::Translate( const idVec3 &translation )\r\n");
}


/*
============
idTraceModel::Rotate
============
*/
void idTraceModel::Rotate( const idMat3 &rotation ) {
    Sys_Printf("void idTraceModel::Rotate( const idMat3 &rotation )\r\n");
}


/*
============
idTraceModel::Shrink
============
*/
void idTraceModel::Shrink( const float m ) {
    Sys_Printf("void idTraceModel::Shrink( const float m )\r\n");
}


/*
============
idTraceModel::Compare
============
*/
bool idTraceModel::Compare( const idTraceModel &trm ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idTraceModel::Compare( const idTraceModel &trm )\r\n");
    return retVal;
}


/*
============
idTraceModel::GetPolygonArea
============
*/
float idTraceModel::GetPolygonArea( int polyNum ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idTraceModel::GetPolygonArea( int polyNum )\r\n");
    return retVal;
}


/*
============
idTraceModel::GetOrderedSilhouetteEdges
============
*/
int idTraceModel::GetOrderedSilhouetteEdges( const int edgeIsSilEdge[MAX_TRACEMODEL_EDGES+1], int silEdges[MAX_TRACEMODEL_EDGES] ) const {
	int i, j, edgeNum, numSilEdges, nextSilVert;
	int unsortedSilEdges[MAX_TRACEMODEL_EDGES];

	numSilEdges = 0;
	for ( i = 1; i <= numEdges; i++ ) {
		if ( edgeIsSilEdge[i] ) {
			unsortedSilEdges[numSilEdges++] = i;
		}
	}

	silEdges[0] = unsortedSilEdges[0];
	unsortedSilEdges[0] = -1;
	nextSilVert = edges[silEdges[0]].v[0];
	for ( i = 1; i < numSilEdges; i++ ) {
		for ( j = 1; j < numSilEdges; j++ ) {
			edgeNum = unsortedSilEdges[j];
			if ( edgeNum >= 0 ) {
				if ( edges[edgeNum].v[0] == nextSilVert ) {
					nextSilVert = edges[edgeNum].v[1];
					silEdges[i] = edgeNum;
					break;
				}
				if ( edges[edgeNum].v[1] == nextSilVert ) {
					nextSilVert = edges[edgeNum].v[0];
					silEdges[i] = -edgeNum;
					break;
				}
			}
		}
		if ( j >= numSilEdges ) {
			silEdges[i] = 1;	// shouldn't happen
		}
		unsortedSilEdges[j] = -1;
	}
	return numSilEdges;
}

/*
============
idTraceModel::GetProjectionSilhouetteEdges
============
*/
int idTraceModel::GetProjectionSilhouetteEdges( const idVec3 &projectionOrigin, int silEdges[MAX_TRACEMODEL_EDGES] ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTraceModel::GetProjectionSilhouetteEdges( const idVec3 &projectionOrigin, int silEdges[MAX_TRACEMODEL_EDGES] )\r\n");
    return retVal;
}


/*
============
idTraceModel::GetParallelProjectionSilhouetteEdges
============
*/
int idTraceModel::GetParallelProjectionSilhouetteEdges( const idVec3 &projectionDir, int silEdges[MAX_TRACEMODEL_EDGES] ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTraceModel::GetParallelProjectionSilhouetteEdges( const idVec3 &projectionDir, int silEdges[MAX_TRACEMODEL_EDGES] )\r\n");
    return retVal;
}



/*

  credits to Brian Mirtich for his paper "Fast and Accurate Computation of Polyhedral Mass Properties"

*/

typedef struct projectionIntegrals_s {
	float P1;
	float Pa, Pb;
	float Paa, Pab, Pbb;
	float Paaa, Paab, Pabb, Pbbb;
} projectionIntegrals_t;

/*
============
idTraceModel::ProjectionIntegrals
============
*/
void idTraceModel::ProjectionIntegrals( int polyNum, int a, int b, struct projectionIntegrals_s &integrals ) const {
    Sys_Printf("void idTraceModel::ProjectionIntegrals( int polyNum, int a, int b, struct projectionIntegrals_s &integrals )\r\n");
}


typedef struct polygonIntegrals_s {
	float Fa, Fb, Fc;
	float Faa, Fbb, Fcc;
	float Faaa, Fbbb, Fccc;
	float Faab, Fbbc, Fcca;
} polygonIntegrals_t;

/*
============
idTraceModel::PolygonIntegrals
============
*/
void idTraceModel::PolygonIntegrals( int polyNum, int a, int b, int c, struct polygonIntegrals_s &integrals ) const {
    Sys_Printf("void idTraceModel::PolygonIntegrals( int polyNum, int a, int b, int c, struct polygonIntegrals_s &integrals )\r\n");
}


typedef struct volumeIntegrals_s {
	float T0;
	idVec3 T1;
	idVec3 T2;
	idVec3 TP;
} volumeIntegrals_t;

/*
============
idTraceModel::VolumeIntegrals
============
*/
void idTraceModel::VolumeIntegrals( struct volumeIntegrals_s &integrals ) const {
    Sys_Printf("void idTraceModel::VolumeIntegrals( struct volumeIntegrals_s &integrals )\r\n");
}


/*
============
idTraceModel::GetMassProperties
============
*/
void idTraceModel::GetMassProperties( const float density, float &mass, idVec3 &centerOfMass, idMat3 &inertiaTensor ) const {
    Sys_Printf("void idTraceModel::GetMassProperties( const float density, float &mass, idVec3 &centerOfMass, idMat3 &inertiaTensor )\r\n");
}

