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
#include <Carbon/Carbon.h>
#include "PickMonitor.h"

//====================================================================================
//	CONSTANTS
//====================================================================================

#define kMaxMonitors		16

//====================================================================================
//	TYPES
//====================================================================================

typedef struct
{
	GDHandle	device;
	Rect		origRect;
	Rect		scaledRect;
	int			isMain;
}
Monitor;


//====================================================================================
//	GLOBALS
//====================================================================================
static GDHandle sSelectedDevice;
static int sNumMonitors;
static Monitor sMonitors[kMaxMonitors];

static RGBColor rgbBlack = { 0x0000, 0x0000, 0x0000 };
static RGBColor rgbWhite = { 0xffff, 0xffff, 0xffff };
static RGBColor rgbGray  = { 0x5252, 0x8A8A, 0xCCCC };	// this is the blue used in the Displays control panel

//====================================================================================
//	MACROS
//====================================================================================

#undef PtInRect
#undef OffsetRect
#undef InsetRect
#undef EraseRect
#undef MoveTo
#undef LineTo


//====================================================================================
//	IMPLEMENTATION
//====================================================================================

//-----------------------------------------------------------------------------
//	SetupUserPaneProcs
//-----------------------------------------------------------------------------
// 	Call this to initialize the specified user pane control before displaying 
//	the dialog window. Pass NULL for any user pane procs you don't need to install.

OSErr SetupUserPaneProcs(	ControlRef inUserPane,
							ControlUserPaneDrawProcPtr inDrawProc, 
							ControlUserPaneHitTestProcPtr inHitTestProc,
							ControlUserPaneTrackingProcPtr inTrackingProc)
{
    OSErr retVal;
    memset(&retVal, 0, sizeof(OSErr));
    Sys_Printf("OSErr SetupUserPaneProcs(ControlRef inUserPane,ControlUserPaneDrawProcPtr inDrawProc, ControlUserPaneHitTestProcPtr inHitTestProc,ControlUserPaneTrackingProcPtr inTrackingProc)\r\n");
    return retVal;
}



//-----------------------------------------------------------------------------
//	DisposeUserPaneProcs
//-----------------------------------------------------------------------------
// 	Call this to clean up when you're done with the specified user pane control.

OSErr DisposeUserPaneProcs(ControlRef inUserPane)
{
    OSErr retVal;
    memset(&retVal, 0, sizeof(OSErr));
    Sys_Printf("OSErr DisposeUserPaneProcs(ControlRef inUserPane)\r\n");
    return retVal;
}


#pragma mark -

//-----------------------------------------------------------------------------
//	drawProc
//-----------------------------------------------------------------------------
//	Custom drawProc for our UserPane control.

static pascal void drawProc(ControlRef inControl, SInt16 inPart)
{
    Sys_Printf("void drawProc(ControlRef inControl, SInt16 inPart)\r\n");
}



//-----------------------------------------------------------------------------
//	hitTestProc
//-----------------------------------------------------------------------------
//	Custom hitTestProc for our UserPane control.
//	This allows FindControlUnderMouse() to locate our control, which allows
//	ModalDialog() to call TrackControl() or HandleControlClick() for our control.

static pascal ControlPartCode hitTestProc(ControlRef inControl, Point inWhere)
{
    ControlPartCode retVal;
    memset(&retVal, 0, sizeof(ControlPartCode));
    Sys_Printf("ControlPartCode hitTestProc(ControlRef inControl, Point inWhere)\r\n");
    return retVal;
}



//-----------------------------------------------------------------------------
//	trackingProc
//-----------------------------------------------------------------------------
//	Custom trackingProc for our UserPane control.
//	This won't be called for our control unless the kControlHandlesTracking feature
//	bit is specified when the userPane is created.

static pascal ControlPartCode trackingProc (
					ControlRef inControl,
					Point inStartPt,
					ControlActionUPP inActionProc)
{
    ControlPartCode retVal;
    memset(&retVal, 0, sizeof(ControlPartCode));
    Sys_Printf("ControlPartCode trackingProc (ControlRef inControl,Point inStartPt,ControlActionUPP inActionProc)\r\n");
    return retVal;
}



#pragma mark -


//-----------------------------------------------------------------------------
//	SetupPickMonitorPane
//-----------------------------------------------------------------------------
//	Call this to initialize the user pane control that is the Pick Monitor
//	control. Pass the ControlRef of the user pane control and a display ID
//	for the monitor you want selected by default (pass 0 for the main monitor).
//	Call this function before displaying the dialog window.

OSErr SetupPickMonitorPane(ControlRef inPane, DisplayIDType inDefaultMonitor)
{
    OSErr retVal;
    memset(&retVal, 0, sizeof(OSErr));
    Sys_Printf("OSErr SetupPickMonitorPane(ControlRef inPane, DisplayIDType inDefaultMonitor)\r\n");
    return retVal;
}



//-----------------------------------------------------------------------------
//	TearDownPickMonitorPane
//-----------------------------------------------------------------------------
//	Disposes of everything associated with the Pick Monitor pane. You should
//	call this when disposing the dialog.

OSErr TearDownPickMonitorPane(ControlRef inPane)
{
    OSErr retVal;
    memset(&retVal, 0, sizeof(OSErr));
    Sys_Printf("OSErr TearDownPickMonitorPane(ControlRef inPane)\r\n");
    return retVal;
}


#pragma mark -

//------------------------------------------------------------------------------------
// ¥ PickMonitorHandler
//------------------------------------------------------------------------------------
// Our command handler for the PickMonitor dialog.

static pascal OSStatus PickMonitorHandler( EventHandlerCallRef inHandler, EventRef inEvent, void* inUserData )
{
    OSStatus retVal;
    memset(&retVal, 0, sizeof(OSStatus));
    Sys_Printf("OSStatus PickMonitorHandler( EventHandlerCallRef inHandler, EventRef inEvent, void* inUserData )\r\n");
    return retVal;
}



#pragma mark -

//-----------------------------------------------------------------------------
// CanUserPickMonitor
//-----------------------------------------------------------------------------
// Returns true if more than one monitor is available to choose from.

Boolean CanUserPickMonitor (void)
{
    Boolean retVal;
    memset(&retVal, 0, sizeof(Boolean));
    Sys_Printf("Boolean CanUserPickMonitor (void)\r\n");
    return retVal;
}


//-----------------------------------------------------------------------------
// PickMonitor
//-----------------------------------------------------------------------------
// Prompts for a monitor. Returns userCanceledErr if the user cancelled.

OSStatus PickMonitor (DisplayIDType *inOutDisplayID, WindowRef parentWindow)
{
    OSStatus retVal;
    memset(&retVal, 0, sizeof(OSStatus));
    Sys_Printf("OSStatus PickMonitor (DisplayIDType *inOutDisplayID, WindowRef parentWindow)\r\n");
    return retVal;
}


