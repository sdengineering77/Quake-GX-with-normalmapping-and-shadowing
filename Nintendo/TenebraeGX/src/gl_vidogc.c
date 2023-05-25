
#include <wiiuse/wpad.h>
#include <GL/gl.h>
#include <GL/glut.h>

#include "quakedef.h"


#define    BASEWIDTH    (640)
#define    BASEHEIGHT   (480)

#define WARP_WIDTH              320
#define WARP_HEIGHT             200

// locals
static int scr_width, scr_height;

// prototypes
void GL_Init (void);

/*
 * =============================================
 * GL_VIDOGC.C
 * =============================================
 */

void    VID_Init (unsigned char *palette) {
	char	gldir[MAX_OSPATH];

    // Set up display mode (width and height)
	vid.width = glutGet(GLUT_SCREEN_WIDTH);
    vid.height = glutGet(GLUT_SCREEN_HEIGHT);
    vid.maxwarpwidth = WARP_WIDTH;
    vid.maxwarpheight = WARP_HEIGHT;
    vid.colormap = host_colormap;
		
    scr_width = vid.width; // DRS TODO: what's this for anywayss
    scr_height = vid.height; // DRS TODO: what's this for anywayss

    vid.conheight = vid.height;
    vid.conwidth = vid.width;

	glutInit(NULL, NULL); // DRS texture heap is defined here
    glutCreateWindow("");
	glutInitWindowSize(vid.width, vid.height);
    
    vid.aspect = ((float)vid.height / (float)vid.width) * (320.0 / 240.0);
    vid.numpages = 2;

    // Initialize OpenGL
    GL_Init ();
	// initialize GX rendering
    GX_InitGXExt();
	
    sprintf (gldir, "%s/glquake", com_gamedir);
    Con_SafePrintf ("Create GL dir %s\n", gldir);
    //Sys_mkdir (gldir);
 
    VID_SetPalette(palette);

    Con_SafePrintf ("Video mode %dx%d initialized.\n", vid.width, vid.height);
    
    vid.recalc_refdef = 1;				// force a surface cache flush    
  
}

void VID_Setup(void) {
	// DRS TODO: select RGBA (glut.h)
	//Set Opengl to use rbg and doublebuffering
	// init GX video
	glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH);

}	

void    VID_Shutdown (void) {
    // DRS do nothing for now
}

void GL_BeginRendering (int *x, int *y, int *width, int *height) {
	// DRS: this sets glwidth and glheight...
	*x = *y = 0;
	*width = scr_width;
	*height = scr_height;

}


void GL_EndRendering (void) {
	glFlush();
	glutSwapBuffers();
}
