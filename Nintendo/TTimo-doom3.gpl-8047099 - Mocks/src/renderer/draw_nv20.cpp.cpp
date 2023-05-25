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

typedef enum {
	FPROG_BUMP_AND_LIGHT,
	FPROG_DIFFUSE_COLOR,
	FPROG_SPECULAR_COLOR,
	FPROG_DIFFUSE_AND_SPECULAR_COLOR,

	FPROG_NUM_FRAGMENT_PROGRAMS
} fragmentProgram_t;

GLuint	fragmentDisplayListBase;	// FPROG_NUM_FRAGMENT_PROGRAMS lists

void RB_NV20_DependentSpecularPass( const drawInteraction_t *din );
void RB_NV20_DependentAmbientPass( void );

/*
=========================================================================================

GENERAL INTERACTION RENDERING

=========================================================================================
*/

/*
====================
GL_SelectTextureNoClient
====================
*/
void GL_SelectTextureNoClient( int unit ) {
    Sys_Printf("void GL_SelectTextureNoClient( int unit )\r\n");
}


/*
==================
RB_NV20_BumpAndLightFragment
==================
*/
static void RB_NV20_BumpAndLightFragment( void ) {
    Sys_Printf("void RB_NV20_BumpAndLightFragment( void )\r\n");
}


/*
==================
RB_NV20_DI_BumpAndLightPass

We are going to write alpha as light falloff * ( bump dot light ) * lightProjection
If the light isn't a monoLightShader, the lightProjection will be skipped, because
it will have to be done on an itterated basis
==================
*/
static void RB_NV20_DI_BumpAndLightPass( const drawInteraction_t *din, bool monoLightShader ) {
    Sys_Printf("void RB_NV20_DI_BumpAndLightPass( const drawInteraction_t *din, bool monoLightShader )\r\n");
}



/*
==================
RB_NV20_DiffuseColorFragment
==================
*/
static void RB_NV20_DiffuseColorFragment( void ) {
    Sys_Printf("void RB_NV20_DiffuseColorFragment( void )\r\n");
}


/*
==================
RB_NV20_DI_DiffuseColorPass

==================
*/
static void RB_NV20_DI_DiffuseColorPass( const drawInteraction_t *din ) {
    Sys_Printf("void RB_NV20_DI_DiffuseColorPass( const drawInteraction_t *din )\r\n");
}



/*
==================
RB_NV20_SpecularColorFragment
==================
*/
static void RB_NV20_SpecularColorFragment( void ) {
    Sys_Printf("void RB_NV20_SpecularColorFragment( void )\r\n");
}



/*
==================
RB_NV20_DI_SpecularColorPass

==================
*/
static void RB_NV20_DI_SpecularColorPass( const drawInteraction_t *din ) {
    Sys_Printf("void RB_NV20_DI_SpecularColorPass( const drawInteraction_t *din )\r\n");
}




/*
==================
RB_NV20_DiffuseAndSpecularColorFragment
==================
*/
static void RB_NV20_DiffuseAndSpecularColorFragment( void ) {
    Sys_Printf("void RB_NV20_DiffuseAndSpecularColorFragment( void )\r\n");
}



/*
==================
RB_NV20_DI_DiffuseAndSpecularColorPass

==================
*/
static void RB_NV20_DI_DiffuseAndSpecularColorPass( const drawInteraction_t *din ) {
    Sys_Printf("void RB_NV20_DI_DiffuseAndSpecularColorPass( const drawInteraction_t *din )\r\n");
}



/*
==================
RB_NV20_DrawInteraction
==================
*/
static void	RB_NV20_DrawInteraction( const drawInteraction_t *din ) {
    Sys_Printf("voidRB_NV20_DrawInteraction( const drawInteraction_t *din )\r\n");
}



/*
=============
RB_NV20_CreateDrawInteractions

=============
*/
static void RB_NV20_CreateDrawInteractions( const drawSurf_t *surf ) {
    Sys_Printf("void RB_NV20_CreateDrawInteractions( const drawSurf_t *surf )\r\n");
}



//======================================================================================


/*
==================
RB_NV20_DrawInteractions
==================
*/
void RB_NV20_DrawInteractions( void ) {
    Sys_Printf("void RB_NV20_DrawInteractions( void )\r\n");
}


//=======================================================================

/*
==================
R_NV20_Init

==================
*/
void R_NV20_Init( void ) {
    Sys_Printf("void R_NV20_Init( void )\r\n");
}


