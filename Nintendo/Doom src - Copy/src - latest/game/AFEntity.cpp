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

  idMultiModelAF

===============================================================================
*/

CLASS_DECLARATION( idEntity, idMultiModelAF )
END_CLASS

/*
================
idMultiModelAF::Spawn
================
*/
void idMultiModelAF::Spawn( void ) {
    Sys_Printf("void idMultiModelAF::Spawn( void )\r\n");
}


/*
================
idMultiModelAF::~idMultiModelAF
================
*/
idMultiModelAF::~idMultiModelAF( void ) {
	int i;

	for ( i = 0; i < modelDefHandles.Num(); i++ ) {
		if ( modelDefHandles[i] != -1 ) {
			gameRenderWorld->FreeEntityDef( modelDefHandles[i] );
			modelDefHandles[i] = -1;
		}
	}
}

/*
================
idMultiModelAF::SetModelForId
================
*/
void idMultiModelAF::SetModelForId( int id, const idStr &modelName ) {
    Sys_Printf("void idMultiModelAF::SetModelForId( int id, const idStr &modelName )\r\n");
}


/*
================
idMultiModelAF::Present
================
*/
void idMultiModelAF::Present( void ) {
    Sys_Printf("void idMultiModelAF::Present( void )\r\n");
}


/*
================
idMultiModelAF::Think
================
*/
void idMultiModelAF::Think( void ) {
    Sys_Printf("void idMultiModelAF::Think( void )\r\n");
}



/*
===============================================================================

  idChain

===============================================================================
*/

CLASS_DECLARATION( idMultiModelAF, idChain )
END_CLASS

/*
================
idChain::BuildChain

  builds a chain hanging down from the ceiling
  the highest link is a child of the link below it etc.
  this allows an object to be attached to multiple chains while keeping a single tree structure
================
*/
void idChain::BuildChain( const idStr &name, const idVec3 &origin, float linkLength, float linkWidth, float density, int numLinks, bool bindToWorld ) {
    Sys_Printf("void idChain::BuildChain( const idStr &name, const idVec3 &origin, float linkLength, float linkWidth, float density, int numLinks, bool bindToWorld )\r\n");
}


/*
================
idChain::Spawn
================
*/
void idChain::Spawn( void ) {
    Sys_Printf("void idChain::Spawn( void )\r\n");
}


/*
===============================================================================

  idAFAttachment

===============================================================================
*/

CLASS_DECLARATION( idAnimatedEntity, idAFAttachment )
END_CLASS

/*
=====================
idAFAttachment::idAFAttachment
=====================
*/
idAFAttachment::idAFAttachment( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idAFAttachment::idAFAttachment( void ) size %d\r\n", sizeof(*this));
#endif

	body			= NULL;
	combatModel		= NULL;
	idleAnim		= 0;
	attachJoint		= INVALID_JOINT;
}

/*
=====================
idAFAttachment::~idAFAttachment
=====================
*/
idAFAttachment::~idAFAttachment( void ) {

	StopSound( SND_CHANNEL_ANY, false );

	delete combatModel;
	combatModel = NULL;
}

/*
=====================
idAFAttachment::Spawn
=====================
*/
void idAFAttachment::Spawn( void ) {
    Sys_Printf("void idAFAttachment::Spawn( void )\r\n");
}


/*
=====================
idAFAttachment::SetBody
=====================
*/
void idAFAttachment::SetBody( idEntity *bodyEnt, const char *model, jointHandle_t attachJoint ) {
    Sys_Printf("void idAFAttachment::SetBody( idEntity *bodyEnt, const char *model, jointHandle_t attachJoint )\r\n");
}


/*
=====================
idAFAttachment::ClearBody
=====================
*/
void idAFAttachment::ClearBody( void ) {
    Sys_Printf("void idAFAttachment::ClearBody( void )\r\n");
}


/*
=====================
idAFAttachment::GetBody
=====================
*/
idEntity *idAFAttachment::GetBody( void ) const {
    Sys_Printf("idEntity *idAFAttachment::GetBody( void )\r\n");
    return NULL;
}


/*
================
idAFAttachment::Save

archive object for savegame file
================
*/
void idAFAttachment::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idAFAttachment::Save( idSaveGame *savefile )\r\n");
}


/*
================
idAFAttachment::Restore

unarchives object from save game file
================
*/
void idAFAttachment::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idAFAttachment::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idAFAttachment::Hide
================
*/
void idAFAttachment::Hide( void ) {
    Sys_Printf("void idAFAttachment::Hide( void )\r\n");
}


/*
================
idAFAttachment::Show
================
*/
void idAFAttachment::Show( void ) {
    Sys_Printf("void idAFAttachment::Show( void )\r\n");
}


/*
============
idAFAttachment::Damage

Pass damage to body at the bindjoint
============
*/
void idAFAttachment::Damage( idEntity *inflictor, idEntity *attacker, const idVec3 &dir, 
	const char *damageDefName, const float damageScale, const int location ) {
    Sys_Printf("void idAFAttachment::Damage( idEntity *inflictor, idEntity *attacker, const idVec3 &dir, const char *damageDefName, const float damageScale, const int location )\r\n");
}


/*
================
idAFAttachment::AddDamageEffect
================
*/
void idAFAttachment::AddDamageEffect( const trace_t &collision, const idVec3 &velocity, const char *damageDefName ) {
    Sys_Printf("void idAFAttachment::AddDamageEffect( const trace_t &collision, const idVec3 &velocity, const char *damageDefName )\r\n");
}


/*
================
idAFAttachment::GetImpactInfo
================
*/
void idAFAttachment::GetImpactInfo( idEntity *ent, int id, const idVec3 &point, impactInfo_t *info ) {
    Sys_Printf("void idAFAttachment::GetImpactInfo( idEntity *ent, int id, const idVec3 &point, impactInfo_t *info )\r\n");
}


/*
================
idAFAttachment::ApplyImpulse
================
*/
void idAFAttachment::ApplyImpulse( idEntity *ent, int id, const idVec3 &point, const idVec3 &impulse ) {
    Sys_Printf("void idAFAttachment::ApplyImpulse( idEntity *ent, int id, const idVec3 &point, const idVec3 &impulse )\r\n");
}


/*
================
idAFAttachment::AddForce
================
*/
void idAFAttachment::AddForce( idEntity *ent, int id, const idVec3 &point, const idVec3 &force ) {
    Sys_Printf("void idAFAttachment::AddForce( idEntity *ent, int id, const idVec3 &point, const idVec3 &force )\r\n");
}


/*
================
idAFAttachment::PlayIdleAnim
================
*/
void idAFAttachment::PlayIdleAnim( int blendTime ) {
    Sys_Printf("void idAFAttachment::PlayIdleAnim( int blendTime )\r\n");
}


/*
================
idAfAttachment::Think
================
*/
void idAFAttachment::Think( void ) {
    Sys_Printf("void idAFAttachment::Think( void )\r\n");
}


/*
================
idAFAttachment::SetCombatModel
================
*/
void idAFAttachment::SetCombatModel( void ) {
    Sys_Printf("void idAFAttachment::SetCombatModel( void )\r\n");
}


/*
================
idAFAttachment::GetCombatModel
================
*/
idClipModel *idAFAttachment::GetCombatModel( void ) const {
    Sys_Printf("idClipModel *idAFAttachment::GetCombatModel( void )\r\n");
    return NULL;
}


/*
================
idAFAttachment::LinkCombat
================
*/
void idAFAttachment::LinkCombat( void ) {
    Sys_Printf("void idAFAttachment::LinkCombat( void )\r\n");
}


/*
================
idAFAttachment::UnlinkCombat
================
*/
void idAFAttachment::UnlinkCombat( void ) {
    Sys_Printf("void idAFAttachment::UnlinkCombat( void )\r\n");
}



/*
===============================================================================

  idAFEntity_Base

===============================================================================
*/

const idEventDef EV_SetConstraintPosition( "SetConstraintPosition", "sv" );

CLASS_DECLARATION( idAnimatedEntity, idAFEntity_Base )
	EVENT( EV_SetConstraintPosition,	idAFEntity_Base::Event_SetConstraintPosition )
END_CLASS

static const float BOUNCE_SOUND_MIN_VELOCITY	= 80.0f;
static const float BOUNCE_SOUND_MAX_VELOCITY	= 200.0f;

/*
================
idAFEntity_Base::idAFEntity_Base
================
*/
idAFEntity_Base::idAFEntity_Base( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idAFEntity_Base::idAFEntity_Base( void ) size %d\r\n", sizeof(*this));
#endif

	combatModel = NULL;
	combatModelContents = 0;
	nextSoundTime = 0;
	spawnOrigin.Zero();
	spawnAxis.Identity();
}

/*
================
idAFEntity_Base::~idAFEntity_Base
================
*/
idAFEntity_Base::~idAFEntity_Base( void ) {
	delete combatModel;
	combatModel = NULL;
}

/*
================
idAFEntity_Base::Save
================
*/
void idAFEntity_Base::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idAFEntity_Base::Save( idSaveGame *savefile )\r\n");
}


/*
================
idAFEntity_Base::Restore
================
*/
void idAFEntity_Base::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idAFEntity_Base::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idAFEntity_Base::Spawn
================
*/
void idAFEntity_Base::Spawn( void ) {
    Sys_Printf("void idAFEntity_Base::Spawn( void )\r\n");
}


/*
================
idAFEntity_Base::LoadAF
================
*/
bool idAFEntity_Base::LoadAF( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFEntity_Base::LoadAF( void )\r\n");
    return retVal;
}


/*
================
idAFEntity_Base::Think
================
*/
void idAFEntity_Base::Think( void ) {
    Sys_Printf("void idAFEntity_Base::Think( void )\r\n");
}


/*
================
idAFEntity_Base::BodyForClipModelId
================
*/
int idAFEntity_Base::BodyForClipModelId( int id ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAFEntity_Base::BodyForClipModelId( int id )\r\n");
    return retVal;
}


/*
================
idAFEntity_Base::SaveState
================
*/
void idAFEntity_Base::SaveState( idDict &args ) const {
    Sys_Printf("void idAFEntity_Base::SaveState( idDict &args )\r\n");
}


/*
================
idAFEntity_Base::LoadState
================
*/
void idAFEntity_Base::LoadState( const idDict &args ) {
    Sys_Printf("void idAFEntity_Base::LoadState( const idDict &args )\r\n");
}


/*
================
idAFEntity_Base::AddBindConstraints
================
*/
void idAFEntity_Base::AddBindConstraints( void ) {
    Sys_Printf("void idAFEntity_Base::AddBindConstraints( void )\r\n");
}


/*
================
idAFEntity_Base::RemoveBindConstraints
================
*/
void idAFEntity_Base::RemoveBindConstraints( void ) {
    Sys_Printf("void idAFEntity_Base::RemoveBindConstraints( void )\r\n");
}


/*
================
idAFEntity_Base::GetImpactInfo
================
*/
void idAFEntity_Base::GetImpactInfo( idEntity *ent, int id, const idVec3 &point, impactInfo_t *info ) {
    Sys_Printf("void idAFEntity_Base::GetImpactInfo( idEntity *ent, int id, const idVec3 &point, impactInfo_t *info )\r\n");
}


/*
================
idAFEntity_Base::ApplyImpulse
================
*/
void idAFEntity_Base::ApplyImpulse( idEntity *ent, int id, const idVec3 &point, const idVec3 &impulse ) {
    Sys_Printf("void idAFEntity_Base::ApplyImpulse( idEntity *ent, int id, const idVec3 &point, const idVec3 &impulse )\r\n");
}


/*
================
idAFEntity_Base::AddForce
================
*/
void idAFEntity_Base::AddForce( idEntity *ent, int id, const idVec3 &point, const idVec3 &force ) {
    Sys_Printf("void idAFEntity_Base::AddForce( idEntity *ent, int id, const idVec3 &point, const idVec3 &force )\r\n");
}


/*
================
idAFEntity_Base::Collide
================
*/
bool idAFEntity_Base::Collide( const trace_t &collision, const idVec3 &velocity ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFEntity_Base::Collide( const trace_t &collision, const idVec3 &velocity )\r\n");
    return retVal;
}


/*
================
idAFEntity_Base::GetPhysicsToVisualTransform
================
*/
bool idAFEntity_Base::GetPhysicsToVisualTransform( idVec3 &origin, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFEntity_Base::GetPhysicsToVisualTransform( idVec3 &origin, idMat3 &axis )\r\n");
    return retVal;
}


/*
================
idAFEntity_Base::UpdateAnimationControllers
================
*/
bool idAFEntity_Base::UpdateAnimationControllers( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFEntity_Base::UpdateAnimationControllers( void )\r\n");
    return retVal;
}


/*
================
idAFEntity_Base::SetCombatModel
================
*/
void idAFEntity_Base::SetCombatModel( void ) {
    Sys_Printf("void idAFEntity_Base::SetCombatModel( void )\r\n");
}


/*
================
idAFEntity_Base::GetCombatModel
================
*/
idClipModel *idAFEntity_Base::GetCombatModel( void ) const {
    Sys_Printf("idClipModel *idAFEntity_Base::GetCombatModel( void )\r\n");
    return NULL;
}


/*
================
idAFEntity_Base::SetCombatContents
================
*/
void idAFEntity_Base::SetCombatContents( bool enable ) {
    Sys_Printf("void idAFEntity_Base::SetCombatContents( bool enable )\r\n");
}


/*
================
idAFEntity_Base::LinkCombat
================
*/
void idAFEntity_Base::LinkCombat( void ) {
    Sys_Printf("void idAFEntity_Base::LinkCombat( void )\r\n");
}


/*
================
idAFEntity_Base::UnlinkCombat
================
*/
void idAFEntity_Base::UnlinkCombat( void ) {
    Sys_Printf("void idAFEntity_Base::UnlinkCombat( void )\r\n");
}


/*
================
idAFEntity_Base::FreeModelDef
================
*/
void idAFEntity_Base::FreeModelDef( void ) {
    Sys_Printf("void idAFEntity_Base::FreeModelDef( void )\r\n");
}


/*
===============
idAFEntity_Base::ShowEditingDialog
===============
*/
void idAFEntity_Base::ShowEditingDialog( void ) {
    Sys_Printf("void idAFEntity_Base::ShowEditingDialog( void )\r\n");
}


/*
================
idAFEntity_Base::DropAFs

  The entity should have the following key/value pairs set:
	"def_drop<type>AF"		"af def"
	"drop<type>Skin"		"skin name"
  To drop multiple articulated figures the following key/value pairs can be used:
	"def_drop<type>AF*"		"af def"
  where * is an aribtrary string.
================
*/
void idAFEntity_Base::DropAFs( idEntity *ent, const char *type, idList<idEntity *> *list ) {
    Sys_Printf("void idAFEntity_Base::DropAFs( idEntity *ent, const char *type, idList<idEntity *> *list )\r\n");
}


/*
================
idAFEntity_Base::Event_SetConstraintPosition
================
*/
void idAFEntity_Base::Event_SetConstraintPosition( const char *name, const idVec3 &pos ) {
    Sys_Printf("void idAFEntity_Base::Event_SetConstraintPosition( const char *name, const idVec3 &pos )\r\n");
}


/*
===============================================================================

idAFEntity_Gibbable

===============================================================================
*/

const idEventDef EV_Gib( "gib", "s" );
const idEventDef EV_Gibbed( "<gibbed>" );

CLASS_DECLARATION( idAFEntity_Base, idAFEntity_Gibbable )
	EVENT( EV_Gib,		idAFEntity_Gibbable::Event_Gib )
	EVENT( EV_Gibbed,	idAFEntity_Base::Event_Remove )
END_CLASS


/*
================
idAFEntity_Gibbable::idAFEntity_Gibbable
================
*/
idAFEntity_Gibbable::idAFEntity_Gibbable( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idAFEntity_Gibbable::idAFEntity_Gibbable( void ) size %d\r\n", sizeof(*this));
#endif

	skeletonModel = NULL;
	skeletonModelDefHandle = -1;
	gibbed = false;
}

/*
================
idAFEntity_Gibbable::~idAFEntity_Gibbable
================
*/
idAFEntity_Gibbable::~idAFEntity_Gibbable() {
	if ( skeletonModelDefHandle != -1 ) {
		gameRenderWorld->FreeEntityDef( skeletonModelDefHandle );
		skeletonModelDefHandle = -1;
	}
}

/*
================
idAFEntity_Gibbable::Save
================
*/
void idAFEntity_Gibbable::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idAFEntity_Gibbable::Save( idSaveGame *savefile )\r\n");
}


/*
================
idAFEntity_Gibbable::Restore
================
*/
void idAFEntity_Gibbable::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idAFEntity_Gibbable::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idAFEntity_Gibbable::Spawn
================
*/
void idAFEntity_Gibbable::Spawn( void ) {
    Sys_Printf("void idAFEntity_Gibbable::Spawn( void )\r\n");
}


/*
================
idAFEntity_Gibbable::InitSkeletonModel
================
*/
void idAFEntity_Gibbable::InitSkeletonModel( void ) {
    Sys_Printf("void idAFEntity_Gibbable::InitSkeletonModel( void )\r\n");
}


/*
================
idAFEntity_Gibbable::Present
================
*/
void idAFEntity_Gibbable::Present( void ) {
    Sys_Printf("void idAFEntity_Gibbable::Present( void )\r\n");
}


/*
================
idAFEntity_Gibbable::Damage
================
*/
void idAFEntity_Gibbable::Damage( idEntity *inflictor, idEntity *attacker, const idVec3 &dir, const char *damageDefName, const float damageScale, const int location ) {
    Sys_Printf("void idAFEntity_Gibbable::Damage( idEntity *inflictor, idEntity *attacker, const idVec3 &dir, const char *damageDefName, const float damageScale, const int location )\r\n");
}


/*
=====================
idAFEntity_Gibbable::SpawnGibs
=====================
*/
void idAFEntity_Gibbable::SpawnGibs( const idVec3 &dir, const char *damageDefName ) {
    Sys_Printf("void idAFEntity_Gibbable::SpawnGibs( const idVec3 &dir, const char *damageDefName )\r\n");
}


/*
============
idAFEntity_Gibbable::Gib
============
*/
void idAFEntity_Gibbable::Gib( const idVec3 &dir, const char *damageDefName ) {
    Sys_Printf("void idAFEntity_Gibbable::Gib( const idVec3 &dir, const char *damageDefName )\r\n");
}


/*
============
idAFEntity_Gibbable::Event_Gib
============
*/
void idAFEntity_Gibbable::Event_Gib( const char *damageDefName ) {
    Sys_Printf("void idAFEntity_Gibbable::Event_Gib( const char *damageDefName )\r\n");
}


/*
===============================================================================

  idAFEntity_Generic

===============================================================================
*/

CLASS_DECLARATION( idAFEntity_Gibbable, idAFEntity_Generic )
	EVENT( EV_Activate,			idAFEntity_Generic::Event_Activate )
END_CLASS

/*
================
idAFEntity_Generic::idAFEntity_Generic
================
*/
idAFEntity_Generic::idAFEntity_Generic( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idAFEntity_Generic::idAFEntity_Generic( void ) size %d\r\n", sizeof(*this));
#endif

	keepRunningPhysics = false;
}

/*
================
idAFEntity_Generic::~idAFEntity_Generic
================
*/
idAFEntity_Generic::~idAFEntity_Generic( void ) {
}

/*
================
idAFEntity_Generic::Save
================
*/
void idAFEntity_Generic::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idAFEntity_Generic::Save( idSaveGame *savefile )\r\n");
}


/*
================
idAFEntity_Generic::Restore
================
*/
void idAFEntity_Generic::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idAFEntity_Generic::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idAFEntity_Generic::Think
================
*/
void idAFEntity_Generic::Think( void ) {
    Sys_Printf("void idAFEntity_Generic::Think( void )\r\n");
}


/*
================
idAFEntity_Generic::Spawn
================
*/
void idAFEntity_Generic::Spawn( void ) {
    Sys_Printf("void idAFEntity_Generic::Spawn( void )\r\n");
}


/*
================
idAFEntity_Generic::Event_Activate
================
*/
void idAFEntity_Generic::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idAFEntity_Generic::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

  idAFEntity_WithAttachedHead

===============================================================================
*/

CLASS_DECLARATION( idAFEntity_Gibbable, idAFEntity_WithAttachedHead )
	EVENT( EV_Gib,				idAFEntity_WithAttachedHead::Event_Gib )
	EVENT( EV_Activate,			idAFEntity_WithAttachedHead::Event_Activate )
END_CLASS

/*
================
idAFEntity_WithAttachedHead::idAFEntity_WithAttachedHead
================
*/
idAFEntity_WithAttachedHead::idAFEntity_WithAttachedHead() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idAFEntity_WithAttachedHead::idAFEntity_WithAttachedHead() size %d\r\n", sizeof(*this));
#endif

	head = NULL;
}

/*
================
idAFEntity_WithAttachedHead::~idAFEntity_WithAttachedHead
================
*/
idAFEntity_WithAttachedHead::~idAFEntity_WithAttachedHead() {
	if ( head.GetEntity() ) {
		head.GetEntity()->ClearBody();
		head.GetEntity()->PostEventMS( &EV_Remove, 0 );
	}
}

/*
================
idAFEntity_WithAttachedHead::Spawn
================
*/
void idAFEntity_WithAttachedHead::Spawn( void ) {
    Sys_Printf("void idAFEntity_WithAttachedHead::Spawn( void )\r\n");
}


/*
================
idAFEntity_WithAttachedHead::Save
================
*/
void idAFEntity_WithAttachedHead::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idAFEntity_WithAttachedHead::Save( idSaveGame *savefile )\r\n");
}


/*
================
idAFEntity_WithAttachedHead::Restore
================
*/
void idAFEntity_WithAttachedHead::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idAFEntity_WithAttachedHead::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idAFEntity_WithAttachedHead::SetupHead
================
*/
void idAFEntity_WithAttachedHead::SetupHead( void ) {
    Sys_Printf("void idAFEntity_WithAttachedHead::SetupHead( void )\r\n");
}


/*
================
idAFEntity_WithAttachedHead::Think
================
*/
void idAFEntity_WithAttachedHead::Think( void ) {
    Sys_Printf("void idAFEntity_WithAttachedHead::Think( void )\r\n");
}


/*
================
idAFEntity_WithAttachedHead::LinkCombat
================
*/
void idAFEntity_WithAttachedHead::LinkCombat( void ) {
    Sys_Printf("void idAFEntity_WithAttachedHead::LinkCombat( void )\r\n");
}


/*
================
idAFEntity_WithAttachedHead::UnlinkCombat
================
*/
void idAFEntity_WithAttachedHead::UnlinkCombat( void ) {
    Sys_Printf("void idAFEntity_WithAttachedHead::UnlinkCombat( void )\r\n");
}


/*
================
idAFEntity_WithAttachedHead::Hide
================
*/
void idAFEntity_WithAttachedHead::Hide( void ) {
    Sys_Printf("void idAFEntity_WithAttachedHead::Hide( void )\r\n");
}


/*
================
idAFEntity_WithAttachedHead::Show
================
*/
void idAFEntity_WithAttachedHead::Show( void ) {
    Sys_Printf("void idAFEntity_WithAttachedHead::Show( void )\r\n");
}


/*
================
idAFEntity_WithAttachedHead::ProjectOverlay
================
*/
void idAFEntity_WithAttachedHead::ProjectOverlay( const idVec3 &origin, const idVec3 &dir, float size, const char *material ) {
    Sys_Printf("void idAFEntity_WithAttachedHead::ProjectOverlay( const idVec3 &origin, const idVec3 &dir, float size, const char *material )\r\n");
}


/*
============
idAFEntity_WithAttachedHead::Gib
============
*/
void idAFEntity_WithAttachedHead::Gib( const idVec3 &dir, const char *damageDefName ) {
    Sys_Printf("void idAFEntity_WithAttachedHead::Gib( const idVec3 &dir, const char *damageDefName )\r\n");
}


/*
============
idAFEntity_WithAttachedHead::Event_Gib
============
*/
void idAFEntity_WithAttachedHead::Event_Gib( const char *damageDefName ) {
    Sys_Printf("void idAFEntity_WithAttachedHead::Event_Gib( const char *damageDefName )\r\n");
}


/*
================
idAFEntity_WithAttachedHead::Event_Activate
================
*/
void idAFEntity_WithAttachedHead::Event_Activate( idEntity *activator ) {
    Sys_Printf("void idAFEntity_WithAttachedHead::Event_Activate( idEntity *activator )\r\n");
}



/*
===============================================================================

  idAFEntity_Vehicle

===============================================================================
*/

CLASS_DECLARATION( idAFEntity_Base, idAFEntity_Vehicle )
END_CLASS

/*
================
idAFEntity_Vehicle::idAFEntity_Vehicle
================
*/
idAFEntity_Vehicle::idAFEntity_Vehicle( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idAFEntity_Vehicle::idAFEntity_Vehicle( void ) size %d\r\n", sizeof(*this));
#endif

	player				= NULL;
	eyesJoint			= INVALID_JOINT;
	steeringWheelJoint	= INVALID_JOINT;
	wheelRadius			= 0.0f;
	steerAngle			= 0.0f;
	steerSpeed			= 0.0f;
	dustSmoke			= NULL;
}

/*
================
idAFEntity_Vehicle::Spawn
================
*/
void idAFEntity_Vehicle::Spawn( void ) {
    Sys_Printf("void idAFEntity_Vehicle::Spawn( void )\r\n");
}


/*
================
idAFEntity_Vehicle::Use
================
*/
void idAFEntity_Vehicle::Use( idPlayer *other ) {
    Sys_Printf("void idAFEntity_Vehicle::Use( idPlayer *other )\r\n");
}


/*
================
idAFEntity_Vehicle::GetSteerAngle
================
*/
float idAFEntity_Vehicle::GetSteerAngle( void ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAFEntity_Vehicle::GetSteerAngle( void )\r\n");
    return retVal;
}



/*
===============================================================================

  idAFEntity_VehicleSimple

===============================================================================
*/

CLASS_DECLARATION( idAFEntity_Vehicle, idAFEntity_VehicleSimple )
END_CLASS

/*
================
idAFEntity_VehicleSimple::idAFEntity_VehicleSimple
================
*/
idAFEntity_VehicleSimple::idAFEntity_VehicleSimple( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idAFEntity_VehicleSimple::idAFEntity_VehicleSimple( void ) size %d\r\n", sizeof(*this));
#endif

	int i;
	for ( i = 0; i < 4; i++ ) {
		suspension[i] = NULL;
	}
}

/*
================
idAFEntity_VehicleSimple::~idAFEntity_VehicleSimple
================
*/
idAFEntity_VehicleSimple::~idAFEntity_VehicleSimple( void ) {
	delete wheelModel;
	wheelModel = NULL;
}

/*
================
idAFEntity_VehicleSimple::Spawn
================
*/
void idAFEntity_VehicleSimple::Spawn( void ) {
    Sys_Printf("void idAFEntity_VehicleSimple::Spawn( void )\r\n");
}


/*
================
idAFEntity_VehicleSimple::Think
================
*/
void idAFEntity_VehicleSimple::Think( void ) {
    Sys_Printf("void idAFEntity_VehicleSimple::Think( void )\r\n");
}



/*
===============================================================================

  idAFEntity_VehicleFourWheels

===============================================================================
*/

CLASS_DECLARATION( idAFEntity_Vehicle, idAFEntity_VehicleFourWheels )
END_CLASS


/*
================
idAFEntity_VehicleFourWheels::idAFEntity_VehicleFourWheels
================
*/
idAFEntity_VehicleFourWheels::idAFEntity_VehicleFourWheels( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idAFEntity_VehicleFourWheels::idAFEntity_VehicleFourWheels( void ) size %d\r\n", sizeof(*this));
#endif

	int i;

	for ( i = 0; i < 4; i++ ) {
		wheels[i]		= NULL;
		wheelJoints[i]	= INVALID_JOINT;
		wheelAngles[i]	= 0.0f;
	}
	steering[0]			= NULL;
	steering[1]			= NULL;
}

/*
================
idAFEntity_VehicleFourWheels::Spawn
================
*/
void idAFEntity_VehicleFourWheels::Spawn( void ) {
    Sys_Printf("void idAFEntity_VehicleFourWheels::Spawn( void )\r\n");
}


/*
================
idAFEntity_VehicleFourWheels::Think
================
*/
void idAFEntity_VehicleFourWheels::Think( void ) {
    Sys_Printf("void idAFEntity_VehicleFourWheels::Think( void )\r\n");
}



/*
===============================================================================

  idAFEntity_VehicleSixWheels

===============================================================================
*/

CLASS_DECLARATION( idAFEntity_Vehicle, idAFEntity_VehicleSixWheels )
END_CLASS

	/*
================
idAFEntity_VehicleSixWheels::idAFEntity_VehicleSixWheels
================
*/
idAFEntity_VehicleSixWheels::idAFEntity_VehicleSixWheels( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idAFEntity_VehicleSixWheels::idAFEntity_VehicleSixWheels( void ) size %d\r\n", sizeof(*this));
#endif

	int i;

	for ( i = 0; i < 6; i++ ) {
		wheels[i]		= NULL;
		wheelJoints[i]	= INVALID_JOINT;
		wheelAngles[i]	= 0.0f;
	}
	steering[0]			= NULL;
	steering[1]			= NULL;
	steering[2]			= NULL;
	steering[3]			= NULL;
}

/*
================
idAFEntity_VehicleSixWheels::Spawn
================
*/
void idAFEntity_VehicleSixWheels::Spawn( void ) {
    Sys_Printf("void idAFEntity_VehicleSixWheels::Spawn( void )\r\n");
}


/*
================
idAFEntity_VehicleSixWheels::Think
================
*/
void idAFEntity_VehicleSixWheels::Think( void ) {
    Sys_Printf("void idAFEntity_VehicleSixWheels::Think( void )\r\n");
}



/*
===============================================================================

  idAFEntity_SteamPipe

===============================================================================
*/

CLASS_DECLARATION( idAFEntity_Base, idAFEntity_SteamPipe )
END_CLASS


/*
================
idAFEntity_SteamPipe::idAFEntity_SteamPipe
================
*/
idAFEntity_SteamPipe::idAFEntity_SteamPipe( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idAFEntity_SteamPipe::idAFEntity_SteamPipe( void ) size %d\r\n", sizeof(*this));
#endif

	steamBody			= 0;
	steamForce			= 0.0f;
	steamUpForce		= 0.0f;
	steamModelDefHandle	= -1;
	memset( &steamRenderEntity, 0, sizeof( steamRenderEntity ) );
}

/*
================
idAFEntity_SteamPipe::~idAFEntity_SteamPipe
================
*/
idAFEntity_SteamPipe::~idAFEntity_SteamPipe( void ) {
	if ( steamModelDefHandle >= 0 ){
		gameRenderWorld->FreeEntityDef( steamModelDefHandle );
	}
}

/*
================
idAFEntity_SteamPipe::Save
================
*/
void idAFEntity_SteamPipe::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idAFEntity_SteamPipe::Save( idSaveGame *savefile )\r\n");
}


/*
================
idAFEntity_SteamPipe::Restore
================
*/
void idAFEntity_SteamPipe::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idAFEntity_SteamPipe::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idAFEntity_SteamPipe::Spawn
================
*/
void idAFEntity_SteamPipe::Spawn( void ) {
    Sys_Printf("void idAFEntity_SteamPipe::Spawn( void )\r\n");
}


/*
================
idAFEntity_SteamPipe::InitSteamRenderEntity
================
*/
void idAFEntity_SteamPipe::InitSteamRenderEntity( void ) {
    Sys_Printf("void idAFEntity_SteamPipe::InitSteamRenderEntity( void )\r\n");
}


/*
================
idAFEntity_SteamPipe::Think
================
*/
void idAFEntity_SteamPipe::Think( void ) {
    Sys_Printf("void idAFEntity_SteamPipe::Think( void )\r\n");
}



/*
===============================================================================

  idAFEntity_ClawFourFingers

===============================================================================
*/

const idEventDef EV_SetFingerAngle( "setFingerAngle", "f" );
const idEventDef EV_StopFingers( "stopFingers" );

CLASS_DECLARATION( idAFEntity_Base, idAFEntity_ClawFourFingers )
	EVENT( EV_SetFingerAngle,		idAFEntity_ClawFourFingers::Event_SetFingerAngle )
	EVENT( EV_StopFingers,			idAFEntity_ClawFourFingers::Event_StopFingers )
END_CLASS

static const char *clawConstraintNames[] = {
	"claw1", "claw2", "claw3", "claw4"
};

/*
================
idAFEntity_ClawFourFingers::idAFEntity_ClawFourFingers
================
*/
idAFEntity_ClawFourFingers::idAFEntity_ClawFourFingers( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idAFEntity_ClawFourFingers::idAFEntity_ClawFourFingers( void ) size %d\r\n", sizeof(*this));
#endif

	fingers[0]	= NULL;
	fingers[1]	= NULL;
	fingers[2]	= NULL;
	fingers[3]	= NULL;
}

/*
================
idAFEntity_ClawFourFingers::Save
================
*/
void idAFEntity_ClawFourFingers::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idAFEntity_ClawFourFingers::Save( idSaveGame *savefile )\r\n");
}


/*
================
idAFEntity_ClawFourFingers::Restore
================
*/
void idAFEntity_ClawFourFingers::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idAFEntity_ClawFourFingers::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idAFEntity_ClawFourFingers::Spawn
================
*/
void idAFEntity_ClawFourFingers::Spawn( void ) {
    Sys_Printf("void idAFEntity_ClawFourFingers::Spawn( void )\r\n");
}


/*
================
idAFEntity_ClawFourFingers::Event_SetFingerAngle
================
*/
void idAFEntity_ClawFourFingers::Event_SetFingerAngle( float angle ) {
    Sys_Printf("void idAFEntity_ClawFourFingers::Event_SetFingerAngle( float angle )\r\n");
}


/*
================
idAFEntity_ClawFourFingers::Event_StopFingers
================
*/
void idAFEntity_ClawFourFingers::Event_StopFingers( void ) {
    Sys_Printf("void idAFEntity_ClawFourFingers::Event_StopFingers( void )\r\n");
}



/*
===============================================================================

  editor support routines

===============================================================================
*/


/*
================
idGameEdit::AF_SpawnEntity
================
*/
bool idGameEdit::AF_SpawnEntity( const char *fileName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameEdit::AF_SpawnEntity( const char *fileName )\r\n");
    return retVal;
}


/*
================
idGameEdit::AF_UpdateEntities
================
*/
void idGameEdit::AF_UpdateEntities( const char *fileName ) {
    Sys_Printf("void idGameEdit::AF_UpdateEntities( const char *fileName )\r\n");
}


/*
================
idGameEdit::AF_UndoChanges
================
*/
void idGameEdit::AF_UndoChanges( void ) {
    Sys_Printf("void idGameEdit::AF_UndoChanges( void )\r\n");
}


/*
================
GetJointTransform
================
*/
typedef struct {
	renderEntity_t *ent;
	const idMD5Joint *joints;
} jointTransformData_t;

static bool GetJointTransform( void *model, const idJointMat *frame, const char *jointName, idVec3 &origin, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GetJointTransform( void *model, const idJointMat *frame, const char *jointName, idVec3 &origin, idMat3 &axis )\r\n");
    return retVal;
}


/*
================
GetArgString
================
*/
static const char *GetArgString( const idDict &args, const idDict *defArgs, const char *key ) {
    Sys_Printf("char *GetArgString( const idDict &args, const idDict *defArgs, const char *key )\r\n");
    return NULL;
}


/*
================
idGameEdit::AF_CreateMesh
================
*/
idRenderModel *idGameEdit::AF_CreateMesh( const idDict &args, idVec3 &meshOrigin, idMat3 &meshAxis, bool &poseIsSet ) {
    Sys_Printf("idRenderModel *idGameEdit::AF_CreateMesh( const idDict &args, idVec3 &meshOrigin, idMat3 &meshAxis, bool &poseIsSet )\r\n");
    return NULL;
}

