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
/*
** WIN_GLIMP.C
**
** This file contains ALL Win32 specific stuff having to do with the
** OpenGL refresh.  When a port is being made the following functions
** must be implemented by the port:
**
** GLimp_SwapBuffers
** GLimp_Init
** GLimp_Shutdown
** GLimp_SetGamma
**
** Note that the GLW_xxx functions are Windows specific GL-subsystem
** related functions that are relevant ONLY to win_glimp.c
*/
#include "../../idlib/precompiled.h"
#pragma hdrstop

#include "win_local.h"
#include "rc/AFEditor_resource.h"
#include "rc/doom_resource.h"
#include "../../renderer/tr_local.h"

static void		GLW_InitExtensions( void );


// WGL_ARB_extensions_string
PFNWGLGETEXTENSIONSSTRINGARBPROC wglGetExtensionsStringARB;

// WGL_EXT_swap_interval
PFNWGLSWAPINTERVALEXTPROC wglSwapIntervalEXT;

// WGL_ARB_pixel_format
PFNWGLGETPIXELFORMATATTRIBIVARBPROC wglGetPixelFormatAttribivARB;
PFNWGLGETPIXELFORMATATTRIBFVARBPROC wglGetPixelFormatAttribfvARB;
PFNWGLCHOOSEPIXELFORMATARBPROC wglChoosePixelFormatARB;

// WGL_ARB_pbuffer
PFNWGLCREATEPBUFFERARBPROC	wglCreatePbufferARB;
PFNWGLGETPBUFFERDCARBPROC	wglGetPbufferDCARB;
PFNWGLRELEASEPBUFFERDCARBPROC	wglReleasePbufferDCARB;
PFNWGLDESTROYPBUFFERARBPROC	wglDestroyPbufferARB;
PFNWGLQUERYPBUFFERARBPROC	wglQueryPbufferARB;

// WGL_ARB_render_texture 
PFNWGLBINDTEXIMAGEARBPROC		wglBindTexImageARB;
PFNWGLRELEASETEXIMAGEARBPROC	wglReleaseTexImageARB;
PFNWGLSETPBUFFERATTRIBARBPROC	wglSetPbufferAttribARB;



/* ARB_pixel_format */
#define WGL_NUMBER_PIXEL_FORMATS_ARB       0x2000
#define WGL_DRAW_TO_WINDOW_ARB             0x2001
#define WGL_DRAW_TO_BITMAP_ARB             0x2002
#define WGL_ACCELERATION_ARB               0x2003
#define WGL_NEED_PALETTE_ARB               0x2004
#define WGL_NEED_SYSTEM_PALETTE_ARB        0x2005
#define WGL_SWAP_LAYER_BUFFERS_ARB         0x2006
#define WGL_SWAP_METHOD_ARB                0x2007
#define WGL_NUMBER_OVERLAYS_ARB            0x2008
#define WGL_NUMBER_UNDERLAYS_ARB           0x2009
#define WGL_TRANSPARENT_ARB                0x200A
#define WGL_SHARE_DEPTH_ARB                0x200C
#define WGL_SHARE_STENCIL_ARB              0x200D
#define WGL_SHARE_ACCUM_ARB                0x200E
#define WGL_SUPPORT_GDI_ARB                0x200F
#define WGL_SUPPORT_OPENGL_ARB             0x2010
#define WGL_DOUBLE_BUFFER_ARB              0x2011
#define WGL_STEREO_ARB                     0x2012
#define WGL_PIXEL_TYPE_ARB                 0x2013
#define WGL_COLOR_BITS_ARB                 0x2014
#define WGL_RED_BITS_ARB                   0x2015
#define WGL_RED_SHIFT_ARB                  0x2016
#define WGL_GREEN_BITS_ARB                 0x2017
#define WGL_GREEN_SHIFT_ARB                0x2018
#define WGL_BLUE_BITS_ARB                  0x2019
#define WGL_BLUE_SHIFT_ARB                 0x201A
#define WGL_ALPHA_BITS_ARB                 0x201B
#define WGL_ALPHA_SHIFT_ARB                0x201C
#define WGL_ACCUM_BITS_ARB                 0x201D
#define WGL_ACCUM_RED_BITS_ARB             0x201E
#define WGL_ACCUM_GREEN_BITS_ARB           0x201F
#define WGL_ACCUM_BLUE_BITS_ARB            0x2020
#define WGL_ACCUM_ALPHA_BITS_ARB           0x2021
#define WGL_DEPTH_BITS_ARB                 0x2022
#define WGL_STENCIL_BITS_ARB               0x2023
#define WGL_AUX_BUFFERS_ARB                0x2024
#define WGL_NO_ACCELERATION_ARB            0x2025
#define WGL_GENERIC_ACCELERATION_ARB       0x2026
#define WGL_FULL_ACCELERATION_ARB          0x2027
#define WGL_SWAP_EXCHANGE_ARB              0x2028
#define WGL_SWAP_COPY_ARB                  0x2029
#define WGL_SWAP_UNDEFINED_ARB             0x202A
#define WGL_TYPE_RGBA_ARB                  0x202B
#define WGL_TYPE_COLORINDEX_ARB            0x202C
#define WGL_TRANSPARENT_RED_VALUE_ARB      0x2037
#define WGL_TRANSPARENT_GREEN_VALUE_ARB    0x2038
#define WGL_TRANSPARENT_BLUE_VALUE_ARB     0x2039
#define WGL_TRANSPARENT_ALPHA_VALUE_ARB    0x203A
#define WGL_TRANSPARENT_INDEX_VALUE_ARB    0x203B

/* ARB_multisample */
#define WGL_SAMPLE_BUFFERS_ARB             0x2041
#define WGL_SAMPLES_ARB                    0x2042



//
// function declaration
//
bool QGL_Init( const char *dllname );
void     QGL_Shutdown( void );



/*
========================
GLimp_GetOldGammaRamp
========================
*/
static void GLimp_SaveGamma( void ) {
    Sys_Printf("void GLimp_SaveGamma( void )\r\n");
}


/*
========================
GLimp_RestoreGamma
========================
*/
static void GLimp_RestoreGamma( void ) {
    Sys_Printf("void GLimp_RestoreGamma( void )\r\n");
}



/*
========================
GLimp_SetGamma

The renderer calls this when the user adjusts r_gamma or r_brightness
========================
*/
void GLimp_SetGamma( unsigned short red[256], unsigned short green[256], unsigned short blue[256] ) {
    Sys_Printf("void GLimp_SetGamma( unsigned short red[256], unsigned short green[256], unsigned short blue[256] )\r\n");
}


/*
=============================================================================

WglExtension Grabbing

This is gross -- creating a window just to get a context to get the wgl extensions

=============================================================================
*/

/*
====================
FakeWndProc

Only used to get wglExtensions
====================
*/
LONG WINAPI FakeWndProc (
    HWND    hWnd,
    UINT    uMsg,
    WPARAM  wParam,
    LPARAM  lParam) {
    WINAPI retVal;
    memset(&retVal, 0, sizeof(WINAPI));
    Sys_Printf("WINAPI FakeWndProc (    HWND    hWnd, UINT    uMsg, WPARAM  wParam, LPARAM  lParam)\r\n");
    return retVal;
}



/*
==================
GLW_GetWGLExtensionsWithFakeWindow
==================
*/
void GLW_CheckWGLExtensions( HDC hDC ) {
    Sys_Printf("void GLW_CheckWGLExtensions( HDC hDC )\r\n");
}


/*
==================
GLW_GetWGLExtensionsWithFakeWindow
==================
*/
static void GLW_GetWGLExtensionsWithFakeWindow( void ) {
    Sys_Printf("void GLW_GetWGLExtensionsWithFakeWindow( void )\r\n");
}


//=============================================================================

/*
====================
GLW_WM_CREATE
====================
*/
void GLW_WM_CREATE( HWND hWnd ) {
    Sys_Printf("void GLW_WM_CREATE( HWND hWnd )\r\n");
}




/*
====================
GLW_InitDriver

Set the pixelformat for the window before it is
shown, and create the rendering context
====================
*/
static bool GLW_InitDriver( glimpParms_t parms ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GLW_InitDriver( glimpParms_t parms )\r\n");
    return retVal;
}


/*
====================
GLW_CreateWindowClasses
====================
*/
static void GLW_CreateWindowClasses( void ) {
    Sys_Printf("void GLW_CreateWindowClasses( void )\r\n");
}


/*
=======================
GLW_CreateWindow

Responsible for creating the Win32 window.
If cdsFullscreen is true, it won't have a border
=======================
*/
static bool GLW_CreateWindow( glimpParms_t parms ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GLW_CreateWindow( glimpParms_t parms )\r\n");
    return retVal;
}




static void PrintCDSError( int value ) {
    Sys_Printf("void PrintCDSError( int value )\r\n");
}



/*
===================
GLW_SetFullScreen
===================
*/
static bool GLW_SetFullScreen( glimpParms_t parms ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GLW_SetFullScreen( glimpParms_t parms )\r\n");
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
bool GLimp_Init( glimpParms_t parms ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GLimp_Init( glimpParms_t parms )\r\n");
    return retVal;
}



/*
===================
GLimp_SetScreenParms

Sets up the screen based on passed parms.. 
===================
*/
bool GLimp_SetScreenParms( glimpParms_t parms ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GLimp_SetScreenParms( glimpParms_t parms )\r\n");
    return retVal;
}


/*
===================
GLimp_Shutdown

This routine does all OS specific shutdown procedures for the OpenGL
subsystem.
===================
*/
void GLimp_Shutdown( void ) {
    Sys_Printf("void GLimp_Shutdown( void )\r\n");
}



/*
=====================
GLimp_SwapBuffers
=====================
*/
void GLimp_SwapBuffers( void ) {
    Sys_Printf("void GLimp_SwapBuffers( void )\r\n");
}


/*
===========================================================

SMP acceleration

===========================================================
*/

//#define	REALLOC_DC

/*
===================
GLimp_ActivateContext

===================
*/
void GLimp_ActivateContext( void ) {
    Sys_Printf("void GLimp_ActivateContext( void )\r\n");
}


/*
===================
GLimp_DeactivateContext

===================
*/
void GLimp_DeactivateContext( void ) {
    Sys_Printf("void GLimp_DeactivateContext( void )\r\n");
}


/*
===================
GLimp_RenderThreadWrapper

===================
*/
static void GLimp_RenderThreadWrapper( void ) {
    Sys_Printf("void GLimp_RenderThreadWrapper( void )\r\n");
}


/*
=======================
GLimp_SpawnRenderThread

Returns false if the system only has a single processor
=======================
*/
bool GLimp_SpawnRenderThread( void (*function)( void ) ) {
	SYSTEM_INFO info;

	// check number of processors
	GetSystemInfo( &info );
	if ( info.dwNumberOfProcessors < 2 ) {
		return false;
	}
	
	// create the IPC elements
	win32.renderCommandsEvent = CreateEvent( NULL, TRUE, FALSE, NULL );
	win32.renderCompletedEvent = CreateEvent( NULL, TRUE, FALSE, NULL );
	win32.renderActiveEvent = CreateEvent( NULL, TRUE, FALSE, NULL );

	win32.glimpRenderThread = function;

	win32.renderThreadHandle = CreateThread(
	   NULL,	// LPSECURITY_ATTRIBUTES lpsa,
	   0,		// DWORD cbStack,
	   (LPTHREAD_START_ROUTINE)GLimp_RenderThreadWrapper,	// LPTHREAD_START_ROUTINE lpStartAddr,
	   0,			// LPVOID lpvThreadParm,
	   0,			//   DWORD fdwCreate,
	   &win32.renderThreadId );

	if ( !win32.renderThreadHandle ) {
		common->Error( "GLimp_SpawnRenderThread: failed" );
	}

	SetThreadPriority( win32.renderThreadHandle, THREAD_PRIORITY_ABOVE_NORMAL );
#if 0
	// make sure they always run on different processors
	SetThreadAffinityMask( GetCurrentThread, 1 );
	SetThreadAffinityMask( win32.renderThreadHandle, 2 );
#endif

	return true;
}


//#define	DEBUG_PRINTS

/*
===================
GLimp_BackEndSleep

===================
*/
void *GLimp_BackEndSleep( void ) {
    Sys_Printf("void *GLimp_BackEndSleep( void )\r\n");
    return NULL;
}


/*
===================
GLimp_FrontEndSleep

===================
*/
void GLimp_FrontEndSleep( void ) {
    Sys_Printf("void GLimp_FrontEndSleep( void )\r\n");
}


volatile bool	renderThreadActive;

/*
===================
GLimp_WakeBackEnd

===================
*/
void GLimp_WakeBackEnd( void *data ) {
    Sys_Printf("void GLimp_WakeBackEnd( void *data )\r\n");
}


//===================================================================

/*
===================
GLimp_ExtensionPointer

Returns a function pointer for an OpenGL extension entry point
===================
*/
GLExtension_t GLimp_ExtensionPointer( const char *name ) {
    GLExtension_t retVal;
    memset(&retVal, 0, sizeof(GLExtension_t));
    Sys_Printf("GLExtension_t GLimp_ExtensionPointer( const char *name )\r\n");
    return retVal;
}


