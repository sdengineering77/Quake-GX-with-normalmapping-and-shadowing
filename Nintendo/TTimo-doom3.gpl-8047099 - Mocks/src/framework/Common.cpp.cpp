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

#include "../renderer/Image.h"

#define	MAX_PRINT_MSG_SIZE	4096
#define MAX_WARNING_LIST	256

typedef enum {
	ERP_NONE,
	ERP_FATAL,						// exit the entire game with a popup window
	ERP_DROP,						// print to console and disconnect from game
	ERP_DISCONNECT					// don't kill server
} errorParm_t;

#if defined( _DEBUG )
	#define BUILD_DEBUG "-debug"
#else
	#define BUILD_DEBUG ""
#endif

struct version_s {
			version_s( void ) { sprintf( string, "%s.%d%s %s %s %s", ENGINE_VERSION, BUILD_NUMBER, BUILD_DEBUG, BUILD_STRING, __DATE__, __TIME__ ); }
	char	string[256];
} version;

idCVar com_version( "si_version", version.string, CVAR_SYSTEM|CVAR_ROM|CVAR_SERVERINFO, "engine version" );
idCVar com_skipRenderer( "com_skipRenderer", "0", CVAR_BOOL|CVAR_SYSTEM, "skip the renderer completely" );
idCVar com_machineSpec( "com_machineSpec", "-1", CVAR_INTEGER | CVAR_ARCHIVE | CVAR_SYSTEM, "hardware classification, -1 = not detected, 0 = low quality, 1 = medium quality, 2 = high quality, 3 = ultra quality" );
idCVar com_purgeAll( "com_purgeAll", "0", CVAR_BOOL | CVAR_ARCHIVE | CVAR_SYSTEM, "purge everything between level loads" );
idCVar com_memoryMarker( "com_memoryMarker", "-1", CVAR_INTEGER | CVAR_SYSTEM | CVAR_INIT, "used as a marker for memory stats" );
idCVar com_preciseTic( "com_preciseTic", "1", CVAR_BOOL|CVAR_SYSTEM, "run one game tick every async thread update" );
idCVar com_asyncInput( "com_asyncInput", "0", CVAR_BOOL|CVAR_SYSTEM, "sample input from the async thread" );
#define ASYNCSOUND_INFO "0: mix sound inline, 1: memory mapped async mix, 2: callback mixing, 3: write async mix"
#if defined( MACOS_X )
idCVar com_asyncSound( "com_asyncSound", "2", CVAR_INTEGER|CVAR_SYSTEM|CVAR_ROM, ASYNCSOUND_INFO );
#elif defined( __linux__ )
idCVar com_asyncSound( "com_asyncSound", "3", CVAR_INTEGER|CVAR_SYSTEM|CVAR_ROM, ASYNCSOUND_INFO );
#else
idCVar com_asyncSound( "com_asyncSound", "1", CVAR_INTEGER|CVAR_SYSTEM, ASYNCSOUND_INFO, 0, 1 );
#endif
idCVar com_forceGenericSIMD( "com_forceGenericSIMD", "0", CVAR_BOOL | CVAR_SYSTEM | CVAR_NOCHEAT, "force generic platform independent SIMD" );
idCVar com_developer( "developer", "0", CVAR_BOOL|CVAR_SYSTEM|CVAR_NOCHEAT, "developer mode" );
idCVar com_allowConsole( "com_allowConsole", "0", CVAR_BOOL | CVAR_SYSTEM | CVAR_NOCHEAT, "allow toggling console with the tilde key" );
idCVar com_speeds( "com_speeds", "0", CVAR_BOOL|CVAR_SYSTEM|CVAR_NOCHEAT, "show engine timings" );
idCVar com_showFPS( "com_showFPS", "0", CVAR_BOOL|CVAR_SYSTEM|CVAR_ARCHIVE|CVAR_NOCHEAT, "show frames rendered per second" );
idCVar com_showMemoryUsage( "com_showMemoryUsage", "0", CVAR_BOOL|CVAR_SYSTEM|CVAR_NOCHEAT, "show total and per frame memory usage" );
idCVar com_showAsyncStats( "com_showAsyncStats", "0", CVAR_BOOL|CVAR_SYSTEM|CVAR_NOCHEAT, "show async network stats" );
idCVar com_showSoundDecoders( "com_showSoundDecoders", "0", CVAR_BOOL|CVAR_SYSTEM|CVAR_NOCHEAT, "show sound decoders" );
idCVar com_timestampPrints( "com_timestampPrints", "0", CVAR_SYSTEM, "print time with each console print, 1 = msec, 2 = sec", 0, 2, idCmdSystem::ArgCompletion_Integer<0,2> );
idCVar com_timescale( "timescale", "1", CVAR_SYSTEM | CVAR_FLOAT, "scales the time", 0.1f, 10.0f );
idCVar com_logFile( "logFile", "0", CVAR_SYSTEM | CVAR_NOCHEAT, "1 = buffer log, 2 = flush after each print", 0, 2, idCmdSystem::ArgCompletion_Integer<0,2> );
idCVar com_logFileName( "logFileName", "qconsole.log", CVAR_SYSTEM | CVAR_NOCHEAT, "name of log file, if empty, qconsole.log will be used" );
idCVar com_makingBuild( "com_makingBuild", "0", CVAR_BOOL | CVAR_SYSTEM, "1 when making a build" );
idCVar com_updateLoadSize( "com_updateLoadSize", "0", CVAR_BOOL | CVAR_SYSTEM | CVAR_NOCHEAT, "update the load size after loading a map" );
idCVar com_videoRam( "com_videoRam", "64", CVAR_INTEGER | CVAR_SYSTEM | CVAR_NOCHEAT | CVAR_ARCHIVE, "holds the last amount of detected video ram" );

idCVar com_product_lang_ext( "com_product_lang_ext", "1", CVAR_INTEGER | CVAR_SYSTEM | CVAR_ARCHIVE, "Extension to use when creating language files." );

// com_speeds times
int				time_gameFrame;
int				time_gameDraw;
int				time_frontend;			// renderSystem frontend time
int				time_backend;			// renderSystem backend time

int				com_frameTime;			// time for the current frame in milliseconds
int				com_frameNumber;		// variable frame number
volatile int	com_ticNumber;			// 60 hz tics
int				com_editors;			// currently opened editor(s)
bool			com_editorActive;		//  true if an editor has focus

#ifdef _WIN32
HWND			com_hwndMsg = NULL;
bool			com_outputMsg = false;
unsigned int	com_msgID = -1;
#endif

#ifdef __DOOM_DLL__
idGame *		game = NULL;
idGameEdit *	gameEdit = NULL;
#endif

// writes si_version to the config file - in a kinda obfuscated way
//#define ID_WRITE_VERSION

class idCommonLocal : public idCommon {
public:
								idCommonLocal( void );

	virtual void				Init( int argc, const char **argv, const char *cmdline );
	virtual void				Shutdown( void );
	virtual void				Quit( void );
	virtual bool				IsInitialized( void ) const;
	virtual void				Frame( void );
	virtual void				GUIFrame( bool execCmd, bool network );
	virtual void				Async( void );
	virtual void				StartupVariable( const char *match, bool once );
	virtual void				InitTool( const toolFlag_t tool, const idDict *dict );
	virtual void				ActivateTool( bool active );
	virtual void				WriteConfigToFile( const char *filename );
	virtual void				WriteFlaggedCVarsToFile( const char *filename, int flags, const char *setCmd );
	virtual void				BeginRedirect( char *buffer, int buffersize, void (*flush)( const char * ) );
	virtual void				EndRedirect( void );
	virtual void				SetRefreshOnPrint( bool set );
	virtual void				Printf( const char *fmt, ... ) id_attribute((format(printf,2,3)));
	virtual void				VPrintf( const char *fmt, va_list arg );
	virtual void				DPrintf( const char *fmt, ... ) id_attribute((format(printf,2,3)));
	virtual void				Warning( const char *fmt, ... ) id_attribute((format(printf,2,3)));
	virtual void				DWarning( const char *fmt, ...) id_attribute((format(printf,2,3)));
	virtual void				PrintWarnings( void );
	virtual void				ClearWarnings( const char *reason );
	virtual void				Error( const char *fmt, ... ) id_attribute((format(printf,2,3)));
	virtual void				FatalError( const char *fmt, ... ) id_attribute((format(printf,2,3)));
	virtual const idLangDict *	GetLanguageDict( void );

	virtual const char *		KeysFromBinding( const char *bind );
	virtual const char *		BindingFromKey( const char *key );

	virtual int					ButtonState( int key );
	virtual int					KeyState( int key );

	void						InitGame( void );
	void						ShutdownGame( bool reloading );

	// localization
	void						InitLanguageDict( void );
	void						LocalizeGui( const char *fileName, idLangDict &langDict );
	void						LocalizeMapData( const char *fileName, idLangDict &langDict );
	void						LocalizeSpecificMapData( const char *fileName, idLangDict &langDict, const idLangDict &replaceArgs );

	void						SetMachineSpec( void );

private:
	void						InitCommands( void );
	void						InitRenderSystem( void );
	void						InitSIMD( void );
	bool						AddStartupCommands( void );
	void						ParseCommandLine( int argc, const char **argv );
	void						ClearCommandLine( void );
	bool						SafeMode( void );
	void						CheckToolMode( void );
	void						CloseLogFile( void );
	void						WriteConfiguration( void );
	void						DumpWarnings( void );
	void						SingleAsyncTic( void );
	void						LoadGameDLL( void );
	void						UnloadGameDLL( void );
	void						PrintLoadingMessage( const char *msg );
	void						FilterLangList( idStrList* list, idStr lang );

	bool						com_fullyInitialized;
	bool						com_refreshOnPrint;		// update the screen every print for dmap
	int							com_errorEntered;		// 0, ERP_DROP, etc
	bool						com_shuttingDown;

	idFile *					logFile;

	char						errorMessage[MAX_PRINT_MSG_SIZE];

	char *						rd_buffer;
	int							rd_buffersize;
	void						(*rd_flush)( const char *buffer );

	idStr						warningCaption;
	idStrList					warningList;
	idStrList					errorList;

	int							gameDLL;

	idLangDict					languageDict;

#ifdef ID_WRITE_VERSION
	idCompressor *				config_compressor;
#endif
};

idCommonLocal	commonLocal;
idCommon *		common = &commonLocal;


/*
==================
idCommonLocal::idCommonLocal
==================
*/
idCommonLocal::idCommonLocal( void ) {
	com_fullyInitialized = false;
	com_refreshOnPrint = false;
	com_errorEntered = 0;
	com_shuttingDown = false;

	logFile = NULL;

	strcpy( errorMessage, "" );

	rd_buffer = NULL;
	rd_buffersize = 0;
	rd_flush = NULL;

	gameDLL = 0;

#ifdef ID_WRITE_VERSION
	config_compressor = NULL;
#endif
}

/*
==================
idCommonLocal::BeginRedirect
==================
*/
void idCommonLocal::BeginRedirect( char *buffer, int buffersize, void (*flush)( const char *) ) {
	if ( !buffer || !buffersize || !flush ) {
		return;
	}
	rd_buffer = buffer;
	rd_buffersize = buffersize;
	rd_flush = flush;

	*rd_buffer = 0;
}

/*
==================
idCommonLocal::EndRedirect
==================
*/
void idCommonLocal::EndRedirect( void ) {
    Sys_Printf("void idCommonLocal::EndRedirect( void )\r\n");
}


#ifdef _WIN32

/*
==================
EnumWindowsProc
==================
*/
BOOL CALLBACK EnumWindowsProc( HWND hwnd, LPARAM lParam ) {
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK EnumWindowsProc( HWND hwnd, LPARAM lParam )\r\n");
    return retVal;
}


/*
==================
FindEditor
==================
*/
bool FindEditor( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool FindEditor( void )\r\n");
    return retVal;
}


#endif

/*
==================
idCommonLocal::CloseLogFile
==================
*/
void idCommonLocal::CloseLogFile( void ) {
    Sys_Printf("void idCommonLocal::CloseLogFile( void )\r\n");
}


/*
==================
idCommonLocal::SetRefreshOnPrint
==================
*/
void idCommonLocal::SetRefreshOnPrint( bool set ) {
    Sys_Printf("void idCommonLocal::SetRefreshOnPrint( bool set )\r\n");
}


/*
==================
idCommonLocal::VPrintf

A raw string should NEVER be passed as fmt, because of "%f" type crashes.
==================
*/
void idCommonLocal::VPrintf( const char *fmt, va_list args ) {
    Sys_Printf("void idCommonLocal::VPrintf( const char *fmt, va_list args )\r\n");
}


/*
==================
idCommonLocal::Printf

Both client and server can use this, and it will output to the appropriate place.

A raw string should NEVER be passed as fmt, because of "%f" type crashers.
==================
*/
void idCommonLocal::Printf( const char *fmt, ... ) {
    Sys_Printf("void idCommonLocal::Printf( const char *fmt, ... )\r\n");
}


/*
==================
idCommonLocal::DPrintf

prints message that only shows up if the "developer" cvar is set
==================
*/
void idCommonLocal::DPrintf( const char *fmt, ... ) {
    Sys_Printf("void idCommonLocal::DPrintf( const char *fmt, ... )\r\n");
}


/*
==================
idCommonLocal::DWarning

prints warning message in yellow that only shows up if the "developer" cvar is set
==================
*/
void idCommonLocal::DWarning( const char *fmt, ... ) {
    Sys_Printf("void idCommonLocal::DWarning( const char *fmt, ... )\r\n");
}


/*
==================
idCommonLocal::Warning

prints WARNING %s and adds the warning message to a queue to be printed later on
==================
*/
void idCommonLocal::Warning( const char *fmt, ... ) {
    Sys_Printf("void idCommonLocal::Warning( const char *fmt, ... )\r\n");
}


/*
==================
idCommonLocal::PrintWarnings
==================
*/
void idCommonLocal::PrintWarnings( void ) {
    Sys_Printf("void idCommonLocal::PrintWarnings( void )\r\n");
}


/*
==================
idCommonLocal::ClearWarnings
==================
*/
void idCommonLocal::ClearWarnings( const char *reason ) {
    Sys_Printf("void idCommonLocal::ClearWarnings( const char *reason )\r\n");
}


/*
==================
idCommonLocal::DumpWarnings
==================
*/
void idCommonLocal::DumpWarnings( void ) {
    Sys_Printf("void idCommonLocal::DumpWarnings( void )\r\n");
}


/*
==================
idCommonLocal::Error
==================
*/
void idCommonLocal::Error( const char *fmt, ... ) {
    Sys_Printf("void idCommonLocal::Error( const char *fmt, ... )\r\n");
}


/*
==================
idCommonLocal::FatalError

Dump out of the game to a system dialog
==================
*/
void idCommonLocal::FatalError( const char *fmt, ... ) {
    Sys_Printf("void idCommonLocal::FatalError( const char *fmt, ... )\r\n");
}


/*
==================
idCommonLocal::Quit
==================
*/
void idCommonLocal::Quit( void ) {
    Sys_Printf("void idCommonLocal::Quit( void )\r\n");
}



/*
============================================================================

COMMAND LINE FUNCTIONS

+ characters separate the commandLine string into multiple console
command lines.

All of these are valid:

doom +set test blah +map test
doom set test blah+map test
doom set test blah + map test

============================================================================
*/

#define		MAX_CONSOLE_LINES	32
int			com_numConsoleLines;
idCmdArgs	com_consoleLines[MAX_CONSOLE_LINES];

/*
==================
idCommonLocal::ParseCommandLine
==================
*/
void idCommonLocal::ParseCommandLine( int argc, const char **argv ) {
    Sys_Printf("void idCommonLocal::ParseCommandLine( int argc, const char **argv )\r\n");
}


/*
==================
idCommonLocal::ClearCommandLine
==================
*/
void idCommonLocal::ClearCommandLine( void ) {
    Sys_Printf("void idCommonLocal::ClearCommandLine( void )\r\n");
}


/*
==================
idCommonLocal::SafeMode

Check for "safe" on the command line, which will
skip loading of config file (DoomConfig.cfg)
==================
*/
bool idCommonLocal::SafeMode( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCommonLocal::SafeMode( void )\r\n");
    return retVal;
}


/*
==================
idCommonLocal::CheckToolMode

Check for "renderbump", "dmap", or "editor" on the command line,
and force fullscreen off in those cases
==================
*/
void idCommonLocal::CheckToolMode( void ) {
    Sys_Printf("void idCommonLocal::CheckToolMode( void )\r\n");
}


/*
==================
idCommonLocal::StartupVariable

Searches for command line parameters that are set commands.
If match is not NULL, only that cvar will be looked for.
That is necessary because cddir and basedir need to be set
before the filesystem is started, but all other sets should
be after execing the config and default.
==================
*/
void idCommonLocal::StartupVariable( const char *match, bool once ) {
    Sys_Printf("void idCommonLocal::StartupVariable( const char *match, bool once )\r\n");
}


/*
==================
idCommonLocal::AddStartupCommands

Adds command line parameters as script statements
Commands are separated by + signs

Returns true if any late commands were added, which
will keep the demoloop from immediately starting
==================
*/
bool idCommonLocal::AddStartupCommands( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCommonLocal::AddStartupCommands( void )\r\n");
    return retVal;
}


/*
=================
idCommonLocal::InitTool
=================
*/
void idCommonLocal::InitTool( const toolFlag_t tool, const idDict *dict ) {
    Sys_Printf("void idCommonLocal::InitTool( const toolFlag_t tool, const idDict *dict )\r\n");
}


/*
==================
idCommonLocal::ActivateTool

Activates or Deactivates a tool
==================
*/
void idCommonLocal::ActivateTool( bool active ) {
    Sys_Printf("void idCommonLocal::ActivateTool( bool active )\r\n");
}


/*
==================
idCommonLocal::WriteFlaggedCVarsToFile
==================
*/
void idCommonLocal::WriteFlaggedCVarsToFile( const char *filename, int flags, const char *setCmd ) {
    Sys_Printf("void idCommonLocal::WriteFlaggedCVarsToFile( const char *filename, int flags, const char *setCmd )\r\n");
}


/*
==================
idCommonLocal::WriteConfigToFile
==================
*/
void idCommonLocal::WriteConfigToFile( const char *filename ) {
    Sys_Printf("void idCommonLocal::WriteConfigToFile( const char *filename )\r\n");
}


/*
===============
idCommonLocal::WriteConfiguration

Writes key bindings and archived cvars to config file if modified
===============
*/
void idCommonLocal::WriteConfiguration( void ) {
    Sys_Printf("void idCommonLocal::WriteConfiguration( void )\r\n");
}


/*
===============
KeysFromBinding()
Returns the key bound to the command
===============
*/
const char* idCommonLocal::KeysFromBinding( const char *bind ) {
    Sys_Printf("char* idCommonLocal::KeysFromBinding( const char *bind )\r\n");
    return NULL;
}


/*
===============
BindingFromKey()
Returns the binding bound to key
===============
*/
const char* idCommonLocal::BindingFromKey( const char *key ) {
    Sys_Printf("char* idCommonLocal::BindingFromKey( const char *key )\r\n");
    return NULL;
}


/*
===============
ButtonState()
Returns the state of the button
===============
*/
int	idCommonLocal::ButtonState( int key ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidCommonLocal::ButtonState( int key )\r\n");
    return retVal;
}


/*
===============
ButtonState()
Returns the state of the key
===============
*/
int	idCommonLocal::KeyState( int key ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidCommonLocal::KeyState( int key )\r\n");
    return retVal;
}


//============================================================================

#ifdef ID_ALLOW_TOOLS
/*
==================
Com_Editor_f

  we can start the editor dynamically, but we won't ever get back
==================
*/
static void Com_Editor_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_Editor_f( const idCmdArgs &args )\r\n");
}


/*
=============
Com_ScriptDebugger_f
=============
*/
static void Com_ScriptDebugger_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_ScriptDebugger_f( const idCmdArgs &args )\r\n");
}


/*
=============
Com_EditGUIs_f
=============
*/
static void Com_EditGUIs_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_EditGUIs_f( const idCmdArgs &args )\r\n");
}


/*
=============
Com_MaterialEditor_f
=============
*/
static void Com_MaterialEditor_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_MaterialEditor_f( const idCmdArgs &args )\r\n");
}

#endif // ID_ALLOW_TOOLS

/*
============
idCmdSystemLocal::PrintMemInfo_f

This prints out memory debugging data
============
*/
static void PrintMemInfo_f( const idCmdArgs &args ) {
    Sys_Printf("void PrintMemInfo_f( const idCmdArgs &args )\r\n");
}


#ifdef ID_ALLOW_TOOLS
/*
==================
Com_EditLights_f
==================
*/
static void Com_EditLights_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_EditLights_f( const idCmdArgs &args )\r\n");
}


/*
==================
Com_EditSounds_f
==================
*/
static void Com_EditSounds_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_EditSounds_f( const idCmdArgs &args )\r\n");
}


/*
==================
Com_EditDecls_f
==================
*/
static void Com_EditDecls_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_EditDecls_f( const idCmdArgs &args )\r\n");
}


/*
==================
Com_EditAFs_f
==================
*/
static void Com_EditAFs_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_EditAFs_f( const idCmdArgs &args )\r\n");
}


/*
==================
Com_EditParticles_f
==================
*/
static void Com_EditParticles_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_EditParticles_f( const idCmdArgs &args )\r\n");
}


/*
==================
Com_EditScripts_f
==================
*/
static void Com_EditScripts_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_EditScripts_f( const idCmdArgs &args )\r\n");
}


/*
==================
Com_EditPDAs_f
==================
*/
static void Com_EditPDAs_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_EditPDAs_f( const idCmdArgs &args )\r\n");
}

#endif // ID_ALLOW_TOOLS

/*
==================
Com_Error_f

Just throw a fatal error to test error shutdown procedures.
==================
*/
static void Com_Error_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_Error_f( const idCmdArgs &args )\r\n");
}


/*
==================
Com_Freeze_f

Just freeze in place for a given number of seconds to test error recovery.
==================
*/
static void Com_Freeze_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_Freeze_f( const idCmdArgs &args )\r\n");
}


/*
=================
Com_Crash_f

A way to force a bus error for development reasons
=================
*/
static void Com_Crash_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_Crash_f( const idCmdArgs &args )\r\n");
}


/*
=================
Com_Quit_f
=================
*/
static void Com_Quit_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_Quit_f( const idCmdArgs &args )\r\n");
}


/*
===============
Com_WriteConfig_f

Write the config file to a specific name
===============
*/
void Com_WriteConfig_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_WriteConfig_f( const idCmdArgs &args )\r\n");
}


/*
=================
Com_SetMachineSpecs_f
=================
*/
void Com_SetMachineSpec_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_SetMachineSpec_f( const idCmdArgs &args )\r\n");
}


/*
=================
Com_ExecMachineSpecs_f
=================
*/
#ifdef MACOS_X
void OSX_GetVideoCard( int& outVendorId, int& outDeviceId );
bool OSX_GetCPUIdentification( int& cpuId, bool& oldArchitecture );
#endif
void Com_ExecMachineSpec_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_ExecMachineSpec_f( const idCmdArgs &args )\r\n");
}


/*
=================
Com_ReloadEngine_f
=================
*/
void Com_ReloadEngine_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_ReloadEngine_f( const idCmdArgs &args )\r\n");
}


/*
===============
idCommonLocal::GetLanguageDict
===============
*/
const idLangDict *idCommonLocal::GetLanguageDict( void ) {
    Sys_Printf("idLangDict *idCommonLocal::GetLanguageDict( void )\r\n");
    return NULL;
}


/*
===============
idCommonLocal::FilterLangList
===============
*/
void idCommonLocal::FilterLangList( idStrList* list, idStr lang ) {
    Sys_Printf("void idCommonLocal::FilterLangList( idStrList* list, idStr lang )\r\n");
}


/*
===============
idCommonLocal::InitLanguageDict
===============
*/
void idCommonLocal::InitLanguageDict( void ) {
    Sys_Printf("void idCommonLocal::InitLanguageDict( void )\r\n");
}


/*
===============
idCommonLocal::LocalizeSpecificMapData
===============
*/
void idCommonLocal::LocalizeSpecificMapData( const char *fileName, idLangDict &langDict, const idLangDict &replaceArgs ) {
    Sys_Printf("void idCommonLocal::LocalizeSpecificMapData( const char *fileName, idLangDict &langDict, const idLangDict &replaceArgs )\r\n");
}


/*
===============
idCommonLocal::LocalizeMapData
===============
*/
void idCommonLocal::LocalizeMapData( const char *fileName, idLangDict &langDict ) {
    Sys_Printf("void idCommonLocal::LocalizeMapData( const char *fileName, idLangDict &langDict )\r\n");
}


/*
===============
idCommonLocal::LocalizeGui
===============
*/
void idCommonLocal::LocalizeGui( const char *fileName, idLangDict &langDict ) {
    Sys_Printf("void idCommonLocal::LocalizeGui( const char *fileName, idLangDict &langDict )\r\n");
}


/*
=================
ReloadLanguage_f
=================
*/
void Com_ReloadLanguage_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_ReloadLanguage_f( const idCmdArgs &args )\r\n");
}


typedef idHashTable<idStrList> ListHash;
void LoadMapLocalizeData(ListHash& listHash) {
    Sys_Printf("void LoadMapLocalizeData(ListHash& listHash)\r\n");
}


void LoadGuiParmExcludeList(idStrList& list) {
    Sys_Printf("void LoadGuiParmExcludeList(idStrList& list)\r\n");
}


bool TestMapVal(idStr& str) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool TestMapVal(idStr& str)\r\n");
    return retVal;
}


bool TestGuiParm(const char* parm, const char* value, idStrList& excludeList) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool TestGuiParm(const char* parm, const char* value, idStrList& excludeList)\r\n");
    return retVal;
}


void GetFileList(const char* dir, const char* ext, idStrList& list) {
    Sys_Printf("void GetFileList(const char* dir, const char* ext, idStrList& list)\r\n");
}


int LocalizeMap(const char* mapName, idLangDict &langDict, ListHash& listHash, idStrList& excludeList, bool writeFile) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int LocalizeMap(const char* mapName, idLangDict &langDict, ListHash& listHash, idStrList& excludeList, bool writeFile)\r\n");
    return retVal;
}


/*
=================
LocalizeMaps_f
=================
*/
void Com_LocalizeMaps_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_LocalizeMaps_f( const idCmdArgs &args )\r\n");
}


/*
=================
LocalizeGuis_f
=================
*/
void Com_LocalizeGuis_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_LocalizeGuis_f( const idCmdArgs &args )\r\n");
}


void Com_LocalizeGuiParmsTest_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_LocalizeGuiParmsTest_f( const idCmdArgs &args )\r\n");
}



void Com_LocalizeMapsTest_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_LocalizeMapsTest_f( const idCmdArgs &args )\r\n");
}


/*
=================
Com_StartBuild_f
=================
*/
void Com_StartBuild_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_StartBuild_f( const idCmdArgs &args )\r\n");
}


/*
=================
Com_FinishBuild_f
=================
*/
void Com_FinishBuild_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_FinishBuild_f( const idCmdArgs &args )\r\n");
}


/*
==============
Com_Help_f
==============
*/
void Com_Help_f( const idCmdArgs &args ) {
    Sys_Printf("void Com_Help_f( const idCmdArgs &args )\r\n");
}


/*
=================
idCommonLocal::InitCommands
=================
*/
void idCommonLocal::InitCommands( void ) {
    Sys_Printf("void idCommonLocal::InitCommands( void )\r\n");
}


/*
=================
idCommonLocal::InitRenderSystem
=================
*/
void idCommonLocal::InitRenderSystem( void ) {
    Sys_Printf("void idCommonLocal::InitRenderSystem( void )\r\n");
}


/*
=================
idCommonLocal::PrintLoadingMessage
=================
*/
void idCommonLocal::PrintLoadingMessage( const char *msg ) {
    Sys_Printf("void idCommonLocal::PrintLoadingMessage( const char *msg )\r\n");
}


/*
=================
idCommonLocal::InitSIMD
=================
*/
void idCommonLocal::InitSIMD( void ) {
    Sys_Printf("void idCommonLocal::InitSIMD( void )\r\n");
}


/*
=================
idCommonLocal::Frame
=================
*/
void idCommonLocal::Frame( void ) {
    Sys_Printf("void idCommonLocal::Frame( void )\r\n");
}


/*
=================
idCommonLocal::GUIFrame
=================
*/
void idCommonLocal::GUIFrame( bool execCmd, bool network ) {
    Sys_Printf("void idCommonLocal::GUIFrame( bool execCmd, bool network )\r\n");
}


/*
=================
idCommonLocal::SingleAsyncTic

The system will asyncronously call this function 60 times a second to
handle the time-critical functions that we don't want limited to
the frame rate:

sound mixing
user input generation (conditioned by com_asyncInput)
packet server operation
packet client operation

We are not using thread safe libraries, so any functionality put here must
be VERY VERY careful about what it calls.
=================
*/

typedef struct {
	int				milliseconds;			// should always be incremeting by 60hz
	int				deltaMsec;				// should always be 16
	int				timeConsumed;			// msec spent in Com_AsyncThread()
	int				clientPacketsReceived;
	int				serverPacketsReceived;
	int				mostRecentServerPacketSequence;
} asyncStats_t;

static const int MAX_ASYNC_STATS = 1024;
asyncStats_t	com_asyncStats[MAX_ASYNC_STATS];		// indexed by com_ticNumber
int prevAsyncMsec;
int	lastTicMsec;

void idCommonLocal::SingleAsyncTic( void ) {
    Sys_Printf("void idCommonLocal::SingleAsyncTic( void )\r\n");
}


/*
=================
idCommonLocal::Async
=================
*/
void idCommonLocal::Async( void ) {
    Sys_Printf("void idCommonLocal::Async( void )\r\n");
}


/*
=================
idCommonLocal::LoadGameDLL
=================
*/
void idCommonLocal::LoadGameDLL( void ) {
    Sys_Printf("void idCommonLocal::LoadGameDLL( void )\r\n");
}


/*
=================
idCommonLocal::UnloadGameDLL
=================
*/
void idCommonLocal::UnloadGameDLL( void ) {
    Sys_Printf("void idCommonLocal::UnloadGameDLL( void )\r\n");
}


/*
=================
idCommonLocal::IsInitialized
=================
*/
bool idCommonLocal::IsInitialized( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCommonLocal::IsInitialized( void )\r\n");
    return retVal;
}


/*
=================
idCommonLocal::SetMachineSpec
=================
*/
void idCommonLocal::SetMachineSpec( void ) {
    Sys_Printf("void idCommonLocal::SetMachineSpec( void )\r\n");
}


/*
=================
idCommonLocal::Init
=================
*/
void idCommonLocal::Init( int argc, const char **argv, const char *cmdline ) {
    Sys_Printf("void idCommonLocal::Init( int argc, const char **argv, const char *cmdline )\r\n");
}



/*
=================
idCommonLocal::Shutdown
=================
*/
void idCommonLocal::Shutdown( void ) {
    Sys_Printf("void idCommonLocal::Shutdown( void )\r\n");
}


/*
=================
idCommonLocal::InitGame
=================
*/
void idCommonLocal::InitGame( void ) {
    Sys_Printf("void idCommonLocal::InitGame( void )\r\n");
}


/*
=================
idCommonLocal::ShutdownGame
=================
*/
void idCommonLocal::ShutdownGame( bool reloading ) {
    Sys_Printf("void idCommonLocal::ShutdownGame( bool reloading )\r\n");
}

