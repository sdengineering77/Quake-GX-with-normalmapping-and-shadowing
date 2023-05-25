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

  After parsing, there will be a list of entities that each has
  a list of primitives.
  
  Primitives are either brushes, triangle soups, or model references.

  Curves are tesselated to triangle soups at load time, but model
  references are 
  Brushes will have 
  
	brushes, each of which has a side definition.

*/

//
// private declarations
//

#define MAX_BUILD_SIDES		300

static	int		entityPrimitive;		// to track editor brush numbers
static	int		c_numMapPatches;
static	int		c_areaportals;

static	uEntity_t	*uEntity;

// brushes are parsed into a temporary array of sides,
// which will have duplicates removed before the final brush is allocated
static	uBrush_t	*buildBrush;


#define	NORMAL_EPSILON			0.00001f
#define	DIST_EPSILON			0.01f


/*
===========
FindFloatPlane
===========
*/
int FindFloatPlane( const idPlane &plane, bool *fixedDegeneracies ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int FindFloatPlane( const idPlane &plane, bool *fixedDegeneracies )\r\n");
    return retVal;
}


/*
===========
SetBrushContents

The contents on all sides of a brush should be the same
Sets contentsShader, contents, opaque
===========
*/
static void SetBrushContents( uBrush_t *b ) {
    Sys_Printf("void SetBrushContents( uBrush_t *b )\r\n");
}



//============================================================================

/*
===============
FreeBuildBrush
===============
*/
static void FreeBuildBrush( void ) {
    Sys_Printf("void FreeBuildBrush( void )\r\n");
}


/*
===============
FinishBrush

Produces a final brush based on the buildBrush->sides array
and links it to the current entity
===============
*/
static uBrush_t *FinishBrush( void ) {
    Sys_Printf("uBrush_t *FinishBrush( void )\r\n");
    return NULL;
}


/*
================
AdjustEntityForOrigin
================
*/
static void AdjustEntityForOrigin( uEntity_t *ent ) {
    Sys_Printf("void AdjustEntityForOrigin( uEntity_t *ent )\r\n");
}


/*
=================
RemoveDuplicateBrushPlanes

Returns false if the brush has a mirrored set of planes,
meaning it encloses no volume.
Also removes planes without any normal
=================
*/
static bool RemoveDuplicateBrushPlanes( uBrush_t * b ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool RemoveDuplicateBrushPlanes( uBrush_t * b )\r\n");
    return retVal;
}



/*
=================
ParseBrush
=================
*/
static void ParseBrush( const idMapBrush *mapBrush, int primitiveNum ) {
    Sys_Printf("void ParseBrush( const idMapBrush *mapBrush, int primitiveNum )\r\n");
}


/*
================
ParseSurface
================
*/
static void ParseSurface( const idMapPatch *patch, const idSurface *surface, const idMaterial *material ) {
    Sys_Printf("void ParseSurface( const idMapPatch *patch, const idSurface *surface, const idMaterial *material )\r\n");
}


/*
================
ParsePatch
================
*/
static void ParsePatch( const idMapPatch *patch, int primitiveNum ) {
    Sys_Printf("void ParsePatch( const idMapPatch *patch, int primitiveNum )\r\n");
}


/*
================
ProcessMapEntity
================
*/
static bool	ProcessMapEntity( idMapEntity *mapEnt ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolProcessMapEntity( idMapEntity *mapEnt )\r\n");
    return retVal;
}


//===================================================================

/*
==============
CreateMapLight

==============
*/
static void CreateMapLight( const idMapEntity *mapEnt ) {
    Sys_Printf("void CreateMapLight( const idMapEntity *mapEnt )\r\n");
}


/*
==============
CreateMapLights

==============
*/
static void CreateMapLights( const idMapFile *dmapFile ) {
    Sys_Printf("void CreateMapLights( const idMapFile *dmapFile )\r\n");
}


/*
================
LoadDMapFile
================
*/
bool LoadDMapFile( const char *filename ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool LoadDMapFile( const char *filename )\r\n");
    return retVal;
}


/*
================
FreeOptimizeGroupList
================
*/
void FreeOptimizeGroupList( optimizeGroup_t *groups ) {
    Sys_Printf("void FreeOptimizeGroupList( optimizeGroup_t *groups )\r\n");
}


/*
================
FreeDMapFile
================
*/
void FreeDMapFile( void ) {
    Sys_Printf("void FreeDMapFile( void )\r\n");
}

