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

/*
================
rvDebuggerClient::rvDebuggerClient
================
*/
rvDebuggerClient::rvDebuggerClient ( )
{
	mConnected = false;
	mWaitFor   = DBMSG_UNKNOWN;
}

/*
================
rvDebuggerClient::~rvDebuggerClient
================
*/
rvDebuggerClient::~rvDebuggerClient ( )
{
	ClearBreakpoints ( );	
	ClearCallstack ( );
	ClearThreads ( );
}

/*
================
rvDebuggerClient::Initialize

Initialize the debugger client
================
*/
bool rvDebuggerClient::Initialize ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerClient::Initialize ( void )\r\n");
    return retVal;
}
	

/*
================
rvDebuggerClient::Shutdown

Shutdown the debugger client and let the debugger server
know we are shutting down
================
*/
void rvDebuggerClient::Shutdown ( void )
{
    Sys_Printf("void rvDebuggerClient::Shutdown ( void )\r\n");
}


/*
================
rvDebuggerClient::ProcessMessages

Process all incomding messages from the debugger server
================
*/
bool rvDebuggerClient::ProcessMessages ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerClient::ProcessMessages ( void )\r\n");
    return retVal;
}


/*
================
rvDebuggerClient::HandleBreak

Handle the DBMSG_BREAK message send from the server.  This message is handled
by caching the file and linenumber where the break occured. 
================
*/
void rvDebuggerClient::HandleBreak ( msg_t* msg )
{
    Sys_Printf("void rvDebuggerClient::HandleBreak ( msg_t* msg )\r\n");
}


/*
================
rvDebuggerClient::InspectVariable

Instructs the client to inspect the given variable at the given callstack depth.  The
variable is inspected by sending a DBMSG_INSPECTVARIABLE message to the server which
will in turn respond back to the client with the variable value
================
*/
void rvDebuggerClient::InspectVariable ( const char* name, int callstackDepth )
{
    Sys_Printf("void rvDebuggerClient::InspectVariable ( const char* name, int callstackDepth )\r\n");
}


/*
================
rvDebuggerClient::HandleInspectCallstack

Handle the message DBMSG_INSPECTCALLSTACK being sent from the server.  This message
is handled by adding the callstack entries to a list for later lookup.
================
*/
void rvDebuggerClient::HandleInspectCallstack ( msg_t* msg )
{
    Sys_Printf("void rvDebuggerClient::HandleInspectCallstack ( msg_t* msg )\r\n");
}


/*
================
rvDebuggerClient::HandleInspectThreads

Handle the message DBMSG_INSPECTTHREADS being sent from the server.  This message
is handled by adding the list of threads to a list for later lookup.
================
*/
void rvDebuggerClient::HandleInspectThreads ( msg_t* msg )
{
    Sys_Printf("void rvDebuggerClient::HandleInspectThreads ( msg_t* msg )\r\n");
}


/*
================
rvDebuggerClient::HandleInspectVariable

Handle the message DBMSG_INSPECTVARIABLE being sent from the server.  This message
is handled by adding the inspected variable to a dictionary for later lookup
================
*/
void rvDebuggerClient::HandleInspectVariable ( msg_t* msg )
{
    Sys_Printf("void rvDebuggerClient::HandleInspectVariable ( msg_t* msg )\r\n");
}


/*
================
rvDebuggerClient::WaitFor

Waits the given amount of time for the specified message to be received by the 
debugger client.
================
*/
bool rvDebuggerClient::WaitFor ( EDebuggerMessage msg, int time )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerClient::WaitFor ( EDebuggerMessage msg, int time )\r\n");
    return retVal;
}


/*
================
rvDebuggerClient::FindBreakpoint

Searches for a breakpoint that maches the given filename and linenumber
================
*/
rvDebuggerBreakpoint* rvDebuggerClient::FindBreakpoint ( const char* filename, int linenumber )
{
    Sys_Printf("rvDebuggerBreakpoint* rvDebuggerClient::FindBreakpoint ( const char* filename, int linenumber )\r\n");
    return NULL;
}


/*
================
rvDebuggerClient::ClearBreakpoints

Removes all breakpoints from the client and server
================
*/
void rvDebuggerClient::ClearBreakpoints ( void )
{
    Sys_Printf("void rvDebuggerClient::ClearBreakpoints ( void )\r\n");
}


/*
================
rvDebuggerClient::AddBreakpoint

Adds a breakpoint to the client and server with the give nfilename and linenumber
================
*/
int rvDebuggerClient::AddBreakpoint ( const char* filename, int lineNumber, bool onceOnly )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvDebuggerClient::AddBreakpoint ( const char* filename, int lineNumber, bool onceOnly )\r\n");
    return retVal;
}


/*
================
rvDebuggerClient::RemoveBreakpoint

Removes the breakpoint with the given ID from the client and server
================
*/
bool rvDebuggerClient::RemoveBreakpoint ( int bpID )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerClient::RemoveBreakpoint ( int bpID )\r\n");
    return retVal;
}


/*
================
rvDebuggerClient::SendMessage

Send a message with no data to the debugger server
================
*/
void rvDebuggerClient::SendMessage ( EDebuggerMessage dbmsg )
{
    Sys_Printf("void rvDebuggerClient::SendMessage ( EDebuggerMessage dbmsg )\r\n");
}


/*
================
rvDebuggerClient::SendBreakpoints

Send all breakpoints to the debugger server
================
*/
void rvDebuggerClient::SendBreakpoints ( void )
{
    Sys_Printf("void rvDebuggerClient::SendBreakpoints ( void )\r\n");
}


/*
================
rvDebuggerClient::SendAddBreakpoint

Send an individual breakpoint over to the debugger server
================
*/
void rvDebuggerClient::SendAddBreakpoint ( rvDebuggerBreakpoint& bp, bool onceOnly )
{
    Sys_Printf("void rvDebuggerClient::SendAddBreakpoint ( rvDebuggerBreakpoint& bp, bool onceOnly )\r\n");
}


/*
================
rvDebuggerClient::SendRemoveBreakpoint

Sends a remove breakpoint message to the debugger server
================
*/
void rvDebuggerClient::SendRemoveBreakpoint ( rvDebuggerBreakpoint& bp )
{
    Sys_Printf("void rvDebuggerClient::SendRemoveBreakpoint ( rvDebuggerBreakpoint& bp )\r\n");
}


/*
================
rvDebuggerClient::ClearCallstack

Clear all callstack entries
================
*/
void rvDebuggerClient::ClearCallstack ( void )
{
    Sys_Printf("void rvDebuggerClient::ClearCallstack ( void )\r\n");
}


/*
================
rvDebuggerClient::ClearThreads

Clear all thread entries
================
*/
void rvDebuggerClient::ClearThreads ( void )
{
    Sys_Printf("void rvDebuggerClient::ClearThreads ( void )\r\n");
}


