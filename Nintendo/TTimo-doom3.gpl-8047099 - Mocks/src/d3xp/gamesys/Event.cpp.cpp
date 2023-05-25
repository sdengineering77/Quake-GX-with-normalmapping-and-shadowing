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
/*
sys_event.cpp

Event are used for scheduling tasks and for linking script commands.

*/

#include "../../idlib/precompiled.h"
#pragma hdrstop

#include "../Game_local.h"

#define MAX_EVENTSPERFRAME			4096
//#define CREATE_EVENT_CODE

/***********************************************************************

  idEventDef

***********************************************************************/

idEventDef *idEventDef::eventDefList[MAX_EVENTS];
int idEventDef::numEventDefs = 0;

static bool eventError = false;
static char eventErrorMsg[ 128 ];

/*
================
idEventDef::idEventDef
================
*/
idEventDef::idEventDef( const char *command, const char *formatspec, char returnType ) {
	idEventDef	*ev;
	int			i;
	unsigned int	bits;

	assert( command );
	assert( !idEvent::initialized );

	// Allow NULL to indicate no args, but always store it as ""
	// so we don't have to check for it.
	if ( !formatspec ) {
		formatspec = "";
	}

	this->name = command;
	this->formatspec = formatspec;
	this->returnType = returnType;

	numargs = strlen( formatspec );
	assert( numargs <= D_EVENT_MAXARGS );
	if ( numargs > D_EVENT_MAXARGS ) {
		eventError = true;
		sprintf( eventErrorMsg, "idEventDef::idEventDef : Too many args for '%s' event.", name );
		return;
	}

	// make sure the format for the args is valid, calculate the formatspecindex, and the offsets for each arg
	bits = 0;
	argsize = 0;
	memset( argOffset, 0, sizeof( argOffset ) );
	for( i = 0; i < numargs;i++ ) {
		argOffset[ i ] = argsize;
		switch( formatspec[ i ] ) {
		case D_EVENT_FLOAT :
			bits |= 1 << i;
			argsize += sizeof( float );
			break;

		case D_EVENT_INTEGER :
			argsize += sizeof( int );
			break;

		case D_EVENT_VECTOR :
			argsize += sizeof( idVec3 );
			break;

		case D_EVENT_STRING :
			argsize += MAX_STRING_LEN;
			break;

		case D_EVENT_ENTITY :
			argsize += sizeof( idEntityPtr<idEntity> );
			break;

		case D_EVENT_ENTITY_NULL :
			argsize += sizeof( idEntityPtr<idEntity> );
			break;

		case D_EVENT_TRACE :
			argsize += sizeof( trace_t ) + MAX_STRING_LEN + sizeof( bool );
			break;

		default :
			eventError = true;
			sprintf( eventErrorMsg, "idEventDef::idEventDef : Invalid arg format '%s' string for '%s' event.", formatspec, name );
			return;
			break;
		}
	}

	// calculate the formatspecindex
	formatspecIndex = ( 1 << ( numargs + D_EVENT_MAXARGS ) ) | bits;

	// go through the list of defined events and check for duplicates
	// and mismatched format strings
	eventnum = numEventDefs;
	for( i = 0; i < eventnum; i++ ) {
		ev = eventDefList[ i ];
		if ( strcmp( command, ev->name ) == 0 ) {
			if ( strcmp( formatspec, ev->formatspec ) != 0 ) {
				eventError = true;
				sprintf( eventErrorMsg, "idEvent '%s' defined twice with same name but differing format strings ('%s'!='%s').",
					command, formatspec, ev->formatspec );
				return;
			}

			if ( ev->returnType != returnType ) {
				eventError = true;
				sprintf( eventErrorMsg, "idEvent '%s' defined twice with same name but differing return types ('%c'!='%c').",
					command, returnType, ev->returnType );
				return;
			}
			// Don't bother putting the duplicate event in list.
			eventnum = ev->eventnum;
			return;
		}
	}

	ev = this;

	if ( numEventDefs >= MAX_EVENTS ) {
		eventError = true;
		sprintf( eventErrorMsg, "numEventDefs >= MAX_EVENTS" );
		return;
	}
	eventDefList[numEventDefs] = ev;
	numEventDefs++;
}

/*
================
idEventDef::NumEventCommands
================
*/
int	idEventDef::NumEventCommands( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidEventDef::NumEventCommands( void )\r\n");
    return retVal;
}


/*
================
idEventDef::GetEventCommand
================
*/
const idEventDef *idEventDef::GetEventCommand( int eventnum ) {
    Sys_Printf("idEventDef *idEventDef::GetEventCommand( int eventnum )\r\n");
    return NULL;
}


/*
================
idEventDef::FindEvent
================
*/
const idEventDef *idEventDef::FindEvent( const char *name ) {
    Sys_Printf("idEventDef *idEventDef::FindEvent( const char *name )\r\n");
    return NULL;
}


/***********************************************************************

  idEvent

***********************************************************************/

static idLinkList<idEvent> FreeEvents;
static idLinkList<idEvent> EventQueue;
#ifdef _D3XP
static idLinkList<idEvent> FastEventQueue;
#endif
static idEvent EventPool[ MAX_EVENTS ];

bool idEvent::initialized = false;

idDynamicBlockAlloc<byte, 16 * 1024, 256>	idEvent::eventDataAllocator;

/*
================
idEvent::~idEvent()
================
*/
idEvent::~idEvent() {
	Free();
}

/*
================
idEvent::Alloc
================
*/
idEvent *idEvent::Alloc( const idEventDef *evdef, int numargs, va_list args ) {
    Sys_Printf("idEvent *idEvent::Alloc( const idEventDef *evdef, int numargs, va_list args )\r\n");
    return NULL;
}


/*
================
idEvent::CopyArgs
================
*/
void idEvent::CopyArgs( const idEventDef *evdef, int numargs, va_list args, int data[ D_EVENT_MAXARGS ] ) {
    Sys_Printf("void idEvent::CopyArgs( const idEventDef *evdef, int numargs, va_list args, int data[ D_EVENT_MAXARGS ] )\r\n");
}


/*
================
idEvent::Free
================
*/
void idEvent::Free( void ) {
    Sys_Printf("void idEvent::Free( void )\r\n");
}


/*
================
idEvent::Schedule
================
*/
void idEvent::Schedule( idClass *obj, const idTypeInfo *type, int time ) {
    Sys_Printf("void idEvent::Schedule( idClass *obj, const idTypeInfo *type, int time )\r\n");
}


/*
================
idEvent::CancelEvents
================
*/
void idEvent::CancelEvents( const idClass *obj, const idEventDef *evdef ) {
    Sys_Printf("void idEvent::CancelEvents( const idClass *obj, const idEventDef *evdef )\r\n");
}


/*
================
idEvent::ClearEventList
================
*/
void idEvent::ClearEventList( void ) {
    Sys_Printf("void idEvent::ClearEventList( void )\r\n");
}


/*
================
idEvent::ServiceEvents
================
*/
void idEvent::ServiceEvents( void ) {
    Sys_Printf("void idEvent::ServiceEvents( void )\r\n");
}


#ifdef _D3XP
/*
================
idEvent::ServiceFastEvents
================
*/
void idEvent::ServiceFastEvents() {
    Sys_Printf("void idEvent::ServiceFastEvents()\r\n");
}

#endif

/*
================
idEvent::Init
================
*/
void idEvent::Init( void ) {
    Sys_Printf("void idEvent::Init( void )\r\n");
}


/*
================
idEvent::Shutdown
================
*/
void idEvent::Shutdown( void ) {
    Sys_Printf("void idEvent::Shutdown( void )\r\n");
}


/*
================
idEvent::Save
================
*/
void idEvent::Save( idSaveGame *savefile ) {
    Sys_Printf("void idEvent::Save( idSaveGame *savefile )\r\n");
}


/*
================
idEvent::Restore
================
*/
void idEvent::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idEvent::Restore( idRestoreGame *savefile )\r\n");
}


/*
 ================
 idEvent::ReadTrace
 
 idRestoreGame has a ReadTrace procedure, but unfortunately idEvent wants the material
 string name at the of the data structure rather than in the middle
 ================
 */
void idEvent::RestoreTrace( idRestoreGame *savefile, trace_t &trace ) {
    Sys_Printf("void idEvent::RestoreTrace( idRestoreGame *savefile, trace_t &trace )\r\n");
}


/*
 ================
 idEvent::WriteTrace

 idSaveGame has a WriteTrace procedure, but unfortunately idEvent wants the material
 string name at the of the data structure rather than in the middle
================
 */
void idEvent::SaveTrace( idSaveGame *savefile, const trace_t &trace ) {
    Sys_Printf("void idEvent::SaveTrace( idSaveGame *savefile, const trace_t &trace )\r\n");
}




#ifdef CREATE_EVENT_CODE
/*
================
CreateEventCallbackHandler
================
*/
void CreateEventCallbackHandler( void ) {
    Sys_Printf("void CreateEventCallbackHandler( void )\r\n");
}


#endif
