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

// could be a problem if players manage to go down sudden deaths till this .. oh well
#define LASTMAN_NOLIVES -20

idCVar g_spectatorChat( "g_spectatorChat", "0", CVAR_GAME | CVAR_ARCHIVE | CVAR_BOOL, "let spectators talk to everyone during game" );

// global sounds transmitted by index - 0 .. SND_COUNT
// sounds in this list get precached on MP start
const char *idMultiplayerGame::GlobalSoundStrings[] = {
	"sound/feedback/voc_youwin.wav",
	"sound/feedback/voc_youlose.wav",
	"sound/feedback/fight.wav",
	"sound/feedback/vote_now.wav",
	"sound/feedback/vote_passed.wav",
	"sound/feedback/vote_failed.wav",
	"sound/feedback/three.wav",
	"sound/feedback/two.wav",
	"sound/feedback/one.wav",
	"sound/feedback/sudden_death.wav",
};

// handy verbose
const char *idMultiplayerGame::GameStateStrings[] = {
	"INACTIVE",
	"WARMUP",
	"COUNTDOWN",
	"GAMEON",
	"SUDDENDEATH",
	"GAMEREVIEW",
	"NEXTGAME"
};

const char *idMultiplayerGame::MPGuis[] = {
	"guis/mphud.gui",
	"guis/mpmain.gui",
	"guis/mpmsgmode.gui",
	"guis/netmenu.gui",
	NULL
};

const char *idMultiplayerGame::ThrottleVars[] = {
	"ui_spectate",
	"ui_ready",
	"ui_team",
	NULL
};

const char *idMultiplayerGame::ThrottleVarsInEnglish[] = {
	"#str_06738",
	"#str_06737",
	"#str_01991",
	NULL
};

const int idMultiplayerGame::ThrottleDelay[] = {
	8,
	5,
	5
};

/*
================
idMultiplayerGame::idMultiplayerGame
================
*/
idMultiplayerGame::idMultiplayerGame() {
	scoreBoard = NULL;
	spectateGui = NULL;
	guiChat = NULL;
	mainGui = NULL;
	mapList = NULL;
	msgmodeGui = NULL;
	lastGameType = GAME_SP;
	Clear();
}

/*
================
idMultiplayerGame::Shutdown
================
*/
void idMultiplayerGame::Shutdown( void ) {
    Sys_Printf("void idMultiplayerGame::Shutdown( void )\r\n");
}


/*
================
idMultiplayerGame::SetMenuSkin
================
*/
void idMultiplayerGame::SetMenuSkin( void ) {
    Sys_Printf("void idMultiplayerGame::SetMenuSkin( void )\r\n");
}


/*
================
idMultiplayerGame::Reset
================
*/
void idMultiplayerGame::Reset() {
    Sys_Printf("void idMultiplayerGame::Reset()\r\n");
}


/*
================
idMultiplayerGame::ServerClientConnect
================
*/
void idMultiplayerGame::ServerClientConnect( int clientNum ) {
    Sys_Printf("void idMultiplayerGame::ServerClientConnect( int clientNum )\r\n");
}


/*
================
idMultiplayerGame::SpawnPlayer
================
*/
void idMultiplayerGame::SpawnPlayer( int clientNum ) {
    Sys_Printf("void idMultiplayerGame::SpawnPlayer( int clientNum )\r\n");
}


/*
================
idMultiplayerGame::Clear
================
*/
void idMultiplayerGame::Clear() {
    Sys_Printf("void idMultiplayerGame::Clear()\r\n");
}


/*
================
idMultiplayerGame::ClearGuis
================
*/
void idMultiplayerGame::ClearGuis() {
    Sys_Printf("void idMultiplayerGame::ClearGuis()\r\n");
}


/*
================
idMultiplayerGame::UpdatePlayerRanks
================
*/
void idMultiplayerGame::UpdatePlayerRanks() {
    Sys_Printf("void idMultiplayerGame::UpdatePlayerRanks()\r\n");
}



/*
================
idMultiplayerGame::UpdateRankColor
================
*/
void idMultiplayerGame::UpdateRankColor( idUserInterface *gui, const char *mask, int i, const idVec3 &vec ) {
    Sys_Printf("void idMultiplayerGame::UpdateRankColor( idUserInterface *gui, const char *mask, int i, const idVec3 &vec )\r\n");
}


/*
================
idMultiplayerGame::UpdateScoreboard
================
*/
void idMultiplayerGame::UpdateScoreboard( idUserInterface *scoreBoard, idPlayer *player ) {
    Sys_Printf("void idMultiplayerGame::UpdateScoreboard( idUserInterface *scoreBoard, idPlayer *player )\r\n");
}


/*
================
idMultiplayerGame::GameTime
================
*/
const char *idMultiplayerGame::GameTime() {
    Sys_Printf("char *idMultiplayerGame::GameTime()\r\n");
    return NULL;
}


/*
================
idMultiplayerGame::NumActualClients
================
*/
int idMultiplayerGame::NumActualClients( bool countSpectators, int *teamcounts ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMultiplayerGame::NumActualClients( bool countSpectators, int *teamcounts )\r\n");
    return retVal;
}


/*
================
idMultiplayerGame::EnoughClientsToPlay
================
*/
bool idMultiplayerGame::EnoughClientsToPlay() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMultiplayerGame::EnoughClientsToPlay()\r\n");
    return retVal;
}


/*
================
idMultiplayerGame::AllPlayersReady
================
*/
bool idMultiplayerGame::AllPlayersReady() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMultiplayerGame::AllPlayersReady()\r\n");
    return retVal;
}


/*
================
idMultiplayerGame::FragLimitHit
return the winning player (team player)
if there is no FragLeader(), the game is tied and we return NULL
================
*/
idPlayer *idMultiplayerGame::FragLimitHit() {
    Sys_Printf("idPlayer *idMultiplayerGame::FragLimitHit()\r\n");
    return NULL;
}


/*
================
idMultiplayerGame::TimeLimitHit
================
*/
bool idMultiplayerGame::TimeLimitHit() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMultiplayerGame::TimeLimitHit()\r\n");
    return retVal;
}


/*
================
idMultiplayerGame::FragLeader
return the current winner ( or a player from the winning team )
NULL if even
================
*/
idPlayer *idMultiplayerGame::FragLeader( void ) {
    Sys_Printf("idPlayer *idMultiplayerGame::FragLeader( void )\r\n");
    return NULL;
}


/*
================
idGameLocal::UpdateWinsLosses
================
*/
void idMultiplayerGame::UpdateWinsLosses( idPlayer *winner ) {
    Sys_Printf("void idMultiplayerGame::UpdateWinsLosses( idPlayer *winner )\r\n");
}


/*
================
idMultiplayerGame::TeamScore
================
*/
void idMultiplayerGame::TeamScore( int entityNumber, int team, int delta ) {
    Sys_Printf("void idMultiplayerGame::TeamScore( int entityNumber, int team, int delta )\r\n");
}


/*
================
idMultiplayerGame::PlayerDeath
================
*/
void idMultiplayerGame::PlayerDeath( idPlayer *dead, idPlayer *killer, bool telefrag ) {
    Sys_Printf("void idMultiplayerGame::PlayerDeath( idPlayer *dead, idPlayer *killer, bool telefrag )\r\n");
}


/*
================
idMultiplayerGame::PlayerStats
================
*/
void idMultiplayerGame::PlayerStats( int clientNum, char *data, const int len ) {
    Sys_Printf("void idMultiplayerGame::PlayerStats( int clientNum, char *data, const int len )\r\n");
}


/*
================
idMultiplayerGame::PlayerVote
================
*/
void idMultiplayerGame::PlayerVote( int clientNum, playerVote_t vote ) {
    Sys_Printf("void idMultiplayerGame::PlayerVote( int clientNum, playerVote_t vote )\r\n");
}


/*
================
idMultiplayerGame::DumpTourneyLine
================
*/
void idMultiplayerGame::DumpTourneyLine( void ) {
    Sys_Printf("void idMultiplayerGame::DumpTourneyLine( void )\r\n");
}


/*
================
idMultiplayerGame::NewState
================
*/
void idMultiplayerGame::NewState( gameState_t news, idPlayer *player ) {
    Sys_Printf("void idMultiplayerGame::NewState( gameState_t news, idPlayer *player )\r\n");
}


/*
================
idMultiplayerGame::FillTourneySlots
NOTE: called each frame during warmup to keep the tourney slots filled
================
*/
void idMultiplayerGame::FillTourneySlots( ) {
    Sys_Printf("void idMultiplayerGame::FillTourneySlots( )\r\n");
}


/*
================
idMultiplayerGame::UpdateTourneyLine
we manipulate tourneyRank on player entities for internal ranking. it's easier to deal with.
but we need a real wait list to be synced down to clients for GUI
ignore current players, ignore wantSpectate
================
*/
void idMultiplayerGame::UpdateTourneyLine( void ) {
    Sys_Printf("void idMultiplayerGame::UpdateTourneyLine( void )\r\n");
}


/*
================
idMultiplayerGame::CycleTourneyPlayers
================
*/
void idMultiplayerGame::CycleTourneyPlayers( ) {
    Sys_Printf("void idMultiplayerGame::CycleTourneyPlayers( )\r\n");
}


/*
================
idMultiplayerGame::ExecuteVote
the votes are checked for validity/relevance before they are started
we assume that they are still legit when reaching here
================
*/
void idMultiplayerGame::ExecuteVote( void ) {
    Sys_Printf("void idMultiplayerGame::ExecuteVote( void )\r\n");
}


/*
================
idMultiplayerGame::CheckVote
================
*/
void idMultiplayerGame::CheckVote( void ) {
    Sys_Printf("void idMultiplayerGame::CheckVote( void )\r\n");
}


/*
================
idMultiplayerGame::Warmup
================
*/
bool idMultiplayerGame::Warmup() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMultiplayerGame::Warmup()\r\n");
    return retVal;
}


/*
================
idMultiplayerGame::Run
================
*/
void idMultiplayerGame::Run() {
    Sys_Printf("void idMultiplayerGame::Run()\r\n");
}


/*
================
idMultiplayerGame::UpdateMainGui
================
*/
void idMultiplayerGame::UpdateMainGui( void ) {
    Sys_Printf("void idMultiplayerGame::UpdateMainGui( void )\r\n");
}


/*
================
idMultiplayerGame::StartMenu
================
*/
idUserInterface* idMultiplayerGame::StartMenu( void ) {
    Sys_Printf("idUserInterface* idMultiplayerGame::StartMenu( void )\r\n");
    return NULL;
}


/*
================
idMultiplayerGame::DisableMenu
================
*/
void idMultiplayerGame::DisableMenu( void ) {
    Sys_Printf("void idMultiplayerGame::DisableMenu( void )\r\n");
}


/*
================
idMultiplayerGame::SetMapShot
================
*/
void idMultiplayerGame::SetMapShot( void ) {
    Sys_Printf("void idMultiplayerGame::SetMapShot( void )\r\n");
}


/*
================
idMultiplayerGame::HandleGuiCommands
================
*/
const char* idMultiplayerGame::HandleGuiCommands( const char *_menuCommand ) {
    Sys_Printf("char* idMultiplayerGame::HandleGuiCommands( const char *_menuCommand )\r\n");
    return NULL;
}


/*
================
idMultiplayerGame::Draw
================
*/
bool idMultiplayerGame::Draw( int clientNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMultiplayerGame::Draw( int clientNum )\r\n");
    return retVal;
}


/*
================
idMultiplayerGame::UpdateHud
================
*/
void idMultiplayerGame::UpdateHud( idPlayer *player, idUserInterface *hud ) {
    Sys_Printf("void idMultiplayerGame::UpdateHud( idPlayer *player, idUserInterface *hud )\r\n");
}


/*
================
idMultiplayerGame::DrawScoreBoard
================
*/
void idMultiplayerGame::DrawScoreBoard( idPlayer *player ) {
    Sys_Printf("void idMultiplayerGame::DrawScoreBoard( idPlayer *player )\r\n");
}


/*
===============
idMultiplayerGame::ClearChatData
===============
*/
void idMultiplayerGame::ClearChatData() {
    Sys_Printf("void idMultiplayerGame::ClearChatData()\r\n");
}


/*
===============
idMultiplayerGame::AddChatLine
===============
*/
void idMultiplayerGame::AddChatLine( const char *fmt, ... ) {
    Sys_Printf("void idMultiplayerGame::AddChatLine( const char *fmt, ... )\r\n");
}


/*
===============
idMultiplayerGame::DrawChat
===============
*/
void idMultiplayerGame::DrawChat() {
    Sys_Printf("void idMultiplayerGame::DrawChat()\r\n");
}


const int ASYNC_PLAYER_FRAG_BITS = -idMath::BitsForInteger( MP_PLAYER_MAXFRAGS - MP_PLAYER_MINFRAGS );	// player can have negative frags
const int ASYNC_PLAYER_WINS_BITS = idMath::BitsForInteger( MP_PLAYER_MAXWINS );
const int ASYNC_PLAYER_PING_BITS = idMath::BitsForInteger( MP_PLAYER_MAXPING );

/*
================
idMultiplayerGame::WriteToSnapshot
================
*/
void idMultiplayerGame::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idMultiplayerGame::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idMultiplayerGame::ReadFromSnapshot
================
*/
void idMultiplayerGame::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idMultiplayerGame::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idMultiplayerGame::PlayGlobalSound
================
*/
void idMultiplayerGame::PlayGlobalSound( int to, snd_evt_t evt, const char *shader ) {
    Sys_Printf("void idMultiplayerGame::PlayGlobalSound( int to, snd_evt_t evt, const char *shader )\r\n");
}


/*
================
idMultiplayerGame::PrintMessageEvent
================
*/
void idMultiplayerGame::PrintMessageEvent( int to, msg_evt_t evt, int parm1, int parm2 ) {
    Sys_Printf("void idMultiplayerGame::PrintMessageEvent( int to, msg_evt_t evt, int parm1, int parm2 )\r\n");
}


/*
================
idMultiplayerGame::SuddenRespawns
solely for LMN if an end game ( fragLimitTimeout ) was entered and aborted before expiration
LMN players which still have lives left need to be respawned without being marked lastManOver
================
*/
void idMultiplayerGame::SuddenRespawn( void ) {
    Sys_Printf("void idMultiplayerGame::SuddenRespawn( void )\r\n");
}


/*
================
idMultiplayerGame::CheckSpawns
================
*/
void idMultiplayerGame::CheckRespawns( idPlayer *spectator ) {
    Sys_Printf("void idMultiplayerGame::CheckRespawns( idPlayer *spectator )\r\n");
}


/*
================
idMultiplayerGame::ForceReady
================
*/
void idMultiplayerGame::ForceReady( ) {
    Sys_Printf("void idMultiplayerGame::ForceReady( )\r\n");
}


/*
================
idMultiplayerGame::ForceReady_f
================
*/
void idMultiplayerGame::ForceReady_f( const idCmdArgs &args ) {
    Sys_Printf("void idMultiplayerGame::ForceReady_f( const idCmdArgs &args )\r\n");
}


/*
================
idMultiplayerGame::DropWeapon
================
*/
void idMultiplayerGame::DropWeapon( int clientNum ) {
    Sys_Printf("void idMultiplayerGame::DropWeapon( int clientNum )\r\n");
}


/*
================
idMultiplayerGame::DropWeapon_f
================
*/
void idMultiplayerGame::DropWeapon_f( const idCmdArgs &args ) {
    Sys_Printf("void idMultiplayerGame::DropWeapon_f( const idCmdArgs &args )\r\n");
}


/*
================
idMultiplayerGame::MessageMode_f
================
*/
void idMultiplayerGame::MessageMode_f( const idCmdArgs &args ) {
    Sys_Printf("void idMultiplayerGame::MessageMode_f( const idCmdArgs &args )\r\n");
}


/*
================
idMultiplayerGame::MessageMode
================
*/
void idMultiplayerGame::MessageMode( const idCmdArgs &args ) {
    Sys_Printf("void idMultiplayerGame::MessageMode( const idCmdArgs &args )\r\n");
}


/*
================
idMultiplayerGame::Vote_f
FIXME: voting from console
================
*/
void idMultiplayerGame::Vote_f( const idCmdArgs &args ) {
    Sys_Printf("void idMultiplayerGame::Vote_f( const idCmdArgs &args )\r\n");
}


/*
================
idMultiplayerGame::CallVote_f
FIXME: voting from console
================
*/
void idMultiplayerGame::CallVote_f( const idCmdArgs &args ) {
    Sys_Printf("void idMultiplayerGame::CallVote_f( const idCmdArgs &args )\r\n");
}


/*
================
idMultiplayerGame::ServerStartVote
================
*/
void idMultiplayerGame::ServerStartVote( int clientNum, vote_flags_t voteIndex, const char *value ) {
    Sys_Printf("void idMultiplayerGame::ServerStartVote( int clientNum, vote_flags_t voteIndex, const char *value )\r\n");
}


/*
================
idMultiplayerGame::ClientStartVote
================
*/
void idMultiplayerGame::ClientStartVote( int clientNum, const char *_voteString ) {
    Sys_Printf("void idMultiplayerGame::ClientStartVote( int clientNum, const char *_voteString )\r\n");
}


/*
================
idMultiplayerGame::ClientUpdateVote
================
*/
void idMultiplayerGame::ClientUpdateVote( vote_result_t status, int yesCount, int noCount ) {
    Sys_Printf("void idMultiplayerGame::ClientUpdateVote( vote_result_t status, int yesCount, int noCount )\r\n");
}


/*
================
idMultiplayerGame::ClientCallVote
================
*/
void idMultiplayerGame::ClientCallVote( vote_flags_t voteIndex, const char *voteValue ) {
    Sys_Printf("void idMultiplayerGame::ClientCallVote( vote_flags_t voteIndex, const char *voteValue )\r\n");
}


/*
================
idMultiplayerGame::CastVote
================
*/
void idMultiplayerGame::CastVote( int clientNum, bool castVote ) {
    Sys_Printf("void idMultiplayerGame::CastVote( int clientNum, bool castVote )\r\n");
}


/*
================
idMultiplayerGame::ServerCallVote
================
*/
void idMultiplayerGame::ServerCallVote( int clientNum, const idBitMsg &msg ) {
    Sys_Printf("void idMultiplayerGame::ServerCallVote( int clientNum, const idBitMsg &msg )\r\n");
}


/*
================
idMultiplayerGame::DisconnectClient
================
*/
void idMultiplayerGame::DisconnectClient( int clientNum ) {
    Sys_Printf("void idMultiplayerGame::DisconnectClient( int clientNum )\r\n");
}


/*
================
idMultiplayerGame::CheckAbortGame
================
*/
void idMultiplayerGame::CheckAbortGame( void ) {
    Sys_Printf("void idMultiplayerGame::CheckAbortGame( void )\r\n");
}


/*
================
idMultiplayerGame::WantKilled
================
*/
void idMultiplayerGame::WantKilled( int clientNum ) {
    Sys_Printf("void idMultiplayerGame::WantKilled( int clientNum )\r\n");
}


/*
================
idMultiplayerGame::MapRestart
================
*/
void idMultiplayerGame::MapRestart( void ) {
    Sys_Printf("void idMultiplayerGame::MapRestart( void )\r\n");
}


/*
================
idMultiplayerGame::SwitchToTeam
================
*/
void idMultiplayerGame::SwitchToTeam( int clientNum, int oldteam, int newteam ) {
    Sys_Printf("void idMultiplayerGame::SwitchToTeam( int clientNum, int oldteam, int newteam )\r\n");
}


/*
================
idMultiplayerGame::ProcessChatMessage
================
*/
void idMultiplayerGame::ProcessChatMessage( int clientNum, bool team, const char *name, const char *text, const char *sound ) {
    Sys_Printf("void idMultiplayerGame::ProcessChatMessage( int clientNum, bool team, const char *name, const char *text, const char *sound )\r\n");
}


/*
================
idMultiplayerGame::Precache
================
*/
void idMultiplayerGame::Precache( void ) {
    Sys_Printf("void idMultiplayerGame::Precache( void )\r\n");
}


/*
================
idMultiplayerGame::ToggleSpectate
================
*/
void idMultiplayerGame::ToggleSpectate( void ) {
    Sys_Printf("void idMultiplayerGame::ToggleSpectate( void )\r\n");
}


/*
================
idMultiplayerGame::ToggleReady
================
*/
void idMultiplayerGame::ToggleReady( void ) {
    Sys_Printf("void idMultiplayerGame::ToggleReady( void )\r\n");
}


/*
================
idMultiplayerGame::ToggleTeam
================
*/
void idMultiplayerGame::ToggleTeam( void ) {
    Sys_Printf("void idMultiplayerGame::ToggleTeam( void )\r\n");
}


/*
================
idMultiplayerGame::ToggleUserInfo
================
*/
void idMultiplayerGame::ThrottleUserInfo( void ) {
    Sys_Printf("void idMultiplayerGame::ThrottleUserInfo( void )\r\n");
}


/*
================
idMultiplayerGame::CanPlay
================
*/
bool idMultiplayerGame::CanPlay( idPlayer *p ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMultiplayerGame::CanPlay( idPlayer *p )\r\n");
    return retVal;
}


/*
================
idMultiplayerGame::EnterGame
================
*/
void idMultiplayerGame::EnterGame( int clientNum ) {
    Sys_Printf("void idMultiplayerGame::EnterGame( int clientNum )\r\n");
}


/*
================
idMultiplayerGame::WantRespawn
================
*/
bool idMultiplayerGame::WantRespawn( idPlayer *p ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMultiplayerGame::WantRespawn( idPlayer *p )\r\n");
    return retVal;
}


/*
================
idMultiplayerGame::VoiceChat
================
*/
void idMultiplayerGame::VoiceChat_f( const idCmdArgs &args ) {
    Sys_Printf("void idMultiplayerGame::VoiceChat_f( const idCmdArgs &args )\r\n");
}


/*
================
idMultiplayerGame::VoiceChatTeam
================
*/
void idMultiplayerGame::VoiceChatTeam_f( const idCmdArgs &args ) {
    Sys_Printf("void idMultiplayerGame::VoiceChatTeam_f( const idCmdArgs &args )\r\n");
}


/*
================
idMultiplayerGame::VoiceChat
================
*/
void idMultiplayerGame::VoiceChat( const idCmdArgs &args, bool team ) {
    Sys_Printf("void idMultiplayerGame::VoiceChat( const idCmdArgs &args, bool team )\r\n");
}


/*
================
idMultiplayerGame::ProcessVoiceChat
================
*/
void idMultiplayerGame::ProcessVoiceChat( int clientNum, bool team, int index ) {
    Sys_Printf("void idMultiplayerGame::ProcessVoiceChat( int clientNum, bool team, int index )\r\n");
}


/*
================
idMultiplayerGame::ServerWriteInitialReliableMessages
================
*/
void idMultiplayerGame::ServerWriteInitialReliableMessages( int clientNum ) {
    Sys_Printf("void idMultiplayerGame::ServerWriteInitialReliableMessages( int clientNum )\r\n");
}


/*
================
idMultiplayerGame::ClientReadStartState
================
*/
void idMultiplayerGame::ClientReadStartState( const idBitMsg &msg ) {
    Sys_Printf("void idMultiplayerGame::ClientReadStartState( const idBitMsg &msg )\r\n");
}


/*
================
idMultiplayerGame::ClientReadWarmupTime
================
*/
void idMultiplayerGame::ClientReadWarmupTime( const idBitMsg &msg ) {
    Sys_Printf("void idMultiplayerGame::ClientReadWarmupTime( const idBitMsg &msg )\r\n");
}


