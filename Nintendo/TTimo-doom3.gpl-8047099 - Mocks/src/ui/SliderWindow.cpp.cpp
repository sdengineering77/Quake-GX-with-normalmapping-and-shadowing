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

/*
============
idSliderWindow::CommonInit
============
*/
void idSliderWindow::CommonInit() {
    Sys_Printf("void idSliderWindow::CommonInit()\r\n");
}


idSliderWindow::idSliderWindow(idDeviceContext *d, idUserInterfaceLocal *g) : idWindow(d, g) {
	dc = d;
	gui = g;
	CommonInit();
}

idSliderWindow::idSliderWindow(idUserInterfaceLocal *g) : idWindow(g) {
	gui = g;
	CommonInit();
}

idSliderWindow::~idSliderWindow() {

}

bool idSliderWindow::ParseInternalVar(const char *_name, idParser *src) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSliderWindow::ParseInternalVar(const char *_name, idParser *src)\r\n");
    return retVal;
}


idWinVar *idSliderWindow::GetWinVarByName(const char *_name, bool fixup, drawWin_t** owner) {
    Sys_Printf("idWinVar *idSliderWindow::GetWinVarByName(const char *_name, bool fixup, drawWin_t** owner)\r\n");
    return NULL;
}


const char *idSliderWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals) {
    Sys_Printf("char *idSliderWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals)\r\n");
    return NULL;
}



void idSliderWindow::SetBuddy(idWindow *buddy) {
    Sys_Printf("void idSliderWindow::SetBuddy(idWindow *buddy)\r\n");
}


void idSliderWindow::PostParse() {
    Sys_Printf("void idSliderWindow::PostParse()\r\n");
}


void idSliderWindow::InitWithDefaults(const char *_name, const idRectangle &_rect, const idVec4 &_foreColor, const idVec4 &_matColor, const char *_background, const char *thumbShader, bool _vertical, bool _scrollbar) {
    Sys_Printf("void idSliderWindow::InitWithDefaults(const char *_name, const idRectangle &_rect, const idVec4 &_foreColor, const idVec4 &_matColor, const char *_background, const char *thumbShader, bool _vertical, bool _scrollbar)\r\n");
}


void idSliderWindow::SetRange(float _low, float _high, float _step) {
    Sys_Printf("void idSliderWindow::SetRange(float _low, float _high, float _step)\r\n");
}


void idSliderWindow::SetValue(float _value) {
    Sys_Printf("void idSliderWindow::SetValue(float _value)\r\n");
}


void idSliderWindow::Draw(int time, float x, float y) {
    Sys_Printf("void idSliderWindow::Draw(int time, float x, float y)\r\n");
}



void idSliderWindow::DrawBackground(const idRectangle &_drawRect) {
    Sys_Printf("void idSliderWindow::DrawBackground(const idRectangle &_drawRect)\r\n");
}


const char *idSliderWindow::RouteMouseCoords(float xd, float yd) {
    Sys_Printf("char *idSliderWindow::RouteMouseCoords(float xd, float yd)\r\n");
    return NULL;
}



void idSliderWindow::Activate(bool activate, idStr &act) {
    Sys_Printf("void idSliderWindow::Activate(bool activate, idStr &act)\r\n");
}


/*
============
idSliderWindow::InitCvar
============
*/
void idSliderWindow::InitCvar( ) {
    Sys_Printf("void idSliderWindow::InitCvar( )\r\n");
}


/*
============
idSliderWindow::UpdateCvar
============
*/
void idSliderWindow::UpdateCvar( bool read, bool force ) {
    Sys_Printf("void idSliderWindow::UpdateCvar( bool read, bool force )\r\n");
}


/*
============
idSliderWindow::RunNamedEvent
============
*/
void idSliderWindow::RunNamedEvent( const char* eventName ) {
    Sys_Printf("void idSliderWindow::RunNamedEvent( const char* eventName )\r\n");
}


