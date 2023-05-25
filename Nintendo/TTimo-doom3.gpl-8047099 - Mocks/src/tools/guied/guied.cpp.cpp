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

#include "../../renderer/tr_local.h"
#include "../../sys/win32/win_local.h"
#include <io.h>

#include "../../ui/DeviceContext.h"
#include "../../sys/win32/rc/guied_resource.h"

#include "GEApp.h"

rvGEApp		gApp;
	
/*
================
GUIEditorInit

Start the gui editor
================
*/
void GUIEditorInit( void ) 
{
    Sys_Printf("void GUIEditorInit( void )\r\n");
}


/*
================
GUIEditorShutdown
================
*/
void GUIEditorShutdown( void ) {
    Sys_Printf("void GUIEditorShutdown( void )\r\n");
}


/*
================
GUIEditorHandleMessage

Handle translator messages
================
*/
bool GUIEditorHandleMessage ( void *msg )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GUIEditorHandleMessage ( void *msg )\r\n");
    return retVal;
}


/*
================
GUIEditorRun

Run a frame 
================
*/
void GUIEditorRun() 
{
    Sys_Printf("void GUIEditorRun()\r\n");
}


/*
================
StringFromVec4

Returns a clean string version of the given vec4
================
*/
const char *StringFromVec4 ( idVec4& v )
{
    Sys_Printf("char *StringFromVec4 ( idVec4& v )\r\n");
    return NULL;
}


/*
================
IsExpression

Returns true if the given string is an expression
================
*/
bool IsExpression ( const char* s )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool IsExpression ( const char* s )\r\n");
    return retVal;
}

