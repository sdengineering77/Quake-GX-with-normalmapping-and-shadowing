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


static const int	FRAME_MEMORY_BYTES = 0x200000;
static const int	EXPAND_HEADERS = 1024;

idCVar idVertexCache::r_showVertexCache( "r_showVertexCache", "0", CVAR_INTEGER|CVAR_RENDERER, "" );
idCVar idVertexCache::r_vertexBufferMegs( "r_vertexBufferMegs", "32", CVAR_INTEGER|CVAR_RENDERER, "" );

idVertexCache		vertexCache;

/*
==============
R_ListVertexCache_f
==============
*/
static void R_ListVertexCache_f( const idCmdArgs &args ) {
    Sys_Printf("void R_ListVertexCache_f( const idCmdArgs &args )\r\n");
}


/*
==============
idVertexCache::ActuallyFree
==============
*/
void idVertexCache::ActuallyFree( vertCache_t *block ) {
    Sys_Printf("void idVertexCache::ActuallyFree( vertCache_t *block )\r\n");
}


/*
==============
idVertexCache::Position

this will be a real pointer with virtual memory,
but it will be an int offset cast to a pointer with
ARB_vertex_buffer_object

The ARB_vertex_buffer_object will be bound
==============
*/
void *idVertexCache::Position( vertCache_t *buffer ) {
    Sys_Printf("void *idVertexCache::Position( vertCache_t *buffer )\r\n");
    return NULL;
}


void idVertexCache::UnbindIndex() {
    Sys_Printf("void idVertexCache::UnbindIndex()\r\n");
}



//================================================================================

/*
===========
idVertexCache::Init
===========
*/
void idVertexCache::Init() {
    Sys_Printf("void idVertexCache::Init()\r\n");
}


/*
===========
idVertexCache::PurgeAll

Used when toggling vertex programs on or off, because
the cached data isn't valid
===========
*/
void idVertexCache::PurgeAll() {
    Sys_Printf("void idVertexCache::PurgeAll()\r\n");
}


/*
===========
idVertexCache::Shutdown
===========
*/
void idVertexCache::Shutdown() {
    Sys_Printf("void idVertexCache::Shutdown()\r\n");
}


/*
===========
idVertexCache::Alloc
===========
*/
void idVertexCache::Alloc( void *data, int size, vertCache_t **buffer, bool indexBuffer ) {
    Sys_Printf("void idVertexCache::Alloc( void *data, int size, vertCache_t **buffer, bool indexBuffer )\r\n");
}


/*
===========
idVertexCache::Touch
===========
*/
void idVertexCache::Touch( vertCache_t *block ) {
    Sys_Printf("void idVertexCache::Touch( vertCache_t *block )\r\n");
}


/*
===========
idVertexCache::Free
===========
*/
void idVertexCache::Free( vertCache_t *block ) {
    Sys_Printf("void idVertexCache::Free( vertCache_t *block )\r\n");
}


/*
===========
idVertexCache::AllocFrameTemp

A frame temp allocation must never be allowed to fail due to overflow.
We can't simply sync with the GPU and overwrite what we have, because
there may still be future references to dynamically created surfaces.
===========
*/
vertCache_t	*idVertexCache::AllocFrameTemp( void *data, int size ) {
    Sys_Printf("vertCache_t*idVertexCache::AllocFrameTemp( void *data, int size )\r\n");
    return NULL;
}


/*
===========
idVertexCache::EndFrame
===========
*/
void idVertexCache::EndFrame() {
    Sys_Printf("void idVertexCache::EndFrame()\r\n");
}


/*
=============
idVertexCache::List
=============
*/
void idVertexCache::List( void ) {
    Sys_Printf("void idVertexCache::List( void )\r\n");
}


/*
=============
idVertexCache::IsFast

just for gfxinfo printing
=============
*/
bool idVertexCache::IsFast() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idVertexCache::IsFast()\r\n");
    return retVal;
}

