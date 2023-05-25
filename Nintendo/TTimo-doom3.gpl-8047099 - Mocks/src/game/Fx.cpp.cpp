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

	idEntityFx

===============================================================================
*/

const idEventDef EV_Fx_KillFx( "_killfx" );
const idEventDef EV_Fx_Action( "_fxAction", "e" );		// implemented by subclasses

CLASS_DECLARATION( idEntity, idEntityFx )
EVENT( EV_Activate,	   	idEntityFx::Event_Trigger )
EVENT( EV_Fx_KillFx,	idEntityFx::Event_ClearFx )
END_CLASS


/*
================
idEntityFx::Save
================
*/
void idEntityFx::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idEntityFx::Save( idSaveGame *savefile )\r\n");
}


/*
================
idEntityFx::Restore
================
*/
void idEntityFx::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idEntityFx::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idEntityFx::Setup
================
*/
void idEntityFx::Setup( const char *fx ) {
    Sys_Printf("void idEntityFx::Setup( const char *fx )\r\n");
}


/*
================
idEntityFx::EffectName
================
*/
const char *idEntityFx::EffectName( void ) {
    Sys_Printf("char *idEntityFx::EffectName( void )\r\n");
    return NULL;
}


/*
================
idEntityFx::Joint
================
*/
const char *idEntityFx::Joint( void ) {
    Sys_Printf("char *idEntityFx::Joint( void )\r\n");
    return NULL;
}


/*
================
idEntityFx::CleanUp
================
*/
void idEntityFx::CleanUp( void ) {
    Sys_Printf("void idEntityFx::CleanUp( void )\r\n");
}


/*
================
idEntityFx::CleanUpSingleAction
================
*/
void idEntityFx::CleanUpSingleAction( const idFXSingleAction& fxaction, idFXLocalAction& laction ) {
    Sys_Printf("void idEntityFx::CleanUpSingleAction( const idFXSingleAction& fxaction, idFXLocalAction& laction )\r\n");
}


/*
================
idEntityFx::Start
================
*/
void idEntityFx::Start( int time ) {
    Sys_Printf("void idEntityFx::Start( int time )\r\n");
}


/*
================
idEntityFx::Stop
================
*/
void idEntityFx::Stop( void ) {
    Sys_Printf("void idEntityFx::Stop( void )\r\n");
}


/*
================
idEntityFx::Duration
================
*/
const int idEntityFx::Duration( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idEntityFx::Duration( void )\r\n");
    return retVal;
}



/*
================
idEntityFx::Done
================
*/
const bool idEntityFx::Done() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idEntityFx::Done()\r\n");
    return retVal;
}


/*
================
idEntityFx::ApplyFade
================
*/
void idEntityFx::ApplyFade( const idFXSingleAction& fxaction, idFXLocalAction& laction, const int time, const int actualStart ) {
    Sys_Printf("void idEntityFx::ApplyFade( const idFXSingleAction& fxaction, idFXLocalAction& laction, const int time, const int actualStart )\r\n");
}


/*
================
idEntityFx::Run
================
*/
void idEntityFx::Run( int time ) {
    Sys_Printf("void idEntityFx::Run( int time )\r\n");
}


/*
================
idEntityFx::idEntityFx
================
*/
idEntityFx::idEntityFx() {
	fxEffect = NULL;
	started = -1;
	nextTriggerTime = -1;
	fl.networkSync = true;
}

/*
================
idEntityFx::~idEntityFx
================
*/
idEntityFx::~idEntityFx() {
	CleanUp();
	fxEffect = NULL;
}

/*
================
idEntityFx::Spawn
================
*/
void idEntityFx::Spawn( void ) {
    Sys_Printf("void idEntityFx::Spawn( void )\r\n");
}


/*
================
idEntityFx::Think

  Clears any visual fx started when {item,mob,player} was spawned
================
*/
void idEntityFx::Think( void ) {
    Sys_Printf("void idEntityFx::Think( void )\r\n");
}


/*
================
idEntityFx::Event_ClearFx

  Clears any visual fx started when item(mob) was spawned
================
*/
void idEntityFx::Event_ClearFx( void ) {
    Sys_Printf("void idEntityFx::Event_ClearFx( void )\r\n");
}


/*
================
idEntityFx::Event_Trigger
================
*/
void idEntityFx::Event_Trigger( idEntity *activator ) {
    Sys_Printf("void idEntityFx::Event_Trigger( idEntity *activator )\r\n");
}



/*
================
idEntityFx::StartFx
================
*/
idEntityFx *idEntityFx::StartFx( const char *fx, const idVec3 *useOrigin, const idMat3 *useAxis, idEntity *ent, bool bind ) {
    Sys_Printf("idEntityFx *idEntityFx::StartFx( const char *fx, const idVec3 *useOrigin, const idMat3 *useAxis, idEntity *ent, bool bind )\r\n");
    return NULL;
}


/*
=================
idEntityFx::WriteToSnapshot
=================
*/
void idEntityFx::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idEntityFx::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
=================
idEntityFx::ReadFromSnapshot
=================
*/
void idEntityFx::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idEntityFx::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
=================
idEntityFx::ClientPredictionThink
=================
*/
void idEntityFx::ClientPredictionThink( void ) {
    Sys_Printf("void idEntityFx::ClientPredictionThink( void )\r\n");
}


/*
===============================================================================

  idTeleporter
	
===============================================================================
*/

CLASS_DECLARATION( idEntityFx, idTeleporter )
	EVENT( EV_Fx_Action,	idTeleporter::Event_DoAction )
END_CLASS

/*
================
idTeleporter::Event_DoAction
================
*/
void idTeleporter::Event_DoAction( idEntity *activator ) {
    Sys_Printf("void idTeleporter::Event_DoAction( idEntity *activator )\r\n");
}

