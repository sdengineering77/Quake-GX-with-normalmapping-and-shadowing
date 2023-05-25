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

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "../framework/Session_local.h"

#include "DeviceContext.h"
#include "Window.h"
#include "UserInterfaceLocal.h"
#include "SliderWindow.h"
#include "ListWindow.h"

// Number of pixels above the text that the rect starts
static const int pixelOffset = 3;

// number of pixels between columns
static const int tabBorder = 4;

// Time in milliseconds between clicks to register as a double-click
static const int doubleClickSpeed = 300;

void idListWindow::CommonInit() {
    Sys_Printf("void idListWindow::CommonInit()\r\n");
}


idListWindow::idListWindow(idDeviceContext *d, idUserInterfaceLocal *g) : idWindow(d, g) {
	dc = d;
	gui = g;
	CommonInit();
}

idListWindow::idListWindow(idUserInterfaceLocal *g) : idWindow(g) {
	gui = g;
	CommonInit();
}

void idListWindow::SetCurrentSel( int sel ) {
    Sys_Printf("void idListWindow::SetCurrentSel( int sel )\r\n");
}


void idListWindow::ClearSelection( int sel ) {
    Sys_Printf("void idListWindow::ClearSelection( int sel )\r\n");
}


void idListWindow::AddCurrentSel( int sel ) {
    Sys_Printf("void idListWindow::AddCurrentSel( int sel )\r\n");
}


int idListWindow::GetCurrentSel() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idListWindow::GetCurrentSel()\r\n");
    return retVal;
}


bool idListWindow::IsSelected( int index ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idListWindow::IsSelected( int index )\r\n");
    return retVal;
}


const char *idListWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals) {
    Sys_Printf("char *idListWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals)\r\n");
    return NULL;
}



bool idListWindow::ParseInternalVar(const char *_name, idParser *src) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idListWindow::ParseInternalVar(const char *_name, idParser *src)\r\n");
    return retVal;
}


idWinVar *idListWindow::GetWinVarByName(const char *_name, bool fixup, drawWin_t** owner) {
    Sys_Printf("idWinVar *idListWindow::GetWinVarByName(const char *_name, bool fixup, drawWin_t** owner)\r\n");
    return NULL;
}


void idListWindow::PostParse() {
    Sys_Printf("void idListWindow::PostParse()\r\n");
}


/*
================
idListWindow::InitScroller

This is the same as in idEditWindow
================
*/
void idListWindow::InitScroller( bool horizontal )
{
    Sys_Printf("void idListWindow::InitScroller( bool horizontal )\r\n");
}


void idListWindow::Draw(int time, float x, float y) {
    Sys_Printf("void idListWindow::Draw(int time, float x, float y)\r\n");
}


void idListWindow::Activate(bool activate, idStr &act) {
    Sys_Printf("void idListWindow::Activate(bool activate, idStr &act)\r\n");
}


void idListWindow::HandleBuddyUpdate(idWindow *buddy) {
    Sys_Printf("void idListWindow::HandleBuddyUpdate(idWindow *buddy)\r\n");
}


void idListWindow::UpdateList() {
    Sys_Printf("void idListWindow::UpdateList()\r\n");
}


void idListWindow::StateChanged( bool redraw ) {
    Sys_Printf("void idListWindow::StateChanged( bool redraw )\r\n");
}


