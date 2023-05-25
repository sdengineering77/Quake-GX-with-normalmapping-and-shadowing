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

  There are not enough vertex program texture coordinate outputs
  to have unique texture coordinates for bump, specular, and diffuse,
  so diffuse and specular are assumed to be the same mapping.

  To handle properly, those cases with different diffuse and specular
  mapping will need to be run as two passes.

*/

// changed from 1 to 255 to not conflict with ARB2 program names
static int	FPROG_FAST_PATH = 255;

typedef struct {
	GLint	numFragmentRegisters;	// 6
	GLint	numFragmentConstants;	// 8
	GLint	numPasses;				// 2
	GLint	numInstructionsPerPass;	// 8
	GLint	numInstructionsTotal;	// 16
	GLint	colorAlphaPairing;		// 1
	GLint	numLoopbackComponenets;	// 3
	GLint	numInputInterpolatorComponents;	// 3
} atiFragmentShaderInfo_t;

static atiFragmentShaderInfo_t	fsi;

typedef struct {
	// vertex shader invariants
	int	lightPos;		// light position in object coordinates
	int	viewerPos;		// viewer position in object coordinates
	int	lightProjectS;	// projected light s texgen
	int	lightProjectT;	// projected light t texgen
	int	lightProjectQ;	// projected light q texgen
	int	lightFalloffS;	// projected light falloff s texgen
	int	bumpTransformS;	// bump TEX0 S transformation
	int	bumpTransformT;	// bump TEX0 T transformation
	int	colorTransformS;	// diffuse/specular texture matrix
	int	colorTransformT;	// diffuse/specular texture matrix

	// vertex shader variants
	int	texCoords;
	int	vertexColors;
	int	normals;
	int	tangents;
	int	biTangents;

} atiVertexShaderInfo_t;

static atiVertexShaderInfo_t	vsi;

/*
===================
RB_R200_ARB_DrawInteraction

===================
*/
static void RB_R200_ARB_DrawInteraction( const drawInteraction_t *din ) {
    Sys_Printf("void RB_R200_ARB_DrawInteraction( const drawInteraction_t *din )\r\n");
}


/*
==================
RB_R200_ARB_CreateDrawInteractions
==================
*/
static void RB_R200_ARB_CreateDrawInteractions( const drawSurf_t *surf ) {
    Sys_Printf("void RB_R200_ARB_CreateDrawInteractions( const drawSurf_t *surf )\r\n");
}




/*
==================
RB_R200_DrawInteractions

==================
*/
void RB_R200_DrawInteractions( void ) {
    Sys_Printf("void RB_R200_DrawInteractions( void )\r\n");
}



/*
=================
R_BuildSurfaceFragmentProgram
=================
*/
static void R_BuildSurfaceFragmentProgram( int programNum ) {
    Sys_Printf("void R_BuildSurfaceFragmentProgram( int programNum )\r\n");
}


/*
=================
R_R200_Init
=================
*/
void R_R200_Init( void ) {
    Sys_Printf("void R_R200_Init( void )\r\n");
}

