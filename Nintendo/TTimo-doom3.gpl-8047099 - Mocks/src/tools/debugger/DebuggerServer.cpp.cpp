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

#include "../../game/gamesys/Event.h"
#include "../../game/gamesys/Class.h"
#include "../../game/script/Script_Program.h"
#include "../../game/script/Script_Interpreter.h"
#include "../../game/script/Script_Thread.h"
#include "../../game/script/Script_Compiler.h"
#include "../../framework/sync/Msg.h"
#include "DebuggerApp.h"
#include "DebuggerServer.h"

/*
================
rvDebuggerServer::rvDebuggerServer
================
*/
rvDebuggerServer::rvDebuggerServer ( )
{
	mConnected			= false;
	mBreakNext			= false;
	mBreak				= false;
	mBreakStepOver		= false;
	mBreakStepInto		= false;
	mGameThread			= NULL;
	mLastStatementLine	= -1;
	mBreakStepOverFunc1 = NULL;
	mBreakStepOverFunc2 = NULL;
}

/*
================
rvDebuggerServer::~rvDebuggerServer
================
*/
rvDebuggerServer::~rvDebuggerServer ( )
{
}

/*
================
rvDebuggerServer::Initialize

Initialize the debugger server.  This function should be called before the
debugger server is used.
================
*/
bool rvDebuggerServer::Initialize ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerServer::Initialize ( void )\r\n");
    return retVal;
}
	

void rvDebuggerServer::OSPathToRelativePath( const char *osPath, idStr &qpath )
{
    Sys_Printf("void rvDebuggerServer::OSPathToRelativePath( const char *osPath, idStr &qpath )\r\n");
}


/*
================
rvDebuggerServer::Shutdown

Shutdown the debugger server.
================
*/
void rvDebuggerServer::Shutdown ( void )
{
    Sys_Printf("void rvDebuggerServer::Shutdown ( void )\r\n");
}


/*
================
rvDebuggerServer::ProcessMessages

Process all incoming network messages from the debugger client
================
*/
bool rvDebuggerServer::ProcessMessages ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvDebuggerServer::ProcessMessages ( void )\r\n");
    return retVal;
}


/*
================
rvDebuggerServer::SendMessage

Send a message with no data to the debugger server.
================
*/
void rvDebuggerServer::SendMessage ( EDebuggerMessage dbmsg )
{
    Sys_Printf("void rvDebuggerServer::SendMessage ( EDebuggerMessage dbmsg )\r\n");
}


/*
================
rvDebuggerServer::HandleAddBreakpoint

Handle the DBMSG_ADDBREAKPOINT message being sent by the debugger client.  This
message is handled by adding a new breakpoint to the breakpoint list with the
data supplied in the message.
================
*/
void rvDebuggerServer::HandleAddBreakpoint ( msg_t* msg )
{
    Sys_Printf("void rvDebuggerServer::HandleAddBreakpoint ( msg_t* msg )\r\n");
}


/*
================
rvDebuggerServer::HandleRemoveBreakpoint

Handle the DBMSG_REMOVEBREAKPOINT message being sent by the debugger client.  This
message is handled by removing the breakpoint that matches the given id from the 
list.
================
*/
void rvDebuggerServer::HandleRemoveBreakpoint ( msg_t* msg )
{
    Sys_Printf("void rvDebuggerServer::HandleRemoveBreakpoint ( msg_t* msg )\r\n");
}


/*
================
rvDebuggerServer::MSG_WriteCallstackFunc

Writes a single callstack entry to the given message
================
*/
void rvDebuggerServer::MSG_WriteCallstackFunc ( msg_t* msg, const prstack_t* stack )
{
    Sys_Printf("void rvDebuggerServer::MSG_WriteCallstackFunc ( msg_t* msg, const prstack_t* stack )\r\n");
}


/*
================
rvDebuggerServer::HandleInspectCallstack

Handle an incoming inspect callstack message by sending a message
back to the client with the callstack data.
================
*/
void rvDebuggerServer::HandleInspectCallstack ( msg_t* in_msg )
{
    Sys_Printf("void rvDebuggerServer::HandleInspectCallstack ( msg_t* in_msg )\r\n");
}


/*
================
rvDebuggerServer::HandleInspectThreads

Send the list of the current threads in the interpreter back to the debugger client
================
*/
void rvDebuggerServer::HandleInspectThreads ( msg_t* in_msg )
{
    Sys_Printf("void rvDebuggerServer::HandleInspectThreads ( msg_t* in_msg )\r\n");
}


/*
================
rvDebuggerServer::HandleInspectVariable

Respondes to a request from the debugger client to inspect the value of a given variable
================
*/
void rvDebuggerServer::HandleInspectVariable ( msg_t* in_msg )
{
    Sys_Printf("void rvDebuggerServer::HandleInspectVariable ( msg_t* in_msg )\r\n");
}


/*
================
rvDebuggerServer::CheckBreakpoints

Check to see if any breakpoints have been hit.  This includes "break next", 
"step into", and "step over" break points
================
*/
void rvDebuggerServer::CheckBreakpoints	( idInterpreter* interpreter, idProgram* program, int instructionPointer )
{
    Sys_Printf("void rvDebuggerServer::CheckBreakpoints( idInterpreter* interpreter, idProgram* program, int instructionPointer )\r\n");
}


/*
================
rvDebuggerServer::Break

Halt execution of the game threads and inform the debugger client that
the game has been halted
================
*/
void rvDebuggerServer::Break ( idInterpreter* interpreter, idProgram* program, int instructionPointer )
{
    Sys_Printf("void rvDebuggerServer::Break ( idInterpreter* interpreter, idProgram* program, int instructionPointer )\r\n");
}


/*
================
rvDebuggerServer::Resume

Resume execution of the game.
================
*/
void rvDebuggerServer::Resume ( void )
{
    Sys_Printf("void rvDebuggerServer::Resume ( void )\r\n");
}


/*
================
rvDebuggerServer::ClearBreakpoints

Remove all known breakpoints
================
*/
void rvDebuggerServer::ClearBreakpoints	( void )
{
    Sys_Printf("void rvDebuggerServer::ClearBreakpoints( void )\r\n");
}


/*
================
rvDebuggerServer::Print

Sends a console print message over to the debugger client
================
*/
void rvDebuggerServer::Print ( const char* text )
{
    Sys_Printf("void rvDebuggerServer::Print ( const char* text )\r\n");
}
	
