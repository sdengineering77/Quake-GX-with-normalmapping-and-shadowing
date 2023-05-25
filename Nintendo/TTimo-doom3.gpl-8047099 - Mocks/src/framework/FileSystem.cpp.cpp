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

#include "Unzip.h"

#ifdef WIN32
	#include <io.h>	// for _read
#else
	#if !__MACH__ && __MWERKS__
		#include <types.h>
		#include <stat.h>
	#else
		#include <sys/types.h>
		#include <sys/stat.h>
	#endif
	#include <unistd.h>
#endif

#if ID_ENABLE_CURL
	#include "../curl/include/curl/curl.h"
#endif

/*
=============================================================================

DOOM FILESYSTEM

All of Doom's data access is through a hierarchical file system, but the contents of 
the file system can be transparently merged from several sources.

A "relativePath" is a reference to game file data, which must include a terminating zero.
"..", "\\", and ":" are explicitly illegal in qpaths to prevent any references
outside the Doom directory system.

The "base path" is the path to the directory holding all the game directories and
usually the executable. It defaults to the current directory, but can be overridden
with "+set fs_basepath c:\doom" on the command line. The base path cannot be modified
at all after startup.

The "save path" is the path to the directory where game files will be saved. It defaults
to the base path, but can be overridden with a "+set fs_savepath c:\doom" on the
command line. Any files that are created during the game (demos, screenshots, etc.) will
be created reletive to the save path.

The "cd path" is the path to an alternate hierarchy that will be searched if a file
is not located in the base path. A user can do a partial install that copies some
data to a base path created on their hard drive and leave the rest on the cd. It defaults
to the current directory, but it can be overridden with "+set fs_cdpath g:\doom" on the
command line.

The "dev path" is the path to an alternate hierarchy where the editors and tools used
during development (Radiant, AF editor, dmap, runAAS) will write files to. It defaults to
the cd path, but can be overridden with a "+set fs_devpath c:\doom" on the command line.

If a user runs the game directly from a CD, the base path would be on the CD. This
should still function correctly, but all file writes will fail (harmlessly).

The "base game" is the directory under the paths where data comes from by default, and
can be either "base" or "demo".

The "current game" may be the same as the base game, or it may be the name of another
directory under the paths that should be searched for files before looking in the base
game. The game directory is set with "+set fs_game myaddon" on the command line. This is
the basis for addons.

No other directories outside of the base game and current game will ever be referenced by
filesystem functions.

To save disk space and speed up file loading, directory trees can be collapsed into zip
files. The files use a ".pk4" extension to prevent users from unzipping them accidentally,
but otherwise they are simply normal zip files. A game directory can have multiple zip
files of the form "pak0.pk4", "pak1.pk4", etc. Zip files are searched in decending order
from the highest number to the lowest, and will always take precedence over the filesystem.
This allows a pk4 distributed as a patch to override all existing data.

Because we will have updated executables freely available online, there is no point to
trying to restrict demo / oem versions of the game with code changes. Demo / oem versions
should be exactly the same executables as release versions, but with different data that
automatically restricts where game media can come from to prevent add-ons from working.

After the paths are initialized, Doom will look for the product.txt file. If not found
and verified, the game will run in restricted mode. In restricted mode, only files
contained in demo/pak0.pk4 will be available for loading, and only if the zip header is
verified to not have been modified. A single exception is made for DoomConfig.cfg. Files
can still be written out in restricted mode, so screenshots and demos are allowed.
Restricted mode can be tested by setting "+set fs_restrict 1" on the command line, even
if there is a valid product.txt under the basepath or cdpath.

If the "fs_copyfiles" cvar is set to 1, then every time a file is sourced from the cd
path, it will be copied over to the save path. This is a development aid to help build
test releases and to copy working sets of files.

If the "fs_copyfiles" cvar is set to 2, any file found in fs_cdpath that is newer than
it's fs_savepath version will be copied to fs_savepath (in addition to the fs_copyfiles 1
behaviour).

If the "fs_copyfiles" cvar is set to 3, files from both basepath and cdpath will be copied
over to the save path. This is useful when copying working sets of files mainly from base
path with an additional cd path (which can be a slower network drive for instance).

If the "fs_copyfiles" cvar is set to 4, files that exist in the cd path but NOT the base path
will be copied to the save path

NOTE: fs_copyfiles and case sensitivity. On fs_caseSensitiveOS 0 filesystems ( win32 ), the
copied files may change casing when copied over.

The relative path "sound/newstuff/test.wav" would be searched for in the following places:

for save path, dev path, base path, cd path:
	for current game, base game:
		search directory
		search zip files

downloaded files, to be written to save path + current game's directory

The filesystem can be safely shutdown and reinitialized with different
basedir / cddir / game combinations, but all other subsystems that rely on it
(sound, video) must also be forced to restart.


"fs_caseSensitiveOS":
This cvar is set on operating systems that use case sensitive filesystems (Linux and OSX)
It is a common situation to have the media reference filenames, whereas the file on disc 
only matches in a case-insensitive way. When "fs_caseSensitiveOS" is set, the filesystem
will always do a case insensitive search.
IMPORTANT: This only applies to files, and not to directories. There is no case-insensitive
matching of directories. All directory names should be lowercase, when "com_developer" is 1,
the filesystem will warn when it catches bad directory situations (regardless of the
"fs_caseSensitiveOS" setting)
When bad casing in directories happen and "fs_caseSensitiveOS" is set, BuildOSPath will
attempt to correct the situation by forcing the path to lowercase. This assumes the media
is stored all lowercase.

"additional mod path search":
fs_game_base can be used to set an additional search path
in search order, fs_game, fs_game_base, BASEGAME
for instance to base a mod of D3 + D3XP assets, fs_game mymod, fs_game_base d3xp

=============================================================================
*/



// define to fix special-cases for GetPackStatus so that files that shipped in 
// the wrong place for Doom 3 don't break pure servers.
#define DOOM3_PURE_SPECIAL_CASES	

typedef bool (*pureExclusionFunc_t)( const struct pureExclusion_s &excl, int l, const idStr &name );

typedef struct pureExclusion_s {
	int					nameLen;
	int					extLen;
	const char *		name;
	const char *		ext;
	pureExclusionFunc_t	func;
} pureExclusion_t;

bool excludeExtension( const pureExclusion_t &excl, int l, const idStr &name ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool excludeExtension( const pureExclusion_t &excl, int l, const idStr &name )\r\n");
    return retVal;
}


bool excludePathPrefixAndExtension( const pureExclusion_t &excl, int l, const idStr &name ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool excludePathPrefixAndExtension( const pureExclusion_t &excl, int l, const idStr &name )\r\n");
    return retVal;
}


bool excludeFullName( const pureExclusion_t &excl, int l, const idStr &name ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool excludeFullName( const pureExclusion_t &excl, int l, const idStr &name )\r\n");
    return retVal;
}


static pureExclusion_t pureExclusions[] = {
	{ 0,	0,	NULL,											"/",		excludeExtension },
	{ 0,	0,	NULL,											"\\",		excludeExtension },
	{ 0,	0,	NULL,											".pda",		excludeExtension },
	{ 0,	0,	NULL,											".gui",		excludeExtension },
	{ 0,	0,	NULL,											".pd",		excludeExtension },
	{ 0,	0,	NULL,											".lang",	excludeExtension },
	{ 0,	0,	"sound/VO",										".ogg",		excludePathPrefixAndExtension },
	{ 0,	0,	"sound/VO",										".wav",		excludePathPrefixAndExtension },
#if	defined DOOM3_PURE_SPECIAL_CASES	
	// add any special-case files or paths for pure servers here
	{ 0,	0,	"sound/ed/marscity/vo_intro_cutscene.ogg",		NULL,		excludeFullName },
	{ 0,	0,	"sound/weapons/soulcube/energize_01.ogg",		NULL,		excludeFullName },
	{ 0,	0,	"sound/xian/creepy/vocal_fx",					".ogg",		excludePathPrefixAndExtension },
	{ 0,	0,	"sound/xian/creepy/vocal_fx",					".wav",		excludePathPrefixAndExtension },
	{ 0,	0,	"sound/feedback",								".ogg",		excludePathPrefixAndExtension },
	{ 0,	0,	"sound/feedback",								".wav",		excludePathPrefixAndExtension },
	{ 0,	0,	"guis/assets/mainmenu/chnote.tga",				NULL,		excludeFullName },
	{ 0,	0,	"sound/levels/alphalabs2/uac_better_place.ogg",	NULL,		excludeFullName },
	{ 0,	0,	"textures/bigchars.tga",						NULL,		excludeFullName },
	{ 0,	0,	"dds/textures/bigchars.dds",					NULL,		excludeFullName },
	{ 0,	0,	"fonts",										".tga",		excludePathPrefixAndExtension },
	{ 0,	0,	"dds/fonts",									".dds",		excludePathPrefixAndExtension },
	{ 0,	0,	"default.cfg",									NULL,		excludeFullName },
	// russian zpak001.pk4
	{ 0,	0,  "fonts",										".dat",		excludePathPrefixAndExtension },
	{ 0,	0,	"guis/temp.guied",								NULL,		excludeFullName },
#endif
	{ 0,	0,	NULL,											NULL,		NULL }
};

// ensures that lengths for pure exclusions are correct
class idInitExclusions {
public:
	idInitExclusions() {
		for ( int i = 0; pureExclusions[i].func != NULL; i++ ) {
			if ( pureExclusions[i].name ) {
				pureExclusions[i].nameLen = idStr::Length( pureExclusions[i].name );
			}
			if ( pureExclusions[i].ext ) {
				pureExclusions[i].extLen = idStr::Length( pureExclusions[i].ext );
			}
		}
	}
};

static idInitExclusions	initExclusions;

#define MAX_ZIPPED_FILE_NAME	2048
#define FILE_HASH_SIZE			1024

typedef struct fileInPack_s {
	idStr				name;						// name of the file
	unsigned long		pos;						// file info position in zip
	struct fileInPack_s * next;						// next file in the hash
} fileInPack_t;

typedef enum {
	BINARY_UNKNOWN = 0,
	BINARY_YES,
	BINARY_NO
} binaryStatus_t;

typedef enum {
	PURE_UNKNOWN = 0,	// need to run the pak through GetPackStatus
	PURE_NEUTRAL,	// neutral regarding pureness. gets in the pure list if referenced
	PURE_ALWAYS,	// always referenced - for pak* named files, unless NEVER
	PURE_NEVER		// VO paks. may be referenced, won't be in the pure lists
} pureStatus_t;

typedef struct {
	idList<int>			depends;
	idList<idDict *>	mapDecls;
} addonInfo_t;

typedef struct {
	idStr				pakFilename;				// c:\doom\base\pak0.pk4
	unzFile				handle;
	int					checksum;
	int					numfiles;
	int					length;
	bool				referenced;
	binaryStatus_t		binary;
	bool				addon;						// this is an addon pack - addon_search tells if it's 'active'
	bool				addon_search;				// is in the search list
	addonInfo_t			*addon_info;
	pureStatus_t		pureStatus;
	bool				isNew;						// for downloaded paks
	fileInPack_t		*hashTable[FILE_HASH_SIZE];
	fileInPack_t		*buildBuffer;
} pack_t;

typedef struct {
	idStr				path;						// c:\doom
	idStr				gamedir;					// base
} directory_t;

typedef struct searchpath_s {
	pack_t *			pack;						// only one of pack / dir will be non NULL
	directory_t *		dir;
	struct searchpath_s *next;
} searchpath_t;

// search flags when opening a file
#define FSFLAG_SEARCH_DIRS		( 1 << 0 )
#define FSFLAG_SEARCH_PAKS		( 1 << 1 )
#define FSFLAG_PURE_NOREF		( 1 << 2 )
#define FSFLAG_BINARY_ONLY		( 1 << 3 )
#define FSFLAG_SEARCH_ADDONS	( 1 << 4 )

// 3 search path (fs_savepath fs_basepath fs_cdpath)
// + .jpg and .tga
#define MAX_CACHED_DIRS 6

// how many OSes to handle game paks for ( we don't have to know them precisely )
#define MAX_GAME_OS	6
#define BINARY_CONFIG "binary.conf"
#define ADDON_CONFIG "addon.conf"

class idDEntry : public idStrList {
public:
						idDEntry() {}
	virtual				~idDEntry() {
    virtual retVal;
    memset(&retVal, 0, sizeof(virtual));
    Sys_Printf("virtual~idDEntry()\r\n");
    return retVal;
}


	bool				Matches( const char *directory, const char *extension ) const;
	void				Init( const char *directory, const char *extension, const idStrList &list );
	void				Clear( void );

private:
	idStr				directory;
	idStr				extension;
};

class idFileSystemLocal : public idFileSystem {
public:
							idFileSystemLocal( void );

	virtual void			Init( void );
	virtual void			StartBackgroundDownloadThread( void );
	virtual void			Restart( void );
	virtual void			Shutdown( bool reloading );
	virtual bool			IsInitialized( void ) const;
	virtual bool			PerformingCopyFiles( void ) const;
	virtual idModList *		ListMods( void );
	virtual void			FreeModList( idModList *modList );
	virtual idFileList *	ListFiles( const char *relativePath, const char *extension, bool sort = false, bool fullRelativePath = false, const char* gamedir = NULL );
	virtual idFileList *	ListFilesTree( const char *relativePath, const char *extension, bool sort = false, const char* gamedir = NULL );
	virtual void			FreeFileList( idFileList *fileList );
	virtual const char *	OSPathToRelativePath( const char *OSPath );
	virtual const char *	RelativePathToOSPath( const char *relativePath, const char *basePath );
	virtual const char *	BuildOSPath( const char *base, const char *game, const char *relativePath );
	virtual void			CreateOSPath( const char *OSPath );
	virtual bool			FileIsInPAK( const char *relativePath );
	virtual void			UpdatePureServerChecksums( void );
	virtual bool			UpdateGamePakChecksums( void );
	virtual fsPureReply_t	SetPureServerChecksums( const int pureChecksums[ MAX_PURE_PAKS ], int gamePakChecksum, int missingChecksums[ MAX_PURE_PAKS ], int *missingGamePakChecksum );
	virtual void			GetPureServerChecksums( int checksums[ MAX_PURE_PAKS ], int OS, int *gamePakChecksum );
	virtual void			SetRestartChecksums( const int pureChecksums[ MAX_PURE_PAKS ], int gamePakChecksum );
	virtual	void			ClearPureChecksums( void );
	virtual int				GetOSMask( void );
	virtual int				ReadFile( const char *relativePath, void **buffer, ID_TIME_T *timestamp );
	virtual void			FreeFile( void *buffer );
	virtual int				WriteFile( const char *relativePath, const void *buffer, int size, const char *basePath = "fs_savepath" );
	virtual void			RemoveFile( const char *relativePath );	
	virtual idFile *		OpenFileReadFlags( const char *relativePath, int searchFlags, pack_t **foundInPak = NULL, bool allowCopyFiles = true, const char* gamedir = NULL );
	virtual idFile *		OpenFileRead( const char *relativePath, bool allowCopyFiles = true, const char* gamedir = NULL );
	virtual idFile *		OpenFileWrite( const char *relativePath, const char *basePath = "fs_savepath" );
	virtual idFile *		OpenFileAppend( const char *relativePath, bool sync = false, const char *basePath = "fs_basepath"   );
	virtual idFile *		OpenFileByMode( const char *relativePath, fsMode_t mode );
	virtual idFile *		OpenExplicitFileRead( const char *OSPath );
	virtual idFile *		OpenExplicitFileWrite( const char *OSPath );
	virtual void			CloseFile( idFile *f );
	virtual void			BackgroundDownload( backgroundDownload_t *bgl );
	virtual void			ResetReadCount( void ) {
    Sys_Printf("voidResetReadCount( void )\r\n");
}

	virtual void			AddToReadCount( int c ) {
    Sys_Printf("voidAddToReadCount( int c )\r\n");
}

	virtual int				GetReadCount( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intGetReadCount( void )\r\n");
    return retVal;
}

	virtual void			FindDLL( const char *basename, char dllPath[ MAX_OSPATH ], bool updateChecksum );
	virtual void			ClearDirCache( void );
	virtual bool			HasD3XP( void );
	virtual bool			RunningD3XP( void );
	virtual void			CopyFile( const char *fromOSPath, const char *toOSPath );
	virtual int				ValidateDownloadPakForChecksum( int checksum, char path[ MAX_STRING_CHARS ], bool isBinary );
	virtual idFile *		MakeTemporaryFile( void );
	virtual int				AddZipFile( const char *path );
	virtual findFile_t		FindFile( const char *path, bool scheduleAddons );
	virtual int				GetNumMaps();
	virtual const idDict *	GetMapDecl( int i );
	virtual void			FindMapScreenshot( const char *path, char *buf, int len );
	virtual bool			FilenameCompare( const char *s1, const char *s2 ) const;

	static void				Dir_f( const idCmdArgs &args );
	static void				DirTree_f( const idCmdArgs &args );
	static void				Path_f( const idCmdArgs &args );
	static void				TouchFile_f( const idCmdArgs &args );
	static void				TouchFileList_f( const idCmdArgs &args );

private:
	friend dword 			BackgroundDownloadThread( void *parms );

	searchpath_t *			searchPaths;
	int						readCount;			// total bytes read
	int						loadCount;			// total files read
	int						loadStack;			// total files in memory
	idStr					gameFolder;			// this will be a single name without separators

	searchpath_t			*addonPaks;			// not loaded up, but we saw them

	idDict					mapDict;			// for GetMapDecl

	static idCVar			fs_debug;
	static idCVar			fs_restrict;
	static idCVar			fs_copyfiles;
	static idCVar			fs_basepath;
	static idCVar			fs_savepath;
	static idCVar			fs_cdpath;
	static idCVar			fs_devpath;
	static idCVar			fs_game;
	static idCVar			fs_game_base;
	static idCVar			fs_caseSensitiveOS;
	static idCVar			fs_searchAddons;

	backgroundDownload_t *	backgroundDownloads;
	backgroundDownload_t	defaultBackgroundDownload;
	xthreadInfo				backgroundThread;

	idList<pack_t *>		serverPaks;
	bool					loadedFileFromDir;		// set to true once a file was loaded from a directory - can't switch to pure anymore
	idList<int>				restartChecksums;		// used during a restart to set things in right order
	idList<int>				addonChecksums;			// list of checksums that should go to the search list directly ( for restarts )
	int						restartGamePakChecksum;
	int						gameDLLChecksum;		// the checksum of the last loaded game DLL
	int						gamePakChecksum;		// the checksum of the pak holding the loaded game DLL

	int						gamePakForOS[ MAX_GAME_OS ];

	idDEntry				dir_cache[ MAX_CACHED_DIRS ]; // fifo
	int						dir_cache_index;
	int						dir_cache_count;

	int						d3xp;	// 0: didn't check, -1: not installed, 1: installed

private:
	void					ReplaceSeparators( idStr &path, char sep = PATHSEPERATOR_CHAR );
	long					HashFileName( const char *fname ) const;
	int						ListOSFiles( const char *directory, const char *extension, idStrList &list );
	FILE *					OpenOSFile( const char *name, const char *mode, idStr *caseSensitiveName = NULL );
	FILE *					OpenOSFileCorrectName( idStr &path, const char *mode );
	int						DirectFileLength( FILE *o );
	void					CopyFile( idFile *src, const char *toOSPath );
	int						AddUnique( const char *name, idStrList &list, idHashIndex &hashIndex ) const;
	void					GetExtensionList( const char *extension, idStrList &extensionList ) const;
	int						GetFileList( const char *relativePath, const idStrList &extensions, idStrList &list, idHashIndex &hashIndex, bool fullRelativePath, const char* gamedir = NULL );

	int						GetFileListTree( const char *relativePath, const idStrList &extensions, idStrList &list, idHashIndex &hashIndex, const char* gamedir = NULL );
	pack_t *				LoadZipFile( const char *zipfile );
	void					AddGameDirectory( const char *path, const char *dir );
	void					SetupGameDirectories( const char *gameName );
	void					Startup( void );
	void					SetRestrictions( void );
							// some files can be obtained from directories without compromising si_pure
	bool					FileAllowedFromDir( const char *path );
							// searches all the paks, no pure check
	pack_t *				GetPackForChecksum( int checksum, bool searchAddons = false );
							// searches all the paks, no pure check
	pack_t *				FindPakForFileChecksum( const char *relativePath, int fileChecksum, bool bReference );
	idFile_InZip *			ReadFileFromZip( pack_t *pak, fileInPack_t *pakFile, const char *relativePath );
	int						GetFileChecksum( idFile *file );
	pureStatus_t			GetPackStatus( pack_t *pak );
	addonInfo_t *			ParseAddonDef( const char *buf, const int len );
	void					FollowAddonDependencies( pack_t *pak );

	static size_t			CurlWriteFunction( void *ptr, size_t size, size_t nmemb, void *stream );
							// curl_progress_callback in curl.h
	static int				CurlProgressFunction( void *clientp, double dltotal, double dlnow, double ultotal, double ulnow );
};

idCVar	idFileSystemLocal::fs_restrict( "fs_restrict", "", CVAR_SYSTEM | CVAR_INIT | CVAR_BOOL, "" );
idCVar	idFileSystemLocal::fs_debug( "fs_debug", "0", CVAR_SYSTEM | CVAR_INTEGER, "", 0, 2, idCmdSystem::ArgCompletion_Integer<0,2> );
idCVar	idFileSystemLocal::fs_copyfiles( "fs_copyfiles", "0", CVAR_SYSTEM | CVAR_INIT | CVAR_INTEGER, "", 0, 4, idCmdSystem::ArgCompletion_Integer<0,3> );
idCVar	idFileSystemLocal::fs_basepath( "fs_basepath", "", CVAR_SYSTEM | CVAR_INIT, "" );
idCVar	idFileSystemLocal::fs_savepath( "fs_savepath", "", CVAR_SYSTEM | CVAR_INIT, "" );
idCVar	idFileSystemLocal::fs_cdpath( "fs_cdpath", "", CVAR_SYSTEM | CVAR_INIT, "" );
idCVar	idFileSystemLocal::fs_devpath( "fs_devpath", "", CVAR_SYSTEM | CVAR_INIT, "" );
idCVar	idFileSystemLocal::fs_game( "fs_game", "", CVAR_SYSTEM | CVAR_INIT | CVAR_SERVERINFO, "mod path" );
idCVar  idFileSystemLocal::fs_game_base( "fs_game_base", "", CVAR_SYSTEM | CVAR_INIT | CVAR_SERVERINFO, "alternate mod path, searched after the main fs_game path, before the basedir" );
#ifdef WIN32
idCVar	idFileSystemLocal::fs_caseSensitiveOS( "fs_caseSensitiveOS", "0", CVAR_SYSTEM | CVAR_BOOL, "" );
#else
idCVar	idFileSystemLocal::fs_caseSensitiveOS( "fs_caseSensitiveOS", "1", CVAR_SYSTEM | CVAR_BOOL, "" );
#endif
idCVar	idFileSystemLocal::fs_searchAddons( "fs_searchAddons", "0", CVAR_SYSTEM | CVAR_BOOL, "search all addon pk4s ( disables addon functionality )" );

idFileSystemLocal	fileSystemLocal;
idFileSystem *		fileSystem = &fileSystemLocal;

/*
================
idFileSystemLocal::idFileSystemLocal
================
*/
idFileSystemLocal::idFileSystemLocal( void ) {
	searchPaths = NULL;
	readCount = 0;
	loadCount = 0;
	loadStack = 0;
	dir_cache_index = 0;
	dir_cache_count = 0;
	d3xp = 0;
	loadedFileFromDir = false;
	restartGamePakChecksum = 0;
	memset( &backgroundThread, 0, sizeof( backgroundThread ) );
	addonPaks = NULL;
}

/*
================
idFileSystemLocal::HashFileName

return a hash value for the filename
================
*/
long idFileSystemLocal::HashFileName( const char *fname ) const {
    long retVal;
    memset(&retVal, 0, sizeof(long));
    Sys_Printf("long idFileSystemLocal::HashFileName( const char *fname )\r\n");
    return retVal;
}


/*
===========
idFileSystemLocal::FilenameCompare

Ignore case and separator char distinctions
===========
*/
bool idFileSystemLocal::FilenameCompare( const char *s1, const char *s2 ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFileSystemLocal::FilenameCompare( const char *s1, const char *s2 )\r\n");
    return retVal;
}


/*
================
idFileSystemLocal::OpenOSFile
optional caseSensitiveName is set to case sensitive file name as found on disc (fs_caseSensitiveOS only)
================
*/
FILE *idFileSystemLocal::OpenOSFile( const char *fileName, const char *mode, idStr *caseSensitiveName ) {
    Sys_Printf("FILE *idFileSystemLocal::OpenOSFile( const char *fileName, const char *mode, idStr *caseSensitiveName )\r\n");
    return NULL;
}


/*
================
idFileSystemLocal::OpenOSFileCorrectName
================
*/
FILE *idFileSystemLocal::OpenOSFileCorrectName( idStr &path, const char *mode ) {
    Sys_Printf("FILE *idFileSystemLocal::OpenOSFileCorrectName( idStr &path, const char *mode )\r\n");
    return NULL;
}


/*
================
idFileSystemLocal::DirectFileLength
================
*/
int idFileSystemLocal::DirectFileLength( FILE *o ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFileSystemLocal::DirectFileLength( FILE *o )\r\n");
    return retVal;
}


/*
============
idFileSystemLocal::CreateOSPath

Creates any directories needed to store the given filename
============
*/
void idFileSystemLocal::CreateOSPath( const char *OSPath ) {
    Sys_Printf("void idFileSystemLocal::CreateOSPath( const char *OSPath )\r\n");
}


/*
=================
idFileSystemLocal::CopyFile

Copy a fully specified file from one place to another
=================
*/
void idFileSystemLocal::CopyFile( const char *fromOSPath, const char *toOSPath ) {
    Sys_Printf("void idFileSystemLocal::CopyFile( const char *fromOSPath, const char *toOSPath )\r\n");
}


/*
=================
idFileSystemLocal::CopyFile
=================
*/
void idFileSystemLocal::CopyFile( idFile *src, const char *toOSPath ) {
    Sys_Printf("void idFileSystemLocal::CopyFile( idFile *src, const char *toOSPath )\r\n");
}


/*
====================
idFileSystemLocal::ReplaceSeparators

Fix things up differently for win/unix/mac
====================
*/
void idFileSystemLocal::ReplaceSeparators( idStr &path, char sep ) {
    Sys_Printf("void idFileSystemLocal::ReplaceSeparators( idStr &path, char sep )\r\n");
}


/*
===================
idFileSystemLocal::BuildOSPath
===================
*/
const char *idFileSystemLocal::BuildOSPath( const char *base, const char *game, const char *relativePath ) {
    Sys_Printf("char *idFileSystemLocal::BuildOSPath( const char *base, const char *game, const char *relativePath )\r\n");
    return NULL;
}


/*
================
idFileSystemLocal::OSPathToRelativePath

takes a full OS path, as might be found in data from a media creation
program, and converts it to a relativePath by stripping off directories

Returns false if the osPath tree doesn't match any of the existing
search paths.

================
*/
const char *idFileSystemLocal::OSPathToRelativePath( const char *OSPath ) {
    Sys_Printf("char *idFileSystemLocal::OSPathToRelativePath( const char *OSPath )\r\n");
    return NULL;
}


/*
=====================
idFileSystemLocal::RelativePathToOSPath

Returns a fully qualified path that can be used with stdio libraries
=====================
*/
const char *idFileSystemLocal::RelativePathToOSPath( const char *relativePath, const char *basePath ) {
    Sys_Printf("char *idFileSystemLocal::RelativePathToOSPath( const char *relativePath, const char *basePath )\r\n");
    return NULL;
}


/*
=================
idFileSystemLocal::RemoveFile
=================
*/
void idFileSystemLocal::RemoveFile( const char *relativePath ) {
    Sys_Printf("void idFileSystemLocal::RemoveFile( const char *relativePath )\r\n");
}


/*
================
idFileSystemLocal::FileIsInPAK
================
*/
bool idFileSystemLocal::FileIsInPAK( const char *relativePath ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFileSystemLocal::FileIsInPAK( const char *relativePath )\r\n");
    return retVal;
}


/*
============
idFileSystemLocal::ReadFile

Filename are relative to the search path
a null buffer will just return the file length and time without loading
timestamp can be NULL if not required
============
*/
int idFileSystemLocal::ReadFile( const char *relativePath, void **buffer, ID_TIME_T *timestamp ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFileSystemLocal::ReadFile( const char *relativePath, void **buffer, ID_TIME_T *timestamp )\r\n");
    return retVal;
}


/*
=============
idFileSystemLocal::FreeFile
=============
*/
void idFileSystemLocal::FreeFile( void *buffer ) {
    Sys_Printf("void idFileSystemLocal::FreeFile( void *buffer )\r\n");
}


/*
============
idFileSystemLocal::WriteFile

Filenames are relative to the search path
============
*/
int idFileSystemLocal::WriteFile( const char *relativePath, const void *buffer, int size, const char *basePath ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFileSystemLocal::WriteFile( const char *relativePath, const void *buffer, int size, const char *basePath )\r\n");
    return retVal;
}


/*
=================
idFileSystemLocal::ParseAddonDef
=================
*/
addonInfo_t *idFileSystemLocal::ParseAddonDef( const char *buf, const int len ) {
    Sys_Printf("addonInfo_t *idFileSystemLocal::ParseAddonDef( const char *buf, const int len )\r\n");
    return NULL;
}


/*
=================
idFileSystemLocal::LoadZipFile
=================
*/
pack_t *idFileSystemLocal::LoadZipFile( const char *zipfile ) {
    Sys_Printf("pack_t *idFileSystemLocal::LoadZipFile( const char *zipfile )\r\n");
    return NULL;
}


/*
===============
idFileSystemLocal::AddZipFile
adds a downloaded pak file to the list so we can work out what we have and what we still need
the isNew flag is set to true, indicating that we cannot add this pak to the search lists without a restart
===============
*/
int idFileSystemLocal::AddZipFile( const char *path ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFileSystemLocal::AddZipFile( const char *path )\r\n");
    return retVal;
}


/*
===============
idFileSystemLocal::AddUnique
===============
*/
int idFileSystemLocal::AddUnique( const char *name, idStrList &list, idHashIndex &hashIndex ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFileSystemLocal::AddUnique( const char *name, idStrList &list, idHashIndex &hashIndex )\r\n");
    return retVal;
}


/*
===============
idFileSystemLocal::GetExtensionList
===============
*/
void idFileSystemLocal::GetExtensionList( const char *extension, idStrList &extensionList ) const {
    Sys_Printf("void idFileSystemLocal::GetExtensionList( const char *extension, idStrList &extensionList )\r\n");
}


/*
===============
idFileSystemLocal::GetFileList

Does not clear the list first so this can be used to progressively build a file list.
When 'sort' is true only the new files added to the list are sorted.
===============
*/
int idFileSystemLocal::GetFileList( const char *relativePath, const idStrList &extensions, idStrList &list, idHashIndex &hashIndex, bool fullRelativePath, const char* gamedir ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFileSystemLocal::GetFileList( const char *relativePath, const idStrList &extensions, idStrList &list, idHashIndex &hashIndex, bool fullRelativePath, const char* gamedir )\r\n");
    return retVal;
}


/*
===============
idFileSystemLocal::ListFiles
===============
*/
idFileList *idFileSystemLocal::ListFiles( const char *relativePath, const char *extension, bool sort, bool fullRelativePath, const char* gamedir ) {
    Sys_Printf("idFileList *idFileSystemLocal::ListFiles( const char *relativePath, const char *extension, bool sort, bool fullRelativePath, const char* gamedir )\r\n");
    return NULL;
}


/*
===============
idFileSystemLocal::GetFileListTree
===============
*/
int idFileSystemLocal::GetFileListTree( const char *relativePath, const idStrList &extensions, idStrList &list, idHashIndex &hashIndex, const char* gamedir ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFileSystemLocal::GetFileListTree( const char *relativePath, const idStrList &extensions, idStrList &list, idHashIndex &hashIndex, const char* gamedir )\r\n");
    return retVal;
}


/*
===============
idFileSystemLocal::ListFilesTree
===============
*/
idFileList *idFileSystemLocal::ListFilesTree( const char *relativePath, const char *extension, bool sort, const char* gamedir ) {
    Sys_Printf("idFileList *idFileSystemLocal::ListFilesTree( const char *relativePath, const char *extension, bool sort, const char* gamedir )\r\n");
    return NULL;
}


/*
===============
idFileSystemLocal::FreeFileList
===============
*/
void idFileSystemLocal::FreeFileList( idFileList *fileList ) {
    Sys_Printf("void idFileSystemLocal::FreeFileList( idFileList *fileList )\r\n");
}


/*
===============
idFileSystemLocal::ListMods
===============
*/
idModList *idFileSystemLocal::ListMods( void ) {
    Sys_Printf("idModList *idFileSystemLocal::ListMods( void )\r\n");
    return NULL;
}


/*
===============
idFileSystemLocal::FreeModList
===============
*/
void idFileSystemLocal::FreeModList( idModList *modList ) {
    Sys_Printf("void idFileSystemLocal::FreeModList( idModList *modList )\r\n");
}


/*
===============
idDEntry::Matches
===============
*/
bool idDEntry::Matches(const char *directory, const char *extension) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDEntry::Matches(const char *directory, const char *extension)\r\n");
    return retVal;
}


/*
===============
idDEntry::Init
===============
*/
void idDEntry::Init( const char *directory, const char *extension, const idStrList &list ) {
    Sys_Printf("void idDEntry::Init( const char *directory, const char *extension, const idStrList &list )\r\n");
}


/*
===============
idDEntry::Clear
===============
*/
void idDEntry::Clear( void ) {
    Sys_Printf("void idDEntry::Clear( void )\r\n");
}


/*
===============
idFileSystemLocal::ListOSFiles

 call to the OS for a listing of files in an OS directory
 optionally, perform some caching of the entries
===============
*/
int	idFileSystemLocal::ListOSFiles( const char *directory, const char *extension, idStrList &list ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidFileSystemLocal::ListOSFiles( const char *directory, const char *extension, idStrList &list )\r\n");
    return retVal;
}


/*
================
idFileSystemLocal::Dir_f
================
*/
void idFileSystemLocal::Dir_f( const idCmdArgs &args ) {
    Sys_Printf("void idFileSystemLocal::Dir_f( const idCmdArgs &args )\r\n");
}


/*
================
idFileSystemLocal::DirTree_f
================
*/
void idFileSystemLocal::DirTree_f( const idCmdArgs &args ) {
    Sys_Printf("void idFileSystemLocal::DirTree_f( const idCmdArgs &args )\r\n");
}


/*
============
idFileSystemLocal::Path_f
============
*/
void idFileSystemLocal::Path_f( const idCmdArgs &args ) {
    Sys_Printf("void idFileSystemLocal::Path_f( const idCmdArgs &args )\r\n");
}


/*
============
idFileSystemLocal::GetOSMask
============
*/
int idFileSystemLocal::GetOSMask( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFileSystemLocal::GetOSMask( void )\r\n");
    return retVal;
}


/*
============
idFileSystemLocal::TouchFile_f

The only purpose of this function is to allow game script files to copy
arbitrary files furing an "fs_copyfiles 1" run.
============
*/
void idFileSystemLocal::TouchFile_f( const idCmdArgs &args ) {
    Sys_Printf("void idFileSystemLocal::TouchFile_f( const idCmdArgs &args )\r\n");
}


/*
============
idFileSystemLocal::TouchFileList_f

Takes a text file and touches every file in it, use one file per line.
============
*/
void idFileSystemLocal::TouchFileList_f( const idCmdArgs &args ) {
    Sys_Printf("void idFileSystemLocal::TouchFileList_f( const idCmdArgs &args )\r\n");
}



/*
================
idFileSystemLocal::AddGameDirectory

Sets gameFolder, adds the directory to the head of the search paths, then loads any pk4 files.
================
*/
void idFileSystemLocal::AddGameDirectory( const char *path, const char *dir ) {
    Sys_Printf("void idFileSystemLocal::AddGameDirectory( const char *path, const char *dir )\r\n");
}


/*
================
idFileSystemLocal::SetupGameDirectories

  Takes care of the correct search order.
================
*/
void idFileSystemLocal::SetupGameDirectories( const char *gameName ) {
    Sys_Printf("void idFileSystemLocal::SetupGameDirectories( const char *gameName )\r\n");
}


/*
===============
idFileSystemLocal::FollowDependencies
===============
*/
void idFileSystemLocal::FollowAddonDependencies( pack_t *pak ) {
    Sys_Printf("void idFileSystemLocal::FollowAddonDependencies( pack_t *pak )\r\n");
}


/*
================
idFileSystemLocal::Startup
================
*/
void idFileSystemLocal::Startup( void ) {
    Sys_Printf("void idFileSystemLocal::Startup( void )\r\n");
}


/*
===================
idFileSystemLocal::SetRestrictions

Looks for product keys and restricts media add on ability
if the full version is not found
===================
*/
void idFileSystemLocal::SetRestrictions( void ) {
    Sys_Printf("void idFileSystemLocal::SetRestrictions( void )\r\n");
}


/*
=====================
idFileSystemLocal::UpdatePureServerChecksums
=====================
*/
void idFileSystemLocal::UpdatePureServerChecksums( void ) {
    Sys_Printf("void idFileSystemLocal::UpdatePureServerChecksums( void )\r\n");
}


/*
=====================
idFileSystemLocal::UpdateGamePakChecksums
=====================
*/
bool idFileSystemLocal::UpdateGamePakChecksums( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFileSystemLocal::UpdateGamePakChecksums( void )\r\n");
    return retVal;
}


/*
=====================
idFileSystemLocal::GetPackForChecksum
=====================
*/
pack_t* idFileSystemLocal::GetPackForChecksum( int checksum, bool searchAddons ) {
    Sys_Printf("pack_t* idFileSystemLocal::GetPackForChecksum( int checksum, bool searchAddons )\r\n");
    return NULL;
}


/*
===============
idFileSystemLocal::ValidateDownloadPakForChecksum
===============
*/
int idFileSystemLocal::ValidateDownloadPakForChecksum( int checksum, char path[ MAX_STRING_CHARS ], bool isBinary ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFileSystemLocal::ValidateDownloadPakForChecksum( int checksum, char path[ MAX_STRING_CHARS ], bool isBinary )\r\n");
    return retVal;
}


/*
=====================
idFileSystemLocal::ClearPureChecksums
=====================
*/
void idFileSystemLocal::ClearPureChecksums( void ) {
    Sys_Printf("void idFileSystemLocal::ClearPureChecksums( void )\r\n");
}


/*
=====================
idFileSystemLocal::SetPureServerChecksums
set the pure paks according to what the server asks
if that's not possible, identify why and build an answer
can be:
  loadedFileFromDir - some files were loaded from directories instead of paks (a restart in pure pak-only is required)
  missing/wrong checksums - some pak files would need to be installed/updated (downloaded for instance)
  some pak files currently referenced are not referenced by the server
  wrong order - if the pak order doesn't match, means some stuff could have been loaded from somewhere else
server referenced files are prepended to the list if possible ( that doesn't break pureness )
DLL:
  the checksum of the pak containing the DLL is maintained seperately, the server can send different replies by OS
=====================
*/
fsPureReply_t idFileSystemLocal::SetPureServerChecksums( const int pureChecksums[ MAX_PURE_PAKS ], int _gamePakChecksum, int missingChecksums[ MAX_PURE_PAKS ], int *missingGamePakChecksum ) {
    fsPureReply_t retVal;
    memset(&retVal, 0, sizeof(fsPureReply_t));
    Sys_Printf("fsPureReply_t idFileSystemLocal::SetPureServerChecksums( const int pureChecksums[ MAX_PURE_PAKS ], int _gamePakChecksum, int missingChecksums[ MAX_PURE_PAKS ], int *missingGamePakChecksum )\r\n");
    return retVal;
}


/*
=====================
idFileSystemLocal::GetPureServerChecksums
=====================
*/
void idFileSystemLocal::GetPureServerChecksums( int checksums[ MAX_PURE_PAKS ], int OS, int *_gamePakChecksum ) {
    Sys_Printf("void idFileSystemLocal::GetPureServerChecksums( int checksums[ MAX_PURE_PAKS ], int OS, int *_gamePakChecksum )\r\n");
}


/*
=====================
idFileSystemLocal::SetRestartChecksums
=====================
*/
void idFileSystemLocal::SetRestartChecksums( const int pureChecksums[ MAX_PURE_PAKS ], int gamePakChecksum ) {
    Sys_Printf("void idFileSystemLocal::SetRestartChecksums( const int pureChecksums[ MAX_PURE_PAKS ], int gamePakChecksum )\r\n");
}


/*
================
idFileSystemLocal::Init

Called only at inital startup, not when the filesystem
is resetting due to a game change
================
*/
void idFileSystemLocal::Init( void ) {
    Sys_Printf("void idFileSystemLocal::Init( void )\r\n");
}


/*
================
idFileSystemLocal::Restart
================
*/
void idFileSystemLocal::Restart( void ) {
    Sys_Printf("void idFileSystemLocal::Restart( void )\r\n");
}


/*
================
idFileSystemLocal::Shutdown

Frees all resources and closes all files
================
*/
void idFileSystemLocal::Shutdown( bool reloading ) {
    Sys_Printf("void idFileSystemLocal::Shutdown( bool reloading )\r\n");
}


/*
================
idFileSystemLocal::IsInitialized
================
*/
bool idFileSystemLocal::IsInitialized( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFileSystemLocal::IsInitialized( void )\r\n");
    return retVal;
}



/*
=================================================================================

Opening files

=================================================================================
*/

/*
===========
idFileSystemLocal::FileAllowedFromDir
===========
*/
bool idFileSystemLocal::FileAllowedFromDir( const char *path ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFileSystemLocal::FileAllowedFromDir( const char *path )\r\n");
    return retVal;
}


/*
===========
idFileSystemLocal::GetPackStatus
===========
*/
pureStatus_t idFileSystemLocal::GetPackStatus( pack_t *pak ) {
    pureStatus_t retVal;
    memset(&retVal, 0, sizeof(pureStatus_t));
    Sys_Printf("pureStatus_t idFileSystemLocal::GetPackStatus( pack_t *pak )\r\n");
    return retVal;
}


/*
===========
idFileSystemLocal::ReadFileFromZip
===========
*/
idFile_InZip * idFileSystemLocal::ReadFileFromZip( pack_t *pak, fileInPack_t *pakFile, const char *relativePath ) {
    Sys_Printf("idFile_InZip * idFileSystemLocal::ReadFileFromZip( pack_t *pak, fileInPack_t *pakFile, const char *relativePath )\r\n");
    return NULL;
}


/*
===========
idFileSystemLocal::OpenFileReadFlags

Finds the file in the search path, following search flag recommendations
Returns filesize and an open FILE pointer.
Used for streaming data out of either a
separate file or a ZIP file.
===========
*/
idFile *idFileSystemLocal::OpenFileReadFlags( const char *relativePath, int searchFlags, pack_t **foundInPak, bool allowCopyFiles, const char* gamedir ) {
    Sys_Printf("idFile *idFileSystemLocal::OpenFileReadFlags( const char *relativePath, int searchFlags, pack_t **foundInPak, bool allowCopyFiles, const char* gamedir )\r\n");
    return NULL;
}


/*
===========
idFileSystemLocal::OpenFileRead
===========
*/
idFile *idFileSystemLocal::OpenFileRead( const char *relativePath, bool allowCopyFiles, const char* gamedir ) {
    Sys_Printf("idFile *idFileSystemLocal::OpenFileRead( const char *relativePath, bool allowCopyFiles, const char* gamedir )\r\n");
    return NULL;
}


/*
===========
idFileSystemLocal::OpenFileWrite
===========
*/
idFile *idFileSystemLocal::OpenFileWrite( const char *relativePath, const char *basePath ) {
    Sys_Printf("idFile *idFileSystemLocal::OpenFileWrite( const char *relativePath, const char *basePath )\r\n");
    return NULL;
}


/*
===========
idFileSystemLocal::OpenExplicitFileRead
===========
*/
idFile *idFileSystemLocal::OpenExplicitFileRead( const char *OSPath ) {
    Sys_Printf("idFile *idFileSystemLocal::OpenExplicitFileRead( const char *OSPath )\r\n");
    return NULL;
}


/*
===========
idFileSystemLocal::OpenExplicitFileWrite
===========
*/
idFile *idFileSystemLocal::OpenExplicitFileWrite( const char *OSPath ) {
    Sys_Printf("idFile *idFileSystemLocal::OpenExplicitFileWrite( const char *OSPath )\r\n");
    return NULL;
}


/*
===========
idFileSystemLocal::OpenFileAppend
===========
*/
idFile *idFileSystemLocal::OpenFileAppend( const char *relativePath, bool sync, const char *basePath ) {
    Sys_Printf("idFile *idFileSystemLocal::OpenFileAppend( const char *relativePath, bool sync, const char *basePath )\r\n");
    return NULL;
}


/*
================
idFileSystemLocal::OpenFileByMode
================
*/
idFile *idFileSystemLocal::OpenFileByMode( const char *relativePath, fsMode_t mode ) {
    Sys_Printf("idFile *idFileSystemLocal::OpenFileByMode( const char *relativePath, fsMode_t mode )\r\n");
    return NULL;
}


/*
==============
idFileSystemLocal::CloseFile
==============
*/
void idFileSystemLocal::CloseFile( idFile *f ) {
    Sys_Printf("void idFileSystemLocal::CloseFile( idFile *f )\r\n");
}



/*
=================================================================================

back ground loading

=================================================================================
*/

/*
=================
idFileSystemLocal::CurlWriteFunction
=================
*/
size_t idFileSystemLocal::CurlWriteFunction( void *ptr, size_t size, size_t nmemb, void *stream ) {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idFileSystemLocal::CurlWriteFunction( void *ptr, size_t size, size_t nmemb, void *stream )\r\n");
    return retVal;
}


/*
=================
idFileSystemLocal::CurlProgressFunction
=================
*/
int idFileSystemLocal::CurlProgressFunction( void *clientp, double dltotal, double dlnow, double ultotal, double ulnow ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFileSystemLocal::CurlProgressFunction( void *clientp, double dltotal, double dlnow, double ultotal, double ulnow )\r\n");
    return retVal;
}


/*
===================
BackgroundDownload

Reads part of a file from a background thread.
===================
*/
dword BackgroundDownloadThread( void *parms ) {
    dword retVal;
    memset(&retVal, 0, sizeof(dword));
    Sys_Printf("dword BackgroundDownloadThread( void *parms )\r\n");
    return retVal;
}


/*
=================
idFileSystemLocal::StartBackgroundReadThread
=================
*/
void idFileSystemLocal::StartBackgroundDownloadThread() {
    Sys_Printf("void idFileSystemLocal::StartBackgroundDownloadThread()\r\n");
}


/*
=================
idFileSystemLocal::BackgroundDownload
=================
*/
void idFileSystemLocal::BackgroundDownload( backgroundDownload_t *bgl ) {
    Sys_Printf("void idFileSystemLocal::BackgroundDownload( backgroundDownload_t *bgl )\r\n");
}


/*
=================
idFileSystemLocal::PerformingCopyFiles
=================
*/
bool idFileSystemLocal::PerformingCopyFiles( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFileSystemLocal::PerformingCopyFiles( void )\r\n");
    return retVal;
}


/*
=================
idFileSystemLocal::FindPakForFileChecksum
=================
*/
pack_t *idFileSystemLocal::FindPakForFileChecksum( const char *relativePath, int findChecksum, bool bReference ) {
    Sys_Printf("pack_t *idFileSystemLocal::FindPakForFileChecksum( const char *relativePath, int findChecksum, bool bReference )\r\n");
    return NULL;
}


/*
=================
idFileSystemLocal::GetFileChecksum
=================
*/
int idFileSystemLocal::GetFileChecksum( idFile *file ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFileSystemLocal::GetFileChecksum( idFile *file )\r\n");
    return retVal;
}


/*
=================
idFileSystemLocal::FindDLL
=================
*/
void idFileSystemLocal::FindDLL( const char *name, char _dllPath[ MAX_OSPATH ], bool updateChecksum ) {
    Sys_Printf("void idFileSystemLocal::FindDLL( const char *name, char _dllPath[ MAX_OSPATH ], bool updateChecksum )\r\n");
}


/*
================
idFileSystemLocal::ClearDirCache
================
*/
void idFileSystemLocal::ClearDirCache( void ) {
    Sys_Printf("void idFileSystemLocal::ClearDirCache( void )\r\n");
}


/*
===============
idFileSystemLocal::HasD3XP
===============
*/
bool idFileSystemLocal::HasD3XP( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFileSystemLocal::HasD3XP( void )\r\n");
    return retVal;
}


/*
===============
idFileSystemLocal::RunningD3XP
===============
*/
bool idFileSystemLocal::RunningD3XP( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idFileSystemLocal::RunningD3XP( void )\r\n");
    return retVal;
}


/*
===============
idFileSystemLocal::MakeTemporaryFile
===============
*/
idFile * idFileSystemLocal::MakeTemporaryFile( void ) {
    Sys_Printf("idFile * idFileSystemLocal::MakeTemporaryFile( void )\r\n");
    return NULL;
}


/*
===============
idFileSystemLocal::FindFile
===============
*/
 findFile_t idFileSystemLocal::FindFile( const char *path, bool scheduleAddons ) {
    findFile_t retVal;
    memset(&retVal, 0, sizeof(findFile_t));
    Sys_Printf("findFile_t idFileSystemLocal::FindFile( const char *path, bool scheduleAddons )\r\n");
    return retVal;
}


/*
===============
idFileSystemLocal::GetNumMaps
account for actual decls and for addon maps
===============
*/
int idFileSystemLocal::GetNumMaps() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFileSystemLocal::GetNumMaps()\r\n");
    return retVal;
}


/*
===============
idFileSystemLocal::GetMapDecl
retrieve the decl dictionary, add a 'path' value
===============
*/
const idDict * idFileSystemLocal::GetMapDecl( int idecl ) {
    Sys_Printf("idDict * idFileSystemLocal::GetMapDecl( int idecl )\r\n");
    return NULL;
}


/*
===============
idFileSystemLocal::FindMapScreenshot
===============
*/
void idFileSystemLocal::FindMapScreenshot( const char *path, char *buf, int len ) {
    Sys_Printf("void idFileSystemLocal::FindMapScreenshot( const char *path, char *buf, int len )\r\n");
}

