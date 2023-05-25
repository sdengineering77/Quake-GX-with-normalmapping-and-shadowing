#include "quakedef.h"

#include <gccore.h>
#include <wiiuse/wpad.h>
#include <fat.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <fnmatch.h>
#include <errno.h>

#include <GL/gl.h>
#include <GL/glut.h>



#define UXDATA_GRANULARITY 10

#define    BASEWIDTH    (640)
#define    BASEHEIGHT   (480)

#define WARP_WIDTH              320
#define WARP_HEIGHT             200

// locals
static int scr_width, scr_height;


// globals
qboolean			isDedicated = false;

// prototypes
void GL_Init (void);

// types
typedef struct {
	int pathlen;
	size_t count;
	size_t lsize;
	DIR *dir;
	struct dirent **list;
} uxdirdata_t;

void uxdata_free (uxdirdata_t *ud)
{
	closedir (ud->dir);
//	Z_Free (ud->list);
}

/* DRS tenebrae specific(???) disk i/o functions */

int direntp_compare (struct dirent **p1, struct dirent **p2)
{
	return strncmp ((*p1)->d_name, (*p2)->d_name, sizeof ((*p1)->d_name));
}

dirdata_t *Sys_Findfirst (char *dirname, char *filter, dirdata_t *dirdata)
{
	uxdirdata_t *uxdata;
	DIR *dir;
	struct dirent *entry;
	struct dirent **list;
	int pathlen;	

	if (dirdata && filter){
		pathlen = strlen (dirname);
		if (pathlen >= MAX_OSPATH-1)
			return NULL;
		strncpy (dirdata->entry, dirname, sizeof(dirdata->entry));
		dir = opendir (dirdata->entry);
		if (dir == NULL) {
			return NULL;
		}
		uxdata = NULL;//Z_Malloc (sizeof(uxdirdata_t));
		uxdata->count = 0;
		uxdata->pathlen = pathlen;
		uxdata->lsize = 10;
		uxdata->list = NULL;//Z_Malloc (sizeof(struct dirent *) * (uxdata->lsize));
		
		while ((entry = readdir (dir))){
			int code;

			// realloc entry list
			if (uxdata->lsize == uxdata->count) {
				list = NULL;//Z_Malloc (sizeof(struct dirent *) * (uxdata->lsize += UXDATA_GRANULARITY));
				memcpy (list, uxdata->list, uxdata->count);
				//Z_Free (uxdata->list);
				uxdata->list = list;
			}
			// check name matching filter
			code = fnmatch (filter, entry->d_name, 0);
			switch (code){
			case 0: // match
				uxdata->list[uxdata->count] = entry;
				uxdata->count++;
				break;
			case FNM_NOMATCH:
				break;
			default:
				break;
// DRS TODO:
//				Sys_Error ("Sys_Glob_select : fnmatch call (%d)\n",errno);
			}
		}
		if (uxdata->count) {
			uxdata->lsize = uxdata->count;
			uxdata->count = 0;
			// sort the entry list
			qsort(uxdata->list, uxdata->lsize, sizeof(struct dirent *),direntp_compare);
			if (dirname[pathlen-1] != '/') {
				dirdata->entry[pathlen]='/';
				uxdata->pathlen++;
				dirdata->entry[uxdata->pathlen]=0;
			}
			strncpy (dirdata->entry+uxdata->pathlen, uxdata->list[0]->d_name, sizeof(dirdata->entry)-uxdata->pathlen);
			uxdata->dir = dir;
			dirdata->internal = uxdata;
			return dirdata;
		}
		else {
			uxdata_free (uxdata);
		}
	}
	return NULL;
}
	
dirdata_t *Sys_Findnext (dirdata_t *dirdata)
{
	uxdirdata_t *uxdata;
	if (dirdata){
		uxdata=dirdata->internal;
		if (uxdata) {
			uxdata->count++;
			// next entry ?
			if (uxdata->count<uxdata->lsize){
				strncpy (dirdata->entry+uxdata->pathlen, uxdata->list[0]->d_name, sizeof(dirdata->entry)-uxdata->pathlen);
				return dirdata;
			}
			// no -> close (just in case Findclose isn't called) 
			uxdata_free (dirdata->internal);
			dirdata->internal=NULL;
		}       
	}
	return NULL;
}

void Sys_Findclose (dirdata_t *dirdata)
{
	uxdirdata_t *uxdata;
	if (dirdata){
		uxdata=dirdata->internal;
		if (uxdata){
			uxdata_free (uxdata);
			dirdata->internal=NULL;
		}    
	}
}


/* time functions */

void Sys_Strtime(char *buf)
{
  struct tm *tm_;
  static time_t t_;
  
  time(&t_);
  tm_=gmtime(&t_);
  
  sprintf(buf,"%02d:%02d:%02d",tm_->tm_hour,tm_->tm_min,tm_->tm_sec);
  
}


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

    // Initialize display 
	// DRS TODO: select RGBA (glut.h)
	//Set Opengl to use rbg and doublebuffering
	glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH);

    glutCreateWindow("");
	glutInitWindowSize(vid.width, vid.height);
	
    scr_width = vid.width; // DRS TODO: what's this for anywayss
    scr_height = vid.height; // DRS TODO: what's this for anywayss

    vid.conheight = vid.height;
    vid.conwidth = vid.width;

    
    vid.aspect = ((float)vid.height / (float)vid.width) * (320.0 / 240.0);
    vid.numpages = 2;

    // Initialize OpenGL
    //GL_Init ();
    
    sprintf (gldir, "%s/glquake", com_gamedir);
    //Con_SafePrintf ("Create GL dir %s\n", gldir);
    //Sys_mkdir (gldir);
 
    //VID_SetPalette(palette);

    //Con_SafePrintf ("Video mode %dx%d initialized.\n", vid.width, vid.height);
    
    vid.recalc_refdef = 1;				// force a surface cache flush    
    
    // DRS proper place? perhaps look at in_... initialize WPAD
	WPAD_Init();

}

void    VID_Shutdown (void) {
    // DRS do nothing for now
}

void GL_BeginRendering (int *x, int *y, int *width, int *height) {
	extern cvar_t gl_clear;

	*x = *y = 0;
	*width = scr_width;
	*height = scr_height;

}


void GL_EndRendering (void) {
	glFlush();
	glutSwapBuffers();
}


/*
 * ===================================================
 * MAIN
 * ===================================================
 */

void main (int argc, char **argv) {
    VID_COMPILEME();


	static quakeparms_t    parms;
	parms.memsize = 8*1024*1024;
	parms.membase = malloc (parms.memsize);
	parms.basedir = ".";

	if (!fatInitDefault()) {
		printf("fatInitDefault failure\n");
	}

	COM_InitArgv (argc, argv);

	while (1) {
	printf ("Start\n");
	}

/*	parms.argc = com_argc;
	parms.argv = com_argv;

	Host_Init (&parms);
	printf ("main loop\n");
	while (1)
	{
		Host_Frame (0.1);
	}*/
//	return 0;
}


