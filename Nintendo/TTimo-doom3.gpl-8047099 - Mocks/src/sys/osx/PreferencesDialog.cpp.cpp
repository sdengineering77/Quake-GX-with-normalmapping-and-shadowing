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
#include "PreferencesDialog.h"
#include "PickMonitor.h"
#include <list>
#include <set>

static idCVar r_stretched( "r_stretched", "0", CVAR_ARCHIVE | CVAR_BOOL, "Used stretched resolution" );

#define kPref_PrefsDialogAlways CFSTR("PrefsDialogAlways")
#define kPref_PrefsDialogOpenAL CFSTR("UseOpenAL")

#ifndef kAppCreator
#define kAppCreator			 	'DOM3'	// Creator type
#endif

const UInt32 kRes_Stretched 				= (1 << 0);		// set if the resolution is a stretched mode (kCGDisplayModeIsStretched)
const UInt32 kRes_Safe		 				= (1 << 1);		// еее╩(currently unused) set if the resolution is safe (kCGDisplayModeIsSafeForHardware)

// Data to be presented and edited in the prefs dialog
struct PrefInfo
{
	// prefs values
	GameDisplayMode					prefGameDisplayMode;
	CGDirectDisplayID				prefDisplayID;
	int								prefWidth;
	int								prefHeight;
	int								prefDepth;
	Fixed							prefFrequency;
	UInt32							prefResFlags;
	Boolean							prefAlways;
	Boolean							prefOpenAL;
	
	bool							okPressed;		// Set to true if the user pressed the OK button
	
	// The following are private data passed from GameDisplayPreferencesDialog() to it's command handler.
	WindowRef						window;
	ControlRef						fullscreenBtn;
	ControlRef						inAWindowBtn;
	ControlRef						resolutionPopup;
	ControlRef						refreshRatePopup;
	ControlRef						chooseMonitorsBtn;
	ControlRef						alwaysBtn;
	ControlRef						openALBtn;
	
	ValidModeCallbackProc			callback;		// To validate display modes
	
	bool							multiMonitor;	// Does user have multiple monitors
	std::list<Fixed>				refreshRates;	// List of refresh rates available for the selected monitor
	SInt32							freqMenuIndex;
};


#pragma mark -

bool R_GetModeInfo( int *width, int *height, int mode );

static int GetScreenIndexForDisplayID( CGDirectDisplayID inDisplayID ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int GetScreenIndexForDisplayID( CGDirectDisplayID inDisplayID )\r\n");
    return retVal;
}


static CGDirectDisplayID GetDisplayIDForScreenIndex( int inScreenIndex ) {
    CGDirectDisplayID retVal;
    memset(&retVal, 0, sizeof(CGDirectDisplayID));
    Sys_Printf("CGDirectDisplayID GetDisplayIDForScreenIndex( int inScreenIndex )\r\n");
    return retVal;
}


    

void Sys_DoPreferences( void ) {
    Sys_Printf("void Sys_DoPreferences( void )\r\n");
}



#pragma mark -

#define EnablePopupMenuItem(inControl,inMenuItem)		EnableMenuItem(GetControlPopupMenuRef(inControl),inMenuItem)
#define DisablePopupMenuItem(inControl,inMenuItem)		DisableMenuItem(GetControlPopupMenuRef(inControl),inMenuItem)
#define IsPopupMenuItemEnabled(inControl,inMenuItem)	IsMenuItemEnabled(GetControlPopupMenuRef(inControl),inMenuItem)

// Command IDs used in the NIB file
enum
{
	kCmdFullscreen				= 'Full',
	kCmdInAWindow				= 'Wind',
	kCmdResolution				= 'Reso',
	kCmdRefreshRate				= 'Refr',
	kCmdChooseMonitors			= 'Moni',
};

// Control IDs used in the NIB file
static const ControlID	kFullscreenBtn 		= { 'PREF', 1 };
static const ControlID	kInAWindowBtn 		= { 'PREF', 2 };
static const ControlID	kResolutionPopup 	= { 'PREF', 3 };
static const ControlID	kRefreshRatePopup 	= { 'PREF', 4 };
static const ControlID	kChooseMonitorsBtn 	= { 'PREF', 5 };
static const ControlID	kAlwaysBtn 			= { 'PREF', 6 };
static const ControlID	kOpenALBtn 			= { 'PREF', 7 };

struct Res
{
	int width;
	int height;
	int depth;
	UInt32 resFlags;
};

static bool operator< (const Res& a, const Res& b)
{
	if (a.width == b.width)
	{
		if (a.height == b.height)
		{
			if (a.resFlags == b.resFlags)
			{
				return (a.depth < b.depth);
			}
			return (a.resFlags < b.resFlags);
		}
		return (a.height < b.height);
	}
	return (a.width < b.width);
}

inline Res MakeRes(int width, int height, int depth)
{
    Res retVal;
    memset(&retVal, 0, sizeof(Res));
    Sys_Printf("Res MakeRes(int width, int height, int depth)\r\n");
    return retVal;
}


inline Res MakeRes(int width, int height, int depth, UInt32 resFlags)
{
    Res retVal;
    memset(&retVal, 0, sizeof(Res));
    Sys_Printf("Res MakeRes(int width, int height, int depth, UInt32 resFlags)\r\n");
    return retVal;
}


static bool ValidDisplayID (CGDirectDisplayID inDisplayID)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool ValidDisplayID (CGDirectDisplayID inDisplayID)\r\n");
    return retVal;
}


static int BuildResolutionList(CGDirectDisplayID inDisplayID, Res *ioList, ValidModeCallbackProc inCallback)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int BuildResolutionList(CGDirectDisplayID inDisplayID, Res *ioList, ValidModeCallbackProc inCallback)\r\n");
    return retVal;
}





static void BuildRefreshRates(CGDirectDisplayID inDisplayID, int inWidth, int inHeight, std::list<Fixed>* inList, ValidModeCallbackProc inCallback)
{
	CGDirectDisplayID displayID = inDisplayID ? inDisplayID : kCGDirectMainDisplay;
	
	CFArrayRef modeArrayRef = CGDisplayAvailableModes(displayID);
	CFIndex numModes = CFArrayGetCount(modeArrayRef);

	inList->clear();
	
	for (int i = 0; i < numModes; i++)
	{
		CFDictionaryRef modeRef = (CFDictionaryRef)CFArrayGetValueAtIndex(modeArrayRef, i);
		
		long value = 0;
		CFNumberRef valueRef;
		Boolean success;
		
		valueRef = (CFNumberRef)CFDictionaryGetValue(modeRef, kCGDisplayBitsPerPixel);
		success = CFNumberGetValue(valueRef, kCFNumberLongType, &value);
		int depth = value;
		if (depth != 32) continue;
		
		valueRef = (CFNumberRef)CFDictionaryGetValue(modeRef, kCGDisplayWidth);
		success = CFNumberGetValue(valueRef, kCFNumberLongType, &value);
		int width = value;
		
		valueRef = (CFNumberRef)CFDictionaryGetValue(modeRef, kCGDisplayHeight);
		success = CFNumberGetValue(valueRef, kCFNumberLongType, &value);
		int height = value;
		
		if (width == inWidth && height == inHeight)
		{
			double freqDouble;
			valueRef = (CFNumberRef)CFDictionaryGetValue(modeRef, kCGDisplayRefreshRate);
			success = CFNumberGetValue(valueRef, kCFNumberDoubleType, &freqDouble);
			Fixed	freq = FloatToFixed(freqDouble);
			if (inCallback)
				success = inCallback(displayID, width, height, depth, freq);
			else
				success = true;
			if (success)
				inList->push_back(freq);
		}
	}

	// Disallow 0, which we reserve to mean "automatic"
	inList->remove(0);
	
	inList->sort();
	
	// Remove duplicates - yes they can occur.
	inList->unique();
}

static void BuildRefreshPopupButton(ControlRef inControl, std::list<Fixed>* inList)
{
	MenuRef menu = GetControlPopupMenuRef(inControl);
	assert(menu);
	if (!menu) return;

	// The menu has two permanent items - "Auto" & a divider line. Delete everything else.
	DeleteMenuItems(menu, 3, CountMenuItems(menu)-2);
	
	for (std::list<Fixed>::const_iterator iter = inList->begin(); iter != inList->end(); ++iter)
	{
		float value = FixedToFloat(*iter);
		CFStringRef menuString = CFStringCreateWithFormat (kCFAllocatorDefault, 0, CFSTR("%g Hz"), value);
		InsertMenuItemTextWithCFString(menu, menuString, CountMenuItems(menu), 0, 0);
	}
	
	SetControlMaximum(inControl, CountMenuItems(menu));
}

static SInt32 FindRefreshPopupMenuItem(std::list<Fixed>* inList, Fixed inFrequency)
{
	SInt32 index = 3;	// skip over the "Auto" and divider ine
	for (std::list<Fixed>::const_iterator iter = inList->begin(); iter != inList->end(); ++iter)
	{
		if (*iter == inFrequency)
			return index;
		index++;
	}
	return 1;	// Return the "Automatic" item if we didn't find a match
}

static void BuildResolutionPopupButton(ControlRef inControl, CGDirectDisplayID inDisplayID, ValidModeCallbackProc inCallback)
{
    Sys_Printf("void BuildResolutionPopupButton(ControlRef inControl, CGDirectDisplayID inDisplayID, ValidModeCallbackProc inCallback)\r\n");
}


static void GetResolutionFromPopupMenuItem(ControlRef inControl, MenuItemIndex inItem, int *outX, int *outY, int *outDepth, UInt32 *outResFlags)
{
    Sys_Printf("void GetResolutionFromPopupMenuItem(ControlRef inControl, MenuItemIndex inItem, int *outX, int *outY, int *outDepth, UInt32 *outResFlags)\r\n");
}


static void AdjustResolutionPopupMenu(ControlRef inControl, CGDirectDisplayID inDisplayID, bool isFullscreen, int& screenwidth, int& screenheight, int& screendepth, UInt32& screenResFlags)
{
    Sys_Printf("void AdjustResolutionPopupMenu(ControlRef inControl, CGDirectDisplayID inDisplayID, bool isFullscreen, int& screenwidth, int& screenheight, int& screendepth, UInt32& screenResFlags)\r\n");
}


static void AdjustDisplayControls(PrefInfo *prefInfo)
{
    Sys_Printf("void AdjustDisplayControls(PrefInfo *prefInfo)\r\n");
}


#pragma mark -

static pascal OSStatus PrefHandler( EventHandlerCallRef inHandler, EventRef inEvent, void* inUserData )
{
    OSStatus retVal;
    memset(&retVal, 0, sizeof(OSStatus));
    Sys_Printf("OSStatus PrefHandler( EventHandlerCallRef inHandler, EventRef inEvent, void* inUserData )\r\n");
    return retVal;
}


#pragma mark -

static DEFINE_ONE_SHOT_HANDLER_GETTER(PrefHandler)

OSStatus CreateGameDisplayPreferencesDialog(const GameDisplayInfo *inGDInfo,
											WindowRef *outWindow, ValidModeCallbackProc inCallback)
{
    OSStatus retVal;
    memset(&retVal, 0, sizeof(OSStatus));
    Sys_Printf("OSStatus CreateGameDisplayPreferencesDialog(const GameDisplayInfo *inGDInfo,WindowRef *outWindow, ValidModeCallbackProc inCallback)\r\n");
    return retVal;
}



//------------------------------------------------------------------------------------
// е RunGameDisplayPreferencesDialog
//------------------------------------------------------------------------------------
// Runs the Mac-specific preferences dialog.

OSStatus RunGameDisplayPreferencesDialog(GameDisplayInfo *outGDInfo, WindowRef inWindow)
{
    OSStatus retVal;
    memset(&retVal, 0, sizeof(OSStatus));
    Sys_Printf("OSStatus RunGameDisplayPreferencesDialog(GameDisplayInfo *outGDInfo, WindowRef inWindow)\r\n");
    return retVal;
}








