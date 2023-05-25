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

//=================================================================================


#if 0

should we try and snap values very close to 0.5, 0.25, 0.125, etc?

  do we write out normals, or just a "smooth shade" flag?
resolved: normals.  otherwise adjacent facet shaded surfaces get their
		  vertexes merged, and they would have to be split apart before drawing

  do we save out "wings" for shadow silhouette info?


#endif

static	idFile	*procFile;

#define	AREANUM_DIFFERENT	-2
/*
=============
PruneNodes_r

Any nodes that have all children with the same
area can be combined into a single leaf node

Returns the area number of all children, or
AREANUM_DIFFERENT if not the same.
=============
*/
int	PruneNodes_r( node_t *node ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intPruneNodes_r( node_t *node )\r\n");
    return retVal;
}


static void WriteFloat( idFile *f, float v )
{
    Sys_Printf("void WriteFloat( idFile *f, float v )\r\n");
}


void Write1DMatrix( idFile *f, int x, float *m ) {
    Sys_Printf("void Write1DMatrix( idFile *f, int x, float *m )\r\n");
}


static int CountUniqueShaders( optimizeGroup_t *groups ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CountUniqueShaders( optimizeGroup_t *groups )\r\n");
    return retVal;
}



/*
==============
MatchVert
==============
*/
#define	XYZ_EPSILON	0.01
#define	ST_EPSILON	0.001
#define	COSINE_EPSILON	0.999

static bool MatchVert( const idDrawVert *a, const idDrawVert *b ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MatchVert( const idDrawVert *a, const idDrawVert *b )\r\n");
    return retVal;
}


/*
====================
ShareMapTriVerts

Converts independent triangles to shared vertex triangles
====================
*/
srfTriangles_t	*ShareMapTriVerts( const mapTri_t *tris ) {
    Sys_Printf("srfTriangles_t*ShareMapTriVerts( const mapTri_t *tris )\r\n");
    return NULL;
}


/*
==================
CleanupUTriangles
==================
*/
static void CleanupUTriangles( srfTriangles_t *tri ) {
    Sys_Printf("void CleanupUTriangles( srfTriangles_t *tri )\r\n");
}


/*
====================
WriteUTriangles

Writes text verts and indexes to procfile
====================
*/
static void WriteUTriangles( const srfTriangles_t *uTris ) {
    Sys_Printf("void WriteUTriangles( const srfTriangles_t *uTris )\r\n");
}



/*
====================
WriteShadowTriangles

Writes text verts and indexes to procfile
====================
*/
static void WriteShadowTriangles( const srfTriangles_t *tri ) {
    Sys_Printf("void WriteShadowTriangles( const srfTriangles_t *tri )\r\n");
}



/*
=======================
GroupsAreSurfaceCompatible

Planes, texcoords, and groupLights can differ,
but the material and mergegroup must match
=======================
*/
static bool GroupsAreSurfaceCompatible( const optimizeGroup_t *a, const optimizeGroup_t *b ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GroupsAreSurfaceCompatible( const optimizeGroup_t *a, const optimizeGroup_t *b )\r\n");
    return retVal;
}


/*
====================
WriteOutputSurfaces
====================
*/
static void WriteOutputSurfaces( int entityNum, int areaNum ) {
    Sys_Printf("void WriteOutputSurfaces( int entityNum, int areaNum )\r\n");
}


/*
===============
WriteNode_r

===============
*/
static void WriteNode_r( node_t *node ) {
    Sys_Printf("void WriteNode_r( node_t *node )\r\n");
}


static int NumberNodes_r( node_t *node, int nextNumber ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int NumberNodes_r( node_t *node, int nextNumber )\r\n");
    return retVal;
}


/*
====================
WriteOutputNodes
====================
*/
static void WriteOutputNodes( node_t *node ) {
    Sys_Printf("void WriteOutputNodes( node_t *node )\r\n");
}


/*
====================
WriteOutputPortals
====================
*/
static void WriteOutputPortals( uEntity_t *e ) {
    Sys_Printf("void WriteOutputPortals( uEntity_t *e )\r\n");
}



/*
====================
WriteOutputEntity
====================
*/
static void WriteOutputEntity( int entityNum ) {
    Sys_Printf("void WriteOutputEntity( int entityNum )\r\n");
}



/*
====================
WriteOutputFile
====================
*/
void WriteOutputFile( void ) {
    Sys_Printf("void WriteOutputFile( void )\r\n");
}

