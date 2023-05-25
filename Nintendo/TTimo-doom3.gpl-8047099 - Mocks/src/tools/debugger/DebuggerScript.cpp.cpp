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

#include "DebuggerApp.h"
#include "DebuggerScript.h"
#include "../../game/script/Script_Program.h"
#include "../../ui/Window.h"
#include "../../ui/UserInterfaceLocal.h"

/*
================
rvDebuggerScript::rvDebuggerScript
================
*/
rvDebuggerScript::rvDebuggerScript ( void )
{
	mContents  = NULL;
	mProgram   = NULL;
	mInterface = NULL;
}

/*
================
rvDebuggerScript::~rvDebuggerScript
================
*/
rvDebuggerScript::~rvDebuggerScript ( void )
{
	Unload ( );
}

/*
================
rvDebuggerScript::Unload

Unload the script from memory
================
*/
void rvDebuggerScript::Unload ( void )
{
    Sys_Printf("void rvDebuggerScript::Unload ( void )\r\n");
}
	

/*
================
rvDebuggerScript::Load

Loads the debugger script and attempts to compile it using the method 
appropriate for the file being loaded.  If the script cant be compiled
the loading of the script fails
================
*/
bool rvDebuggerScript::Load ( const char* filename )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerScript::Load ( const char* filename )\r\n");
    return retVal;
}


/*
================
rvDebuggerScript::Reload

Reload the contents of the script
================
*/
bool rvDebuggerScript::Reload ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerScript::Reload ( void )\r\n");
    return retVal;
}


/*
================
rvDebuggerScript::IsValidLine

Determines whether or not the given line number within the script is a valid line of code
================
*/
bool rvDebuggerScript::IsLineCode ( int linenumber )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerScript::IsLineCode ( int linenumber )\r\n");
    return retVal;
}


/*
================
rvDebuggerScript::IsFileModified

Determines whether or not the file loaded for this script has been modified since
it was loaded.
================
*/
bool rvDebuggerScript::IsFileModified ( bool updateTime )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerScript::IsFileModified ( bool updateTime )\r\n");
    return retVal;
}

