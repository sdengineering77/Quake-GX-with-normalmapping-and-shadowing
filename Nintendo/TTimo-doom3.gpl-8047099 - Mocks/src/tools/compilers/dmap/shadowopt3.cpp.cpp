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

#include "dmap.h"
#include "../../../renderer/tr_local.h"

/*

  given a set of faces that are clipped to the required frustum

  make 2D projection for each vertex

  for each edge
	add edge, generating new points at each edge intersection

  ?add all additional edges to make a full triangulation

  make full triangulation

  for each triangle
	find midpoint
	find original triangle with midpoint closest to view
	annotate triangle with that data
	project all vertexes to that plane
	output the triangle as a front cap

  snap all vertexes
  make a back plane projection for all vertexes

  for each edge
	if one side doesn't have a triangle
		make a sil edge to back plane projection
		continue
	if triangles on both sides have two verts in common
		continue
	make a sil edge from one triangle to the other
		



  classify triangles on common planes, so they can be optimized 

  what about interpenetrating triangles???

  a perfect shadow volume will have every edge exactly matched with
  an opposite, and no two triangles covering the same area on either
  the back projection or a silhouette edge.

  Optimizing the triangles on the projected plane can give a significant
  improvement, but the quadratic time nature of the optimization process
  probably makes it untenable.

  There exists some small room for further triangle count optimizations of the volumes
  by collapsing internal surface geometry in some cases, or allowing original triangles
  to extend outside the exactly light frustum without being clipped, but it probably
  isn't worth it.

  Triangle count optimizations at the expense of a slight fill rate cost
  may be apropriate in some cases.


  Perform the complete clipping on all triangles
  for each vertex
	project onto the apropriate plane and mark plane bit as in use
for each triangle
	if points project onto different planes, clip 
*/


typedef struct {
	idVec3	v[3];
	idVec3	edge[3];	// positive side is inside the triangle
	glIndex_t	index[3];
	idPlane	plane;		// positive side is forward for the triangle, which is away from the light
	int		planeNum;	// from original triangle, not calculated from the clipped verts
} shadowTri_t;

static const int MAX_SHADOW_TRIS = 32768;

static	shadowTri_t	outputTris[MAX_SHADOW_TRIS];
static	int		numOutputTris;

typedef struct shadowOptEdge_s {
	glIndex_t	index[2];
	struct shadowOptEdge_s	*nextEdge;
} shadowOptEdge_t;

static const int MAX_SIL_EDGES = MAX_SHADOW_TRIS*3;
static	shadowOptEdge_t	silEdges[MAX_SIL_EDGES];
static	int		numSilEdges;

typedef struct silQuad_s {
	int		nearV[2];
	int		farV[2];		// will always be a projection of near[]
	struct silQuad_s	*nextQuad;
} silQuad_t;

static const int MAX_SIL_QUADS = MAX_SHADOW_TRIS*3;
static	silQuad_t	silQuads[MAX_SIL_QUADS];
static int		numSilQuads;


typedef struct {
	idVec3	normal;	// all sil planes go through the projection origin
	shadowOptEdge_t	*edges;
	silQuad_t		*fragmentedQuads;
} silPlane_t;

static float EDGE_PLANE_EPSILON	= 0.1f;
static float UNIQUE_EPSILON = 0.1f;

static int		numSilPlanes;
static silPlane_t	*silPlanes;

// the uniqued verts are still in projection centered space, not global space
static	int		numUniqued;
static	int		numUniquedBeforeProjection;
static	int		maxUniqued;
static	idVec3	*uniqued;

static	optimizedShadow_t	ret;
static	int		maxRetIndexes;

static int FindUniqueVert( idVec3 &v );

//=====================================================================================

/*
=================
CreateEdgesForTri
=================
*/
static void CreateEdgesForTri( shadowTri_t *tri ) {
    Sys_Printf("void CreateEdgesForTri( shadowTri_t *tri )\r\n");
}



static const float EDGE_EPSILON = 0.1f;

static bool TriOutsideTri( const shadowTri_t *a, const shadowTri_t *b ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool TriOutsideTri( const shadowTri_t *a, const shadowTri_t *b )\r\n");
    return retVal;
}


static bool TriBehindTri( const shadowTri_t *a, const shadowTri_t *b ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool TriBehindTri( const shadowTri_t *a, const shadowTri_t *b )\r\n");
    return retVal;
}


/*
===================
ClipTriangle_r
===================
*/
static int c_removedFragments;
static void ClipTriangle_r( const shadowTri_t *tri, int startTri, int skipTri, int numTris, const shadowTri_t *tris ) {
    Sys_Printf("void ClipTriangle_r( const shadowTri_t *tri, int startTri, int skipTri, int numTris, const shadowTri_t *tris )\r\n");
}



/*
====================
ClipOccluders

Generates outputTris by clipping all the triangles against each other,
retaining only those closest to the projectionOrigin
====================
*/
static void ClipOccluders( idVec4 *verts, glIndex_t *indexes, int numIndexes, 
										 idVec3 projectionOrigin ) {
    Sys_Printf("void ClipOccluders( idVec4 *verts, glIndex_t *indexes, int numIndexes, idVec3 projectionOrigin )\r\n");
}


//=====================================================================================

/*
================
OptimizeOutputTris
================
*/
static void OptimizeOutputTris( void ) {
    Sys_Printf("void OptimizeOutputTris( void )\r\n");
}


//==================================================================================

static int EdgeSort( const void *a,  const void *b ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int EdgeSort( const void *a, const void *b )\r\n");
    return retVal;
}


/*
=====================
GenerateSilEdges

Output tris must be tjunction fixed and vertex uniqued
A edge that is not exactly matched is a silhouette edge
We could skip this and rely completely on the matched quad removal
for all sil edges, but this will avoid the bulk of the checks.
=====================
*/
static void GenerateSilEdges( void ) {
    Sys_Printf("void GenerateSilEdges( void )\r\n");
}


//==================================================================================

/*
=====================
GenerateSilPlanes

Groups the silEdges into common planes
=====================
*/
void GenerateSilPlanes( void ) {
    Sys_Printf("void GenerateSilPlanes( void )\r\n");
}


//==================================================================================

/*
=============
SaveQuad
=============
*/
static void SaveQuad( silPlane_t *silPlane, silQuad_t &quad ) {
    Sys_Printf("void SaveQuad( silPlane_t *silPlane, silQuad_t &quad )\r\n");
}



/*
===================
FragmentSilQuad

Clip quads, or reconstruct?
Generate them T-junction free, or require another pass of fix-tjunc?
Call optimizer on a per-sil-plane basis?
	will this ever introduce tjunctions with the front faces?
	removal of planes can allow the rear projection to be farther optimized

For quad clipping
	PlaneThroughEdge

quad clipping introduces new vertexes

Cannot just fragment edges, must emit full indexes

what is the bounds on max indexes?
	the worst case is that all edges but one carve an existing edge in the middle,
	giving twice the input number of indexes (I think)

can we avoid knowing about projected positions and still optimize?

Fragment all edges first
Introduces T-junctions
create additional silEdges, linked to silPlanes

In theory, we should never have more than one edge clipping a given
fragment, but it is more robust if we check them all
===================
*/
static void FragmentSilQuad( silQuad_t quad, silPlane_t *silPlane, 
							shadowOptEdge_t *startEdge, shadowOptEdge_t *skipEdge ) {
    Sys_Printf("void FragmentSilQuad( silQuad_t quad, silPlane_t *silPlane, shadowOptEdge_t *startEdge, shadowOptEdge_t *skipEdge )\r\n");
}



/*
===============
FragmentSilQuads
===============
*/
static void FragmentSilQuads( void ) {
    Sys_Printf("void FragmentSilQuads( void )\r\n");
}


//=======================================================================

/*
=====================
EmitFragmentedSilQuads

=====================
*/
static void EmitFragmentedSilQuads( void ) {
    Sys_Printf("void EmitFragmentedSilQuads( void )\r\n");
}


/*
=================
EmitUnoptimizedSilEdges
=================
*/
static void EmitUnoptimizedSilEdges( void ) {
    Sys_Printf("void EmitUnoptimizedSilEdges( void )\r\n");
}


//==================================================================================

/*
================
FindUniqueVert
================
*/
static int FindUniqueVert( idVec3 &v ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int FindUniqueVert( idVec3 &v )\r\n");
    return retVal;
}


/*
===================
UniqueVerts

Snaps all triangle verts together, setting tri->index[]
and generating numUniqued and uniqued.
These are still in projection-centered space, not global space
===================
*/
static void UniqueVerts( void ) {
    Sys_Printf("void UniqueVerts( void )\r\n");
}


/*
======================
ProjectUniqued
======================
*/
static void ProjectUniqued( idVec3 projectionOrigin, idPlane projectionPlane ) {
    Sys_Printf("void ProjectUniqued( idVec3 projectionOrigin, idPlane projectionPlane )\r\n");
}


/*
====================
SuperOptimizeOccluders

This is the callback from the renderer shadow generation routine, after
verts have been culled against individual frustums of point lights

====================
*/
optimizedShadow_t SuperOptimizeOccluders( idVec4 *verts, glIndex_t *indexes, int numIndexes, 
										 idPlane projectionPlane, idVec3 projectionOrigin )
{
    optimizedShadow_t retVal;
    memset(&retVal, 0, sizeof(optimizedShadow_t));
    Sys_Printf("optimizedShadow_t SuperOptimizeOccluders( idVec4 *verts, glIndex_t *indexes, int numIndexes, idPlane projectionPlane, idVec3 projectionOrigin )\r\n");
    return retVal;
}


/*
=================
RemoveDegenerateTriangles
=================
*/
static void RemoveDegenerateTriangles( srfTriangles_t *tri ) {
    Sys_Printf("void RemoveDegenerateTriangles( srfTriangles_t *tri )\r\n");
}


/*
====================
CleanupOptimizedShadowTris

Uniques all verts across the frustums
removes matched sil quads at frustum seams
removes degenerate tris
====================
*/
void CleanupOptimizedShadowTris( srfTriangles_t *tri ) {
    Sys_Printf("void CleanupOptimizedShadowTris( srfTriangles_t *tri )\r\n");
}


/*
========================
CreateLightShadow

This is called from dmap in util/surface.cpp
shadowerGroups should be exactly clipped to the light frustum before calling.
shadowerGroups is optimized by this function, but the contents can be freed, because the returned
lightShadow_t list is a further culling and optimization of the data.
========================
*/
srfTriangles_t *CreateLightShadow( optimizeGroup_t *shadowerGroups, const mapLight_t *light ) {
    Sys_Printf("srfTriangles_t *CreateLightShadow( optimizeGroup_t *shadowerGroups, const mapLight_t *light )\r\n");
    return NULL;
}

