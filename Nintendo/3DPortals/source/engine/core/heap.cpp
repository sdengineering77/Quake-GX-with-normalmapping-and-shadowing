#include "heap.h"
#include "engine/data/types.h"

static void *_lowMark;
static void *_highMark;
static boolean _isInitialized = false;


/*
 * ===============================================
 * init()
 * ===============================================
 */
void initHeap() {
	// TODO: setup DRAM
	int size = 5*1024*1024;
	_lowMark = (void *) new byte[size];
	_highMark = ((byte *) _lowMark) + size;
	_isInitialized = true;
}


/*
 * ===============================================
 * getMemLowMark()
 * ===============================================
 */
void *getMemLowMark() {
	return _lowMark;
}


/*
 * ===============================================
 * freeFromMark()
 * ===============================================
 */
void freeFromMark(void *mark) {
	_lowMark = mark;
}


/*
 * ===============================================
 * allocMem()
 * ===============================================
 */
void *allocMem(int size, int boundary) {
	void *allocEnd;
	int allocStart = (int) _lowMark;
	if (boundary > 0) {
		allocStart = allocStart + boundary - allocStart%boundary;
	}
	
	allocEnd = (void *) (allocStart + size);
printf("%x %x %d", allocStart, allocEnd, allocStart%boundary);
	if (_highMark > allocEnd) {
		_lowMark = allocEnd;
		return (void *) allocStart;
	}
	return NULL;
}

