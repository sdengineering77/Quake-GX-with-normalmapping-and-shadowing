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

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "tr_local.h"

/*
==============================================================================

TRIANGLE MESH PROCESSING

The functions in this file have no vertex / index count limits.

Truly identical vertexes that match in position, normal, and texcoord can
be merged away.

Vertexes that match in position and texcoord, but have distinct normals will
remain distinct for all purposes.  This is usually a poor choice for models,
as adding a bevel face will not add any more vertexes, and will tend to
look better.

Match in position and normal, but differ in texcoords are referenced together
for calculating tangent vectors for bump mapping.
Artists should take care to have identical texels in all maps (bump/diffuse/specular)
in this case

Vertexes that only match in position are merged for shadow edge finding.

Degenerate triangles.

Overlapped triangles, even if normals or texcoords differ, must be removed.
for the silhoette based stencil shadow algorithm to function properly.
Is this true???
Is the overlapped triangle problem just an example of the trippled edge problem?

Interpenetrating triangles are not currently clipped to surfaces.
Do they effect the shadows?

if vertexes are intended to deform apart, make sure that no vertexes
are on top of each other in the base frame, or the sil edges may be
calculated incorrectly.

We might be able to identify this from topology.

Dangling edges are acceptable, but three way edges are not.

Are any combinations of two way edges unacceptable, like one facing
the backside of the other?


Topology is determined by a collection of triangle indexes.

The edge list can be built up from this, and stays valid even under
deformations.

Somewhat non-intuitively, concave edges cannot be optimized away, or the
stencil shadow algorithm miscounts.

Face normals are needed for generating shadow volumes and for calculating
the silhouette, but they will change with any deformation.

Vertex normals and vertex tangents will change with each deformation,
but they may be able to be transformed instead of recalculated.

bounding volume, both box and sphere will change with deformation.

silhouette indexes
shade indexes
texture indexes

  shade indexes will only be > silhouette indexes if there is facet shading present

	lookups from texture to sil and texture to shade?

The normal and tangent vector smoothing is simple averaging, no attempt is
made to better handle the cases where the distribution around the shared vertex
is highly uneven.


  we may get degenerate triangles even with the uniquing and removal
  if the vertexes have different texcoords.

==============================================================================
*/

// this shouldn't change anything, but previously renderbumped models seem to need it
#define USE_INVA

// instead of using the texture T vector, cross the normal and S vector for an orthogonal axis
#define DERIVE_UNSMOOTHED_BITANGENT

const int MAX_SIL_EDGES			= 0x10000;
const int SILEDGE_HASH_SIZE		= 1024;

static int			numSilEdges;
static silEdge_t *	silEdges;
static idHashIndex	silEdgeHash( SILEDGE_HASH_SIZE, MAX_SIL_EDGES );
static int			numPlanes;

static idBlockAlloc<srfTriangles_t, 1<<8>				srfTrianglesAllocator;

#ifdef USE_TRI_DATA_ALLOCATOR
static idDynamicBlockAlloc<idDrawVert, 1<<20, 1<<10>	triVertexAllocator;
static idDynamicBlockAlloc<glIndex_t, 1<<18, 1<<10>		triIndexAllocator;
static idDynamicBlockAlloc<shadowCache_t, 1<<18, 1<<10>	triShadowVertexAllocator;
static idDynamicBlockAlloc<idPlane, 1<<17, 1<<10>		triPlaneAllocator;
static idDynamicBlockAlloc<glIndex_t, 1<<17, 1<<10>		triSilIndexAllocator;
static idDynamicBlockAlloc<silEdge_t, 1<<17, 1<<10>		triSilEdgeAllocator;
static idDynamicBlockAlloc<dominantTri_t, 1<<16, 1<<10>	triDominantTrisAllocator;
static idDynamicBlockAlloc<int, 1<<16, 1<<10>			triMirroredVertAllocator;
static idDynamicBlockAlloc<int, 1<<16, 1<<10>			triDupVertAllocator;
#else
static idDynamicAlloc<idDrawVert, 1<<20, 1<<10>			triVertexAllocator;
static idDynamicAlloc<glIndex_t, 1<<18, 1<<10>			triIndexAllocator;
static idDynamicAlloc<shadowCache_t, 1<<18, 1<<10>		triShadowVertexAllocator;
static idDynamicAlloc<idPlane, 1<<17, 1<<10>			triPlaneAllocator;
static idDynamicAlloc<glIndex_t, 1<<17, 1<<10>			triSilIndexAllocator;
static idDynamicAlloc<silEdge_t, 1<<17, 1<<10>			triSilEdgeAllocator;
static idDynamicAlloc<dominantTri_t, 1<<16, 1<<10>		triDominantTrisAllocator;
static idDynamicAlloc<int, 1<<16, 1<<10>				triMirroredVertAllocator;
static idDynamicAlloc<int, 1<<16, 1<<10>				triDupVertAllocator;
#endif


/*
===============
R_InitTriSurfData
===============
*/
void R_InitTriSurfData( void ) {
    Sys_Printf("void R_InitTriSurfData( void )\r\n");
}


/*
===============
R_ShutdownTriSurfData
===============
*/
void R_ShutdownTriSurfData( void ) {
    Sys_Printf("void R_ShutdownTriSurfData( void )\r\n");
}


/*
===============
R_PurgeTriSurfData
===============
*/
void R_PurgeTriSurfData( frameData_t *frame ) {
    Sys_Printf("void R_PurgeTriSurfData( frameData_t *frame )\r\n");
}


/*
===============
R_ShowTriMemory_f
===============
*/
void R_ShowTriSurfMemory_f( const idCmdArgs &args ) {
    Sys_Printf("void R_ShowTriSurfMemory_f( const idCmdArgs &args )\r\n");
}


/*
=================
R_TriSurfMemory

For memory profiling
=================
*/
int R_TriSurfMemory( const srfTriangles_t *tri ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int R_TriSurfMemory( const srfTriangles_t *tri )\r\n");
    return retVal;
}


/*
==============
R_FreeStaticTriSurfVertexCaches
==============
*/
void R_FreeStaticTriSurfVertexCaches( srfTriangles_t *tri ) {
    Sys_Printf("void R_FreeStaticTriSurfVertexCaches( srfTriangles_t *tri )\r\n");
}


/*
==============
R_ReallyFreeStaticTriSurf

This does the actual free
==============
*/
void R_ReallyFreeStaticTriSurf( srfTriangles_t *tri ) {
    Sys_Printf("void R_ReallyFreeStaticTriSurf( srfTriangles_t *tri )\r\n");
}


/*
==============
R_CheckStaticTriSurfMemory
==============
*/
void R_CheckStaticTriSurfMemory( const srfTriangles_t *tri ) {
    Sys_Printf("void R_CheckStaticTriSurfMemory( const srfTriangles_t *tri )\r\n");
}


/*
==================
R_FreeDeferredTriSurfs
==================
*/
void R_FreeDeferredTriSurfs( frameData_t *frame ) {
    Sys_Printf("void R_FreeDeferredTriSurfs( frameData_t *frame )\r\n");
}


/*
==============
R_FreeStaticTriSurf

This will defer the free until the current frame has run through the back end.
==============
*/
void R_FreeStaticTriSurf( srfTriangles_t *tri ) {
    Sys_Printf("void R_FreeStaticTriSurf( srfTriangles_t *tri )\r\n");
}


/*
==============
R_AllocStaticTriSurf
==============
*/
srfTriangles_t *R_AllocStaticTriSurf( void ) {
    Sys_Printf("srfTriangles_t *R_AllocStaticTriSurf( void )\r\n");
    return NULL;
}


/*
=================
R_CopyStaticTriSurf

This only duplicates the indexes and verts, not any of the derived data.
=================
*/
srfTriangles_t *R_CopyStaticTriSurf( const srfTriangles_t *tri ) {
    Sys_Printf("srfTriangles_t *R_CopyStaticTriSurf( const srfTriangles_t *tri )\r\n");
    return NULL;
}


/*
=================
R_AllocStaticTriSurfVerts
=================
*/
void R_AllocStaticTriSurfVerts( srfTriangles_t *tri, int numVerts ) {
    Sys_Printf("void R_AllocStaticTriSurfVerts( srfTriangles_t *tri, int numVerts )\r\n");
}


/*
=================
R_AllocStaticTriSurfIndexes
=================
*/
void R_AllocStaticTriSurfIndexes( srfTriangles_t *tri, int numIndexes ) {
    Sys_Printf("void R_AllocStaticTriSurfIndexes( srfTriangles_t *tri, int numIndexes )\r\n");
}


/*
=================
R_AllocStaticTriSurfShadowVerts
=================
*/
void R_AllocStaticTriSurfShadowVerts( srfTriangles_t *tri, int numVerts ) {
    Sys_Printf("void R_AllocStaticTriSurfShadowVerts( srfTriangles_t *tri, int numVerts )\r\n");
}


/*
=================
R_AllocStaticTriSurfPlanes
=================
*/
void R_AllocStaticTriSurfPlanes( srfTriangles_t *tri, int numIndexes ) {
    Sys_Printf("void R_AllocStaticTriSurfPlanes( srfTriangles_t *tri, int numIndexes )\r\n");
}


/*
=================
R_ResizeStaticTriSurfVerts
=================
*/
void R_ResizeStaticTriSurfVerts( srfTriangles_t *tri, int numVerts ) {
    Sys_Printf("void R_ResizeStaticTriSurfVerts( srfTriangles_t *tri, int numVerts )\r\n");
}


/*
=================
R_ResizeStaticTriSurfIndexes
=================
*/
void R_ResizeStaticTriSurfIndexes( srfTriangles_t *tri, int numIndexes ) {
    Sys_Printf("void R_ResizeStaticTriSurfIndexes( srfTriangles_t *tri, int numIndexes )\r\n");
}


/*
=================
R_ResizeStaticTriSurfShadowVerts
=================
*/
void R_ResizeStaticTriSurfShadowVerts( srfTriangles_t *tri, int numVerts ) {
    Sys_Printf("void R_ResizeStaticTriSurfShadowVerts( srfTriangles_t *tri, int numVerts )\r\n");
}


/*
=================
R_ReferenceStaticTriSurfVerts
=================
*/
void R_ReferenceStaticTriSurfVerts( srfTriangles_t *tri, const srfTriangles_t *reference ) {
    Sys_Printf("void R_ReferenceStaticTriSurfVerts( srfTriangles_t *tri, const srfTriangles_t *reference )\r\n");
}


/*
=================
R_ReferenceStaticTriSurfIndexes
=================
*/
void R_ReferenceStaticTriSurfIndexes( srfTriangles_t *tri, const srfTriangles_t *reference ) {
    Sys_Printf("void R_ReferenceStaticTriSurfIndexes( srfTriangles_t *tri, const srfTriangles_t *reference )\r\n");
}


/*
=================
R_FreeStaticTriSurfSilIndexes
=================
*/
void R_FreeStaticTriSurfSilIndexes( srfTriangles_t *tri ) {
    Sys_Printf("void R_FreeStaticTriSurfSilIndexes( srfTriangles_t *tri )\r\n");
}


/*
===============
R_RangeCheckIndexes

Check for syntactically incorrect indexes, like out of range values.
Does not check for semantics, like degenerate triangles.

No vertexes is acceptable if no indexes.
No indexes is acceptable.
More vertexes than are referenced by indexes are acceptable.
===============
*/
void R_RangeCheckIndexes( const srfTriangles_t *tri ) {
    Sys_Printf("void R_RangeCheckIndexes( const srfTriangles_t *tri )\r\n");
}


/*
=================
R_BoundTriSurf
=================
*/
void R_BoundTriSurf( srfTriangles_t *tri ) {
    Sys_Printf("void R_BoundTriSurf( srfTriangles_t *tri )\r\n");
}


/*
=================
R_CreateSilRemap
=================
*/
static int *R_CreateSilRemap( const srfTriangles_t *tri ) {
    Sys_Printf("int *R_CreateSilRemap( const srfTriangles_t *tri )\r\n");
    return NULL;
}


/*
=================
R_CreateSilIndexes

Uniquing vertexes only on xyz before creating sil edges reduces
the edge count by about 20% on Q3 models
=================
*/
void R_CreateSilIndexes( srfTriangles_t *tri ) {
    Sys_Printf("void R_CreateSilIndexes( srfTriangles_t *tri )\r\n");
}


/*
=====================
R_CreateDupVerts
=====================
*/
void R_CreateDupVerts( srfTriangles_t *tri ) {
    Sys_Printf("void R_CreateDupVerts( srfTriangles_t *tri )\r\n");
}


/*
=====================
R_DeriveFacePlanes

Writes the facePlanes values, overwriting existing ones if present
=====================
*/
void R_DeriveFacePlanes( srfTriangles_t *tri ) {
    Sys_Printf("void R_DeriveFacePlanes( srfTriangles_t *tri )\r\n");
}


/*
=====================
R_CreateVertexNormals

Averages together the contributions of all faces that are
used by a vertex, creating drawVert->normal
=====================
*/
void R_CreateVertexNormals( srfTriangles_t *tri ) {
    Sys_Printf("void R_CreateVertexNormals( srfTriangles_t *tri )\r\n");
}


/*
===============
R_DefineEdge
===============
*/
static int c_duplicatedEdges, c_tripledEdges;

static void R_DefineEdge( int v1, int v2, int planeNum ) {
    Sys_Printf("void R_DefineEdge( int v1, int v2, int planeNum )\r\n");
}


/*
=================
SilEdgeSort
=================
*/
static int SilEdgeSort( const void *a, const void *b ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int SilEdgeSort( const void *a, const void *b )\r\n");
    return retVal;
}


/*
=================
R_IdentifySilEdges

If the surface will not deform, coplanar edges (polygon interiors)
can never create silhouette plains, and can be omited
=================
*/
int	c_coplanarSilEdges;
int	c_totalSilEdges;

void R_IdentifySilEdges( srfTriangles_t *tri, bool omitCoplanarEdges ) {
    Sys_Printf("void R_IdentifySilEdges( srfTriangles_t *tri, bool omitCoplanarEdges )\r\n");
}


/*
===============
R_FaceNegativePolarity

Returns true if the texture polarity of the face is negative, false if it is positive or zero
===============
*/
static bool R_FaceNegativePolarity( const srfTriangles_t *tri, int firstIndex ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool R_FaceNegativePolarity( const srfTriangles_t *tri, int firstIndex )\r\n");
    return retVal;
}


/*
==================
R_DeriveFaceTangents
==================
*/
typedef struct {
	idVec3		tangents[2];
	bool	negativePolarity;
	bool	degenerate;
} faceTangents_t;

static void	R_DeriveFaceTangents( const srfTriangles_t *tri, faceTangents_t *faceTangents ) {
    Sys_Printf("voidR_DeriveFaceTangents( const srfTriangles_t *tri, faceTangents_t *faceTangents )\r\n");
}




/*
===================
R_DuplicateMirroredVertexes

Modifies the surface to bust apart any verts that are shared by both positive and
negative texture polarities, so tangent space smoothing at the vertex doesn't
degenerate.

This will create some identical vertexes (which will eventually get different tangent
vectors), so never optimize the resulting mesh, or it will get the mirrored edges back.

Reallocates tri->verts and changes tri->indexes in place
Silindexes are unchanged by this.

sets mirroredVerts and mirroredVerts[]

===================
*/
typedef struct {
	bool	polarityUsed[2];
	int			negativeRemap;
} tangentVert_t;

static void	R_DuplicateMirroredVertexes( srfTriangles_t *tri ) {
    Sys_Printf("voidR_DuplicateMirroredVertexes( srfTriangles_t *tri )\r\n");
}


/*
=================
R_DeriveTangentsWithoutNormals

Build texture space tangents for bump mapping
If a surface is deformed, this must be recalculated

This assumes that any mirrored vertexes have already been duplicated, so
any shared vertexes will have the tangent spaces smoothed across.

Texture wrapping slightly complicates this, but as long as the normals
are shared, and the tangent vectors are projected onto the normals, the
separate vertexes should wind up with identical tangent spaces.

mirroring a normalmap WILL cause a slightly visible seam unless the normals
are completely flat around the edge's full bilerp support.

Vertexes which are smooth shaded must have their tangent vectors
in the same plane, which will allow a seamless
rendering as long as the normal map is even on both sides of the
seam.

A smooth shaded surface may have multiple tangent vectors at a vertex
due to texture seams or mirroring, but it should only have a single
normal vector.

Each triangle has a pair of tangent vectors in it's plane

Should we consider having vertexes point at shared tangent spaces
to save space or speed transforms?

this version only handles bilateral symetry
=================
*/
void R_DeriveTangentsWithoutNormals( srfTriangles_t *tri ) {
    Sys_Printf("void R_DeriveTangentsWithoutNormals( srfTriangles_t *tri )\r\n");
}


static ID_INLINE void VectorNormalizeFast2( const idVec3 &v, idVec3 &out) {
    Sys_Printf("void VectorNormalizeFast2( const idVec3 &v, idVec3 &out)\r\n");
}


/*
===================
R_BuildDominantTris

Find the largest triangle that uses each vertex
===================
*/
typedef struct {
	int		vertexNum;
	int		faceNum;
} indexSort_t;

static int IndexSort( const void *a, const void *b ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int IndexSort( const void *a, const void *b )\r\n");
    return retVal;
}


void R_BuildDominantTris( srfTriangles_t *tri ) {
    Sys_Printf("void R_BuildDominantTris( srfTriangles_t *tri )\r\n");
}


/*
====================
R_DeriveUnsmoothedTangents

Uses the single largest area triangle for each vertex, instead of smoothing over all
====================
*/
void R_DeriveUnsmoothedTangents( srfTriangles_t *tri ) {
    Sys_Printf("void R_DeriveUnsmoothedTangents( srfTriangles_t *tri )\r\n");
}


/*
==================
R_DeriveTangents

This is called once for static surfaces, and every frame for deforming surfaces

Builds tangents, normals, and face planes
==================
*/
void R_DeriveTangents( srfTriangles_t *tri, bool allocFacePlanes ) {
    Sys_Printf("void R_DeriveTangents( srfTriangles_t *tri, bool allocFacePlanes )\r\n");
}


/*
=================
R_RemoveDuplicatedTriangles

silIndexes must have already been calculated

silIndexes are used instead of indexes, because duplicated
triangles could have different texture coordinates.
=================
*/
void R_RemoveDuplicatedTriangles( srfTriangles_t *tri ) {
    Sys_Printf("void R_RemoveDuplicatedTriangles( srfTriangles_t *tri )\r\n");
}


/*
=================
R_RemoveDegenerateTriangles

silIndexes must have already been calculated
=================
*/
void R_RemoveDegenerateTriangles( srfTriangles_t *tri ) {
    Sys_Printf("void R_RemoveDegenerateTriangles( srfTriangles_t *tri )\r\n");
}


/*
=================
R_TestDegenerateTextureSpace
=================
*/
void R_TestDegenerateTextureSpace( srfTriangles_t *tri ) {
    Sys_Printf("void R_TestDegenerateTextureSpace( srfTriangles_t *tri )\r\n");
}


/*
=================
R_RemoveUnusedVerts
=================
*/
void R_RemoveUnusedVerts( srfTriangles_t *tri ) {
    Sys_Printf("void R_RemoveUnusedVerts( srfTriangles_t *tri )\r\n");
}


/*
=================
R_MergeSurfaceList

Only deals with vertexes and indexes, not silhouettes, planes, etc.
Does NOT perform a cleanup triangles, so there may be duplicated verts in the result.
=================
*/
srfTriangles_t	*R_MergeSurfaceList( const srfTriangles_t **surfaces, int numSurfaces ) {
    Sys_Printf("srfTriangles_t*R_MergeSurfaceList( const srfTriangles_t **surfaces, int numSurfaces )\r\n");
    return NULL;
}


/*
=================
R_MergeTriangles

Only deals with vertexes and indexes, not silhouettes, planes, etc.
Does NOT perform a cleanup triangles, so there may be duplicated verts in the result.
=================
*/
srfTriangles_t	*R_MergeTriangles( const srfTriangles_t *tri1, const srfTriangles_t *tri2 ) {
    Sys_Printf("srfTriangles_t*R_MergeTriangles( const srfTriangles_t *tri1, const srfTriangles_t *tri2 )\r\n");
    return NULL;
}


/*
=================
R_ReverseTriangles

Lit two sided surfaces need to have the triangles actually duplicated,
they can't just turn on two sided lighting, because the normal and tangents
are wrong on the other sides.

This should be called before R_CleanupTriangles
=================
*/
void R_ReverseTriangles( srfTriangles_t *tri ) {
    Sys_Printf("void R_ReverseTriangles( srfTriangles_t *tri )\r\n");
}


/*
=================
R_CleanupTriangles

FIXME: allow createFlat and createSmooth normals, as well as explicit
=================
*/
void R_CleanupTriangles( srfTriangles_t *tri, bool createNormals, bool identifySilEdges, bool useUnsmoothedTangents ) {
    Sys_Printf("void R_CleanupTriangles( srfTriangles_t *tri, bool createNormals, bool identifySilEdges, bool useUnsmoothedTangents )\r\n");
}


/*
===================================================================================

DEFORMED SURFACES

===================================================================================
*/

/*
===================
R_BuildDeformInfo
===================
*/
deformInfo_t *R_BuildDeformInfo( int numVerts, const idDrawVert *verts, int numIndexes, const int *indexes, bool useUnsmoothedTangents ) {
    Sys_Printf("deformInfo_t *R_BuildDeformInfo( int numVerts, const idDrawVert *verts, int numIndexes, const int *indexes, bool useUnsmoothedTangents )\r\n");
    return NULL;
}


/*
===================
R_FreeDeformInfo
===================
*/
void R_FreeDeformInfo( deformInfo_t *deformInfo ) {
    Sys_Printf("void R_FreeDeformInfo( deformInfo_t *deformInfo )\r\n");
}


/*
===================
R_DeformInfoMemoryUsed
===================
*/
int R_DeformInfoMemoryUsed( deformInfo_t *deformInfo ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int R_DeformInfoMemoryUsed( deformInfo_t *deformInfo )\r\n");
    return retVal;
}


