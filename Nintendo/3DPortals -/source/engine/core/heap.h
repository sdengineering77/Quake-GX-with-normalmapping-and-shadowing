#ifndef __HEAP_H
#define __HEAP_H

void *getMemLowMark();
void *freeFromMark(void *mark);
void *allocMem(int size, int boundary);

#endif