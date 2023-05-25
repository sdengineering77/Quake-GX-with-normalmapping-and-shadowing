

#include "gxgl.h"

static GLenum				_currGLPrimitive;

static int						_numVertexIndices = 1024;
static int						_currVertexIndex;
static Vector				*_points;
static Vector				*_normals;
static Vector				*_tangents;
static Vector				*_bitangents;
static Vector				*_texCoords[MAX_TEXTURE_UNIT];
static GXColor				*_colors[MAX_VERTEX_COLORS];


static glVtxAttrState_t	_glPrevVtxAttrState;

static glpointer_t 		_vertexPointer;
static glpointer_t 		_colorPointer;
static glpointer_t 		_normalPointer;
static glpointer_t 		_texCoordPointer[MAX_TEXTURE_UNIT];

void initGXGLVertex() {
	int i;

	_glPrevVtxAttrState.isDirty = true;
	_currVertexIndex = 0;
	
	_points = malloc(_numVertexIndices * sizeof(Vector));
	_normals = malloc(_numVertexIndices * sizeof(Vector));
	_tangents = malloc(_numVertexIndices * sizeof(Vector));
	_bitangents = malloc(_numVertexIndices * sizeof(Vector));
	
	for (i=0; i<MAX_TEXTURE_UNIT; i++) {
		_texCoords[i] = malloc(_numVertexIndices * sizeof(Vector));
	}
	
	for (i=0; i<MAX_VERTEX_COLORS; i++) {
		_colors[i] = malloc(_numVertexIndices * sizeof(GXColor));
	}

}
 


/*
        Description
            glVertexPointer specifies the location and data format of an array of vertex coordinates
            to use when rendering.
            size specifies the number of coordinates per vertex, and must be 2, 3, or 4.
            type specifies the data type of each coordinate, and stride specifies the byte stride from one
            vertex to the next, allowing vertices and attributes
            to be packed into a single array or stored in separate arrays.
            (Single-array storage may be more efficient on some implementations;
            see glInterleavedArrays.)
        
            If a non-zero named buffer object is bound to the GL_ARRAY_BUFFER target 
            (see glBindBuffer) while a vertex array is
            specified, pointer is treated as a byte offset into the buffer object's data store.
            Also, the buffer object binding (GL_ARRAY_BUFFER_BINDING) is saved as vertex array
            client-side state (GL_VERTEX_ARRAY_BUFFER_BINDING).
        
            When a vertex array is specified,
            size, type, stride, and pointer are saved as client-side
            state, in addition to the current vertex array buffer object binding.
        
            To enable and disable the vertex array, call glEnableClientState and
            glDisableClientState with the argument GL_VERTEX_ARRAY. If
            enabled, the vertex array is used when
            glArrayElement, glDrawArrays, glMultiDrawArrays,
            glDrawElements, glMultiDrawElements, or glDrawRangeElements
            is called.
        Notes
            glVertexPointer is available only if the GL version is 1.1 or greater.

		Parameters
				size
                    Specifies the number of coordinates per vertex. Must be 2, 3, or
                    4. The initial value is 4.
                type
                    Specifies the data type of each coordinate in the array.
                    Symbolic constants
                    GL_SHORT,
                    GL_INT,
                    GL_FLOAT,
                    or GL_DOUBLE
                    are accepted. The initial value is GL_FLOAT.
                stride
                    Specifies the byte offset between consecutive
                    vertices. If stride is 0, the vertices are understood to be tightly packed in
                    the array. The initial value
                    is 0.
                pointer
                    Specifies a pointer to the first coordinate of the first vertex in the
                    array. The initial value is 0.
*/   


void gxgl_glVertexPointer(GLint  size,  GLenum  type,  GLsizei  stride,  GLvoid *  pointer) {
	if (stride == 0) {
		stride = getElemSize(type) * size;
	} 

	_vertexPointer.size = size;
	_vertexPointer.type = type;
	_vertexPointer.stride = stride;
	_vertexPointer.pointer = pointer;
}
     
void gxgl_glNormalPointer(GLenum  type,  GLsizei  stride,  GLvoid *  pointer) {
	int size = 3;
	if (stride == 0) {
		stride = getElemSize(type) * size;
	} 

	_normalPointer.size = size;
	_normalPointer.type = type;
	_normalPointer.stride = stride;
	_normalPointer.pointer = pointer;

}

void gxgl_glTexCoordPointer(GLint  size,  GLenum  type,  GLsizei  stride,  const GLvoid *  pointer) {
	int currentTexcoordArray = getActiveTexcoordArray();
	
	if (currentTexcoordArray > 0) { 
		glpointer_t *currTexCoordPointer = &_texCoordPointer[currentTexcoordArray];

		if (stride == 0) {
			stride = getElemSize(type) * size;
		} 
		
		currTexCoordPointer->size = size;
		currTexCoordPointer->type = type;
		currTexCoordPointer->stride = stride;
		currTexCoordPointer->pointer = pointer;
	}
}

void gxgl_glColorPointer(GLint size, GLenum  type,  GLsizei  stride,  GLvoid *  pointer) {
	if (stride == 0) {
		stride = getElemSize(type) * size;
	} 

	_colorPointer.size = size;
	_colorPointer.type = type;
	_colorPointer.stride = stride;
	_colorPointer.pointer = pointer;

}



/* glVertex commands are used within glBegin/glEnd pairs to specify
    point, line, and polygon vertices.  The current color, normal, texture
    coordinates, and fog coordinate *are associated with the vertex* when glVertex
    is called.
        
	When only x and y are specified, z defaults to 0 and w defaults to 1.  When 
    x, y, and z are specified, wdefaults to 1.
*/        

void gxgl_glVertex3f( GLfloat x, GLfloat y, GLfloat z ) {
	//store the vertex and keep index
	_points[_currVertexIndex].x = x;
	_points[_currVertexIndex].y = y;
	_points[_currVertexIndex].z = z;
	_currVertexIndex++;
}

void gxgl_glVertex2s(GLshort  x,  GLshort  y) {
	gxgl_glVertex3f((GLfloat) x, (GLfloat) y, (GLfloat) 0.0f);
}
void gxgl_glVertex2i(GLint  x,  GLint  y) {
	gxgl_glVertex3f((GLfloat) x, (GLfloat) y, (GLfloat) 0.0f);
}
void gxgl_glVertex2f(GLfloat  x,  GLfloat  y) {
	gxgl_glVertex3f((GLfloat) x, (GLfloat) y, (GLfloat) 0.0f);
}
void gxgl_glVertex2d(GLdouble  x,  GLdouble  y)  {
	gxgl_glVertex3f((GLfloat) x, (GLfloat) y, (GLfloat) 0.0f);
}
void gxgl_glVertex3s(GLshort  x,  GLshort  y,  GLshort  z) {
	gxgl_glVertex3f((GLfloat) x, (GLfloat) y, (GLfloat) z);
}
void gxgl_glVertex3i(GLint  x,  GLint  y,  GLint  z) {
	gxgl_glVertex3f((GLfloat) x, (GLfloat) y, (GLfloat) z);
}
void gxgl_glVertex3d(GLdouble  x,  GLdouble  y,  GLdouble  z) {
	gxgl_glVertex3f((GLfloat) x, (GLfloat) y, (GLfloat) z);
}
void gxgl_glVertex4s(GLshort  x,  GLshort  y,  GLshort  z,  GLshort  w) {
	gxgl_glVertex3f((GLfloat) x, (GLfloat) y, (GLfloat) z);
}
void gxgl_glVertex4i(GLint  x,  GLint  y,  GLint  z,  GLint  w) {
	gxgl_glVertex3f((GLfloat) x, (GLfloat) y, (GLfloat) z);
}
void gxgl_glVertex4f(GLfloat  x,  GLfloat  y,  GLfloat  z,  GLfloat  w) {
	gxgl_glVertex3f((GLfloat) x, (GLfloat) y, (GLfloat) z);
}
void gxgl_glVertex4d(GLdouble  x,  GLdouble  y,  GLdouble  z,  GLdouble  w) {
	gxgl_glVertex3f((GLfloat) x, (GLfloat) y, (GLfloat) z);
}

void gxgl_glNormal3f( GLfloat x, GLfloat y, GLfloat z ){
	_normals[_currVertexIndex].x = x;
	_normals[_currVertexIndex].y = y;
	_normals[_currVertexIndex].z = z;
}

void gxgl_glColor3f( GLfloat r, GLfloat g, GLfloat b ) {
	_colors[0][_currVertexIndex].r = r;
	_colors[0][_currVertexIndex].g = g;
	_colors[0][_currVertexIndex].b= b;
	_colors[0][_currVertexIndex].a = 255;
}

void gxgl_glColor4f(GLfloat r, GLfloat g, GLfloat b, GLfloat a) {
	_colors[0][_currVertexIndex].r = r;
	_colors[0][_currVertexIndex].g = g;
	_colors[0][_currVertexIndex].b= b;
	_colors[0][_currVertexIndex].a = a;
}

void gxgl_glTexCoord2f( GLfloat s, GLfloat t ){
	int currentTexcoordArray = getActiveTexcoordArray();
	
	if (currentTexcoordArray > 0) { 

		_texCoords[currentTexcoordArray ][_currVertexIndex].x = s;
		_texCoords[currentTexcoordArray ][_currVertexIndex].y = t;
		_texCoords[currentTexcoordArray ][_currVertexIndex].z = 1.0f;
	}
};



/*
 * ==================================================
 * VERTEX ASSOCIATED GL FUNCTIONS
 * ==================================================
 */

void gxgl_glEnableClientState(GLenum  cap) {
	enableGLVertexState(cap);
}

void gxgl_glBegin(GLenum glPrimitive) {
	int i;
	glVtxAttrState_t *activeVtxAttrState = getGLVertexState();

	// set the primitive to draw with and current vertex index (incremented when specifying a vertex)
	_currGLPrimitive = glPrimitive;
	_currVertexIndex = 0;

	// bind enabled buffers
	if (activeVtxAttrState->vertexPointerEnabled) {
		_vertexPointer.size = 3;
		_vertexPointer.type = GLfloat;
		_vertexPointer.stride = sizeof(Vector);
		_vertexPointer.pointer = _points;
	}
	
	if (activeVtxAttrState->normalPointerEnabled) {
		_normalPointer.size = 3;
		_normalPointer.type = GLfloat;
		_normalPointer.stride = sizeof(Vector);
		_normalPointer.pointer = _normals;
	}
	
	for (i=0; i<MAX_TEXTURE_UNIT; i++) {
		if (activeVtxAttrState->texCoordPointerEnabled[i]) {
			glpointer_t *currTexCoordPointer = &_texCoordPointer[i];

			currTexCoordPointer->size = 3;
			currTexCoordPointer->type = GLfloat;
			currTexCoordPointer->stride = sizeof(Vector);
			currTexCoordPointer->pointer = _texCoords[i];
		}
	}
	
	if (activeVtxAttrState->colorPointerEnabled) {
		_colorPointer.size = 4;
		_colorPointer.type = GLfloat;
		_colorPointer.stride = sizeof(GXColor);
		_colorPointer.pointer = _colors;
	}


}

void gxgl_glDrawElements(GLenum  mode,  GLsizei  count,  GLenum  type,  const GLvoid *  indices) {
	// GL_TRIANGLES,linstant->numtris*3,GL_UNSIGNED_INT,&linstant->indecies[0]
	unsigned char primitive = gxPrimitive(mode);
	glVtxAttrState_t *activeVtxAttrState = getGLVertexState();
	
	// do we have a dirty vertex attribute set compared to last draw?
	if (memcmp(&_glPrevVtxAttrState, activeVtxAttrState, sizeof(glVtxAttrState_t))) {
		activeVtxAttrState->isDirty = true;
	}
	// need to set previous...
	_glPrevVtxAttrState = *activeVtxAttrState;

	
	if (type == GL_UNSIGNED_INT) {
	
		gxDrawElements(primitive, (int) count, (int *) indices, 
									&_vertexPointer,
									&_normalPointer,
									&_texCoordPointer[0],
									&_colorPointer);
	}

	
}


