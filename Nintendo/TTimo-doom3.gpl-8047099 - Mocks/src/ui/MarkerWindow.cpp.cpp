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

// included for image uploading for player stat graph
#include "../renderer/Image.h"

#include "DeviceContext.h"
#include "Window.h"
#include "UserInterfaceLocal.h"
#include "MarkerWindow.h"

class idImage;
void idMarkerWindow::CommonInit() {
    Sys_Printf("void idMarkerWindow::CommonInit()\r\n");
}


idMarkerWindow::idMarkerWindow(idDeviceContext *d, idUserInterfaceLocal *g) : idWindow(d, g) {
	dc = d;
	gui = g;
	CommonInit();
}

idMarkerWindow::idMarkerWindow(idUserInterfaceLocal *g) : idWindow(g) {
	gui = g;
	CommonInit();
}

idMarkerWindow::~idMarkerWindow() {
}

bool idMarkerWindow::ParseInternalVar(const char *_name, idParser *src) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMarkerWindow::ParseInternalVar(const char *_name, idParser *src)\r\n");
    return retVal;
}


idWinVar *idMarkerWindow::GetWinVarByName(const char *_name, bool fixup) {
    Sys_Printf("idWinVar *idMarkerWindow::GetWinVarByName(const char *_name, bool fixup)\r\n");
    return NULL;
}


const char *idMarkerWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals) {
    Sys_Printf("char *idMarkerWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals)\r\n");
    return NULL;
}


void idMarkerWindow::PostParse() {
    Sys_Printf("void idMarkerWindow::PostParse()\r\n");
}


static const int HEALTH_MAX = 100;
static const int COMBAT_MAX = 100;
static const int RATE_MAX = 125;
static const int STAMINA_MAX = 12;
void idMarkerWindow::Draw(int time, float x, float y) {
    Sys_Printf("void idMarkerWindow::Draw(int time, float x, float y)\r\n");
}




const char *idMarkerWindow::RouteMouseCoords(float xd, float yd) {
    Sys_Printf("char *idMarkerWindow::RouteMouseCoords(float xd, float yd)\r\n");
    return NULL;
}


void idMarkerWindow::Point(int x, int y, dword *out, dword color) {
    Sys_Printf("void idMarkerWindow::Point(int x, int y, dword *out, dword color)\r\n");
}


void idMarkerWindow::Line(int x1, int y1, int x2, int y2, dword* out, dword color) {
    Sys_Printf("void idMarkerWindow::Line(int x1, int y1, int x2, int y2, dword* out, dword color)\r\n");
}



void idMarkerWindow::Activate(bool activate, idStr &act) {
    Sys_Printf("void idMarkerWindow::Activate(bool activate, idStr &act)\r\n");
}


void idMarkerWindow::MouseExit() {
    Sys_Printf("void idMarkerWindow::MouseExit()\r\n");
}


void idMarkerWindow::MouseEnter() {
    Sys_Printf("void idMarkerWindow::MouseEnter()\r\n");
}

