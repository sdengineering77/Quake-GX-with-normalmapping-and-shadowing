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

Base class for all C++ objects.  Provides fast run-time type checking and run-time
instancing of objects.

*/

#include "../../idlib/precompiled.h"
#pragma hdrstop

#include "../Game_local.h"

#include "TypeInfo.h"


/***********************************************************************

  idTypeInfo

***********************************************************************/

// this is the head of a singly linked list of all the idTypes
static idTypeInfo				*typelist = NULL;
static idHierarchy<idTypeInfo>	classHierarchy;
static int						eventCallbackMemory	= 0;

/*
================
idTypeInfo::idClassType()

Constructor for class.  Should only be called from CLASS_DECLARATION macro.
Handles linking class definition into class hierarchy.  This should only happen
at startup as idTypeInfos are statically defined.  Since static variables can be
initialized in any order, the constructor must handle the case that subclasses
are initialized before superclasses.
================
*/
idTypeInfo::idTypeInfo( const char *classname, const char *superclass, idEventFunc<idClass> *eventCallbacks, idClass *( *CreateInstance )( void ), 
	void ( idClass::*Spawn )( void ), void ( idClass::*Save )( idSaveGame *savefile ) const, void ( idClass::*Restore )( idRestoreGame *savefile ) ) {

	idTypeInfo *type;
	idTypeInfo **insert;

	this->classname			= classname;
	this->superclass		= superclass;
	this->eventCallbacks	= eventCallbacks;
	this->eventMap			= NULL;
	this->Spawn				= Spawn;
	this->Save				= Save;
	this->Restore			= Restore;
	this->CreateInstance	= CreateInstance;
	this->super				= idClass::GetClass( superclass );
	this->freeEventMap		= false;
	typeNum					= 0;
	lastChild				= 0;

	// Check if any subclasses were initialized before their superclass
	for( type = typelist; type != NULL; type = type->next ) {
		if ( ( type->super == NULL ) && !idStr::Cmp( type->superclass, this->classname ) && 
			idStr::Cmp( type->classname, "idClass" ) ) {
			type->super	= this;
		}
	}

	// Insert sorted
	for ( insert = &typelist; *insert; insert = &(*insert)->next ) {
		assert( idStr::Cmp( classname, (*insert)->classname ) );
		if ( idStr::Cmp( classname, (*insert)->classname ) < 0 ) {
			next = *insert;
			*insert = this;
			break;
		}
	}
	if ( !*insert ) {
		*insert = this;
		next = NULL;
	}
}

/*
================
idTypeInfo::~idTypeInfo
================
*/
idTypeInfo::~idTypeInfo() {
	Shutdown();
}

/*
================
idTypeInfo::Init

Initializes the event callback table for the class.  Creates a 
table for fast lookups of event functions.  Should only be called once.
================
*/
void idTypeInfo::Init( void ) {
    Sys_Printf("void idTypeInfo::Init( void )\r\n");
}


/*
================
idTypeInfo::Shutdown

Should only be called when DLL or EXE is being shutdown.
Although it cleans up any allocated memory, it doesn't bother to remove itself 
from the class list since the program is shutting down.
================
*/
void idTypeInfo::Shutdown() {
    Sys_Printf("void idTypeInfo::Shutdown()\r\n");
}



/***********************************************************************

  idClass

***********************************************************************/

const idEventDef EV_Remove( "<immediateremove>", NULL );
const idEventDef EV_SafeRemove( "remove", NULL );

ABSTRACT_DECLARATION( NULL, idClass )
	EVENT( EV_Remove,				idClass::Event_Remove )
	EVENT( EV_SafeRemove,			idClass::Event_SafeRemove )
END_CLASS

// alphabetical order
idList<idTypeInfo *>	idClass::types;
// typenum order
idList<idTypeInfo *>	idClass::typenums;

bool	idClass::initialized	= false;
int		idClass::typeNumBits	= 0;
int		idClass::memused		= 0;
int		idClass::numobjects		= 0;

/*
================
idClass::CallSpawn
================
*/
void idClass::CallSpawn( void ) {
    Sys_Printf("void idClass::CallSpawn( void )\r\n");
}


/*
================
idClass::CallSpawnFunc
================
*/
classSpawnFunc_t idClass::CallSpawnFunc( idTypeInfo *cls ) {
    classSpawnFunc_t retVal;
    memset(&retVal, 0, sizeof(classSpawnFunc_t));
    Sys_Printf("classSpawnFunc_t idClass::CallSpawnFunc( idTypeInfo *cls )\r\n");
    return retVal;
}


/*
================
idClass::FindUninitializedMemory
================
*/
void idClass::FindUninitializedMemory( void ) {
    Sys_Printf("void idClass::FindUninitializedMemory( void )\r\n");
}


/*
================
idClass::Spawn
================
*/
void idClass::Spawn( void ) {
    Sys_Printf("void idClass::Spawn( void )\r\n");
}


/*
================
idClass::~idClass

Destructor for object.  Cancels any events that depend on this object.
================
*/
idClass::~idClass() {
	idEvent::CancelEvents( this );
}

/*
================
idClass::DisplayInfo_f
================
*/
void idClass::DisplayInfo_f( const idCmdArgs &args ) {
    Sys_Printf("void idClass::DisplayInfo_f( const idCmdArgs &args )\r\n");
}


/*
================
idClass::ListClasses_f
================
*/
void idClass::ListClasses_f( const idCmdArgs &args ) {
    Sys_Printf("void idClass::ListClasses_f( const idCmdArgs &args )\r\n");
}


/*
================
idClass::CreateInstance
================
*/
idClass *idClass::CreateInstance( const char *name ) {
    Sys_Printf("idClass *idClass::CreateInstance( const char *name )\r\n");
    return NULL;
}


/*
================
idClass::Init

Should be called after all idTypeInfos are initialized, so must be called
manually upon game code initialization.  Tells all the idTypeInfos to initialize
their event callback table for the associated class.  This should only be called
once during the execution of the program or DLL.
================
*/
void idClass::Init( void ) {
    Sys_Printf("void idClass::Init( void )\r\n");
}


/*
================
idClass::Shutdown
================
*/
void idClass::Shutdown( void ) {
    Sys_Printf("void idClass::Shutdown( void )\r\n");
}


/*
================
idClass::new
================
*/
#ifdef ID_DEBUG_MEMORY
#undef new
#endif

void * idClass::operator new( size_t s ) {
    operator retVal;
    memset(&retVal, 0, sizeof(operator));
    Sys_Printf("operator new( size_t s )\r\n");
    return retVal;
}


void * idClass::operator new( size_t s, int, int, char *, int ) {
    operator retVal;
    memset(&retVal, 0, sizeof(operator));
    Sys_Printf("operator new( size_t s, int, int, char *, int )\r\n");
    return retVal;
}


#ifdef ID_DEBUG_MEMORY
#define new ID_DEBUG_NEW
#endif

/*
================
idClass::delete
================
*/
void idClass::operator delete( void *ptr ) {
    operator retVal;
    memset(&retVal, 0, sizeof(operator));
    Sys_Printf("operator delete( void *ptr )\r\n");
    return retVal;
}


void idClass::operator delete( void *ptr, int, int, char *, int ) {
    operator retVal;
    memset(&retVal, 0, sizeof(operator));
    Sys_Printf("operator delete( void *ptr, int, int, char *, int )\r\n");
    return retVal;
}


/*
================
idClass::GetClass

Returns the idTypeInfo for the name of the class passed in.  This is a static function
so it must be called as idClass::GetClass( classname )
================
*/
idTypeInfo *idClass::GetClass( const char *name ) {
    Sys_Printf("idTypeInfo *idClass::GetClass( const char *name )\r\n");
    return NULL;
}


/*
================
idClass::GetType
================
*/
idTypeInfo *idClass::GetType( const int typeNum ) {
    Sys_Printf("idTypeInfo *idClass::GetType( const int typeNum )\r\n");
    return NULL;
}


/*
================
idClass::GetClassname

Returns the text classname of the object.
================
*/
const char *idClass::GetClassname( void ) const {
    Sys_Printf("char *idClass::GetClassname( void )\r\n");
    return NULL;
}


/*
================
idClass::GetSuperclass

Returns the text classname of the superclass.
================
*/
const char *idClass::GetSuperclass( void ) const {
    Sys_Printf("char *idClass::GetSuperclass( void )\r\n");
    return NULL;
}


/*
================
idClass::CancelEvents
================
*/
void idClass::CancelEvents( const idEventDef *ev ) {
    Sys_Printf("void idClass::CancelEvents( const idEventDef *ev )\r\n");
}


/*
================
idClass::PostEventArgs
================
*/
bool idClass::PostEventArgs( const idEventDef *ev, int time, int numargs, ... ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventArgs( const idEventDef *ev, int time, int numargs, ... )\r\n");
    return retVal;
}


/*
================
idClass::PostEventMS
================
*/
bool idClass::PostEventMS( const idEventDef *ev, int time ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventMS( const idEventDef *ev, int time )\r\n");
    return retVal;
}


/*
================
idClass::PostEventMS
================
*/
bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventMS
================
*/
bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1, idEventArg arg2 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1, idEventArg arg2 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventMS
================
*/
bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1, idEventArg arg2, idEventArg arg3 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1, idEventArg arg2, idEventArg arg3 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventMS
================
*/
bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventMS
================
*/
bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventMS
================
*/
bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventMS
================
*/
bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6, idEventArg arg7 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6, idEventArg arg7 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventMS
================
*/
bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6, idEventArg arg7, idEventArg arg8 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventMS( const idEventDef *ev, int time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6, idEventArg arg7, idEventArg arg8 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventSec
================
*/
bool idClass::PostEventSec( const idEventDef *ev, float time ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventSec( const idEventDef *ev, float time )\r\n");
    return retVal;
}


/*
================
idClass::PostEventSec
================
*/
bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventSec
================
*/
bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1, idEventArg arg2 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1, idEventArg arg2 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventSec
================
*/
bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1, idEventArg arg2, idEventArg arg3 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1, idEventArg arg2, idEventArg arg3 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventSec
================
*/
bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventSec
================
*/
bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventSec
================
*/
bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventSec
================
*/
bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6, idEventArg arg7 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6, idEventArg arg7 )\r\n");
    return retVal;
}


/*
================
idClass::PostEventSec
================
*/
bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6, idEventArg arg7, idEventArg arg8 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::PostEventSec( const idEventDef *ev, float time, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6, idEventArg arg7, idEventArg arg8 )\r\n");
    return retVal;
}


/*
================
idClass::ProcessEventArgs
================
*/
bool idClass::ProcessEventArgs( const idEventDef *ev, int numargs, ... ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::ProcessEventArgs( const idEventDef *ev, int numargs, ... )\r\n");
    return retVal;
}


/*
================
idClass::ProcessEvent
================
*/
bool idClass::ProcessEvent( const idEventDef *ev ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::ProcessEvent( const idEventDef *ev )\r\n");
    return retVal;
}


/*
================
idClass::ProcessEvent
================
*/
bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1 )\r\n");
    return retVal;
}


/*
================
idClass::ProcessEvent
================
*/
bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1, idEventArg arg2 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1, idEventArg arg2 )\r\n");
    return retVal;
}


/*
================
idClass::ProcessEvent
================
*/
bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1, idEventArg arg2, idEventArg arg3 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1, idEventArg arg2, idEventArg arg3 )\r\n");
    return retVal;
}


/*
================
idClass::ProcessEvent
================
*/
bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4 )\r\n");
    return retVal;
}


/*
================
idClass::ProcessEvent
================
*/
bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5 )\r\n");
    return retVal;
}


/*
================
idClass::ProcessEvent
================
*/
bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6 )\r\n");
    return retVal;
}


/*
================
idClass::ProcessEvent
================
*/
bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6, idEventArg arg7 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6, idEventArg arg7 )\r\n");
    return retVal;
}


/*
================
idClass::ProcessEvent
================
*/
bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6, idEventArg arg7, idEventArg arg8 ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::ProcessEvent( const idEventDef *ev, idEventArg arg1, idEventArg arg2, idEventArg arg3, idEventArg arg4, idEventArg arg5, idEventArg arg6, idEventArg arg7, idEventArg arg8 )\r\n");
    return retVal;
}


/*
================
idClass::ProcessEventArgPtr
================
*/
bool idClass::ProcessEventArgPtr( const idEventDef *ev, int *data ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idClass::ProcessEventArgPtr( const idEventDef *ev, int *data )\r\n");
    return retVal;
}


/*
================
idClass::Event_Remove
================
*/
void idClass::Event_Remove( void ) {
    Sys_Printf("void idClass::Event_Remove( void )\r\n");
}


/*
================
idClass::Event_SafeRemove
================
*/
void idClass::Event_SafeRemove( void ) {
    Sys_Printf("void idClass::Event_SafeRemove( void )\r\n");
}

