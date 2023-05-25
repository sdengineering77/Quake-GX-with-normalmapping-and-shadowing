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
#pragma hdrstop

//
// This file implements the low-level keyboard hook that traps the task keys.
//

//#define _WIN32_WINNT 0x0500 // for KBDLLHOOKSTRUCT
#include <afxwin.h>         // MFC core and standard components
#include "win_local.h"

#define DLLEXPORT __declspec(dllexport)

// Magic registry key/value for "Remove Task Manager" policy.
LPCTSTR KEY_DisableTaskMgr = "Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System";
LPCTSTR VAL_DisableTaskMgr = "DisableTaskMgr";

// The section is SHARED among all instances of this DLL.
// A low-level keyboard hook is always a system-wide hook.
#pragma data_seg (".mydata")
HHOOK g_hHookKbdLL = NULL;	// hook handle
BOOL  g_bBeep = FALSE;		// beep on illegal key
#pragma data_seg ()
#pragma comment(linker, "/SECTION:.mydata,RWS") // tell linker: make it shared

/*
================
MyTaskKeyHookLL

  Low-level keyboard hook:
  Trap task-switching keys by returning without passing along.
================
*/
LRESULT CALLBACK MyTaskKeyHookLL( int nCode, WPARAM wp, LPARAM lp ) {
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK MyTaskKeyHookLL( int nCode, WPARAM wp, LPARAM lp )\r\n");
    return retVal;
}


/*
================
AreTaskKeysDisabled

  Are task keys disabled--ie, is hook installed?
  Note: This assumes there's no other hook that does the same thing!
================
*/
BOOL AreTaskKeysDisabled() {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL AreTaskKeysDisabled()\r\n");
    return retVal;
}


/*
================
IsTaskMgrDisabled
================
*/
BOOL IsTaskMgrDisabled() {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL IsTaskMgrDisabled()\r\n");
    return retVal;
}


/*
================
DisableTaskKeys
================
*/
void DisableTaskKeys( BOOL bDisable, BOOL bBeep, BOOL bTaskMgr ) {
    Sys_Printf("void DisableTaskKeys( BOOL bDisable, BOOL bBeep, BOOL bTaskMgr )\r\n");
}

