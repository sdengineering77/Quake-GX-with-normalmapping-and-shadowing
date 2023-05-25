/*
===========================================================================

Doom 3 GPL Source Code
Copyright (C) 1999-2011 id Software LLC, a ZeniMax Media company. 

This file is part of the Doom 3 GPL Source Code (?Doom 3 Source Code?).  

Doom 3 Source Code is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Doom 3 Source Code is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Doom 3 Source Code.  If not, see <http://www.gnu.org/licenses/>.

In addition, the Doom 3 Source Code is also subject to certain additional terms. You should have received a copy of these additional terms immediately following the terms and conditions of the GNU General Public License which accompanied the Doom 3 Source Code.  If not, please request a copy in writing from id Software at the address below.

If you have questions concerning this license or the applicable additional terms, you may contact in writing id Software LLC, c/o ZeniMax Media Inc., Suite 120, Rockville, Maryland 20850 USA.

===========================================================================
*/
#include "../../idlib/precompiled.h"
#include "../../renderer/tr_local.h"
#include "local.h"

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

extern "C" {
#	include "libXNVCtrl/NVCtrlLib.h"
}

idCVar sys_videoRam( "sys_videoRam", "0", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_INTEGER, "Texture memory on the video card (in megabytes) - 0: autodetect", 0, 512 );

Display *dpy = NULL;
static int scrnum = 0;

Window win = 0;

bool dga_found = false;

static GLXContext ctx = NULL;

static bool vidmode_ext = false;
static int vidmode_MajorVersion = 0, vidmode_MinorVersion = 0;	// major and minor of XF86VidExtensions

static XF86VidModeModeInfo **vidmodes;
static int num_vidmodes;
static bool vidmode_active = false;

// backup gamma ramp
static int save_rampsize = 0;
static unsigned short *save_red, *save_green, *save_blue;

void GLimp_WakeBackEnd(void *a) {
    Sys_Printf("void GLimp_WakeBackEnd(void *a)\r\n");
}


#ifdef ID_GL_HARDLINK
void GLimp_EnableLogging(bool log) {
    Sys_Printf("void GLimp_EnableLogging(bool log)\r\n");
}

#endif

void GLimp_FrontEndSleep() {
    Sys_Printf("void GLimp_FrontEndSleep()\r\n");
}


void *GLimp_BackEndSleep() {
    Sys_Printf("void *GLimp_BackEndSleep()\r\n");
    return NULL;
}


bool GLimp_SpawnRenderThread(void (*a) ()) {
	common->DPrintf("GLimp_SpawnRenderThread stub\n");
	return false;
}

void GLimp_ActivateContext() {
    Sys_Printf("void GLimp_ActivateContext()\r\n");
}


void GLimp_DeactivateContext() {
    Sys_Printf("void GLimp_DeactivateContext()\r\n");
}


/*
=================
GLimp_SaveGamma

save and restore the original gamma of the system
=================
*/
void GLimp_SaveGamma() {
    Sys_Printf("void GLimp_SaveGamma()\r\n");
}


/*
=================
GLimp_RestoreGamma

save and restore the original gamma of the system
=================
*/
void GLimp_RestoreGamma() {
    Sys_Printf("void GLimp_RestoreGamma()\r\n");
}


/*
=================
GLimp_SetGamma

gamma ramp is generated by the renderer from r_gamma and r_brightness for 256 elements
the size of the gamma ramp can not be changed on X (I need to confirm this)
=================
*/
void GLimp_SetGamma(unsigned short red[256], unsigned short green[256], unsigned short blue[256]) {
    Sys_Printf("void GLimp_SetGamma(unsigned short red[256], unsigned short green[256], unsigned short blue[256])\r\n");
}


void GLimp_Shutdown() {
    Sys_Printf("void GLimp_Shutdown()\r\n");
}


void GLimp_SwapBuffers() {
    Sys_Printf("void GLimp_SwapBuffers()\r\n");
}


/*
GLX_TestDGA
Check for DGA	- update in_dgamouse if needed
*/
void GLX_TestDGA() {
    Sys_Printf("void GLX_TestDGA()\r\n");
}


/*
** XErrorHandler
**   the default X error handler exits the application
**   I found out that on some hosts some operations would raise X errors (GLXUnsupportedPrivateRequest)
**   but those don't seem to be fatal .. so the default would be to just ignore them
**   our implementation mimics the default handler behaviour (not completely cause I'm lazy)
*/
int idXErrorHandler(Display * l_dpy, XErrorEvent * ev) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idXErrorHandler(Display * l_dpy, XErrorEvent * ev)\r\n");
    return retVal;
}


bool GLimp_OpenDisplay( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GLimp_OpenDisplay( void )\r\n");
    return retVal;
}


/*
===============
GLX_Init
===============
*/
int GLX_Init(glimpParms_t a) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int GLX_Init(glimpParms_t a)\r\n");
    return retVal;
}


/*
===================
GLimp_Init

This is the platform specific OpenGL initialization function.  It
is responsible for loading OpenGL, initializing it,
creating a window of the appropriate size, doing
fullscreen manipulations, etc.  Its overall responsibility is
to make sure that a functional OpenGL subsystem is operating
when it returns to the ref.

If there is any failure, the renderer will revert back to safe
parameters and try again.
===================
*/
bool GLimp_Init( glimpParms_t a ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GLimp_Init( glimpParms_t a )\r\n");
    return retVal;
}


/*
===================
GLimp_SetScreenParms
===================
*/
bool GLimp_SetScreenParms( glimpParms_t parms ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GLimp_SetScreenParms( glimpParms_t parms )\r\n");
    return retVal;
}


/*
================
Sys_GetVideoRam
returns in megabytes
open your own display connection for the query and close it
using the one shared with GLimp_Init is not stable
================
*/
int Sys_GetVideoRam( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Sys_GetVideoRam( void )\r\n");
    return retVal;
}
