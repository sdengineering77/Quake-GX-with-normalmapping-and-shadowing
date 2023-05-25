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

int		c_active_brushes;

int		c_nodes;

// if a brush just barely pokes onto the other side,
// let it slide by without chopping
#define	PLANESIDE_EPSILON	0.001
//0.1




/*
================
CountBrushList
================
*/
int	CountBrushList (uBrush_t *brushes)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intCountBrushList (uBrush_t *brushes)\r\n");
    return retVal;
}



int BrushSizeForSides( int numsides ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int BrushSizeForSides( int numsides )\r\n");
    return retVal;
}


/*
================
AllocBrush
================
*/
uBrush_t *AllocBrush (int numsides)
{
    Sys_Printf("uBrush_t *AllocBrush (int numsides)\r\n");
    return NULL;
}


/*
================
FreeBrush
================
*/
void FreeBrush (uBrush_t *brushes)
{
    Sys_Printf("void FreeBrush (uBrush_t *brushes)\r\n");
}



/*
================
FreeBrushList
================
*/
void FreeBrushList (uBrush_t *brushes)
{
    Sys_Printf("void FreeBrushList (uBrush_t *brushes)\r\n");
}


/*
==================
CopyBrush

Duplicates the brush, the sides, and the windings
==================
*/
uBrush_t *CopyBrush (uBrush_t *brush)
{
    Sys_Printf("uBrush_t *CopyBrush (uBrush_t *brush)\r\n");
    return NULL;
}



/*
================
DrawBrushList
================
*/
void DrawBrushList (uBrush_t *brush)
{
    Sys_Printf("void DrawBrushList (uBrush_t *brush)\r\n");
}



/*
=============
PrintBrush
=============
*/
void PrintBrush (uBrush_t *brush)
{
    Sys_Printf("void PrintBrush (uBrush_t *brush)\r\n");
}


/*
==================
BoundBrush

Sets the mins/maxs based on the windings
returns false if the brush doesn't enclose a valid volume
==================
*/
bool BoundBrush (uBrush_t *brush) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool BoundBrush (uBrush_t *brush)\r\n");
    return retVal;
}


/*
==================
CreateBrushWindings

makes basewindigs for sides and mins / maxs for the brush
returns false if the brush doesn't enclose a valid volume
==================
*/
bool CreateBrushWindings (uBrush_t *brush) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CreateBrushWindings (uBrush_t *brush)\r\n");
    return retVal;
}


/*
==================
BrushFromBounds

Creates a new axial brush
==================
*/
uBrush_t	*BrushFromBounds( const idBounds &bounds ) {
    Sys_Printf("uBrush_t*BrushFromBounds( const idBounds &bounds )\r\n");
    return NULL;
}


/*
==================
BrushVolume

==================
*/
float BrushVolume (uBrush_t *brush) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float BrushVolume (uBrush_t *brush)\r\n");
    return retVal;
}



/*
==================
WriteBspBrushMap

FIXME: use new brush format
==================
*/
void WriteBspBrushMap( const char *name, uBrush_t *list ) {
    Sys_Printf("void WriteBspBrushMap( const char *name, uBrush_t *list )\r\n");
}



//=====================================================================================

/*
====================
FilterBrushIntoTree_r

====================
*/
int FilterBrushIntoTree_r( uBrush_t *b, node_t *node ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int FilterBrushIntoTree_r( uBrush_t *b, node_t *node )\r\n");
    return retVal;
}



/*
=====================
FilterBrushesIntoTree

Mark the leafs as opaque and areaportals and put brush
fragments in each leaf so portal surfaces can be matched
to materials
=====================
*/
void FilterBrushesIntoTree( uEntity_t *e ) {
    Sys_Printf("void FilterBrushesIntoTree( uEntity_t *e )\r\n");
}




/*
================
AllocTree
================
*/
tree_t *AllocTree (void)
{
    Sys_Printf("tree_t *AllocTree (void)\r\n");
    return NULL;
}


/*
================
AllocNode
================
*/
node_t *AllocNode (void)
{
    Sys_Printf("node_t *AllocNode (void)\r\n");
    return NULL;
}


//============================================================

/*
==================
BrushMostlyOnSide

==================
*/
int BrushMostlyOnSide (uBrush_t *brush, idPlane &plane) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int BrushMostlyOnSide (uBrush_t *brush, idPlane &plane)\r\n");
    return retVal;
}


/*
================
SplitBrush

Generates two new brushes, leaving the original
unchanged
================
*/
void SplitBrush (uBrush_t *brush, int planenum, uBrush_t **front, uBrush_t **back) {
    Sys_Printf("void SplitBrush (uBrush_t *brush, int planenum, uBrush_t **front, uBrush_t **back)\r\n");
}

