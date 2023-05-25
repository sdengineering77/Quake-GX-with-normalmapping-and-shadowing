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
=====================
RB_BakeTextureMatrixIntoTexgen
=====================
*/
void RB_BakeTextureMatrixIntoTexgen( idPlane lightProject[3], const float *textureMatrix ) {
    Sys_Printf("void RB_BakeTextureMatrixIntoTexgen( idPlane lightProject[3], const float *textureMatrix )\r\n");
}


/*
================
RB_PrepareStageTexturing
================
*/
void RB_PrepareStageTexturing( const shaderStage_t *pStage,  const drawSurf_t *surf, idDrawVert *ac ) {
    Sys_Printf("void RB_PrepareStageTexturing( const shaderStage_t *pStage, const drawSurf_t *surf, idDrawVert *ac )\r\n");
}


/*
================
RB_FinishStageTexturing
================
*/
void RB_FinishStageTexturing( const shaderStage_t *pStage, const drawSurf_t *surf, idDrawVert *ac ) {
    Sys_Printf("void RB_FinishStageTexturing( const shaderStage_t *pStage, const drawSurf_t *surf, idDrawVert *ac )\r\n");
}


/*
=============================================================================================

FILL DEPTH BUFFER

=============================================================================================
*/


/*
==================
RB_T_FillDepthBuffer
==================
*/
void RB_T_FillDepthBuffer( const drawSurf_t *surf ) {
    Sys_Printf("void RB_T_FillDepthBuffer( const drawSurf_t *surf )\r\n");
}


/*
=====================
RB_STD_FillDepthBuffer

If we are rendering a subview with a near clip plane, use a second texture
to force the alpha test to fail when behind that clip plane
=====================
*/
void RB_STD_FillDepthBuffer( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    Sys_Printf("void RB_STD_FillDepthBuffer( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
}


/*
=============================================================================================

SHADER PASSES

=============================================================================================
*/

/*
==================
RB_SetProgramEnvironment

Sets variables that can be used by all vertex programs
==================
*/
void RB_SetProgramEnvironment( void ) {
    Sys_Printf("void RB_SetProgramEnvironment( void )\r\n");
}


/*
==================
RB_SetProgramEnvironmentSpace

Sets variables related to the current space that can be used by all vertex programs
==================
*/
void RB_SetProgramEnvironmentSpace( void ) {
    Sys_Printf("void RB_SetProgramEnvironmentSpace( void )\r\n");
}


/*
==================
RB_STD_T_RenderShaderPasses

This is also called for the generated 2D rendering
==================
*/
void RB_STD_T_RenderShaderPasses( const drawSurf_t *surf ) {
    Sys_Printf("void RB_STD_T_RenderShaderPasses( const drawSurf_t *surf )\r\n");
}


/*
=====================
RB_STD_DrawShaderPasses

Draw non-light dependent passes
=====================
*/
int RB_STD_DrawShaderPasses( drawSurf_t **drawSurfs, int numDrawSurfs ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int RB_STD_DrawShaderPasses( drawSurf_t **drawSurfs, int numDrawSurfs )\r\n");
    return retVal;
}




/*
==============================================================================

BACK END RENDERING OF STENCIL SHADOWS

==============================================================================
*/

/*
=====================
RB_T_Shadow

the shadow volumes face INSIDE
=====================
*/
static void RB_T_Shadow( const drawSurf_t *surf ) {
    Sys_Printf("void RB_T_Shadow( const drawSurf_t *surf )\r\n");
}


/*
=====================
RB_StencilShadowPass

Stencil test should already be enabled, and the stencil buffer should have
been set to 128 on any surfaces that might receive shadows
=====================
*/
void RB_StencilShadowPass( const drawSurf_t *drawSurfs ) {
    Sys_Printf("void RB_StencilShadowPass( const drawSurf_t *drawSurfs )\r\n");
}




/*
=============================================================================================

BLEND LIGHT PROJECTION

=============================================================================================
*/

/*
=====================
RB_T_BlendLight

=====================
*/
static void RB_T_BlendLight( const drawSurf_t *surf ) {
    Sys_Printf("void RB_T_BlendLight( const drawSurf_t *surf )\r\n");
}



/*
=====================
RB_BlendLight

Dual texture together the falloff and projection texture with a blend
mode to the framebuffer, instead of interacting with the surface texture
=====================
*/
static void RB_BlendLight( const drawSurf_t *drawSurfs,  const drawSurf_t *drawSurfs2 ) {
    Sys_Printf("void RB_BlendLight( const drawSurf_t *drawSurfs, const drawSurf_t *drawSurfs2 )\r\n");
}



//========================================================================

static idPlane	fogPlanes[4];

/*
=====================
RB_T_BasicFog

=====================
*/
static void RB_T_BasicFog( const drawSurf_t *surf ) {
    Sys_Printf("void RB_T_BasicFog( const drawSurf_t *surf )\r\n");
}




/*
==================
RB_FogPass
==================
*/
static void RB_FogPass( const drawSurf_t *drawSurfs,  const drawSurf_t *drawSurfs2 ) {
    Sys_Printf("void RB_FogPass( const drawSurf_t *drawSurfs, const drawSurf_t *drawSurfs2 )\r\n");
}



/*
==================
RB_STD_FogAllLights
==================
*/
void RB_STD_FogAllLights( void ) {
    Sys_Printf("void RB_STD_FogAllLights( void )\r\n");
}


//=========================================================================================

/*
==================
RB_STD_LightScale

Perform extra blending passes to multiply the entire buffer by
a floating point value
==================
*/
void RB_STD_LightScale( void ) {
    Sys_Printf("void RB_STD_LightScale( void )\r\n");
}


//=========================================================================================

/*
=============
RB_STD_DrawView

=============
*/
void	RB_STD_DrawView( void ) {
    Sys_Printf("voidRB_STD_DrawView( void )\r\n");
}

