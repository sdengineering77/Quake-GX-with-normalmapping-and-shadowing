/*
 * gx_vertex.cpp
 *
 *  Created on: 31 aug. 2012
 *      Author: Danny
 */
#include <ogc/gx.h>
#include <GL/gl.h>
#include "gx_qgx.h"

/*
DRS: decided that this is of no use; in GX we can create arrays with 2^16 elements
and possibly create multiple displaylists but not a set of arrays and order
GX to draw them. So just go with Doom's "virtual memory" implementation instead

#define MAX_VERTEXBUF		16

typedef struct gxvertexbuf_s {
	byte *buf;
	int size;
	boolean used;
} gxvertexbuf_t;

static gxvertexbuf_t *gxvertexbufs = NULL;
static int gxbufsrchfree;
static int gxcurrvertexbuf;

void qgx_InitVertexBuffer(void) {
Sys_Printf(">>> qgxInitVertexBuffer()\r\n");
	gxvertexbufs = (gxvertexbuf_t *) Mem_Alloc32(MAX_VERTEXBUF * sizeof(gxvertexbuf_t));
	memset(gxvertexbufs, 0x00, MAX_VERTEXBUF * sizeof(gxvertexbuf_t));
	gxbufsrchfree = 0;
	gxcurrvertexbuf = 0;
}

static int qgx_AllocVertexBufferIndex(void) {
	int  index = 0;

	if (!gxvertexbufs) {
		Sys_Error("Allocated gxvertexbuf before initialization\r\n");
	}
	if (gxbufsrchfree < MAX_VERTEXBUF) {
		for (index=gxbufsrchfree; index<MAX_VERTEXBUF; index++) {
			if (!gxvertexbufs[index].used) {
				break;
			}
		}
	} else {
		Sys_Error("Out of gxvertexbuf descriptors: > %d\r\n", MAX_VERTEXBUF);
	}
	gxbufsrchfree = index + 1;
	memset(&gxvertexbufs[index], 0x00, sizeof(gxvertexbuf_t));
	gxvertexbufs[index].used = true;

	return index;
}

static void qgx_FreeVertexBuffer(int index) {
	gxvertexbufs[index].used = false;

	if (index < gxbufsrchfree) {
		gxbufsrchfree = index;
	}
}

// --------------------------------------------------------

void qgxInitVertexBuffer(void) {
	qgx_InitVertexBuffer();
}

void qgxGenBuffer(int *handle) {
	handle[0] = qgx_AllocVertexBufferIndex();
}

void qgxBindBuffer(int handle) {

}
*/
