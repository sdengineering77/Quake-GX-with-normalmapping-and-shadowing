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
#include "BindWindow.h"


void idBindWindow::CommonInit() {
    Sys_Printf("void idBindWindow::CommonInit()\r\n");
}


idBindWindow::idBindWindow(idDeviceContext *d, idUserInterfaceLocal *g) : idWindow(d, g) {
	dc = d;
	gui = g;
	CommonInit();
}

idBindWindow::idBindWindow(idUserInterfaceLocal *g) : idWindow(g) {
	gui = g;
	CommonInit();
}

idBindWindow::~idBindWindow() {

}


const char *idBindWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals) {
    Sys_Printf("char *idBindWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals)\r\n");
    return NULL;
}


idWinVar *idBindWindow::GetWinVarByName(const char *_name, bool fixup, drawWin_t** owner) {
    Sys_Printf("idWinVar *idBindWindow::GetWinVarByName(const char *_name, bool fixup, drawWin_t** owner)\r\n");
    return NULL;
}


void idBindWindow::PostParse() {
    Sys_Printf("void idBindWindow::PostParse()\r\n");
}


void idBindWindow::Draw(int time, float x, float y) {
    Sys_Printf("void idBindWindow::Draw(int time, float x, float y)\r\n");
}


void idBindWindow::Activate( bool activate, idStr &act ) {
    Sys_Printf("void idBindWindow::Activate( bool activate, idStr &act )\r\n");
}

