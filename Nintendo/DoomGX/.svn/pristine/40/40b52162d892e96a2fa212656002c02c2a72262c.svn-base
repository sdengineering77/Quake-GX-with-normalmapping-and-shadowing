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

const idEventDef EV_Thread_Execute( "<execute>", NULL );
const idEventDef EV_Thread_SetCallback( "<script_setcallback>", NULL );
																	
// script callable events
const idEventDef EV_Thread_TerminateThread( "terminate", "d" );
const idEventDef EV_Thread_Pause( "pause", NULL );
const idEventDef EV_Thread_Wait( "wait", "f" );
const idEventDef EV_Thread_WaitFrame( "waitFrame" );
const idEventDef EV_Thread_WaitFor( "waitFor", "e" );
const idEventDef EV_Thread_WaitForThread( "waitForThread", "d" );
const idEventDef EV_Thread_Print( "print", "s" );
const idEventDef EV_Thread_PrintLn( "println", "s" );
const idEventDef EV_Thread_Say( "say", "s" );
const idEventDef EV_Thread_Assert( "assert", "f" );
const idEventDef EV_Thread_Trigger( "trigger", "e" );
const idEventDef EV_Thread_SetCvar( "setcvar", "ss" );
const idEventDef EV_Thread_GetCvar( "getcvar", "s", 's' );
const idEventDef EV_Thread_Random( "random", "f", 'f' );
const idEventDef EV_Thread_GetTime( "getTime", NULL, 'f' );
const idEventDef EV_Thread_KillThread( "killthread", "s" );
const idEventDef EV_Thread_SetThreadName( "threadname", "s" );
const idEventDef EV_Thread_GetEntity( "getEntity", "s", 'e' );
const idEventDef EV_Thread_Spawn( "spawn", "s", 'e' );
const idEventDef EV_Thread_CopySpawnArgs( "copySpawnArgs", "e" );
const idEventDef EV_Thread_SetSpawnArg( "setSpawnArg", "ss" );
const idEventDef EV_Thread_SpawnString( "SpawnString", "ss", 's' );
const idEventDef EV_Thread_SpawnFloat( "SpawnFloat", "sf", 'f' );
const idEventDef EV_Thread_SpawnVector( "SpawnVector", "sv", 'v' );
const idEventDef EV_Thread_ClearPersistantArgs( "clearPersistantArgs" );
const idEventDef EV_Thread_SetPersistantArg( "setPersistantArg", "ss" );
const idEventDef EV_Thread_GetPersistantString( "getPersistantString", "s", 's' );
const idEventDef EV_Thread_GetPersistantFloat( "getPersistantFloat", "s", 'f' );
const idEventDef EV_Thread_GetPersistantVector( "getPersistantVector", "s", 'v' );
const idEventDef EV_Thread_AngToForward( "angToForward", "v", 'v' );
const idEventDef EV_Thread_AngToRight( "angToRight", "v", 'v' );
const idEventDef EV_Thread_AngToUp( "angToUp", "v", 'v' );
const idEventDef EV_Thread_Sine( "sin", "f", 'f' );
const idEventDef EV_Thread_Cosine( "cos", "f", 'f' );
const idEventDef EV_Thread_SquareRoot( "sqrt", "f", 'f' );
const idEventDef EV_Thread_Normalize( "vecNormalize", "v", 'v' );
const idEventDef EV_Thread_VecLength( "vecLength", "v", 'f' );
const idEventDef EV_Thread_VecDotProduct( "DotProduct", "vv", 'f' );
const idEventDef EV_Thread_VecCrossProduct( "CrossProduct", "vv", 'v' );
const idEventDef EV_Thread_VecToAngles( "VecToAngles", "v", 'v' );
const idEventDef EV_Thread_OnSignal( "onSignal", "des" );
const idEventDef EV_Thread_ClearSignal( "clearSignalThread", "de" );
const idEventDef EV_Thread_SetCamera( "setCamera", "e" );
const idEventDef EV_Thread_FirstPerson( "firstPerson", NULL );
const idEventDef EV_Thread_Trace( "trace", "vvvvde", 'f' );
const idEventDef EV_Thread_TracePoint( "tracePoint", "vvde", 'f' );
const idEventDef EV_Thread_GetTraceFraction( "getTraceFraction", NULL, 'f' );
const idEventDef EV_Thread_GetTraceEndPos( "getTraceEndPos", NULL, 'v' );
const idEventDef EV_Thread_GetTraceNormal( "getTraceNormal", NULL, 'v' );
const idEventDef EV_Thread_GetTraceEntity( "getTraceEntity", NULL, 'e' );
const idEventDef EV_Thread_GetTraceJoint( "getTraceJoint", NULL, 's' );
const idEventDef EV_Thread_GetTraceBody( "getTraceBody", NULL, 's' );
const idEventDef EV_Thread_FadeIn( "fadeIn", "vf" );
const idEventDef EV_Thread_FadeOut( "fadeOut", "vf" );
const idEventDef EV_Thread_FadeTo( "fadeTo", "vff" );
const idEventDef EV_Thread_StartMusic( "music", "s" );
const idEventDef EV_Thread_Error( "error", "s" );
const idEventDef EV_Thread_Warning( "warning", "s" );
const idEventDef EV_Thread_StrLen( "strLength", "s", 'd' );
const idEventDef EV_Thread_StrLeft( "strLeft", "sd", 's' );
const idEventDef EV_Thread_StrRight( "strRight", "sd", 's' );
const idEventDef EV_Thread_StrSkip( "strSkip", "sd", 's' );
const idEventDef EV_Thread_StrMid( "strMid", "sdd", 's' );
const idEventDef EV_Thread_StrToFloat( "strToFloat", "s", 'f' );
const idEventDef EV_Thread_RadiusDamage( "radiusDamage", "vEEEsf" );
const idEventDef EV_Thread_IsClient( "isClient", NULL, 'f' );
const idEventDef EV_Thread_IsMultiplayer( "isMultiplayer", NULL, 'f' );
const idEventDef EV_Thread_GetFrameTime( "getFrameTime", NULL, 'f' );
const idEventDef EV_Thread_GetTicsPerSecond( "getTicsPerSecond", NULL, 'f' );
const idEventDef EV_Thread_DebugLine( "debugLine", "vvvf" );
const idEventDef EV_Thread_DebugArrow( "debugArrow", "vvvdf" );
const idEventDef EV_Thread_DebugCircle( "debugCircle", "vvvfdf" );
const idEventDef EV_Thread_DebugBounds( "debugBounds", "vvvf" );
const idEventDef EV_Thread_DrawText( "drawText", "svfvdf" );
const idEventDef EV_Thread_InfluenceActive( "influenceActive", NULL, 'd' );

CLASS_DECLARATION( idClass, idThread )
	EVENT( EV_Thread_Execute,				idThread::Event_Execute )
	EVENT( EV_Thread_TerminateThread,		idThread::Event_TerminateThread )
	EVENT( EV_Thread_Pause,					idThread::Event_Pause )
	EVENT( EV_Thread_Wait,					idThread::Event_Wait )
	EVENT( EV_Thread_WaitFrame,				idThread::Event_WaitFrame )
	EVENT( EV_Thread_WaitFor,				idThread::Event_WaitFor )
	EVENT( EV_Thread_WaitForThread,			idThread::Event_WaitForThread )
	EVENT( EV_Thread_Print,					idThread::Event_Print )
	EVENT( EV_Thread_PrintLn,				idThread::Event_PrintLn )
	EVENT( EV_Thread_Say,					idThread::Event_Say )
	EVENT( EV_Thread_Assert,				idThread::Event_Assert )
	EVENT( EV_Thread_Trigger,				idThread::Event_Trigger )
	EVENT( EV_Thread_SetCvar,				idThread::Event_SetCvar )
	EVENT( EV_Thread_GetCvar,				idThread::Event_GetCvar )
	EVENT( EV_Thread_Random,				idThread::Event_Random )
	EVENT( EV_Thread_GetTime,				idThread::Event_GetTime )
	EVENT( EV_Thread_KillThread,			idThread::Event_KillThread )
	EVENT( EV_Thread_SetThreadName,			idThread::Event_SetThreadName )
	EVENT( EV_Thread_GetEntity,				idThread::Event_GetEntity )
	EVENT( EV_Thread_Spawn,					idThread::Event_Spawn )
	EVENT( EV_Thread_CopySpawnArgs,			idThread::Event_CopySpawnArgs )
	EVENT( EV_Thread_SetSpawnArg,			idThread::Event_SetSpawnArg )
	EVENT( EV_Thread_SpawnString,			idThread::Event_SpawnString )
	EVENT( EV_Thread_SpawnFloat,			idThread::Event_SpawnFloat )
	EVENT( EV_Thread_SpawnVector,			idThread::Event_SpawnVector )
	EVENT( EV_Thread_ClearPersistantArgs,	idThread::Event_ClearPersistantArgs )
	EVENT( EV_Thread_SetPersistantArg,		idThread::Event_SetPersistantArg )
	EVENT( EV_Thread_GetPersistantString,	idThread::Event_GetPersistantString )
	EVENT( EV_Thread_GetPersistantFloat,	idThread::Event_GetPersistantFloat )
	EVENT( EV_Thread_GetPersistantVector,	idThread::Event_GetPersistantVector )
	EVENT( EV_Thread_AngToForward,			idThread::Event_AngToForward )
	EVENT( EV_Thread_AngToRight,			idThread::Event_AngToRight )
	EVENT( EV_Thread_AngToUp,				idThread::Event_AngToUp )
	EVENT( EV_Thread_Sine,					idThread::Event_GetSine )
	EVENT( EV_Thread_Cosine,				idThread::Event_GetCosine )
	EVENT( EV_Thread_SquareRoot,			idThread::Event_GetSquareRoot )
	EVENT( EV_Thread_Normalize,				idThread::Event_VecNormalize )
	EVENT( EV_Thread_VecLength,				idThread::Event_VecLength )
	EVENT( EV_Thread_VecDotProduct,			idThread::Event_VecDotProduct )
	EVENT( EV_Thread_VecCrossProduct,		idThread::Event_VecCrossProduct )
	EVENT( EV_Thread_VecToAngles,			idThread::Event_VecToAngles )
	EVENT( EV_Thread_OnSignal,				idThread::Event_OnSignal )
	EVENT( EV_Thread_ClearSignal,			idThread::Event_ClearSignalThread )
	EVENT( EV_Thread_SetCamera,				idThread::Event_SetCamera )
	EVENT( EV_Thread_FirstPerson,			idThread::Event_FirstPerson )
	EVENT( EV_Thread_Trace,					idThread::Event_Trace )
	EVENT( EV_Thread_TracePoint,			idThread::Event_TracePoint )
	EVENT( EV_Thread_GetTraceFraction,		idThread::Event_GetTraceFraction )
	EVENT( EV_Thread_GetTraceEndPos,		idThread::Event_GetTraceEndPos )
	EVENT( EV_Thread_GetTraceNormal,		idThread::Event_GetTraceNormal )
	EVENT( EV_Thread_GetTraceEntity,		idThread::Event_GetTraceEntity )
	EVENT( EV_Thread_GetTraceJoint,			idThread::Event_GetTraceJoint )
	EVENT( EV_Thread_GetTraceBody,			idThread::Event_GetTraceBody )
	EVENT( EV_Thread_FadeIn,				idThread::Event_FadeIn )
	EVENT( EV_Thread_FadeOut,				idThread::Event_FadeOut )
	EVENT( EV_Thread_FadeTo,				idThread::Event_FadeTo )
	EVENT( EV_SetShaderParm,				idThread::Event_SetShaderParm )
	EVENT( EV_Thread_StartMusic,			idThread::Event_StartMusic )
	EVENT( EV_Thread_Warning,				idThread::Event_Warning )
	EVENT( EV_Thread_Error,					idThread::Event_Error )
	EVENT( EV_Thread_StrLen,				idThread::Event_StrLen )
	EVENT( EV_Thread_StrLeft,				idThread::Event_StrLeft )
	EVENT( EV_Thread_StrRight,				idThread::Event_StrRight )
	EVENT( EV_Thread_StrSkip,				idThread::Event_StrSkip )
	EVENT( EV_Thread_StrMid,				idThread::Event_StrMid )
	EVENT( EV_Thread_StrToFloat,			idThread::Event_StrToFloat )
	EVENT( EV_Thread_RadiusDamage,			idThread::Event_RadiusDamage )
	EVENT( EV_Thread_IsClient,				idThread::Event_IsClient )
	EVENT( EV_Thread_IsMultiplayer,			idThread::Event_IsMultiplayer )
	EVENT( EV_Thread_GetFrameTime,			idThread::Event_GetFrameTime )
	EVENT( EV_Thread_GetTicsPerSecond,		idThread::Event_GetTicsPerSecond )
	EVENT( EV_CacheSoundShader,				idThread::Event_CacheSoundShader )
	EVENT( EV_Thread_DebugLine,				idThread::Event_DebugLine )
	EVENT( EV_Thread_DebugArrow,			idThread::Event_DebugArrow )
	EVENT( EV_Thread_DebugCircle,			idThread::Event_DebugCircle )
	EVENT( EV_Thread_DebugBounds,			idThread::Event_DebugBounds )
	EVENT( EV_Thread_DrawText,				idThread::Event_DrawText )
	EVENT( EV_Thread_InfluenceActive,		idThread::Event_InfluenceActive )
END_CLASS

idThread			*idThread::currentThread = NULL;
int					idThread::threadIndex = 0;
idList<idThread *>	idThread::threadList;
trace_t				idThread::trace;

/*
================
idThread::CurrentThread
================
*/
idThread *idThread::CurrentThread( void ) {
    Sys_Printf("idThread *idThread::CurrentThread( void )\r\n");
    return NULL;
}


/*
================
idThread::CurrentThreadNum
================
*/
int idThread::CurrentThreadNum( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idThread::CurrentThreadNum( void )\r\n");
    return retVal;
}


/*
================
idThread::BeginMultiFrameEvent
================
*/
bool idThread::BeginMultiFrameEvent( idEntity *ent, const idEventDef *event ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idThread::BeginMultiFrameEvent( idEntity *ent, const idEventDef *event )\r\n");
    return retVal;
}


/*
================
idThread::EndMultiFrameEvent
================
*/
void idThread::EndMultiFrameEvent( idEntity *ent, const idEventDef *event ) {
    Sys_Printf("void idThread::EndMultiFrameEvent( idEntity *ent, const idEventDef *event )\r\n");
}


/*
================
idThread::idThread
================
*/
idThread::idThread() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idThread::idThread() size %d\r\n", sizeof(*this));
#endif

	Init();
	SetThreadName( va( "thread_%d", threadIndex ) );
	if ( g_debugScript.GetBool() ) {
		gameLocal.Printf( "%d: create thread (%d) '%s'\n", gameLocal.time, threadNum, threadName.c_str() );
	}
}

/*
================
idThread::idThread
================
*/
idThread::idThread( idEntity *self, const function_t *func ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idThread::idThread( idEntity *self, const function_t *func ) size %d\r\n", sizeof(*this));
#endif

	assert( self );
	
	Init();
	SetThreadName( self->name );
	interpreter.EnterObjectFunction( self, func, false );
	if ( g_debugScript.GetBool() ) {
		gameLocal.Printf( "%d: create thread (%d) '%s'\n", gameLocal.time, threadNum, threadName.c_str() );
	}
}

/*
================
idThread::idThread
================
*/
idThread::idThread( const function_t *func ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idThread::idThread( const function_t *func ) size %d\r\n", sizeof(*this));
#endif

	assert( func );

	Init();
	SetThreadName( func->Name() );
	interpreter.EnterFunction( func, false );
	if ( g_debugScript.GetBool() ) {
		gameLocal.Printf( "%d: create thread (%d) '%s'\n", gameLocal.time, threadNum, threadName.c_str() );
	}
}

/*
================
idThread::idThread
================
*/
idThread::idThread( idInterpreter *source, const function_t *func, int args ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idThread::idThread( idInterpreter *source, const function_t *func, int args ) size %d\r\n", sizeof(*this));
#endif

	Init();
	interpreter.ThreadCall( source, func, args );
	if ( g_debugScript.GetBool() ) {
		gameLocal.Printf( "%d: create thread (%d) '%s'\n", gameLocal.time, threadNum, threadName.c_str() );
	}
}

/*
================
idThread::idThread
================
*/
idThread::idThread( idInterpreter *source, idEntity *self, const function_t *func, int args ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idThread::idThread( idInterpreter *source, idEntity *self, const function_t *func, int args ) size %d\r\n", sizeof(*this));
#endif

	assert( self );

	Init();
	SetThreadName( self->name );
	interpreter.ThreadCall( source, func, args );
	if ( g_debugScript.GetBool() ) {
		gameLocal.Printf( "%d: create thread (%d) '%s'\n", gameLocal.time, threadNum, threadName.c_str() );
	}
}

/*
================
idThread::~idThread
================
*/
idThread::~idThread() {
	idThread	*thread;
	int			i;
	int			n;

	if ( g_debugScript.GetBool() ) {
		gameLocal.Printf( "%d: end thread (%d) '%s'\n", gameLocal.time, threadNum, threadName.c_str() );
	}
	threadList.Remove( this );
	n = threadList.Num();
	for( i = 0; i < n; i++ ) {
		thread = threadList[ i ];
		if ( thread->WaitingOnThread() == this ) {
			thread->ThreadCallback( this );
		}
	}

	if ( currentThread == this ) {
		currentThread = NULL;
	}
}

/*
================
idThread::ManualDelete
================
*/
void idThread::ManualDelete( void ) {
    Sys_Printf("void idThread::ManualDelete( void )\r\n");
}


/*
================
idThread::Save
================
*/
void idThread::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idThread::Save( idSaveGame *savefile )\r\n");
}


/*
================
idThread::Restore
================
*/
void idThread::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idThread::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idThread::Init
================
*/
void idThread::Init( void ) {
    Sys_Printf("void idThread::Init( void )\r\n");
}


/*
================
idThread::GetThread
================
*/
idThread *idThread::GetThread( int num ) {
    Sys_Printf("idThread *idThread::GetThread( int num )\r\n");
    return NULL;
}


/*
================
idThread::DisplayInfo
================
*/
void idThread::DisplayInfo( void ) {
    Sys_Printf("void idThread::DisplayInfo( void )\r\n");
}


/*
================
idThread::ListThreads_f
================
*/
void idThread::ListThreads_f( const idCmdArgs &args ) {
    Sys_Printf("void idThread::ListThreads_f( const idCmdArgs &args )\r\n");
}


/*
================
idThread::Restart
================
*/
void idThread::Restart( void ) {
    Sys_Printf("void idThread::Restart( void )\r\n");
}


/*
================
idThread::DelayedStart
================
*/
void idThread::DelayedStart( int delay ) {
    Sys_Printf("void idThread::DelayedStart( int delay )\r\n");
}


/*
================
idThread::Start
================
*/
bool idThread::Start( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idThread::Start( void )\r\n");
    return retVal;
}


/*
================
idThread::SetThreadName
================
*/
void idThread::SetThreadName( const char *name ) {
    Sys_Printf("void idThread::SetThreadName( const char *name )\r\n");
}


/*
================
idThread::ObjectMoveDone
================
*/
void idThread::ObjectMoveDone( int threadnum, idEntity *obj ) {
    Sys_Printf("void idThread::ObjectMoveDone( int threadnum, idEntity *obj )\r\n");
}


/*
================
idThread::End
================
*/
void idThread::End( void ) {
    Sys_Printf("void idThread::End( void )\r\n");
}


/*
================
idThread::KillThread
================
*/
void idThread::KillThread( const char *name ) {
    Sys_Printf("void idThread::KillThread( const char *name )\r\n");
}


/*
================
idThread::KillThread
================
*/
void idThread::KillThread( int num ) {
    Sys_Printf("void idThread::KillThread( int num )\r\n");
}


/*
================
idThread::Execute
================
*/
bool idThread::Execute( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idThread::Execute( void )\r\n");
    return retVal;
}


/*
================
idThread::IsWaiting

Checks if thread is still waiting for some event to occur.
================
*/
bool idThread::IsWaiting( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idThread::IsWaiting( void )\r\n");
    return retVal;
}


/*
================
idThread::CallFunction

NOTE: If this is called from within a event called by this thread, the function arguments will be invalid after calling this function.
================
*/
void idThread::CallFunction( const function_t *func, bool clearStack ) {
    Sys_Printf("void idThread::CallFunction( const function_t *func, bool clearStack )\r\n");
}


/*
================
idThread::CallFunction

NOTE: If this is called from within a event called by this thread, the function arguments will be invalid after calling this function.
================
*/
void idThread::CallFunction( idEntity *self, const function_t *func, bool clearStack ) {
    Sys_Printf("void idThread::CallFunction( idEntity *self, const function_t *func, bool clearStack )\r\n");
}


/*
================
idThread::ClearWaitFor
================
*/
void idThread::ClearWaitFor( void ) {
    Sys_Printf("void idThread::ClearWaitFor( void )\r\n");
}


/*
================
idThread::IsWaitingFor
================
*/
bool idThread::IsWaitingFor( idEntity *obj ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idThread::IsWaitingFor( idEntity *obj )\r\n");
    return retVal;
}


/*
================
idThread::ObjectMoveDone
================
*/
void idThread::ObjectMoveDone( idEntity *obj ) {
    Sys_Printf("void idThread::ObjectMoveDone( idEntity *obj )\r\n");
}


/*
================
idThread::ThreadCallback
================
*/
void idThread::ThreadCallback( idThread *thread ) {
    Sys_Printf("void idThread::ThreadCallback( idThread *thread )\r\n");
}


/*
================
idThread::Event_SetThreadName
================
*/
void idThread::Event_SetThreadName( const char *name ) {
    Sys_Printf("void idThread::Event_SetThreadName( const char *name )\r\n");
}


/*
================
idThread::Error
================
*/
void idThread::Error( const char *fmt, ... ) const {
    Sys_Printf("void idThread::Error( const char *fmt, ... )\r\n");
}


/*
================
idThread::Warning
================
*/
void idThread::Warning( const char *fmt, ... ) const {
    Sys_Printf("void idThread::Warning( const char *fmt, ... )\r\n");
}


/*
================
idThread::ReturnString
================
*/
void idThread::ReturnString( const char *text ) {
    Sys_Printf("void idThread::ReturnString( const char *text )\r\n");
}


/*
================
idThread::ReturnFloat
================
*/
void idThread::ReturnFloat( float value ) {
    Sys_Printf("void idThread::ReturnFloat( float value )\r\n");
}


/*
================
idThread::ReturnInt
================
*/
void idThread::ReturnInt( int value ) {
    Sys_Printf("void idThread::ReturnInt( int value )\r\n");
}


/*
================
idThread::ReturnVector
================
*/
void idThread::ReturnVector( idVec3 const &vec ) {
    Sys_Printf("void idThread::ReturnVector( idVec3 const &vec )\r\n");
}


/*
================
idThread::ReturnEntity
================
*/
void idThread::ReturnEntity( idEntity *ent ) {
    Sys_Printf("void idThread::ReturnEntity( idEntity *ent )\r\n");
}


/*
================
idThread::Event_Execute
================
*/
void idThread::Event_Execute( void ) {
    Sys_Printf("void idThread::Event_Execute( void )\r\n");
}


/*
================
idThread::Pause
================
*/
void idThread::Pause( void ) {
    Sys_Printf("void idThread::Pause( void )\r\n");
}


/*
================
idThread::WaitMS
================
*/
void idThread::WaitMS( int time ) {
    Sys_Printf("void idThread::WaitMS( int time )\r\n");
}


/*
================
idThread::WaitSec
================
*/
void idThread::WaitSec( float time ) {
    Sys_Printf("void idThread::WaitSec( float time )\r\n");
}


/*
================
idThread::WaitFrame
================
*/
void idThread::WaitFrame( void ) {
    Sys_Printf("void idThread::WaitFrame( void )\r\n");
}


/***********************************************************************

  Script callable events  
	
***********************************************************************/

/*
================
idThread::Event_TerminateThread
================
*/
void idThread::Event_TerminateThread( int num ) {
    Sys_Printf("void idThread::Event_TerminateThread( int num )\r\n");
}


/*
================
idThread::Event_Pause
================
*/
void idThread::Event_Pause( void ) {
    Sys_Printf("void idThread::Event_Pause( void )\r\n");
}


/*
================
idThread::Event_Wait
================
*/
void idThread::Event_Wait( float time ) {
    Sys_Printf("void idThread::Event_Wait( float time )\r\n");
}


/*
================
idThread::Event_WaitFrame
================
*/
void idThread::Event_WaitFrame( void ) {
    Sys_Printf("void idThread::Event_WaitFrame( void )\r\n");
}


/*
================
idThread::Event_WaitFor
================
*/
void idThread::Event_WaitFor( idEntity *ent ) {
    Sys_Printf("void idThread::Event_WaitFor( idEntity *ent )\r\n");
}


/*
================
idThread::Event_WaitForThread
================
*/
void idThread::Event_WaitForThread( int num ) {
    Sys_Printf("void idThread::Event_WaitForThread( int num )\r\n");
}


/*
================
idThread::Event_Print
================
*/
void idThread::Event_Print( const char *text ) {
    Sys_Printf("void idThread::Event_Print( const char *text )\r\n");
}


/*
================
idThread::Event_PrintLn
================
*/
void idThread::Event_PrintLn( const char *text ) {
    Sys_Printf("void idThread::Event_PrintLn( const char *text )\r\n");
}


/*
================
idThread::Event_Say
================
*/
void idThread::Event_Say( const char *text ) {
    Sys_Printf("void idThread::Event_Say( const char *text )\r\n");
}


/*
================
idThread::Event_Assert
================
*/
void idThread::Event_Assert( float value ) {
    Sys_Printf("void idThread::Event_Assert( float value )\r\n");
}


/*
================
idThread::Event_Trigger
================
*/
void idThread::Event_Trigger( idEntity *ent ) {
    Sys_Printf("void idThread::Event_Trigger( idEntity *ent )\r\n");
}


/*
================
idThread::Event_SetCvar
================
*/
void idThread::Event_SetCvar( const char *name, const char *value ) const {
    Sys_Printf("void idThread::Event_SetCvar( const char *name, const char *value )\r\n");
}


/*
================
idThread::Event_GetCvar
================
*/
void idThread::Event_GetCvar( const char *name ) const {
    Sys_Printf("void idThread::Event_GetCvar( const char *name )\r\n");
}


/*
================
idThread::Event_Random
================
*/
void idThread::Event_Random( float range ) const {
    Sys_Printf("void idThread::Event_Random( float range )\r\n");
}


/*
================
idThread::Event_GetTime
================
*/
void idThread::Event_GetTime( void ) {
    Sys_Printf("void idThread::Event_GetTime( void )\r\n");
}


/*
================
idThread::Event_KillThread
================
*/
void idThread::Event_KillThread( const char *name ) {
    Sys_Printf("void idThread::Event_KillThread( const char *name )\r\n");
}


/*
================
idThread::Event_GetEntity
================
*/
void idThread::Event_GetEntity( const char *name ) {
    Sys_Printf("void idThread::Event_GetEntity( const char *name )\r\n");
}


/*
================
idThread::Event_Spawn
================
*/
void idThread::Event_Spawn( const char *classname ) {
    Sys_Printf("void idThread::Event_Spawn( const char *classname )\r\n");
}


/*
================
idThread::Event_CopySpawnArgs
================
*/
void idThread::Event_CopySpawnArgs( idEntity *ent ) {
    Sys_Printf("void idThread::Event_CopySpawnArgs( idEntity *ent )\r\n");
}


/*
================
idThread::Event_SetSpawnArg
================
*/
void idThread::Event_SetSpawnArg( const char *key, const char *value ) {
    Sys_Printf("void idThread::Event_SetSpawnArg( const char *key, const char *value )\r\n");
}


/*
================
idThread::Event_SpawnString
================
*/
void idThread::Event_SpawnString( const char *key, const char *defaultvalue ) {
    Sys_Printf("void idThread::Event_SpawnString( const char *key, const char *defaultvalue )\r\n");
}


/*
================
idThread::Event_SpawnFloat
================
*/
void idThread::Event_SpawnFloat( const char *key, float defaultvalue ) {
    Sys_Printf("void idThread::Event_SpawnFloat( const char *key, float defaultvalue )\r\n");
}


/*
================
idThread::Event_SpawnVector
================
*/
void idThread::Event_SpawnVector( const char *key, idVec3 &defaultvalue ) {
    Sys_Printf("void idThread::Event_SpawnVector( const char *key, idVec3 &defaultvalue )\r\n");
}


/*
================
idThread::Event_ClearPersistantArgs
================
*/
void idThread::Event_ClearPersistantArgs( void ) {
    Sys_Printf("void idThread::Event_ClearPersistantArgs( void )\r\n");
}



/*
================
idThread::Event_SetPersistantArg
================
*/
void idThread::Event_SetPersistantArg( const char *key, const char *value ) {
    Sys_Printf("void idThread::Event_SetPersistantArg( const char *key, const char *value )\r\n");
}


/*
================
idThread::Event_GetPersistantString
================
*/
void idThread::Event_GetPersistantString( const char *key ) {
    Sys_Printf("void idThread::Event_GetPersistantString( const char *key )\r\n");
}


/*
================
idThread::Event_GetPersistantFloat
================
*/
void idThread::Event_GetPersistantFloat( const char *key ) {
    Sys_Printf("void idThread::Event_GetPersistantFloat( const char *key )\r\n");
}


/*
================
idThread::Event_GetPersistantVector
================
*/
void idThread::Event_GetPersistantVector( const char *key ) {
    Sys_Printf("void idThread::Event_GetPersistantVector( const char *key )\r\n");
}


/*
================
idThread::Event_AngToForward
================
*/
void idThread::Event_AngToForward( idAngles &ang ) {
    Sys_Printf("void idThread::Event_AngToForward( idAngles &ang )\r\n");
}


/*
================
idThread::Event_AngToRight
================
*/
void idThread::Event_AngToRight( idAngles &ang ) {
    Sys_Printf("void idThread::Event_AngToRight( idAngles &ang )\r\n");
}


/*
================
idThread::Event_AngToUp
================
*/
void idThread::Event_AngToUp( idAngles &ang ) {
    Sys_Printf("void idThread::Event_AngToUp( idAngles &ang )\r\n");
}


/*
================
idThread::Event_GetSine
================
*/
void idThread::Event_GetSine( float angle ) {
    Sys_Printf("void idThread::Event_GetSine( float angle )\r\n");
}


/*
================
idThread::Event_GetCosine
================
*/
void idThread::Event_GetCosine( float angle ) {
    Sys_Printf("void idThread::Event_GetCosine( float angle )\r\n");
}


/*
================
idThread::Event_GetSquareRoot
================
*/
void idThread::Event_GetSquareRoot( float theSquare ) {
    Sys_Printf("void idThread::Event_GetSquareRoot( float theSquare )\r\n");
}


/*
================
idThread::Event_VecNormalize
================
*/
void idThread::Event_VecNormalize( idVec3 &vec ) {
    Sys_Printf("void idThread::Event_VecNormalize( idVec3 &vec )\r\n");
}


/*
================
idThread::Event_VecLength
================
*/
void idThread::Event_VecLength( idVec3 &vec ) {
    Sys_Printf("void idThread::Event_VecLength( idVec3 &vec )\r\n");
}


/*
================
idThread::Event_VecDotProduct
================
*/
void idThread::Event_VecDotProduct( idVec3 &vec1, idVec3 &vec2 ) {
    Sys_Printf("void idThread::Event_VecDotProduct( idVec3 &vec1, idVec3 &vec2 )\r\n");
}


/*
================
idThread::Event_VecCrossProduct
================
*/
void idThread::Event_VecCrossProduct( idVec3 &vec1, idVec3 &vec2 ) {
    Sys_Printf("void idThread::Event_VecCrossProduct( idVec3 &vec1, idVec3 &vec2 )\r\n");
}


/*
================
idThread::Event_VecToAngles
================
*/
void idThread::Event_VecToAngles( idVec3 &vec ) {
    Sys_Printf("void idThread::Event_VecToAngles( idVec3 &vec )\r\n");
}


/*
================
idThread::Event_OnSignal
================
*/
void idThread::Event_OnSignal( int signal, idEntity *ent, const char *func ) {
    Sys_Printf("void idThread::Event_OnSignal( int signal, idEntity *ent, const char *func )\r\n");
}


/*
================
idThread::Event_ClearSignalThread
================
*/
void idThread::Event_ClearSignalThread( int signal, idEntity *ent ) {
    Sys_Printf("void idThread::Event_ClearSignalThread( int signal, idEntity *ent )\r\n");
}


/*
================
idThread::Event_SetCamera
================
*/
void idThread::Event_SetCamera( idEntity *ent ) {
    Sys_Printf("void idThread::Event_SetCamera( idEntity *ent )\r\n");
}


/*
================
idThread::Event_FirstPerson
================
*/
void idThread::Event_FirstPerson( void ) {
    Sys_Printf("void idThread::Event_FirstPerson( void )\r\n");
}


/*
================
idThread::Event_Trace
================
*/
void idThread::Event_Trace( const idVec3 &start, const idVec3 &end, const idVec3 &mins, const idVec3 &maxs, int contents_mask, idEntity *passEntity ) {
    Sys_Printf("void idThread::Event_Trace( const idVec3 &start, const idVec3 &end, const idVec3 &mins, const idVec3 &maxs, int contents_mask, idEntity *passEntity )\r\n");
}


/*
================
idThread::Event_TracePoint
================
*/
void idThread::Event_TracePoint( const idVec3 &start, const idVec3 &end, int contents_mask, idEntity *passEntity ) {
    Sys_Printf("void idThread::Event_TracePoint( const idVec3 &start, const idVec3 &end, int contents_mask, idEntity *passEntity )\r\n");
}


/*
================
idThread::Event_GetTraceFraction
================
*/
void idThread::Event_GetTraceFraction( void ) {
    Sys_Printf("void idThread::Event_GetTraceFraction( void )\r\n");
}


/*
================
idThread::Event_GetTraceEndPos
================
*/
void idThread::Event_GetTraceEndPos( void ) {
    Sys_Printf("void idThread::Event_GetTraceEndPos( void )\r\n");
}


/*
================
idThread::Event_GetTraceNormal
================
*/
void idThread::Event_GetTraceNormal( void ) {
    Sys_Printf("void idThread::Event_GetTraceNormal( void )\r\n");
}


/*
================
idThread::Event_GetTraceEntity
================
*/
void idThread::Event_GetTraceEntity( void ) {
    Sys_Printf("void idThread::Event_GetTraceEntity( void )\r\n");
}


/*
================
idThread::Event_GetTraceJoint
================
*/
void idThread::Event_GetTraceJoint( void ) {
    Sys_Printf("void idThread::Event_GetTraceJoint( void )\r\n");
}


/*
================
idThread::Event_GetTraceBody
================
*/
void idThread::Event_GetTraceBody( void ) {
    Sys_Printf("void idThread::Event_GetTraceBody( void )\r\n");
}


/*
================
idThread::Event_FadeIn
================
*/
void idThread::Event_FadeIn( idVec3 &color, float time ) {
    Sys_Printf("void idThread::Event_FadeIn( idVec3 &color, float time )\r\n");
}


/*
================
idThread::Event_FadeOut
================
*/
void idThread::Event_FadeOut( idVec3 &color, float time ) {
    Sys_Printf("void idThread::Event_FadeOut( idVec3 &color, float time )\r\n");
}


/*
================
idThread::Event_FadeTo
================
*/
void idThread::Event_FadeTo( idVec3 &color, float alpha, float time ) {
    Sys_Printf("void idThread::Event_FadeTo( idVec3 &color, float alpha, float time )\r\n");
}


/*
================
idThread::Event_SetShaderParm
================
*/
void idThread::Event_SetShaderParm( int parmnum, float value ) {
    Sys_Printf("void idThread::Event_SetShaderParm( int parmnum, float value )\r\n");
}


/*
================
idThread::Event_StartMusic
================
*/
void idThread::Event_StartMusic( const char *text ) {
    Sys_Printf("void idThread::Event_StartMusic( const char *text )\r\n");
}


/*
================
idThread::Event_Warning
================
*/
void idThread::Event_Warning( const char *text ) {
    Sys_Printf("void idThread::Event_Warning( const char *text )\r\n");
}


/*
================
idThread::Event_Error
================
*/
void idThread::Event_Error( const char *text ) {
    Sys_Printf("void idThread::Event_Error( const char *text )\r\n");
}


/*
================
idThread::Event_StrLen
================
*/
void idThread::Event_StrLen( const char *string ) {
    Sys_Printf("void idThread::Event_StrLen( const char *string )\r\n");
}


/*
================
idThread::Event_StrLeft
================
*/
void idThread::Event_StrLeft( const char *string, int num ) {
    Sys_Printf("void idThread::Event_StrLeft( const char *string, int num )\r\n");
}


/*
================
idThread::Event_StrRight 
================
*/
void idThread::Event_StrRight( const char *string, int num ) {
    Sys_Printf("void idThread::Event_StrRight( const char *string, int num )\r\n");
}


/*
================
idThread::Event_StrSkip
================
*/
void idThread::Event_StrSkip( const char *string, int num ) {
    Sys_Printf("void idThread::Event_StrSkip( const char *string, int num )\r\n");
}


/*
================
idThread::Event_StrMid
================
*/
void idThread::Event_StrMid( const char *string, int start, int num ) {
    Sys_Printf("void idThread::Event_StrMid( const char *string, int start, int num )\r\n");
}


/*
================
idThread::Event_StrToFloat( const char *string )
================
*/
void idThread::Event_StrToFloat( const char *string ) {
    Sys_Printf("void idThread::Event_StrToFloat( const char *string )\r\n");
}


/*
================
idThread::Event_RadiusDamage
================
*/
void idThread::Event_RadiusDamage( const idVec3 &origin, idEntity *inflictor, idEntity *attacker, idEntity *ignore, const char *damageDefName, float dmgPower ) {
    Sys_Printf("void idThread::Event_RadiusDamage( const idVec3 &origin, idEntity *inflictor, idEntity *attacker, idEntity *ignore, const char *damageDefName, float dmgPower )\r\n");
}


/*
================
idThread::Event_IsClient
================
*/
void idThread::Event_IsClient( void ) {
    Sys_Printf("void idThread::Event_IsClient( void )\r\n");
}


/*
================
idThread::Event_IsMultiplayer
================
*/
void idThread::Event_IsMultiplayer( void ) {
    Sys_Printf("void idThread::Event_IsMultiplayer( void )\r\n");
}


/*
================
idThread::Event_GetFrameTime
================
*/
void idThread::Event_GetFrameTime( void ) {
    Sys_Printf("void idThread::Event_GetFrameTime( void )\r\n");
}


/*
================
idThread::Event_GetTicsPerSecond
================
*/
void idThread::Event_GetTicsPerSecond( void ) {
    Sys_Printf("void idThread::Event_GetTicsPerSecond( void )\r\n");
}


/*
================
idThread::Event_CacheSoundShader
================
*/
void idThread::Event_CacheSoundShader( const char *soundName ) {
    Sys_Printf("void idThread::Event_CacheSoundShader( const char *soundName )\r\n");
}


/*
================
idThread::Event_DebugLine
================
*/
void idThread::Event_DebugLine( const idVec3 &color, const idVec3 &start, const idVec3 &end, const float lifetime ) {
    Sys_Printf("void idThread::Event_DebugLine( const idVec3 &color, const idVec3 &start, const idVec3 &end, const float lifetime )\r\n");
}


/*
================
idThread::Event_DebugArrow
================
*/
void idThread::Event_DebugArrow( const idVec3 &color, const idVec3 &start, const idVec3 &end, const int size, const float lifetime ) {
    Sys_Printf("void idThread::Event_DebugArrow( const idVec3 &color, const idVec3 &start, const idVec3 &end, const int size, const float lifetime )\r\n");
}


/*
================
idThread::Event_DebugCircle
================
*/
void idThread::Event_DebugCircle( const idVec3 &color, const idVec3 &origin, const idVec3 &dir, const float radius, const int numSteps, const float lifetime ) {
    Sys_Printf("void idThread::Event_DebugCircle( const idVec3 &color, const idVec3 &origin, const idVec3 &dir, const float radius, const int numSteps, const float lifetime )\r\n");
}


/*
================
idThread::Event_DebugBounds
================
*/
void idThread::Event_DebugBounds( const idVec3 &color, const idVec3 &mins, const idVec3 &maxs, const float lifetime ) {
    Sys_Printf("void idThread::Event_DebugBounds( const idVec3 &color, const idVec3 &mins, const idVec3 &maxs, const float lifetime )\r\n");
}


/*
================
idThread::Event_DrawText
================
*/
void idThread::Event_DrawText( const char *text, const idVec3 &origin, float scale, const idVec3 &color, const int align, const float lifetime ) {
    Sys_Printf("void idThread::Event_DrawText( const char *text, const idVec3 &origin, float scale, const idVec3 &color, const int align, const float lifetime )\r\n");
}


/*
================
idThread::Event_InfluenceActive
================
*/
void idThread::Event_InfluenceActive( void ) {
    Sys_Printf("void idThread::Event_InfluenceActive( void )\r\n");
}

