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

/***********************************************************************

  idWeapon  
	
***********************************************************************/

//
// event defs
//
const idEventDef EV_Weapon_Clear( "<clear>" );
const idEventDef EV_Weapon_GetOwner( "getOwner", NULL, 'e' );
const idEventDef EV_Weapon_Next( "nextWeapon" );
const idEventDef EV_Weapon_State( "weaponState", "sd" );
const idEventDef EV_Weapon_UseAmmo( "useAmmo", "d" );
const idEventDef EV_Weapon_AddToClip( "addToClip", "d" );
const idEventDef EV_Weapon_AmmoInClip( "ammoInClip", NULL, 'f' );
const idEventDef EV_Weapon_AmmoAvailable( "ammoAvailable", NULL, 'f' );
const idEventDef EV_Weapon_TotalAmmoCount( "totalAmmoCount", NULL, 'f' );
const idEventDef EV_Weapon_ClipSize( "clipSize", NULL, 'f' );
const idEventDef EV_Weapon_WeaponOutOfAmmo( "weaponOutOfAmmo" );
const idEventDef EV_Weapon_WeaponReady( "weaponReady" );
const idEventDef EV_Weapon_WeaponReloading( "weaponReloading" );
const idEventDef EV_Weapon_WeaponHolstered( "weaponHolstered" );
const idEventDef EV_Weapon_WeaponRising( "weaponRising" );
const idEventDef EV_Weapon_WeaponLowering( "weaponLowering" );
const idEventDef EV_Weapon_Flashlight( "flashlight", "d" );
const idEventDef EV_Weapon_LaunchProjectiles( "launchProjectiles", "dffff" );
const idEventDef EV_Weapon_CreateProjectile( "createProjectile", NULL, 'e' );
const idEventDef EV_Weapon_EjectBrass( "ejectBrass" );
const idEventDef EV_Weapon_Melee( "melee", NULL, 'd' );
const idEventDef EV_Weapon_GetWorldModel( "getWorldModel", NULL, 'e' );
const idEventDef EV_Weapon_AllowDrop( "allowDrop", "d" );
const idEventDef EV_Weapon_AutoReload( "autoReload", NULL, 'f' );
const idEventDef EV_Weapon_NetReload( "netReload" );
const idEventDef EV_Weapon_IsInvisible( "isInvisible", NULL, 'f' );
const idEventDef EV_Weapon_NetEndReload( "netEndReload" );

//
// class def
//
CLASS_DECLARATION( idAnimatedEntity, idWeapon )
	EVENT( EV_Weapon_Clear,						idWeapon::Event_Clear )
	EVENT( EV_Weapon_GetOwner,					idWeapon::Event_GetOwner )
	EVENT( EV_Weapon_State,						idWeapon::Event_WeaponState )
	EVENT( EV_Weapon_WeaponReady,				idWeapon::Event_WeaponReady )
	EVENT( EV_Weapon_WeaponOutOfAmmo,			idWeapon::Event_WeaponOutOfAmmo )
	EVENT( EV_Weapon_WeaponReloading,			idWeapon::Event_WeaponReloading )
	EVENT( EV_Weapon_WeaponHolstered,			idWeapon::Event_WeaponHolstered )
	EVENT( EV_Weapon_WeaponRising,				idWeapon::Event_WeaponRising )
	EVENT( EV_Weapon_WeaponLowering,			idWeapon::Event_WeaponLowering )
	EVENT( EV_Weapon_UseAmmo,					idWeapon::Event_UseAmmo )
	EVENT( EV_Weapon_AddToClip,					idWeapon::Event_AddToClip )
	EVENT( EV_Weapon_AmmoInClip,				idWeapon::Event_AmmoInClip )
	EVENT( EV_Weapon_AmmoAvailable,				idWeapon::Event_AmmoAvailable )
	EVENT( EV_Weapon_TotalAmmoCount,			idWeapon::Event_TotalAmmoCount )
	EVENT( EV_Weapon_ClipSize,					idWeapon::Event_ClipSize )
	EVENT( AI_PlayAnim,							idWeapon::Event_PlayAnim )
	EVENT( AI_PlayCycle,						idWeapon::Event_PlayCycle )
	EVENT( AI_SetBlendFrames,					idWeapon::Event_SetBlendFrames )
	EVENT( AI_GetBlendFrames,					idWeapon::Event_GetBlendFrames )
	EVENT( AI_AnimDone,							idWeapon::Event_AnimDone )
	EVENT( EV_Weapon_Next,						idWeapon::Event_Next )
	EVENT( EV_SetSkin,							idWeapon::Event_SetSkin )
	EVENT( EV_Weapon_Flashlight,				idWeapon::Event_Flashlight )
	EVENT( EV_Light_GetLightParm,				idWeapon::Event_GetLightParm )
	EVENT( EV_Light_SetLightParm,				idWeapon::Event_SetLightParm )
	EVENT( EV_Light_SetLightParms,				idWeapon::Event_SetLightParms )
	EVENT( EV_Weapon_LaunchProjectiles,			idWeapon::Event_LaunchProjectiles )
	EVENT( EV_Weapon_CreateProjectile,			idWeapon::Event_CreateProjectile )
	EVENT( EV_Weapon_EjectBrass,				idWeapon::Event_EjectBrass )
	EVENT( EV_Weapon_Melee,						idWeapon::Event_Melee )
	EVENT( EV_Weapon_GetWorldModel,				idWeapon::Event_GetWorldModel )
	EVENT( EV_Weapon_AllowDrop,					idWeapon::Event_AllowDrop )
	EVENT( EV_Weapon_AutoReload,				idWeapon::Event_AutoReload )
	EVENT( EV_Weapon_NetReload,					idWeapon::Event_NetReload )
	EVENT( EV_Weapon_IsInvisible,				idWeapon::Event_IsInvisible )
	EVENT( EV_Weapon_NetEndReload,				idWeapon::Event_NetEndReload )
END_CLASS

/***********************************************************************

	init

***********************************************************************/

/*
================
idWeapon::idWeapon()
================
*/
idWeapon::idWeapon() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idWeapon::idWeapon() size %d\r\n", sizeof(*this));
#endif

	owner					= NULL;
	worldModel				= NULL;
	weaponDef				= NULL;
	thread					= NULL;

	memset( &guiLight, 0, sizeof( guiLight ) );
	memset( &muzzleFlash, 0, sizeof( muzzleFlash ) );
	memset( &worldMuzzleFlash, 0, sizeof( worldMuzzleFlash ) );
	memset( &nozzleGlow, 0, sizeof( nozzleGlow ) );

	muzzleFlashEnd			= 0;
	flashColor				= vec3_origin;
	muzzleFlashHandle		= -1;
	worldMuzzleFlashHandle	= -1;
	guiLightHandle			= -1;
	nozzleGlowHandle		= -1;
	modelDefHandle			= -1;

	berserk					= 2;
	brassDelay				= 0;

	allowDrop				= true;

	Clear();

	fl.networkSync = true;
}

/*
================
idWeapon::~idWeapon()
================
*/
idWeapon::~idWeapon() {
	Clear();
	delete worldModel.GetEntity();
}


/*
================
idWeapon::Spawn
================
*/
void idWeapon::Spawn( void ) {
    Sys_Printf("void idWeapon::Spawn( void )\r\n");
}


/*
================
idWeapon::SetOwner

Only called at player spawn time, not each weapon switch
================
*/
void idWeapon::SetOwner( idPlayer *_owner ) {
    Sys_Printf("void idWeapon::SetOwner( idPlayer *_owner )\r\n");
}


/*
================
idWeapon::ShouldConstructScriptObjectAtSpawn

Called during idEntity::Spawn to see if it should construct the script object or not.
Overridden by subclasses that need to spawn the script object themselves.
================
*/
bool idWeapon::ShouldConstructScriptObjectAtSpawn( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWeapon::ShouldConstructScriptObjectAtSpawn( void )\r\n");
    return retVal;
}


/*
================
idWeapon::CacheWeapon
================
*/
void idWeapon::CacheWeapon( const char *weaponName ) {
    Sys_Printf("void idWeapon::CacheWeapon( const char *weaponName )\r\n");
}


/*
================
idWeapon::Save
================
*/
void idWeapon::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idWeapon::Save( idSaveGame *savefile )\r\n");
}


/*
================
idWeapon::Restore
================
*/
void idWeapon::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idWeapon::Restore( idRestoreGame *savefile )\r\n");
}


/***********************************************************************

	Weapon definition management

***********************************************************************/

/*
================
idWeapon::Clear
================
*/
void idWeapon::Clear( void ) {
    Sys_Printf("void idWeapon::Clear( void )\r\n");
}


/*
================
idWeapon::InitWorldModel
================
*/
void idWeapon::InitWorldModel( const idDeclEntityDef *def ) {
    Sys_Printf("void idWeapon::InitWorldModel( const idDeclEntityDef *def )\r\n");
}


/*
================
idWeapon::GetWeaponDef
================
*/
void idWeapon::GetWeaponDef( const char *objectname, int ammoinclip ) {
    Sys_Printf("void idWeapon::GetWeaponDef( const char *objectname, int ammoinclip )\r\n");
}


/***********************************************************************

	GUIs

***********************************************************************/

/*
================
idWeapon::Icon
================
*/
const char *idWeapon::Icon( void ) const {
    Sys_Printf("char *idWeapon::Icon( void )\r\n");
    return NULL;
}


/*
================
idWeapon::UpdateGUI
================
*/
void idWeapon::UpdateGUI( void ) {
    Sys_Printf("void idWeapon::UpdateGUI( void )\r\n");
}


/***********************************************************************

	Model and muzzleflash

***********************************************************************/

/*
================
idWeapon::UpdateFlashPosition
================
*/
void idWeapon::UpdateFlashPosition( void ) {
    Sys_Printf("void idWeapon::UpdateFlashPosition( void )\r\n");
}


/*
================
idWeapon::MuzzleFlashLight
================
*/
void idWeapon::MuzzleFlashLight( void ) {
    Sys_Printf("void idWeapon::MuzzleFlashLight( void )\r\n");
}


/*
================
idWeapon::UpdateSkin
================
*/
bool idWeapon::UpdateSkin( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWeapon::UpdateSkin( void )\r\n");
    return retVal;
}


/*
================
idWeapon::SetModel
================
*/
void idWeapon::SetModel( const char *modelname ) {
    Sys_Printf("void idWeapon::SetModel( const char *modelname )\r\n");
}


/*
================
idWeapon::GetGlobalJointTransform

This returns the offset and axis of a weapon bone in world space, suitable for attaching models or lights
================
*/
bool idWeapon::GetGlobalJointTransform( bool viewModel, const jointHandle_t jointHandle, idVec3 &offset, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWeapon::GetGlobalJointTransform( bool viewModel, const jointHandle_t jointHandle, idVec3 &offset, idMat3 &axis )\r\n");
    return retVal;
}


/*
================
idWeapon::SetPushVelocity
================
*/
void idWeapon::SetPushVelocity( const idVec3 &pushVelocity ) {
    Sys_Printf("void idWeapon::SetPushVelocity( const idVec3 &pushVelocity )\r\n");
}



/***********************************************************************

	State control/player interface

***********************************************************************/

/*
================
idWeapon::Think
================
*/
void idWeapon::Think( void ) {
    Sys_Printf("void idWeapon::Think( void )\r\n");
}


/*
================
idWeapon::Raise
================
*/
void idWeapon::Raise( void ) {
    Sys_Printf("void idWeapon::Raise( void )\r\n");
}


/*
================
idWeapon::PutAway
================
*/
void idWeapon::PutAway( void ) {
    Sys_Printf("void idWeapon::PutAway( void )\r\n");
}


/*
================
idWeapon::Reload
NOTE: this is only for impulse-triggered reload, auto reload is scripted
================
*/
void idWeapon::Reload( void ) {
    Sys_Printf("void idWeapon::Reload( void )\r\n");
}


/*
================
idWeapon::LowerWeapon
================
*/
void idWeapon::LowerWeapon( void ) {
    Sys_Printf("void idWeapon::LowerWeapon( void )\r\n");
}


/*
================
idWeapon::RaiseWeapon
================
*/
void idWeapon::RaiseWeapon( void ) {
    Sys_Printf("void idWeapon::RaiseWeapon( void )\r\n");
}


/*
================
idWeapon::HideWeapon
================
*/
void idWeapon::HideWeapon( void ) {
    Sys_Printf("void idWeapon::HideWeapon( void )\r\n");
}


/*
================
idWeapon::ShowWeapon
================
*/
void idWeapon::ShowWeapon( void ) {
    Sys_Printf("void idWeapon::ShowWeapon( void )\r\n");
}


/*
================
idWeapon::HideWorldModel
================
*/
void idWeapon::HideWorldModel( void ) {
    Sys_Printf("void idWeapon::HideWorldModel( void )\r\n");
}


/*
================
idWeapon::ShowWorldModel
================
*/
void idWeapon::ShowWorldModel( void ) {
    Sys_Printf("void idWeapon::ShowWorldModel( void )\r\n");
}


/*
================
idWeapon::OwnerDied
================
*/
void idWeapon::OwnerDied( void ) {
    Sys_Printf("void idWeapon::OwnerDied( void )\r\n");
}


/*
================
idWeapon::BeginAttack
================
*/
void idWeapon::BeginAttack( void ) {
    Sys_Printf("void idWeapon::BeginAttack( void )\r\n");
}


/*
================
idWeapon::EndAttack
================
*/
void idWeapon::EndAttack( void ) {
    Sys_Printf("void idWeapon::EndAttack( void )\r\n");
}


/*
================
idWeapon::isReady
================
*/
bool idWeapon::IsReady( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWeapon::IsReady( void )\r\n");
    return retVal;
}


/*
================
idWeapon::IsReloading
================
*/
bool idWeapon::IsReloading( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWeapon::IsReloading( void )\r\n");
    return retVal;
}


/*
================
idWeapon::IsHolstered
================
*/
bool idWeapon::IsHolstered( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWeapon::IsHolstered( void )\r\n");
    return retVal;
}


/*
================
idWeapon::ShowCrosshair
================
*/
bool idWeapon::ShowCrosshair( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWeapon::ShowCrosshair( void )\r\n");
    return retVal;
}


/*
=====================
idWeapon::CanDrop
=====================
*/
bool idWeapon::CanDrop( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWeapon::CanDrop( void )\r\n");
    return retVal;
}


/*
================
idWeapon::WeaponStolen
================
*/
void idWeapon::WeaponStolen( void ) {
    Sys_Printf("void idWeapon::WeaponStolen( void )\r\n");
}


/*
=====================
idWeapon::DropItem
=====================
*/
idEntity * idWeapon::DropItem( const idVec3 &velocity, int activateDelay, int removeDelay, bool died ) {
    Sys_Printf("idEntity * idWeapon::DropItem( const idVec3 &velocity, int activateDelay, int removeDelay, bool died )\r\n");
    return NULL;
}


/***********************************************************************

	Script state management

***********************************************************************/

/*
=====================
idWeapon::SetState
=====================
*/
void idWeapon::SetState( const char *statename, int blendFrames ) {
    Sys_Printf("void idWeapon::SetState( const char *statename, int blendFrames )\r\n");
}



/***********************************************************************

	Particles/Effects

***********************************************************************/

/*
================
idWeapon::UpdateNozzelFx
================
*/
void idWeapon::UpdateNozzleFx( void ) {
    Sys_Printf("void idWeapon::UpdateNozzleFx( void )\r\n");
}



/*
================
idWeapon::BloodSplat
================
*/
bool idWeapon::BloodSplat( float size ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWeapon::BloodSplat( float size )\r\n");
    return retVal;
}



/***********************************************************************

	Visual presentation

***********************************************************************/

/*
================
idWeapon::MuzzleRise

The machinegun and chaingun will incrementally back up as they are being fired
================
*/
void idWeapon::MuzzleRise( idVec3 &origin, idMat3 &axis ) {
    Sys_Printf("void idWeapon::MuzzleRise( idVec3 &origin, idMat3 &axis )\r\n");
}


/*
================
idWeapon::ConstructScriptObject

Called during idEntity::Spawn.  Calls the constructor on the script object.
Can be overridden by subclasses when a thread doesn't need to be allocated.
================
*/
idThread *idWeapon::ConstructScriptObject( void ) {
    Sys_Printf("idThread *idWeapon::ConstructScriptObject( void )\r\n");
    return NULL;
}


/*
================
idWeapon::DeconstructScriptObject

Called during idEntity::~idEntity.  Calls the destructor on the script object.
Can be overridden by subclasses when a thread doesn't need to be allocated.
Not called during idGameLocal::MapShutdown.
================
*/
void idWeapon::DeconstructScriptObject( void ) {
    Sys_Printf("void idWeapon::DeconstructScriptObject( void )\r\n");
}


/*
================
idWeapon::UpdateScript
================
*/
void idWeapon::UpdateScript( void ) {
    Sys_Printf("void idWeapon::UpdateScript( void )\r\n");
}


/*
================
idWeapon::AlertMonsters
================
*/
void idWeapon::AlertMonsters( void ) {
    Sys_Printf("void idWeapon::AlertMonsters( void )\r\n");
}


/*
================
idWeapon::PresentWeapon
================
*/
void idWeapon::PresentWeapon( bool showViewModel ) {
    Sys_Printf("void idWeapon::PresentWeapon( bool showViewModel )\r\n");
}


/*
================
idWeapon::EnterCinematic
================
*/
void idWeapon::EnterCinematic( void ) {
    Sys_Printf("void idWeapon::EnterCinematic( void )\r\n");
}


/*
================
idWeapon::ExitCinematic
================
*/
void idWeapon::ExitCinematic( void ) {
    Sys_Printf("void idWeapon::ExitCinematic( void )\r\n");
}


/*
================
idWeapon::NetCatchup
================
*/
void idWeapon::NetCatchup( void ) {
    Sys_Printf("void idWeapon::NetCatchup( void )\r\n");
}


/*
================
idWeapon::GetZoomFov
================
*/
int	idWeapon::GetZoomFov( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidWeapon::GetZoomFov( void )\r\n");
    return retVal;
}


/*
================
idWeapon::GetWeaponAngleOffsets
================
*/
void idWeapon::GetWeaponAngleOffsets( int *average, float *scale, float *max ) {
    Sys_Printf("void idWeapon::GetWeaponAngleOffsets( int *average, float *scale, float *max )\r\n");
}


/*
================
idWeapon::GetWeaponTimeOffsets
================
*/
void idWeapon::GetWeaponTimeOffsets( float *time, float *scale ) {
    Sys_Printf("void idWeapon::GetWeaponTimeOffsets( float *time, float *scale )\r\n");
}



/***********************************************************************

	Ammo

***********************************************************************/

/*
================
idWeapon::GetAmmoNumForName
================
*/
ammo_t idWeapon::GetAmmoNumForName( const char *ammoname ) {
    ammo_t retVal;
    memset(&retVal, 0, sizeof(ammo_t));
    Sys_Printf("ammo_t idWeapon::GetAmmoNumForName( const char *ammoname )\r\n");
    return retVal;
}


/*
================
idWeapon::GetAmmoNameForNum
================
*/
const char *idWeapon::GetAmmoNameForNum( ammo_t ammonum ) {
    Sys_Printf("char *idWeapon::GetAmmoNameForNum( ammo_t ammonum )\r\n");
    return NULL;
}


/*
================
idWeapon::GetAmmoPickupNameForNum
================
*/
const char *idWeapon::GetAmmoPickupNameForNum( ammo_t ammonum ) {
    Sys_Printf("char *idWeapon::GetAmmoPickupNameForNum( ammo_t ammonum )\r\n");
    return NULL;
}


/*
================
idWeapon::AmmoAvailable
================
*/
int idWeapon::AmmoAvailable( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWeapon::AmmoAvailable( void )\r\n");
    return retVal;
}


/*
================
idWeapon::AmmoInClip
================
*/
int idWeapon::AmmoInClip( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWeapon::AmmoInClip( void )\r\n");
    return retVal;
}


/*
================
idWeapon::ResetAmmoClip
================
*/
void idWeapon::ResetAmmoClip( void ) {
    Sys_Printf("void idWeapon::ResetAmmoClip( void )\r\n");
}


/*
================
idWeapon::GetAmmoType
================
*/
ammo_t idWeapon::GetAmmoType( void ) const {
    ammo_t retVal;
    memset(&retVal, 0, sizeof(ammo_t));
    Sys_Printf("ammo_t idWeapon::GetAmmoType( void )\r\n");
    return retVal;
}


/*
================
idWeapon::ClipSize
================
*/
int	idWeapon::ClipSize( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidWeapon::ClipSize( void )\r\n");
    return retVal;
}


/*
================
idWeapon::LowAmmo
================
*/
int	idWeapon::LowAmmo() const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidWeapon::LowAmmo()\r\n");
    return retVal;
}


/*
================
idWeapon::AmmoRequired
================
*/
int	idWeapon::AmmoRequired( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidWeapon::AmmoRequired( void )\r\n");
    return retVal;
}


/*
================
idWeapon::WriteToSnapshot
================
*/
void idWeapon::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idWeapon::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idWeapon::ReadFromSnapshot
================
*/
void idWeapon::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idWeapon::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idWeapon::ClientReceiveEvent
================
*/
bool idWeapon::ClientReceiveEvent( int event, int time, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idWeapon::ClientReceiveEvent( int event, int time, const idBitMsg &msg )\r\n");
    return retVal;
}


/***********************************************************************

	Script events

***********************************************************************/

/*
===============
idWeapon::Event_Clear
===============
*/
void idWeapon::Event_Clear( void ) {
    Sys_Printf("void idWeapon::Event_Clear( void )\r\n");
}


/*
===============
idWeapon::Event_GetOwner
===============
*/
void idWeapon::Event_GetOwner( void ) {
    Sys_Printf("void idWeapon::Event_GetOwner( void )\r\n");
}


/*
===============
idWeapon::Event_WeaponState
===============
*/
void idWeapon::Event_WeaponState( const char *statename, int blendFrames ) {
    Sys_Printf("void idWeapon::Event_WeaponState( const char *statename, int blendFrames )\r\n");
}


/*
===============
idWeapon::Event_WeaponReady
===============
*/
void idWeapon::Event_WeaponReady( void ) {
    Sys_Printf("void idWeapon::Event_WeaponReady( void )\r\n");
}


/*
===============
idWeapon::Event_WeaponOutOfAmmo
===============
*/
void idWeapon::Event_WeaponOutOfAmmo( void ) {
    Sys_Printf("void idWeapon::Event_WeaponOutOfAmmo( void )\r\n");
}


/*
===============
idWeapon::Event_WeaponReloading
===============
*/
void idWeapon::Event_WeaponReloading( void ) {
    Sys_Printf("void idWeapon::Event_WeaponReloading( void )\r\n");
}


/*
===============
idWeapon::Event_WeaponHolstered
===============
*/
void idWeapon::Event_WeaponHolstered( void ) {
    Sys_Printf("void idWeapon::Event_WeaponHolstered( void )\r\n");
}


/*
===============
idWeapon::Event_WeaponRising
===============
*/
void idWeapon::Event_WeaponRising( void ) {
    Sys_Printf("void idWeapon::Event_WeaponRising( void )\r\n");
}


/*
===============
idWeapon::Event_WeaponLowering
===============
*/
void idWeapon::Event_WeaponLowering( void ) {
    Sys_Printf("void idWeapon::Event_WeaponLowering( void )\r\n");
}


/*
===============
idWeapon::Event_UseAmmo
===============
*/
void idWeapon::Event_UseAmmo( int amount ) {
    Sys_Printf("void idWeapon::Event_UseAmmo( int amount )\r\n");
}


/*
===============
idWeapon::Event_AddToClip
===============
*/
void idWeapon::Event_AddToClip( int amount ) {
    Sys_Printf("void idWeapon::Event_AddToClip( int amount )\r\n");
}


/*
===============
idWeapon::Event_AmmoInClip
===============
*/
void idWeapon::Event_AmmoInClip( void ) {
    Sys_Printf("void idWeapon::Event_AmmoInClip( void )\r\n");
}


/*
===============
idWeapon::Event_AmmoAvailable
===============
*/
void idWeapon::Event_AmmoAvailable( void ) {
    Sys_Printf("void idWeapon::Event_AmmoAvailable( void )\r\n");
}


/*
===============
idWeapon::Event_TotalAmmoCount
===============
*/
void idWeapon::Event_TotalAmmoCount( void ) {
    Sys_Printf("void idWeapon::Event_TotalAmmoCount( void )\r\n");
}


/*
===============
idWeapon::Event_ClipSize
===============
*/
void idWeapon::Event_ClipSize( void ) {
    Sys_Printf("void idWeapon::Event_ClipSize( void )\r\n");
}


/*
===============
idWeapon::Event_AutoReload
===============
*/
void idWeapon::Event_AutoReload( void ) {
    Sys_Printf("void idWeapon::Event_AutoReload( void )\r\n");
}


/*
===============
idWeapon::Event_NetReload
===============
*/
void idWeapon::Event_NetReload( void ) {
    Sys_Printf("void idWeapon::Event_NetReload( void )\r\n");
}


/*
===============
idWeapon::Event_NetEndReload
===============
*/
void idWeapon::Event_NetEndReload( void ) {
    Sys_Printf("void idWeapon::Event_NetEndReload( void )\r\n");
}


/*
===============
idWeapon::Event_PlayAnim
===============
*/
void idWeapon::Event_PlayAnim( int channel, const char *animname ) {
    Sys_Printf("void idWeapon::Event_PlayAnim( int channel, const char *animname )\r\n");
}


/*
===============
idWeapon::Event_PlayCycle
===============
*/
void idWeapon::Event_PlayCycle( int channel, const char *animname ) {
    Sys_Printf("void idWeapon::Event_PlayCycle( int channel, const char *animname )\r\n");
}


/*
===============
idWeapon::Event_AnimDone
===============
*/
void idWeapon::Event_AnimDone( int channel, int blendFrames ) {
    Sys_Printf("void idWeapon::Event_AnimDone( int channel, int blendFrames )\r\n");
}


/*
===============
idWeapon::Event_SetBlendFrames
===============
*/
void idWeapon::Event_SetBlendFrames( int channel, int blendFrames ) {
    Sys_Printf("void idWeapon::Event_SetBlendFrames( int channel, int blendFrames )\r\n");
}


/*
===============
idWeapon::Event_GetBlendFrames
===============
*/
void idWeapon::Event_GetBlendFrames( int channel ) {
    Sys_Printf("void idWeapon::Event_GetBlendFrames( int channel )\r\n");
}


/*
================
idWeapon::Event_Next
================
*/
void idWeapon::Event_Next( void ) {
    Sys_Printf("void idWeapon::Event_Next( void )\r\n");
}


/*
================
idWeapon::Event_SetSkin
================
*/
void idWeapon::Event_SetSkin( const char *skinname ) {
    Sys_Printf("void idWeapon::Event_SetSkin( const char *skinname )\r\n");
}


/*
================
idWeapon::Event_Flashlight
================
*/
void idWeapon::Event_Flashlight( int enable ) {
    Sys_Printf("void idWeapon::Event_Flashlight( int enable )\r\n");
}


/*
================
idWeapon::Event_GetLightParm
================
*/
void idWeapon::Event_GetLightParm( int parmnum ) {
    Sys_Printf("void idWeapon::Event_GetLightParm( int parmnum )\r\n");
}


/*
================
idWeapon::Event_SetLightParm
================
*/
void idWeapon::Event_SetLightParm( int parmnum, float value ) {
    Sys_Printf("void idWeapon::Event_SetLightParm( int parmnum, float value )\r\n");
}


/*
================
idWeapon::Event_SetLightParms
================
*/
void idWeapon::Event_SetLightParms( float parm0, float parm1, float parm2, float parm3 ) {
    Sys_Printf("void idWeapon::Event_SetLightParms( float parm0, float parm1, float parm2, float parm3 )\r\n");
}


/*
================
idWeapon::Event_CreateProjectile
================
*/
void idWeapon::Event_CreateProjectile( void ) {
    Sys_Printf("void idWeapon::Event_CreateProjectile( void )\r\n");
}


/*
================
idWeapon::Event_LaunchProjectiles
================
*/
void idWeapon::Event_LaunchProjectiles( int num_projectiles, float spread, float fuseOffset, float launchPower, float dmgPower ) {
    Sys_Printf("void idWeapon::Event_LaunchProjectiles( int num_projectiles, float spread, float fuseOffset, float launchPower, float dmgPower )\r\n");
}


/*
=====================
idWeapon::Event_Melee
=====================
*/
void idWeapon::Event_Melee( void ) {
    Sys_Printf("void idWeapon::Event_Melee( void )\r\n");
}


/*
=====================
idWeapon::Event_GetWorldModel
=====================
*/
void idWeapon::Event_GetWorldModel( void ) {
    Sys_Printf("void idWeapon::Event_GetWorldModel( void )\r\n");
}


/*
=====================
idWeapon::Event_AllowDrop
=====================
*/
void idWeapon::Event_AllowDrop( int allow ) {
    Sys_Printf("void idWeapon::Event_AllowDrop( int allow )\r\n");
}


/*
================
idWeapon::Event_EjectBrass

Toss a shell model out from the breach if the bone is present
================
*/
void idWeapon::Event_EjectBrass( void ) {
    Sys_Printf("void idWeapon::Event_EjectBrass( void )\r\n");
}


/*
===============
idWeapon::Event_IsInvisible
===============
*/
void idWeapon::Event_IsInvisible( void ) {
    Sys_Printf("void idWeapon::Event_IsInvisible( void )\r\n");
}


/*
===============
idWeapon::ClientPredictionThink
===============
*/
void idWeapon::ClientPredictionThink( void ) {
    Sys_Printf("void idWeapon::ClientPredictionThink( void )\r\n");
}

