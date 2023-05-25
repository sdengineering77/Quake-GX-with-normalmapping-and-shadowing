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

	Player control of the Doom Marine.
	This object handles all player movement and world interaction.

===============================================================================
*/

// distance between ladder rungs (actually is half that distance, but this sounds better)
const int LADDER_RUNG_DISTANCE = 32;

// amount of health per dose from the health station
const int HEALTH_PER_DOSE = 10;

// time before a weapon dropped to the floor disappears
const int WEAPON_DROP_TIME = 20 * 1000;

// time before a next or prev weapon switch happens
const int WEAPON_SWITCH_DELAY = 150;

// how many units to raise spectator above default view height so it's in the head of someone
const int SPECTATE_RAISE = 25;

const int HEALTHPULSE_TIME = 333;

// minimum speed to bob and play run/walk animations at
const float MIN_BOB_SPEED = 5.0f;

const idEventDef EV_Player_GetButtons( "getButtons", NULL, 'd' );
const idEventDef EV_Player_GetMove( "getMove", NULL, 'v' );
const idEventDef EV_Player_GetViewAngles( "getViewAngles", NULL, 'v' );
const idEventDef EV_Player_StopFxFov( "stopFxFov" );
const idEventDef EV_Player_EnableWeapon( "enableWeapon" );
const idEventDef EV_Player_DisableWeapon( "disableWeapon" );
const idEventDef EV_Player_GetCurrentWeapon( "getCurrentWeapon", NULL, 's' );
const idEventDef EV_Player_GetPreviousWeapon( "getPreviousWeapon", NULL, 's' );
const idEventDef EV_Player_SelectWeapon( "selectWeapon", "s" );
const idEventDef EV_Player_GetWeaponEntity( "getWeaponEntity", NULL, 'e' );
const idEventDef EV_Player_OpenPDA( "openPDA" );
const idEventDef EV_Player_InPDA( "inPDA", NULL, 'd' );
const idEventDef EV_Player_ExitTeleporter( "exitTeleporter" );
const idEventDef EV_Player_StopAudioLog( "stopAudioLog" );
const idEventDef EV_Player_HideTip( "hideTip" );
const idEventDef EV_Player_LevelTrigger( "levelTrigger" );
const idEventDef EV_SpectatorTouch( "spectatorTouch", "et" );
const idEventDef EV_Player_GetIdealWeapon( "getIdealWeapon", NULL, 's' );

CLASS_DECLARATION( idActor, idPlayer )
	EVENT( EV_Player_GetButtons,			idPlayer::Event_GetButtons )
	EVENT( EV_Player_GetMove,				idPlayer::Event_GetMove )
	EVENT( EV_Player_GetViewAngles,			idPlayer::Event_GetViewAngles )
	EVENT( EV_Player_StopFxFov,				idPlayer::Event_StopFxFov )
	EVENT( EV_Player_EnableWeapon,			idPlayer::Event_EnableWeapon )
	EVENT( EV_Player_DisableWeapon,			idPlayer::Event_DisableWeapon )
	EVENT( EV_Player_GetCurrentWeapon,		idPlayer::Event_GetCurrentWeapon )
	EVENT( EV_Player_GetPreviousWeapon,		idPlayer::Event_GetPreviousWeapon )
	EVENT( EV_Player_SelectWeapon,			idPlayer::Event_SelectWeapon )
	EVENT( EV_Player_GetWeaponEntity,		idPlayer::Event_GetWeaponEntity )
	EVENT( EV_Player_OpenPDA,				idPlayer::Event_OpenPDA )
	EVENT( EV_Player_InPDA,					idPlayer::Event_InPDA )
	EVENT( EV_Player_ExitTeleporter,		idPlayer::Event_ExitTeleporter )
	EVENT( EV_Player_StopAudioLog,			idPlayer::Event_StopAudioLog )
	EVENT( EV_Player_HideTip,				idPlayer::Event_HideTip )
	EVENT( EV_Player_LevelTrigger,			idPlayer::Event_LevelTrigger )
	EVENT( EV_Gibbed,						idPlayer::Event_Gibbed )
	EVENT( EV_Player_GetIdealWeapon,		idPlayer::Event_GetIdealWeapon )
END_CLASS

const int MAX_RESPAWN_TIME = 10000;
const int RAGDOLL_DEATH_TIME = 3000;
const int MAX_PDAS = 64;
const int MAX_PDA_ITEMS = 128;
const int STEPUP_TIME = 200;
const int MAX_INVENTORY_ITEMS = 20;

idVec3 idPlayer::colorBarTable[ 5 ] = {
	idVec3( 0.25f, 0.25f, 0.25f ),
	idVec3( 1.00f, 0.00f, 0.00f ),
	idVec3( 0.00f, 0.80f, 0.10f ),
	idVec3( 0.20f, 0.50f, 0.80f ),
	idVec3( 1.00f, 0.80f, 0.10f )
};

/*
==============
idInventory::Clear
==============
*/
void idInventory::Clear( void ) {
    Sys_Printf("void idInventory::Clear( void )\r\n");
}


/*
==============
idInventory::GivePowerUp
==============
*/
void idInventory::GivePowerUp( idPlayer *player, int powerup, int msec ) {
    Sys_Printf("void idInventory::GivePowerUp( idPlayer *player, int powerup, int msec )\r\n");
}


/*
==============
idInventory::ClearPowerUps
==============
*/
void idInventory::ClearPowerUps( void ) {
    Sys_Printf("void idInventory::ClearPowerUps( void )\r\n");
}


/*
==============
idInventory::GetPersistantData
==============
*/
void idInventory::GetPersistantData( idDict &dict ) {
    Sys_Printf("void idInventory::GetPersistantData( idDict &dict )\r\n");
}


/*
==============
idInventory::RestoreInventory
==============
*/
void idInventory::RestoreInventory( idPlayer *owner, const idDict &dict ) {
    Sys_Printf("void idInventory::RestoreInventory( idPlayer *owner, const idDict &dict )\r\n");
}


/*
==============
idInventory::Save
==============
*/
void idInventory::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idInventory::Save( idSaveGame *savefile )\r\n");
}


/*
==============
idInventory::Restore
==============
*/
void idInventory::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idInventory::Restore( idRestoreGame *savefile )\r\n");
}


/*
==============
idInventory::AmmoIndexForAmmoClass
==============
*/
ammo_t idInventory::AmmoIndexForAmmoClass( const char *ammo_classname ) const {
    ammo_t retVal;
    memset(&retVal, 0, sizeof(ammo_t));
    Sys_Printf("ammo_t idInventory::AmmoIndexForAmmoClass( const char *ammo_classname )\r\n");
    return retVal;
}


/*
==============
idInventory::AmmoIndexForAmmoClass
==============
*/
int idInventory::MaxAmmoForAmmoClass( idPlayer *owner, const char *ammo_classname ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idInventory::MaxAmmoForAmmoClass( idPlayer *owner, const char *ammo_classname )\r\n");
    return retVal;
}


/*
==============
idInventory::AmmoPickupNameForIndex
==============
*/
const char *idInventory::AmmoPickupNameForIndex( ammo_t ammonum ) const {
    Sys_Printf("char *idInventory::AmmoPickupNameForIndex( ammo_t ammonum )\r\n");
    return NULL;
}


/*
==============
idInventory::WeaponIndexForAmmoClass
mapping could be prepared in the constructor
==============
*/
int idInventory::WeaponIndexForAmmoClass( const idDict & spawnArgs, const char *ammo_classname ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idInventory::WeaponIndexForAmmoClass( const idDict & spawnArgs, const char *ammo_classname )\r\n");
    return retVal;
}


/*
==============
idInventory::AmmoIndexForWeaponClass
==============
*/
ammo_t idInventory::AmmoIndexForWeaponClass( const char *weapon_classname, int *ammoRequired ) {
    ammo_t retVal;
    memset(&retVal, 0, sizeof(ammo_t));
    Sys_Printf("ammo_t idInventory::AmmoIndexForWeaponClass( const char *weapon_classname, int *ammoRequired )\r\n");
    return retVal;
}


/*
==============
idInventory::AddPickupName
==============
*/
void idInventory::AddPickupName( const char *name, const char *icon ) {
    Sys_Printf("void idInventory::AddPickupName( const char *name, const char *icon )\r\n");
}


/*
==============
idInventory::Give
==============
*/
bool idInventory::Give( idPlayer *owner, const idDict &spawnArgs, const char *statname, const char *value, int *idealWeapon, bool updateHud ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idInventory::Give( idPlayer *owner, const idDict &spawnArgs, const char *statname, const char *value, int *idealWeapon, bool updateHud )\r\n");
    return retVal;
}


/*
===============
idInventoy::Drop
===============
*/
void idInventory::Drop( const idDict &spawnArgs, const char *weapon_classname, int weapon_index ) {
    Sys_Printf("void idInventory::Drop( const idDict &spawnArgs, const char *weapon_classname, int weapon_index )\r\n");
}


/*
===============
idInventory::HasAmmo
===============
*/
int idInventory::HasAmmo( ammo_t type, int amount ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idInventory::HasAmmo( ammo_t type, int amount )\r\n");
    return retVal;
}


/*
===============
idInventory::HasAmmo
===============
*/
int idInventory::HasAmmo( const char *weapon_classname ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idInventory::HasAmmo( const char *weapon_classname )\r\n");
    return retVal;
}


/*
===============
idInventory::UseAmmo
===============
*/
bool idInventory::UseAmmo( ammo_t type, int amount ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idInventory::UseAmmo( ammo_t type, int amount )\r\n");
    return retVal;
}


/*
===============
idInventory::UpdateArmor
===============
*/
void idInventory::UpdateArmor( void ) {
    Sys_Printf("void idInventory::UpdateArmor( void )\r\n");
}


/*
==============
idPlayer::idPlayer
==============
*/
idPlayer::idPlayer() {
	memset( &usercmd, 0, sizeof( usercmd ) );

	noclip					= false;
	godmode					= false;

	spawnAnglesSet			= false;
	spawnAngles				= ang_zero;
	viewAngles				= ang_zero;
	cmdAngles				= ang_zero;

	oldButtons				= 0;
	buttonMask				= 0;
	oldFlags				= 0;

	lastHitTime				= 0;
	lastSndHitTime			= 0;
	lastSavingThrowTime		= 0;

	weapon					= NULL;

	hud						= NULL;
	objectiveSystem			= NULL;
	objectiveSystemOpen		= false;

	heartRate				= BASE_HEARTRATE;
	heartInfo.Init( 0, 0, 0, 0 );
	lastHeartAdjust			= 0;
	lastHeartBeat			= 0;
	lastDmgTime				= 0;
	deathClearContentsTime	= 0;
	lastArmorPulse			= -10000;
	stamina					= 0.0f;
	healthPool				= 0.0f;
	nextHealthPulse			= 0;
	healthPulse				= false;
	nextHealthTake			= 0;
	healthTake				= false;

	scoreBoardOpen			= false;
	forceScoreBoard			= false;
	forceRespawn			= false;
	spectating				= false;
	spectator				= 0;
	colorBar				= vec3_zero;
	colorBarIndex			= 0;
	forcedReady				= false;
	wantSpectate			= false;

	lastHitToggle			= false;

	minRespawnTime			= 0;
	maxRespawnTime			= 0;

	firstPersonViewOrigin	= vec3_zero;
	firstPersonViewAxis		= mat3_identity;

	hipJoint				= INVALID_JOINT;
	chestJoint				= INVALID_JOINT;
	headJoint				= INVALID_JOINT;

	bobFoot					= 0;
	bobFrac					= 0.0f;
	bobfracsin				= 0.0f;
	bobCycle				= 0;
	xyspeed					= 0.0f;
	stepUpTime				= 0;
	stepUpDelta				= 0.0f;
	idealLegsYaw			= 0.0f;
	legsYaw					= 0.0f;
	legsForward				= true;
	oldViewYaw				= 0.0f;
	viewBobAngles			= ang_zero;
	viewBob					= vec3_zero;
	landChange				= 0;
	landTime				= 0;

	currentWeapon			= -1;
	idealWeapon				= -1;
	previousWeapon			= -1;
	weaponSwitchTime		=  0;
	weaponEnabled			= true;
	weapon_soulcube			= -1;
	weapon_pda				= -1;
	weapon_fists			= -1;
	showWeaponViewModel		= true;

	skin					= NULL;
	powerUpSkin				= NULL;
	baseSkinName			= "";

	numProjectilesFired		= 0;
	numProjectileHits		= 0;

	airless					= false;
	airTics					= 0;
	lastAirDamage			= 0;

	gibDeath				= false;
	gibsLaunched			= false;
	gibsDir					= vec3_zero;

	zoomFov.Init( 0, 0, 0, 0 );
	centerView.Init( 0, 0, 0, 0 );
	fxFov					= false;

	influenceFov			= 0;
	influenceActive			= 0;
	influenceRadius			= 0.0f;
	influenceEntity			= NULL;
	influenceMaterial		= NULL;
	influenceSkin			= NULL;

	privateCameraView		= NULL;

	memset( loggedViewAngles, 0, sizeof( loggedViewAngles ) );
	memset( loggedAccel, 0, sizeof( loggedAccel ) );
	currentLoggedAccel	= 0;

	focusTime				= 0;
	focusGUIent				= NULL;
	focusUI					= NULL;
	focusCharacter			= NULL;
	talkCursor				= 0;
	focusVehicle			= NULL;
	cursor					= NULL;
	
	oldMouseX				= 0;
	oldMouseY				= 0;

	pdaAudio				= "";
	pdaVideo				= "";
	pdaVideoWave			= "";

	lastDamageDef			= 0;
	lastDamageDir			= vec3_zero;
	lastDamageLocation		= 0;
	smoothedFrame			= 0;
	smoothedOriginUpdated	= false;
	smoothedOrigin			= vec3_zero;
	smoothedAngles			= ang_zero;

	fl.networkSync			= true;

	latchedTeam				= -1;
	doingDeathSkin			= false;
	weaponGone				= false;
	useInitialSpawns		= false;
	tourneyRank				= 0;
	lastSpectateTeleport	= 0;
	tourneyLine				= 0;
	hiddenWeapon			= false;
	tipUp					= false;
	objectiveUp				= false;
	teleportEntity			= NULL;
	teleportKiller			= -1;
	respawning				= false;
	ready					= false;
	leader					= false;
	lastSpectateChange		= 0;
	lastTeleFX				= -9999;
	weaponCatchup			= false;
	lastSnapshotSequence	= 0;

	MPAim					= -1;
	lastMPAim				= -1;
	lastMPAimTime			= 0;
	MPAimFadeTime			= 0;
	MPAimHighlight			= false;

	spawnedTime				= 0;
	lastManOver				= false;
	lastManPlayAgain		= false;
	lastManPresent			= false;

	isTelefragged			= false;

	isLagged				= false;
	isChatting				= false;

	selfSmooth				= false;
}

/*
==============
idPlayer::LinkScriptVariables

set up conditions for animation
==============
*/
void idPlayer::LinkScriptVariables( void ) {
    Sys_Printf("void idPlayer::LinkScriptVariables( void )\r\n");
}


/*
==============
idPlayer::SetupWeaponEntity
==============
*/
void idPlayer::SetupWeaponEntity( void ) {
    Sys_Printf("void idPlayer::SetupWeaponEntity( void )\r\n");
}


/*
==============
idPlayer::Init
==============
*/
void idPlayer::Init( void ) {
    Sys_Printf("void idPlayer::Init( void )\r\n");
}


/*
==============
idPlayer::Spawn

Prepare any resources used by the player.
==============
*/
void idPlayer::Spawn( void ) {
    Sys_Printf("void idPlayer::Spawn( void )\r\n");
}


/*
==============
idPlayer::~idPlayer()

Release any resources used by the player.
==============
*/
idPlayer::~idPlayer() {
	delete weapon.GetEntity();
	weapon = NULL;
}

/*
===========
idPlayer::Save
===========
*/
void idPlayer::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idPlayer::Save( idSaveGame *savefile )\r\n");
}


/*
===========
idPlayer::Restore
===========
*/
void idPlayer::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idPlayer::Restore( idRestoreGame *savefile )\r\n");
}


/*
===============
idPlayer::PrepareForRestart
================
*/
void idPlayer::PrepareForRestart( void ) {
    Sys_Printf("void idPlayer::PrepareForRestart( void )\r\n");
}


/*
===============
idPlayer::Restart
================
*/
void idPlayer::Restart( void ) {
    Sys_Printf("void idPlayer::Restart( void )\r\n");
}


/*
===============
idPlayer::ServerSpectate
================
*/
void idPlayer::ServerSpectate( bool spectate ) {
    Sys_Printf("void idPlayer::ServerSpectate( bool spectate )\r\n");
}


/*
===========
idPlayer::SelectInitialSpawnPoint

Try to find a spawn point marked 'initial', otherwise
use normal spawn selection.
============
*/
void idPlayer::SelectInitialSpawnPoint( idVec3 &origin, idAngles &angles ) {
    Sys_Printf("void idPlayer::SelectInitialSpawnPoint( idVec3 &origin, idAngles &angles )\r\n");
}


/*
===========
idPlayer::SpawnFromSpawnSpot

Chooses a spawn location and spawns the player
============
*/
void idPlayer::SpawnFromSpawnSpot( void ) {
    Sys_Printf("void idPlayer::SpawnFromSpawnSpot( void )\r\n");
}


/*
===========
idPlayer::SpawnToPoint

Called every time a client is placed fresh in the world:
after the first ClientBegin, and after each respawn
Initializes all non-persistant parts of playerState

when called here with spectating set to true, just place yourself and init
============
*/
void idPlayer::SpawnToPoint( const idVec3 &spawn_origin, const idAngles &spawn_angles ) {
    Sys_Printf("void idPlayer::SpawnToPoint( const idVec3 &spawn_origin, const idAngles &spawn_angles )\r\n");
}


/*
===============
idPlayer::SavePersistantInfo

Saves any inventory and player stats when changing levels.
===============
*/
void idPlayer::SavePersistantInfo( void ) {
    Sys_Printf("void idPlayer::SavePersistantInfo( void )\r\n");
}


/*
===============
idPlayer::RestorePersistantInfo

Restores any inventory and player stats when changing levels.
===============
*/
void idPlayer::RestorePersistantInfo( void ) {
    Sys_Printf("void idPlayer::RestorePersistantInfo( void )\r\n");
}


/*
================
idPlayer::GetUserInfo
================
*/
idDict *idPlayer::GetUserInfo( void ) {
    Sys_Printf("idDict *idPlayer::GetUserInfo( void )\r\n");
    return NULL;
}


/*
==============
idPlayer::UpdateSkinSetup
==============
*/
void idPlayer::UpdateSkinSetup( bool restart ) {
    Sys_Printf("void idPlayer::UpdateSkinSetup( bool restart )\r\n");
}


/*
==============
idPlayer::BalanceTDM
==============
*/
bool idPlayer::BalanceTDM( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::BalanceTDM( void )\r\n");
    return retVal;
}


/*
==============
idPlayer::UserInfoChanged
==============
*/
bool idPlayer::UserInfoChanged( bool canModify ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::UserInfoChanged( bool canModify )\r\n");
    return retVal;
}


/*
===============
idPlayer::UpdateHudAmmo
===============
*/
void idPlayer::UpdateHudAmmo( idUserInterface *_hud ) {
    Sys_Printf("void idPlayer::UpdateHudAmmo( idUserInterface *_hud )\r\n");
}


/*
===============
idPlayer::UpdateHudStats
===============
*/
void idPlayer::UpdateHudStats( idUserInterface *_hud ) {
    Sys_Printf("void idPlayer::UpdateHudStats( idUserInterface *_hud )\r\n");
}


/*
===============
idPlayer::UpdateHudWeapon
===============
*/
void idPlayer::UpdateHudWeapon( bool flashWeapon ) {
    Sys_Printf("void idPlayer::UpdateHudWeapon( bool flashWeapon )\r\n");
}


/*
===============
idPlayer::DrawHUD
===============
*/
void idPlayer::DrawHUD( idUserInterface *_hud ) {
    Sys_Printf("void idPlayer::DrawHUD( idUserInterface *_hud )\r\n");
}


/*
===============
idPlayer::EnterCinematic
===============
*/
void idPlayer::EnterCinematic( void ) {
    Sys_Printf("void idPlayer::EnterCinematic( void )\r\n");
}


/*
===============
idPlayer::ExitCinematic
===============
*/
void idPlayer::ExitCinematic( void ) {
    Sys_Printf("void idPlayer::ExitCinematic( void )\r\n");
}


/*
=====================
idPlayer::UpdateConditions
=====================
*/
void idPlayer::UpdateConditions( void ) {
    Sys_Printf("void idPlayer::UpdateConditions( void )\r\n");
}


/*
==================
WeaponFireFeedback

Called when a weapon fires, generates head twitches, etc
==================
*/
void idPlayer::WeaponFireFeedback( const idDict *weaponDef ) {
    Sys_Printf("void idPlayer::WeaponFireFeedback( const idDict *weaponDef )\r\n");
}


/*
===============
idPlayer::StopFiring
===============
*/
void idPlayer::StopFiring( void ) {
    Sys_Printf("void idPlayer::StopFiring( void )\r\n");
}


/*
===============
idPlayer::FireWeapon
===============
*/
void idPlayer::FireWeapon( void ) {
    Sys_Printf("void idPlayer::FireWeapon( void )\r\n");
}


/*
===============
idPlayer::CacheWeapons
===============
*/
void idPlayer::CacheWeapons( void ) {
    Sys_Printf("void idPlayer::CacheWeapons( void )\r\n");
}


/*
===============
idPlayer::Give
===============
*/
bool idPlayer::Give( const char *statname, const char *value ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::Give( const char *statname, const char *value )\r\n");
    return retVal;
}



/*
===============
idPlayer::GiveHealthPool

adds health to the player health pool
===============
*/
void idPlayer::GiveHealthPool( float amt ) {
    Sys_Printf("void idPlayer::GiveHealthPool( float amt )\r\n");
}


/*
===============
idPlayer::GiveItem

Returns false if the item shouldn't be picked up
===============
*/
bool idPlayer::GiveItem( idItem *item ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::GiveItem( idItem *item )\r\n");
    return retVal;
}


/*
===============
idPlayer::PowerUpModifier
===============
*/
float idPlayer::PowerUpModifier( int type ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPlayer::PowerUpModifier( int type )\r\n");
    return retVal;
}


/*
===============
idPlayer::PowerUpActive
===============
*/
bool idPlayer::PowerUpActive( int powerup ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::PowerUpActive( int powerup )\r\n");
    return retVal;
}


/*
===============
idPlayer::GivePowerUp
===============
*/
bool idPlayer::GivePowerUp( int powerup, int time ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::GivePowerUp( int powerup, int time )\r\n");
    return retVal;
}


/*
==============
idPlayer::ClearPowerup
==============
*/
void idPlayer::ClearPowerup( int i ) {
    Sys_Printf("void idPlayer::ClearPowerup( int i )\r\n");
}


/*
==============
idPlayer::UpdatePowerUps
==============
*/
void idPlayer::UpdatePowerUps( void ) {
    Sys_Printf("void idPlayer::UpdatePowerUps( void )\r\n");
}


/*
===============
idPlayer::ClearPowerUps
===============
*/
void idPlayer::ClearPowerUps( void ) {
    Sys_Printf("void idPlayer::ClearPowerUps( void )\r\n");
}


/*
===============
idPlayer::GiveInventoryItem
===============
*/
bool idPlayer::GiveInventoryItem( idDict *item ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::GiveInventoryItem( idDict *item )\r\n");
    return retVal;
}


/*
==============
idPlayer::UpdateObjectiveInfo
==============
 */
void idPlayer::UpdateObjectiveInfo( void ) {
    Sys_Printf("void idPlayer::UpdateObjectiveInfo( void )\r\n");
}


/*
===============
idPlayer::GiveObjective
===============
*/
void idPlayer::GiveObjective( const char *title, const char *text, const char *screenshot ) {
    Sys_Printf("void idPlayer::GiveObjective( const char *title, const char *text, const char *screenshot )\r\n");
}


/*
===============
idPlayer::CompleteObjective
===============
*/
void idPlayer::CompleteObjective( const char *title ) {
    Sys_Printf("void idPlayer::CompleteObjective( const char *title )\r\n");
}


/*
===============
idPlayer::GiveVideo
===============
*/
void idPlayer::GiveVideo( const char *videoName, idDict *item ) {
    Sys_Printf("void idPlayer::GiveVideo( const char *videoName, idDict *item )\r\n");
}


/*
===============
idPlayer::GiveSecurity
===============
*/
void idPlayer::GiveSecurity( const char *security ) {
    Sys_Printf("void idPlayer::GiveSecurity( const char *security )\r\n");
}


/*
===============
idPlayer::GiveEmail
===============
*/
void idPlayer::GiveEmail( const char *emailName ) {
    Sys_Printf("void idPlayer::GiveEmail( const char *emailName )\r\n");
}


/*
===============
idPlayer::GivePDA
===============
*/
void idPlayer::GivePDA( const char *pdaName, idDict *item )
{
    Sys_Printf("void idPlayer::GivePDA( const char *pdaName, idDict *item )\r\n");
}


/*
===============
idPlayer::FindInventoryItem
===============
*/
idDict *idPlayer::FindInventoryItem( const char *name ) {
    Sys_Printf("idDict *idPlayer::FindInventoryItem( const char *name )\r\n");
    return NULL;
}


/*
===============
idPlayer::RemoveInventoryItem
===============
*/
void idPlayer::RemoveInventoryItem( const char *name ) {
    Sys_Printf("void idPlayer::RemoveInventoryItem( const char *name )\r\n");
}


/*
===============
idPlayer::RemoveInventoryItem
===============
*/
void idPlayer::RemoveInventoryItem( idDict *item ) {
    Sys_Printf("void idPlayer::RemoveInventoryItem( idDict *item )\r\n");
}


/*
===============
idPlayer::GiveItem
===============
*/
void idPlayer::GiveItem( const char *itemname ) {
    Sys_Printf("void idPlayer::GiveItem( const char *itemname )\r\n");
}


/*
==================
idPlayer::SlotForWeapon
==================
*/
int idPlayer::SlotForWeapon( const char *weaponName ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPlayer::SlotForWeapon( const char *weaponName )\r\n");
    return retVal;
}


/*
===============
idPlayer::Reload
===============
*/
void idPlayer::Reload( void ) {
    Sys_Printf("void idPlayer::Reload( void )\r\n");
}


/*
===============
idPlayer::NextBestWeapon
===============
*/
void idPlayer::NextBestWeapon( void ) {
    Sys_Printf("void idPlayer::NextBestWeapon( void )\r\n");
}


/*
===============
idPlayer::NextWeapon
===============
*/
void idPlayer::NextWeapon( void ) {
    Sys_Printf("void idPlayer::NextWeapon( void )\r\n");
}


/*
===============
idPlayer::PrevWeapon
===============
*/
void idPlayer::PrevWeapon( void ) {
    Sys_Printf("void idPlayer::PrevWeapon( void )\r\n");
}


/*
===============
idPlayer::SelectWeapon
===============
*/
void idPlayer::SelectWeapon( int num, bool force ) {
    Sys_Printf("void idPlayer::SelectWeapon( int num, bool force )\r\n");
}


/*
=================
idPlayer::DropWeapon
=================
*/
void idPlayer::DropWeapon( bool died ) {
    Sys_Printf("void idPlayer::DropWeapon( bool died )\r\n");
}


/*
=================
idPlayer::StealWeapon
steal the target player's current weapon
=================
*/
void idPlayer::StealWeapon( idPlayer *player ) {
    Sys_Printf("void idPlayer::StealWeapon( idPlayer *player )\r\n");
}


/*
===============
idPlayer::ActiveGui
===============
*/
idUserInterface *idPlayer::ActiveGui( void ) {
    Sys_Printf("idUserInterface *idPlayer::ActiveGui( void )\r\n");
    return NULL;
}


/*
===============
idPlayer::Weapon_Combat
===============
*/
void idPlayer::Weapon_Combat( void ) {
    Sys_Printf("void idPlayer::Weapon_Combat( void )\r\n");
}


/*
===============
idPlayer::Weapon_NPC
===============
*/
void idPlayer::Weapon_NPC( void ) {
    Sys_Printf("void idPlayer::Weapon_NPC( void )\r\n");
}


/*
===============
idPlayer::LowerWeapon
===============
*/
void idPlayer::LowerWeapon( void ) {
    Sys_Printf("void idPlayer::LowerWeapon( void )\r\n");
}


/*
===============
idPlayer::RaiseWeapon
===============
*/
void idPlayer::RaiseWeapon( void ) {
    Sys_Printf("void idPlayer::RaiseWeapon( void )\r\n");
}


/*
===============
idPlayer::WeaponLoweringCallback
===============
*/
void idPlayer::WeaponLoweringCallback( void ) {
    Sys_Printf("void idPlayer::WeaponLoweringCallback( void )\r\n");
}


/*
===============
idPlayer::WeaponRisingCallback
===============
*/
void idPlayer::WeaponRisingCallback( void ) {
    Sys_Printf("void idPlayer::WeaponRisingCallback( void )\r\n");
}


/*
===============
idPlayer::Weapon_GUI
===============
*/
void idPlayer::Weapon_GUI( void ) {
    Sys_Printf("void idPlayer::Weapon_GUI( void )\r\n");
}


/*
===============
idPlayer::UpdateWeapon
===============
*/
void idPlayer::UpdateWeapon( void ) {
    Sys_Printf("void idPlayer::UpdateWeapon( void )\r\n");
}


/*
===============
idPlayer::SpectateFreeFly
===============
*/
void idPlayer::SpectateFreeFly( bool force ) {
    Sys_Printf("void idPlayer::SpectateFreeFly( bool force )\r\n");
}


/*
===============
idPlayer::SpectateCycle
===============
*/
void idPlayer::SpectateCycle( void ) {
    Sys_Printf("void idPlayer::SpectateCycle( void )\r\n");
}


/*
===============
idPlayer::UpdateSpectating
===============
*/
void idPlayer::UpdateSpectating( void ) {
    Sys_Printf("void idPlayer::UpdateSpectating( void )\r\n");
}


/*
===============
idPlayer::HandleSingleGuiCommand
===============
*/
bool idPlayer::HandleSingleGuiCommand( idEntity *entityGui, idLexer *src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::HandleSingleGuiCommand( idEntity *entityGui, idLexer *src )\r\n");
    return retVal;
}


/*
==============
idPlayer::Collide
==============
*/
bool idPlayer::Collide( const trace_t &collision, const idVec3 &velocity ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::Collide( const trace_t &collision, const idVec3 &velocity )\r\n");
    return retVal;
}



/*
================
idPlayer::UpdateLocation

Searches nearby locations 
================
*/
void idPlayer::UpdateLocation( void ) {
    Sys_Printf("void idPlayer::UpdateLocation( void )\r\n");
}


/*
================
idPlayer::ClearFocus

Clears the focus cursor
================
*/
void idPlayer::ClearFocus( void ) {
    Sys_Printf("void idPlayer::ClearFocus( void )\r\n");
}


/*
================
idPlayer::UpdateFocus

Searches nearby entities for interactive guis, possibly making one of them
the focus and sending it a mouse move event
================
*/
void idPlayer::UpdateFocus( void ) {
    Sys_Printf("void idPlayer::UpdateFocus( void )\r\n");
}


/*
=================
idPlayer::CrashLand

Check for hard landings that generate sound events
=================
*/
void idPlayer::CrashLand( const idVec3 &oldOrigin, const idVec3 &oldVelocity ) {
    Sys_Printf("void idPlayer::CrashLand( const idVec3 &oldOrigin, const idVec3 &oldVelocity )\r\n");
}


/*
===============
idPlayer::BobCycle
===============
*/
void idPlayer::BobCycle( const idVec3 &pushVelocity ) {
    Sys_Printf("void idPlayer::BobCycle( const idVec3 &pushVelocity )\r\n");
}


/*
================
idPlayer::UpdateDeltaViewAngles
================
*/
void idPlayer::UpdateDeltaViewAngles( const idAngles &angles ) {
    Sys_Printf("void idPlayer::UpdateDeltaViewAngles( const idAngles &angles )\r\n");
}


/*
================
idPlayer::SetViewAngles
================
*/
void idPlayer::SetViewAngles( const idAngles &angles ) {
    Sys_Printf("void idPlayer::SetViewAngles( const idAngles &angles )\r\n");
}


/*
================
idPlayer::UpdateViewAngles
================
*/
void idPlayer::UpdateViewAngles( void ) {
    Sys_Printf("void idPlayer::UpdateViewAngles( void )\r\n");
}


/*
==============
idPlayer::AdjustHeartRate

Player heartrate works as follows

DEF_HEARTRATE is resting heartrate

Taking damage when health is above 75 adjusts heart rate by 1 beat per second
Taking damage when health is below 75 adjusts heart rate by 5 beats per second
Maximum heartrate from damage is MAX_HEARTRATE

Firing a weapon adds 1 beat per second up to a maximum of COMBAT_HEARTRATE

Being at less than 25% stamina adds 5 beats per second up to ZEROSTAMINA_HEARTRATE

All heartrates are target rates.. the heart rate will start falling as soon as there have been no adjustments for 5 seconds
Once it starts falling it always tries to get to DEF_HEARTRATE

The exception to the above rule is upon death at which point the rate is set to DYING_HEARTRATE and starts falling 
immediately to zero

Heart rate volumes go from zero ( -40 db for DEF_HEARTRATE to 5 db for MAX_HEARTRATE ) the volume is 
scaled linearly based on the actual rate

Exception to the above rule is once the player is dead, the dying heart rate starts at either the current volume if
it is audible or -10db and scales to 8db on the last few beats
==============
*/
void idPlayer::AdjustHeartRate( int target, float timeInSecs, float delay, bool force ) {
    Sys_Printf("void idPlayer::AdjustHeartRate( int target, float timeInSecs, float delay, bool force )\r\n");
}


/*
==============
idPlayer::GetBaseHeartRate
==============
*/
int idPlayer::GetBaseHeartRate( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPlayer::GetBaseHeartRate( void )\r\n");
    return retVal;
}


/*
==============
idPlayer::SetCurrentHeartRate
==============
*/
void idPlayer::SetCurrentHeartRate( void ) {
    Sys_Printf("void idPlayer::SetCurrentHeartRate( void )\r\n");
}


/*
==============
idPlayer::UpdateAir
==============
*/
void idPlayer::UpdateAir( void ) {
    Sys_Printf("void idPlayer::UpdateAir( void )\r\n");
}


/*
==============
idPlayer::AddGuiPDAData
==============
 */
int idPlayer::AddGuiPDAData( const declType_t dataType, const char *listName, const idDeclPDA *src, idUserInterface *gui ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPlayer::AddGuiPDAData( const declType_t dataType, const char *listName, const idDeclPDA *src, idUserInterface *gui )\r\n");
    return retVal;
}


/*
==============
idPlayer::GetPDA
==============
 */
const idDeclPDA *idPlayer::GetPDA( void ) const {
    Sys_Printf("idDeclPDA *idPlayer::GetPDA( void )\r\n");
    return NULL;
}



/*
==============
idPlayer::GetVideo
==============
*/
const idDeclVideo *idPlayer::GetVideo( int index ) {
    Sys_Printf("idDeclVideo *idPlayer::GetVideo( int index )\r\n");
    return NULL;
}



/*
==============
idPlayer::UpdatePDAInfo
==============
*/
void idPlayer::UpdatePDAInfo( bool updatePDASel ) {
    Sys_Printf("void idPlayer::UpdatePDAInfo( bool updatePDASel )\r\n");
}


/*
==============
idPlayer::TogglePDA
==============
*/
void idPlayer::TogglePDA( void ) {
    Sys_Printf("void idPlayer::TogglePDA( void )\r\n");
}


/*
==============
idPlayer::ToggleScoreboard
==============
*/
void idPlayer::ToggleScoreboard( void ) {
    Sys_Printf("void idPlayer::ToggleScoreboard( void )\r\n");
}


/*
==============
idPlayer::Spectate
==============
*/
void idPlayer::Spectate( bool spectate ) {
    Sys_Printf("void idPlayer::Spectate( bool spectate )\r\n");
}


/*
==============
idPlayer::SetClipModel
==============
*/
void idPlayer::SetClipModel( void ) {
    Sys_Printf("void idPlayer::SetClipModel( void )\r\n");
}


/*
==============
idPlayer::UseVehicle
==============
*/
void idPlayer::UseVehicle( void ) {
    Sys_Printf("void idPlayer::UseVehicle( void )\r\n");
}


/*
==============
idPlayer::PerformImpulse
==============
*/
void idPlayer::PerformImpulse( int impulse ) {
    Sys_Printf("void idPlayer::PerformImpulse( int impulse )\r\n");
}


bool idPlayer::HandleESC( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::HandleESC( void )\r\n");
    return retVal;
}


bool idPlayer::SkipCinematic( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::SkipCinematic( void )\r\n");
    return retVal;
}


/*
==============
idPlayer::EvaluateControls
==============
*/
void idPlayer::EvaluateControls( void ) {
    Sys_Printf("void idPlayer::EvaluateControls( void )\r\n");
}


/*
==============
idPlayer::AdjustSpeed
==============
*/
void idPlayer::AdjustSpeed( void ) {
    Sys_Printf("void idPlayer::AdjustSpeed( void )\r\n");
}


/*
==============
idPlayer::AdjustBodyAngles
==============
*/
void idPlayer::AdjustBodyAngles( void ) {
    Sys_Printf("void idPlayer::AdjustBodyAngles( void )\r\n");
}


/*
==============
idPlayer::InitAASLocation
==============
*/
void idPlayer::InitAASLocation( void ) {
    Sys_Printf("void idPlayer::InitAASLocation( void )\r\n");
}


/*
==============
idPlayer::SetAASLocation
==============
*/
void idPlayer::SetAASLocation( void ) {
    Sys_Printf("void idPlayer::SetAASLocation( void )\r\n");
}


/*
==============
idPlayer::GetAASLocation
==============
*/
void idPlayer::GetAASLocation( idAAS *aas, idVec3 &pos, int &areaNum ) const {
    Sys_Printf("void idPlayer::GetAASLocation( idAAS *aas, idVec3 &pos, int &areaNum )\r\n");
}


/*
==============
idPlayer::Move
==============
*/
void idPlayer::Move( void ) {
    Sys_Printf("void idPlayer::Move( void )\r\n");
}


/*
==============
idPlayer::UpdateHud
==============
*/
void idPlayer::UpdateHud( void ) {
    Sys_Printf("void idPlayer::UpdateHud( void )\r\n");
}


/*
==============
idPlayer::UpdateDeathSkin
==============
*/
void idPlayer::UpdateDeathSkin( bool state_hitch ) {
    Sys_Printf("void idPlayer::UpdateDeathSkin( bool state_hitch )\r\n");
}


/*
==============
idPlayer::StartFxOnBone
==============
*/
void idPlayer::StartFxOnBone( const char *fx, const char *bone ) {
    Sys_Printf("void idPlayer::StartFxOnBone( const char *fx, const char *bone )\r\n");
}


/*
==============
idPlayer::Think

Called every tic for each player
==============
*/
void idPlayer::Think( void ) {
    Sys_Printf("void idPlayer::Think( void )\r\n");
}


/*
=================
idPlayer::RouteGuiMouse
=================
*/
void idPlayer::RouteGuiMouse( idUserInterface *gui ) {
    Sys_Printf("void idPlayer::RouteGuiMouse( idUserInterface *gui )\r\n");
}


/*
==================
idPlayer::LookAtKiller
==================
*/
void idPlayer::LookAtKiller( idEntity *inflictor, idEntity *attacker ) {
    Sys_Printf("void idPlayer::LookAtKiller( idEntity *inflictor, idEntity *attacker )\r\n");
}


/*
==============
idPlayer::Kill
==============
*/
void idPlayer::Kill( bool delayRespawn, bool nodamage ) {
    Sys_Printf("void idPlayer::Kill( bool delayRespawn, bool nodamage )\r\n");
}


/*
==================
idPlayer::Killed
==================
*/
void idPlayer::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location ) {
    Sys_Printf("void idPlayer::Killed( idEntity *inflictor, idEntity *attacker, int damage, const idVec3 &dir, int location )\r\n");
}


/*
=====================
idPlayer::GetAIAimTargets

Returns positions for the AI to aim at.
=====================
*/
void idPlayer::GetAIAimTargets( const idVec3 &lastSightPos, idVec3 &headPos, idVec3 &chestPos ) {
    Sys_Printf("void idPlayer::GetAIAimTargets( const idVec3 &lastSightPos, idVec3 &headPos, idVec3 &chestPos )\r\n");
}


/*
================
idPlayer::DamageFeedback

callback function for when another entity received damage from this entity.  damage can be adjusted and returned to the caller.
================
*/
void idPlayer::DamageFeedback( idEntity *victim, idEntity *inflictor, int &damage ) {
    Sys_Printf("void idPlayer::DamageFeedback( idEntity *victim, idEntity *inflictor, int &damage )\r\n");
}


/*
=================
idPlayer::CalcDamagePoints

Calculates how many health and armor points will be inflicted, but
doesn't actually do anything with them.  This is used to tell when an attack
would have killed the player, possibly allowing a "saving throw"
=================
*/
void idPlayer::CalcDamagePoints( idEntity *inflictor, idEntity *attacker, const idDict *damageDef,
							   const float damageScale, const int location, int *health, int *armor ) {
    Sys_Printf("void idPlayer::CalcDamagePoints( idEntity *inflictor, idEntity *attacker, const idDict *damageDef, const float damageScale, const int location, int *health, int *armor )\r\n");
}


/*
============
Damage

this		entity that is being damaged
inflictor	entity that is causing the damage
attacker	entity that caused the inflictor to damage targ
	example: this=monster, inflictor=rocket, attacker=player

dir			direction of the attack for knockback in global space

damageDef	an idDict with all the options for damage effects

inflictor, attacker, dir, and point can be NULL for environmental effects
============
*/
void idPlayer::Damage( idEntity *inflictor, idEntity *attacker, const idVec3 &dir,
					   const char *damageDefName, const float damageScale, const int location ) {
    Sys_Printf("void idPlayer::Damage( idEntity *inflictor, idEntity *attacker, const idVec3 &dir, const char *damageDefName, const float damageScale, const int location )\r\n");
}


/*
===========
idPlayer::Teleport
============
*/
void idPlayer::Teleport( const idVec3 &origin, const idAngles &angles, idEntity *destination ) {
    Sys_Printf("void idPlayer::Teleport( const idVec3 &origin, const idAngles &angles, idEntity *destination )\r\n");
}


/*
====================
idPlayer::SetPrivateCameraView
====================
*/
void idPlayer::SetPrivateCameraView( idCamera *camView ) {
    Sys_Printf("void idPlayer::SetPrivateCameraView( idCamera *camView )\r\n");
}


/*
====================
idPlayer::DefaultFov

Returns the base FOV
====================
*/
float idPlayer::DefaultFov( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPlayer::DefaultFov( void )\r\n");
    return retVal;
}


/*
====================
idPlayer::CalcFov

Fixed fov at intermissions, otherwise account for fov variable and zooms.
====================
*/
float idPlayer::CalcFov( bool honorZoom ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPlayer::CalcFov( bool honorZoom )\r\n");
    return retVal;
}


/*
==============
idPlayer::GunTurningOffset

generate a rotational offset for the gun based on the view angle
history in loggedViewAngles
==============
*/
idAngles idPlayer::GunTurningOffset( void ) {
    idAngles retVal;
    memset(&retVal, 0, sizeof(idAngles));
    Sys_Printf("idAngles idPlayer::GunTurningOffset( void )\r\n");
    return retVal;
}


/*
==============
idPlayer::GunAcceleratingOffset

generate a positional offset for the gun based on the movement
history in loggedAccelerations
==============
*/
idVec3	idPlayer::GunAcceleratingOffset( void ) {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3idPlayer::GunAcceleratingOffset( void )\r\n");
    return retVal;
}


/*
==============
idPlayer::CalculateViewWeaponPos

Calculate the bobbing position of the view weapon
==============
*/
void idPlayer::CalculateViewWeaponPos( idVec3 &origin, idMat3 &axis ) {
    Sys_Printf("void idPlayer::CalculateViewWeaponPos( idVec3 &origin, idMat3 &axis )\r\n");
}


/*
===============
idPlayer::OffsetThirdPersonView
===============
*/
void idPlayer::OffsetThirdPersonView( float angle, float range, float height, bool clip ) {
    Sys_Printf("void idPlayer::OffsetThirdPersonView( float angle, float range, float height, bool clip )\r\n");
}


/*
===============
idPlayer::GetEyePosition
===============
*/
idVec3 idPlayer::GetEyePosition( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idPlayer::GetEyePosition( void )\r\n");
    return retVal;
}


/*
===============
idPlayer::GetViewPos
===============
*/
void idPlayer::GetViewPos( idVec3 &origin, idMat3 &axis ) const {
    Sys_Printf("void idPlayer::GetViewPos( idVec3 &origin, idMat3 &axis )\r\n");
}


/*
===============
idPlayer::CalculateFirstPersonView
===============
*/
void idPlayer::CalculateFirstPersonView( void ) {
    Sys_Printf("void idPlayer::CalculateFirstPersonView( void )\r\n");
}


/*
==================
idPlayer::GetRenderView

Returns the renderView that was calculated for this tic
==================
*/
renderView_t *idPlayer::GetRenderView( void ) {
    Sys_Printf("renderView_t *idPlayer::GetRenderView( void )\r\n");
    return NULL;
}


/*
==================
idPlayer::CalculateRenderView

create the renderView for the current tic
==================
*/
void idPlayer::CalculateRenderView( void ) {
    Sys_Printf("void idPlayer::CalculateRenderView( void )\r\n");
}


/*
=============
idPlayer::AddAIKill
=============
*/
void idPlayer::AddAIKill( void ) {
    Sys_Printf("void idPlayer::AddAIKill( void )\r\n");
}


/*
=============
idPlayer::SetSoulCubeProjectile
=============
*/
void idPlayer::SetSoulCubeProjectile( idProjectile *projectile ) {
    Sys_Printf("void idPlayer::SetSoulCubeProjectile( idProjectile *projectile )\r\n");
}


/*
=============
idPlayer::AddProjectilesFired
=============
*/
void idPlayer::AddProjectilesFired( int count ) {
    Sys_Printf("void idPlayer::AddProjectilesFired( int count )\r\n");
}


/*
=============
idPlayer::AddProjectileHites
=============
*/
void idPlayer::AddProjectileHits( int count ) {
    Sys_Printf("void idPlayer::AddProjectileHits( int count )\r\n");
}


/*
=============
idPlayer::SetLastHitTime
=============
*/
void idPlayer::SetLastHitTime( int time ) {
    Sys_Printf("void idPlayer::SetLastHitTime( int time )\r\n");
}


/*
=============
idPlayer::SetInfluenceLevel
=============
*/
void idPlayer::SetInfluenceLevel( int level ) {
    Sys_Printf("void idPlayer::SetInfluenceLevel( int level )\r\n");
}


/*
=============
idPlayer::SetInfluenceView
=============
*/
void idPlayer::SetInfluenceView( const char *mtr, const char *skinname, float radius, idEntity *ent ) {
    Sys_Printf("void idPlayer::SetInfluenceView( const char *mtr, const char *skinname, float radius, idEntity *ent )\r\n");
}


/*
=============
idPlayer::SetInfluenceFov
=============
*/
void idPlayer::SetInfluenceFov( float fov ) {
    Sys_Printf("void idPlayer::SetInfluenceFov( float fov )\r\n");
}


/*
================
idPlayer::OnLadder
================
*/
bool idPlayer::OnLadder( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::OnLadder( void )\r\n");
    return retVal;
}


/*
==================
idPlayer::Event_GetButtons
==================
*/
void idPlayer::Event_GetButtons( void ) {
    Sys_Printf("void idPlayer::Event_GetButtons( void )\r\n");
}


/*
==================
idPlayer::Event_GetMove
==================
*/
void idPlayer::Event_GetMove( void ) {
    Sys_Printf("void idPlayer::Event_GetMove( void )\r\n");
}


/*
================
idPlayer::Event_GetViewAngles
================
*/
void idPlayer::Event_GetViewAngles( void ) {
    Sys_Printf("void idPlayer::Event_GetViewAngles( void )\r\n");
}


/*
==================
idPlayer::Event_StopFxFov
==================
*/
void idPlayer::Event_StopFxFov( void ) {
    Sys_Printf("void idPlayer::Event_StopFxFov( void )\r\n");
}


/*
==================
idPlayer::StartFxFov 
==================
*/
void idPlayer::StartFxFov( float duration ) {
    Sys_Printf("void idPlayer::StartFxFov( float duration )\r\n");
}


/*
==================
idPlayer::Event_EnableWeapon 
==================
*/
void idPlayer::Event_EnableWeapon( void ) {
    Sys_Printf("void idPlayer::Event_EnableWeapon( void )\r\n");
}


/*
==================
idPlayer::Event_DisableWeapon
==================
*/
void idPlayer::Event_DisableWeapon( void ) {
    Sys_Printf("void idPlayer::Event_DisableWeapon( void )\r\n");
}


/*
==================
idPlayer::Event_GetCurrentWeapon
==================
*/
void idPlayer::Event_GetCurrentWeapon( void ) {
    Sys_Printf("void idPlayer::Event_GetCurrentWeapon( void )\r\n");
}


/*
==================
idPlayer::Event_GetPreviousWeapon
==================
*/
void idPlayer::Event_GetPreviousWeapon( void ) {
    Sys_Printf("void idPlayer::Event_GetPreviousWeapon( void )\r\n");
}


/*
==================
idPlayer::Event_SelectWeapon
==================
*/
void idPlayer::Event_SelectWeapon( const char *weaponName ) {
    Sys_Printf("void idPlayer::Event_SelectWeapon( const char *weaponName )\r\n");
}


/*
==================
idPlayer::Event_GetWeaponEntity
==================
*/
void idPlayer::Event_GetWeaponEntity( void ) {
    Sys_Printf("void idPlayer::Event_GetWeaponEntity( void )\r\n");
}


/*
==================
idPlayer::Event_OpenPDA
==================
*/
void idPlayer::Event_OpenPDA( void ) {
    Sys_Printf("void idPlayer::Event_OpenPDA( void )\r\n");
}


/*
==================
idPlayer::Event_InPDA
==================
*/
void idPlayer::Event_InPDA( void ) {
    Sys_Printf("void idPlayer::Event_InPDA( void )\r\n");
}


/*
==================
idPlayer::TeleportDeath
==================
*/
void idPlayer::TeleportDeath( int killer ) {
    Sys_Printf("void idPlayer::TeleportDeath( int killer )\r\n");
}


/*
==================
idPlayer::Event_ExitTeleporter
==================
*/
void idPlayer::Event_ExitTeleporter( void ) {
    Sys_Printf("void idPlayer::Event_ExitTeleporter( void )\r\n");
}


/*
================
idPlayer::ClientPredictionThink
================
*/
void idPlayer::ClientPredictionThink( void ) {
    Sys_Printf("void idPlayer::ClientPredictionThink( void )\r\n");
}


/*
================
idPlayer::GetPhysicsToVisualTransform
================
*/
bool idPlayer::GetPhysicsToVisualTransform( idVec3 &origin, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::GetPhysicsToVisualTransform( idVec3 &origin, idMat3 &axis )\r\n");
    return retVal;
}


/*
================
idPlayer::GetPhysicsToSoundTransform
================
*/
bool idPlayer::GetPhysicsToSoundTransform( idVec3 &origin, idMat3 &axis ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::GetPhysicsToSoundTransform( idVec3 &origin, idMat3 &axis )\r\n");
    return retVal;
}


/*
================
idPlayer::WriteToSnapshot
================
*/
void idPlayer::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idPlayer::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idPlayer::ReadFromSnapshot
================
*/
void idPlayer::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idPlayer::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idPlayer::WritePlayerStateToSnapshot
================
*/
void idPlayer::WritePlayerStateToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idPlayer::WritePlayerStateToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idPlayer::ReadPlayerStateFromSnapshot
================
*/
void idPlayer::ReadPlayerStateFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idPlayer::ReadPlayerStateFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idPlayer::ServerReceiveEvent
================
*/
bool idPlayer::ServerReceiveEvent( int event, int time, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::ServerReceiveEvent( int event, int time, const idBitMsg &msg )\r\n");
    return retVal;
}


/*
================
idPlayer::ClientReceiveEvent
================
*/
bool idPlayer::ClientReceiveEvent( int event, int time, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::ClientReceiveEvent( int event, int time, const idBitMsg &msg )\r\n");
    return retVal;
}


/*
================
idPlayer::Hide
================
*/
void idPlayer::Hide( void ) {
    Sys_Printf("void idPlayer::Hide( void )\r\n");
}


/*
================
idPlayer::Show
================
*/
void idPlayer::Show( void ) {
    Sys_Printf("void idPlayer::Show( void )\r\n");
}


/*
===============
idPlayer::StartAudioLog
===============
*/
void idPlayer::StartAudioLog( void ) {
    Sys_Printf("void idPlayer::StartAudioLog( void )\r\n");
}


/*
===============
idPlayer::StopAudioLog
===============
*/
void idPlayer::StopAudioLog( void ) {
    Sys_Printf("void idPlayer::StopAudioLog( void )\r\n");
}


/*
===============
idPlayer::ShowTip
===============
*/
void idPlayer::ShowTip( const char *title, const char *tip, bool autoHide ) {
    Sys_Printf("void idPlayer::ShowTip( const char *title, const char *tip, bool autoHide )\r\n");
}


/*
===============
idPlayer::HideTip
===============
*/
void idPlayer::HideTip( void ) {
    Sys_Printf("void idPlayer::HideTip( void )\r\n");
}


/*
===============
idPlayer::Event_HideTip
===============
*/
void idPlayer::Event_HideTip( void ) {
    Sys_Printf("void idPlayer::Event_HideTip( void )\r\n");
}


/*
===============
idPlayer::ShowObjective
===============
*/
void idPlayer::ShowObjective( const char *obj ) {
    Sys_Printf("void idPlayer::ShowObjective( const char *obj )\r\n");
}


/*
===============
idPlayer::HideObjective
===============
*/
void idPlayer::HideObjective( void ) {
    Sys_Printf("void idPlayer::HideObjective( void )\r\n");
}


/*
===============
idPlayer::Event_StopAudioLog
===============
*/
void idPlayer::Event_StopAudioLog( void ) {
    Sys_Printf("void idPlayer::Event_StopAudioLog( void )\r\n");
}


/*
===============
idPlayer::SetSpectateOrigin
===============
*/
void idPlayer::SetSpectateOrigin( void ) {
    Sys_Printf("void idPlayer::SetSpectateOrigin( void )\r\n");
}


/*
===============
idPlayer::RemoveWeapon
===============
*/
void idPlayer::RemoveWeapon( const char *weap ) {
    Sys_Printf("void idPlayer::RemoveWeapon( const char *weap )\r\n");
}


/*
===============
idPlayer::CanShowWeaponViewmodel
===============
*/
bool idPlayer::CanShowWeaponViewmodel( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::CanShowWeaponViewmodel( void )\r\n");
    return retVal;
}


/*
===============
idPlayer::SetLevelTrigger
===============
*/
void idPlayer::SetLevelTrigger( const char *levelName, const char *triggerName ) {
    Sys_Printf("void idPlayer::SetLevelTrigger( const char *levelName, const char *triggerName )\r\n");
}


/*
===============
idPlayer::Event_LevelTrigger
===============
*/
void idPlayer::Event_LevelTrigger( void ) {
    Sys_Printf("void idPlayer::Event_LevelTrigger( void )\r\n");
}


/*
===============
idPlayer::Event_Gibbed
===============
*/
void idPlayer::Event_Gibbed( void ) {
    Sys_Printf("void idPlayer::Event_Gibbed( void )\r\n");
}


/*
==================
idPlayer::Event_GetIdealWeapon 
==================
*/
void idPlayer::Event_GetIdealWeapon( void ) {
    Sys_Printf("void idPlayer::Event_GetIdealWeapon( void )\r\n");
}


/*
===============
idPlayer::UpdatePlayerIcons
===============
*/
void idPlayer::UpdatePlayerIcons( void ) {
    Sys_Printf("void idPlayer::UpdatePlayerIcons( void )\r\n");
}


/*
===============
idPlayer::DrawPlayerIcons
===============
*/
void idPlayer::DrawPlayerIcons( void ) {
    Sys_Printf("void idPlayer::DrawPlayerIcons( void )\r\n");
}


/*
===============
idPlayer::HidePlayerIcons
===============
*/
void idPlayer::HidePlayerIcons( void ) {
    Sys_Printf("void idPlayer::HidePlayerIcons( void )\r\n");
}


/*
===============
idPlayer::NeedsIcon
==============
*/
bool idPlayer::NeedsIcon( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPlayer::NeedsIcon( void )\r\n");
    return retVal;
}

