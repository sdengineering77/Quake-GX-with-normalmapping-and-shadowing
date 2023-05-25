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

#include "Window.h"
#include "Winvar.h"
#include "UserInterfaceLocal.h"

idWinVar::idWinVar() { 
	guiDict = NULL; 
	name = NULL; 
	eval = true;
}

idWinVar::~idWinVar() { 
	delete name;
	name = NULL;
}

void idWinVar::SetGuiInfo(idDict *gd, const char *_name) {
    Sys_Printf("void idWinVar::SetGuiInfo(idDict *gd, const char *_name)\r\n");
}



void idWinVar::Init(const char *_name, idWindow *win) {
    Sys_Printf("void idWinVar::Init(const char *_name, idWindow *win)\r\n");
}


void idMultiWinVar::Set( const char *val ) {
    Sys_Printf("void idMultiWinVar::Set( const char *val )\r\n");
}


void idMultiWinVar::Update( void ) {
    Sys_Printf("void idMultiWinVar::Update( void )\r\n");
}


void idMultiWinVar::SetGuiInfo( idDict *dict ) {
    Sys_Printf("void idMultiWinVar::SetGuiInfo( idDict *dict )\r\n");
}


