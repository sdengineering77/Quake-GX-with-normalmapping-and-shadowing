/*
 * mockupcd.h
 *
 *  Created on: 7 aug. 2012
 *      Author: Danny
 */

#ifndef MOCKUPCD_H_
#define MOCKUPCD_H_

// ==============================================================

typedef struct commandDef_s {
	struct commandDef_s *	next;
	char *					name;
	cmdFunction_t			function;
	argCompletion_t			argCompletion;
	int						flags;
	char *					description;
} commandDef_t;

class idCmdSystemLocal : public idCmdSystem {
public:
	virtual void			Init( void );
	virtual void			Shutdown( void );

	virtual void			AddCommand( const char *cmdName, cmdFunction_t function, int flags, const char *description, argCompletion_t argCompletion = NULL );
	virtual void			RemoveCommand( const char *cmdName );
	virtual void			RemoveFlaggedCommands( int flags );

	virtual void			CommandCompletion( void(*callback)( const char *s ) );
	virtual void			ArgCompletion( const char *cmdString, void(*callback)( const char *s ) );

	virtual void			BufferCommandText( cmdExecution_t exec, const char *text );
	virtual void			ExecuteCommandBuffer( void );

	virtual void			ArgCompletion_FolderExtension( const idCmdArgs &args, void(*callback)( const char *s ), const char *folder, bool stripFolder, ... );
	virtual void			ArgCompletion_DeclName( const idCmdArgs &args, void(*callback)( const char *s ), int type );

	virtual void			BufferCommandArgs( cmdExecution_t exec, const idCmdArgs &args );

	virtual void			SetupReloadEngine( const idCmdArgs &args );
	virtual bool			PostReloadEngine( void );

	void					SetWait( int numFrames ) { wait = numFrames; }
	commandDef_t *			GetCommands( void ) const { return commands; }

private:
	static const int		MAX_CMD_BUFFER = 0x10000;

	commandDef_t *			commands;

	int						wait;
	int						textLength;
	byte					textBuf[MAX_CMD_BUFFER];

	idStr					completionString;
	idStrList				completionParms;

	// piggybacks on the text buffer, avoids tokenize again and screwing it up
	idList<idCmdArgs>		tokenizedCmds;

	// a command stored to be executed after a reloadEngine and all associated commands have been processed
	idCmdArgs				postReload;

private:
	void					ExecuteTokenizedString( const idCmdArgs &args );
	void					ExecuteCommandText( const char *text );
	void					InsertCommandText( const char *text );
	void					AppendCommandText( const char *text );

	static void				ListByFlags( const idCmdArgs &args, cmdFlags_t flags );
	static void				List_f( const idCmdArgs &args );
	static void				SystemList_f( const idCmdArgs &args );
	static void				RendererList_f( const idCmdArgs &args );
	static void				SoundList_f( const idCmdArgs &args );
	static void				GameList_f( const idCmdArgs &args );
	static void				ToolList_f( const idCmdArgs &args );
	static void				Exec_f( const idCmdArgs &args );
	static void				Vstr_f( const idCmdArgs &args );
	static void				Echo_f( const idCmdArgs &args );
	static void				Parse_f( const idCmdArgs &args );
	static void				Wait_f( const idCmdArgs &args );
	static void				PrintMemInfo_f( const idCmdArgs &args );
};

// ==============================================================

#define	MAX_PRINT_MSG_SIZE	4096
#define MAX_WARNING_LIST	256


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

// ===============================================================================================================

#define	LINE_WIDTH				78
#define	NUM_CON_TIMES			4
#define	CON_TEXTSIZE			0x30000
#define	TOTAL_LINES				(CON_TEXTSIZE / LINE_WIDTH)
#define CONSOLE_FIRSTREPEAT		200
#define CONSOLE_REPEAT			100

#define	COMMAND_HISTORY			64

// the console will query the cvar and command systems for
// command completion information

class idConsoleLocal : public idConsole {
public:
	virtual	void		Init( void );
	virtual void		Shutdown( void );
	virtual	void		LoadGraphics( void );
	virtual	bool		ProcessEvent( const sysEvent_t *event, bool forceAccept );
//	virtual void	ProcessEvent( void ) {};
	virtual	bool		Active( void );
	virtual	void		ClearNotifyLines( void );
	virtual	void		Close( void );
	virtual	void		Print( const char *text );
	virtual	void		Draw( bool forceFullScreen );

	void				Dump( const char *toFile );
	void				Clear();

	//============================

	const idMaterial *	charSetShader;

private:
	void				KeyDownEvent( int key );

	void				Linefeed();

	void				PageUp();
	void				PageDown();
	void				Top();
	void				Bottom();

	void				DrawInput();
	void				DrawNotify();
	void				DrawSolidConsole( float frac );

	void				Scroll();
	void				SetDisplayFraction( float frac );
	void				UpdateDisplayFraction( void );

	//============================

	bool				keyCatching;

	short				text[CON_TEXTSIZE];
	int					current;		// line where next message will be printed
	int					x;				// offset in current line for next print
	int					display;		// bottom of console displays this line
	int					lastKeyEvent;	// time of last key event for scroll delay
	int					nextKeyEvent;	// keyboard repeat rate

	float				displayFrac;	// approaches finalFrac at scr_conspeed
	float				finalFrac;		// 0.0 to 1.0 lines of console to display
	int					fracTime;		// time of last displayFrac update

	int					vislines;		// in scanlines

	int					times[NUM_CON_TIMES];	// cls.realtime time the line was generated
									// for transparent notify lines
	idVec4				color;

	idEditField			historyEditLines[COMMAND_HISTORY];

	int					nextHistoryLine;// the last line in the history buffer, not masked
	int					historyLine;	// the line being displayed from history buffer
									// will be <= nextHistoryLine

	idEditField			consoleField;

	static idCVar		con_speed;
	static idCVar		con_notifyTime;
	static idCVar		con_noPrint;

	const idMaterial *	whiteShader;
	const idMaterial *	consoleShader;
};

// ===============================================================================================================

class idInternalCVar : public idCVar {
	friend class idCVarSystemLocal;
public:
							idInternalCVar( void );
							idInternalCVar( const char *newName, const char *newValue, int newFlags );
							idInternalCVar( const idCVar *cvar );
	virtual					~idInternalCVar( void );

	const char **			CopyValueStrings( const char **strings );
	void					Update( const idCVar *cvar );
	void					UpdateValue( void );
	void					UpdateCheat( void );
	void					Set( const char *newValue, bool force, bool fromServer );
	void					Reset( void );

private:
	idStr					nameString;				// name
	idStr					resetString;			// resetting will change to this value
	idStr					valueString;			// value
	idStr					descriptionString;		// description

	virtual void			InternalSetString( const char *newValue );
	virtual void			InternalServerSetString( const char *newValue );
	virtual void			InternalSetBool( const bool newValue );
	virtual void			InternalSetInteger( const int newValue );
	virtual void			InternalSetFloat( const float newValue );
};

class idCVarSystemLocal : public idCVarSystem {
public:
							idCVarSystemLocal( void );

	virtual					~idCVarSystemLocal( void ) {}

	virtual void			Init( void );
	virtual void			Shutdown( void );
	virtual bool			IsInitialized( void ) const;

	virtual void			Register( idCVar *cvar );

	virtual idCVar *		Find( const char *name );

	virtual void			SetCVarString( const char *name, const char *value, int flags = 0 );
	virtual void			SetCVarBool( const char *name, const bool value, int flags = 0 );
	virtual void			SetCVarInteger( const char *name, const int value, int flags = 0 );
	virtual void			SetCVarFloat( const char *name, const float value, int flags = 0 );

	virtual const char *	GetCVarString( const char *name ) const;
	virtual bool			GetCVarBool( const char *name ) const;
	virtual int				GetCVarInteger( const char *name ) const;
	virtual float			GetCVarFloat( const char *name ) const;

	virtual bool			Command( const idCmdArgs &args );

	virtual void			CommandCompletion( void(*callback)( const char *s ) );
	virtual void			ArgCompletion( const char *cmdString, void(*callback)( const char *s ) );

	virtual void			SetModifiedFlags( int flags );
	virtual int				GetModifiedFlags( void ) const;
	virtual void			ClearModifiedFlags( int flags );

	virtual void			ResetFlaggedVariables( int flags );
	virtual void			RemoveFlaggedAutoCompletion( int flags );
	virtual void			WriteFlaggedVariables( int flags, const char *setCmd, idFile *f ) const;

	virtual const idDict *	MoveCVarsToDict( int flags ) const;
	virtual void			SetCVarsFromDict( const idDict &dict );

	void					RegisterInternal( idCVar *cvar );
	idInternalCVar *		FindInternal( const char *name ) const;
	void					SetInternal( const char *name, const char *value, int flags );

private:
	bool					initialized;
	idList<idInternalCVar*>	cvars;
	idHashIndex				cvarHash;
	int						modifiedFlags;
							// use a static dictionary to MoveCVarsToDict can be used from game
	static idDict			moveCVarsToDict;


private:
	static void				Toggle_f( const idCmdArgs &args );
	static void				Set_f( const idCmdArgs &args );
	static void				SetS_f( const idCmdArgs &args );
	static void				SetU_f( const idCmdArgs &args );
	static void				SetT_f( const idCmdArgs &args );
	static void				SetA_f( const idCmdArgs &args );
	static void				Reset_f( const idCmdArgs &args );
	static void				ListByFlags( const idCmdArgs &args, cvarFlags_t flags );
	static void				List_f( const idCmdArgs &args );
	static void				Restart_f( const idCmdArgs &args );
};

// ========================================================================================================

class idDeclType {
public:
	idStr						typeName;
	declType_t					type;
	idDecl *					(*allocator)( void );
};

class idDeclFolder {
public:
	idStr						folder;
	idStr						extension;
	declType_t					defaultType;
};

class idDeclFile;

class idDeclLocal : public idDeclBase {
	friend class idDeclFile;
	friend class idDeclManagerLocal;

public:
								idDeclLocal();
	virtual 					~idDeclLocal() {};
	virtual const char *		GetName( void ) const;
	virtual declType_t			GetType( void ) const;
	virtual declState_t			GetState( void ) const;
	virtual bool				IsImplicit( void ) const;
	virtual bool				IsValid( void ) const;
	virtual void				Invalidate( void );
	virtual void				Reload( void );
	virtual void				EnsureNotPurged( void );
	virtual int					Index( void ) const;
	virtual int					GetLineNum( void ) const;
	virtual const char *		GetFileName( void ) const;
	virtual size_t				Size( void ) const;
	virtual void				GetText( char *text ) const;
	virtual int					GetTextLength( void ) const;
	virtual void				SetText( const char *text );
	virtual bool				ReplaceSourceFileText( void );
	virtual bool				SourceFileChanged( void ) const;
	virtual void				MakeDefault( void );
	virtual bool				EverReferenced( void ) const;

protected:
	virtual bool				SetDefaultText( void );
	virtual const char *		DefaultDefinition( void ) const;
	virtual bool				Parse( const char *text, const int textLength );
	virtual void				FreeData( void );
	virtual void				List( void ) const;
	virtual void				Print( void ) const;

protected:
	void						AllocateSelf( void );

								// Parses the decl definition.
								// After calling parse, a decl will be guaranteed usable.
	void						ParseLocal( void );

								// Does a MakeDefualt, but flags the decl so that it
								// will Parse() the next time the decl is found.
	void						Purge( void );

								// Set textSource possible with compression.
	void						SetTextLocal( const char *text, const int length );

private:
	idDecl *					self;

	idStr						name;					// name of the decl
	char *						textSource;				// decl text definition
	int							textLength;				// length of textSource
	int							compressedLength;		// compressed length
	idDeclFile *				sourceFile;				// source file in which the decl was defined
	int							sourceTextOffset;		// offset in source file to decl text
	int							sourceTextLength;		// length of decl text in source file
	int							sourceLine;				// this is where the actual declaration token starts
	int							checksum;				// checksum of the decl text
	declType_t					type;					// decl type
	declState_t					declState;				// decl state
	int							index;					// index in the per-type list

	bool						parsedOutsideLevelLoad;	// these decls will never be purged
	bool						everReferenced;			// set to true if the decl was ever used
	bool						referencedThisLevel;	// set to true when the decl is used for the current level
	bool						redefinedInReload;		// used during file reloading to make sure a decl that has
														// its source removed will be defaulted
	idDeclLocal *				nextInFile;				// next decl in the decl file
};

class idDeclFile {
public:
								idDeclFile();
								idDeclFile( const char *fileName, declType_t defaultType );

	void						Reload( bool force );
	int							LoadAndParse();

public:
	idStr						fileName;
	declType_t					defaultType;

	ID_TIME_T						timestamp;
	int							checksum;
	int							fileSize;
	int							numLines;

	idDeclLocal *				decls;
};

class idDeclManagerLocal : public idDeclManager {
	friend class idDeclLocal;

public:
	virtual void				Init( void );
	virtual void				Shutdown( void );
	virtual void				Reload( bool force );
	virtual void				BeginLevelLoad();
	virtual void				EndLevelLoad();
	virtual void				RegisterDeclType( const char *typeName, declType_t type, idDecl *(*allocator)( void ) );
	virtual void				RegisterDeclFolder( const char *folder, const char *extension, declType_t defaultType );
	virtual int					GetChecksum( void ) const;
	virtual int					GetNumDeclTypes( void ) const;
	virtual int					GetNumDecls( declType_t type );
	virtual const char *		GetDeclNameFromType( declType_t type ) const;
	virtual declType_t			GetDeclTypeFromName( const char *typeName ) const;
	virtual const idDecl *		FindType( declType_t type, const char *name, bool makeDefault = true );
	virtual const idDecl *		DeclByIndex( declType_t type, int index, bool forceParse = true );

	virtual const idDecl*		FindDeclWithoutParsing( declType_t type, const char *name, bool makeDefault = true );
	virtual void				ReloadFile( const char* filename, bool force );

	virtual void				ListType( const idCmdArgs &args, declType_t type );
	virtual void				PrintType( const idCmdArgs &args, declType_t type );

	virtual idDecl *			CreateNewDecl( declType_t type, const char *name, const char *fileName );

	//BSM Added for the material editors rename capabilities
	virtual bool				RenameDecl( declType_t type, const char* oldName, const char* newName );

	virtual void				MediaPrint( const char *fmt, ... ) id_attribute((format(printf,2,3)));
	virtual void				WritePrecacheCommands( idFile *f );

	// DRS .h + .cpp
	virtual const idMaterial *		FindMaterial( const char *name, bool makeDefault = true );
	virtual const idDeclSkin *		FindSkin( const char *name, bool makeDefault = true );
// DRS TODO	virtual const idSoundShader *	FindSound( const char *name, bool makeDefault = true );

	virtual const idMaterial *		MaterialByIndex( int index, bool forceParse = true );
	virtual const idDeclSkin *		SkinByIndex( int index, bool forceParse = true );
// DRS TODO	virtual const idSoundShader *	SoundByIndex( int index, bool forceParse = true );


public:
	static void					MakeNameCanonical( const char *name, char *result, int maxLength );
	idDeclLocal *				FindTypeWithoutParsing( declType_t type, const char *name, bool makeDefault = true );

	idDeclType *				GetDeclType( int type ) const { return declTypes[type]; }
	const idDeclFile *			GetImplicitDeclFile( void ) const { return &implicitDecls; }


private:
	idList<idDeclType *>		declTypes;
	idList<idDeclFolder *>		declFolders;

	idList<idDeclFile *>		loadedFiles;
	idHashIndex					hashTables[DECL_MAX_TYPES];
	idList<idDeclLocal *>		linearLists[DECL_MAX_TYPES];
	idDeclFile					implicitDecls;	// this holds all the decls that were created because explicit
												// text definitions were not found. Decls that became default
												// because of a parse error are not in this list.
	int							checksum;		// checksum of all loaded decl text
	int							indent;			// for MediaPrint
	bool						insideLevelLoad;

	static idCVar				decl_show;

private:
	static void					ListDecls_f( const idCmdArgs &args );
	static void					ReloadDecls_f( const idCmdArgs &args );
	static void					TouchDecl_f( const idCmdArgs &args );
};

// =====================================================================================================
#include "./framework/Unzip.h"

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
	virtual				~idDEntry() {}

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
	virtual void			ResetReadCount( void ) { readCount = 0; }
	virtual void			AddToReadCount( int c ) { readCount += c; }
	virtual int				GetReadCount( void ) { return readCount; }
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



#endif /* MOCKUPCD_H_ */


