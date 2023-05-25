
#ifndef _HEAP_H
#define _HEAP_H

void *getMemLowMark();
void freeFromMark(void *mark);
void *allocMem(int size, int boundary);

#endif
