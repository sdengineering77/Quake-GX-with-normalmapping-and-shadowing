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

//#define TEST_TRACE

/*
=================
R_LocalTrace

If we resort the vertexes so all silverts come first, we can save some work here.
=================
*/
localTrace_t R_LocalTrace( const idVec3 &start, const idVec3 &end, const float radius, const srfTriangles_t *tri ) {
    localTrace_t retVal;
    memset(&retVal, 0, sizeof(localTrace_t));
    Sys_Printf("localTrace_t R_LocalTrace( const idVec3 &start, const idVec3 &end, const float radius, const srfTriangles_t *tri )\r\n");
    return retVal;
}


/*
=================
RB_DrawExpandedTriangles
=================
*/
void RB_DrawExpandedTriangles( const srfTriangles_t *tri, const float radius, const idVec3 &vieworg ) {
    Sys_Printf("void RB_DrawExpandedTriangles( const srfTriangles_t *tri, const float radius, const idVec3 &vieworg )\r\n");
}


/*
================
RB_ShowTrace

Debug visualization
================
*/
void RB_ShowTrace( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    Sys_Printf("void RB_ShowTrace( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
}

