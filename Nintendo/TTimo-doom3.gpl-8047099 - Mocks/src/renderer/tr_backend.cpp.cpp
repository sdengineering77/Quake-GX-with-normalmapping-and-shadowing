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


frameData_t		*frameData;
backEndState_t	backEnd;


/*
======================
RB_SetDefaultGLState

This should initialize all GL state that any part of the entire program
may touch, including the editor.
======================
*/
void RB_SetDefaultGLState( void ) {
    Sys_Printf("void RB_SetDefaultGLState( void )\r\n");
}



/*
====================
RB_LogComment
====================
*/
void RB_LogComment( const char *comment, ... ) {
    Sys_Printf("void RB_LogComment( const char *comment, ... )\r\n");
}



//=============================================================================



/*
====================
GL_SelectTexture
====================
*/
void GL_SelectTexture( int unit ) {
    Sys_Printf("void GL_SelectTexture( int unit )\r\n");
}



/*
====================
GL_Cull

This handles the flipping needed when the view being
rendered is a mirored view.
====================
*/
void GL_Cull( int cullType ) {
    Sys_Printf("void GL_Cull( int cullType )\r\n");
}


/*
====================
GL_TexEnv
====================
*/
void GL_TexEnv( int env ) {
    Sys_Printf("void GL_TexEnv( int env )\r\n");
}


/*
=================
GL_ClearStateDelta

Clears the state delta bits, so the next GL_State
will set every item
=================
*/
void GL_ClearStateDelta( void ) {
    Sys_Printf("void GL_ClearStateDelta( void )\r\n");
}


/*
====================
GL_State

This routine is responsible for setting the most commonly changed state
====================
*/
void GL_State( int stateBits ) {
    Sys_Printf("void GL_State( int stateBits )\r\n");
}





/*
============================================================================

RENDER BACK END THREAD FUNCTIONS

============================================================================
*/

/*
=============
RB_SetGL2D

This is not used by the normal game paths, just by some tools
=============
*/
void RB_SetGL2D( void ) {
    Sys_Printf("void RB_SetGL2D( void )\r\n");
}




/*
=============
RB_SetBuffer

=============
*/
static void	RB_SetBuffer( const void *data ) {
    Sys_Printf("voidRB_SetBuffer( const void *data )\r\n");
}


/*
===============
RB_ShowImages

Draw all the images to the screen, on top of whatever
was there.  This is used to test for texture thrashing.
===============
*/
void RB_ShowImages( void ) {
    Sys_Printf("void RB_ShowImages( void )\r\n");
}



/*
=============
RB_SwapBuffers

=============
*/
const void	RB_SwapBuffers( const void *data ) {
    Sys_Printf("voidRB_SwapBuffers( const void *data )\r\n");
}


/*
=============
RB_CopyRender

Copy part of the current framebuffer to an image
=============
*/
const void	RB_CopyRender( const void *data ) {
    Sys_Printf("voidRB_CopyRender( const void *data )\r\n");
}


/*
====================
RB_ExecuteBackEndCommands

This function will be called syncronously if running without
smp extensions, or asyncronously by another thread.
====================
*/
int		backEndStartTime, backEndFinishTime;
void RB_ExecuteBackEndCommands( const emptyCommand_t *cmds ) {
    Sys_Printf("void RB_ExecuteBackEndCommands( const emptyCommand_t *cmds )\r\n");
}

