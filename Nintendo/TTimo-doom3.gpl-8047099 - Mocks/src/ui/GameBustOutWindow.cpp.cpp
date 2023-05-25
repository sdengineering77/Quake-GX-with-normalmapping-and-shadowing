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
#include "../renderer/Image.h"

#include "DeviceContext.h"
#include "Window.h"
#include "UserInterfaceLocal.h"
#include "GameBustOutWindow.h"

#define BALL_RADIUS		12.f
#define BALL_SPEED		250.f
#define BALL_MAXSPEED	450.f

#define S_UNIQUE_CHANNEL	6

/*
*****************************************************************************
* BOEntity	
****************************************************************************
*/
BOEntity::BOEntity(idGameBustOutWindow* _game) {
	game = _game;
	visible = true;

	materialName = "";
	material = NULL;
	width = height = 8;
	color = colorWhite;
	powerup = POWERUP_NONE;

	position.Zero();
	velocity.Zero();

	removed = false;
	fadeOut = 0;
}

BOEntity::~BOEntity() {
}

/*
======================
BOEntity::WriteToSaveGame
======================
*/
void BOEntity::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void BOEntity::WriteToSaveGame( idFile *savefile )\r\n");
}


/*
======================
BOEntity::ReadFromSaveGame
======================
*/
void BOEntity::ReadFromSaveGame( idFile *savefile, idGameBustOutWindow* _game ) {
    Sys_Printf("void BOEntity::ReadFromSaveGame( idFile *savefile, idGameBustOutWindow* _game )\r\n");
}


/*
======================
BOEntity::SetMaterial
======================
*/
void BOEntity::SetMaterial(const char* name) {
    Sys_Printf("void BOEntity::SetMaterial(const char* name)\r\n");
}


/*
======================
BOEntity::SetSize
======================
*/
void BOEntity::SetSize( float _width, float _height ) {
    Sys_Printf("void BOEntity::SetSize( float _width, float _height )\r\n");
}


/*
======================
BOEntity::SetVisible
======================
*/
void BOEntity::SetColor( float r, float g, float b, float a ) {
    Sys_Printf("void BOEntity::SetColor( float r, float g, float b, float a )\r\n");
}


/*
======================
BOEntity::SetVisible
======================
*/
void BOEntity::SetVisible( bool isVisible ) {
    Sys_Printf("void BOEntity::SetVisible( bool isVisible )\r\n");
}


/*
======================
BOEntity::Update
======================
*/
void BOEntity::Update( float timeslice, int guiTime ) {
    Sys_Printf("void BOEntity::Update( float timeslice, int guiTime )\r\n");
}


/*
======================
BOEntity::Draw
======================
*/
void BOEntity::Draw(idDeviceContext *dc) {
    Sys_Printf("void BOEntity::Draw(idDeviceContext *dc)\r\n");
}


/*
*****************************************************************************
* BOBrick
****************************************************************************
*/
BOBrick::BOBrick( void ) {
	ent = NULL;
	x = y = width = height = 0;
	powerup = POWERUP_NONE;
	isBroken = false;
}

BOBrick::BOBrick( BOEntity *_ent, float _x, float _y, float _width, float _height ) {
	ent = _ent;
	x = _x;
	y = _y;
	width = _width;
	height = _height;
	powerup = POWERUP_NONE;

	isBroken = false;

	ent->position.x = x;
	ent->position.y = y;
	ent->SetSize( width, height );
	ent->SetMaterial( "game/bustout/brick" );

	ent->game->entities.Append( ent );
}

BOBrick::~BOBrick( void ) {
}

/*
======================
BOBrick::WriteToSaveGame
======================
*/
void BOBrick::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void BOBrick::WriteToSaveGame( idFile *savefile )\r\n");
}


/*
======================
BOBrick::ReadFromSaveGame
======================
*/
void BOBrick::ReadFromSaveGame( idFile *savefile, idGameBustOutWindow *game ) {
    Sys_Printf("void BOBrick::ReadFromSaveGame( idFile *savefile, idGameBustOutWindow *game )\r\n");
}


/*
======================
BOBrick::SetColor
======================
*/
void BOBrick::SetColor( idVec4 bcolor ) {
    Sys_Printf("void BOBrick::SetColor( idVec4 bcolor )\r\n");
}


/*
======================
BOBrick::checkCollision
======================
*/
collideDir_t BOBrick::checkCollision( idVec2 pos, idVec2 vel ) {
    collideDir_t retVal;
    memset(&retVal, 0, sizeof(collideDir_t));
    Sys_Printf("collideDir_t BOBrick::checkCollision( idVec2 pos, idVec2 vel )\r\n");
    return retVal;
}


/*
*****************************************************************************
* idGameBustOutWindow
****************************************************************************
*/
idGameBustOutWindow::idGameBustOutWindow(idDeviceContext *d, idUserInterfaceLocal *g) : idWindow(d, g) {
	dc = d;
	gui = g;
	CommonInit();
}

idGameBustOutWindow::idGameBustOutWindow(idUserInterfaceLocal *g) : idWindow(g) {
	gui = g;
	CommonInit();
}

idGameBustOutWindow::~idGameBustOutWindow() {
	entities.DeleteContents(true);

	Mem_Free( levelBoardData );
}

/*
=============================
idGameBustOutWindow::WriteToSaveGame
=============================
*/
void idGameBustOutWindow::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void idGameBustOutWindow::WriteToSaveGame( idFile *savefile )\r\n");
}


/*
=============================
idGameBustOutWindow::ReadFromSaveGame
=============================
*/
void idGameBustOutWindow::ReadFromSaveGame( idFile *savefile ) {
    Sys_Printf("void idGameBustOutWindow::ReadFromSaveGame( idFile *savefile )\r\n");
}


/*
=============================
idGameBustOutWindow::ResetGameState
=============================
*/
void idGameBustOutWindow::ResetGameState() {
    Sys_Printf("void idGameBustOutWindow::ResetGameState()\r\n");
}


/*
=============================
idGameBustOutWindow::CommonInit
=============================
*/
void idGameBustOutWindow::CommonInit() {
    Sys_Printf("void idGameBustOutWindow::CommonInit()\r\n");
}


/*
=============================
idGameBustOutWindow::HandleEvent
=============================
*/
const char *idGameBustOutWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals) {
    Sys_Printf("char *idGameBustOutWindow::HandleEvent(const sysEvent_t *event, bool *updateVisuals)\r\n");
    return NULL;
}


/*
=============================
idGameBustOutWindow::ParseInternalVar
=============================
*/
bool idGameBustOutWindow::ParseInternalVar(const char *_name, idParser *src) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameBustOutWindow::ParseInternalVar(const char *_name, idParser *src)\r\n");
    return retVal;
}


/*
=============================
idGameBustOutWindow::GetWinVarByName
=============================
*/
idWinVar *idGameBustOutWindow::GetWinVarByName(const char *_name, bool winLookup, drawWin_t** owner) {
    Sys_Printf("idWinVar *idGameBustOutWindow::GetWinVarByName(const char *_name, bool winLookup, drawWin_t** owner)\r\n");
    return NULL;
}


/*
=============================
idGameBustOutWindow::PostParse
=============================
*/
void idGameBustOutWindow::PostParse() {
    Sys_Printf("void idGameBustOutWindow::PostParse()\r\n");
}


/*
=============================
idGameBustOutWindow::Draw
=============================
*/
void idGameBustOutWindow::Draw(int time, float x, float y) {
    Sys_Printf("void idGameBustOutWindow::Draw(int time, float x, float y)\r\n");
}


/*
=============================
idGameBustOutWindow::Activate
=============================
*/
const char *idGameBustOutWindow::Activate(bool activate) {
    Sys_Printf("char *idGameBustOutWindow::Activate(bool activate)\r\n");
    return NULL;
}



/*
=============================
idGameBustOutWindow::UpdateScore
=============================
*/
void idGameBustOutWindow::UpdateScore() {
    Sys_Printf("void idGameBustOutWindow::UpdateScore()\r\n");
}


/*
=============================
idGameBustOutWindow::ClearBoard
=============================
*/
void idGameBustOutWindow::ClearBoard( void ) {
    Sys_Printf("void idGameBustOutWindow::ClearBoard( void )\r\n");
}


/*
=============================
idGameBustOutWindow::ClearPowerups
=============================
*/
void idGameBustOutWindow::ClearPowerups( void ) {
    Sys_Printf("void idGameBustOutWindow::ClearPowerups( void )\r\n");
}


/*
=============================
idGameBustOutWindow::ClearBalls
=============================
*/
void idGameBustOutWindow::ClearBalls( void ) {
    Sys_Printf("void idGameBustOutWindow::ClearBalls( void )\r\n");
}


/*
=============================
idGameBustOutWindow::LoadBoardFiles
=============================
*/
void idGameBustOutWindow::LoadBoardFiles( void ) {
    Sys_Printf("void idGameBustOutWindow::LoadBoardFiles( void )\r\n");
}


/*
=============================
idGameBustOutWindow::SetCurrentBoard
=============================
*/
void idGameBustOutWindow::SetCurrentBoard( void ) {
    Sys_Printf("void idGameBustOutWindow::SetCurrentBoard( void )\r\n");
}


/*
=============================
idGameBustOutWindow::CreateNewBall
=============================
*/
BOEntity * idGameBustOutWindow::CreateNewBall( void ) {
    Sys_Printf("BOEntity * idGameBustOutWindow::CreateNewBall( void )\r\n");
    return NULL;
}


/*
=============================
idGameBustOutWindow::CreatePowerup
=============================
*/
BOEntity * idGameBustOutWindow::CreatePowerup( BOBrick *brick ) {
    Sys_Printf("BOEntity * idGameBustOutWindow::CreatePowerup( BOBrick *brick )\r\n");
    return NULL;
}


/*
=============================
idGameBustOutWindow::UpdatePowerups
=============================
*/
void idGameBustOutWindow::UpdatePowerups( void ) {
    Sys_Printf("void idGameBustOutWindow::UpdatePowerups( void )\r\n");
}


/*
=============================
idGameBustOutWindow::UpdatePaddle
=============================
*/
void idGameBustOutWindow::UpdatePaddle( void ) {
    Sys_Printf("void idGameBustOutWindow::UpdatePaddle( void )\r\n");
}


/*
=============================
idGameBustOutWindow::UpdateBall
=============================
*/
void idGameBustOutWindow::UpdateBall( void ) {
    Sys_Printf("void idGameBustOutWindow::UpdateBall( void )\r\n");
}


/*
=============================
idGameBustOutWindow::UpdateGame
=============================
*/
void idGameBustOutWindow::UpdateGame() {
    Sys_Printf("void idGameBustOutWindow::UpdateGame()\r\n");
}

