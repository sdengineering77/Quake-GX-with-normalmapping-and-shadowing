#include "glint.h"
#include <ogc/lwp.h>
#include <ogc/lwp_heap.h>
#include <ogc/lwp_threadq.h>

#include <malloc.h>
#include <string.h>
#include <stdio.h>

#if MEM_TEX_CACHE

// DRS TODO: go thru __heap_allocate path
typedef struct slot
{
	size_t size;
	void * slot;
} slot;

static slot slots[NUM_MEM_TEX_CACHE];

void initTextureSlots()
{
	size_t i = 0;
	
	for(i = 0; i < sizeof(slots)/sizeof(slots[0]); ++i)
	{
		slots[i].size = 0;
		slots[i].slot = NULL;
	}
}

static void * findSlot(size_t size)
{
	size_t i = 0;
	
	// Look for slot with exact size
	for(i = 0; i < sizeof(slots)/sizeof(slots[0]); ++i)
	{
		if(slots[i].size == size)
		{
			void * ret = slots[i].slot;
			slots[i].size = 0;
			slots[i].slot = NULL;
			
			return ret;
		}
	}
	
	// Did not find one
	// Might want to check memalign, and free memory if memalign returns 0
	return memalign(32, size);
}

static void putSlot(void * slot, size_t size)
{
	size_t i = 0;
	
	for(i = 0; i < sizeof(slots)/sizeof(slots[0]); ++i)
	{
		if(slots[i].slot == NULL)
		{
			slots[i].size = size;
			slots[i].slot = slot;
			return;
		}
	}
	
	if(i == sizeof(slots)/sizeof(slots[0]))
	{
		// Only gonna cache 1000 texture spots, free any additional one
		free(slot);
		return;
	}
}

void PreallocTexMem(size_t size)
{
	putSlot(memalign(32, size), size);
}


void * getTextureSlot(size_t size)
{
	return findSlot(size);

}
void releaseTextureSlot(void * slot, size_t size)
{
	putSlot(slot,size);
}

#include <stdio.h>

void printTextureStats()
{
	size_t i = 0;
	size_t max_slot = 0;
	size_t unused_textures = 0;
	
	for(i = 0; i < sizeof(slots)/sizeof(slots[0]); ++i)
	{
		unused_textures += slots[i].size;
		if(slots[i].slot != NULL)
		{
			max_slot = i;
		}
	}
	
	printf("Total unused texture mem: %u\n", unused_textures);
	printf("Max slot: %u\n", max_slot);
	
	unused_textures = 0;
}
#else


static size_t texMem = 0;
static void *texMemStart = NULL;
static void *texMemEnd = NULL;
static heap_cntrl texMemHeap;

void initTextureSlots()
{
	texMem = 0;
	
	u32 level, size;

	_CPU_ISR_Disable(level);

	texMemStart = SYS_GetArena2Lo();
	texMemEnd = SYS_GetArena2Hi();
	size = texMemEnd - texMemStart;
	SYS_SetArena2Lo(texMemStart+size);

	_CPU_ISR_Restore(level);

	memset(texMemStart, 0, size);

	size = __lwp_heap_init(&texMemHeap, texMemStart, size, PPC_CACHE_ALIGNMENT);

//	printf("Allocated %dM texture heap.\n", size / (1024 * 1024));
	
};

void * getTextureSlot(size_t size)
{
	void *newmem;
	heap_iblock info;

	texMem += size;
	newmem = __lwp_heap_allocate(&texMemHeap, size);//memalign(32, size);

	__lwp_heap_getinfo(&texMemHeap, &info);
//	dprintf("tot %d free %d\n", info.free_size + info.used_size, info.free_size);
//Sys_Printf("tot %d free %d\n", info.free_size + info.used_size, info.free_size);
	
	return newmem;
 
}
 
void releaseTextureSlot(void * slot, size_t size)
{
	texMem -= size;
	if (!__lwp_heap_free(&texMemHeap, slot)) {
		printf("gl2gx releaseTextureSlot: Error freeing data.");
	}
 // free(slot);
}

void printTextureStats()
{
	printf("Total texture mem: %u\n", texMem);
}


void PreallocTexMem(size_t size)
{
}

#endif
