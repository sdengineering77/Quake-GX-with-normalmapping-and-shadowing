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
#include "GameBearShootWindow.h"


#define BEAR_GRAVITY 240
#define BEAR_SIZE 24.f
#define BEAR_SHRINK_TIME 2000.f

#define MAX_WINDFORCE 100.f

idCVar bearTurretAngle( "bearTurretAngle", "0", CVAR_FLOAT, "" );
idCVar bearTurretForce( "bearTurretForce", "200", CVAR_FLOAT, "" );

/*
*****************************************************************************
* BSEntity	
****************************************************************************
*/
BSEntity::BSEntity(idGameBearShootWindow* _game) {
	game = _game;
	visible = true;

	entColor = colorWhite;
	materialName = "";
	material = NULL;
	width = height = 8;
	rotation = 0.f;
	rotationSpeed = 0.f;
	fadeIn = false;
	fadeOut = false;

	position.Zero();
	velocity.Zero();
}

BSEntity::~BSEntity() {
}

/*
======================
BSEntity::WriteToSaveGame
======================
*/
void BSEntity::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void BSEntity::WriteToSaveGame( idFile *savefile )\r\n");
}


/*
======================
BSEntity::ReadFromSaveGame
======================
*/
void BSEntity::ReadFromSaveGame( idFile *savefile, idGameBearShootWindow* _game ) {
    Sys_Printf("void BSEntity::ReadFromSaveGame( idFile *savefile, idGameBearShootWindow* _game )\r\n");
}


/*
======================
BSEntity::SetMaterial
======================
*/
void BSEntity::SetMaterial(const char* name) {
    Sys_Printf("void BSEntity::SetMaterial(const char* name)\r\n");
}


/*
======================
BSEntity::SetSize
======================
*/
void BSEntity::SetSize( float _width, float _height ) {
    Sys_Printf("void BSEntity::SetSize( float _width, float _height )\r\n");
}


/*
======================
BSEntity::SetVisible
======================
*/
void BSEntity::SetVisible( bool isVisible ) {
    Sys_Printf("void BSEntity::SetVisible( bool isVisible )\r\n");
}


/*
======================
BSEntity::Update
======================
*/
void BSEntity::Update( float timeslice ) {
    Sys_Printf("void BSEntity::Update( float timeslice )\r\n");
}


/*
======================
BSEntity::Draw
======================
*/
void BSEntity::Draw(idDeviceContext *dc) {
    Sys_Printf("void BSEntity::Draw(idDeviceContext *dc)\r\n");
}


/*
*****************************************************************************
* idGameBearShootWindow
****************************************************************************
*/
idGameBearShootWindow::idGameBearShootWindow(idDeviceContext *d, idUserInterfaceLocal *g) : idWindow(d, g) {
	dc = d;
	gui = g;
	CommonInit();
}

idGameBearShootWindow::idGameBearShootWindow(idUserInterfaceLocal *g) : idWindow(g) {
	gui = g;
	CommonInit();
}

idGameBearShootWindow::~idGameBearShootWindow() {
	entities.DeleteContents(true);
}

/*
=============================
idGameBearShootWindow::WriteToSaveGame
=============================
*/
void idGameBearShootWindow::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void idGameBearShootWindow::WriteToSaveGame( idFile *savefile )\r\n");
}


/*
=============================
idGameBearShootWindow::ReadFromSaveGame
=============================
*/
void idGameBearShootWindow::ReadFromSaveGame( idFile *savefile ) {
    Sys_Printf("void idGameBearShootWindow::ReadFromSaveGame( idFile *savefile )\r\n");
}


/*
=============================
idGameBearShootWindow::ResetGameState
=============================
*/
void idGameBearShootWindow::ResetGameState() {
    Sys_Printf("void idGameBearShootWindow::ResetGameState()\r\n");
}


/*
=============================
idGameBearShootWindow::CommonInit
=============================
*/
void idGameBearShootWindow::CommonInit() {
    Sys_Printf("void idGameBearShootWindow::CommonInit()\r\n");
}


/*
=============================
idGameBearShootWindow::HandleEvent
=============================
*/
const char *idGameBearShootWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals) {
    Sys_Printf("char *idGameBearShootWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals)\r\n");
    return NULL;
}


/*
=============================
idGameBearShootWindow::ParseInternalVar
=============================
*/
bool idGameBearShootWindow::ParseInternalVar(const char *_name, idParser *src) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameBearShootWindow::ParseInternalVar(const char *_name, idParser *src)\r\n");
    return retVal;
}


/*
=============================
idGameBearShootWindow::GetWinVarByName
=============================
*/
idWinVar *idGameBearShootWindow::GetWinVarByName(const char *_name, bool winLookup, drawWin_t** owner) {
    Sys_Printf("idWinVar *idGameBearShootWindow::GetWinVarByName(const char *_name, bool winLookup, drawWin_t** owner)\r\n");
    return NULL;
}


/*
=============================
idGameBearShootWindow::PostParse
=============================
*/
void idGameBearShootWindow::PostParse() {
    Sys_Printf("void idGameBearShootWindow::PostParse()\r\n");
}


/*
=============================
idGameBearShootWindow::Draw
=============================
*/
void idGameBearShootWindow::Draw(int time, float x, float y) {
    Sys_Printf("void idGameBearShootWindow::Draw(int time, float x, float y)\r\n");
}


/*
=============================
idGameBearShootWindow::Activate
=============================
*/
const char *idGameBearShootWindow::Activate(bool activate) {
    Sys_Printf("char *idGameBearShootWindow::Activate(bool activate)\r\n");
    return NULL;
}


/*
=============================
idGameBearShootWindow::UpdateTurret
=============================
*/
void idGameBearShootWindow::UpdateTurret() {
    Sys_Printf("void idGameBearShootWindow::UpdateTurret()\r\n");
}


/*
=============================
idGameBearShootWindow::UpdateBear
=============================
*/
void idGameBearShootWindow::UpdateBear() {
    Sys_Printf("void idGameBearShootWindow::UpdateBear()\r\n");
}


/*
=============================
idGameBearShootWindow::UpdateHelicopter
=============================
*/
void idGameBearShootWindow::UpdateHelicopter() {
    Sys_Printf("void idGameBearShootWindow::UpdateHelicopter()\r\n");
}


/*
=============================
idGameBearShootWindow::UpdateButtons
=============================
*/
void idGameBearShootWindow::UpdateButtons() {
    Sys_Printf("void idGameBearShootWindow::UpdateButtons()\r\n");
}


/*
=============================
idGameBearShootWindow::UpdateScore
=============================
*/
void idGameBearShootWindow::UpdateScore() {
    Sys_Printf("void idGameBearShootWindow::UpdateScore()\r\n");
}


/*
=============================
idGameBearShootWindow::UpdateGame
=============================
*/
void idGameBearShootWindow::UpdateGame() {
    Sys_Printf("void idGameBearShootWindow::UpdateGame()\r\n");
}

