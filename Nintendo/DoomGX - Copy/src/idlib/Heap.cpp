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

#ifndef USE_LIBC_MALLOC
	#define USE_LIBC_MALLOC		0
#endif

#ifndef CRASH_ON_STATIC_ALLOCATION
//	#define CRASH_ON_STATIC_ALLOCATION
#endif

//===============================================================
//
//	idHeap
//
//===============================================================

#define SMALL_HEADER_SIZE		( (int) ( sizeof( byte ) + sizeof( byte ) ) )
#define MEDIUM_HEADER_SIZE		( (int) ( sizeof( mediumHeapEntry_s ) + sizeof( byte ) ) )
#define LARGE_HEADER_SIZE		( (int) ( sizeof( dword * ) + sizeof( byte ) ) )

#define ALIGN_SIZE( bytes )		( ( (bytes) + ALIGN - 1 ) & ~(ALIGN - 1) )
#define SMALL_ALIGN( bytes )	( ALIGN_SIZE( (bytes) + SMALL_HEADER_SIZE ) - SMALL_HEADER_SIZE )
#define MEDIUM_SMALLEST_SIZE	( ALIGN_SIZE( 256 ) + ALIGN_SIZE( MEDIUM_HEADER_SIZE ) )


class idHeap {

public:
					idHeap( void );
					~idHeap( void );				// frees all associated data
	void			Init( void );					// initialize
	void *			Allocate( const dword bytes );	// allocate memory
	void			Free( void *p );				// free memory
	void *			Allocate16( const dword bytes );// allocate 16 byte aligned memory
	void			Free16( void *p );				// free 16 byte aligned memory
	dword			Msize( void *p );				// return size of data block
	void			Dump( void  );

	void 			AllocDefragBlock( void );		// hack for huge renderbumps

private:

	enum {
		ALIGN = 8									// memory alignment in bytes
	};

	enum {
		INVALID_ALLOC	= 0xdd,
		SMALL_ALLOC		= 0xaa,						// small allocation
		MEDIUM_ALLOC	= 0xbb,						// medium allocaction
		LARGE_ALLOC		= 0xcc						// large allocaction
	};

	struct page_s {									// allocation page
		void *				data;					// data pointer to allocated memory
		dword				dataSize;				// number of bytes of memory 'data' points to
		page_s *			next;					// next free page in same page manager
		page_s *			prev;					// used only when allocated
		dword				largestFree;			// this data used by the medium-size heap manager
		void *				firstFree;				// pointer to first free entry
	};

	struct mediumHeapEntry_s {
		page_s *			page;					// pointer to page
		dword				size;					// size of block
		mediumHeapEntry_s *	prev;					// previous block
		mediumHeapEntry_s *	next;					// next block
		mediumHeapEntry_s *	prevFree;				// previous free block
		mediumHeapEntry_s *	nextFree;				// next free block
		dword				freeBlock;				// non-zero if free block
	};

	// variables
	void *			smallFirstFree[256/ALIGN+1];	// small heap allocator lists (for allocs of 1-255 bytes)
	page_s *		smallCurPage;					// current page for small allocations
	dword			smallCurPageOffset;				// byte offset in current page
	page_s *		smallFirstUsedPage;				// first used page of the small heap manager

	page_s *		mediumFirstFreePage;			// first partially free page
	page_s *		mediumLastFreePage;				// last partially free page
	page_s *		mediumFirstUsedPage;			// completely used page

	page_s *		largeFirstUsedPage;				// first page used by the large heap manager

	page_s *		swapPage;

	dword			pagesAllocated;					// number of pages currently allocated
	dword			pageSize;						// size of one alloc page in bytes

	dword			pageRequests;					// page requests
	dword			OSAllocs;						// number of allocs made to the OS

	int				c_heapAllocRunningCount;

	void			*defragBlock;					// a single huge block that can be allocated
													// at startup, then freed when needed

	// methods
	page_s *		AllocatePage( dword bytes );	// allocate page from the OS
	void			FreePage( idHeap::page_s *p );	// free an OS allocated page

	void *			SmallAllocate( dword bytes );	// allocate memory (1-255 bytes) from small heap manager
	void			SmallFree( void *ptr );			// free memory allocated by small heap manager

	void *			MediumAllocateFromPage( idHeap::page_s *p, dword sizeNeeded );
	void *			MediumAllocate( dword bytes );	// allocate memory (256-32768 bytes) from medium heap manager
	void			MediumFree( void *ptr );		// free memory allocated by medium heap manager

	void *			LargeAllocate( dword bytes );	// allocate large block from OS directly
	void			LargeFree( void *ptr );			// free memory allocated by large heap manager

	void			ReleaseSwappedPages( void );
	void			FreePageReal( idHeap::page_s *p );
};


/*
================
idHeap::Init
================
*/
void idHeap::Init () {
    Sys_Printf("void idHeap::Init ()\r\n");
}


/*
================
idHeap::idHeap
================
*/
idHeap::idHeap( void ) {
	Init();
}

/*
================
idHeap::~idHeap

  returns all allocated memory back to OS
================
*/
idHeap::~idHeap( void ) {


}

/*
================
idHeap::AllocDefragBlock
================
*/
void idHeap::AllocDefragBlock( void ) {
    Sys_Printf("void idHeap::AllocDefragBlock( void )\r\n");
}


/*
================
idHeap::Allocate
================
*/
void *idHeap::Allocate( const dword bytes ) {
    Sys_Printf("void *idHeap::Allocate( const dword bytes )\r\n");
    return NULL;
}


/*
================
idHeap::Free
================
*/
void idHeap::Free( void *p ) {
    Sys_Printf("void idHeap::Free( void *p )\r\n");
}


/*
================
idHeap::Allocate16
================
*/
void *idHeap::Allocate16( const dword bytes ) {
    Sys_Printf("void *idHeap::Allocate16( const dword bytes )\r\n");
    return NULL;
}


/*
================
idHeap::Free16
================
*/
void idHeap::Free16( void *p ) {
    Sys_Printf("void idHeap::Free16( void *p )\r\n");
}


/*
================
idHeap::Msize

  returns size of allocated memory block
  p	= pointer to memory block
  Notes:	size may not be the same as the size in the original
			allocation request (due to block alignment reasons).
================
*/
dword idHeap::Msize( void *p ) {
    dword retVal;
    memset(&retVal, 0, sizeof(dword));
    Sys_Printf("dword idHeap::Msize( void *p )\r\n");
    return retVal;
}


/*
================
idHeap::Dump

  dump contents of the heap
================
*/
void idHeap::Dump( void ) {
    Sys_Printf("void idHeap::Dump( void )\r\n");
}


/*
================
idHeap::FreePageReal

  frees page to be used by the OS
  p	= page to free
================
*/
void idHeap::FreePageReal( idHeap::page_s *p ) {
	assert( p );
	::free( p );
}

/*
================
idHeap::ReleaseSwappedPages

  releases the swap page to OS
================
*/
void idHeap::ReleaseSwappedPages () {
    Sys_Printf("void idHeap::ReleaseSwappedPages ()\r\n");
}


/*
================
idHeap::AllocatePage

  allocates memory from the OS
  bytes	= page size in bytes
  returns pointer to page
================
*/
idHeap::page_s* idHeap::AllocatePage( dword bytes ) {
    Sys_Printf("page_s* idHeap::AllocatePage( dword bytes )\r\n");
    return NULL;
}


/*
================
idHeap::FreePage

  frees a page back to the operating system
  p	= pointer to page
================
*/
void idHeap::FreePage( idHeap::page_s *p ) {
	assert( p );

	if ( p->dataSize == pageSize && !swapPage ) {			// add to swap list?
		swapPage = p;
	}
	else {
		FreePageReal( p );
	}

	pagesAllocated--;
}

//===============================================================
//
//	small heap code
//
//===============================================================

/*
================
idHeap::SmallAllocate

  allocate memory (1-255 bytes) from the small heap manager
  bytes = number of bytes to allocate
  returns pointer to allocated memory
================
*/
void *idHeap::SmallAllocate( dword bytes ) {
    Sys_Printf("void *idHeap::SmallAllocate( dword bytes )\r\n");
    return NULL;
}


/*
================
idHeap::SmallFree

  frees a block of memory allocated by SmallAllocate() call
  data = pointer to block of memory
================
*/
void idHeap::SmallFree( void *ptr ) {
    Sys_Printf("void idHeap::SmallFree( void *ptr )\r\n");
}


//===============================================================
//
//	medium heap code
//
//	Medium-heap allocated pages not returned to OS until heap destructor
//	called (re-used instead on subsequent medium-size malloc requests).
//
//===============================================================

/*
================
idHeap::MediumAllocateFromPage

  performs allocation using the medium heap manager from a given page
  p				= page
  sizeNeeded	= # of bytes needed
  returns pointer to allocated memory
================
*/
void *idHeap::MediumAllocateFromPage( idHeap::page_s *p, dword sizeNeeded ) {

	mediumHeapEntry_s	*best,*nw = NULL;
	byte				*ret;

	best = (mediumHeapEntry_s *)(p->firstFree);			// first block is largest

	assert( best );
	assert( best->size == p->largestFree );
	assert( best->size >= sizeNeeded );

	// if we can allocate another block from this page after allocating sizeNeeded bytes
	if ( best->size >= (dword)( sizeNeeded + MEDIUM_SMALLEST_SIZE ) ) {
		nw = (mediumHeapEntry_s *)((byte *)best + best->size - sizeNeeded);
		nw->page		= p;
		nw->prev		= best;
		nw->next		= best->next;
		nw->prevFree	= NULL;
		nw->nextFree	= NULL;
		nw->size		= sizeNeeded;
		nw->freeBlock	= 0;			// used block
		if ( best->next ) {
			best->next->prev = nw;
		}
		best->next	= nw;
		best->size	-= sizeNeeded;
		
		p->largestFree = best->size;
	}
	else {
		if ( best->prevFree ) {
			best->prevFree->nextFree = best->nextFree;
		}
		else {
			p->firstFree = (void *)best->nextFree;
		}
		if ( best->nextFree ) {
			best->nextFree->prevFree = best->prevFree;
		}

		best->prevFree  = NULL;
		best->nextFree  = NULL;
		best->freeBlock = 0;			// used block
		nw = best;

		p->largestFree = 0;
	}

	ret		= (byte *)(nw) + ALIGN_SIZE( MEDIUM_HEADER_SIZE );
	ret[-1] = MEDIUM_ALLOC;		// allocation identifier

	return (void *)(ret);
}

/*
================
idHeap::MediumAllocate

  allocate memory (256-32768 bytes) from medium heap manager
  bytes	= number of bytes to allocate
  returns pointer to allocated memory
================
*/
void *idHeap::MediumAllocate( dword bytes ) {
    Sys_Printf("void *idHeap::MediumAllocate( dword bytes )\r\n");
    return NULL;
}


/*
================
idHeap::MediumFree

  frees a block allocated by the medium heap manager
  ptr	= pointer to data block
================
*/
void idHeap::MediumFree( void *ptr ) {
    Sys_Printf("void idHeap::MediumFree( void *ptr )\r\n");
}


//===============================================================
//
//	large heap code
//
//===============================================================

/*
================
idHeap::LargeAllocate

  allocates a block of memory from the operating system
  bytes	= number of bytes to allocate
  returns pointer to allocated memory
================
*/
void *idHeap::LargeAllocate( dword bytes ) {
    Sys_Printf("void *idHeap::LargeAllocate( dword bytes )\r\n");
    return NULL;
}


/*
================
idHeap::LargeFree

  frees a block of memory allocated by the 'large memory allocator'
  p	= pointer to allocated memory
================
*/
void idHeap::LargeFree( void *ptr) {
    Sys_Printf("void idHeap::LargeFree( void *ptr)\r\n");
}


//===============================================================
//
//	memory allocation all in one place
//
//===============================================================

#undef new

static idHeap *			mem_heap = NULL;
static memoryStats_t	mem_total_allocs = { 0, 0x0fffffff, -1, 0 };
static memoryStats_t	mem_frame_allocs;
static memoryStats_t	mem_frame_frees;

/*
==================
Mem_ClearFrameStats
==================
*/
void Mem_ClearFrameStats( void ) {
    Sys_Printf("void Mem_ClearFrameStats( void )\r\n");
}


/*
==================
Mem_GetFrameStats
==================
*/
void Mem_GetFrameStats( memoryStats_t &allocs, memoryStats_t &frees ) {
    Sys_Printf("void Mem_GetFrameStats( memoryStats_t &allocs, memoryStats_t &frees )\r\n");
}


/*
==================
Mem_GetStats
==================
*/
void Mem_GetStats( memoryStats_t &stats ) {
    Sys_Printf("void Mem_GetStats( memoryStats_t &stats )\r\n");
}


/*
==================
Mem_UpdateStats
==================
*/
void Mem_UpdateStats( memoryStats_t &stats, int size ) {
    Sys_Printf("void Mem_UpdateStats( memoryStats_t &stats, int size )\r\n");
}


/*
==================
Mem_UpdateAllocStats
==================
*/
void Mem_UpdateAllocStats( int size ) {
    Sys_Printf("void Mem_UpdateAllocStats( int size )\r\n");
}


/*
==================
Mem_UpdateFreeStats
==================
*/
void Mem_UpdateFreeStats( int size ) {
    Sys_Printf("void Mem_UpdateFreeStats( int size )\r\n");
}



#ifndef ID_DEBUG_MEMORY

/*
==================
Mem_Alloc
==================
*/
void *Mem_Alloc( const int size ) {
    Sys_Printf("void *Mem_Alloc( const int size )\r\n");
    return NULL;
}


/*
==================
Mem_Free
==================
*/
void Mem_Free( void *ptr ) {
    Sys_Printf("void Mem_Free( void *ptr )\r\n");
}


/*
==================
Mem_Alloc16
==================
*/
void *Mem_Alloc16( const int size ) {
    Sys_Printf("void *Mem_Alloc16( const int size )\r\n");
    return NULL;
}


/*
==================
Mem_Free16
==================
*/
void Mem_Free16( void *ptr ) {
    Sys_Printf("void Mem_Free16( void *ptr )\r\n");
}


/*
==================
Mem_ClearedAlloc
==================
*/
void *Mem_ClearedAlloc( const int size ) {
    Sys_Printf("void *Mem_ClearedAlloc( const int size )\r\n");
    return NULL;
}


/*
==================
Mem_ClearedAlloc
==================
*/
void Mem_AllocDefragBlock( void ) {
    Sys_Printf("void Mem_AllocDefragBlock( void )\r\n");
}


/*
==================
Mem_CopyString
==================
*/
char *Mem_CopyString( const char *in ) {
    Sys_Printf("char *Mem_CopyString( const char *in )\r\n");
    return NULL;
}


/*
==================
Mem_Dump_f
==================
*/
void Mem_Dump_f( const idCmdArgs &args ) {
    Sys_Printf("void Mem_Dump_f( const idCmdArgs &args )\r\n");
}


/*
==================
Mem_DumpCompressed_f
==================
*/
void Mem_DumpCompressed_f( const idCmdArgs &args ) {
    Sys_Printf("void Mem_DumpCompressed_f( const idCmdArgs &args )\r\n");
}


/*
==================
Mem_Init
==================
*/
void Mem_Init( void ) {
    Sys_Printf("void Mem_Init( void )\r\n");
}


/*
==================
Mem_Shutdown
==================
*/
void Mem_Shutdown( void ) {
    Sys_Printf("void Mem_Shutdown( void )\r\n");
}


/*
==================
Mem_EnableLeakTest
==================
*/
void Mem_EnableLeakTest( const char *name ) {
    Sys_Printf("void Mem_EnableLeakTest( const char *name )\r\n");
}



#else /* !ID_DEBUG_MEMORY */

#undef		Mem_Alloc
#undef		Mem_ClearedAlloc
#undef		Com_ClearedReAlloc
#undef		Mem_Free
#undef		Mem_CopyString
#undef		Mem_Alloc16
#undef		Mem_Free16

#define MAX_CALLSTACK_DEPTH		6

// size of this struct must be a multiple of 16 bytes
typedef struct debugMemory_s {
	const char *			fileName;
	int						lineNumber;
	int						frameNumber;
	int						size;
	address_t				callStack[MAX_CALLSTACK_DEPTH];
	struct debugMemory_s *	prev;
	struct debugMemory_s *	next;
} debugMemory_t;

static debugMemory_t *	mem_debugMemory = NULL;
static char				mem_leakName[256] = "";

/*
==================
Mem_CleanupFileName
==================
*/
const char *Mem_CleanupFileName( const char *fileName ) {
    Sys_Printf("char *Mem_CleanupFileName( const char *fileName )\r\n");
    return NULL;
}


/*
==================
Mem_Dump
==================
*/
void Mem_Dump( const char *fileName ) {
    Sys_Printf("void Mem_Dump( const char *fileName )\r\n");
}


/*
==================
Mem_Dump_f
==================
*/
void Mem_Dump_f( const idCmdArgs &args ) {
    Sys_Printf("void Mem_Dump_f( const idCmdArgs &args )\r\n");
}


/*
==================
Mem_DumpCompressed
==================
*/
typedef struct allocInfo_s {
	const char *			fileName;
	int						lineNumber;
	int						size;
	int						numAllocs;
	address_t				callStack[MAX_CALLSTACK_DEPTH];
	struct allocInfo_s *	next;
} allocInfo_t;

typedef enum {
	MEMSORT_SIZE,
	MEMSORT_LOCATION,
	MEMSORT_NUMALLOCS,
	MEMSORT_CALLSTACK
} memorySortType_t;

void Mem_DumpCompressed( const char *fileName, memorySortType_t memSort, int sortCallStack, int numFrames ) {
    Sys_Printf("void Mem_DumpCompressed( const char *fileName, memorySortType_t memSort, int sortCallStack, int numFrames )\r\n");
}


/*
==================
Mem_DumpCompressed_f
==================
*/
void Mem_DumpCompressed_f( const idCmdArgs &args ) {
    Sys_Printf("void Mem_DumpCompressed_f( const idCmdArgs &args )\r\n");
}


/*
==================
Mem_AllocDebugMemory
==================
*/
void *Mem_AllocDebugMemory( const int size, const char *fileName, const int lineNumber, const bool align16 ) {
    Sys_Printf("void *Mem_AllocDebugMemory( const int size, const char *fileName, const int lineNumber, const bool align16 )\r\n");
    return NULL;
}


/*
==================
Mem_FreeDebugMemory
==================
*/
void Mem_FreeDebugMemory( void *p, const char *fileName, const int lineNumber, const bool align16 ) {
    Sys_Printf("void Mem_FreeDebugMemory( void *p, const char *fileName, const int lineNumber, const bool align16 )\r\n");
}


/*
==================
Mem_Alloc
==================
*/
void *Mem_Alloc( const int size, const char *fileName, const int lineNumber ) {
    Sys_Printf("void *Mem_Alloc( const int size, const char *fileName, const int lineNumber )\r\n");
    return NULL;
}


/*
==================
Mem_Free
==================
*/
void Mem_Free( void *ptr, const char *fileName, const int lineNumber ) {
    Sys_Printf("void Mem_Free( void *ptr, const char *fileName, const int lineNumber )\r\n");
}


/*
==================
Mem_Alloc16
==================
*/
void *Mem_Alloc16( const int size, const char *fileName, const int lineNumber ) {
    Sys_Printf("void *Mem_Alloc16( const int size, const char *fileName, const int lineNumber )\r\n");
    return NULL;
}


/*
==================
Mem_Free16
==================
*/
void Mem_Free16( void *ptr, const char *fileName, const int lineNumber ) {
    Sys_Printf("void Mem_Free16( void *ptr, const char *fileName, const int lineNumber )\r\n");
}


/*
==================
Mem_ClearedAlloc
==================
*/
void *Mem_ClearedAlloc( const int size, const char *fileName, const int lineNumber ) {
    Sys_Printf("void *Mem_ClearedAlloc( const int size, const char *fileName, const int lineNumber )\r\n");
    return NULL;
}


/*
==================
Mem_CopyString
==================
*/
char *Mem_CopyString( const char *in, const char *fileName, const int lineNumber ) {
    Sys_Printf("char *Mem_CopyString( const char *in, const char *fileName, const int lineNumber )\r\n");
    return NULL;
}


/*
==================
Mem_Init
==================
*/
void Mem_Init( void ) {
    Sys_Printf("void Mem_Init( void )\r\n");
}


/*
==================
Mem_Shutdown
==================
*/
void Mem_Shutdown( void ) {
    Sys_Printf("void Mem_Shutdown( void )\r\n");
}


/*
==================
Mem_EnableLeakTest
==================
*/
void Mem_EnableLeakTest( const char *name ) {
    Sys_Printf("void Mem_EnableLeakTest( const char *name )\r\n");
}


#endif /* !ID_DEBUG_MEMORY */
