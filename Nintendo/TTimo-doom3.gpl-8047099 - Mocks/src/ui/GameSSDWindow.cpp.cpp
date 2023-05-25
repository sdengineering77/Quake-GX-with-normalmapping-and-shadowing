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

#include "../framework/Session_local.h"

#include "DeviceContext.h"
#include "Window.h"
#include "UserInterfaceLocal.h"
#include "GameSSDWindow.h"


#define Z_NEAR 100.0f
#define Z_FAR  4000.0f
#define ENTITY_START_DIST 3000

#define V_WIDTH 640.0f
#define V_HEIGHT 480.0f

/*
*****************************************************************************
* SSDCrossHair
****************************************************************************
*/

#define CROSSHAIR_STANDARD_MATERIAL "game/SSD/crosshair_standard"
#define CROSSHAIR_SUPER_MATERIAL "game/SSD/crosshair_super"

SSDCrossHair::SSDCrossHair() {
}

SSDCrossHair::~SSDCrossHair() {
}

void SSDCrossHair::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void SSDCrossHair::WriteToSaveGame( idFile *savefile )\r\n");
}


void SSDCrossHair::ReadFromSaveGame( idFile *savefile ) {
    Sys_Printf("void SSDCrossHair::ReadFromSaveGame( idFile *savefile )\r\n");
}


void SSDCrossHair::InitCrosshairs() {
    Sys_Printf("void SSDCrossHair::InitCrosshairs()\r\n");
}


void SSDCrossHair::Draw(idDeviceContext *dc, const idVec2& cursor) {
    Sys_Printf("void SSDCrossHair::Draw(idDeviceContext *dc, const idVec2& cursor)\r\n");
}


/*
*****************************************************************************
* SSDEntity	
****************************************************************************
*/

SSDEntity::SSDEntity() {
	EntityInit(); 
}

SSDEntity::~SSDEntity() { 
}

void SSDEntity::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void SSDEntity::WriteToSaveGame( idFile *savefile )\r\n");
}


void SSDEntity::ReadFromSaveGame( idFile *savefile,  idGameSSDWindow* _game ) {
    Sys_Printf("void SSDEntity::ReadFromSaveGame( idFile *savefile, idGameSSDWindow* _game )\r\n");
}


void SSDEntity::EntityInit() {
    Sys_Printf("void SSDEntity::EntityInit()\r\n");
}


void SSDEntity::SetGame(idGameSSDWindow* _game) {
    Sys_Printf("void SSDEntity::SetGame(idGameSSDWindow* _game)\r\n");
}


void SSDEntity::SetMaterial(const char* name) {
    Sys_Printf("void SSDEntity::SetMaterial(const char* name)\r\n");
}


void SSDEntity::SetPosition(const idVec3& _position) {
    Sys_Printf("void SSDEntity::SetPosition(const idVec3& _position)\r\n");
}


void SSDEntity::SetSize(const idVec2& _size) {
    Sys_Printf("void SSDEntity::SetSize(const idVec2& _size)\r\n");
}


void SSDEntity::SetRadius(float _radius, float _hitFactor) {
    Sys_Printf("void SSDEntity::SetRadius(float _radius, float _hitFactor)\r\n");
}


void SSDEntity::SetRotation(float _rotation) {
    Sys_Printf("void SSDEntity::SetRotation(float _rotation)\r\n");
}


void SSDEntity::Update() {
    Sys_Printf("void SSDEntity::Update()\r\n");
}


bool SSDEntity::HitTest(const idVec2& pt) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool SSDEntity::HitTest(const idVec2& pt)\r\n");
    return retVal;
}


void SSDEntity::Draw(idDeviceContext *dc) {
    Sys_Printf("void SSDEntity::Draw(idDeviceContext *dc)\r\n");
}


void SSDEntity::DestroyEntity() {
    Sys_Printf("void SSDEntity::DestroyEntity()\r\n");
}


idBounds SSDEntity::WorldToScreen(const idBounds worldBounds) {
    idBounds retVal;
    memset(&retVal, 0, sizeof(idBounds));
    Sys_Printf("idBounds SSDEntity::WorldToScreen(const idBounds worldBounds)\r\n");
    return retVal;
}


idVec3 SSDEntity::WorldToScreen(const idVec3& worldPos) {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 SSDEntity::WorldToScreen(const idVec3& worldPos)\r\n");
    return retVal;
}


idVec3 SSDEntity::ScreenToWorld(const idVec3& screenPos) {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 SSDEntity::ScreenToWorld(const idVec3& screenPos)\r\n");
    return retVal;
}


/*
*****************************************************************************
* SSDMover	
****************************************************************************
*/

SSDMover::SSDMover() {
}

SSDMover::~SSDMover() {
}

void SSDMover::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void SSDMover::WriteToSaveGame( idFile *savefile )\r\n");
}


void SSDMover::ReadFromSaveGame( idFile *savefile,  idGameSSDWindow* _game  ) {
    Sys_Printf("void SSDMover::ReadFromSaveGame( idFile *savefile, idGameSSDWindow* _game  )\r\n");
}


void SSDMover::MoverInit(const idVec3& _speed, float _rotationSpeed) {
    Sys_Printf("void SSDMover::MoverInit(const idVec3& _speed, float _rotationSpeed)\r\n");
}


void SSDMover::EntityUpdate() {
    Sys_Printf("void SSDMover::EntityUpdate()\r\n");
}



/*
*****************************************************************************
* SSDAsteroid	
****************************************************************************
*/

SSDAsteroid	SSDAsteroid::asteroidPool[MAX_ASTEROIDS];

#define ASTEROID_MATERIAL "game/SSD/asteroid"

SSDAsteroid::SSDAsteroid() {
}

SSDAsteroid::~SSDAsteroid() {	
}

void SSDAsteroid::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void SSDAsteroid::WriteToSaveGame( idFile *savefile )\r\n");
}


void SSDAsteroid::ReadFromSaveGame( idFile *savefile,  idGameSSDWindow* _game  ) {
    Sys_Printf("void SSDAsteroid::ReadFromSaveGame( idFile *savefile, idGameSSDWindow* _game  )\r\n");
}


void SSDAsteroid::Init(idGameSSDWindow* _game, const idVec3& startPosition, const idVec2& _size, float _speed, float rotate, int _health) {
    Sys_Printf("void SSDAsteroid::Init(idGameSSDWindow* _game, const idVec3& startPosition, const idVec2& _size, float _speed, float rotate, int _health)\r\n");
}


void SSDAsteroid::EntityUpdate() {
    Sys_Printf("void SSDAsteroid::EntityUpdate()\r\n");
}


SSDAsteroid* SSDAsteroid::GetNewAsteroid(idGameSSDWindow* _game, const idVec3& startPosition, const idVec2& _size, float _speed, float rotate, int _health) {
    Sys_Printf("SSDAsteroid* SSDAsteroid::GetNewAsteroid(idGameSSDWindow* _game, const idVec3& startPosition, const idVec2& _size, float _speed, float rotate, int _health)\r\n");
    return NULL;
}


SSDAsteroid* SSDAsteroid::GetSpecificAsteroid(int id) {
    Sys_Printf("SSDAsteroid* SSDAsteroid::GetSpecificAsteroid(int id)\r\n");
    return NULL;
}


void SSDAsteroid::WriteAsteroids(idFile* savefile) {
    Sys_Printf("void SSDAsteroid::WriteAsteroids(idFile* savefile)\r\n");
}


void SSDAsteroid::ReadAsteroids(idFile* savefile, idGameSSDWindow* _game) {
    Sys_Printf("void SSDAsteroid::ReadAsteroids(idFile* savefile, idGameSSDWindow* _game)\r\n");
}


/*
*****************************************************************************
* SSDAstronaut
****************************************************************************
*/

SSDAstronaut	SSDAstronaut::astronautPool[MAX_ASTRONAUT];

#define ASTRONAUT_MATERIAL "game/SSD/astronaut"

SSDAstronaut::SSDAstronaut() {
}

SSDAstronaut::~SSDAstronaut() {	
}

void SSDAstronaut::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void SSDAstronaut::WriteToSaveGame( idFile *savefile )\r\n");
}


void SSDAstronaut::ReadFromSaveGame( idFile *savefile,  idGameSSDWindow* _game  ) {
    Sys_Printf("void SSDAstronaut::ReadFromSaveGame( idFile *savefile, idGameSSDWindow* _game  )\r\n");
}


void SSDAstronaut::Init(idGameSSDWindow* _game, const idVec3& startPosition, float _speed, float rotate, int _health) {
    Sys_Printf("void SSDAstronaut::Init(idGameSSDWindow* _game, const idVec3& startPosition, float _speed, float rotate, int _health)\r\n");
}


SSDAstronaut* SSDAstronaut::GetNewAstronaut(idGameSSDWindow* _game, const idVec3& startPosition, float _speed, float rotate, int _health) {
    Sys_Printf("SSDAstronaut* SSDAstronaut::GetNewAstronaut(idGameSSDWindow* _game, const idVec3& startPosition, float _speed, float rotate, int _health)\r\n");
    return NULL;
}


SSDAstronaut* SSDAstronaut::GetSpecificAstronaut(int id) {
    Sys_Printf("SSDAstronaut* SSDAstronaut::GetSpecificAstronaut(int id)\r\n");
    return NULL;
}


void SSDAstronaut::WriteAstronauts(idFile* savefile) {
    Sys_Printf("void SSDAstronaut::WriteAstronauts(idFile* savefile)\r\n");
}


void SSDAstronaut::ReadAstronauts(idFile* savefile, idGameSSDWindow* _game) {
    Sys_Printf("void SSDAstronaut::ReadAstronauts(idFile* savefile, idGameSSDWindow* _game)\r\n");
}


/*
*****************************************************************************
* SSDExplosion	
****************************************************************************
*/

SSDExplosion SSDExplosion::explosionPool[MAX_EXPLOSIONS];


//#define EXPLOSION_MATERIAL "game/SSD/fball"
//#define EXPLOSION_TELEPORT "game/SSD/teleport"

const char* explosionMaterials[] = {
	"game/SSD/fball",
	"game/SSD/teleport"
};

#define EXPLOSION_MATERIAL_COUNT 2

SSDExplosion::SSDExplosion() {
    2 retVal;
    memset(&retVal, 0, sizeof(2));
    Sys_Printf("2SSDExplosion::SSDExplosion()\r\n");
    return retVal;
}


SSDExplosion::~SSDExplosion() {
}

void SSDExplosion::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void SSDExplosion::WriteToSaveGame( idFile *savefile )\r\n");
}


void SSDExplosion::ReadFromSaveGame( idFile *savefile,  idGameSSDWindow* _game  ) {
    Sys_Printf("void SSDExplosion::ReadFromSaveGame( idFile *savefile, idGameSSDWindow* _game  )\r\n");
}


void SSDExplosion::Init(idGameSSDWindow* _game, const idVec3& _position, const idVec2& _size, int _length, int _type, SSDEntity* _buddy, bool _killBuddy, bool _followBuddy) {
    Sys_Printf("void SSDExplosion::Init(idGameSSDWindow* _game, const idVec3& _position, const idVec2& _size, int _length, int _type, SSDEntity* _buddy, bool _killBuddy, bool _followBuddy)\r\n");
}


void SSDExplosion::EntityUpdate() {
    Sys_Printf("void SSDExplosion::EntityUpdate()\r\n");
}


SSDExplosion* SSDExplosion::GetNewExplosion(idGameSSDWindow* _game, const idVec3& _position, const idVec2& _size, int _length, int _type, SSDEntity* _buddy, bool _killBuddy, bool _followBuddy) {
    Sys_Printf("SSDExplosion* SSDExplosion::GetNewExplosion(idGameSSDWindow* _game, const idVec3& _position, const idVec2& _size, int _length, int _type, SSDEntity* _buddy, bool _killBuddy, bool _followBuddy)\r\n");
    return NULL;
}


SSDExplosion* SSDExplosion::GetSpecificExplosion(int id) {
    Sys_Printf("SSDExplosion* SSDExplosion::GetSpecificExplosion(int id)\r\n");
    return NULL;
}


void SSDExplosion::WriteExplosions(idFile* savefile) {
    Sys_Printf("void SSDExplosion::WriteExplosions(idFile* savefile)\r\n");
}


void SSDExplosion::ReadExplosions(idFile* savefile, idGameSSDWindow* _game) {
    Sys_Printf("void SSDExplosion::ReadExplosions(idFile* savefile, idGameSSDWindow* _game)\r\n");
}


/*
*****************************************************************************
* SSDPoints
****************************************************************************
*/

SSDPoints	SSDPoints::pointsPool[MAX_POINTS];

SSDPoints::SSDPoints() {
	type = SSD_ENTITY_POINTS;
}

SSDPoints::~SSDPoints() {
}

void SSDPoints::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void SSDPoints::WriteToSaveGame( idFile *savefile )\r\n");
}


void SSDPoints::ReadFromSaveGame( idFile *savefile,  idGameSSDWindow* _game  ) {
    Sys_Printf("void SSDPoints::ReadFromSaveGame( idFile *savefile, idGameSSDWindow* _game  )\r\n");
}


void SSDPoints::Init(idGameSSDWindow* _game, SSDEntity* _ent, int _points, int _length, int _distance, const idVec4& color) {
    Sys_Printf("void SSDPoints::Init(idGameSSDWindow* _game, SSDEntity* _ent, int _points, int _length, int _distance, const idVec4& color)\r\n");
}


void SSDPoints::EntityUpdate() {
    Sys_Printf("void SSDPoints::EntityUpdate()\r\n");
}


SSDPoints* SSDPoints::GetNewPoints(idGameSSDWindow* _game, SSDEntity* _ent, int _points, int _length, int _distance, const idVec4& color) {
    Sys_Printf("SSDPoints* SSDPoints::GetNewPoints(idGameSSDWindow* _game, SSDEntity* _ent, int _points, int _length, int _distance, const idVec4& color)\r\n");
    return NULL;
}


SSDPoints* SSDPoints::GetSpecificPoints(int id) {
    Sys_Printf("SSDPoints* SSDPoints::GetSpecificPoints(int id)\r\n");
    return NULL;
}


void SSDPoints::WritePoints(idFile* savefile) {
    Sys_Printf("void SSDPoints::WritePoints(idFile* savefile)\r\n");
}


void SSDPoints::ReadPoints(idFile* savefile, idGameSSDWindow* _game) {
    Sys_Printf("void SSDPoints::ReadPoints(idFile* savefile, idGameSSDWindow* _game)\r\n");
}


/*
*****************************************************************************
* SSDProjectile
****************************************************************************
*/

SSDProjectile SSDProjectile::projectilePool[MAX_PROJECTILES];

#define PROJECTILE_MATERIAL "game/SSD/fball"

SSDProjectile::SSDProjectile() {
	type = SSD_ENTITY_PROJECTILE;
}

SSDProjectile::~SSDProjectile() {
}

void SSDProjectile::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void SSDProjectile::WriteToSaveGame( idFile *savefile )\r\n");
}


void SSDProjectile::ReadFromSaveGame( idFile *savefile,  idGameSSDWindow* _game  ) {
    Sys_Printf("void SSDProjectile::ReadFromSaveGame( idFile *savefile, idGameSSDWindow* _game  )\r\n");
}


void SSDProjectile::Init(idGameSSDWindow* _game, const idVec3& _beginPosition, const idVec3& _endPosition, float _speed, float _size) {
    Sys_Printf("void SSDProjectile::Init(idGameSSDWindow* _game, const idVec3& _beginPosition, const idVec3& _endPosition, float _speed, float _size)\r\n");
}


void SSDProjectile::EntityUpdate() {
    Sys_Printf("void SSDProjectile::EntityUpdate()\r\n");
}


SSDProjectile* SSDProjectile::GetNewProjectile(idGameSSDWindow* _game, const idVec3& _beginPosition, const idVec3& _endPosition, float _speed, float _size) {
    Sys_Printf("SSDProjectile* SSDProjectile::GetNewProjectile(idGameSSDWindow* _game, const idVec3& _beginPosition, const idVec3& _endPosition, float _speed, float _size)\r\n");
    return NULL;
}


SSDProjectile* SSDProjectile::GetSpecificProjectile(int id) {
    Sys_Printf("SSDProjectile* SSDProjectile::GetSpecificProjectile(int id)\r\n");
    return NULL;
}


void SSDProjectile::WriteProjectiles(idFile* savefile) {
    Sys_Printf("void SSDProjectile::WriteProjectiles(idFile* savefile)\r\n");
}


void SSDProjectile::ReadProjectiles(idFile* savefile, idGameSSDWindow* _game) {
    Sys_Printf("void SSDProjectile::ReadProjectiles(idFile* savefile, idGameSSDWindow* _game)\r\n");
}


/*
*****************************************************************************
* SSDPowerup
****************************************************************************
*/

const char* powerupMaterials[][2] = {
	"game/SSD/powerupHealthClosed",			"game/SSD/powerupHealthOpen",
	"game/SSD/powerupSuperBlasterClosed",	"game/SSD/powerupSuperBlasterOpen",
	"game/SSD/powerupNukeClosed",			"game/SSD/powerupNukeOpen",
	"game/SSD/powerupRescueClosed",			"game/SSD/powerupRescueOpen",
	"game/SSD/powerupBonusPointsClosed",	"game/SSD/powerupBonusPointsOpen",
	"game/SSD/powerupDamageClosed",			"game/SSD/powerupDamageOpen",
};

#define POWERUP_MATERIAL_COUNT 6

SSDPowerup	SSDPowerup::powerupPool[MAX_POWERUPS];

SSDPowerup::SSDPowerup() {
	
}

SSDPowerup::~SSDPowerup() {
}

void SSDPowerup::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void SSDPowerup::WriteToSaveGame( idFile *savefile )\r\n");
}


void SSDPowerup::ReadFromSaveGame( idFile *savefile,  idGameSSDWindow* _game  ) {
    Sys_Printf("void SSDPowerup::ReadFromSaveGame( idFile *savefile, idGameSSDWindow* _game  )\r\n");
}


void SSDPowerup::OnHit(int key) {
    Sys_Printf("void SSDPowerup::OnHit(int key)\r\n");
}


void SSDPowerup::OnStrikePlayer() {
    Sys_Printf("void SSDPowerup::OnStrikePlayer()\r\n");
}


void SSDPowerup::OnOpenPowerup() {
    Sys_Printf("void SSDPowerup::OnOpenPowerup()\r\n");
}


void SSDPowerup::OnActivatePowerup() {
    Sys_Printf("void SSDPowerup::OnActivatePowerup()\r\n");
}



void SSDPowerup::Init(idGameSSDWindow* _game, float _speed, float _rotation) {
    Sys_Printf("void SSDPowerup::Init(idGameSSDWindow* _game, float _speed, float _rotation)\r\n");
}


SSDPowerup* SSDPowerup::GetNewPowerup(idGameSSDWindow* _game, float _speed, float _rotation) {
    Sys_Printf("SSDPowerup* SSDPowerup::GetNewPowerup(idGameSSDWindow* _game, float _speed, float _rotation)\r\n");
    return NULL;
}


SSDPowerup* SSDPowerup::GetSpecificPowerup(int id) {
    Sys_Printf("SSDPowerup* SSDPowerup::GetSpecificPowerup(int id)\r\n");
    return NULL;
}


void SSDPowerup::WritePowerups(idFile* savefile) {
    Sys_Printf("void SSDPowerup::WritePowerups(idFile* savefile)\r\n");
}


void SSDPowerup::ReadPowerups(idFile* savefile, idGameSSDWindow* _game) {
    Sys_Printf("void SSDPowerup::ReadPowerups(idFile* savefile, idGameSSDWindow* _game)\r\n");
}


/*
*****************************************************************************
* idGameSSDWindow
****************************************************************************
*/

idRandom idGameSSDWindow::random;

idGameSSDWindow::idGameSSDWindow(idDeviceContext *d, idUserInterfaceLocal *g) : idWindow(d, g) {
	dc = d;
	gui = g;
	CommonInit();
}

idGameSSDWindow::idGameSSDWindow(idUserInterfaceLocal *g) : idWindow(g) {
	gui = g;
	CommonInit();
}

idGameSSDWindow::~idGameSSDWindow() {
	ResetGameStats();
}

void idGameSSDWindow::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void idGameSSDWindow::WriteToSaveGame( idFile *savefile )\r\n");
}


void idGameSSDWindow::ReadFromSaveGame( idFile *savefile ) {
    Sys_Printf("void idGameSSDWindow::ReadFromSaveGame( idFile *savefile )\r\n");
}


const char *idGameSSDWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals) {
    Sys_Printf("char *idGameSSDWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals)\r\n");
    return NULL;
}


idWinVar *idGameSSDWindow::GetWinVarByName	(const char *_name, bool winLookup, drawWin_t** owner) {
    Sys_Printf("idWinVar *idGameSSDWindow::GetWinVarByName(const char *_name, bool winLookup, drawWin_t** owner)\r\n");
    return NULL;
}



void idGameSSDWindow::Draw(int time, float x, float y) {
    Sys_Printf("void idGameSSDWindow::Draw(int time, float x, float y)\r\n");
}



bool idGameSSDWindow::ParseInternalVar(const char *_name, idParser *src) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameSSDWindow::ParseInternalVar(const char *_name, idParser *src)\r\n");
    return retVal;
}


void idGameSSDWindow::ParseLevelData(int level, const idStr& levelDataString) {
    Sys_Printf("void idGameSSDWindow::ParseLevelData(int level, const idStr& levelDataString)\r\n");
}


void idGameSSDWindow::ParseAsteroidData(int level, const idStr& asteroidDataString) {
    Sys_Printf("void idGameSSDWindow::ParseAsteroidData(int level, const idStr& asteroidDataString)\r\n");
}


void idGameSSDWindow::ParsePowerupData(int level, const idStr& powerupDataString) {
    Sys_Printf("void idGameSSDWindow::ParsePowerupData(int level, const idStr& powerupDataString)\r\n");
}


void idGameSSDWindow::ParseWeaponData(int weapon, const idStr& weaponDataString) {
    Sys_Printf("void idGameSSDWindow::ParseWeaponData(int weapon, const idStr& weaponDataString)\r\n");
}


void idGameSSDWindow::ParseAstronautData(int level, const idStr& astronautDataString) {
    Sys_Printf("void idGameSSDWindow::ParseAstronautData(int level, const idStr& astronautDataString)\r\n");
}


void idGameSSDWindow::CommonInit() {
    Sys_Printf("void idGameSSDWindow::CommonInit()\r\n");
}


void idGameSSDWindow::ResetGameStats() {
    Sys_Printf("void idGameSSDWindow::ResetGameStats()\r\n");
}
 

void idGameSSDWindow::ResetLevelStats() {
    Sys_Printf("void idGameSSDWindow::ResetLevelStats()\r\n");
}


void idGameSSDWindow::ResetEntities() {
    Sys_Printf("void idGameSSDWindow::ResetEntities()\r\n");
}


void idGameSSDWindow::StartGame() {
    Sys_Printf("void idGameSSDWindow::StartGame()\r\n");
}


void idGameSSDWindow::StopGame() {
    Sys_Printf("void idGameSSDWindow::StopGame()\r\n");
}


void idGameSSDWindow::GameOver() {
    Sys_Printf("void idGameSSDWindow::GameOver()\r\n");
}


void idGameSSDWindow::BeginLevel(int level) {
    Sys_Printf("void idGameSSDWindow::BeginLevel(int level)\r\n");
}


/**
* Continue game resets the players health
*/
void idGameSSDWindow::ContinueGame() {
    Sys_Printf("void idGameSSDWindow::ContinueGame()\r\n");
}


void idGameSSDWindow::LevelComplete() {
    Sys_Printf("void idGameSSDWindow::LevelComplete()\r\n");
}


void idGameSSDWindow::GameComplete() {
    Sys_Printf("void idGameSSDWindow::GameComplete()\r\n");
}



void idGameSSDWindow::UpdateGame() {
    Sys_Printf("void idGameSSDWindow::UpdateGame()\r\n");
}


void idGameSSDWindow::CheckForHits() {
    Sys_Printf("void idGameSSDWindow::CheckForHits()\r\n");
}


void idGameSSDWindow::ZOrderEntities() {
    Sys_Printf("void idGameSSDWindow::ZOrderEntities()\r\n");
}


void idGameSSDWindow::SpawnAsteroid() {
    Sys_Printf("void idGameSSDWindow::SpawnAsteroid()\r\n");
}


void idGameSSDWindow::FireWeapon(int key) {
    Sys_Printf("void idGameSSDWindow::FireWeapon(int key)\r\n");
}


SSDEntity* idGameSSDWindow::EntityHitTest(const idVec2& pt) {
    Sys_Printf("SSDEntity* idGameSSDWindow::EntityHitTest(const idVec2& pt)\r\n");
    return NULL;
}


void idGameSSDWindow::HitAsteroid(SSDAsteroid* asteroid, int key) {
    Sys_Printf("void idGameSSDWindow::HitAsteroid(SSDAsteroid* asteroid, int key)\r\n");
}


void idGameSSDWindow::AsteroidStruckPlayer(SSDAsteroid* asteroid) {
    Sys_Printf("void idGameSSDWindow::AsteroidStruckPlayer(SSDAsteroid* asteroid)\r\n");
}


void idGameSSDWindow::AddScore(SSDEntity* ent, int points) {
    Sys_Printf("void idGameSSDWindow::AddScore(SSDEntity* ent, int points)\r\n");
}


void idGameSSDWindow::AddDamage(int damage) {
    Sys_Printf("void idGameSSDWindow::AddDamage(int damage)\r\n");
}


void idGameSSDWindow::AddHealth(int health) {
    Sys_Printf("void idGameSSDWindow::AddHealth(int health)\r\n");
}



void idGameSSDWindow::OnNuke() {
    Sys_Printf("void idGameSSDWindow::OnNuke()\r\n");
}


void idGameSSDWindow::OnRescueAll() {
    Sys_Printf("void idGameSSDWindow::OnRescueAll()\r\n");
}


void idGameSSDWindow::OnSuperBlaster() {
    Sys_Printf("void idGameSSDWindow::OnSuperBlaster()\r\n");
}




void idGameSSDWindow::RefreshGuiData() {
    Sys_Printf("void idGameSSDWindow::RefreshGuiData()\r\n");
}


idVec2 idGameSSDWindow::GetCursorWorld() {
    idVec2 retVal;
    memset(&retVal, 0, sizeof(idVec2));
    Sys_Printf("idVec2 idGameSSDWindow::GetCursorWorld()\r\n");
    return retVal;
}


void idGameSSDWindow::SpawnAstronaut() {
    Sys_Printf("void idGameSSDWindow::SpawnAstronaut()\r\n");
}


void idGameSSDWindow::HitAstronaut(SSDAstronaut* astronaut, int key) {
    Sys_Printf("void idGameSSDWindow::HitAstronaut(SSDAstronaut* astronaut, int key)\r\n");
}


void idGameSSDWindow::AstronautStruckPlayer(SSDAstronaut* astronaut) {
    Sys_Printf("void idGameSSDWindow::AstronautStruckPlayer(SSDAstronaut* astronaut)\r\n");
}


void idGameSSDWindow::SpawnPowerup() {
    Sys_Printf("void idGameSSDWindow::SpawnPowerup()\r\n");
}


void idGameSSDWindow::StartSuperBlaster() {
    Sys_Printf("void idGameSSDWindow::StartSuperBlaster()\r\n");
}

void idGameSSDWindow::StopSuperBlaster() {
    Sys_Printf("void idGameSSDWindow::StopSuperBlaster()\r\n");
}


SSDEntity* idGameSSDWindow::GetSpecificEntity(int type, int id) {
    Sys_Printf("SSDEntity* idGameSSDWindow::GetSpecificEntity(int type, int id)\r\n");
    return NULL;
}


#define MAX_SOUND_CHANNEL 8

void idGameSSDWindow::PlaySound(const char* sound) {
    Sys_Printf("void idGameSSDWindow::PlaySound(const char* sound)\r\n");
}

