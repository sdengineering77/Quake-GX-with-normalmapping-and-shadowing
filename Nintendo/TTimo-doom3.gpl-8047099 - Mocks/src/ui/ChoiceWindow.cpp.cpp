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
#include "ChoiceWindow.h"

/*
============
idChoiceWindow::InitVars
============
*/
void idChoiceWindow::InitVars( ) {
    Sys_Printf("void idChoiceWindow::InitVars( )\r\n");
}


/*
============
idChoiceWindow::CommonInit
============
*/
void idChoiceWindow::CommonInit() {
    Sys_Printf("void idChoiceWindow::CommonInit()\r\n");
}


idChoiceWindow::idChoiceWindow(idDeviceContext *d, idUserInterfaceLocal *g) : idWindow(d, g) {
	dc = d;
	gui = g;
	CommonInit();
}

idChoiceWindow::idChoiceWindow(idUserInterfaceLocal *g) : idWindow(g) {
	gui = g;
	CommonInit();
}

idChoiceWindow::~idChoiceWindow() {

}

void idChoiceWindow::RunNamedEvent( const char* eventName ) {
    Sys_Printf("void idChoiceWindow::RunNamedEvent( const char* eventName )\r\n");
}


void idChoiceWindow::UpdateVars( bool read, bool force ) {
    Sys_Printf("void idChoiceWindow::UpdateVars( bool read, bool force )\r\n");
}


const char *idChoiceWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals) {
    Sys_Printf("char *idChoiceWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals)\r\n");
    return NULL;
}


void idChoiceWindow::ValidateChoice() {
    Sys_Printf("void idChoiceWindow::ValidateChoice()\r\n");
}


void idChoiceWindow::UpdateChoice() {
    Sys_Printf("void idChoiceWindow::UpdateChoice()\r\n");
}


bool idChoiceWindow::ParseInternalVar(const char *_name, idParser *src) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idChoiceWindow::ParseInternalVar(const char *_name, idParser *src)\r\n");
    return retVal;
}



idWinVar *idChoiceWindow::GetWinVarByName(const char *_name, bool fixup, drawWin_t** owner) {
    Sys_Printf("idWinVar *idChoiceWindow::GetWinVarByName(const char *_name, bool fixup, drawWin_t** owner)\r\n");
    return NULL;
}


// update the lists whenever the WinVar have changed
void idChoiceWindow::UpdateChoicesAndVals( void ) {
    Sys_Printf("void idChoiceWindow::UpdateChoicesAndVals( void )\r\n");
}


void idChoiceWindow::PostParse() {
    Sys_Printf("void idChoiceWindow::PostParse()\r\n");
}


void idChoiceWindow::Draw(int time, float x, float y) {
    Sys_Printf("void idChoiceWindow::Draw(int time, float x, float y)\r\n");
}


void idChoiceWindow::Activate( bool activate, idStr &act ) {
    Sys_Printf("void idChoiceWindow::Activate( bool activate, idStr &act )\r\n");
}

