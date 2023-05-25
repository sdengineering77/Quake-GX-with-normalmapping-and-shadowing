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

#ifdef GAME_DLL

idSys *						sys = NULL;
idCommon *					common = NULL;
idCmdSystem *				cmdSystem = NULL;
idCVarSystem *				cvarSystem = NULL;
idFileSystem *				fileSystem = NULL;
idNetworkSystem *			networkSystem = NULL;
idRenderSystem *			renderSystem = NULL;
idSoundSystem *				soundSystem = NULL;
idRenderModelManager *		renderModelManager = NULL;
idUserInterfaceManager *	uiManager = NULL;
idDeclManager *				declManager = NULL;
idAASFileManager *			AASFileManager = NULL;
idCollisionModelManager *	collisionModelManager = NULL;
idCVar *					idCVar::staticVars = NULL;

idCVar com_forceGenericSIMD( "com_forceGenericSIMD", "0", CVAR_BOOL|CVAR_SYSTEM, "force generic platform independent SIMD" );

#endif

idRenderWorld *				gameRenderWorld = NULL;		// all drawing is done to this world
idSoundWorld *				gameSoundWorld = NULL;		// all audio goes to this world

static gameExport_t			gameExport;

// global animation lib
idAnimManager				animationLib;

// the rest of the engine will only reference the "game" variable, while all local aspects stay hidden
// DRS TODO CONSTRUCTOR
idGameLocal					*gameLocal;
idGame *					game = NULL;//&gameLocal;	// statically pointed at an idGameLocal

void createNewIdGameLocal(void) {
	gameLocal = new idGameLocal();
	game = gameLocal;	// statically pointed at an idGameLocal
}

const char *idGameLocal::sufaceTypeNames[ MAX_SURFACE_TYPES ] = {
	"none",	"metal", "stone", "flesh", "wood", "cardboard", "liquid", "glass", "plastic",
	"ricochet", "surftype10", "surftype11", "surftype12", "surftype13", "surftype14", "surftype15"
};

/*
===========
GetGameAPI
============
*/
#if __MWERKS__
#pragma export on
#endif
#if __GNUC__ >= 4
#pragma GCC visibility push(default)
#endif
extern "C" gameExport_t *GetGameAPI( gameImport_t *import ) {
    Sys_Printf("gameExport_t *GetGameAPI( gameImport_t *import )\r\n");
    return NULL;
}

#if __GNUC__ >= 4
#pragma GCC visibility pop
#endif

/*
===========
TestGameAPI
============
*/
void TestGameAPI( void ) {
    Sys_Printf("void TestGameAPI( void )\r\n");
}


/*
===========
idGameLocal::idGameLocal
============
*/
idGameLocal::idGameLocal() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idGameLocal::idGameLocal() size %d\r\n", sizeof(*this));
#endif

	Clear();
}

/*
===========
idGameLocal::Clear
============
*/
void idGameLocal::Clear( void ) {
	int i;

	serverInfo.Clear();
	numClients = 0;
	for ( i = 0; i < MAX_CLIENTS; i++ ) {
		userInfo[i].Clear();
		persistentPlayerInfo[i].Clear();
	}
	memset( usercmds, 0, sizeof( usercmds ) );
	memset( entities, 0, sizeof( entities ) );
	memset( spawnIds, -1, sizeof( spawnIds ) );
	firstFreeIndex = 0;
	num_entities = 0;
	spawnedEntities.Clear();
	activeEntities.Clear();
	numEntitiesToDeactivate = 0;
	sortPushers = false;
	sortTeamMasters = false;
	persistentLevelInfo.Clear();
	memset( globalShaderParms, 0, sizeof( globalShaderParms ) );
	random.SetSeed( 0 );
	world = NULL;
	frameCommandThread = NULL;
	testmodel = NULL;
	testFx = NULL;
	clip.Shutdown();
	pvs.Shutdown();
	sessionCommand.Clear();
	locationEntities = NULL;
	smokeParticles = NULL;
	editEntities = NULL;
	entityHash.Clear( 1024, MAX_GENTITIES );
	inCinematic = false;
	cinematicSkipTime = 0;
	cinematicStopTime = 0;
	cinematicMaxSkipTime = 0;
	framenum = 0;
	previousTime = 0;
	time = 0;
	vacuumAreaNum = 0;
	mapFileName.Clear();
	mapFile = NULL;
	spawnCount = INITIAL_SPAWN_COUNT;
	mapSpawnCount = 0;
	camera = NULL;
	aasList.Clear();
	aasNames.Clear();
	lastAIAlertEntity = NULL;
	lastAIAlertTime = 0;
	spawnArgs.Clear();
	gravity.Set( 0, 0, -1 );
	playerPVS.h = (unsigned int)-1;
	playerConnectedAreas.h = (unsigned int)-1;
	gamestate = GAMESTATE_UNINITIALIZED;
	skipCinematic = false;
	influenceActive = false;

	localClientNum = 0;
	isMultiplayer = false;
	isServer = false;
	isClient = false;
	realClientTime = 0;
	isNewFrame = true;
	clientSmoothing = 0.1f;
	entityDefBits = 0;

	nextGibTime = 0;
	globalMaterial = NULL;
	newInfo.Clear();
	lastGUIEnt = NULL;
	lastGUI = 0;

	memset( clientEntityStates, 0, sizeof( clientEntityStates ) );
	memset( clientPVS, 0, sizeof( clientPVS ) );
	memset( clientSnapshots, 0, sizeof( clientSnapshots ) );

	eventQueue.Init();
	savedEventQueue.Init();

	memset( lagometer, 0, sizeof( lagometer ) );
}


/*
===========
idGameLocal::Init

  initialize the game object, only happens once at startup, not each level load
============
*/
void idGameLocal::Init( void ) {
	const idDict *dict;
	idAAS *aas;

#ifndef GAME_DLL

	TestGameAPI();

#else

	// initialize idLib
	idLib::Init();

	// register static cvars declared in the game
	idCVar::RegisterStaticVars();

	// initialize processor specific SIMD
	idSIMD::InitProcessor( "game", com_forceGenericSIMD.GetBool() );

#endif

	Printf( "--------- Initializing Game ----------\n" );
	Printf( "gamename: %s\n", GAME_VERSION );
	Printf( "gamedate: %s\n", __DATE__ );

	// register game specific decl types
	declManager->RegisterDeclType( "model",				DECL_MODELDEF,		idDeclAllocator<idDeclModelDef> );
	declManager->RegisterDeclType( "export",			DECL_MODELEXPORT,	idDeclAllocator<idDecl> );

	// register game specific decl folders
	declManager->RegisterDeclFolder( "def",				".def",				DECL_ENTITYDEF );
	declManager->RegisterDeclFolder( "fx",				".fx",				DECL_FX );
	declManager->RegisterDeclFolder( "particles",		".prt",				DECL_PARTICLE );
	declManager->RegisterDeclFolder( "af",				".af",				DECL_AF );
	declManager->RegisterDeclFolder( "newpdas",			".pda",				DECL_PDA );

	cmdSystem->AddCommand( "listModelDefs", idListDecls_f<DECL_MODELDEF>, CMD_FL_SYSTEM|CMD_FL_GAME, "lists model defs" );
	cmdSystem->AddCommand( "printModelDefs", idPrintDecls_f<DECL_MODELDEF>, CMD_FL_SYSTEM|CMD_FL_GAME, "prints a model def", idCmdSystem::ArgCompletion_Decl<DECL_MODELDEF> );

	Clear();

	idEvent::Init();
	idClass::Init();

	InitConsoleCommands();

	// load default scripts
	program.Startup( SCRIPT_DEFAULT );

	smokeParticles = new idSmokeParticles;

	// set up the aas
	dict = FindEntityDefDict( "aas_types" );
	if ( !dict ) {
		Error( "Unable to find entityDef for 'aas_types'" );
	}

	// allocate space for the aas
	const idKeyValue *kv = dict->MatchPrefix( "type" );
	while( kv != NULL ) {
		aas = idAAS::Alloc();
		aasList.Append( aas );
		aasNames.Append( kv->GetValue() );
		kv = dict->MatchPrefix( "type", kv );
	}

	gamestate = GAMESTATE_NOMAP;

	Printf( "...%d aas types\n", aasList.Num() );
	Printf( "game initialized.\n" );
	Printf( "--------------------------------------\n" );
}


/*
===========
idGameLocal::Shutdown

  shut down the entire game
============
*/
void idGameLocal::Shutdown( void ) {

	if ( !common ) {
		return;
	}

	Printf( "------------ Game Shutdown -----------\n" );

	mpGame.Shutdown();

	MapShutdown();

	aasList.DeleteContents( true );
	aasNames.Clear();

	idAI::FreeObstacleAvoidanceNodes();

	// shutdown the model exporter
	idModelExport::Shutdown();

	idEvent::Shutdown();

	delete[] locationEntities;
	locationEntities = NULL;

	delete smokeParticles;
	smokeParticles = NULL;

	idClass::Shutdown();

	// clear list with forces
	idForce::ClearForceList();

	// free the program data
	program.FreeData();

	// delete the .map file
	delete mapFile;
	mapFile = NULL;

	// free the collision map
Sys_Printf("TODO Game_local.cpp 333 collisionModelManager->FreeMap");
// DRS TODO	collisionModelManager->FreeMap();

	ShutdownConsoleCommands();

	// free memory allocated by class objects
	Clear();

	// shut down the animation manager
	animationLib.Shutdown();

	Printf( "--------------------------------------\n" );

#ifdef GAME_DLL

	// remove auto-completion function pointers pointing into this DLL
	cvarSystem->RemoveFlaggedAutoCompletion( CVAR_GAME );

	// enable leak test
	Mem_EnableLeakTest( "game" );

	// shutdown idLib
	idLib::ShutDown();

#endif
}


/*
===========
idGameLocal::SaveGame

save the current player state, level name, and level state
the session may have written some data to the file already
============
*/
void idGameLocal::SaveGame( idFile *f ) {
    Sys_Printf("void idGameLocal::SaveGame( idFile *f )\r\n");
}


/*
===========
idGameLocal::GetPersistentPlayerInfo
============
*/
const idDict &idGameLocal::GetPersistentPlayerInfo( int clientNum ) {
	idEntity	*ent;

	persistentPlayerInfo[ clientNum ].Clear();
	ent = entities[ clientNum ];
    Sys_Printf("idDict &idGameLocal::GetPersistentPlayerInfo( int clientNum )\r\n");

	return persistentPlayerInfo[ clientNum ];
}

/*
===========
idGameLocal::SetPersistentPlayerInfo
============
*/
void idGameLocal::SetPersistentPlayerInfo( int clientNum, const idDict &playerInfo ) {
    Sys_Printf("void idGameLocal::SetPersistentPlayerInfo( int clientNum, const idDict &playerInfo )\r\n");
}


/*
============
idGameLocal::Printf
============
*/
void idGameLocal::Printf( const char *fmt, ... ) const {
	va_list		argptr;
	char		text[MAX_STRING_CHARS];

	va_start( argptr, fmt );
	idStr::vsnPrintf( text, sizeof( text ), fmt, argptr );
	va_end( argptr );

	common->Printf( "%s", text );
}


/*
============
idGameLocal::DPrintf
============
*/
void idGameLocal::DPrintf( const char *fmt, ... ) const {
    Sys_Printf("void idGameLocal::DPrintf( const char *fmt, ... )\r\n");
}


/*
============
idGameLocal::Warning
============
*/
void idGameLocal::Warning( const char *fmt, ... ) const {
    Sys_Printf("void idGameLocal::Warning( const char *fmt, ... )\r\n");
}


/*
============
idGameLocal::DWarning
============
*/
void idGameLocal::DWarning( const char *fmt, ... ) const {
    Sys_Printf("void idGameLocal::DWarning( const char *fmt, ... )\r\n");
}


/*
============
idGameLocal::Error
============
*/
void idGameLocal::Error( const char *fmt, ... ) const {
    Sys_Printf("void idGameLocal::Error( const char *fmt, ... )\r\n");
}


/*
===============
gameError
===============
*/
void gameError( const char *fmt, ... ) {
    Sys_Printf("void gameError( const char *fmt, ... )\r\n");
}


/*
===========
idGameLocal::SetLocalClient
============
*/
void idGameLocal::SetLocalClient( int clientNum ) {
    Sys_Printf("void idGameLocal::SetLocalClient( int clientNum )\r\n");
}


/*
===========
idGameLocal::SetUserInfo
============
*/
const idDict* idGameLocal::SetUserInfo( int clientNum, const idDict &userInfo, bool isClient, bool canModify ) {
    Sys_Printf("idDict* idGameLocal::SetUserInfo( int clientNum, const idDict &userInfo, bool isClient, bool canModify )\r\n");
    return NULL;
}


/*
===========
idGameLocal::GetUserInfo
============
*/
const idDict* idGameLocal::GetUserInfo( int clientNum ) {
    Sys_Printf("idDict* idGameLocal::GetUserInfo( int clientNum )\r\n");
    return NULL;
}


/*
===========
idGameLocal::SetServerInfo
============
*/
void idGameLocal::SetServerInfo( const idDict &_serverInfo ) {
    Sys_Printf("void idGameLocal::SetServerInfo( const idDict &_serverInfo )\r\n");
}



/*
===================
idGameLocal::LoadMap

Initializes all map variables common to both save games and spawned games.
===================
*/
void idGameLocal::LoadMap( const char *mapName, int randseed ) {
    Sys_Printf("void idGameLocal::LoadMap( const char *mapName, int randseed )\r\n");
}


/*
===================
idGameLocal::LocalMapRestart
===================
*/
void idGameLocal::LocalMapRestart( ) {
    Sys_Printf("void idGameLocal::LocalMapRestart( )\r\n");
}


/*
===================
idGameLocal::MapRestart
===================
*/
void idGameLocal::MapRestart( ) {
    Sys_Printf("void idGameLocal::MapRestart( )\r\n");
}


/*
===================
idGameLocal::MapRestart_f
===================
*/
void idGameLocal::MapRestart_f( const idCmdArgs &args ) {
    Sys_Printf("void idGameLocal::MapRestart_f( const idCmdArgs &args )\r\n");
}


/*
===================
idGameLocal::NextMap
===================
*/
bool idGameLocal::NextMap( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::NextMap( void )\r\n");
    return retVal;
}


/*
===================
idGameLocal::NextMap_f
===================
*/
void idGameLocal::NextMap_f( const idCmdArgs &args ) {
    Sys_Printf("void idGameLocal::NextMap_f( const idCmdArgs &args )\r\n");
}


/*
===================
idGameLocal::MapPopulate
===================
*/
void idGameLocal::MapPopulate( void ) {
    Sys_Printf("void idGameLocal::MapPopulate( void )\r\n");
}


/*
===================
idGameLocal::InitFromNewMap
===================
*/
void idGameLocal::InitFromNewMap( const char *mapName, idRenderWorld *renderWorld, idSoundWorld *soundWorld, bool isServer, bool isClient, int randseed ) {
    Sys_Printf("void idGameLocal::InitFromNewMap( const char *mapName, idRenderWorld *renderWorld, idSoundWorld *soundWorld, bool isServer, bool isClient, int randseed )\r\n");
}


/*
=================
idGameLocal::InitFromSaveGame
=================
*/
bool idGameLocal::InitFromSaveGame( const char *mapName, idRenderWorld *renderWorld, idSoundWorld *soundWorld, idFile *saveGameFile ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::InitFromSaveGame( const char *mapName, idRenderWorld *renderWorld, idSoundWorld *soundWorld, idFile *saveGameFile )\r\n");
    return retVal;
}


/*
===========
idGameLocal::MapClear
===========
*/
void idGameLocal::MapClear( bool clearClients ) {
    Sys_Printf("void idGameLocal::MapClear( bool clearClients )\r\n");
}


/*
===========
idGameLocal::MapShutdown
============
*/
void idGameLocal::MapShutdown( void ) {
    Sys_Printf("void idGameLocal::MapShutdown( void )\r\n");
}


/*
===================
idGameLocal::DumpOggSounds
===================
*/
void idGameLocal::DumpOggSounds( void ) {
    Sys_Printf("void idGameLocal::DumpOggSounds( void )\r\n");
}


/*
===================
idGameLocal::GetShakeSounds
===================
*/
void idGameLocal::GetShakeSounds( const idDict *dict ) {
    Sys_Printf("void idGameLocal::GetShakeSounds( const idDict *dict )\r\n");
}


/*
===================
idGameLocal::CacheDictionaryMedia

This is called after parsing an EntityDef and for each entity spawnArgs before
merging the entitydef.  It could be done post-merge, but that would
avoid the fast pre-cache check associated with each entityDef
===================
*/
void idGameLocal::CacheDictionaryMedia( const idDict *dict ) {
    Sys_Printf("void idGameLocal::CacheDictionaryMedia( const idDict *dict )\r\n");
}


/*
===========
idGameLocal::InitScriptForMap
============
*/
void idGameLocal::InitScriptForMap( void ) {
    Sys_Printf("void idGameLocal::InitScriptForMap( void )\r\n");
}


/*
===========
idGameLocal::SpawnPlayer
============
*/
void idGameLocal::SpawnPlayer( int clientNum ) {
    Sys_Printf("void idGameLocal::SpawnPlayer( int clientNum )\r\n");
}


/*
================
idGameLocal::GetClientByNum
================
*/
idPlayer *idGameLocal::GetClientByNum( int current ) const {
    Sys_Printf("idPlayer *idGameLocal::GetClientByNum( int current )\r\n");
    return NULL;
}


/*
================
idGameLocal::GetClientByName
================
*/
idPlayer *idGameLocal::GetClientByName( const char *name ) const {
    Sys_Printf("idPlayer *idGameLocal::GetClientByName( const char *name )\r\n");
    return NULL;
}


/*
================
idGameLocal::GetClientByCmdArgs
================
*/
idPlayer *idGameLocal::GetClientByCmdArgs( const idCmdArgs &args ) const {
    Sys_Printf("idPlayer *idGameLocal::GetClientByCmdArgs( const idCmdArgs &args )\r\n");
    return NULL;
}


/*
================
idGameLocal::GetNextClientNum
================
*/
int idGameLocal::GetNextClientNum( int _current ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idGameLocal::GetNextClientNum( int _current )\r\n");
    return retVal;
}


/*
================
idGameLocal::GetLocalPlayer

Nothing in the game tic should EVER make a decision based on what the
local client number is, it shouldn't even be aware that there is a
draw phase even happening.  This just returns client 0, which will
be correct for single player.
================
*/
idPlayer *idGameLocal::GetLocalPlayer() const {
    Sys_Printf("idPlayer *idGameLocal::GetLocalPlayer()\r\n");
    return NULL;
}


/*
================
idGameLocal::SetupClientPVS
================
*/
pvsHandle_t idGameLocal::GetClientPVS( idPlayer *player, pvsType_t type ) {
    pvsHandle_t retVal;
    memset(&retVal, 0, sizeof(pvsHandle_t));
    Sys_Printf("pvsHandle_t idGameLocal::GetClientPVS( idPlayer *player, pvsType_t type )\r\n");
    return retVal;
}


/*
================
idGameLocal::SetupPlayerPVS
================
*/
void idGameLocal::SetupPlayerPVS( void ) {
    Sys_Printf("void idGameLocal::SetupPlayerPVS( void )\r\n");
}


/*
================
idGameLocal::FreePlayerPVS
================
*/
void idGameLocal::FreePlayerPVS( void ) {
    Sys_Printf("void idGameLocal::FreePlayerPVS( void )\r\n");
}


/*
================
idGameLocal::InPlayerPVS

  should only be called during entity thinking and event handling
================
*/
bool idGameLocal::InPlayerPVS( idEntity *ent ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::InPlayerPVS( idEntity *ent )\r\n");
    return retVal;
}


/*
================
idGameLocal::InPlayerConnectedArea

  should only be called during entity thinking and event handling
================
*/
bool idGameLocal::InPlayerConnectedArea( idEntity *ent ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::InPlayerConnectedArea( idEntity *ent )\r\n");
    return retVal;
}


/*
================
idGameLocal::UpdateGravity
================
*/
void idGameLocal::UpdateGravity( void ) {
    Sys_Printf("void idGameLocal::UpdateGravity( void )\r\n");
}


/*
================
idGameLocal::GetGravity
================
*/
const idVec3 &idGameLocal::GetGravity( void ) const {
	return gravity;
}

/*
================
idGameLocal::SortActiveEntityList

  Sorts the active entity list such that pushing entities come first,
  actors come next and physics team slaves appear after their master.
================
*/
void idGameLocal::SortActiveEntityList( void ) {
    Sys_Printf("void idGameLocal::SortActiveEntityList( void )\r\n");
}


/*
================
idGameLocal::RunFrame
================
*/
gameReturn_t idGameLocal::RunFrame( const usercmd_t *clientCmds ) {
    gameReturn_t retVal;
    memset(&retVal, 0, sizeof(gameReturn_t));
    Sys_Printf("gameReturn_t idGameLocal::RunFrame( const usercmd_t *clientCmds )\r\n");
    return retVal;
}



/*
======================================================================

  Game view drawing

======================================================================
*/

/*
====================
idGameLocal::CalcFov

Calculates the horizontal and vertical field of view based on a horizontal field of view and custom aspect ratio
====================
*/
void idGameLocal::CalcFov( float base_fov, float &fov_x, float &fov_y ) const {
    Sys_Printf("void idGameLocal::CalcFov( float base_fov, float &fov_x, float &fov_y )\r\n");
}


/*
================
idGameLocal::Draw

makes rendering and sound system calls
================
*/
bool idGameLocal::Draw( int clientNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::Draw( int clientNum )\r\n");
    return retVal;
}


/*
================
idGameLocal::HandleESC
================
*/
escReply_t idGameLocal::HandleESC( idUserInterface **gui ) {
    escReply_t retVal;
    memset(&retVal, 0, sizeof(escReply_t));
    Sys_Printf("escReply_t idGameLocal::HandleESC( idUserInterface **gui )\r\n");
    return retVal;
}


/*
================
idGameLocal::StartMenu
================
*/
idUserInterface* idGameLocal::StartMenu( void ) {
    Sys_Printf("idUserInterface* idGameLocal::StartMenu( void )\r\n");
    return NULL;
}


/*
================
idGameLocal::HandleGuiCommands
================
*/
const char* idGameLocal::HandleGuiCommands( const char *menuCommand ) {
    Sys_Printf("char* idGameLocal::HandleGuiCommands( const char *menuCommand )\r\n");
    return NULL;
}


/*
================
idGameLocal::HandleMainMenuCommands
================
*/
void idGameLocal::HandleMainMenuCommands( const char *menuCommand, idUserInterface *gui ) {
    Sys_Printf("void idGameLocal::HandleMainMenuCommands( const char *menuCommand, idUserInterface *gui )\r\n");
}


/*
================
idGameLocal::GetLevelMap

  should only be used for in-game level editing
================
*/
idMapFile *idGameLocal::GetLevelMap( void ) {
    Sys_Printf("idMapFile *idGameLocal::GetLevelMap( void )\r\n");
    return NULL;
}


/*
================
idGameLocal::GetMapName
================
*/
const char *idGameLocal::GetMapName( void ) const {
    Sys_Printf("char *idGameLocal::GetMapName( void )\r\n");
    return NULL;
}


/*
================
idGameLocal::CallFrameCommand
================
*/
void idGameLocal::CallFrameCommand( idEntity *ent, const function_t *frameCommand ) {
    Sys_Printf("void idGameLocal::CallFrameCommand( idEntity *ent, const function_t *frameCommand )\r\n");
}


/*
================
idGameLocal::CallObjectFrameCommand
================
*/
void idGameLocal::CallObjectFrameCommand( idEntity *ent, const char *frameCommand ) {
    Sys_Printf("void idGameLocal::CallObjectFrameCommand( idEntity *ent, const char *frameCommand )\r\n");
}


/*
================
idGameLocal::ShowTargets
================
*/
void idGameLocal::ShowTargets( void ) {
    Sys_Printf("void idGameLocal::ShowTargets( void )\r\n");
}


/*
================
idGameLocal::RunDebugInfo
================
*/
void idGameLocal::RunDebugInfo( void ) {
    Sys_Printf("void idGameLocal::RunDebugInfo( void )\r\n");
}


/*
==================
idGameLocal::NumAAS
==================
*/
int	idGameLocal::NumAAS( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidGameLocal::NumAAS( void )\r\n");
    return retVal;
}


/*
==================
idGameLocal::GetAAS
==================
*/
idAAS *idGameLocal::GetAAS( int num ) const {
    Sys_Printf("idAAS *idGameLocal::GetAAS( int num )\r\n");
    return NULL;
}


/*
==================
idGameLocal::GetAAS
==================
*/
idAAS *idGameLocal::GetAAS( const char *name ) const {
    Sys_Printf("idAAS *idGameLocal::GetAAS( const char *name )\r\n");
    return NULL;
}


/*
==================
idGameLocal::SetAASAreaState
==================
*/
void idGameLocal::SetAASAreaState( const idBounds &bounds, const int areaContents, bool closed ) {
    Sys_Printf("void idGameLocal::SetAASAreaState( const idBounds &bounds, const int areaContents, bool closed )\r\n");
}


/*
==================
idGameLocal::AddAASObstacle
==================
*/
aasHandle_t idGameLocal::AddAASObstacle( const idBounds &bounds ) {
    aasHandle_t retVal;
    memset(&retVal, 0, sizeof(aasHandle_t));
    Sys_Printf("aasHandle_t idGameLocal::AddAASObstacle( const idBounds &bounds )\r\n");
    return retVal;
}


/*
==================
idGameLocal::RemoveAASObstacle
==================
*/
void idGameLocal::RemoveAASObstacle( const aasHandle_t handle ) {
    Sys_Printf("void idGameLocal::RemoveAASObstacle( const aasHandle_t handle )\r\n");
}


/*
==================
idGameLocal::RemoveAllAASObstacles
==================
*/
void idGameLocal::RemoveAllAASObstacles( void ) {
    Sys_Printf("void idGameLocal::RemoveAllAASObstacles( void )\r\n");
}


/*
==================
idGameLocal::CheatsOk
==================
*/
bool idGameLocal::CheatsOk( bool requirePlayer ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::CheatsOk( bool requirePlayer )\r\n");
    return retVal;
}


/*
===================
idGameLocal::RegisterEntity
===================
*/
void idGameLocal::RegisterEntity( idEntity *ent ) {
    Sys_Printf("void idGameLocal::RegisterEntity( idEntity *ent )\r\n");
}


/*
===================
idGameLocal::UnregisterEntity
===================
*/
void idGameLocal::UnregisterEntity( idEntity *ent ) {
    Sys_Printf("void idGameLocal::UnregisterEntity( idEntity *ent )\r\n");
}


/*
================
idGameLocal::SpawnEntityType
================
*/
idEntity *idGameLocal::SpawnEntityType( const idTypeInfo &classdef, const idDict *args, bool bIsClientReadSnapshot ) {
    Sys_Printf("idEntity *idGameLocal::SpawnEntityType( const idTypeInfo &classdef, const idDict *args, bool bIsClientReadSnapshot )\r\n");
    return NULL;
}


/*
===================
idGameLocal::SpawnEntityDef

Finds the spawn function for the entity and calls it,
returning false if not found
===================
*/
bool idGameLocal::SpawnEntityDef( const idDict &args, idEntity **ent, bool setDefaults ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::SpawnEntityDef( const idDict &args, idEntity **ent, bool setDefaults )\r\n");
    return retVal;
}


/*
================
idGameLocal::FindEntityDef
================
*/
const idDeclEntityDef *idGameLocal::FindEntityDef( const char *name, bool makeDefault ) const {
    Sys_Printf("idDeclEntityDef *idGameLocal::FindEntityDef( const char *name, bool makeDefault )\r\n");
    return NULL;
}


/*
================
idGameLocal::FindEntityDefDict
================
*/
const idDict *idGameLocal::FindEntityDefDict( const char *name, bool makeDefault ) const {
    Sys_Printf("idDict *idGameLocal::FindEntityDefDict( const char *name, bool makeDefault )\r\n");
    return NULL;
}


/*
================
idGameLocal::InhibitEntitySpawn
================
*/
bool idGameLocal::InhibitEntitySpawn( idDict &spawnArgs ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::InhibitEntitySpawn( idDict &spawnArgs )\r\n");
    return retVal;
}


/*
================
idGameLocal::SetSkill
================
*/
void idGameLocal::SetSkill( int value ) {
    Sys_Printf("void idGameLocal::SetSkill( int value )\r\n");
}


/*
==============
idGameLocal::GameState

Used to allow entities to know if they're being spawned during the initial spawn.
==============
*/
gameState_t	idGameLocal::GameState( void ) const {
    gameState_t retVal;
    memset(&retVal, 0, sizeof(gameState_t));
    Sys_Printf("gameState_tidGameLocal::GameState( void )\r\n");
    return retVal;
}


/*
==============
idGameLocal::SpawnMapEntities

Parses textual entity definitions out of an entstring and spawns gentities.
==============
*/
void idGameLocal::SpawnMapEntities( void ) {
    Sys_Printf("void idGameLocal::SpawnMapEntities( void )\r\n");
}


/*
================
idGameLocal::AddEntityToHash
================
*/
void idGameLocal::AddEntityToHash( const char *name, idEntity *ent ) {
    Sys_Printf("void idGameLocal::AddEntityToHash( const char *name, idEntity *ent )\r\n");
}


/*
================
idGameLocal::RemoveEntityFromHash
================
*/
bool idGameLocal::RemoveEntityFromHash( const char *name, idEntity *ent ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::RemoveEntityFromHash( const char *name, idEntity *ent )\r\n");
    return retVal;
}


/*
================
idGameLocal::GetTargets
================
*/
int idGameLocal::GetTargets( const idDict &args, idList< idEntityPtr<idEntity> > &list, const char *ref ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idGameLocal::GetTargets( const idDict &args, idList< idEntityPtr<idEntity> > &list, const char *ref )\r\n");
    return retVal;
}


/*
=============
idGameLocal::GetTraceEntity

returns the master entity of a trace.  for example, if the trace entity is the player's head, it will return the player.
=============
*/
idEntity *idGameLocal::GetTraceEntity( const trace_t &trace ) const {
    Sys_Printf("idEntity *idGameLocal::GetTraceEntity( const trace_t &trace )\r\n");
    return NULL;
}


/*
=============
idGameLocal::ArgCompletion_EntityName

Argument completion for entity names
=============
*/
void idGameLocal::ArgCompletion_EntityName( const idCmdArgs &args, void(*callback)( const char *s ) ) {
	int i;

	for( i = 0; i < gameLocal->num_entities; i++ ) {
		if ( gameLocal->entities[ i ] ) {
			callback( va( "%s %s", args.Argv( 0 ), gameLocal->entities[ i ]->name.c_str() ) );
		}
	}
}

/*
=============
idGameLocal::FindEntity

Returns the entity whose name matches the specified string.
=============
*/
idEntity *idGameLocal::FindEntity( const char *name ) const {
    Sys_Printf("idEntity *idGameLocal::FindEntity( const char *name )\r\n");
    return NULL;
}


/*
=============
idGameLocal::FindEntityUsingDef

Searches all active entities for the next one using the specified entityDef.

Searches beginning at the entity after from, or the beginning if NULL
NULL will be returned if the end of the list is reached.
=============
*/
idEntity *idGameLocal::FindEntityUsingDef( idEntity *from, const char *match ) const {
    Sys_Printf("idEntity *idGameLocal::FindEntityUsingDef( idEntity *from, const char *match )\r\n");
    return NULL;
}


/*
=============
idGameLocal::FindTraceEntity

Searches all active entities for the closest ( to start ) match that intersects
the line start,end
=============
*/
idEntity *idGameLocal::FindTraceEntity( idVec3 start, idVec3 end, const idTypeInfo &c, const idEntity *skip ) const {
    Sys_Printf("idEntity *idGameLocal::FindTraceEntity( idVec3 start, idVec3 end, const idTypeInfo &c, const idEntity *skip )\r\n");
    return NULL;
}


/*
================
idGameLocal::EntitiesWithinRadius
================
*/
int idGameLocal::EntitiesWithinRadius( const idVec3 org, float radius, idEntity **entityList, int maxCount ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idGameLocal::EntitiesWithinRadius( const idVec3 org, float radius, idEntity **entityList, int maxCount )\r\n");
    return retVal;
}


/*
=================
idGameLocal::KillBox

Kills all entities that would touch the proposed new positioning of ent. The ent itself will not being killed.
Checks if player entities are in the teleporter, and marks them to die at teleport exit instead of immediately.
If catch_teleport, this only marks teleport players for death on exit
=================
*/
void idGameLocal::KillBox( idEntity *ent, bool catch_teleport ) {
    Sys_Printf("void idGameLocal::KillBox( idEntity *ent, bool catch_teleport )\r\n");
}


/*
================
idGameLocal::RequirementMet
================
*/
bool idGameLocal::RequirementMet( idEntity *activator, const idStr &requires, int removeItem ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::RequirementMet( idEntity *activator, const idStr &requires, int removeItem )\r\n");
    return retVal;
}


/*
============
idGameLocal::AlertAI
============
*/
void idGameLocal::AlertAI( idEntity *ent ) {
    Sys_Printf("void idGameLocal::AlertAI( idEntity *ent )\r\n");
}


/*
============
idGameLocal::GetAlertEntity
============
*/
idActor *idGameLocal::GetAlertEntity( void ) {
    Sys_Printf("idActor *idGameLocal::GetAlertEntity( void )\r\n");
    return NULL;
}


/*
============
idGameLocal::RadiusDamage
============
*/
void idGameLocal::RadiusDamage( const idVec3 &origin, idEntity *inflictor, idEntity *attacker, idEntity *ignoreDamage, idEntity *ignorePush, const char *damageDefName, float dmgPower ) {
    Sys_Printf("void idGameLocal::RadiusDamage( const idVec3 &origin, idEntity *inflictor, idEntity *attacker, idEntity *ignoreDamage, idEntity *ignorePush, const char *damageDefName, float dmgPower )\r\n");
}


/*
==============
idGameLocal::RadiusPush
==============
*/
void idGameLocal::RadiusPush( const idVec3 &origin, const float radius, const float push, const idEntity *inflictor, const idEntity *ignore, float inflictorScale, const bool quake ) {
    Sys_Printf("void idGameLocal::RadiusPush( const idVec3 &origin, const float radius, const float push, const idEntity *inflictor, const idEntity *ignore, float inflictorScale, const bool quake )\r\n");
}


/*
==============
idGameLocal::RadiusPushClipModel
==============
*/
void idGameLocal::RadiusPushClipModel( const idVec3 &origin, const float push, const idClipModel *clipModel ) {
    Sys_Printf("void idGameLocal::RadiusPushClipModel( const idVec3 &origin, const float push, const idClipModel *clipModel )\r\n");
}


/*
===============
idGameLocal::ProjectDecal
===============
*/
void idGameLocal::ProjectDecal( const idVec3 &origin, const idVec3 &dir, float depth, bool parallel, float size, const char *material, float angle ) {
    Sys_Printf("void idGameLocal::ProjectDecal( const idVec3 &origin, const idVec3 &dir, float depth, bool parallel, float size, const char *material, float angle )\r\n");
}


/*
==============
idGameLocal::BloodSplat
==============
*/
void idGameLocal::BloodSplat( const idVec3 &origin, const idVec3 &dir, float size, const char *material ) {
    Sys_Printf("void idGameLocal::BloodSplat( const idVec3 &origin, const idVec3 &dir, float size, const char *material )\r\n");
}


/*
=============
idGameLocal::SetCamera
=============
*/
void idGameLocal::SetCamera( idCamera *cam ) {
    Sys_Printf("void idGameLocal::SetCamera( idCamera *cam )\r\n");
}


/*
=============
idGameLocal::GetCamera
=============
*/
idCamera *idGameLocal::GetCamera( void ) const {
    Sys_Printf("idCamera *idGameLocal::GetCamera( void )\r\n");
    return NULL;
}


/*
=============
idGameLocal::SkipCinematic
=============
*/
bool idGameLocal::SkipCinematic( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::SkipCinematic( void )\r\n");
    return retVal;
}



/*
======================
idGameLocal::SpreadLocations

Now that everything has been spawned, associate areas with location entities
======================
*/
void idGameLocal::SpreadLocations() {
    Sys_Printf("void idGameLocal::SpreadLocations()\r\n");
}


/*
===================
idGameLocal::LocationForPoint

The player checks the location each frame to update the HUD text display
May return NULL
===================
*/
idLocationEntity *idGameLocal::LocationForPoint( const idVec3 &point ) {
    Sys_Printf("idLocationEntity *idGameLocal::LocationForPoint( const idVec3 &point )\r\n");
    return NULL;
}


/*
============
idGameLocal::SetPortalState
============
*/
void idGameLocal::SetPortalState( qhandle_t portal, int blockingBits ) {
    Sys_Printf("void idGameLocal::SetPortalState( qhandle_t portal, int blockingBits )\r\n");
}


/*
============
idGameLocal::sortSpawnPoints
============
*/
int idGameLocal::sortSpawnPoints( const void *ptr1, const void *ptr2 ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idGameLocal::sortSpawnPoints( const void *ptr1, const void *ptr2 )\r\n");
    return retVal;
}


/*
===========
idGameLocal::RandomizeInitialSpawns
randomize the order of the initial spawns
prepare for a sequence of initial player spawns
============
*/
void idGameLocal::RandomizeInitialSpawns( void ) {
    Sys_Printf("void idGameLocal::RandomizeInitialSpawns( void )\r\n");
}


/*
===========
idGameLocal::SelectInitialSpawnPoint
spectators are spawned randomly anywhere
in-game clients are spawned based on distance to active players (randomized on the first half)
upon map restart, initial spawns are used (randomized ordered list of spawns flagged "initial")
  if there are more players than initial spots, overflow to regular spawning
============
*/
idEntity *idGameLocal::SelectInitialSpawnPoint( idPlayer *player ) {
    Sys_Printf("idEntity *idGameLocal::SelectInitialSpawnPoint( idPlayer *player )\r\n");
    return NULL;
}


/*
================
idGameLocal::UpdateServerInfoFlags
================
*/
void idGameLocal::UpdateServerInfoFlags() {
    Sys_Printf("void idGameLocal::UpdateServerInfoFlags()\r\n");
}



/*
================
idGameLocal::SetGlobalMaterial
================
*/
void idGameLocal::SetGlobalMaterial( const idMaterial *mat ) {
    Sys_Printf("void idGameLocal::SetGlobalMaterial( const idMaterial *mat )\r\n");
}


/*
================
idGameLocal::GetGlobalMaterial
================
*/
const idMaterial *idGameLocal::GetGlobalMaterial() {
    Sys_Printf("idMaterial *idGameLocal::GetGlobalMaterial()\r\n");
    return NULL;
}


/*
================
idGameLocal::GetSpawnId
================
*/
int idGameLocal::GetSpawnId( const idEntity* ent ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idGameLocal::GetSpawnId( const idEntity* ent )\r\n");
    return retVal;
}


/*
================
idGameLocal::ThrottleUserInfo
================
*/
void idGameLocal::ThrottleUserInfo( void ) {
    Sys_Printf("void idGameLocal::ThrottleUserInfo( void )\r\n");
}


/*
===========
idGameLocal::SelectTimeGroup
============
*/
void idGameLocal::SelectTimeGroup( int timeGroup ) {
    Sys_Printf("void idGameLocal::SelectTimeGroup( int timeGroup )\r\n");
}


/*
===========
idGameLocal::GetTimeGroupTime
============
*/
int idGameLocal::GetTimeGroupTime( int timeGroup ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idGameLocal::GetTimeGroupTime( int timeGroup )\r\n");
    return retVal;
}


/*
===========
idGameLocal::GetBestGameType
============
*/
void idGameLocal::GetBestGameType( const char* map, const char* gametype, char buf[ MAX_STRING_CHARS ] ) {
    Sys_Printf("void idGameLocal::GetBestGameType( const char* map, const char* gametype, char buf[ MAX_STRING_CHARS ] )\r\n");
}


/*
===========
idGameLocal::NeedRestart
============
*/
bool idGameLocal::NeedRestart() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::NeedRestart()\r\n");
    return retVal;
}


/*
================
idGameLocal::GetClientStats
================
*/
void idGameLocal::GetClientStats( int clientNum, char *data, const int len ) {
    Sys_Printf("void idGameLocal::GetClientStats( int clientNum, char *data, const int len )\r\n");
}



/*
================
idGameLocal::SwitchTeam
================
*/
void idGameLocal::SwitchTeam( int clientNum, int team ) {
    Sys_Printf("void idGameLocal::SwitchTeam( int clientNum, int team )\r\n");
}


/*
===============
idGameLocal::GetMapLoadingGUI
===============
*/
void idGameLocal::GetMapLoadingGUI( char gui[ MAX_STRING_CHARS ] ) {
    Sys_Printf("void idGameLocal::GetMapLoadingGUI( char gui[ MAX_STRING_CHARS ] )\r\n");
}


