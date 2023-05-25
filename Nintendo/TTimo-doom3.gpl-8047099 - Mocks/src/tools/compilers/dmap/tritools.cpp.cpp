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

  All triangle list functions should behave reasonably with NULL lists.

*/

/*
===============
AllocTri
===============
*/
mapTri_t	*AllocTri( void ) {
    Sys_Printf("mapTri_t*AllocTri( void )\r\n");
    return NULL;
}


/*
===============
FreeTri
===============
*/
void		FreeTri( mapTri_t *tri ) {
    Sys_Printf("voidFreeTri( mapTri_t *tri )\r\n");
}



/*
===============
MergeTriLists

This does not copy any tris, it just relinks them
===============
*/
mapTri_t	*MergeTriLists( mapTri_t *a, mapTri_t *b ) {
    Sys_Printf("mapTri_t*MergeTriLists( mapTri_t *a, mapTri_t *b )\r\n");
    return NULL;
}



/*
===============
FreeTriList
===============
*/
void FreeTriList( mapTri_t *a ) {
    Sys_Printf("void FreeTriList( mapTri_t *a )\r\n");
}


/*
===============
CopyTriList
===============
*/
mapTri_t	*CopyTriList( const mapTri_t *a ) {
    Sys_Printf("mapTri_t*CopyTriList( const mapTri_t *a )\r\n");
    return NULL;
}



/*
=============
CountTriList
=============
*/
int	CountTriList( const mapTri_t *tri ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intCountTriList( const mapTri_t *tri )\r\n");
    return retVal;
}



/*
===============
CopyMapTri
===============
*/
mapTri_t	*CopyMapTri( const mapTri_t *tri ) {
    Sys_Printf("mapTri_t*CopyMapTri( const mapTri_t *tri )\r\n");
    return NULL;
}


/*
===============
MapTriArea
===============
*/
float MapTriArea( const mapTri_t *tri ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float MapTriArea( const mapTri_t *tri )\r\n");
    return retVal;
}


/*
===============
RemoveBadTris

Return a new list with any zero or negative area triangles removed
===============
*/
mapTri_t	*RemoveBadTris( const mapTri_t *list ) {
    Sys_Printf("mapTri_t*RemoveBadTris( const mapTri_t *list )\r\n");
    return NULL;
}


/*
================
BoundTriList
================
*/
void BoundTriList( const mapTri_t *list, idBounds &b ) {
    Sys_Printf("void BoundTriList( const mapTri_t *list, idBounds &b )\r\n");
}


/*
================
DrawTri
================
*/
void DrawTri( const mapTri_t *tri ) {
    Sys_Printf("void DrawTri( const mapTri_t *tri )\r\n");
}



/*
================
FlipTriList

Swaps the vertex order
================
*/
void	FlipTriList( mapTri_t *tris ) {
    Sys_Printf("voidFlipTriList( mapTri_t *tris )\r\n");
}


/*
================
WindingForTri
================
*/
idWinding *WindingForTri( const mapTri_t *tri ) {
    Sys_Printf("idWinding *WindingForTri( const mapTri_t *tri )\r\n");
    return NULL;
}


/*
================
TriVertsFromOriginal

Regenerate the texcoords and colors on a fragmented tri from the plane equations
================
*/
void		TriVertsFromOriginal( mapTri_t *tri, const mapTri_t *original ) {
    Sys_Printf("voidTriVertsFromOriginal( mapTri_t *tri, const mapTri_t *original )\r\n");
}


/*
================
WindingToTriList

Generates a new list of triangles with proper texcoords from a winding
created by clipping the originalTri

OriginalTri can be NULL if you don't care about texCoords
================
*/
mapTri_t *WindingToTriList( const idWinding *w, const mapTri_t *originalTri ) {
    Sys_Printf("mapTri_t *WindingToTriList( const idWinding *w, const mapTri_t *originalTri )\r\n");
    return NULL;
}



/*
==================
ClipTriList
==================
*/
void	ClipTriList( const mapTri_t *list, const idPlane &plane, float epsilon, 
						mapTri_t **front, mapTri_t **back ) {
    Sys_Printf("voidClipTriList( const mapTri_t *list, const idPlane &plane, float epsilon, mapTri_t **front, mapTri_t **back )\r\n");
}


/*
==================
PlaneForTri
==================
*/
void	PlaneForTri( const mapTri_t *tri, idPlane &plane ) {
    Sys_Printf("voidPlaneForTri( const mapTri_t *tri, idPlane &plane )\r\n");
}

