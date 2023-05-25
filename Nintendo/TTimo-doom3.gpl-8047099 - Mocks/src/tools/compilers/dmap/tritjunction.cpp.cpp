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

/*

  T junction fixing never creates more xyz points, but
  new vertexes will be created when different surfaces
  cause a fix

  The vertex cleaning accomplishes two goals: removing extranious low order
  bits to avoid numbers like 1.000001233, and grouping nearby vertexes
  together.  Straight truncation accomplishes the first foal, but two vertexes
  only a tiny epsilon apart could still be spread to different snap points.
  To avoid this, we allow the merge test to group points together that
  snapped to neighboring integer coordinates.

  Snaping verts can drag some triangles backwards or collapse them to points,
  which will cause them to be removed.
  

  When snapping to ints, a point can move a maximum of sqrt(3)/2 distance
  Two points that were an epsilon apart can then become sqrt(3) apart

  A case that causes recursive overflow with point to triangle fixing:

               A
	C            D
	           B

  Triangle ABC tests against point D and splits into triangles ADC and DBC
  Triangle DBC then tests against point A again and splits into ABC and ADB
  infinite recursive loop


  For a given source triangle
	init the no-check list to hold the three triangle hashVerts

  recursiveFixTriAgainstHash

  recursiveFixTriAgainstHashVert_r
	if hashVert is on the no-check list
		exit
	if the hashVert should split the triangle
		add to the no-check list
		recursiveFixTriAgainstHash(a)
		recursiveFixTriAgainstHash(b)

*/

#define	SNAP_FRACTIONS	32
//#define	SNAP_FRACTIONS	8
//#define	SNAP_FRACTIONS	1

#define	VERTEX_EPSILON	( 1.0 / SNAP_FRACTIONS )

#define	COLINEAR_EPSILON	( 1.8 * VERTEX_EPSILON )

#define	HASH_BINS	16

typedef struct hashVert_s {
	struct hashVert_s	*next;
	idVec3				v;
	int					iv[3];
} hashVert_t;

static idBounds	hashBounds;
static idVec3	hashScale;
static hashVert_t	*hashVerts[HASH_BINS][HASH_BINS][HASH_BINS];
static int		numHashVerts, numTotalVerts;
static int		hashIntMins[3], hashIntScale[3];

/*
===============
GetHashVert

Also modifies the original vert to the snapped value
===============
*/
struct hashVert_s	*GetHashVert( idVec3 &v ) {
    Sys_Printf("hashVert_s*GetHashVert( idVec3 &v )\r\n");
    return NULL;
}



/*
==================
HashBlocksForTri

Returns an inclusive bounding box of hash
bins that should hold the triangle
==================
*/
static void HashBlocksForTri( const mapTri_t *tri, int blocks[2][3] ) {
    Sys_Printf("void HashBlocksForTri( const mapTri_t *tri, int blocks[2][3] )\r\n");
}



/*
=================
HashTriangles

Removes triangles that are degenerated or flipped backwards
=================
*/
void HashTriangles( optimizeGroup_t *groupList ) {
    Sys_Printf("void HashTriangles( optimizeGroup_t *groupList )\r\n");
}


/*
=================
FreeTJunctionHash

The optimizer may add some more crossing verts
after t junction processing
=================
*/
void FreeTJunctionHash( void ) {
    Sys_Printf("void FreeTJunctionHash( void )\r\n");
}



/*
==================
FixTriangleAgainstHashVert

Returns a list of two new mapTri if the hashVert is
on an edge of the given mapTri, otherwise returns NULL.
==================
*/
static mapTri_t *FixTriangleAgainstHashVert( const mapTri_t *a, const hashVert_t *hv ) {
    Sys_Printf("mapTri_t *FixTriangleAgainstHashVert( const mapTri_t *a, const hashVert_t *hv )\r\n");
    return NULL;
}




/*
==================
FixTriangleAgainstHash

Potentially splits a triangle into a list of triangles based on tjunctions
==================
*/
static mapTri_t	*FixTriangleAgainstHash( const mapTri_t *tri ) {
    Sys_Printf("mapTri_t*FixTriangleAgainstHash( const mapTri_t *tri )\r\n");
    return NULL;
}



/*
==================
CountGroupListTris
==================
*/
int CountGroupListTris( const optimizeGroup_t *groupList ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CountGroupListTris( const optimizeGroup_t *groupList )\r\n");
    return retVal;
}


/*
==================
FixAreaGroupsTjunctions
==================
*/
void	FixAreaGroupsTjunctions( optimizeGroup_t *groupList ) {
    Sys_Printf("voidFixAreaGroupsTjunctions( optimizeGroup_t *groupList )\r\n");
}



/*
==================
FixEntityTjunctions
==================
*/
void	FixEntityTjunctions( uEntity_t *e ) {
    Sys_Printf("voidFixEntityTjunctions( uEntity_t *e )\r\n");
}


/*
==================
FixGlobalTjunctions
==================
*/
void	FixGlobalTjunctions( uEntity_t *e ) {
    Sys_Printf("voidFixGlobalTjunctions( uEntity_t *e )\r\n");
}

