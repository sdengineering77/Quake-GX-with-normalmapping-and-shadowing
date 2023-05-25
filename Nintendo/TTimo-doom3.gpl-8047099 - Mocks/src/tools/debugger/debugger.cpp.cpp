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

#include "../../sys/win32/rc/debugger_resource.h"
#include "DebuggerApp.h"
#include "DebuggerServer.h"

DWORD CALLBACK DebuggerThread ( LPVOID param );

rvDebuggerApp					gDebuggerApp;
HWND							gDebuggerWindow = NULL;
bool							gDebuggerSuspend = false;
bool							gDebuggerConnnected = false;
HANDLE							gDebuggerGameThread = NULL;

rvDebuggerServer*				gDebuggerServer			= NULL;
HANDLE							gDebuggerServerThread   = NULL;
DWORD							gDebuggerServerThreadID = 0;
bool							gDebuggerServerQuit     = false;

/*
================
DebuggerMain

Main entry point for the debugger application
================
*/
void DebuggerClientInit( const char *cmdline )
{
    Sys_Printf("void DebuggerClientInit( const char *cmdline )\r\n");
}


/*
================
DebuggerLaunch

Launches another instance of the running executable with +debugger appended
to the end to indicate that the debugger should start up.
================
*/
void DebuggerClientLaunch ( void )
{
    Sys_Printf("void DebuggerClientLaunch ( void )\r\n");
}


/*
================
DebuggerServerThread

Thread proc for the debugger server
================
*/
DWORD CALLBACK DebuggerServerThread ( LPVOID param )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK DebuggerServerThread ( LPVOID param )\r\n");
    return retVal;
}


/*
================
DebuggerServerInit

Starts up the debugger server
================
*/
bool DebuggerServerInit ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool DebuggerServerInit ( void )\r\n");
    return retVal;
}


/*
================
DebuggerServerShutdown

Shuts down the debugger server
================
*/
void DebuggerServerShutdown ( void )
{
    Sys_Printf("void DebuggerServerShutdown ( void )\r\n");
}


/*
================
DebuggerServerCheckBreakpoint

Check to see if there is a breakpoint associtated with this statement
================
*/
void DebuggerServerCheckBreakpoint ( idInterpreter* interpreter, idProgram* program, int instructionPointer )
{
    Sys_Printf("void DebuggerServerCheckBreakpoint ( idInterpreter* interpreter, idProgram* program, int instructionPointer )\r\n");
}


/*
================
DebuggerServerPrint

Sends a print message to the debugger client
================
*/
void DebuggerServerPrint ( const char* text )
{
    Sys_Printf("void DebuggerServerPrint ( const char* text )\r\n");
}


