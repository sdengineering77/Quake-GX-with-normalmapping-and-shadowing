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

#include "Game_local.h"


/*
===============================================================================

  idTrigger
	
===============================================================================
*/

const idEventDef EV_Enable( "enable", NULL );
const idEventDef EV_Disable( "disable", NULL );

CLASS_DECLARATION( idEntity, idTrigger )
	EVENT( EV_Enable,	idTrigger::Event_Enable )
	EVENT( EV_Disable,	idTrigger::Event_Disable )
END_CLASS

/*
================
idTrigger::DrawDebugInfo
================
*/
void idTrigger::DrawDebugInfo( void ) {
    Sys_Printf("void idTrigger::DrawDebugInfo( void )\r\n");
}


/*
================
idTrigger::Enable
================
*/
void idTrigger::Enable( void ) {
    Sys_Printf("void idTrigger::Enable( void )\r\n");
}


/*
================
idTrigger::Disable
================
*/
void idTrigger::Disable( void ) {
    Sys_Printf("void idTrigger::Disable( void )\r\n");
}


/*
================
idTrigger::CallScript
================
*/
void idTrigger::CallScript( void ) const {
    Sys_Printf("void idTrigger::CallScript( void )\r\n");
}


/*
================
idTrigger::GetScriptFunction
================
*/
const function_t *idTrigger::GetScriptFunction( void ) const {
    Sys_Printf("function_t *idTrigger::GetScriptFunction( void )\r\n");
    return NULL;
}


/*
================
idTrigger::Save
================
*/
void idTrigger::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idTrigger::Save( idSaveGame *savefile )\r\n");
}


/*
================
idTrigger::Restore
================
*/
void idTrigger::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idTrigger::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idTrigger::Event_Enable
================
*/
void idTrigger::Event_Enable( void ) {
    Sys_Printf("void idTrigger::Event_Enable( void )\r\n");
}


/*
================
idTrigger::Event_Disable
================
*/
void idTrigger::Event_Disable( void ) {
    Sys_Printf("void idTrigger::Event_Disable( void )\r\n");
}


/*
================
idTrigger::idTrigger
================
*/
idTrigger::idTrigger() {
	scriptFunction = NULL;
}

/*
================
idTrigger::Spawn
================
*/
void idTrigger::Spawn( void ) {
    Sys_Printf("void idTrigger::Spawn( void )\r\n");
}



/*
===============================================================================

  idTrigger_Multi
	
===============================================================================
*/

const idEventDef EV_TriggerAction( "<triggerAction>", "e" );

CLASS_DECLARATION( idTrigger, idTrigger_Multi )
	EVENT( EV_Touch,			idTrigger_Multi::Event_Touch )
	EVENT( EV_Activate,			idTrigger_Multi::Event_Trigger )
	EVENT( EV_TriggerAction,	idTrigger_Multi::Event_TriggerAction )
END_CLASS


/*
================
idTrigger_Multi::idTrigger_Multi
================
*/
idTrigger_Multi::idTrigger_Multi( void ) {
	wait = 0.0f;
	random = 0.0f;
	delay = 0.0f;
	random_delay = 0.0f;
	nextTriggerTime = 0;
	removeItem = 0;
	touchClient = false;
	touchOther = false;
	triggerFirst = false;
	triggerWithSelf = false;
}

/*
================
idTrigger_Multi::Save
================
*/
void idTrigger_Multi::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idTrigger_Multi::Save( idSaveGame *savefile )\r\n");
}


/*
================
idTrigger_Multi::Restore
================
*/
void idTrigger_Multi::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idTrigger_Multi::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idTrigger_Multi::Spawn

"wait" : Seconds between triggerings, 0.5 default, -1 = one time only.
"call" : Script function to call when triggered
"random"	wait variance, default is 0
Variable sized repeatable trigger.  Must be targeted at one or more entities.
so, the basic time between firing is a random time between
(wait - random) and (wait + random)
================
*/
void idTrigger_Multi::Spawn( void ) {
    Sys_Printf("void idTrigger_Multi::Spawn( void )\r\n");
}


/*
================
idTrigger_Multi::CheckFacing
================
*/
bool idTrigger_Multi::CheckFacing( idEntity *activator ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idTrigger_Multi::CheckFacing( idEntity *activator )\r\n");
    return retVal;
}



/*
================
idTrigger_Multi::TriggerAction
================
*/
void idTrigger_Multi::TriggerAction( idEntity *activator ) {
    Sys_Printf("void idTrigger_Multi::TriggerAction( idEntity *activator )\r\n");
}


/*
================
idTrigger_Multi::Event_TriggerAction
================
*/
void idTrigger_Multi::Event_TriggerAction( idEntity *activator ) {
    Sys_Printf("void idTrigger_Multi::Event_TriggerAction( idEntity *activator )\r\n");
}


/*
================
idTrigger_Multi::Event_Trigger

the trigger was just activated
activated should be the entity that originated the activation sequence (ie. the original target)
activator should be set to the activator so it can be held through a delay
so wait for the delay time before firing
================
*/
void idTrigger_Multi::Event_Trigger( idEntity *activator ) {
    Sys_Printf("void idTrigger_Multi::Event_Trigger( idEntity *activator )\r\n");
}


/*
================
idTrigger_Multi::Event_Touch
================
*/
void idTrigger_Multi::Event_Touch( idEntity *other, trace_t *trace ) {
    Sys_Printf("void idTrigger_Multi::Event_Touch( idEntity *other, trace_t *trace )\r\n");
}


/*
===============================================================================

  idTrigger_EntityName
	
===============================================================================
*/

CLASS_DECLARATION( idTrigger, idTrigger_EntityName )
	EVENT( EV_Touch,			idTrigger_EntityName::Event_Touch )
	EVENT( EV_Activate,			idTrigger_EntityName::Event_Trigger )
	EVENT( EV_TriggerAction,	idTrigger_EntityName::Event_TriggerAction )
END_CLASS

/*
================
idTrigger_EntityName::idTrigger_EntityName
================
*/
idTrigger_EntityName::idTrigger_EntityName( void ) {
	wait = 0.0f;
	random = 0.0f;
	delay = 0.0f;
	random_delay = 0.0f;
	nextTriggerTime = 0;
	triggerFirst = false;
}

/*
================
idTrigger_EntityName::Save
================
*/
void idTrigger_EntityName::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idTrigger_EntityName::Save( idSaveGame *savefile )\r\n");
}


/*
================
idTrigger_EntityName::Restore
================
*/
void idTrigger_EntityName::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idTrigger_EntityName::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idTrigger_EntityName::Spawn
================
*/
void idTrigger_EntityName::Spawn( void ) {
    Sys_Printf("void idTrigger_EntityName::Spawn( void )\r\n");
}


/*
================
idTrigger_EntityName::TriggerAction
================
*/
void idTrigger_EntityName::TriggerAction( idEntity *activator ) {
    Sys_Printf("void idTrigger_EntityName::TriggerAction( idEntity *activator )\r\n");
}


/*
================
idTrigger_EntityName::Event_TriggerAction
================
*/
void idTrigger_EntityName::Event_TriggerAction( idEntity *activator ) {
    Sys_Printf("void idTrigger_EntityName::Event_TriggerAction( idEntity *activator )\r\n");
}


/*
================
idTrigger_EntityName::Event_Trigger

the trigger was just activated
activated should be the entity that originated the activation sequence (ie. the original target)
activator should be set to the activator so it can be held through a delay
so wait for the delay time before firing
================
*/
void idTrigger_EntityName::Event_Trigger( idEntity *activator ) {
    Sys_Printf("void idTrigger_EntityName::Event_Trigger( idEntity *activator )\r\n");
}


/*
================
idTrigger_EntityName::Event_Touch
================
*/
void idTrigger_EntityName::Event_Touch( idEntity *other, trace_t *trace ) {
    Sys_Printf("void idTrigger_EntityName::Event_Touch( idEntity *other, trace_t *trace )\r\n");
}


/*
===============================================================================

  idTrigger_Timer
	
===============================================================================
*/

const idEventDef EV_Timer( "<timer>", NULL );

CLASS_DECLARATION( idTrigger, idTrigger_Timer )
	EVENT( EV_Timer,		idTrigger_Timer::Event_Timer )
	EVENT( EV_Activate,		idTrigger_Timer::Event_Use )
END_CLASS

/*
================
idTrigger_Timer::idTrigger_Timer
================
*/
idTrigger_Timer::idTrigger_Timer( void ) {
	random = 0.0f;
	wait = 0.0f;
	on = false;
	delay = 0.0f;
}

/*
================
idTrigger_Timer::Save
================
*/
void idTrigger_Timer::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idTrigger_Timer::Save( idSaveGame *savefile )\r\n");
}


/*
================
idTrigger_Timer::Restore
================
*/
void idTrigger_Timer::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idTrigger_Timer::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idTrigger_Timer::Spawn

Repeatedly fires its targets.
Can be turned on or off by using.
================
*/
void idTrigger_Timer::Spawn( void ) {
    Sys_Printf("void idTrigger_Timer::Spawn( void )\r\n");
}


/*
================
idTrigger_Timer::Enable
================
*/
void idTrigger_Timer::Enable( void ) {
    Sys_Printf("void idTrigger_Timer::Enable( void )\r\n");
}


/*
================
idTrigger_Timer::Disable
================
*/
void idTrigger_Timer::Disable( void ) {
    Sys_Printf("void idTrigger_Timer::Disable( void )\r\n");
}


/*
================
idTrigger_Timer::Event_Timer
================
*/
void idTrigger_Timer::Event_Timer( void ) {
    Sys_Printf("void idTrigger_Timer::Event_Timer( void )\r\n");
}


/*
================
idTrigger_Timer::Event_Use
================
*/
void idTrigger_Timer::Event_Use( idEntity *activator ) {
    Sys_Printf("void idTrigger_Timer::Event_Use( idEntity *activator )\r\n");
}


/*
===============================================================================

  idTrigger_Count
	
===============================================================================
*/

CLASS_DECLARATION( idTrigger, idTrigger_Count )
	EVENT( EV_Activate,	idTrigger_Count::Event_Trigger )
	EVENT( EV_TriggerAction,	idTrigger_Count::Event_TriggerAction )
END_CLASS

/*
================
idTrigger_Count::idTrigger_Count
================
*/
idTrigger_Count::idTrigger_Count( void ) {
	goal = 0;
	count = 0;
	delay = 0.0f;
}

/*
================
idTrigger_Count::Save
================
*/
void idTrigger_Count::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idTrigger_Count::Save( idSaveGame *savefile )\r\n");
}


/*
================
idTrigger_Count::Restore
================
*/
void idTrigger_Count::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idTrigger_Count::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idTrigger_Count::Spawn
================
*/
void idTrigger_Count::Spawn( void ) {
    Sys_Printf("void idTrigger_Count::Spawn( void )\r\n");
}


/*
================
idTrigger_Count::Event_Trigger
================
*/
void idTrigger_Count::Event_Trigger( idEntity *activator ) {
    Sys_Printf("void idTrigger_Count::Event_Trigger( idEntity *activator )\r\n");
}


/*
================
idTrigger_Count::Event_TriggerAction
================
*/
void idTrigger_Count::Event_TriggerAction( idEntity *activator ) {
    Sys_Printf("void idTrigger_Count::Event_TriggerAction( idEntity *activator )\r\n");
}


/*
===============================================================================

  idTrigger_Hurt
	
===============================================================================
*/

CLASS_DECLARATION( idTrigger, idTrigger_Hurt )
	EVENT( EV_Touch,		idTrigger_Hurt::Event_Touch )
	EVENT( EV_Activate,		idTrigger_Hurt::Event_Toggle )
END_CLASS


/*
================
idTrigger_Hurt::idTrigger_Hurt
================
*/
idTrigger_Hurt::idTrigger_Hurt( void ) {
	on = false;
	delay = 0.0f;
	nextTime = 0;
}

/*
================
idTrigger_Hurt::Save
================
*/
void idTrigger_Hurt::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idTrigger_Hurt::Save( idSaveGame *savefile )\r\n");
}


/*
================
idTrigger_Hurt::Restore
================
*/
void idTrigger_Hurt::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idTrigger_Hurt::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idTrigger_Hurt::Spawn

	Damages activator
	Can be turned on or off by using.
================
*/
void idTrigger_Hurt::Spawn( void ) {
    Sys_Printf("void idTrigger_Hurt::Spawn( void )\r\n");
}


/*
================
idTrigger_Hurt::Event_Touch
================
*/
void idTrigger_Hurt::Event_Touch( idEntity *other, trace_t *trace ) {
    Sys_Printf("void idTrigger_Hurt::Event_Touch( idEntity *other, trace_t *trace )\r\n");
}


/*
================
idTrigger_Hurt::Event_Toggle
================
*/
void idTrigger_Hurt::Event_Toggle( idEntity *activator ) {
    Sys_Printf("void idTrigger_Hurt::Event_Toggle( idEntity *activator )\r\n");
}



/*
===============================================================================

  idTrigger_Fade

===============================================================================
*/

CLASS_DECLARATION( idTrigger, idTrigger_Fade )
	EVENT( EV_Activate,		idTrigger_Fade::Event_Trigger )
END_CLASS

/*
================
idTrigger_Fade::Event_Trigger
================
*/
void idTrigger_Fade::Event_Trigger( idEntity *activator ) {
    Sys_Printf("void idTrigger_Fade::Event_Trigger( idEntity *activator )\r\n");
}


/*
===============================================================================

  idTrigger_Touch
	
===============================================================================
*/

CLASS_DECLARATION( idTrigger, idTrigger_Touch )
	EVENT( EV_Activate,		idTrigger_Touch::Event_Trigger )
END_CLASS


/*
================
idTrigger_Touch::idTrigger_Touch
================
*/
idTrigger_Touch::idTrigger_Touch( void ) {
	clipModel = NULL;
}

/*
================
idTrigger_Touch::Spawn
================
*/
void idTrigger_Touch::Spawn( void ) {
    Sys_Printf("void idTrigger_Touch::Spawn( void )\r\n");
}


/*
================
idTrigger_Touch::Save
================
*/
void idTrigger_Touch::Save( idSaveGame *savefile ) {
    Sys_Printf("void idTrigger_Touch::Save( idSaveGame *savefile )\r\n");
}


/*
================
idTrigger_Touch::Restore
================
*/
void idTrigger_Touch::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idTrigger_Touch::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idTrigger_Touch::TouchEntities
================
*/
void idTrigger_Touch::TouchEntities( void ) {
    Sys_Printf("void idTrigger_Touch::TouchEntities( void )\r\n");
}


/*
================
idTrigger_Touch::Think
================
*/
void idTrigger_Touch::Think( void ) {
    Sys_Printf("void idTrigger_Touch::Think( void )\r\n");
}


/*
================
idTrigger_Touch::Event_Trigger
================
*/
void idTrigger_Touch::Event_Trigger( idEntity *activator ) {
    Sys_Printf("void idTrigger_Touch::Event_Trigger( idEntity *activator )\r\n");
}


/*
================
idTrigger_Touch::Enable
================
*/
void idTrigger_Touch::Enable( void ) {
    Sys_Printf("void idTrigger_Touch::Enable( void )\r\n");
}


/*
================
idTrigger_Touch::Disable
================
*/
void idTrigger_Touch::Disable( void ) {
    Sys_Printf("void idTrigger_Touch::Disable( void )\r\n");
}


#ifdef CTF
/*
===============================================================================

  idTrigger_Flag

===============================================================================
*/

CLASS_DECLARATION( idTrigger_Multi, idTrigger_Flag )
	EVENT( EV_Touch, idTrigger_Flag::Event_Touch )
END_CLASS

idTrigger_Flag::idTrigger_Flag( void ) {
    END_CLASS retVal;
    memset(&retVal, 0, sizeof(END_CLASS));
    Sys_Printf("END_CLASSidTrigger_Flag::idTrigger_Flag( void )\r\n");
    return retVal;
}


void idTrigger_Flag::Spawn( void ) {
    Sys_Printf("void idTrigger_Flag::Spawn( void )\r\n");
}


void idTrigger_Flag::Event_Touch( idEntity *other, trace_t *trace ) {
    Sys_Printf("void idTrigger_Flag::Event_Touch( idEntity *other, trace_t *trace )\r\n");
}


#endif
