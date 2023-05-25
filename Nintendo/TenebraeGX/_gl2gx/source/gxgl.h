
#ifndef __GXGL_H
#define __GXGL_H

#include <string.h>
#include <GL/gl.h>
#include <ogc/gx.h>
#include <ogc/gu.h>

#define MAX_TEXTURE_UNIT		8
#define MAX_VERTEX_COLORS	2

typedef struct glpointer_s {
	GLint  					size;
	GLenum				type;
	GLsizei				stride;
	const GLvoid 		*pointer;
}	glpointer_t;

typedef struct glVtxAttrState_s {
	bool 		isDirty;

	bool 		vertexPointerEnabled;
	bool 		normalPointerEnabled;
	bool 		texCoordPointerEnabled[MAX_TEXTURE_UNIT];
	bool 		colorPointerEnabled;
}	glVtxAttrState_t;


typedef unsigned char uchar;


/* internal */
void printd(const char *c, ...);
 
 // gxgl_util.c
unsigned char gxPrimitive(GLenum primitive);
size_t 				getElemSize(GLenum type);

// gxgl_draw.c
void 				gxDrawElements(uchar gxPrimitive, int count, int *indices, glpointer_t *vertexPointer, glpointer_t *normalPointer, glpointer_t *texCoordPointer, glpointer_t *colorPointer);
unsigned char getCurrentVertexFormat(void);
void 				setCurrentVertexFormat(unsigned char vertexFormat);
void 				clearVtxDesc();
void 				addVtxAttrFmt(unsigned int vtxattr, unsigned int comptype, unsigned int compsize, unsigned int frac);
void 				addVtxDesc(unsigned char attr, unsigned char type);
void 				commitVtxDescState();

// gxgl_state.c
void 				setCurrentError(GLenum error); 
bool 				setActiveTextureUnit(int unit);
int 					getActiveTextureUnit(void);
int 					getActiveTexcoordArray();
bool 				setActiveTexcoordArray(int array);

void 				enableGLVertexState(GLenum  cap);
glVtxAttrState_t *getGLVertexState();


/* gxgl gl functions gxgl_vertex.c */
void 				initGXGLVertex();
void 				gxgl_glVertexPointer(GLint  size,  GLenum  type,  GLsizei  stride,  GLvoid *  pointer);
void 				gxgl_glNormalPointer(GLenum  type,  GLsizei  stride,  GLvoid *  pointer);
void 				gxgl_glTexCoordPointer(GLint  size,  GLenum  type,  GLsizei  stride,  const GLvoid *  pointer);
void 				gxgl_glEnableClientState(GLenum  cap);

/* extention functions gxgl_procs.c */
void 				gxgl_stubProc(void);
void 				gxgl_glClientActiveTextureARB(GLenum texture);
void 				gxgl_glActiveTextureARB(GLenum texture);


#endif // __GXGL_H

