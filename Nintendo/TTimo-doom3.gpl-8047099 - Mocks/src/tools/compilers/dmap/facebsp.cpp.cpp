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

int			c_faceLeafs;


extern	int	c_nodes;

void RemovePortalFromNode( uPortal_t *portal, node_t *l );

node_t *NodeForPoint( node_t *node, idVec3 origin ) {
    Sys_Printf("node_t *NodeForPoint( node_t *node, idVec3 origin )\r\n");
    return NULL;
}




/*
=============
FreeTreePortals_r
=============
*/
void FreeTreePortals_r (node_t *node)
{
    Sys_Printf("void FreeTreePortals_r (node_t *node)\r\n");
}


/*
=============
FreeTree_r
=============
*/
void FreeTree_r (node_t *node)
{
    Sys_Printf("void FreeTree_r (node_t *node)\r\n");
}



/*
=============
FreeTree
=============
*/
void FreeTree( tree_t *tree ) {
    Sys_Printf("void FreeTree( tree_t *tree )\r\n");
}


//===============================================================

void PrintTree_r (node_t *node, int depth)
{
    Sys_Printf("void PrintTree_r (node_t *node, int depth)\r\n");
}


/*
================
AllocBspFace
================
*/
bspface_t	*AllocBspFace( void ) {
    Sys_Printf("bspface_t*AllocBspFace( void )\r\n");
    return NULL;
}


/*
================
FreeBspFace
================
*/
void	FreeBspFace( bspface_t *f ) {
    Sys_Printf("voidFreeBspFace( bspface_t *f )\r\n");
}



/*
================
SelectSplitPlaneNum
================
*/
#define	BLOCK_SIZE	1024
int SelectSplitPlaneNum( node_t *node, bspface_t *list ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int SelectSplitPlaneNum( node_t *node, bspface_t *list )\r\n");
    return retVal;
}


/*
================
BuildFaceTree_r
================
*/
void	BuildFaceTree_r( node_t *node, bspface_t *list ) {
    Sys_Printf("voidBuildFaceTree_r( node_t *node, bspface_t *list )\r\n");
}



/*
================
FaceBSP

List will be freed before returning
================
*/
tree_t *FaceBSP( bspface_t *list ) {
    Sys_Printf("tree_t *FaceBSP( bspface_t *list )\r\n");
    return NULL;
}


//==========================================================================

/*
=================
MakeStructuralBspFaceList
=================
*/
bspface_t	*MakeStructuralBspFaceList( primitive_t *list ) {
    Sys_Printf("bspface_t*MakeStructuralBspFaceList( primitive_t *list )\r\n");
    return NULL;
}


/*
=================
MakeVisibleBspFaceList
=================
*/
bspface_t	*MakeVisibleBspFaceList( primitive_t *list ) {
    Sys_Printf("bspface_t*MakeVisibleBspFaceList( primitive_t *list )\r\n");
    return NULL;
}


