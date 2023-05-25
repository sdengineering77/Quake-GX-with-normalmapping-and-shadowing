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

#include "Session_local.h"

idCVar	idSessionLocal::com_showAngles( "com_showAngles", "0", CVAR_SYSTEM | CVAR_BOOL, "" );
idCVar	idSessionLocal::com_minTics( "com_minTics", "1", CVAR_SYSTEM, "" );
idCVar	idSessionLocal::com_showTics( "com_showTics", "0", CVAR_SYSTEM | CVAR_BOOL, "" );
idCVar	idSessionLocal::com_fixedTic( "com_fixedTic", "0", CVAR_SYSTEM | CVAR_INTEGER, "", 0, 10 );
idCVar	idSessionLocal::com_showDemo( "com_showDemo", "0", CVAR_SYSTEM | CVAR_BOOL, "" );
idCVar	idSessionLocal::com_skipGameDraw( "com_skipGameDraw", "0", CVAR_SYSTEM | CVAR_BOOL, "" );
idCVar	idSessionLocal::com_aviDemoSamples( "com_aviDemoSamples", "16", CVAR_SYSTEM, "" );
idCVar	idSessionLocal::com_aviDemoWidth( "com_aviDemoWidth", "256", CVAR_SYSTEM, "" );
idCVar	idSessionLocal::com_aviDemoHeight( "com_aviDemoHeight", "256", CVAR_SYSTEM, "" );
idCVar	idSessionLocal::com_aviDemoTics( "com_aviDemoTics", "2", CVAR_SYSTEM | CVAR_INTEGER, "", 1, 60 );
idCVar	idSessionLocal::com_wipeSeconds( "com_wipeSeconds", "1", CVAR_SYSTEM, "" );
idCVar	idSessionLocal::com_guid( "com_guid", "", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_ROM, "" );

idSessionLocal		sessLocal;
idSession			*session = &sessLocal;

// these must be kept up to date with window Levelshot in guis/mainmenu.gui
const int PREVIEW_X = 211;
const int PREVIEW_Y = 31;
const int PREVIEW_WIDTH = 398;
const int PREVIEW_HEIGHT = 298;

void RandomizeStack( void ) {
    Sys_Printf("void RandomizeStack( void )\r\n");
}


/*
=================
Session_RescanSI_f
=================
*/
void Session_RescanSI_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_RescanSI_f( const idCmdArgs &args )\r\n");
}


/*
==================
Session_Map_f

Restart the server on a different map
==================
*/
static void Session_Map_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_Map_f( const idCmdArgs &args )\r\n");
}


/*
==================
Session_DevMap_f

Restart the server on a different map in developer mode
==================
*/
static void Session_DevMap_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_DevMap_f( const idCmdArgs &args )\r\n");
}


/*
==================
Session_TestMap_f
==================
*/
static void Session_TestMap_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_TestMap_f( const idCmdArgs &args )\r\n");
}


/*
==================
Sess_WritePrecache_f
==================
*/
static void Sess_WritePrecache_f( const idCmdArgs &args ) {
    Sys_Printf("void Sess_WritePrecache_f( const idCmdArgs &args )\r\n");
}


/*
===============
idSessionLocal::MaybeWaitOnCDKey
===============
*/
bool idSessionLocal::MaybeWaitOnCDKey( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSessionLocal::MaybeWaitOnCDKey( void )\r\n");
    return retVal;
}


/*
===================
Session_PromptKey_f
===================
*/
static void Session_PromptKey_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_PromptKey_f( const idCmdArgs &args )\r\n");
}


/*
===============================================================================

SESSION LOCAL
  
===============================================================================
*/

/*
===============
idSessionLocal::Clear
===============
*/
void idSessionLocal::Clear() {

	insideUpdateScreen = false;
	insideExecuteMapChange = false;

	loadingSaveGame = false;
	savegameFile = NULL;
	savegameVersion = 0;

	currentMapName.Clear();
	aviDemoShortName.Clear();
	msgFireBack[ 0 ].Clear();
	msgFireBack[ 1 ].Clear();

	timeHitch = 0;

	rw = NULL;
	sw = NULL;
	menuSoundWorld = NULL;
	readDemo = NULL;
	writeDemo = NULL;
	renderdemoVersion = 0;
	cmdDemoFile = NULL;

	syncNextGameFrame = false;
	mapSpawned = false;
	guiActive = NULL;
	aviCaptureMode = false;
	timeDemo = TD_NO;
	waitingOnBind = false;
	lastPacifierTime = 0;

	msgRunning = false;
	guiMsgRestore = NULL;
	msgIgnoreButtons = false;

	bytesNeededForMapLoad = 0;

#if ID_CONSOLE_LOCK
	emptyDrawCount = 0;
#endif
	ClearWipe();

	loadGameList.Clear();
	modsList.Clear();

	authEmitTimeout = 0;
	authWaitBox = false;

	authMsg.Clear();
}


/*
===============
idSessionLocal::idSessionLocal
===============
*/
idSessionLocal::idSessionLocal() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idSessionLocal::idSessionLocal() size %d\r\n", sizeof(*this));
#endif

	guiInGame = guiMainMenu = guiIntro \
		= guiRestartMenu = guiLoading = guiGameOver = guiActive \
		= guiTest = guiMsg = guiMsgRestore = guiTakeNotes = NULL;	
	
	menuSoundWorld = NULL;
	
	Clear();
}

/*
===============
idSessionLocal::~idSessionLocal
===============
*/
idSessionLocal::~idSessionLocal() {
}

/*
===============
idSessionLocal::Stop

called on errors and game exits
===============
*/
void idSessionLocal::Stop() {
    Sys_Printf("void idSessionLocal::Stop()\r\n");
}


/*
===============
idSessionLocal::Shutdown
===============
*/
void idSessionLocal::Shutdown() {
    Sys_Printf("void idSessionLocal::Shutdown()\r\n");
}


/*
===============
idSessionLocal::IsMultiplayer
===============
*/
bool	idSessionLocal::IsMultiplayer() {
	// DRS TODO
    return false;
}


/*
================
idSessionLocal::StartWipe

Draws and captures the current state, then starts a wipe with that image
================
*/
void idSessionLocal::StartWipe( const char *_wipeMaterial, bool hold ) {
    Sys_Printf("void idSessionLocal::StartWipe( const char *_wipeMaterial, bool hold )\r\n");
}


/*
================
idSessionLocal::CompleteWipe
================
*/
void idSessionLocal::CompleteWipe() {
    Sys_Printf("void idSessionLocal::CompleteWipe()\r\n");
}


/*
================
idSessionLocal::ShowLoadingGui
================
*/
void idSessionLocal::ShowLoadingGui() {
    Sys_Printf("void idSessionLocal::ShowLoadingGui()\r\n");
}




/*
================
idSessionLocal::ClearWipe
================
*/
void idSessionLocal::ClearWipe( void ) {
	wipeHold = false;
	wipeStopTic = 0;
	wipeStartTic = wipeStopTic + 1;
}


/*
================
Session_TestGUI_f
================
*/
static void Session_TestGUI_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_TestGUI_f( const idCmdArgs &args )\r\n");
}


/*
================
idSessionLocal::TestGUI
================
*/
void idSessionLocal::TestGUI( const char *guiName ) {
    Sys_Printf("void idSessionLocal::TestGUI( const char *guiName )\r\n");
}


/*
================
FindUnusedFileName
================
*/
static idStr FindUnusedFileName( const char *format ) {
    idStr retVal;
    memset(&retVal, 0, sizeof(idStr));
    Sys_Printf("idStr FindUnusedFileName( const char *format )\r\n");
    return retVal;
}


/*
================
Session_DemoShot_f
================
*/
static void Session_DemoShot_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_DemoShot_f( const idCmdArgs &args )\r\n");
}


/*
================
Session_RecordDemo_f
================
*/
static void Session_RecordDemo_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_RecordDemo_f( const idCmdArgs &args )\r\n");
}


/*
================
Session_CompressDemo_f
================
*/
static void Session_CompressDemo_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_CompressDemo_f( const idCmdArgs &args )\r\n");
}


/*
================
Session_StopRecordingDemo_f
================
*/
static void Session_StopRecordingDemo_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_StopRecordingDemo_f( const idCmdArgs &args )\r\n");
}


/*
================
Session_PlayDemo_f
================
*/
static void Session_PlayDemo_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_PlayDemo_f( const idCmdArgs &args )\r\n");
}


/*
================
Session_TimeDemo_f
================
*/
static void Session_TimeDemo_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_TimeDemo_f( const idCmdArgs &args )\r\n");
}


/*
================
Session_TimeDemoQuit_f
================
*/
static void Session_TimeDemoQuit_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_TimeDemoQuit_f( const idCmdArgs &args )\r\n");
}


/*
================
Session_AVIDemo_f
================
*/
static void Session_AVIDemo_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_AVIDemo_f( const idCmdArgs &args )\r\n");
}


/*
================
Session_AVIGame_f
================
*/
static void Session_AVIGame_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_AVIGame_f( const idCmdArgs &args )\r\n");
}


/*
================
Session_AVICmdDemo_f
================
*/
static void Session_AVICmdDemo_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_AVICmdDemo_f( const idCmdArgs &args )\r\n");
}


/*
================
Session_WriteCmdDemo_f
================
*/
static void Session_WriteCmdDemo_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_WriteCmdDemo_f( const idCmdArgs &args )\r\n");
}


/*
================
Session_PlayCmdDemo_f
================
*/
static void Session_PlayCmdDemo_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_PlayCmdDemo_f( const idCmdArgs &args )\r\n");
}


/*
================
Session_TimeCmdDemo_f
================
*/
static void Session_TimeCmdDemo_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_TimeCmdDemo_f( const idCmdArgs &args )\r\n");
}


/*
================
Session_Disconnect_f
================
*/
static void Session_Disconnect_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_Disconnect_f( const idCmdArgs &args )\r\n");
}


#ifdef ID_DEMO_BUILD
/*
================
Session_EndOfDemo_f
================
*/
static void Session_EndOfDemo_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_EndOfDemo_f( const idCmdArgs &args )\r\n");
}

#endif

/*
================
Session_ExitCmdDemo_f
================
*/
static void Session_ExitCmdDemo_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_ExitCmdDemo_f( const idCmdArgs &args )\r\n");
}


/*
================
idSessionLocal::StartRecordingRenderDemo
================
*/
void idSessionLocal::StartRecordingRenderDemo( const char *demoName ) {
    Sys_Printf("void idSessionLocal::StartRecordingRenderDemo( const char *demoName )\r\n");
}


/*
================
idSessionLocal::StopRecordingRenderDemo
================
*/
void idSessionLocal::StopRecordingRenderDemo() {
    Sys_Printf("void idSessionLocal::StopRecordingRenderDemo()\r\n");
}


/*
================
idSessionLocal::StopPlayingRenderDemo

Reports timeDemo numbers and finishes any avi recording
================
*/
void idSessionLocal::StopPlayingRenderDemo() {
    Sys_Printf("void idSessionLocal::StopPlayingRenderDemo()\r\n");
}


/*
================
idSessionLocal::DemoShot

A demoShot is a single frame demo
================
*/
void idSessionLocal::DemoShot( const char *demoName ) {
    Sys_Printf("void idSessionLocal::DemoShot( const char *demoName )\r\n");
}


/*
================
idSessionLocal::StartPlayingRenderDemo
================
*/
void idSessionLocal::StartPlayingRenderDemo( idStr demoName ) {
    Sys_Printf("void idSessionLocal::StartPlayingRenderDemo( idStr demoName )\r\n");
}


/*
================
idSessionLocal::TimeRenderDemo
================
*/
void idSessionLocal::TimeRenderDemo( const char *demoName, bool twice ) {
    Sys_Printf("void idSessionLocal::TimeRenderDemo( const char *demoName, bool twice )\r\n");
}



/*
================
idSessionLocal::BeginAVICapture
================
*/
void idSessionLocal::BeginAVICapture( const char *demoName ) {
    Sys_Printf("void idSessionLocal::BeginAVICapture( const char *demoName )\r\n");
}


/*
================
idSessionLocal::EndAVICapture
================
*/
void idSessionLocal::EndAVICapture() {
    Sys_Printf("void idSessionLocal::EndAVICapture()\r\n");
}



/*
================
idSessionLocal::AVIRenderDemo
================
*/
void idSessionLocal::AVIRenderDemo( const char *_demoName ) {
    Sys_Printf("void idSessionLocal::AVIRenderDemo( const char *_demoName )\r\n");
}


/*
================
idSessionLocal::AVICmdDemo
================
*/
void idSessionLocal::AVICmdDemo( const char *demoName ) {
    Sys_Printf("void idSessionLocal::AVICmdDemo( const char *demoName )\r\n");
}


/*
================
idSessionLocal::AVIGame

Start AVI recording the current game session
================
*/
void idSessionLocal::AVIGame( const char *demoName ) {
    Sys_Printf("void idSessionLocal::AVIGame( const char *demoName )\r\n");
}


/*
================
idSessionLocal::CompressDemoFile
================
*/
void idSessionLocal::CompressDemoFile( const char *scheme, const char *demoName ) {
    Sys_Printf("void idSessionLocal::CompressDemoFile( const char *scheme, const char *demoName )\r\n");
}



/*
===============
idSessionLocal::StartNewGame
===============
*/
void idSessionLocal::StartNewGame( const char *mapName, bool devmap ) {
    Sys_Printf("void idSessionLocal::StartNewGame( const char *mapName, bool devmap )\r\n");
}


/*
===============
idSessionLocal::GetAutoSaveName
===============
*/
idStr idSessionLocal::GetAutoSaveName( const char *mapName ) const {
    idStr retVal;
    memset(&retVal, 0, sizeof(idStr));
    Sys_Printf("idStr idSessionLocal::GetAutoSaveName( const char *mapName )\r\n");
    return retVal;
}


/*
===============
idSessionLocal::MoveToNewMap

Leaves the existing userinfo and serverinfo
===============
*/
void idSessionLocal::MoveToNewMap( const char *mapName ) {
    Sys_Printf("void idSessionLocal::MoveToNewMap( const char *mapName )\r\n");
}


/*
==============
SaveCmdDemoFromFile
==============
*/
void idSessionLocal::SaveCmdDemoToFile( idFile *file ) {
    Sys_Printf("void idSessionLocal::SaveCmdDemoToFile( idFile *file )\r\n");
}


/*
==============
idSessionLocal::LoadCmdDemoFromFile
==============
*/
void idSessionLocal::LoadCmdDemoFromFile( idFile *file ) {
    Sys_Printf("void idSessionLocal::LoadCmdDemoFromFile( idFile *file )\r\n");
}


/*
==============
idSessionLocal::WriteCmdDemo

Dumps the accumulated commands for the current level.
This should still work after disconnecting from a level
==============
*/
void idSessionLocal::WriteCmdDemo( const char *demoName, bool save ) {
    Sys_Printf("void idSessionLocal::WriteCmdDemo( const char *demoName, bool save )\r\n");
}


/*
===============
idSessionLocal::FinishCmdLoad
===============
*/
void idSessionLocal::FinishCmdLoad() {
    Sys_Printf("void idSessionLocal::FinishCmdLoad()\r\n");
}


/*
===============
idSessionLocal::StartPlayingCmdDemo
===============
*/
void idSessionLocal::StartPlayingCmdDemo(const char *demoName) {
    Sys_Printf("void idSessionLocal::StartPlayingCmdDemo(const char *demoName)\r\n");
}


/*
===============
idSessionLocal::TimeCmdDemo
===============
*/
void idSessionLocal::TimeCmdDemo( const char *demoName ) {
    Sys_Printf("void idSessionLocal::TimeCmdDemo( const char *demoName )\r\n");
}


/*
===============
idSessionLocal::UnloadMap

Performs cleanup that needs to happen between maps, or when a
game is exited.
Exits with mapSpawned = false
===============
*/
void idSessionLocal::UnloadMap() {
    Sys_Printf("void idSessionLocal::UnloadMap()\r\n");
}


/*
===============
idSessionLocal::LoadLoadingGui
===============
*/
void idSessionLocal::LoadLoadingGui( const char *mapName ) {
    Sys_Printf("void idSessionLocal::LoadLoadingGui( const char *mapName )\r\n");
}


/*
===============
idSessionLocal::GetBytesNeededForMapLoad
===============
*/
int idSessionLocal::GetBytesNeededForMapLoad( const char *mapName ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSessionLocal::GetBytesNeededForMapLoad( const char *mapName )\r\n");
    return retVal;
}


/*
===============
idSessionLocal::SetBytesNeededForMapLoad
===============
*/
void idSessionLocal::SetBytesNeededForMapLoad( const char *mapName, int bytesNeeded ) {
    Sys_Printf("void idSessionLocal::SetBytesNeededForMapLoad( const char *mapName, int bytesNeeded )\r\n");
}


/*
===============
idSessionLocal::ExecuteMapChange

Performs the initialization of a game based on mapSpawnData, used for both single
player and multiplayer, but not for renderDemos, which don't
create a game at all.
Exits with mapSpawned = true
===============
*/
void idSessionLocal::ExecuteMapChange( bool noFadeWipe ) {
    Sys_Printf("void idSessionLocal::ExecuteMapChange( bool noFadeWipe )\r\n");
}


/*
===============
LoadGame_f
===============
*/
void LoadGame_f( const idCmdArgs &args ) {
    Sys_Printf("void LoadGame_f( const idCmdArgs &args )\r\n");
}


/*
===============
SaveGame_f
===============
*/
void SaveGame_f( const idCmdArgs &args ) {
    Sys_Printf("void SaveGame_f( const idCmdArgs &args )\r\n");
}


/*
===============
TakeViewNotes_f
===============
*/
void TakeViewNotes_f( const idCmdArgs &args ) {
    Sys_Printf("void TakeViewNotes_f( const idCmdArgs &args )\r\n");
}


/*
===============
TakeViewNotes2_f
===============
*/
void TakeViewNotes2_f( const idCmdArgs &args ) {
    Sys_Printf("void TakeViewNotes2_f( const idCmdArgs &args )\r\n");
}


/*
===============
idSessionLocal::TakeNotes
===============
*/
void idSessionLocal::TakeNotes( const char *p, bool extended ) {
    Sys_Printf("void idSessionLocal::TakeNotes( const char *p, bool extended )\r\n");
}


/*
===============
Session_Hitch_f
===============
*/
void Session_Hitch_f( const idCmdArgs &args ) {
    Sys_Printf("void Session_Hitch_f( const idCmdArgs &args )\r\n");
}


/*
===============
idSessionLocal::ScrubSaveGameFileName

Turns a bad file name into a good one or your money back
===============
*/
void idSessionLocal::ScrubSaveGameFileName( idStr &saveFileName ) const {
    Sys_Printf("void idSessionLocal::ScrubSaveGameFileName( idStr &saveFileName )\r\n");
}


/*
===============
idSessionLocal::SaveGame
===============
*/
bool idSessionLocal::SaveGame( const char *saveName, bool autosave ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSessionLocal::SaveGame( const char *saveName, bool autosave )\r\n");
    return retVal;
}


/*
===============
idSessionLocal::LoadGame
===============
*/
bool idSessionLocal::LoadGame( const char *saveName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSessionLocal::LoadGame( const char *saveName )\r\n");
    return retVal;
}


/*
===============
idSessionLocal::ProcessEvent
===============
*/
bool idSessionLocal::ProcessEvent( const sysEvent_t *event ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSessionLocal::ProcessEvent( const sysEvent_t *event )\r\n");
    return retVal;
}


/*
===============
idSessionLocal::DrawWipeModel

Draw the fade material over everything that has been drawn
===============
*/
void	idSessionLocal::DrawWipeModel() {
    Sys_Printf("voididSessionLocal::DrawWipeModel()\r\n");
}


/*
===============
idSessionLocal::AdvanceRenderDemo
===============
*/
void idSessionLocal::AdvanceRenderDemo( bool singleFrameOnly ) {
    Sys_Printf("void idSessionLocal::AdvanceRenderDemo( bool singleFrameOnly )\r\n");
}


/*
===============
idSessionLocal::DrawCmdGraph

Graphs yaw angle for testing smoothness
===============
*/
static const int	ANGLE_GRAPH_HEIGHT = 128;
static const int	ANGLE_GRAPH_STRETCH = 3;
void idSessionLocal::DrawCmdGraph() {
    Sys_Printf("void idSessionLocal::DrawCmdGraph()\r\n");
}


/*
===============
idSessionLocal::PacifierUpdate
===============
*/
void idSessionLocal::PacifierUpdate() {
	if ( !insideExecuteMapChange ) {
		return;
	}

	// never do pacifier screen updates while inside the
	// drawing code, or we can have various recursive problems
	if ( insideUpdateScreen ) {
		return;
	}

	int	time = eventLoop->Milliseconds();

	if ( time - lastPacifierTime < 100 ) {
		return;
	}
	lastPacifierTime = time;

	if ( guiLoading && bytesNeededForMapLoad ) {
		float n = fileSystem->GetReadCount();
		float pct = ( n / bytesNeededForMapLoad );
		// pct = idMath::ClampFloat( 0.0f, 100.0f, pct );
		guiLoading->SetStateFloat( "map_loading", pct );
		guiLoading->StateChanged( com_frameTime );
	}

	Sys_GenerateEvents();

	UpdateScreen();

	idAsyncNetwork::client.PacifierUpdate();
	idAsyncNetwork::server.PacifierUpdate();
}


/*
===============
idSessionLocal::Draw
===============
*/
void idSessionLocal::Draw() {
    Sys_Printf("void idSessionLocal::Draw()\r\n");
}


/*
===============
idSessionLocal::UpdateScreen
===============
*/
void idSessionLocal::UpdateScreen( bool outOfSequence ) {

#ifdef _WIN32

	if ( com_editors ) {
		if ( !Sys_IsWindowVisible() ) {
			return;
		}
	}
#endif

Sys_Printf(">>> insideUpdateScreen %d\r\n", insideUpdateScreen);
	if ( insideUpdateScreen ) {
		return;
//		common->FatalError( "idSessionLocal::UpdateScreen: recursively called" );
	}

	insideUpdateScreen = true;

	// if this is a long-operation update and we are in windowed mode,
	// release the mouse capture back to the desktop
	if ( outOfSequence ) {
		Sys_GrabMouseCursor( false );
	}

	renderSystem->BeginFrame( renderSystem->GetScreenWidth(), renderSystem->GetScreenHeight() );

	// draw everything
	Draw();

	if ( com_speeds.GetBool() ) {
		renderSystem->EndFrame( &time_frontend, &time_backend );
	} else {
		renderSystem->EndFrame( NULL, NULL );
	}

	insideUpdateScreen = false;
}


/*
===============
idSessionLocal::Frame
===============
*/
void idSessionLocal::Frame() {
    Sys_Printf("void idSessionLocal::Frame()\r\n");
}


/*
================
idSessionLocal::RunGameTic
================
*/
void idSessionLocal::RunGameTic() {
	logCmd_t	logCmd;
	usercmd_t	cmd;

	// if we are doing a command demo, read or write from the file
	if ( cmdDemoFile ) {
		if ( !cmdDemoFile->Read( &logCmd, sizeof( logCmd ) ) ) {
			common->Printf( "Command demo completed at logIndex %i\n", logIndex );
			fileSystem->CloseFile( cmdDemoFile );
			cmdDemoFile = NULL;
			if ( aviCaptureMode ) {
				EndAVICapture();
				Shutdown();
			}
			// we fall out of the demo to normal commands
			// the impulse and chat character toggles may not be correct, and the view
			// angle will definitely be wrong
		} else {
			cmd = logCmd.cmd;
			cmd.ByteSwap();
			logCmd.consistencyHash = LittleLong( logCmd.consistencyHash );
		}
	}

	// if we didn't get one from the file, get it locally
	if ( !cmdDemoFile ) {
		// get a locally created command
		if ( com_asyncInput.GetBool() ) {
			cmd = usercmdGen->TicCmd( lastGameTic );
		} else {
			cmd = usercmdGen->GetDirectUsercmd();
		}
		lastGameTic++;
	}

	// run the game logic every player move
	int	start = Sys_Milliseconds();
	gameReturn_t	ret = game->RunFrame( &cmd );

	int end = Sys_Milliseconds();
	time_gameFrame += end - start;	// note time used for com_speeds

	// check for constency failure from a recorded command
	if ( cmdDemoFile ) {
		if ( ret.consistencyHash != logCmd.consistencyHash ) {
			common->Printf( "Consistency failure on logIndex %i\n", logIndex );
			Stop();
			return;
		}
	}

	// save the cmd for cmdDemo archiving
	if ( logIndex < MAX_LOGGED_USERCMDS ) {
		loggedUsercmds[logIndex].cmd = cmd;
		// save the consistencyHash for demo playback verification
		loggedUsercmds[logIndex].consistencyHash = ret.consistencyHash;
		if (logIndex % 30 == 0 && statIndex < MAX_LOGGED_STATS) {
			loggedStats[statIndex].health = ret.health;
			loggedStats[statIndex].heartRate = ret.heartRate;
			loggedStats[statIndex].stamina = ret.stamina;
			loggedStats[statIndex].combat = ret.combat;
			statIndex++;
		}
		logIndex++;
	}

	syncNextGameFrame = ret.syncNextGameFrame;

	if ( ret.sessionCommand[0] ) {
		idCmdArgs args;

		args.TokenizeString( ret.sessionCommand, false );

		if ( !idStr::Icmp( args.Argv(0), "map" ) ) {
			// get current player states
			for ( int i = 0 ; i < numClients ; i++ ) {
				mapSpawnData.persistentPlayerInfo[i] = game->GetPersistentPlayerInfo( i );
			}
			// clear the devmap key on serverinfo, so player spawns
			// won't get the map testing items
			mapSpawnData.serverInfo.Delete( "devmap" );

			// go to the next map
			MoveToNewMap( args.Argv(1) );
		} else if ( !idStr::Icmp( args.Argv(0), "devmap" ) ) {
			mapSpawnData.serverInfo.Set( "devmap", "1" );
			MoveToNewMap( args.Argv(1) );
		} else if ( !idStr::Icmp( args.Argv(0), "died" ) ) {
			// restart on the same map
			UnloadMap();
			SetGUI(guiRestartMenu, NULL);
		} else if ( !idStr::Icmp( args.Argv(0), "disconnect" ) ) {
			cmdSystem->BufferCommandText( CMD_EXEC_INSERT, "stoprecording ; disconnect" );
		} else if ( !idStr::Icmp( args.Argv(0), "endOfDemo" ) ) {
			cmdSystem->BufferCommandText( CMD_EXEC_NOW, "endOfDemo" );
		}
	}
}


/*
===============
idSessionLocal::Init

Called in an orderly fashion at system startup,
so commands, cvars, files, etc are all available
===============
*/
void idSessionLocal::Init() {

	common->Printf( "-------- Initializing Session --------\n" );

	cmdSystem->AddCommand( "writePrecache", Sess_WritePrecache_f, CMD_FL_SYSTEM|CMD_FL_CHEAT, "writes precache commands" );

#ifndef	ID_DEDICATED
	cmdSystem->AddCommand( "map", Session_Map_f, CMD_FL_SYSTEM, "loads a map", idCmdSystem::ArgCompletion_MapName );
	cmdSystem->AddCommand( "devmap", Session_DevMap_f, CMD_FL_SYSTEM, "loads a map in developer mode", idCmdSystem::ArgCompletion_MapName );
	cmdSystem->AddCommand( "testmap", Session_TestMap_f, CMD_FL_SYSTEM, "tests a map", idCmdSystem::ArgCompletion_MapName );

	cmdSystem->AddCommand( "writeCmdDemo", Session_WriteCmdDemo_f, CMD_FL_SYSTEM, "writes a command demo" );
	cmdSystem->AddCommand( "playCmdDemo", Session_PlayCmdDemo_f, CMD_FL_SYSTEM, "plays back a command demo" );
	cmdSystem->AddCommand( "timeCmdDemo", Session_TimeCmdDemo_f, CMD_FL_SYSTEM, "times a command demo" );
	cmdSystem->AddCommand( "exitCmdDemo", Session_ExitCmdDemo_f, CMD_FL_SYSTEM, "exits a command demo" );
	cmdSystem->AddCommand( "aviCmdDemo", Session_AVICmdDemo_f, CMD_FL_SYSTEM, "writes AVIs for a command demo" );
	cmdSystem->AddCommand( "aviGame", Session_AVIGame_f, CMD_FL_SYSTEM, "writes AVIs for the current game" );

	cmdSystem->AddCommand( "recordDemo", Session_RecordDemo_f, CMD_FL_SYSTEM, "records a demo" );
	cmdSystem->AddCommand( "stopRecording", Session_StopRecordingDemo_f, CMD_FL_SYSTEM, "stops demo recording" );
	cmdSystem->AddCommand( "playDemo", Session_PlayDemo_f, CMD_FL_SYSTEM, "plays back a demo", idCmdSystem::ArgCompletion_DemoName );
	cmdSystem->AddCommand( "timeDemo", Session_TimeDemo_f, CMD_FL_SYSTEM, "times a demo", idCmdSystem::ArgCompletion_DemoName );
	cmdSystem->AddCommand( "timeDemoQuit", Session_TimeDemoQuit_f, CMD_FL_SYSTEM, "times a demo and quits", idCmdSystem::ArgCompletion_DemoName );
	cmdSystem->AddCommand( "aviDemo", Session_AVIDemo_f, CMD_FL_SYSTEM, "writes AVIs for a demo", idCmdSystem::ArgCompletion_DemoName );
	cmdSystem->AddCommand( "compressDemo", Session_CompressDemo_f, CMD_FL_SYSTEM, "compresses a demo file", idCmdSystem::ArgCompletion_DemoName );
#endif

	cmdSystem->AddCommand( "disconnect", Session_Disconnect_f, CMD_FL_SYSTEM, "disconnects from a game" );

#ifdef ID_DEMO_BUILD
	cmdSystem->AddCommand( "endOfDemo", Session_EndOfDemo_f, CMD_FL_SYSTEM, "ends the demo version of the game" );
#endif

	cmdSystem->AddCommand( "demoShot", Session_DemoShot_f, CMD_FL_SYSTEM, "writes a screenshot for a demo" );
	cmdSystem->AddCommand( "testGUI", Session_TestGUI_f, CMD_FL_SYSTEM, "tests a gui" );

#ifndef	ID_DEDICATED
	cmdSystem->AddCommand( "saveGame", SaveGame_f, CMD_FL_SYSTEM|CMD_FL_CHEAT, "saves a game" );
	cmdSystem->AddCommand( "loadGame", LoadGame_f, CMD_FL_SYSTEM|CMD_FL_CHEAT, "loads a game", idCmdSystem::ArgCompletion_SaveGame );
#endif

	cmdSystem->AddCommand( "takeViewNotes", TakeViewNotes_f, CMD_FL_SYSTEM, "take notes about the current map from the current view" );
	cmdSystem->AddCommand( "takeViewNotes2", TakeViewNotes2_f, CMD_FL_SYSTEM, "extended take view notes" );

	cmdSystem->AddCommand( "rescanSI", Session_RescanSI_f, CMD_FL_SYSTEM, "internal - rescan serverinfo cvars and tell game" );

	cmdSystem->AddCommand( "promptKey", Session_PromptKey_f, CMD_FL_SYSTEM, "prompt and sets the CD Key" );

	cmdSystem->AddCommand( "hitch", Session_Hitch_f, CMD_FL_SYSTEM|CMD_FL_CHEAT, "hitches the game" );

	// the same idRenderWorld will be used for all games
	// and demos, insuring that level specific models
	// will be freed
	rw = renderSystem->AllocRenderWorld();
// DRS TODO sw = soundSystem->AllocSoundWorld( rw );

// DRS TODO menuSoundWorld = soundSystem->AllocSoundWorld( rw );
	// we have a single instance of the main menu

	guiMainMenu = uiManager->FindGui( "guis/mainmenu.gui", true, false, true );
	if (!guiMainMenu) { // DRS don't let the ID_DEMO_BUILD define decide what to load
		guiMainMenu = uiManager->FindGui( "guis/demo_mainmenu.gui", true, false, true );
	}
Sys_Printf(">>> guiMainMenu %p \r\n", guiMainMenu);
Sys_Printf(">>> name %s \r\n", guiMainMenu->Name());

	guiMainMenu_MapList = uiManager->AllocListGUI();
	guiMainMenu_MapList->Config( guiMainMenu, "mapList" );
	idAsyncNetwork::client.serverList.GUIConfig( guiMainMenu, "serverList" );
	guiRestartMenu = uiManager->FindGui( "guis/restart.gui", true, false, true );
	guiGameOver = uiManager->FindGui( "guis/gameover.gui", true, false, true );
	guiMsg = uiManager->FindGui( "guis/msg.gui", true, false, true );
	guiTakeNotes = uiManager->FindGui( "guis/takeNotes.gui", true, false, true );
	guiIntro = uiManager->FindGui( "guis/intro.gui", true, false, true );

	whiteMaterial = declManager->FindMaterial( "_white" );

	guiInGame = NULL;
	guiTest = NULL;

	guiActive = NULL;
	guiHandle = NULL;

	ReadCDKey();

	common->Printf( "session initialized\n" );
	common->Printf( "--------------------------------------\n" );
}


/*
===============
idSessionLocal::GetLocalClientNum
===============
*/
int idSessionLocal::GetLocalClientNum() {
	if ( idAsyncNetwork::client.IsActive() ) {
		return idAsyncNetwork::client.GetLocalClientNum();
	} else if ( idAsyncNetwork::server.IsActive() ) {
		if ( idAsyncNetwork::serverDedicated.GetInteger() == 0 ) {
			return 0;
		} else if ( idAsyncNetwork::server.IsClientInGame( idAsyncNetwork::serverDrawClient.GetInteger() ) ) {
			return idAsyncNetwork::serverDrawClient.GetInteger();
		} else {
			return -1;
		}
	} else {
		return 0;
	}
}


/*
===============
idSessionLocal::SetPlayingSoundWorld
===============
*/
void idSessionLocal::SetPlayingSoundWorld() {
    Sys_Printf("void idSessionLocal::SetPlayingSoundWorld()\r\n");
}


/*
===============
idSessionLocal::TimeHitch

this is used by the sound system when an OnDemand sound is loaded, so the game action
doesn't advance and get things out of sync
===============
*/
void idSessionLocal::TimeHitch( int msec ) {
	timeHitch += msec;
}


/*
=================
idSessionLocal::ReadCDKey
=================
*/
void idSessionLocal::ReadCDKey( void ) {
    Sys_Printf("void idSessionLocal::ReadCDKey( void )\r\n");
}


/*
================
idSessionLocal::WriteCDKey
================
*/
void idSessionLocal::WriteCDKey( void ) {
    Sys_Printf("void idSessionLocal::WriteCDKey( void )\r\n");
}


/*
===============
idSessionLocal::ClearKey
===============
*/
void idSessionLocal::ClearCDKey( bool valid[ 2 ] ) {
    Sys_Printf("void idSessionLocal::ClearCDKey( bool valid[ 2 ] )\r\n");
}


/*
================
idSessionLocal::GetCDKey
================
*/
const char *idSessionLocal::GetCDKey( bool xp ) {
    Sys_Printf("char *idSessionLocal::GetCDKey( bool xp )\r\n");
    return NULL;
}


// digits to letters table
#define CDKEY_DIGITS "TWSBJCGD7PA23RLH"

/*
===============
idSessionLocal::EmitGameAuth
we toggled some key state to CDKEY_CHECKING. send a standalone auth packet to validate
===============
*/
void idSessionLocal::EmitGameAuth( void ) {
    Sys_Printf("void idSessionLocal::EmitGameAuth( void )\r\n");
}


/*
================
idSessionLocal::CheckKey
the function will only modify keys to _OK or _CHECKING if the offline checks are passed
if the function returns false, the offline checks failed, and offline_valid holds which keys are bad
================
*/
bool idSessionLocal::CheckKey( const char *key, bool netConnect, bool offline_valid[ 2 ] ) {
    return true;
}


/*
===============
idSessionLocal::CDKeysAreValid
checking that the key is present and uses only valid characters
if d3xp is installed, check for a valid xpkey as well
emit an auth packet to the master if possible and needed
===============
*/
bool idSessionLocal::CDKeysAreValid( bool strict ) {
    return true;
}


/*
===============
idSessionLocal::WaitingForGameAuth
===============
*/
bool idSessionLocal::WaitingForGameAuth( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSessionLocal::WaitingForGameAuth( void )\r\n");
    return retVal;
}


/*
===============
idSessionLocal::CDKeysAuthReply
===============
*/
void idSessionLocal::CDKeysAuthReply( bool valid, const char *auth_msg ) {
    Sys_Printf("void idSessionLocal::CDKeysAuthReply( bool valid, const char *auth_msg )\r\n");
}


/*
===============
idSessionLocal::GetCurrentMapName
===============
*/
const char *idSessionLocal::GetCurrentMapName() {
	return currentMapName.c_str();
}

/*
===============
idSessionLocal::GetSaveGameVersion
===============
*/
int idSessionLocal::GetSaveGameVersion( void ) {
	return savegameVersion;
}

/*
===============
idSessionLocal::GetAuthMsg
===============
*/
const char *idSessionLocal::GetAuthMsg( void ) {
	return authMsg.c_str();
}
