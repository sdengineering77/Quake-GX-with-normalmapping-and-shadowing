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

  with standard calls, we can't do bump mapping or vertex colors with
  shader colors

  2 texture units:

falloff
--
light cube
bump
--
light projection
diffuse


	3 texture units:

light cube
bump
--
falloff
light projection
diffuse


	5 texture units:

light cube
bump
falloff
light projection
diffuse

*/

/*
==================
RB_ARB_DrawInteraction

backEnd.vLight

backEnd.depthFunc must be equal for alpha tested surfaces to work right,
it is set to lessThan for blended transparent surfaces

==================
*/
static void RB_ARB_DrawInteraction( const drawInteraction_t *din ) {
    Sys_Printf("void RB_ARB_DrawInteraction( const drawInteraction_t *din )\r\n");
}


/*
==================
RB_ARB_DrawThreeTextureInteraction

Used by radeon R100 and Intel graphics parts

backEnd.vLight

backEnd.depthFunc must be equal for alpha tested surfaces to work right,
it is set to lessThan for blended transparent surfaces

==================
*/
static void RB_ARB_DrawThreeTextureInteraction( const drawInteraction_t *din ) {
    Sys_Printf("void RB_ARB_DrawThreeTextureInteraction( const drawInteraction_t *din )\r\n");
}



/*
==================
RB_CreateDrawInteractions
==================
*/
static void RB_CreateDrawInteractions( const drawSurf_t *surf ) {
    Sys_Printf("void RB_CreateDrawInteractions( const drawSurf_t *surf )\r\n");
}




/*
==================
RB_RenderViewLight

==================
*/
static void RB_RenderViewLight( viewLight_t *vLight ) {
    Sys_Printf("void RB_RenderViewLight( viewLight_t *vLight )\r\n");
}



/*
==================
RB_ARB_DrawInteractions
==================
*/
void RB_ARB_DrawInteractions( void ) {
    Sys_Printf("void RB_ARB_DrawInteractions( void )\r\n");
}


