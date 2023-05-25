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
#include "../idlib/precompiled.h"
#pragma hdrstop

#include "tr_local.h"


/*
===============
R_MeshCost
===============
*/
#define	CACHE_SIZE	24
#define	STALL_SIZE	8
int	R_MeshCost( int numIndexes, glIndex_t *indexes ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intR_MeshCost( int numIndexes, glIndex_t *indexes )\r\n");
    return retVal;
}



typedef struct vertRef_s {
	struct vertRef_s	*next;
	int			tri;
} vertRef_t;

/*
====================
R_OrderIndexes

Reorganizes the indexes so they will take best advantage
of the internal GPU vertex caches
====================
*/
void R_OrderIndexes( int numIndexes, glIndex_t *indexes ) {
    Sys_Printf("void R_OrderIndexes( int numIndexes, glIndex_t *indexes )\r\n");
}



/*

  add all triangles that can be specified by the vertexes in the last 14 cache positions

  pick a new vert to add to the cache
  don't pick one in the 24 previous cache positions
  try to pick one that will enable the creation of as many triangles as possible

  look for a vert that shares an edge with the vert about to be evicted


*/

