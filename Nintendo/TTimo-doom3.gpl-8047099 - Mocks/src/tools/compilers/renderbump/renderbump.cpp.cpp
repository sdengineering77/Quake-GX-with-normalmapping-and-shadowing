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

#ifdef WIN32
#include <windows.h>
#include <GL/gl.h>
#include <GL/glu.h>
#include "../../../sys/win32/win_local.h"
#endif

#include "../../../renderer/tr_local.h"

/*

  render a normalmap tga file from an ase model for bump mapping

  To make ray-tracing into the high poly mesh efficient, we preconstruct
  a 3D hash table of the triangles that need to be tested for a given source
  point.

  This task is easier than a general ray tracing optimization, because we
  known that all of the triangles are going to be "near" the source point.

  TraceFraction determines the maximum distance in any direction that
  a trace will go.  It is expressed as a fraction of the largest axis of
  the bounding box, so it doesn't matter what units are used for modeling.


*/

#define MAX_QPATH		256

#define	DEFAULT_TRACE_FRACTION	0.05

#define	INITIAL_TRI_TO_LINK_EXPANSION	16	// can grow as needed
#define	HASH_AXIS_BINS	100

typedef struct {
	int		faceNum;
	int		nextLink;
} triLink_t;

typedef struct {
	int		triLink;
	int		rayNumber;		// don't need to test again if still on same ray
} binLink_t;

#define	MAX_LINKS_PER_BLOCK		0x100000
#define	MAX_LINK_BLOCKS			0x100
typedef struct {
	idBounds	bounds;
	float		binSize[3];
	int			numLinkBlocks;
	triLink_t	*linkBlocks[MAX_LINK_BLOCKS];
	binLink_t	binLinks[HASH_AXIS_BINS][HASH_AXIS_BINS][HASH_AXIS_BINS];
} triHash_t;

typedef struct {
	char	outputName[MAX_QPATH];
	char	highName[MAX_QPATH];
	byte	*localPic;
	byte	*globalPic;
	byte	*colorPic;
	float	*edgeDistances;		// starts out -1 for untraced, for each texel, 0 = true interior, >0 = off-edge rasterization
	int		width, height;
	int		antiAlias;
	int		outline;
	bool	saveGlobalMap;
	bool	saveColorMap;
	float	traceFrac;
	float	traceDist;
	srfTriangles_t	*mesh;			// high poly mesh
	idRenderModel	*highModel;
	triHash_t	*hash;	
} renderBump_t;

static float traceFraction;
static int rayNumber;		// for avoiding retests of bins and faces

static int oldWidth, oldHeight;

/*
===============
SaveWindow
===============
*/
static void SaveWindow( void ) {
    Sys_Printf("void SaveWindow( void )\r\n");
}


/*
===============
ResizeWindow
===============
*/
static void ResizeWindow( int width, int height ) {
    Sys_Printf("void ResizeWindow( int width, int height )\r\n");
}


/*
===============
RestoreWindow
===============
*/
static void RestoreWindow( void ) {
    Sys_Printf("void RestoreWindow( void )\r\n");
}


/*
================
OutlineNormalMap

Puts a single pixel border around all non-empty pixels
Does NOT copy the alpha channel, so it can be used as
an alpha test map.
================
*/
static void OutlineNormalMap( byte *data, int width, int height, int emptyR, int emptyG, int emptyB ) {
    Sys_Printf("void OutlineNormalMap( byte *data, int width, int height, int emptyR, int emptyG, int emptyB )\r\n");
}


/*
================
OutlineColorMap

Puts a single pixel border around all non-empty pixels
Does NOT copy the alpha channel, so it can be used as
an alpha test map.
================
*/
static void OutlineColorMap( byte *data, int width, int height, int emptyR, int emptyG, int emptyB ) {
    Sys_Printf("void OutlineColorMap( byte *data, int width, int height, int emptyR, int emptyG, int emptyB )\r\n");
}




/*
================
FreeTriHash
================
*/
static void FreeTriHash( triHash_t *hash ) {
    Sys_Printf("void FreeTriHash( triHash_t *hash )\r\n");
}


/*
================
CreateTriHash
================
*/
static triHash_t *CreateTriHash( const srfTriangles_t *highMesh ) {
    Sys_Printf("triHash_t *CreateTriHash( const srfTriangles_t *highMesh )\r\n");
    return NULL;
}



/*
=================
TraceToMeshFace

Returns the distance from the point to the intersection, or DIST_NO_INTERSECTION
=================
*/
#define	DIST_NO_INTERSECTION	-999999999.0f
static float TraceToMeshFace( const srfTriangles_t *highMesh, int faceNum, 
							 float minDist, float maxDist,
							const idVec3 &point, const idVec3 &normal, idVec3 &sampledNormal,
							byte sampledColor[4] ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float TraceToMeshFace( const srfTriangles_t *highMesh, int faceNum, float minDist, float maxDist,const idVec3 &point, const idVec3 &normal, idVec3 &sampledNormal,byte sampledColor[4] )\r\n");
    return retVal;
}



/*
================
SampleHighMesh

Find the best surface normal in the high poly mesh 
for a ray coming from the surface of the low poly mesh

Returns false if the trace doesn't hit anything
================
*/
static bool SampleHighMesh( const renderBump_t *rb,
							const idVec3 &point, const idVec3 &direction, idVec3 &sampledNormal, 
							byte sampledColor[4] ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool SampleHighMesh( const renderBump_t *rb,const idVec3 &point, const idVec3 &direction, idVec3 &sampledNormal, byte sampledColor[4] )\r\n");
    return retVal;
}


/*
=============
TriTextureArea

This may be negatove
=============
*/
static float TriTextureArea( const float a[2], const float b[2], const float c[2] ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float TriTextureArea( const float a[2], const float b[2], const float c[2] )\r\n");
    return retVal;
}


/*
================
RasterizeTriangle

It is ok for the texcoords to wrap around, the rasterization
will deal with it properly.
================
*/
static void RasterizeTriangle( const srfTriangles_t *lowMesh, const idVec3 *lowMeshNormals, int lowFaceNum,
							 renderBump_t *rb ) {
    Sys_Printf("void RasterizeTriangle( const srfTriangles_t *lowMesh, const idVec3 *lowMeshNormals, int lowFaceNum, renderBump_t *rb )\r\n");
}


/*
================
CombineModelSurfaces

Frees the model and returns a new model with all triangles combined
into one surface
================
*/
static idRenderModel *CombineModelSurfaces( idRenderModel *model ) {
    Sys_Printf("idRenderModel *CombineModelSurfaces( idRenderModel *model )\r\n");
    return NULL;
}


/*
==============
RenderBumpTriangles

==============
*/
static void RenderBumpTriangles( srfTriangles_t *lowMesh, renderBump_t *rb ) {
    Sys_Printf("void RenderBumpTriangles( srfTriangles_t *lowMesh, renderBump_t *rb )\r\n");
}



/*
==============
WriteRenderBump

==============
*/
static void WriteRenderBump( renderBump_t *rb, int outLinePixels ) {
    Sys_Printf("void WriteRenderBump( renderBump_t *rb, int outLinePixels )\r\n");
}


/*
===============
InitRenderBump
===============
*/
static void InitRenderBump( renderBump_t *rb ) {
    Sys_Printf("void InitRenderBump( renderBump_t *rb )\r\n");
}


/*
==============
RenderBump_f

==============
*/
void RenderBump_f( const idCmdArgs &args ) {
    Sys_Printf("void RenderBump_f( const idCmdArgs &args )\r\n");
}




/*
==================================================================================

FLAT

The flat case is trivial, and accomplished with hardware rendering

==================================================================================
*/


/*
==============
RenderBumpFlat_f

==============
*/
void RenderBumpFlat_f( const idCmdArgs &args ) {
    Sys_Printf("void RenderBumpFlat_f( const idCmdArgs &args )\r\n");
}

