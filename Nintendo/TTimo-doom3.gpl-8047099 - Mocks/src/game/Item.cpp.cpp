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

  idItem

===============================================================================
*/

const idEventDef EV_DropToFloor( "<dropToFloor>" );
const idEventDef EV_RespawnItem( "respawn" );
const idEventDef EV_RespawnFx( "<respawnFx>" );
const idEventDef EV_GetPlayerPos( "<getplayerpos>" );
const idEventDef EV_HideObjective( "<hideobjective>", "e" );
const idEventDef EV_CamShot( "<camshot>" );

CLASS_DECLARATION( idEntity, idItem )
	EVENT( EV_DropToFloor,		idItem::Event_DropToFloor )
	EVENT( EV_Touch,			idItem::Event_Touch )
	EVENT( EV_Activate,			idItem::Event_Trigger )
	EVENT( EV_RespawnItem,		idItem::Event_Respawn )
	EVENT( EV_RespawnFx,		idItem::Event_RespawnFx )
END_CLASS


/*
================
idItem::idItem
================
*/
idItem::idItem() {
	spin = false;
	inView = false;
	inViewTime = 0;
	lastCycle = 0;
	lastRenderViewTime = -1;
	itemShellHandle = -1;
	shellMaterial = NULL;
	orgOrigin.Zero();
	canPickUp = true;
	fl.networkSync = true;
}

/*
================
idItem::~idItem
================
*/
idItem::~idItem() {
	// remove the highlight shell
	if ( itemShellHandle != -1 ) {
		gameRenderWorld->FreeEntityDef( itemShellHandle );
	}
}

/*
================
idItem::Save
================
*/
void idItem::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idItem::Save( idSaveGame *savefile )\r\n");
}


/*
================
idItem::Restore
================
*/
void idItem::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idItem::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idItem::UpdateRenderEntity
================
*/
bool idItem::UpdateRenderEntity( renderEntity_s *renderEntity, const renderView_t *renderView ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idItem::UpdateRenderEntity( renderEntity_s *renderEntity, const renderView_t *renderView )\r\n");
    return retVal;
}


/*
================
idItem::ModelCallback
================
*/
bool idItem::ModelCallback( renderEntity_t *renderEntity, const renderView_t *renderView ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idItem::ModelCallback( renderEntity_t *renderEntity, const renderView_t *renderView )\r\n");
    return retVal;
}


/*
================
idItem::Think
================
*/
void idItem::Think( void ) {
    Sys_Printf("void idItem::Think( void )\r\n");
}


/*
================
idItem::Present
================
*/
void idItem::Present( void ) {
    Sys_Printf("void idItem::Present( void )\r\n");
}


/*
================
idItem::Spawn
================
*/
void idItem::Spawn( void ) {
    Sys_Printf("void idItem::Spawn( void )\r\n");
}


/*
================
idItem::GetAttributes
================
*/
void idItem::GetAttributes( idDict &attributes ) {
    Sys_Printf("void idItem::GetAttributes( idDict &attributes )\r\n");
}


/*
================
idItem::GiveToPlayer
================
*/
bool idItem::GiveToPlayer( idPlayer *player ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idItem::GiveToPlayer( idPlayer *player )\r\n");
    return retVal;
}


/*
================
idItem::Pickup
================
*/
bool idItem::Pickup( idPlayer *player ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idItem::Pickup( idPlayer *player )\r\n");
    return retVal;
}


/*
================
idItem::ClientPredictionThink
================
*/
void idItem::ClientPredictionThink( void ) {
    Sys_Printf("void idItem::ClientPredictionThink( void )\r\n");
}


/*
================
idItem::WriteFromSnapshot
================
*/
void idItem::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idItem::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idItem::ReadFromSnapshot
================
*/
void idItem::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idItem::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idItem::ClientReceiveEvent
================
*/
bool idItem::ClientReceiveEvent( int event, int time, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idItem::ClientReceiveEvent( int event, int time, const idBitMsg &msg )\r\n");
    return retVal;
}


/*
================
idItem::Event_DropToFloor
================
*/
void idItem::Event_DropToFloor( void ) {
    Sys_Printf("void idItem::Event_DropToFloor( void )\r\n");
}


/*
================
idItem::Event_Touch
================
*/
void idItem::Event_Touch( idEntity *other, trace_t *trace ) {
    Sys_Printf("void idItem::Event_Touch( idEntity *other, trace_t *trace )\r\n");
}


/*
================
idItem::Event_Trigger
================
*/
void idItem::Event_Trigger( idEntity *activator ) {
    Sys_Printf("void idItem::Event_Trigger( idEntity *activator )\r\n");
}


/*
================
idItem::Event_Respawn
================
*/
void idItem::Event_Respawn( void ) {
    Sys_Printf("void idItem::Event_Respawn( void )\r\n");
}


/*
================
idItem::Event_RespawnFx
================
*/
void idItem::Event_RespawnFx( void ) {
    Sys_Printf("void idItem::Event_RespawnFx( void )\r\n");
}


/*
===============================================================================

  idItemPowerup

===============================================================================
*/

/*
===============
idItemPowerup
===============
*/

CLASS_DECLARATION( idItem, idItemPowerup )
END_CLASS

/*
================
idItemPowerup::idItemPowerup
================
*/
idItemPowerup::idItemPowerup() {
	time = 0;
	type = 0;
}

/*
================
idItemPowerup::Save
================
*/
void idItemPowerup::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idItemPowerup::Save( idSaveGame *savefile )\r\n");
}


/*
================
idItemPowerup::Restore
================
*/
void idItemPowerup::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idItemPowerup::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idItemPowerup::Spawn
================
*/
void idItemPowerup::Spawn( void ) {
    Sys_Printf("void idItemPowerup::Spawn( void )\r\n");
}


/*
================
idItemPowerup::GiveToPlayer
================
*/
bool idItemPowerup::GiveToPlayer( idPlayer *player ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idItemPowerup::GiveToPlayer( idPlayer *player )\r\n");
    return retVal;
}


/*
===============================================================================

  idObjective

===============================================================================
*/

CLASS_DECLARATION( idItem, idObjective )
	EVENT( EV_Activate,			idObjective::Event_Trigger )
	EVENT( EV_HideObjective,	idObjective::Event_HideObjective )
	EVENT( EV_GetPlayerPos,		idObjective::Event_GetPlayerPos )
	EVENT( EV_CamShot,			idObjective::Event_CamShot )
END_CLASS

/*
================
idObjective::idObjective
================
*/
idObjective::idObjective() {
	playerPos.Zero();
}

/*
================
idObjective::Save
================
*/
void idObjective::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idObjective::Save( idSaveGame *savefile )\r\n");
}


/*
================
idObjective::Restore
================
*/
void idObjective::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idObjective::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idObjective::Spawn
================
*/
void idObjective::Spawn( void ) {
    Sys_Printf("void idObjective::Spawn( void )\r\n");
}


/*
================
idObjective::Event_Screenshot
================
*/
void idObjective::Event_CamShot( ) {
    Sys_Printf("void idObjective::Event_CamShot( )\r\n");
}


/*
================
idObjective::Event_Trigger
================
*/
void idObjective::Event_Trigger( idEntity *activator ) {
    Sys_Printf("void idObjective::Event_Trigger( idEntity *activator )\r\n");
}


/*
================
idObjective::Event_GetPlayerPos
================
*/
void idObjective::Event_GetPlayerPos() {
    Sys_Printf("void idObjective::Event_GetPlayerPos()\r\n");
}


/*
================
idObjective::Event_HideObjective
================
*/
void idObjective::Event_HideObjective(idEntity *e) {
    Sys_Printf("void idObjective::Event_HideObjective(idEntity *e)\r\n");
}


/*
===============================================================================

  idVideoCDItem

===============================================================================
*/

CLASS_DECLARATION( idItem, idVideoCDItem )
END_CLASS

/*
================
idVideoCDItem::Spawn
================
*/
void idVideoCDItem::Spawn( void ) {
    Sys_Printf("void idVideoCDItem::Spawn( void )\r\n");
}


/*
================
idVideoCDItem::GiveToPlayer
================
*/
bool idVideoCDItem::GiveToPlayer( idPlayer *player ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idVideoCDItem::GiveToPlayer( idPlayer *player )\r\n");
    return retVal;
}


/*
===============================================================================

  idPDAItem

===============================================================================
*/

CLASS_DECLARATION( idItem, idPDAItem )
END_CLASS

/*
================
idPDAItem::GiveToPlayer
================
*/
bool idPDAItem::GiveToPlayer(idPlayer *player) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPDAItem::GiveToPlayer(idPlayer *player)\r\n");
    return retVal;
}


/*
===============================================================================

  idMoveableItem
	
===============================================================================
*/

CLASS_DECLARATION( idItem, idMoveableItem )
	EVENT( EV_DropToFloor,	idMoveableItem::Event_DropToFloor )
	EVENT( EV_Gib,			idMoveableItem::Event_Gib )
END_CLASS

/*
================
idMoveableItem::idMoveableItem
================
*/
idMoveableItem::idMoveableItem() {
	trigger = NULL;
	smoke = NULL;
	smokeTime = 0;
}

/*
================
idMoveableItem::~idMoveableItem
================
*/
idMoveableItem::~idMoveableItem() {
	if ( trigger ) {
		delete trigger;
	}
}

/*
================
idMoveableItem::Save
================
*/
void idMoveableItem::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idMoveableItem::Save( idSaveGame *savefile )\r\n");
}


/*
================
idMoveableItem::Restore
================
*/
void idMoveableItem::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idMoveableItem::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idMoveableItem::Spawn
================
*/
void idMoveableItem::Spawn( void ) {
    Sys_Printf("void idMoveableItem::Spawn( void )\r\n");
}


/*
================
idMoveableItem::Think
================
*/
void idMoveableItem::Think( void ) {
    Sys_Printf("void idMoveableItem::Think( void )\r\n");
}


/*
================
idMoveableItem::Pickup
================
*/
bool idMoveableItem::Pickup( idPlayer *player ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMoveableItem::Pickup( idPlayer *player )\r\n");
    return retVal;
}


/*
================
idMoveableItem::DropItem
================
*/
idEntity *idMoveableItem::DropItem( const char *classname, const idVec3 &origin, const idMat3 &axis, const idVec3 &velocity, int activateDelay, int removeDelay ) {
    Sys_Printf("idEntity *idMoveableItem::DropItem( const char *classname, const idVec3 &origin, const idMat3 &axis, const idVec3 &velocity, int activateDelay, int removeDelay )\r\n");
    return NULL;
}


/*
================
idMoveableItem::DropItems

  The entity should have the following key/value pairs set:
	"def_drop<type>Item"			"item def"
	"drop<type>ItemJoint"			"joint name"
	"drop<type>ItemRotation"		"pitch yaw roll"
	"drop<type>ItemOffset"			"x y z"
	"skin_drop<type>"				"skin name"
  To drop multiple items the following key/value pairs can be used:
	"def_drop<type>Item<X>"			"item def"
	"drop<type>Item<X>Joint"		"joint name"
	"drop<type>Item<X>Rotation"		"pitch yaw roll"
	"drop<type>Item<X>Offset"		"x y z"
  where <X> is an aribtrary string.
================
*/
void idMoveableItem::DropItems( idAnimatedEntity  *ent, const char *type, idList<idEntity *> *list ) {
    Sys_Printf("void idMoveableItem::DropItems( idAnimatedEntity  *ent, const char *type, idList<idEntity *> *list )\r\n");
}


/*
======================
idMoveableItem::WriteToSnapshot
======================
*/
void idMoveableItem::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idMoveableItem::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
======================
idMoveableItem::ReadFromSnapshot
======================
*/
void idMoveableItem::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idMoveableItem::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
============
idMoveableItem::Gib
============
*/
void idMoveableItem::Gib( const idVec3 &dir, const char *damageDefName ) {
    Sys_Printf("void idMoveableItem::Gib( const idVec3 &dir, const char *damageDefName )\r\n");
}


/*
================
idMoveableItem::Event_DropToFloor
================
*/
void idMoveableItem::Event_DropToFloor( void ) {
    Sys_Printf("void idMoveableItem::Event_DropToFloor( void )\r\n");
}


/*
============
idMoveableItem::Event_Gib
============
*/
void idMoveableItem::Event_Gib( const char *damageDefName ) {
    Sys_Printf("void idMoveableItem::Event_Gib( const char *damageDefName )\r\n");
}


/*
===============================================================================

  idMoveablePDAItem

===============================================================================
*/

CLASS_DECLARATION( idMoveableItem, idMoveablePDAItem )
END_CLASS

/*
================
idMoveablePDAItem::GiveToPlayer
================
*/
bool idMoveablePDAItem::GiveToPlayer(idPlayer *player) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMoveablePDAItem::GiveToPlayer(idPlayer *player)\r\n");
    return retVal;
}


/*
===============================================================================

  idItemRemover

===============================================================================
*/

CLASS_DECLARATION( idEntity, idItemRemover )
	EVENT( EV_Activate,		idItemRemover::Event_Trigger )
END_CLASS

/*
================
idItemRemover::Spawn
================
*/
void idItemRemover::Spawn( void ) {
    Sys_Printf("void idItemRemover::Spawn( void )\r\n");
}


/*
================
idItemRemover::RemoveItem
================
*/
void idItemRemover::RemoveItem( idPlayer *player ) {
    Sys_Printf("void idItemRemover::RemoveItem( idPlayer *player )\r\n");
}


/*
================
idItemRemover::Event_Trigger
================
*/
void idItemRemover::Event_Trigger( idEntity *activator ) {
    Sys_Printf("void idItemRemover::Event_Trigger( idEntity *activator )\r\n");
}


/*
===============================================================================

  idObjectiveComplete

===============================================================================
*/

CLASS_DECLARATION( idItemRemover, idObjectiveComplete )
	EVENT( EV_Activate,			idObjectiveComplete::Event_Trigger )
	EVENT( EV_HideObjective,	idObjectiveComplete::Event_HideObjective )
	EVENT( EV_GetPlayerPos,		idObjectiveComplete::Event_GetPlayerPos )
END_CLASS

/*
================
idObjectiveComplete::idObjectiveComplete
================
*/
idObjectiveComplete::idObjectiveComplete() {
	playerPos.Zero();
}

/*
================
idObjectiveComplete::Save
================
*/
void idObjectiveComplete::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idObjectiveComplete::Save( idSaveGame *savefile )\r\n");
}


/*
================
idObjectiveComplete::Restore
================
*/
void idObjectiveComplete::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idObjectiveComplete::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idObjectiveComplete::Spawn
================
*/
void idObjectiveComplete::Spawn( void ) {
    Sys_Printf("void idObjectiveComplete::Spawn( void )\r\n");
}


/*
================
idObjectiveComplete::Event_Trigger
================
*/
void idObjectiveComplete::Event_Trigger( idEntity *activator ) {
    Sys_Printf("void idObjectiveComplete::Event_Trigger( idEntity *activator )\r\n");
}


/*
================
idObjectiveComplete::Event_GetPlayerPos
================
*/
void idObjectiveComplete::Event_GetPlayerPos() {
    Sys_Printf("void idObjectiveComplete::Event_GetPlayerPos()\r\n");
}


/*
================
idObjectiveComplete::Event_HideObjective
================
*/
void idObjectiveComplete::Event_HideObjective( idEntity *e ) {
    Sys_Printf("void idObjectiveComplete::Event_HideObjective( idEntity *e )\r\n");
}

