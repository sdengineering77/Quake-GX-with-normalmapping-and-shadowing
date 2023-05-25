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

#include "DeviceContext.h"
#include "Window.h"
#include "UserInterfaceLocal.h"
#include "SliderWindow.h"
#include "EditWindow.h"


bool idEditWindow::ParseInternalVar( const char *_name, idParser *src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEditWindow::ParseInternalVar( const char *_name, idParser *src )\r\n");
    return retVal;
}


idWinVar *idEditWindow::GetWinVarByName( const char *_name, bool fixup, drawWin_t** owner ) {
    Sys_Printf("idWinVar *idEditWindow::GetWinVarByName( const char *_name, bool fixup, drawWin_t** owner )\r\n");
    return NULL;
}


void idEditWindow::CommonInit() {
    Sys_Printf("void idEditWindow::CommonInit()\r\n");
}



idEditWindow::idEditWindow( idDeviceContext *d, idUserInterfaceLocal *g ) : idWindow(d, g) {
	dc = d;
	gui = g;
	CommonInit();
}

idEditWindow::idEditWindow( idUserInterfaceLocal *g ) : idWindow(g) {
	gui = g;
	CommonInit();
}

idEditWindow::~idEditWindow() {

}

void idEditWindow::GainFocus() {
    Sys_Printf("void idEditWindow::GainFocus()\r\n");
}


void idEditWindow::Draw( int time, float x, float y ) {
    Sys_Printf("void idEditWindow::Draw( int time, float x, float y )\r\n");
}


/*
=============
idEditWindow::HandleEvent
=============
*/
const char *idEditWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals) {
    Sys_Printf("char *idEditWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals)\r\n");
    return NULL;
}


void idEditWindow::PostParse() {
    Sys_Printf("void idEditWindow::PostParse()\r\n");
}


/*
================
idEditWindow::InitScroller

This is the same as in idListWindow
================
*/
void idEditWindow::InitScroller( bool horizontal )
{
    Sys_Printf("void idEditWindow::InitScroller( bool horizontal )\r\n");
}


void idEditWindow::HandleBuddyUpdate( idWindow *buddy ) {
    Sys_Printf("void idEditWindow::HandleBuddyUpdate( idWindow *buddy )\r\n");
}


void idEditWindow::EnsureCursorVisible()
{
    Sys_Printf("void idEditWindow::EnsureCursorVisible()\r\n");
}


void idEditWindow::Activate(bool activate, idStr &act) {
    Sys_Printf("void idEditWindow::Activate(bool activate, idStr &act)\r\n");
}


/*
============
idEditWindow::InitCvar
============
*/
void idEditWindow::InitCvar( ) {
    Sys_Printf("void idEditWindow::InitCvar( )\r\n");
}


/*
============
idEditWindow::UpdateCvar
============
*/
void idEditWindow::UpdateCvar( bool read, bool force ) {
    Sys_Printf("void idEditWindow::UpdateCvar( bool read, bool force )\r\n");
}


/*
============
idEditWindow::RunNamedEvent
============
*/
void idEditWindow::RunNamedEvent( const char* eventName ) {
    Sys_Printf("void idEditWindow::RunNamedEvent( const char* eventName )\r\n");
}

