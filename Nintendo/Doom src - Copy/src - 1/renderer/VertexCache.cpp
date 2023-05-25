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
	cmdSystem->AddCommand( "listVertexCache", R_ListVertexCache_f, CMD_FL_RENDERER, "lists vertex cache" );

	if ( r_vertexBufferMegs.GetInteger() < 8 ) {
		r_vertexBufferMegs.SetInteger( 8 );
	}

	virtualMemory = false;

	// use ARB_vertex_buffer_object unless explicitly disabled
	if( r_useVertexBuffers.GetInteger() && glConfig.ARBVertexBufferObjectAvailable ) {
		common->Printf( "using ARB_vertex_buffer_object memory\n" );
	} else {
		virtualMemory = true;
		r_useIndexBuffers.SetBool( false );
		common->Printf( "WARNING: vertex array range in virtual memory (SLOW)\n" );
	}

	// initialize the cache memory blocks
	freeStaticHeaders.next = freeStaticHeaders.prev = &freeStaticHeaders;
	staticHeaders.next = staticHeaders.prev = &staticHeaders;
	freeDynamicHeaders.next = freeDynamicHeaders.prev = &freeDynamicHeaders;
	dynamicHeaders.next = dynamicHeaders.prev = &dynamicHeaders;
	deferredFreeList.next = deferredFreeList.prev = &deferredFreeList;

	// set up the dynamic frame memory
	frameBytes = FRAME_MEMORY_BYTES;
	staticAllocTotal = 0;

	byte	*junk = (byte *)Mem_Alloc( frameBytes );
	for ( int i = 0 ; i < NUM_VERTEX_FRAMES ; i++ ) {
		allocatingTempBuffer = true;	// force the alloc to use GL_STREAM_DRAW_ARB
		Alloc( junk, frameBytes, &tempBuffers[i] );
		allocatingTempBuffer = false;
		tempBuffers[i]->tag = TAG_FIXED;
		// unlink these from the static list, so they won't ever get purged
		tempBuffers[i]->next->prev = tempBuffers[i]->prev;
		tempBuffers[i]->prev->next = tempBuffers[i]->next;
	}
	Mem_Free( junk );

	EndFrame();
}


/*
===========
idVertexCache::PurgeAll

Used when toggling vertex programs on or off, because
the cached data isn't valid
===========
*/
void idVertexCache::PurgeAll() {
	while( staticHeaders.next != &staticHeaders ) {
		ActuallyFree( staticHeaders.next );
	}
}


/*
===========
idVertexCache::Shutdown
===========
*/
void idVertexCache::Shutdown() {
//	Commented by ID PurgeAll();	// !@#: also purge the temp buffers

	headerAllocator.Shutdown();
}


/*
===========
idVertexCache::Alloc
===========
*/
void idVertexCache::Alloc( void *data, int size, vertCache_t **buffer, bool indexBuffer ) {
	vertCache_t	*block;

	if ( size <= 0 ) {
		common->Error( "idVertexCache::Alloc: size = %i\n", size );
	}

	// if we can't find anything, it will be NULL
	*buffer = NULL;

	// if we don't have any remaining unused headers, allocate some more
	if ( freeStaticHeaders.next == &freeStaticHeaders ) {

		for ( int i = 0; i < EXPAND_HEADERS; i++ ) {
			block = headerAllocator.Alloc();
			block->next = freeStaticHeaders.next;
			block->prev = &freeStaticHeaders;
			block->next->prev = block;
			block->prev->next = block;

			if( !virtualMemory ) {
Sys_Printf(">>> DRS TODO: VertexCache.cpp:Alloc() qglGenBuffersARB( 1, & block->vbo )\r\n");
// http://www.opengl.org/wiki/Vertex_Buffer_Object
// http://www.opengl.org/sdk/docs/man/xhtml/glBufferData.xml

// DRS TODO: qglGenBuffersARB( 1, & block->vbo );
			}
		}
	}

	// move it from the freeStaticHeaders list to the staticHeaders list
	block = freeStaticHeaders.next;
	block->next->prev = block->prev;
	block->prev->next = block->next;
	block->next = staticHeaders.next;
	block->prev = &staticHeaders;
	block->next->prev = block;
	block->prev->next = block;

	block->size = size;
	block->offset = 0;
	block->tag = TAG_USED;

	// save data for debugging
	staticAllocThisFrame += block->size;
	staticCountThisFrame++;
	staticCountTotal++;
	staticAllocTotal += block->size;

	// this will be set to zero when it is purged
	block->user = buffer;
	*buffer = block;

	// allocation doesn't imply used-for-drawing, because at level
	// load time lots of things may be created, but they aren't
	// referenced by the GPU yet, and can be purged if needed.
	block->frameUsed = currentFrame - NUM_VERTEX_FRAMES;

	block->indexBuffer = indexBuffer;

	// copy the data
	if ( block->vbo ) {
		if ( indexBuffer ) {
Sys_Printf(">>> DRS TODO: VertexCache.cpp:Alloc() qglBindBufferARB()\r\n");
// DRS TODO	qglBindBufferARB( GL_ELEMENT_ARRAY_BUFFER_ARB, block->vbo );
//			qglBufferDataARB( GL_ELEMENT_ARRAY_BUFFER_ARB, (GLsizeiptrARB)size, data, GL_STATIC_DRAW_ARB );
		} else {
Sys_Printf(">>> DRS TODO: VertexCache.cpp:Alloc() qglBindBufferARB()\r\n");
// DRS TODO	qglBindBufferARB( GL_ARRAY_BUFFER_ARB, block->vbo );
			if ( allocatingTempBuffer ) {
// DRS TODO	qglBufferDataARB( GL_ARRAY_BUFFER_ARB, (GLsizeiptrARB)size, data, GL_STREAM_DRAW_ARB );
			} else {
// DRS TODO	qglBufferDataARB( GL_ARRAY_BUFFER_ARB, (GLsizeiptrARB)size, data, GL_STATIC_DRAW_ARB );
			}
		}
	} else {
		block->virtMem = Mem_Alloc( size );
		SIMDProcessor->Memcpy( block->virtMem, data, size );
	}
}


/*
===========
idVertexCache::Touch
===========
*/
void idVertexCache::Touch( vertCache_t *block ) {
	if ( !block ) {
		common->Error( "idVertexCache Touch: NULL pointer" );
	}

	if ( block->tag == TAG_FREE ) {
		common->FatalError( "idVertexCache Touch: freed pointer" );
	}
	if ( block->tag == TAG_TEMP ) {
		common->FatalError( "idVertexCache Touch: temporary pointer" );
	}

	block->frameUsed = currentFrame;

	// move to the head of the LRU list
	block->next->prev = block->prev;
	block->prev->next = block->next;

	block->next = staticHeaders.next;
	block->prev = &staticHeaders;
	staticHeaders.next->prev = block;
	staticHeaders.next = block;
}


/*
===========
idVertexCache::Free
===========
*/
void idVertexCache::Free( vertCache_t *block ) {
	if (!block) {
		return;
	}

	if ( block->tag == TAG_FREE ) {
		common->FatalError( "idVertexCache Free: freed pointer" );
	}
	if ( block->tag == TAG_TEMP ) {
		common->FatalError( "idVertexCache Free: temporary pointer" );
	}

	// this block still can't be purged until the frame count has expired,
	// but it won't need to clear a user pointer when it is
	block->user = NULL;

	block->next->prev = block->prev;
	block->prev->next = block->next;

	block->next = deferredFreeList.next;
	block->prev = &deferredFreeList;
	deferredFreeList.next->prev = block;
	deferredFreeList.next = block;
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
	vertCache_t	*block;

	if ( size <= 0 ) {
		common->Error( "idVertexCache::AllocFrameTemp: size = %i\n", size );
	}

	if ( dynamicAllocThisFrame + size > frameBytes ) {
		// if we don't have enough room in the temp block, allocate a static block,
		// but immediately free it so it will get freed at the next frame
		tempOverflow = true;
		Alloc( data, size, &block );
		Free( block);
		return block;
	}

	// this data is just going on the shared dynamic list

	// if we don't have any remaining unused headers, allocate some more
	if ( freeDynamicHeaders.next == &freeDynamicHeaders ) {

		for ( int i = 0; i < EXPAND_HEADERS; i++ ) {
			block = headerAllocator.Alloc();
			block->next = freeDynamicHeaders.next;
			block->prev = &freeDynamicHeaders;
			block->next->prev = block;
			block->prev->next = block;
		}
	}

	// move it from the freeDynamicHeaders list to the dynamicHeaders list
	block = freeDynamicHeaders.next;
	block->next->prev = block->prev;
	block->prev->next = block->next;
	block->next = dynamicHeaders.next;
	block->prev = &dynamicHeaders;
	block->next->prev = block;
	block->prev->next = block;

	block->size = size;
	block->tag = TAG_TEMP;
	block->indexBuffer = false;
	block->offset = dynamicAllocThisFrame;
	dynamicAllocThisFrame += block->size;
	dynamicCountThisFrame++;
	block->user = NULL;
	block->frameUsed = 0;

	// copy the data
	block->virtMem = tempBuffers[listNum]->virtMem;
	block->vbo = tempBuffers[listNum]->vbo;

	if ( block->vbo ) {
Sys_Printf(">>> DRS TODO: VertexCache.cpp:AllocFrameTemp() qglBindBufferARB()\r\n");
// see alloc for openGL doc link
// DRS TODO		qglBindBufferARB( GL_ARRAY_BUFFER_ARB, block->vbo );
// DRS TODO		qglBufferSubDataARB( GL_ARRAY_BUFFER_ARB, block->offset, (GLsizeiptrARB)size, data );
	} else {
		SIMDProcessor->Memcpy( (byte *)block->virtMem + block->offset, data, size );
	}

	return block;
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

