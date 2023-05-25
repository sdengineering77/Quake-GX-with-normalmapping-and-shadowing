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
=================
R_FinishDeform

The ambientCache is on the stack, so we don't want to leave a reference
to it that would try to be freed later.  Create the ambientCache immediately.
=================
*/
static void R_FinishDeform( drawSurf_t *drawSurf, srfTriangles_t *newTri, idDrawVert *ac ) {
    Sys_Printf("void R_FinishDeform( drawSurf_t *drawSurf, srfTriangles_t *newTri, idDrawVert *ac )\r\n");
}


/*
=====================
R_AutospriteDeform

Assuming all the triangles for this shader are independant
quads, rebuild them as forward facing sprites
=====================
*/
static void R_AutospriteDeform( drawSurf_t *surf ) {
    Sys_Printf("void R_AutospriteDeform( drawSurf_t *surf )\r\n");
}


/*
=====================
R_TubeDeform

will pivot a rectangular quad along the center of its long axis

Note that a geometric tube with even quite a few sides tube will almost certainly render much faster
than this, so this should only be for faked volumetric tubes.
Make sure this is used with twosided translucent shaders, because the exact side
order may not be correct.
=====================
*/
static void R_TubeDeform( drawSurf_t *surf ) {
    Sys_Printf("void R_TubeDeform( drawSurf_t *surf )\r\n");
}


/*
=====================
R_WindingFromTriangles

=====================
*/
#define	MAX_TRI_WINDING_INDEXES		16
int	R_WindingFromTriangles( const srfTriangles_t *tri, glIndex_t indexes[MAX_TRI_WINDING_INDEXES] ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intR_WindingFromTriangles( const srfTriangles_t *tri, glIndex_t indexes[MAX_TRI_WINDING_INDEXES] )\r\n");
    return retVal;
}


/*
=====================
R_FlareDeform

=====================
*/
/*
static void R_FlareDeform( drawSurf_t *surf ) {
    Sys_Printf("void R_FlareDeform( drawSurf_t *surf )\r\n");
}

*/

static void R_FlareDeform( drawSurf_t *surf ) {
    Sys_Printf("void R_FlareDeform( drawSurf_t *surf )\r\n");
}




/*
=====================
R_ExpandDeform

Expands the surface along it's normals by a shader amount
=====================
*/
static void R_ExpandDeform( drawSurf_t *surf ) {
    Sys_Printf("void R_ExpandDeform( drawSurf_t *surf )\r\n");
}


/*
=====================
R_MoveDeform

Moves the surface along the X axis, mostly just for demoing the deforms
=====================
*/
static void  R_MoveDeform( drawSurf_t *surf ) {
    Sys_Printf("void  R_MoveDeform( drawSurf_t *surf )\r\n");
}


//=====================================================================================

/*
=====================
R_TurbulentDeform

Turbulently deforms the XYZ, S, and T values
=====================
*/
static void  R_TurbulentDeform( drawSurf_t *surf ) {
    Sys_Printf("void  R_TurbulentDeform( drawSurf_t *surf )\r\n");
}


//=====================================================================================

/*
=====================
AddTriangleToIsland_r

=====================
*/
#define	MAX_EYEBALL_TRIS	10
#define	MAX_EYEBALL_ISLANDS	6

typedef struct {
	int		tris[MAX_EYEBALL_TRIS];
	int		numTris;
	idBounds	bounds;
	idVec3		mid;
} eyeIsland_t;

static void AddTriangleToIsland_r( const srfTriangles_t *tri, int triangleNum, bool *usedList, eyeIsland_t *island ) {
    Sys_Printf("void AddTriangleToIsland_r( const srfTriangles_t *tri, int triangleNum, bool *usedList, eyeIsland_t *island )\r\n");
}


/*
=====================
R_EyeballDeform

Each eyeball surface should have an separate upright triangle behind it, long end
pointing out the eye, and another single triangle in front of the eye for the focus point.
=====================
*/
static void R_EyeballDeform( drawSurf_t *surf ) {
    Sys_Printf("void R_EyeballDeform( drawSurf_t *surf )\r\n");
}


//==========================================================================================


/*
=====================
R_ParticleDeform

Emit particles from the surface instead of drawing it
=====================
*/
static void R_ParticleDeform( drawSurf_t *surf, bool useArea ) {
    Sys_Printf("void R_ParticleDeform( drawSurf_t *surf, bool useArea )\r\n");
}


//========================================================================================

/*
=================
R_DeformDrawSurf
=================
*/
void R_DeformDrawSurf( drawSurf_t *drawSurf ) {
    Sys_Printf("void R_DeformDrawSurf( drawSurf_t *drawSurf )\r\n");
}

