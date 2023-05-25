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

// _D3XP : rename all gameLocal.time to gameLocal.slow.time for merge!

#ifdef _D3XP
static int MakePowerOfTwo( int num ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int MakePowerOfTwo( int num )\r\n");
    return retVal;
}

#endif

const int IMPULSE_DELAY = 150;
/*
==============
idPlayerView::idPlayerView
==============
*/
idPlayerView::idPlayerView() {
	memset( screenBlobs, 0, sizeof( screenBlobs ) );
	memset( &view, 0, sizeof( view ) );
	player = NULL;
	dvMaterial = declManager->FindMaterial( "_scratch" );
	tunnelMaterial = declManager->FindMaterial( "textures/decals/tunnel" );
	armorMaterial = declManager->FindMaterial( "armorViewEffect" );
	berserkMaterial = declManager->FindMaterial( "textures/decals/berserk" );
	irGogglesMaterial = declManager->FindMaterial( "textures/decals/irblend" );
	bloodSprayMaterial = declManager->FindMaterial( "textures/decals/bloodspray" );
	bfgMaterial = declManager->FindMaterial( "textures/decals/bfgvision" );
	lagoMaterial = declManager->FindMaterial( LAGO_MATERIAL, false );
	bfgVision = false;
	dvFinishTime = 0;
	kickFinishTime = 0;
	kickAngles.Zero();
	lastDamageTime = 0.0f;
	fadeTime = 0;
	fadeRate = 0.0;
	fadeFromColor.Zero();
	fadeToColor.Zero();
	fadeColor.Zero();
	shakeAng.Zero();
#ifdef _D3XP
	fxManager = NULL;

	if ( !fxManager ) {
		fxManager = new FullscreenFXManager;
		fxManager->Initialize( this );
	}
#endif

	ClearEffects();
}

/*
==============
idPlayerView::Save
==============
*/
void idPlayerView::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idPlayerView::Save( idSaveGame *savefile )\r\n");
}


/*
==============
idPlayerView::Restore
==============
*/
void idPlayerView::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idPlayerView::Restore( idRestoreGame *savefile )\r\n");
}


/*
==============
idPlayerView::SetPlayerEntity
==============
*/
void idPlayerView::SetPlayerEntity( idPlayer *playerEnt ) {
    Sys_Printf("void idPlayerView::SetPlayerEntity( idPlayer *playerEnt )\r\n");
}


/*
==============
idPlayerView::ClearEffects
==============
*/
void idPlayerView::ClearEffects() {
    Sys_Printf("void idPlayerView::ClearEffects()\r\n");
}


/*
==============
idPlayerView::GetScreenBlob
==============
*/
screenBlob_t *idPlayerView::GetScreenBlob() {
    Sys_Printf("screenBlob_t *idPlayerView::GetScreenBlob()\r\n");
    return NULL;
}


/*
==============
idPlayerView::DamageImpulse

LocalKickDir is the direction of force in the player's coordinate system,
which will determine the head kick direction
==============
*/
void idPlayerView::DamageImpulse( idVec3 localKickDir, const idDict *damageDef ) {
    Sys_Printf("void idPlayerView::DamageImpulse( idVec3 localKickDir, const idDict *damageDef )\r\n");
}


/*
==================
idPlayerView::AddBloodSpray

If we need a more generic way to add blobs then we can do that
but having it localized here lets the material be pre-looked up etc.
==================
*/
void idPlayerView::AddBloodSpray( float duration ) {
    Sys_Printf("void idPlayerView::AddBloodSpray( float duration )\r\n");
}


/*
==================
idPlayerView::WeaponFireFeedback

Called when a weapon fires, generates head twitches, etc
==================
*/
void idPlayerView::WeaponFireFeedback( const idDict *weaponDef ) {
    Sys_Printf("void idPlayerView::WeaponFireFeedback( const idDict *weaponDef )\r\n");
}


/*
===================
idPlayerView::CalculateShake
===================
*/
void idPlayerView::CalculateShake() {
    Sys_Printf("void idPlayerView::CalculateShake()\r\n");
}


/*
===================
idPlayerView::ShakeAxis
===================
*/
idMat3 idPlayerView::ShakeAxis() const {
    idMat3 retVal;
    memset(&retVal, 0, sizeof(idMat3));
    Sys_Printf("idMat3 idPlayerView::ShakeAxis()\r\n");
    return retVal;
}


/*
===================
idPlayerView::AngleOffset

  kickVector, a world space direction that the attack should 
===================
*/
idAngles idPlayerView::AngleOffset() const {
    idAngles retVal;
    memset(&retVal, 0, sizeof(idAngles));
    Sys_Printf("idAngles idPlayerView::AngleOffset()\r\n");
    return retVal;
}


/*
==================
idPlayerView::SingleView
==================
*/
void idPlayerView::SingleView( idUserInterface *hud, const renderView_t *view ) {
    Sys_Printf("void idPlayerView::SingleView( idUserInterface *hud, const renderView_t *view )\r\n");
}



/*
=================
idPlayerView::Flash

flashes the player view with the given color
=================
*/
void idPlayerView::Flash(idVec4 color, int time ) {
    Sys_Printf("void idPlayerView::Flash(idVec4 color, int time )\r\n");
}


/*
=================
idPlayerView::Fade

used for level transition fades
assumes: color.w is 0 or 1
=================
*/
void idPlayerView::Fade( idVec4 color, int time ) {
    Sys_Printf("void idPlayerView::Fade( idVec4 color, int time )\r\n");
}


/*
=================
idPlayerView::ScreenFade
=================
*/
void idPlayerView::ScreenFade() {
    Sys_Printf("void idPlayerView::ScreenFade()\r\n");
}


/*
===================
idPlayerView::RenderPlayerView
===================
*/
void idPlayerView::RenderPlayerView( idUserInterface *hud ) {
    Sys_Printf("void idPlayerView::RenderPlayerView( idUserInterface *hud )\r\n");
}


#ifdef _D3XP
/*
===================
idPlayerView::WarpVision
===================
*/
int idPlayerView::AddWarp( idVec3 worldOrigin, float centerx, float centery, float initialRadius, float durationMsec ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPlayerView::AddWarp( idVec3 worldOrigin, float centerx, float centery, float initialRadius, float durationMsec )\r\n");
    return retVal;
}


void idPlayerView::FreeWarp( int id ) {
    Sys_Printf("void idPlayerView::FreeWarp( int id )\r\n");
}






/*
==================
FxFader::FxFader
==================
*/
FxFader::FxFader() {
	time = 0;
	state = FX_STATE_OFF;
	alpha = 0;
	msec = 1000;
}

/*
==================
FxFader::SetTriggerState
==================
*/
bool FxFader::SetTriggerState( bool active ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool FxFader::SetTriggerState( bool active )\r\n");
    return retVal;
}


/*
==================
FxFader::Save
==================
*/
void FxFader::Save( idSaveGame *savefile ) {
    Sys_Printf("void FxFader::Save( idSaveGame *savefile )\r\n");
}


/*
==================
FxFader::Restore
==================
*/
void FxFader::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void FxFader::Restore( idRestoreGame *savefile )\r\n");
}






/*
==================
FullscreenFX_Helltime::Save
==================
*/
void FullscreenFX::Save( idSaveGame *savefile ) {
    Sys_Printf("void FullscreenFX::Save( idSaveGame *savefile )\r\n");
}


/*
==================
FullscreenFX_Helltime::Restore
==================
*/
void FullscreenFX::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void FullscreenFX::Restore( idRestoreGame *savefile )\r\n");
}



/*
==================
FullscreenFX_Helltime::Initialize
==================
*/
void FullscreenFX_Helltime::Initialize() {
    Sys_Printf("void FullscreenFX_Helltime::Initialize()\r\n");
}


/*
==================
FullscreenFX_Helltime::DetermineLevel
==================
*/
int FullscreenFX_Helltime::DetermineLevel() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int FullscreenFX_Helltime::DetermineLevel()\r\n");
    return retVal;
}


/*
==================
FullscreenFX_Helltime::Active
==================
*/
bool FullscreenFX_Helltime::Active() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool FullscreenFX_Helltime::Active()\r\n");
    return retVal;
}


/*
==================
FullscreenFX_Helltime::AccumPass
==================
*/
void FullscreenFX_Helltime::AccumPass( const renderView_t *view ) {
    Sys_Printf("void FullscreenFX_Helltime::AccumPass( const renderView_t *view )\r\n");
}


/*
==================
FullscreenFX_Helltime::HighQuality
==================
*/
void FullscreenFX_Helltime::HighQuality() {
    Sys_Printf("void FullscreenFX_Helltime::HighQuality()\r\n");
}


/*
==================
FullscreenFX_Helltime::Restore
==================
*/
void FullscreenFX_Helltime::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void FullscreenFX_Helltime::Restore( idRestoreGame *savefile )\r\n");
}






/*
==================
FullscreenFX_Multiplayer::Initialize
==================
*/
void FullscreenFX_Multiplayer::Initialize() {
    Sys_Printf("void FullscreenFX_Multiplayer::Initialize()\r\n");
}


/*
==================
FullscreenFX_Multiplayer::DetermineLevel
==================
*/
int FullscreenFX_Multiplayer::DetermineLevel() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int FullscreenFX_Multiplayer::DetermineLevel()\r\n");
    return retVal;
}


/*
==================
FullscreenFX_Multiplayer::Active
==================
*/
bool FullscreenFX_Multiplayer::Active() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool FullscreenFX_Multiplayer::Active()\r\n");
    return retVal;
}


/*
==================
FullscreenFX_Multiplayer::AccumPass
==================
*/
void FullscreenFX_Multiplayer::AccumPass( const renderView_t *view ) {
    Sys_Printf("void FullscreenFX_Multiplayer::AccumPass( const renderView_t *view )\r\n");
}


/*
==================
FullscreenFX_Multiplayer::HighQuality
==================
*/
void FullscreenFX_Multiplayer::HighQuality() {
    Sys_Printf("void FullscreenFX_Multiplayer::HighQuality()\r\n");
}


/*
==================
FullscreenFX_Multiplayer::Restore
==================
*/
void FullscreenFX_Multiplayer::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void FullscreenFX_Multiplayer::Restore( idRestoreGame *savefile )\r\n");
}






/*
==================
FullscreenFX_Warp::Initialize
==================
*/
void FullscreenFX_Warp::Initialize() {
    Sys_Printf("void FullscreenFX_Warp::Initialize()\r\n");
}


/*
==================
FullscreenFX_Warp::Active
==================
*/
bool FullscreenFX_Warp::Active() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool FullscreenFX_Warp::Active()\r\n");
    return retVal;
}


/*
==================
FullscreenFX_Warp::Save
==================
*/
void FullscreenFX_Warp::Save( idSaveGame *savefile ) {
    Sys_Printf("void FullscreenFX_Warp::Save( idSaveGame *savefile )\r\n");
}


/*
==================
FullscreenFX_Warp::Restore
==================
*/
void FullscreenFX_Warp::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void FullscreenFX_Warp::Restore( idRestoreGame *savefile )\r\n");
}


/*
==================
FullscreenFX_Warp::DrawWarp
==================
*/
void FullscreenFX_Warp::DrawWarp( WarpPolygon_t wp, float interp ) {
    Sys_Printf("void FullscreenFX_Warp::DrawWarp( WarpPolygon_t wp, float interp )\r\n");
}


/*
==================
FullscreenFX_Warp::HighQuality
==================
*/
void FullscreenFX_Warp::HighQuality() {
    Sys_Printf("void FullscreenFX_Warp::HighQuality()\r\n");
}






/*
==================
FullscreenFX_EnviroSuit::Initialize
==================
*/
void FullscreenFX_EnviroSuit::Initialize() {
    Sys_Printf("void FullscreenFX_EnviroSuit::Initialize()\r\n");
}


/*
==================
FullscreenFX_EnviroSuit::Active
==================
*/
bool FullscreenFX_EnviroSuit::Active() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool FullscreenFX_EnviroSuit::Active()\r\n");
    return retVal;
}


/*
==================
FullscreenFX_EnviroSuit::HighQuality
==================
*/
void FullscreenFX_EnviroSuit::HighQuality() {
    Sys_Printf("void FullscreenFX_EnviroSuit::HighQuality()\r\n");
}






/*
==================
FullscreenFX_DoubleVision::Initialize
==================
*/
void FullscreenFX_DoubleVision::Initialize() {
    Sys_Printf("void FullscreenFX_DoubleVision::Initialize()\r\n");
}


/*
==================
FullscreenFX_DoubleVision::Active
==================
*/
bool FullscreenFX_DoubleVision::Active() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool FullscreenFX_DoubleVision::Active()\r\n");
    return retVal;
}


/*
==================
FullscreenFX_DoubleVision::HighQuality
==================
*/
void FullscreenFX_DoubleVision::HighQuality() {
    Sys_Printf("void FullscreenFX_DoubleVision::HighQuality()\r\n");
}





/*
==================
FullscreenFX_InfluenceVision::Initialize
==================
*/
void FullscreenFX_InfluenceVision::Initialize() {
    Sys_Printf("void FullscreenFX_InfluenceVision::Initialize()\r\n");
}


/*
==================
FullscreenFX_InfluenceVision::Active
==================
*/
bool FullscreenFX_InfluenceVision::Active() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool FullscreenFX_InfluenceVision::Active()\r\n");
    return retVal;
}


/*
==================
FullscreenFX_InfluenceVision::HighQuality
==================
*/
void FullscreenFX_InfluenceVision::HighQuality() {
    Sys_Printf("void FullscreenFX_InfluenceVision::HighQuality()\r\n");
}





/*
==================
FullscreenFX_Bloom::Initialize
==================
*/
void FullscreenFX_Bloom::Initialize() {
    Sys_Printf("void FullscreenFX_Bloom::Initialize()\r\n");
}


/*
==================
FullscreenFX_Bloom::Active
==================
*/
bool FullscreenFX_Bloom::Active() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool FullscreenFX_Bloom::Active()\r\n");
    return retVal;
}


/*
==================
FullscreenFX_Bloom::HighQuality
==================
*/
void FullscreenFX_Bloom::HighQuality() {
    Sys_Printf("void FullscreenFX_Bloom::HighQuality()\r\n");
}


/*
==================
FullscreenFX_Bloom::Save
==================
*/
void FullscreenFX_Bloom::Save( idSaveGame *savefile ) {
    Sys_Printf("void FullscreenFX_Bloom::Save( idSaveGame *savefile )\r\n");
}


/*
==================
FullscreenFX_Bloom::Restore
==================
*/
void FullscreenFX_Bloom::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void FullscreenFX_Bloom::Restore( idRestoreGame *savefile )\r\n");
}







/*
==================
FullscreenFXManager::FullscreenFXManager
==================
*/
FullscreenFXManager::FullscreenFXManager() {
	highQualityMode = false;
	playerView = NULL;
	blendBackMaterial = NULL;
	shiftScale.Set( 0, 0 );
}

/*
==================
FullscreenFXManager::~FullscreenFXManager
==================
*/
FullscreenFXManager::~FullscreenFXManager() {

}

/*
==================
FullscreenFXManager::FindFX
==================
*/
FullscreenFX* FullscreenFXManager::FindFX( idStr name ) {
    Sys_Printf("FullscreenFX* FullscreenFXManager::FindFX( idStr name )\r\n");
    return NULL;
}


/*
==================
FullscreenFXManager::CreateFX
==================
*/
void FullscreenFXManager::CreateFX( idStr name, idStr fxtype, int fade ) {
    Sys_Printf("void FullscreenFXManager::CreateFX( idStr name, idStr fxtype, int fade )\r\n");
}


/*
==================
FullscreenFXManager::Initialize
==================
*/
void FullscreenFXManager::Initialize( idPlayerView *pv ) {
    Sys_Printf("void FullscreenFXManager::Initialize( idPlayerView *pv )\r\n");
}


/*
==================
FullscreenFXManager::Blendback
==================
*/
void FullscreenFXManager::Blendback( float alpha ) {
    Sys_Printf("void FullscreenFXManager::Blendback( float alpha )\r\n");
}


/*
==================
FullscreenFXManager::Save
==================
*/
void FullscreenFXManager::Save( idSaveGame *savefile ) {
    Sys_Printf("void FullscreenFXManager::Save( idSaveGame *savefile )\r\n");
}


/*
==================
FullscreenFXManager::Restore
==================
*/
void FullscreenFXManager::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void FullscreenFXManager::Restore( idRestoreGame *savefile )\r\n");
}


/*
==================
FullscreenFXManager::CaptureCurrentRender
==================
*/
void FullscreenFXManager::CaptureCurrentRender() {
    Sys_Printf("void FullscreenFXManager::CaptureCurrentRender()\r\n");
}


/*
==================
FullscreenFXManager::Process
==================
*/
void FullscreenFXManager::Process( const renderView_t *view ) {
    Sys_Printf("void FullscreenFXManager::Process( const renderView_t *view )\r\n");
}




#endif
