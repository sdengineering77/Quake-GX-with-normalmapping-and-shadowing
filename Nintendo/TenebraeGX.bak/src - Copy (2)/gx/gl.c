#include "gl.c"

void glGetIntegerv_GX_ (int val, int *pret) {
	switch(val) {
		case GL_MAX_ACTIVE_TEXTURES_ARB:
			*pret = 8;
			break;
		default:
			*pret = 0;
			break;
	}
} 