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
#include "simplex.h"	// line font definition

#ifndef DOOMGX
#define MAX_DEBUG_LINES			16384
#define MAX_DEBUG_TEXT			512
#define MAX_DEBUG_POLYGONS		8192
#else
#define MAX_DEBUG_LINES			0
#define MAX_DEBUG_TEXT			0
#define MAX_DEBUG_POLYGONS		0
#endif

typedef struct debugLine_s {
	idVec4		rgb;
	idVec3		start;
	idVec3		end;
	bool		depthTest;
	int			lifeTime;
} debugLine_t;

debugLine_t		rb_debugLines[ MAX_DEBUG_LINES ];
int				rb_numDebugLines = 0;
int				rb_debugLineTime = 0;


typedef struct debugText_s {
	idStr		text;
	idVec3		origin;
	float		scale;
	idVec4		color;
	idMat3		viewAxis;
	int			align;
	int			lifeTime;
	bool		depthTest;
} debugText_t;

debugText_t		rb_debugText[ MAX_DEBUG_TEXT ];
int				rb_numDebugText = 0;
int				rb_debugTextTime = 0;


typedef struct debugPolygon_s {
	idVec4		rgb;
	idWinding	winding;
	bool		depthTest;
	int			lifeTime;
} debugPolygon_t;

debugPolygon_t	rb_debugPolygons[ MAX_DEBUG_POLYGONS ];
int				rb_numDebugPolygons = 0;
int				rb_debugPolygonTime = 0;

static void RB_DrawText( const char *text, const idVec3 &origin, float scale, const idVec4 &color, const idMat3 &viewAxis, const int align );

/*
================
RB_DrawBounds
================
*/
void RB_DrawBounds( const idBounds &bounds ) {
    Sys_Printf("void RB_DrawBounds( const idBounds &bounds )\r\n");
}



/*
================
RB_SimpleSurfaceSetup
================
*/
void RB_SimpleSurfaceSetup( const drawSurf_t *drawSurf ) {
    Sys_Printf("void RB_SimpleSurfaceSetup( const drawSurf_t *drawSurf )\r\n");
}


/*
================
RB_SimpleWorldSetup
================
*/
void RB_SimpleWorldSetup( void ) {
    Sys_Printf("void RB_SimpleWorldSetup( void )\r\n");
}


/*
=================
RB_PolygonClear

This will cover the entire screen with normal rasterization.
Texturing is disabled, but the existing glColor, glDepthMask,
glColorMask, and the enabled state of depth buffering and
stenciling will matter.
=================
*/
void RB_PolygonClear( void ) {
    Sys_Printf("void RB_PolygonClear( void )\r\n");
}


/*
====================
RB_ShowDestinationAlpha
====================
*/
void RB_ShowDestinationAlpha( void ) {
    Sys_Printf("void RB_ShowDestinationAlpha( void )\r\n");
}


/*
===================
RB_ScanStencilBuffer

Debugging tool to see what values are in the stencil buffer
===================
*/
void RB_ScanStencilBuffer( void ) {
    Sys_Printf("void RB_ScanStencilBuffer( void )\r\n");
}



/*
===================
RB_CountStencilBuffer

Print an overdraw count based on stencil index values
===================
*/
void RB_CountStencilBuffer( void ) {
    Sys_Printf("void RB_CountStencilBuffer( void )\r\n");
}


/*
===================
R_ColorByStencilBuffer

Sets the screen colors based on the contents of the
stencil buffer.  Stencil of 0 = black, 1 = red, 2 = green,
3 = blue, ..., 7+ = white
===================
*/
static void R_ColorByStencilBuffer( void ) {
    Sys_Printf("void R_ColorByStencilBuffer( void )\r\n");
}


//======================================================================

/*
==================
RB_ShowOverdraw
==================
*/
void RB_ShowOverdraw( void ) {
    //Sys_Printf("void RB_ShowOverdraw( void )\r\n");
}


/*
===================
RB_ShowIntensity

Debugging tool to see how much dynamic range a scene is using.
The greatest of the rgb values at each pixel will be used, with
the resulting color shading from red at 0 to green at 128 to blue at 255
===================
*/
void RB_ShowIntensity( void ) {
    Sys_Printf("void RB_ShowIntensity( void )\r\n");
}



/*
===================
RB_ShowDepthBuffer

Draw the depth buffer as colors
===================
*/
void RB_ShowDepthBuffer( void ) {
    Sys_Printf("void RB_ShowDepthBuffer( void )\r\n");
}


/*
=================
RB_ShowLightCount

This is a debugging tool that will draw each surface with a color
based on how many lights are effecting it
=================
*/
void RB_ShowLightCount( void ) {
    Sys_Printf("void RB_ShowLightCount( void )\r\n");
}



/*
=================
RB_ShowSilhouette

Blacks out all edges, then adds color for each edge that a shadow
plane extends from, allowing you to see doubled edges
=================
*/
void RB_ShowSilhouette( void ) {
    Sys_Printf("void RB_ShowSilhouette( void )\r\n");
}




/*
=================
RB_ShowShadowCount

This is a debugging tool that will draw only the shadow volumes
and count up the total fill usage
=================
*/
static void RB_ShowShadowCount( void ) {
    Sys_Printf("void RB_ShowShadowCount( void )\r\n");
}



/*
===============
RB_T_RenderTriangleSurfaceAsLines

===============
*/
void RB_T_RenderTriangleSurfaceAsLines( const drawSurf_t *surf ) {
    Sys_Printf("void RB_T_RenderTriangleSurfaceAsLines( const drawSurf_t *surf )\r\n");
}



/*
=====================
RB_ShowTris

Debugging tool
=====================
*/
static void RB_ShowTris( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    Sys_Printf("void RB_ShowTris( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
}



/*
=====================
RB_ShowSurfaceInfo

Debugging tool
=====================
*/
static void RB_ShowSurfaceInfo( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    Sys_Printf("void RB_ShowSurfaceInfo( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
}



/*
=====================
RB_ShowViewEntitys

Debugging tool
=====================
*/
static void RB_ShowViewEntitys( viewEntity_t *vModels ) {
    Sys_Printf("void RB_ShowViewEntitys( viewEntity_t *vModels )\r\n");
}


/*
=====================
RB_ShowTexturePolarity

Shade triangle red if they have a positive texture area
green if they have a negative texture area, or blue if degenerate area
=====================
*/
static void RB_ShowTexturePolarity( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    Sys_Printf("void RB_ShowTexturePolarity( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
}



/*
=====================
RB_ShowUnsmoothedTangents

Shade materials that are using unsmoothed tangents
=====================
*/
static void RB_ShowUnsmoothedTangents( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    Sys_Printf("void RB_ShowUnsmoothedTangents( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
}



/*
=====================
RB_ShowTangentSpace

Shade a triangle by the RGB colors of its tangent space
1 = tangents[0]
2 = tangents[1]
3 = normal
=====================
*/
static void RB_ShowTangentSpace( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    Sys_Printf("void RB_ShowTangentSpace( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
}


/*
=====================
RB_ShowVertexColor

Draw each triangle with the solid vertex colors
=====================
*/
static void RB_ShowVertexColor( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    Sys_Printf("void RB_ShowVertexColor( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
}



/*
=====================
RB_ShowNormals

Debugging tool
=====================
*/
static void RB_ShowNormals( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    Sys_Printf("void RB_ShowNormals( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
}



/*
=====================
RB_ShowNormals

Debugging tool
=====================
*/
static void RB_AltShowNormals( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    Sys_Printf("void RB_AltShowNormals( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
}




/*
=====================
RB_ShowTextureVectors

Draw texture vectors in the center of each triangle
=====================
*/
static void RB_ShowTextureVectors( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    Sys_Printf("void RB_ShowTextureVectors( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
}


/*
=====================
RB_ShowDominantTris

Draw lines from each vertex to the dominant triangle center
=====================
*/
static void RB_ShowDominantTris( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    Sys_Printf("void RB_ShowDominantTris( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
}


/*
=====================
RB_ShowEdges

Debugging tool
=====================
*/
static void RB_ShowEdges( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    Sys_Printf("void RB_ShowEdges( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
}


/*
==============
RB_ShowLights

Visualize all light volumes used in the current scene
r_showLights 1	: just print volumes numbers, highlighting ones covering the view
r_showLights 2	: also draw planes of each volume
r_showLights 3	: also draw edges of each volume
==============
*/
void RB_ShowLights( void ) {
    Sys_Printf("void RB_ShowLights( void )\r\n");
}


/*
=====================
RB_ShowPortals

Debugging tool, won't work correctly with SMP or when mirrors are present
=====================
*/
void RB_ShowPortals( void ) {
    Sys_Printf("void RB_ShowPortals( void )\r\n");
}


/*
================
RB_ClearDebugText
================
*/
void RB_ClearDebugText( int time ) {
    Sys_Printf("void RB_ClearDebugText( int time )\r\n");
}


/*
================
RB_AddDebugText
================
*/
void RB_AddDebugText( const char *text, const idVec3 &origin, float scale, const idVec4 &color, const idMat3 &viewAxis, const int align, const int lifetime, const bool depthTest ) {
    Sys_Printf("void RB_AddDebugText( const char *text, const idVec3 &origin, float scale, const idVec4 &color, const idMat3 &viewAxis, const int align, const int lifetime, const bool depthTest )\r\n");
}


/*
================
RB_DrawTextLength

  returns the length of the given text
================
*/
float RB_DrawTextLength( const char *text, float scale, int len ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float RB_DrawTextLength( const char *text, float scale, int len )\r\n");
    return retVal;
}


/*
================
RB_DrawText

  oriented on the viewaxis
  align can be 0-left, 1-center (default), 2-right
================
*/
static void RB_DrawText( const char *text, const idVec3 &origin, float scale, const idVec4 &color, const idMat3 &viewAxis, const int align ) {
    Sys_Printf("void RB_DrawText( const char *text, const idVec3 &origin, float scale, const idVec4 &color, const idMat3 &viewAxis, const int align )\r\n");
}


/*
================
RB_ShowDebugText
================
*/
void RB_ShowDebugText( void ) {
    Sys_Printf("void RB_ShowDebugText( void )\r\n");
}


/*
================
RB_ClearDebugLines
================
*/
void RB_ClearDebugLines( int time ) {
    Sys_Printf("void RB_ClearDebugLines( int time )\r\n");
}


/*
================
RB_AddDebugLine
================
*/
void RB_AddDebugLine( const idVec4 &color, const idVec3 &start, const idVec3 &end, const int lifeTime, const bool depthTest ) {
    Sys_Printf("void RB_AddDebugLine( const idVec4 &color, const idVec3 &start, const idVec3 &end, const int lifeTime, const bool depthTest )\r\n");
}


/*
================
RB_ShowDebugLines
================
*/
void RB_ShowDebugLines( void ) {
    Sys_Printf("void RB_ShowDebugLines( void )\r\n");
}


/*
================
RB_ClearDebugPolygons
================
*/
void RB_ClearDebugPolygons( int time ) {
    Sys_Printf("void RB_ClearDebugPolygons( int time )\r\n");
}


/*
================
RB_AddDebugPolygon
================
*/
void RB_AddDebugPolygon( const idVec4 &color, const idWinding &winding, const int lifeTime, const bool depthTest ) {
    Sys_Printf("void RB_AddDebugPolygon( const idVec4 &color, const idWinding &winding, const int lifeTime, const bool depthTest )\r\n");
}


/*
================
RB_ShowDebugPolygons
================
*/
void RB_ShowDebugPolygons( void ) {
    Sys_Printf("void RB_ShowDebugPolygons( void )\r\n");
}


/*
================
RB_TestGamma
================
*/
#define	G_WIDTH		512
#define	G_HEIGHT	512
#define	BAR_HEIGHT	64

void RB_TestGamma( void ) {
    Sys_Printf("void RB_TestGamma( void )\r\n");
}



/*
==================
RB_TestGammaBias
==================
*/
static void RB_TestGammaBias( void ) {
    Sys_Printf("void RB_TestGammaBias( void )\r\n");
}


/*
================
RB_TestImage

Display a single image over most of the screen
================
*/
void RB_TestImage( void ) {
    Sys_Printf("void RB_TestImage( void )\r\n");
}


/*
=================
RB_RenderDebugTools
=================
*/
void RB_RenderDebugTools( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    //Sys_Printf("void RB_RenderDebugTools( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
}


/*
=================
RB_ShutdownDebugTools
=================
*/
void RB_ShutdownDebugTools( void ) {
    Sys_Printf("void RB_ShutdownDebugTools( void )\r\n");
}

