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


typedef struct {
	idVec3		origin;
	idMat3		axis;
} orientation_t;


/*
=================
R_MirrorPoint
=================
*/
static void R_MirrorPoint( const idVec3 in, orientation_t *surface, orientation_t *camera, idVec3 &out ) {
    Sys_Printf("void R_MirrorPoint( const idVec3 in, orientation_t *surface, orientation_t *camera, idVec3 &out )\r\n");
}


/*
=================
R_MirrorVector
=================
*/
static void R_MirrorVector( const idVec3 in, orientation_t *surface, orientation_t *camera, idVec3 &out ) {
    Sys_Printf("void R_MirrorVector( const idVec3 in, orientation_t *surface, orientation_t *camera, idVec3 &out )\r\n");
}


/*
=============
R_PlaneForSurface

Returns the plane for the first triangle in the surface
FIXME: check for degenerate triangle?
=============
*/
static void R_PlaneForSurface( const srfTriangles_t *tri, idPlane &plane ) {
    Sys_Printf("void R_PlaneForSurface( const srfTriangles_t *tri, idPlane &plane )\r\n");
}


/*
=========================
R_PreciseCullSurface

Check the surface for visibility on a per-triangle basis
for cases when it is going to be VERY expensive to draw (subviews)

If not culled, also returns the bounding box of the surface in 
Normalized Device Coordinates, so it can be used to crop the scissor rect.

OPTIMIZE: we could also take exact portal passing into consideration
=========================
*/
bool R_PreciseCullSurface( const drawSurf_t *drawSurf, idBounds &ndcBounds ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool R_PreciseCullSurface( const drawSurf_t *drawSurf, idBounds &ndcBounds )\r\n");
    return retVal;
}


/*
========================
R_MirrorViewBySurface
========================
*/
static viewDef_t *R_MirrorViewBySurface( drawSurf_t *drawSurf ) {
    Sys_Printf("viewDef_t *R_MirrorViewBySurface( drawSurf_t *drawSurf )\r\n");
    return NULL;
}


/*
========================
R_XrayViewBySurface
========================
*/
static viewDef_t *R_XrayViewBySurface( drawSurf_t *drawSurf ) {
    Sys_Printf("viewDef_t *R_XrayViewBySurface( drawSurf_t *drawSurf )\r\n");
    return NULL;
}


/*
===============
R_RemoteRender
===============
*/
static void R_RemoteRender( drawSurf_t *surf, textureStage_t *stage ) {
    Sys_Printf("void R_RemoteRender( drawSurf_t *surf, textureStage_t *stage )\r\n");
}


/*
=================
R_MirrorRender
=================
*/
void R_MirrorRender( drawSurf_t *surf, textureStage_t *stage, idScreenRect scissor ) {
    Sys_Printf("void R_MirrorRender( drawSurf_t *surf, textureStage_t *stage, idScreenRect scissor )\r\n");
}


/*
=================
R_XrayRender
=================
*/
void R_XrayRender( drawSurf_t *surf, textureStage_t *stage, idScreenRect scissor ) {
    Sys_Printf("void R_XrayRender( drawSurf_t *surf, textureStage_t *stage, idScreenRect scissor )\r\n");
}


/*
==================
R_GenerateSurfaceSubview
==================
*/
bool	R_GenerateSurfaceSubview( drawSurf_t *drawSurf ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolR_GenerateSurfaceSubview( drawSurf_t *drawSurf )\r\n");
    return retVal;
}


/*
================
R_GenerateSubViews

If we need to render another view to complete the current view,
generate it first.

It is important to do this after all drawSurfs for the current
view have been generated, because it may create a subview which
would change tr.viewCount.
================
*/
bool R_GenerateSubViews( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool R_GenerateSubViews( void )\r\n");
    return retVal;
}

