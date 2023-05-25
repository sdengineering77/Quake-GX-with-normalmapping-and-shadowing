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

#include "../Game_local.h"

/*
================
idInterpreter::idInterpreter()
================
*/
idInterpreter::idInterpreter() {
	localstackUsed = 0;
	terminateOnExit = true;
	debug = 0;
	memset( localstack, 0, sizeof( localstack ) );
	memset( callStack, 0, sizeof( callStack ) );
	Reset();
}

/*
================
idInterpreter::Save
================
*/
void idInterpreter::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idInterpreter::Save( idSaveGame *savefile )\r\n");
}


/*
================
idInterpreter::Restore
================
*/
void idInterpreter::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idInterpreter::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idInterpreter::Reset
================
*/
void idInterpreter::Reset( void ) {
    Sys_Printf("void idInterpreter::Reset( void )\r\n");
}


/*
================
idInterpreter::GetRegisterValue

Returns a string representation of the value of the register.  This is 
used primarily for the debugger and debugging

//FIXME:  This is pretty much wrong.  won't access data in most situations.
================
*/
bool idInterpreter::GetRegisterValue( const char *name, idStr &out, int scopeDepth ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idInterpreter::GetRegisterValue( const char *name, idStr &out, int scopeDepth )\r\n");
    return retVal;
}


/*
================
idInterpreter::GetCallstackDepth
================
*/
int idInterpreter::GetCallstackDepth( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idInterpreter::GetCallstackDepth( void )\r\n");
    return retVal;
}


/*
================
idInterpreter::GetCallstack
================
*/
const prstack_t *idInterpreter::GetCallstack( void ) const {
    Sys_Printf("prstack_t *idInterpreter::GetCallstack( void )\r\n");
    return NULL;
}


/*
================
idInterpreter::GetCurrentFunction
================
*/
const function_t *idInterpreter::GetCurrentFunction( void ) const {
    Sys_Printf("function_t *idInterpreter::GetCurrentFunction( void )\r\n");
    return NULL;
}


/*
================
idInterpreter::GetThread
================
*/
idThread *idInterpreter::GetThread( void ) const {
    Sys_Printf("idThread *idInterpreter::GetThread( void )\r\n");
    return NULL;
}



/*
================
idInterpreter::SetThread
================
*/
void idInterpreter::SetThread( idThread *pThread ) {
    Sys_Printf("void idInterpreter::SetThread( idThread *pThread )\r\n");
}


/*
================
idInterpreter::CurrentLine
================
*/
int idInterpreter::CurrentLine( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idInterpreter::CurrentLine( void )\r\n");
    return retVal;
}


/*
================
idInterpreter::CurrentFile
================
*/
const char *idInterpreter::CurrentFile( void ) const {
    Sys_Printf("char *idInterpreter::CurrentFile( void )\r\n");
    return NULL;
}


/*
============
idInterpreter::StackTrace
============
*/
void idInterpreter::StackTrace( void ) const {
    Sys_Printf("void idInterpreter::StackTrace( void )\r\n");
}


/*
============
idInterpreter::Error

Aborts the currently executing function
============
*/
void idInterpreter::Error( char *fmt, ... ) const {
    Sys_Printf("void idInterpreter::Error( char *fmt, ... )\r\n");
}


/*
============
idInterpreter::Warning

Prints file and line number information with warning.
============
*/
void idInterpreter::Warning( char *fmt, ... ) const {
    Sys_Printf("void idInterpreter::Warning( char *fmt, ... )\r\n");
}


/*
================
idInterpreter::DisplayInfo
================
*/
void idInterpreter::DisplayInfo( void ) const {
    Sys_Printf("void idInterpreter::DisplayInfo( void )\r\n");
}


/*
====================
idInterpreter::ThreadCall

Copys the args from the calling thread's stack
====================
*/
void idInterpreter::ThreadCall( idInterpreter *source, const function_t *func, int args ) {
    Sys_Printf("void idInterpreter::ThreadCall( idInterpreter *source, const function_t *func, int args )\r\n");
}


/*
================
idInterpreter::EnterObjectFunction

Calls a function on a script object.

NOTE: If this is called from within a event called by this interpreter, the function arguments will be invalid after calling this function.
================
*/
void idInterpreter::EnterObjectFunction( idEntity *self, const function_t *func, bool clearStack ) {
    Sys_Printf("void idInterpreter::EnterObjectFunction( idEntity *self, const function_t *func, bool clearStack )\r\n");
}


/*
====================
idInterpreter::EnterFunction

Returns the new program statement counter

NOTE: If this is called from within a event called by this interpreter, the function arguments will be invalid after calling this function.
====================
*/
void idInterpreter::EnterFunction( const function_t *func, bool clearStack ) {
    Sys_Printf("void idInterpreter::EnterFunction( const function_t *func, bool clearStack )\r\n");
}


/*
====================
idInterpreter::LeaveFunction
====================
*/
void idInterpreter::LeaveFunction( idVarDef *returnDef ) {
    Sys_Printf("void idInterpreter::LeaveFunction( idVarDef *returnDef )\r\n");
}


/*
================
idInterpreter::CallEvent
================
*/
void idInterpreter::CallEvent( const function_t *func, int argsize ) {
    Sys_Printf("void idInterpreter::CallEvent( const function_t *func, int argsize )\r\n");
}


/*
================
idInterpreter::BeginMultiFrameEvent
================
*/
bool idInterpreter::BeginMultiFrameEvent( idEntity *ent, const idEventDef *event ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idInterpreter::BeginMultiFrameEvent( idEntity *ent, const idEventDef *event )\r\n");
    return retVal;
}


/*
================
idInterpreter::EndMultiFrameEvent
================
*/
void idInterpreter::EndMultiFrameEvent( idEntity *ent, const idEventDef *event ) {
    Sys_Printf("void idInterpreter::EndMultiFrameEvent( idEntity *ent, const idEventDef *event )\r\n");
}


/*
================
idInterpreter::MultiFrameEventInProgress
================
*/
bool idInterpreter::MultiFrameEventInProgress( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idInterpreter::MultiFrameEventInProgress( void )\r\n");
    return retVal;
}


/*
================
idInterpreter::CallSysEvent
================
*/
void idInterpreter::CallSysEvent( const function_t *func, int argsize ) {
    Sys_Printf("void idInterpreter::CallSysEvent( const function_t *func, int argsize )\r\n");
}


/*
====================
idInterpreter::Execute
====================
*/
bool idInterpreter::Execute( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idInterpreter::Execute( void )\r\n");
    return retVal;
}

