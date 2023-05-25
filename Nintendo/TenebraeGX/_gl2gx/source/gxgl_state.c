
#include "gxgl.h"



static GLenum 				_current_error = -1;

static int 							_active_texcoord_array = 0;
static bool						_active_texcoord_array_available = true;


// 0 ... n
static int 							_active_texture_unit = 0;
static bool						_active_texture_unit_available = true;

static glVtxAttrState_t 		_active_gl_vtx_attr_model;


/* 
 * ============================================
 * GLOBAL STATE
 * ============================================
 */
// set current error
void setCurrentError(GLenum error) {
	_current_error = error;
}

/* 
 * ============================================
 * VERTEX STATE
 * ============================================
 */

void enableGLVertexState(GLenum  cap) {
	// GL_VERTEX_ARRAY, GL_NORMAL_ARRAY, GL_TEXTURE_COORD_ARRAY
	int currentTexcoordArray;
	switch (cap) {
		case GL_VERTEX_ARRAY:
			_active_gl_vtx_attr_model.vertexPointerEnabled = true;
			break;
		case GL_NORMAL_ARRAY:
			_active_gl_vtx_attr_model.normalPointerEnabled = true;
			break;
		case GL_TEXTURE_COORD_ARRAY:
			// For OpenGL versions 1.3 and greater, or when ARB_multitexture is supported, enabling and disabling
            // GL_TEXTURE_COORD_ARRAY affects the *active client texture unit*.
            // The active client texture unit is controlled with glClientActiveTexture.
			currentTexcoordArray = getActiveTexcoordArray();
			if (currentTexcoordArray != -1) {
				_active_gl_vtx_attr_model.texCoordPointerEnabled[currentTexcoordArray] = true;
			}
			break;
		caseGL_COLOR_ARRAY:
			_active_gl_vtx_attr_model.colorPointerEnabled = true;
			break;
		default:
			printd("Unknown client state %d", cap);
			break;
	}
}

glVtxAttrState_t *getGLVertexState() {
	return &_active_gl_vtx_attr_model;
}

/* 
 * ============================================
 * TEXTURE STATE
 * ============================================
 */

int getActiveTexcoordArray() {
	if (_active_texcoord_array_available) {
		return _active_texcoord_array;
	}
	return -1;
}

bool setActiveTexcoordArray(int array) {
	_active_texcoord_array = array;
	if (array < MAX_TEXTURE_UNIT) {
		_active_texcoord_array_available = true;
	}  else {
		_active_texcoord_array_available = false;
	}
	return _active_texcoord_array_available;
}


// set active texture unit
bool setActiveTextureUnit(int unit) {
	_active_texture_unit = unit; //texture - GL_TEXTURE0_ARB;
	if (unit < MAX_TEXTURE_UNIT) {
		_active_texture_unit_available = true;
	}  else {
		_active_texture_unit_available = false;
	}
	return _active_texture_unit_available;
}


// return 0-7, or -1 if GL is working on an non existing texture
int getActiveTextureUnit() {
	if (_active_texture_unit_available) {
		return _active_texture_unit;
	}
	return -1;
}




