
#include "gxgl.h"


/* interface */
typedef struct procinfo_s {
	char *name;
	char *funcName;
	void *funcPtr;
} procinfo_t;

#define FILL_PROCINFO(name) 		("name"), (&name)

static const procinfo_t procs[] = 
	{
		{"glClientActiveTextureARB", FILL_PROCINFO(gxgl_glClientActiveTextureARB)},
		{"glActiveTextureARB", FILL_PROCINFO(gxgl_glActiveTextureARB)},
		{"glStubProc", FILL_PROCINFO(gxgl_stubProc)}
	};


/* 
 * ============================================
 * READ PROC FUNC ADDRESS
 * ============================================
 */
void *gxgl_GetProcAddress (char *name) {
	printd("start gxgl_GetProcAddress %s\n", name);
	int i;
	int size = sizeof(procs);
	for (i=0; i<size; i++) {
		const procinfo_t *p = &procs[i];
		char *currName =  p->name;
		printd("compare to: %s\n", currName);

		if (strcmp(currName, name) == 0) {
			printd("gxgl_GetProcAddress  return %s %p\n", p->funcName, p->funcPtr);
			return (void *) p->funcPtr;
		}
	}
	
	
	printd("end gxgl_GetProcAddress\n");
	
	return (void *) gxgl_stubProc;
}


/* 
 * ============================================
 * PROC FUNCS
 * ============================================
 */
/* proc methods */

void gxgl_stubProc(void) {
	// do nothing at all:)
}

/* Description
//			glClientActiveTextureARB selects the *vertex array client state parameters( to be modified by
//			glTexCoordPointer, and enabled or disabled with glEnableClientState or glDisableClientState,
//			respectively, when called with a parameter of GL_TEXTURE_COORD_ARRAY.
//		Notes
//			glClientActiveTextureARB is supported only if GL_ARB_multitexture is included
//			in the string returned by glGetString when called with the argument
//			GL_EXTENSIONS.
		
//			glClientActiveTextureARB sets GL_CLIENT_ACTIVE_TEXTURE_ARB to the active
//			texture unit.
*/		
void gxgl_glClientActiveTextureARB(GLenum texture) {
	printd("start gxgl_glClientActiveTextureARB\n");

	if (!setActiveTexcoordArray(texture - GL_TEXTURE0_ARB)) {
		setCurrentError(GL_INVALID_ENUM);
	}
	
	printd("end gxgl_glClientActiveTextureARB\n");
}


/* Description
			glActiveTextureARB selects which texture unit subsequent texture state calls will affect. The
			number of texture units an implementation supports is implementation dependent, but must be at least 2.
		
			Vertex arrays are client-side GL resources, which are selected by the glClientActiveTextureARB routine.
		Notes
			glActiveTextureARB is only supported if GL_ARB_multitexture is included in
			the string returned by glGetString when called with the argument
			GL_EXTENSIONS.
		Errors
			GL_INVALID_ENUM is generated if texture is not one of
			GL_TEXTUREi_ARB, where 
					0
					=
					i
					<
				 GL_MAX_TEXTURE_UNITS_ARB.
*/		
void gxgl_glActiveTextureARB(GLenum texture) {
	printd("start gxgl_glActiveTextureARB\n");

	if (!setActiveTextureUnit(texture - GL_TEXTURE0_ARB)) {
		setCurrentError(GL_INVALID_ENUM);
	}
	
	printd("end gxgl_glActiveTextureARB\n");

}
