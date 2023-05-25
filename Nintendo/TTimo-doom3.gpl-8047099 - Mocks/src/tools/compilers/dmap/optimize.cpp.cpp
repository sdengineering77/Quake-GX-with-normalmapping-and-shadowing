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

//#pragma optimize( "", off )

#include "dmap.h"
#ifdef WIN32
#include <windows.h>
#include <GL/gl.h>
#endif

/*

  New vertexes will be created where edges cross.

  optimization requires an accurate t junction fixer.



*/

idBounds	optBounds;

#define	MAX_OPT_VERTEXES	0x10000
int			numOptVerts;
optVertex_t optVerts[MAX_OPT_VERTEXES];

#define	MAX_OPT_EDGES		0x40000
static	int		numOptEdges;
static	optEdge_t	optEdges[MAX_OPT_EDGES];

static bool IsTriangleValid( const optVertex_t *v1, const optVertex_t *v2, const optVertex_t *v3 );
static bool IsTriangleDegenerate( const optVertex_t *v1, const optVertex_t *v2, const optVertex_t *v3 );

static idRandom orandom;

/*
==============
ValidateEdgeCounts
==============
*/
static void ValidateEdgeCounts( optIsland_t *island ) {
    Sys_Printf("void ValidateEdgeCounts( optIsland_t *island )\r\n");
}



/*
====================
AllocEdge
====================
*/
static optEdge_t	*AllocEdge( void ) {
    Sys_Printf("optEdge_t*AllocEdge( void )\r\n");
    return NULL;
}


/*
====================
RemoveEdgeFromVert
====================
*/
static	void RemoveEdgeFromVert( optEdge_t *e1, optVertex_t *vert ) {
    Sys_Printf("void RemoveEdgeFromVert( optEdge_t *e1, optVertex_t *vert )\r\n");
}


/*
====================
UnlinkEdge
====================
*/
static	void UnlinkEdge( optEdge_t *e, optIsland_t *island ) {
    Sys_Printf("void UnlinkEdge( optEdge_t *e, optIsland_t *island )\r\n");
}



/*
====================
LinkEdge
====================
*/
static	void LinkEdge( optEdge_t *e ) {
    Sys_Printf("void LinkEdge( optEdge_t *e )\r\n");
}


#ifdef __linux__

optVertex_t *FindOptVertex( idDrawVert *v, optimizeGroup_t *opt );

#else

/*
================
FindOptVertex
================
*/
static optVertex_t *FindOptVertex( idDrawVert *v, optimizeGroup_t *opt ) {
    Sys_Printf("optVertex_t *FindOptVertex( idDrawVert *v, optimizeGroup_t *opt )\r\n");
    return NULL;
}


#endif

/*
================
DrawAllEdges
================
*/
static	void DrawAllEdges( void ) {
    Sys_Printf("void DrawAllEdges( void )\r\n");
}


/*
================
DrawVerts
================
*/
static void DrawVerts( optIsland_t *island ) {
    Sys_Printf("void DrawVerts( optIsland_t *island )\r\n");
}


/*
================
DrawEdges
================
*/
static	void DrawEdges( optIsland_t *island ) {
    Sys_Printf("void DrawEdges( optIsland_t *island )\r\n");
}


//=================================================================

/*
=================
VertexBetween
=================
*/
static bool VertexBetween( const optVertex_t *p1, const optVertex_t *v1, const optVertex_t *v2 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool VertexBetween( const optVertex_t *p1, const optVertex_t *v1, const optVertex_t *v2 )\r\n");
    return retVal;
}



/*
====================
EdgeIntersection

Creates a new optVertex_t where the line segments cross.
This should only be called if PointsStraddleLine returned true

Will return NULL if the lines are colinear
====================
*/
static	optVertex_t *EdgeIntersection( const optVertex_t *p1, const optVertex_t *p2, 
									  const optVertex_t *l1, const optVertex_t *l2, optimizeGroup_t *opt ) {
    Sys_Printf("optVertex_t *EdgeIntersection( const optVertex_t *p1, const optVertex_t *p2, const optVertex_t *l1, const optVertex_t *l2, optimizeGroup_t *opt )\r\n");
    return NULL;
}



/*
====================
PointsStraddleLine

Colinear is considdered crossing.
====================
*/
static	bool PointsStraddleLine( optVertex_t *p1, optVertex_t *p2, optVertex_t *l1, optVertex_t *l2 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool PointsStraddleLine( optVertex_t *p1, optVertex_t *p2, optVertex_t *l1, optVertex_t *l2 )\r\n");
    return retVal;
}



/*
====================
EdgesCross
====================
*/
static	bool EdgesCross( optVertex_t *a1, optVertex_t *a2, optVertex_t *b1, optVertex_t *b2 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool EdgesCross( optVertex_t *a1, optVertex_t *a2, optVertex_t *b1, optVertex_t *b2 )\r\n");
    return retVal;
}


/*
====================
TryAddNewEdge

====================
*/
static	bool TryAddNewEdge( optVertex_t *v1, optVertex_t *v2, optIsland_t *island ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool TryAddNewEdge( optVertex_t *v1, optVertex_t *v2, optIsland_t *island )\r\n");
    return retVal;
}


typedef struct {
	optVertex_t	*v1, *v2;
	float		length;
} edgeLength_t;


static	int LengthSort( const void *a, const void *b ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int LengthSort( const void *a, const void *b )\r\n");
    return retVal;
}


/*
==================
AddInteriorEdges

Add all possible edges between the verts
==================
*/
static	void AddInteriorEdges( optIsland_t *island ) {
    Sys_Printf("void AddInteriorEdges( optIsland_t *island )\r\n");
}




//==================================================================

/*
====================
RemoveIfColinear

====================
*/
#define	COLINEAR_EPSILON	0.1
static	void RemoveIfColinear( optVertex_t *ov, optIsland_t *island ) {
    Sys_Printf("void RemoveIfColinear( optVertex_t *ov, optIsland_t *island )\r\n");
}


/*
====================
CombineColinearEdges
====================
*/
static	void CombineColinearEdges( optIsland_t *island ) {
    Sys_Printf("void CombineColinearEdges( optIsland_t *island )\r\n");
}



//==================================================================

/*
===================
FreeOptTriangles

===================
*/
static void FreeOptTriangles( optIsland_t *island ) {
    Sys_Printf("void FreeOptTriangles( optIsland_t *island )\r\n");
}



/*
=================
IsTriangleValid

empty area will be considered invalid.
Due to some truly aweful epsilon issues, a triangle can switch between
valid and invalid depending on which order you look at the verts, so
consider it invalid if any one of the possibilities is invalid.
=================
*/
static bool IsTriangleValid( const optVertex_t *v1, const optVertex_t *v2, const optVertex_t *v3 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool IsTriangleValid( const optVertex_t *v1, const optVertex_t *v2, const optVertex_t *v3 )\r\n");
    return retVal;
}



/*
=================
IsTriangleDegenerate

Returns false if it is either front or back facing
=================
*/
static bool IsTriangleDegenerate( const optVertex_t *v1, const optVertex_t *v2, const optVertex_t *v3 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool IsTriangleDegenerate( const optVertex_t *v1, const optVertex_t *v2, const optVertex_t *v3 )\r\n");
    return retVal;
}



/*
==================
PointInTri

Tests if a 2D point is inside an original triangle
==================
*/
static bool PointInTri( const idVec3 &p, const mapTri_t *tri, optIsland_t *island ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool PointInTri( const idVec3 &p, const mapTri_t *tri, optIsland_t *island )\r\n");
    return retVal;
}



/*
====================
LinkTriToEdge

====================
*/
static void LinkTriToEdge( optTri_t *optTri, optEdge_t *edge ) {
    Sys_Printf("void LinkTriToEdge( optTri_t *optTri, optEdge_t *edge )\r\n");
}


/*
===============
CreateOptTri
===============
*/
static void CreateOptTri( optVertex_t *first, optEdge_t *e1, optEdge_t *e2, optIsland_t *island ) {
    Sys_Printf("void CreateOptTri( optVertex_t *first, optEdge_t *e1, optEdge_t *e2, optIsland_t *island )\r\n");
}


// debugging tool
static void ReportNearbyVertexes( const optVertex_t *v, const optIsland_t *island ) {
    Sys_Printf("void ReportNearbyVertexes( const optVertex_t *v, const optIsland_t *island )\r\n");
}


/*
====================
BuildOptTriangles

Generate a new list of triangles from the optEdeges
====================
*/
static void BuildOptTriangles( optIsland_t *island ) {
    Sys_Printf("void BuildOptTriangles( optIsland_t *island )\r\n");
}




/*
====================
RegenerateTriangles

Add new triangles to the group's regeneratedTris
====================
*/
static	void	RegenerateTriangles( optIsland_t *island ) {
    Sys_Printf("voidRegenerateTriangles( optIsland_t *island )\r\n");
}


//===========================================================================

/*
====================
RemoveInteriorEdges

Edges that have triangles of the same type (filled / empty)
on both sides will be removed
====================
*/
static	void RemoveInteriorEdges( optIsland_t *island ) {
    Sys_Printf("void RemoveInteriorEdges( optIsland_t *island )\r\n");
}


//==================================================================================

typedef struct {
	optVertex_t	*v1, *v2;
} originalEdges_t;

/*
=================
AddEdgeIfNotAlready
=================
*/
void AddEdgeIfNotAlready( optVertex_t *v1, optVertex_t *v2 ) {
    Sys_Printf("void AddEdgeIfNotAlready( optVertex_t *v1, optVertex_t *v2 )\r\n");
}




/*
=================
DrawOriginalEdges
=================
*/
static void DrawOriginalEdges( int numOriginalEdges, originalEdges_t *originalEdges ) {
    Sys_Printf("void DrawOriginalEdges( int numOriginalEdges, originalEdges_t *originalEdges )\r\n");
}



typedef struct edgeCrossing_s {
	struct edgeCrossing_s	*next;
	optVertex_t		*ov;
} edgeCrossing_t;

static	originalEdges_t	*originalEdges;
static	int				numOriginalEdges;

/*
=================
AddOriginalTriangle
=================
*/
static void AddOriginalTriangle( optVertex_t *v[3] ) {
    Sys_Printf("void AddOriginalTriangle( optVertex_t *v[3] )\r\n");
}


/*
=================
AddOriginalEdges
=================
*/
static	void AddOriginalEdges( optimizeGroup_t *opt ) {
    Sys_Printf("void AddOriginalEdges( optimizeGroup_t *opt )\r\n");
}


/*
=====================
SplitOriginalEdgesAtCrossings
=====================
*/
void SplitOriginalEdgesAtCrossings( optimizeGroup_t *opt ) {
    Sys_Printf("void SplitOriginalEdgesAtCrossings( optimizeGroup_t *opt )\r\n");
}


//=================================================================


/*
===================
CullUnusedVerts

Unlink any verts with no edges, so they
won't be used in the retriangulation
===================
*/
static void CullUnusedVerts( optIsland_t *island ) {
    Sys_Printf("void CullUnusedVerts( optIsland_t *island )\r\n");
}




/*
====================
OptimizeIsland

At this point, all needed vertexes are already in the
list, including any that were added at crossing points.

Interior and colinear vertexes will be removed, and
a new triangulation will be created.
====================
*/
static void OptimizeIsland( optIsland_t *island ) {
    Sys_Printf("void OptimizeIsland( optIsland_t *island )\r\n");
}


/*
================
AddVertexToIsland_r
================
*/
static void AddVertexToIsland_r( optVertex_t *vert, optIsland_t *island ) {
    Sys_Printf("void AddVertexToIsland_r( optVertex_t *vert, optIsland_t *island )\r\n");
}


/*
====================
SeparateIslands

While the algorithm should theoretically handle any collection
of triangles, there are speed and stability benefits to making
it work on as small a list as possible, so separate disconnected
collections of edges and process separately.

FIXME: we need to separate the source triangles before
doing this, because PointInSourceTris() can give a bad answer if
the source list has triangles not used in the optimization
====================
*/
static void SeparateIslands( optimizeGroup_t *opt ) {
    Sys_Printf("void SeparateIslands( optimizeGroup_t *opt )\r\n");
}


static void DontSeparateIslands( optimizeGroup_t *opt ) {
    Sys_Printf("void DontSeparateIslands( optimizeGroup_t *opt )\r\n");
}



/*
====================
PointInSourceTris

This is a sloppy bounding box check
====================
*/
static bool PointInSourceTris( float x, float y, float z, optimizeGroup_t *opt ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool PointInSourceTris( float x, float y, float z, optimizeGroup_t *opt )\r\n");
    return retVal;
}


/*
====================
OptimizeOptList
====================
*/
static	void OptimizeOptList( optimizeGroup_t *opt ) {
    Sys_Printf("void OptimizeOptList( optimizeGroup_t *opt )\r\n");
}



/*
==================
SetGroupTriPlaneNums

Copies the group planeNum to every triangle in each group
==================
*/
void SetGroupTriPlaneNums( optimizeGroup_t *groups ) {
    Sys_Printf("void SetGroupTriPlaneNums( optimizeGroup_t *groups )\r\n");
}



/*
===================
OptimizeGroupList

This will also fix tjunctions

===================
*/
void	OptimizeGroupList( optimizeGroup_t *groupList ) {
    Sys_Printf("voidOptimizeGroupList( optimizeGroup_t *groupList )\r\n");
}



/*
==================
OptimizeEntity
==================
*/
void	OptimizeEntity( uEntity_t *e ) {
    Sys_Printf("voidOptimizeEntity( uEntity_t *e )\r\n");
}

