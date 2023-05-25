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
#include "sys_local.h"

const char * sysLanguageNames[] = {
	"english", "spanish", "italian", "german", "french", "russian", 
	"polish", "korean", "japanese", "chinese", NULL
};

idCVar sys_lang( "sys_lang", "english", CVAR_SYSTEM | CVAR_ARCHIVE,  "", sysLanguageNames, idCmdSystem::ArgCompletion_String<sysLanguageNames> );

idSysLocal			sysLocal;
idSys *				sys = &sysLocal;

void idSysLocal::DebugPrintf( const char *fmt, ... ) {
    Sys_Printf("void idSysLocal::DebugPrintf( const char *fmt, ... )\r\n");
}


void idSysLocal::DebugVPrintf( const char *fmt, va_list arg ) {
    Sys_Printf("void idSysLocal::DebugVPrintf( const char *fmt, va_list arg )\r\n");
}


double idSysLocal::GetClockTicks( void ) {
    return Sys_GetClockTicks();
}


double idSysLocal::ClockTicksPerSecond( void ) {
    return Sys_ClockTicksPerSecond();
}


cpuid_t idSysLocal::GetProcessorId( void ) {
    cpuid_t retVal;
    memset(&retVal, 0, sizeof(cpuid_t));
    Sys_Printf("cpuid_t idSysLocal::GetProcessorId( void )\r\n");
    return retVal;
}


const char *idSysLocal::GetProcessorString( void ) {
    return "PowerPC Gekko @720Mhz";
}


const char *idSysLocal::FPU_GetState( void ) {
    Sys_Printf("char *idSysLocal::FPU_GetState( void )\r\n");
    return NULL;
}


bool idSysLocal::FPU_StackIsEmpty( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSysLocal::FPU_StackIsEmpty( void )\r\n");
    return retVal;
}


void idSysLocal::FPU_SetFTZ( bool enable ) {
    Sys_Printf("void idSysLocal::FPU_SetFTZ( bool enable )\r\n");
}


void idSysLocal::FPU_SetDAZ( bool enable ) {
    Sys_Printf("void idSysLocal::FPU_SetDAZ( bool enable )\r\n");
}


bool idSysLocal::LockMemory( void *ptr, int bytes ) {
    // DRS TODO: call system func that returns true (posix_main.cpp returns true)
	return true;
}


bool idSysLocal::UnlockMemory( void *ptr, int bytes ) {
    // DRS TODO: call system func that returns true (posix_main.cpp returns true)
	return true;
}


void idSysLocal::GetCallStack( address_t *callStack, const int callStackSize ) {
    Sys_Printf("void idSysLocal::GetCallStack( address_t *callStack, const int callStackSize )\r\n");
}


const char * idSysLocal::GetCallStackStr( const address_t *callStack, const int callStackSize ) {
    Sys_Printf("char * idSysLocal::GetCallStackStr( const address_t *callStack, const int callStackSize )\r\n");
    return NULL;
}


const char * idSysLocal::GetCallStackCurStr( int depth ) {
    Sys_Printf("char * idSysLocal::GetCallStackCurStr( int depth )\r\n");
    return NULL;
}


void idSysLocal::ShutdownSymbols( void ) {
    Sys_Printf("void idSysLocal::ShutdownSymbols( void )\r\n");
}


int idSysLocal::DLL_Load( const char *dllName ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSysLocal::DLL_Load( const char *dllName )\r\n");
    return retVal;
}


void *idSysLocal::DLL_GetProcAddress( int dllHandle, const char *procName ) {
    Sys_Printf("void *idSysLocal::DLL_GetProcAddress( int dllHandle, const char *procName )\r\n");
    return NULL;
}


void idSysLocal::DLL_Unload( int dllHandle ) {
    Sys_Printf("void idSysLocal::DLL_Unload( int dllHandle )\r\n");
}


void idSysLocal::DLL_GetFileName( const char *baseName, char *dllName, int maxLength ) {
    Sys_Printf("void idSysLocal::DLL_GetFileName( const char *baseName, char *dllName, int maxLength )\r\n");
}


sysEvent_t idSysLocal::GenerateMouseButtonEvent( int button, bool down ) {
	sysEvent_t ev;
	ev.evType = SE_KEY;
	ev.evValue = K_MOUSE1 + button - 1;
	ev.evValue2 = down;
	ev.evPtrLength = 0;
	ev.evPtr = NULL;
	return ev;
}

sysEvent_t idSysLocal::GenerateMouseMoveEvent( int deltax, int deltay ) {
	sysEvent_t ev;
	ev.evType = SE_MOUSE;
	ev.evValue = deltax;
	ev.evValue2 = deltay;
	ev.evPtrLength = 0;
	ev.evPtr = NULL;
	return ev;
}


void idSysLocal::FPU_EnableExceptions( int exceptions ) {
    Sys_Printf("void idSysLocal::FPU_EnableExceptions( int exceptions )\r\n");
}


/*
=================
Sys_TimeStampToStr
=================
*/
const char *Sys_TimeStampToStr( ID_TIME_T timeStamp ) {
	static char timeString[MAX_STRING_CHARS];
	timeString[0] = '\0';

	tm*	time = localtime( &timeStamp );
	idStr out;

	idStr lang = cvarSystem->GetCVarString( "sys_lang" );
	if ( lang.Icmp( "english" ) == 0 ) {
		// english gets "month/day/year  hour:min" + "am" or "pm"
		out = va( "%02d", time->tm_mon + 1 );
		out += "/";
		out += va( "%02d", time->tm_mday );
		out += "/";
		out += va( "%d", time->tm_year + 1900 );
		out += "\t";
		if ( time->tm_hour > 12 ) {
			out += va( "%02d", time->tm_hour - 12 );
		} else if ( time->tm_hour == 0 ) {
				out += "12";
		} else {
			out += va( "%02d", time->tm_hour );
		}
		out += ":";
		out +=va( "%02d", time->tm_min );
		if ( time->tm_hour >= 12 ) {
			out += "pm";
		} else {
			out += "am";
		}
	} else {
		// europeans get "day/month/year  24hour:min"
		out = va( "%02d", time->tm_mday );
		out += "/";
		out += va( "%02d", time->tm_mon + 1 );
		out += "/";
		out += va( "%d", time->tm_year + 1900 );
		out += "\t";
		out += va( "%02d", time->tm_hour );
		out += ":";
		out += va( "%02d", time->tm_min );
	}
	idStr::Copynz( timeString, out, sizeof( timeString ) );

	return timeString;
}


