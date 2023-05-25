#include "heap.h"
#include "/engine/data/types.h"

static void *_lowMark;
static boolean _isInitialized = false;

/*
 * ===============================================
 * init()
 * ===============================================
 */
void init() {
	// TODO: setup DRAM
	_lowMark = 0x0000000;
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
void *freeFromMark(void *mark) {
	_lowMark = mark;
}


/*
 * ===============================================
 * allocMem()
 * ===============================================
 */
void *allocMem(int size, int boundary) {
	// TODO: actual allocate
}

