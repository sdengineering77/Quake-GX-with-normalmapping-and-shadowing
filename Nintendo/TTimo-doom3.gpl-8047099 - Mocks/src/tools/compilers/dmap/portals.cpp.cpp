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


interAreaPortal_t interAreaPortals[MAX_INTER_AREA_PORTALS];
int					numInterAreaPortals;


int		c_active_portals;
int		c_peak_portals;

/*
===========
AllocPortal
===========
*/
uPortal_t	*AllocPortal (void)
{
    Sys_Printf("uPortal_t*AllocPortal (void)\r\n");
    return NULL;
}



void FreePortal (uPortal_t  *p)
{
    Sys_Printf("void FreePortal (uPortal_t  *p)\r\n");
}


//==============================================================

/*
=============
Portal_Passable

Returns true if the portal has non-opaque leafs on both sides
=============
*/
static bool Portal_Passable( uPortal_t  *p ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Portal_Passable( uPortal_t  *p )\r\n");
    return retVal;
}



//=============================================================================

int		c_tinyportals;

/*
=============
AddPortalToNodes
=============
*/
void AddPortalToNodes (uPortal_t  *p, node_t *front, node_t *back) {
    Sys_Printf("void AddPortalToNodes (uPortal_t  *p, node_t *front, node_t *back)\r\n");
}



/*
=============
RemovePortalFromNode
=============
*/
void RemovePortalFromNode (uPortal_t  *portal, node_t *l)
{
    Sys_Printf("void RemovePortalFromNode (uPortal_t  *portal, node_t *l)\r\n");
}


//============================================================================

void PrintPortal (uPortal_t *p)
{
    Sys_Printf("void PrintPortal (uPortal_t *p)\r\n");
}


/*
================
MakeHeadnodePortals

The created portals will face the global outside_node
================
*/
#define	SIDESPACE	8
static void MakeHeadnodePortals( tree_t *tree ) {
    Sys_Printf("void MakeHeadnodePortals( tree_t *tree )\r\n");
}


//===================================================


/*
================
BaseWindingForNode
================
*/
#define	BASE_WINDING_EPSILON	0.001f
#define	SPLIT_WINDING_EPSILON	0.001f

idWinding *BaseWindingForNode (node_t *node) {
    Sys_Printf("idWinding *BaseWindingForNode (node_t *node)\r\n");
    return NULL;
}


//============================================================

/*
==================
MakeNodePortal

create the new portal by taking the full plane winding for the cutting plane
and clipping it by all of parents of this node
==================
*/
static void MakeNodePortal( node_t *node ) {
    Sys_Printf("void MakeNodePortal( node_t *node )\r\n");
}



/*
==============
SplitNodePortals

Move or split the portals that bound node so that the node's
children have portals instead of node.
==============
*/
static void SplitNodePortals( node_t *node ) {
    Sys_Printf("void SplitNodePortals( node_t *node )\r\n");
}



/*
================
CalcNodeBounds
================
*/
void CalcNodeBounds (node_t *node)
{
    Sys_Printf("void CalcNodeBounds (node_t *node)\r\n");
}



/*
==================
MakeTreePortals_r
==================
*/
void MakeTreePortals_r (node_t *node)
{
    Sys_Printf("void MakeTreePortals_r (node_t *node)\r\n");
}


/*
==================
MakeTreePortals
==================
*/
void MakeTreePortals (tree_t *tree)
{
    Sys_Printf("void MakeTreePortals (tree_t *tree)\r\n");
}


/*
=========================================================

FLOOD ENTITIES

=========================================================
*/

int		c_floodedleafs;

/*
=============
FloodPortals_r
=============
*/
void FloodPortals_r (node_t *node, int dist) {
    Sys_Printf("void FloodPortals_r (node_t *node, int dist)\r\n");
}


/*
=============
PlaceOccupant
=============
*/
bool PlaceOccupant( node_t *headnode, idVec3 origin, uEntity_t *occupant ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool PlaceOccupant( node_t *headnode, idVec3 origin, uEntity_t *occupant )\r\n");
    return retVal;
}


/*
=============
FloodEntities

Marks all nodes that can be reached by entites
=============
*/
bool FloodEntities( tree_t *tree ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool FloodEntities( tree_t *tree )\r\n");
    return retVal;
}


/*
=========================================================

FLOOD AREAS

=========================================================
*/

static	int		c_areas;
static	int		c_areaFloods;

/*
=================
FindSideForPortal
=================
*/
static side_t	*FindSideForPortal( uPortal_t *p ) {
    Sys_Printf("side_t*FindSideForPortal( uPortal_t *p )\r\n");
    return NULL;
}


/*
=============
FloodAreas_r
=============
*/
void FloodAreas_r (node_t *node)
{
    Sys_Printf("void FloodAreas_r (node_t *node)\r\n");
}


/*
=============
FindAreas_r

Just decend the tree, and for each node that hasn't had an
area set, flood fill out from there
=============
*/
void FindAreas_r( node_t *node ) {
    Sys_Printf("void FindAreas_r( node_t *node )\r\n");
}


/*
============
CheckAreas_r
============
*/
void CheckAreas_r( node_t *node ) {
    Sys_Printf("void CheckAreas_r( node_t *node )\r\n");
}


/*
============
ClearAreas_r

Set all the areas to -1 before filling
============
*/
void ClearAreas_r( node_t *node ) {
    Sys_Printf("void ClearAreas_r( node_t *node )\r\n");
}


//=============================================================


/*
=================
FindInterAreaPortals_r

=================
*/
static void FindInterAreaPortals_r( node_t *node ) {
    Sys_Printf("void FindInterAreaPortals_r( node_t *node )\r\n");
}






/*
=============
FloodAreas

Mark each leaf with an area, bounded by CONTENTS_AREAPORTAL
Sets e->areas.numAreas
=============
*/
void FloodAreas( uEntity_t *e ) {
    Sys_Printf("void FloodAreas( uEntity_t *e )\r\n");
}


/*
======================================================

FILL OUTSIDE

======================================================
*/

static	int		c_outside;
static	int		c_inside;
static	int		c_solid;

void FillOutside_r (node_t *node)
{
    Sys_Printf("void FillOutside_r (node_t *node)\r\n");
}


/*
=============
FillOutside

Fill (set node->opaque = true) all nodes that can't be reached by entities
=============
*/
void FillOutside( uEntity_t *e ) {
    Sys_Printf("void FillOutside( uEntity_t *e )\r\n");
}

