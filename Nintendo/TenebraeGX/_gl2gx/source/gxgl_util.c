
#include "gxgl.h"

unsigned char gxPrimitive(GLenum primitive) {
	unsigned char gxType;
	switch(primitive)
	{
        case GL_TRIANGLE_STRIP: gxType = GX_TRIANGLESTRIP; break;        
		case GL_TRIANGLE_FAN: gxType = GX_TRIANGLEFAN; break;
		case GL_QUADS: gxType = GX_QUADS; break;
		case GL_TRIANGLES: gxType = GX_TRIANGLES; break;
		case GL_LINES: gxType = GL_LINES; break;
		default: 
			printd("unknown primitive type\n", primitive); 
			gxType = -1;
			break;
	};
	return gxType;
}


size_t getElemSize(GLenum type) {
	switch(type) {
		default:
		case GL_UNSIGNED_BYTE:
		case GL_BYTE: return sizeof(GLbyte);
		case GL_UNSIGNED_SHORT:
		case GL_SHORT: return sizeof(GLshort);
		case GL_UNSIGNED_INT:
		case GL_INT: return sizeof(GLint);
		case GL_FLOAT: return sizeof(GLfloat);
		case GL_DOUBLE: return sizeof(GLdouble);
	}
}

