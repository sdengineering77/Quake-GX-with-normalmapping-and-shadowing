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


#define	 TEXTURE_OFFSET_EQUAL_EPSILON	0.005
#define	 TEXTURE_VECTOR_EQUAL_EPSILON	0.001

/*
===============
AddTriListToArea

The triList is appended to the apropriate optimzeGroup_t,
creating a new one if needed.
The entire list is assumed to come from the same planar primitive
===============
*/
static void AddTriListToArea( uEntity_t *e, mapTri_t *triList, int planeNum, int areaNum, textureVectors_t *texVec ) {
    Sys_Printf("void AddTriListToArea( uEntity_t *e, mapTri_t *triList, int planeNum, int areaNum, textureVectors_t *texVec )\r\n");
}


/*
===================
TexVecForTri
===================
*/
static void TexVecForTri( textureVectors_t *texVec, mapTri_t *tri ) {
    Sys_Printf("void TexVecForTri( textureVectors_t *texVec, mapTri_t *tri )\r\n");
}



/*
=================
TriListForSide
=================
*/
//#define	SNAP_FLOAT_TO_INT	8
#define	SNAP_FLOAT_TO_INT	256
#define	SNAP_INT_TO_FLOAT	(1.0/SNAP_FLOAT_TO_INT)

mapTri_t *TriListForSide( const side_t *s, const idWinding *w ) {
    Sys_Printf("mapTri_t *TriListForSide( const side_t *s, const idWinding *w )\r\n");
    return NULL;
}


//=================================================================================

/*
====================
ClipSideByTree_r

Adds non-opaque leaf fragments to the convex hull
====================
*/
static void ClipSideByTree_r( idWinding *w, side_t *side, node_t *node ) {
    Sys_Printf("void ClipSideByTree_r( idWinding *w, side_t *side, node_t *node )\r\n");
}



/*
=====================
ClipSidesByTree

Creates side->visibleHull for all visible sides

The visible hull for a side will consist of the convex hull of
all points in non-opaque clusters, which allows overlaps
to be trimmed off automatically.
=====================
*/
void ClipSidesByTree( uEntity_t *e ) {
    Sys_Printf("void ClipSidesByTree( uEntity_t *e )\r\n");
}




//=================================================================================

/*
====================
ClipTriIntoTree_r

This is used for adding curve triangles
The winding will be freed before it returns
====================
*/
void ClipTriIntoTree_r( idWinding *w, mapTri_t *originalTri, uEntity_t *e, node_t *node ) {
    Sys_Printf("void ClipTriIntoTree_r( idWinding *w, mapTri_t *originalTri, uEntity_t *e, node_t *node )\r\n");
}




//=============================================================

/*
====================
CheckWindingInAreas_r

Returns the area number that the winding is in, or
-2 if it crosses multiple areas.

====================
*/
static int CheckWindingInAreas_r( const idWinding *w, node_t *node ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CheckWindingInAreas_r( const idWinding *w, node_t *node )\r\n");
    return retVal;
}




/*
====================
PutWindingIntoAreas_r

Clips a winding down into the bsp tree, then converts
the fragments to triangles and adds them to the area lists
====================
*/
static void PutWindingIntoAreas_r( uEntity_t *e, const idWinding *w, side_t *side, node_t *node ) {
    Sys_Printf("void PutWindingIntoAreas_r( uEntity_t *e, const idWinding *w, side_t *side, node_t *node )\r\n");
}


/*
==================
AddMapTriToAreas

Used for curves and inlined models
==================
*/
void AddMapTriToAreas( mapTri_t *tri, uEntity_t *e ) {
    Sys_Printf("void AddMapTriToAreas( mapTri_t *tri, uEntity_t *e )\r\n");
}


/*
=====================
PutPrimitivesInAreas

=====================
*/
void PutPrimitivesInAreas( uEntity_t *e ) {
    Sys_Printf("void PutPrimitivesInAreas( uEntity_t *e )\r\n");
}


//============================================================================

/*
=================
ClipTriByLight

Carves a triangle by the frustom planes of a light, producing
a (possibly empty) list of triangles on the inside and outside.

The original triangle is not modified.

If no clipping is required, the result will be a copy of the original.

If clipping was required, the outside fragments will be planar clips, which
will benefit from re-optimization.
=================
*/
static void ClipTriByLight( const mapLight_t *light, const mapTri_t *tri, 
						   mapTri_t **in, mapTri_t **out ) {
    Sys_Printf("void ClipTriByLight( const mapLight_t *light, const mapTri_t *tri, mapTri_t **in, mapTri_t **out )\r\n");
}


/*
=================
BoundOptimizeGroup
=================
*/
static void BoundOptimizeGroup( optimizeGroup_t *group ) {
    Sys_Printf("void BoundOptimizeGroup( optimizeGroup_t *group )\r\n");
}


/*
====================
BuildLightShadows

Build the beam tree and shadow volume surface for a light
====================
*/
static void BuildLightShadows( uEntity_t *e, mapLight_t *light ) {
    Sys_Printf("void BuildLightShadows( uEntity_t *e, mapLight_t *light )\r\n");
}



/*
====================
CarveGroupsByLight

Divide each group into an inside group and an outside group, based
on which fragments are illuminated by the light's beam tree
====================
*/
static void CarveGroupsByLight( uEntity_t *e, mapLight_t *light ) {
    Sys_Printf("void CarveGroupsByLight( uEntity_t *e, mapLight_t *light )\r\n");
}


/*
=====================
Prelight

Break optimize groups up into additional groups at light boundaries, so
optimization won't cross light bounds
=====================
*/
void Prelight( uEntity_t *e ) {
    Sys_Printf("void Prelight( uEntity_t *e )\r\n");
}




