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

/*

GUIs and script remain separately parsed

Following a parse, all referenced media (and other decls) will have been touched.

sinTable and cosTable are required for the rotate material keyword to function

A new FindType on a purged decl will cause it to be reloaded, but a stale pointer to a purged
decl will look like a defaulted decl.

Moving a decl from one file to another will not be handled correctly by a reload, the material
will be defaulted.

NULL or empty decl names will always return NULL
	Should probably make a default decl for this

Decls are initially created without a textSource
A parse without textSource set should always just call MakeDefault()
A parse that has an error should internally call MakeDefault()
A purge does nothing to a defaulted decl

Should we have a "purged" media state separate from the "defaulted" media state?

reloading over a decl name that was defaulted

reloading over a decl name that was valid

missing reload over a previously explicit definition

*/

#define USE_COMPRESSED_DECLS
//#define GET_HUFFMAN_FREQUENCIES

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
	virtual 					~idDeclLocal() {
    virtual retVal;
    memset(&retVal, 0, sizeof(virtual));
    Sys_Printf("virtual ~idDeclLocal()\r\n");
    return retVal;
}
;
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

	virtual const idMaterial *		FindMaterial( const char *name, bool makeDefault = true );
	virtual const idDeclSkin *		FindSkin( const char *name, bool makeDefault = true );
	virtual const idSoundShader *	FindSound( const char *name, bool makeDefault = true );

	virtual const idMaterial *		MaterialByIndex( int index, bool forceParse = true );
	virtual const idDeclSkin *		SkinByIndex( int index, bool forceParse = true );
	virtual const idSoundShader *	SoundByIndex( int index, bool forceParse = true );

public:
	static void					MakeNameCanonical( const char *name, char *result, int maxLength );
	idDeclLocal *				FindTypeWithoutParsing( declType_t type, const char *name, bool makeDefault = true );

	idDeclType *				GetDeclType( int type ) const {
    Sys_Printf("idDeclType *GetDeclType( int type )\r\n");
    return NULL;
}

	const idDeclFile *			GetImplicitDeclFile( void ) const {
    Sys_Printf("idDeclFile *GetImplicitDeclFile( void )\r\n");
    return NULL;
}


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

idCVar idDeclManagerLocal::decl_show( "decl_show", "0", CVAR_SYSTEM, "set to 1 to print parses, 2 to also print references", 0, 2, idCmdSystem::ArgCompletion_Integer<0,2> );

idDeclManagerLocal	declManagerLocal;
idDeclManager *		declManager = &declManagerLocal;

/*
====================================================================================

 decl text huffman compression

====================================================================================
*/

const int MAX_HUFFMAN_SYMBOLS	= 256;

typedef struct huffmanNode_s {
	int						symbol;
	int						frequency;
	struct huffmanNode_s *	next;
	struct huffmanNode_s *	children[2];
} huffmanNode_t;

typedef struct huffmanCode_s {
	unsigned long			bits[8];
	int						numBits;
} huffmanCode_t;

// compression ratio = 64%
static int huffmanFrequencies[] = {
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00078fb6, 0x000352a7, 0x00000002, 0x00000001, 0x0002795e, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00049600, 0x000000dd, 0x00018732, 0x0000005a, 0x00000007, 0x00000092, 0x0000000a, 0x00000919,
    0x00002dcf, 0x00002dda, 0x00004dfc, 0x0000039a, 0x000058be, 0x00002d13, 0x00014d8c, 0x00023c60,
    0x0002ddb0, 0x0000d1fc, 0x000078c4, 0x00003ec7, 0x00003113, 0x00006b59, 0x00002499, 0x0000184a,
    0x0000250b, 0x00004e38, 0x000001ca, 0x00000011, 0x00000020, 0x000023da, 0x00000012, 0x00000091,
    0x0000000b, 0x00000b14, 0x0000035d, 0x0000137e, 0x000020c9, 0x00000e11, 0x000004b4, 0x00000737,
    0x000006b8, 0x00001110, 0x000006b3, 0x000000fe, 0x00000f02, 0x00000d73, 0x000005f6, 0x00000be4,
    0x00000d86, 0x0000014d, 0x00000d89, 0x0000129b, 0x00000db3, 0x0000015a, 0x00000167, 0x00000375,
    0x00000028, 0x00000112, 0x00000018, 0x00000678, 0x0000081a, 0x00000677, 0x00000003, 0x00018112,
    0x00000001, 0x000441ee, 0x000124b0, 0x0001fa3f, 0x00026125, 0x0005a411, 0x0000e50f, 0x00011820,
    0x00010f13, 0x0002e723, 0x00003518, 0x00005738, 0x0002cc26, 0x0002a9b7, 0x0002db81, 0x0003b5fa,
    0x000185d2, 0x00001299, 0x00030773, 0x0003920d, 0x000411cd, 0x00018751, 0x00005fbd, 0x000099b0,
    0x00009242, 0x00007cf2, 0x00002809, 0x00005a1d, 0x00000001, 0x00005a1d, 0x00000001, 0x00000001,

    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
    0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001, 0x00000001,
};

static huffmanCode_t huffmanCodes[MAX_HUFFMAN_SYMBOLS];
static huffmanNode_t *huffmanTree = NULL;
static int totalUncompressedLength = 0;
static int totalCompressedLength = 0;
static int maxHuffmanBits = 0;


/*
================
ClearHuffmanFrequencies
================
*/
void ClearHuffmanFrequencies( void ) {
    Sys_Printf("void ClearHuffmanFrequencies( void )\r\n");
}


/*
================
InsertHuffmanNode
================
*/
huffmanNode_t *InsertHuffmanNode( huffmanNode_t *firstNode, huffmanNode_t *node ) {
    Sys_Printf("huffmanNode_t *InsertHuffmanNode( huffmanNode_t *firstNode, huffmanNode_t *node )\r\n");
    return NULL;
}


/*
================
BuildHuffmanCode_r
================
*/
void BuildHuffmanCode_r( huffmanNode_t *node, huffmanCode_t code, huffmanCode_t codes[MAX_HUFFMAN_SYMBOLS] ) {
    Sys_Printf("void BuildHuffmanCode_r( huffmanNode_t *node, huffmanCode_t code, huffmanCode_t codes[MAX_HUFFMAN_SYMBOLS] )\r\n");
}


/*
================
FreeHuffmanTree_r
================
*/
void FreeHuffmanTree_r( huffmanNode_t *node ) {
    Sys_Printf("void FreeHuffmanTree_r( huffmanNode_t *node )\r\n");
}


/*
================
HuffmanHeight_r
================
*/
int HuffmanHeight_r( huffmanNode_t *node ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int HuffmanHeight_r( huffmanNode_t *node )\r\n");
    return retVal;
}


/*
================
SetupHuffman
================
*/
void SetupHuffman( void ) {
    Sys_Printf("void SetupHuffman( void )\r\n");
}


/*
================
ShutdownHuffman
================
*/
void ShutdownHuffman( void ) {
    Sys_Printf("void ShutdownHuffman( void )\r\n");
}


/*
================
HuffmanCompressText
================
*/
int HuffmanCompressText( const char *text, int textLength, byte *compressed, int maxCompressedSize ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int HuffmanCompressText( const char *text, int textLength, byte *compressed, int maxCompressedSize )\r\n");
    return retVal;
}


/*
================
HuffmanDecompressText
================
*/
int HuffmanDecompressText( char *text, int textLength, const byte *compressed, int compressedSize ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int HuffmanDecompressText( char *text, int textLength, const byte *compressed, int compressedSize )\r\n");
    return retVal;
}


/*
================
ListHuffmanFrequencies_f
================
*/
void ListHuffmanFrequencies_f( const idCmdArgs &args ) {
    Sys_Printf("void ListHuffmanFrequencies_f( const idCmdArgs &args )\r\n");
}


/*
====================================================================================

 idDeclFile

====================================================================================
*/

/*
================
idDeclFile::idDeclFile
================
*/
idDeclFile::idDeclFile( const char *fileName, declType_t defaultType ) {
	this->fileName = fileName;
	this->defaultType = defaultType;
	this->timestamp = 0;
	this->checksum = 0;
	this->fileSize = 0;
	this->numLines = 0;
	this->decls = NULL;
}

/*
================
idDeclFile::idDeclFile
================
*/
idDeclFile::idDeclFile() {
	this->fileName = "<implicit file>";
	this->defaultType = DECL_MAX_TYPES;
	this->timestamp = 0;
	this->checksum = 0;
	this->fileSize = 0;
	this->numLines = 0;
	this->decls = NULL;
}

/*
================
idDeclFile::Reload

ForceReload will cause it to reload even if the timestamp hasn't changed
================
*/
void idDeclFile::Reload( bool force ) {
    Sys_Printf("void idDeclFile::Reload( bool force )\r\n");
}


/*
================
idDeclFile::LoadAndParse

This is used during both the initial load, and any reloads
================
*/
int c_savedMemory = 0;

int idDeclFile::LoadAndParse() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclFile::LoadAndParse()\r\n");
    return retVal;
}


/*
====================================================================================

 idDeclManagerLocal

====================================================================================
*/

const char *listDeclStrings[] = { "current", "all", "ever", NULL };

/*
===================
idDeclManagerLocal::Init
===================
*/
void idDeclManagerLocal::Init( void ) {
    Sys_Printf("void idDeclManagerLocal::Init( void )\r\n");
}


/*
===================
idDeclManagerLocal::Shutdown
===================
*/
void idDeclManagerLocal::Shutdown( void ) {
    Sys_Printf("void idDeclManagerLocal::Shutdown( void )\r\n");
}


/*
===================
idDeclManagerLocal::Reload
===================
*/
void idDeclManagerLocal::Reload( bool force ) {
    Sys_Printf("void idDeclManagerLocal::Reload( bool force )\r\n");
}


/*
===================
idDeclManagerLocal::BeginLevelLoad
===================
*/
void idDeclManagerLocal::BeginLevelLoad() {
    Sys_Printf("void idDeclManagerLocal::BeginLevelLoad()\r\n");
}


/*
===================
idDeclManagerLocal::EndLevelLoad
===================
*/
void idDeclManagerLocal::EndLevelLoad() {
    Sys_Printf("void idDeclManagerLocal::EndLevelLoad()\r\n");
}


/*
===================
idDeclManagerLocal::RegisterDeclType
===================
*/
void idDeclManagerLocal::RegisterDeclType( const char *typeName, declType_t type, idDecl *(*allocator)( void ) ) {
	idDeclType *declType;

	if ( type < declTypes.Num() && declTypes[(int)type] ) {
		common->Warning( "idDeclManager::RegisterDeclType: type '%s' already exists", typeName );
		return;
	}

	declType = new idDeclType;
	declType->typeName = typeName;
	declType->type = type;
	declType->allocator = allocator;

	if ( (int)type + 1 > declTypes.Num() ) {
		declTypes.AssureSize( (int)type + 1, NULL );
	}
	declTypes[type] = declType;
}

/*
===================
idDeclManagerLocal::RegisterDeclFolder
===================
*/
void idDeclManagerLocal::RegisterDeclFolder( const char *folder, const char *extension, declType_t defaultType ) {
    Sys_Printf("void idDeclManagerLocal::RegisterDeclFolder( const char *folder, const char *extension, declType_t defaultType )\r\n");
}


/*
===================
idDeclManagerLocal::GetChecksum
===================
*/
int idDeclManagerLocal::GetChecksum( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclManagerLocal::GetChecksum( void )\r\n");
    return retVal;
}


/*
===================
idDeclManagerLocal::GetNumDeclTypes
===================
*/
int idDeclManagerLocal::GetNumDeclTypes( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclManagerLocal::GetNumDeclTypes( void )\r\n");
    return retVal;
}


/*
===================
idDeclManagerLocal::GetDeclNameFromType
===================
*/
const char * idDeclManagerLocal::GetDeclNameFromType( declType_t type ) const {
    Sys_Printf("char * idDeclManagerLocal::GetDeclNameFromType( declType_t type )\r\n");
    return NULL;
}


/*
===================
idDeclManagerLocal::GetDeclTypeFromName
===================
*/
declType_t idDeclManagerLocal::GetDeclTypeFromName( const char *typeName ) const {
    declType_t retVal;
    memset(&retVal, 0, sizeof(declType_t));
    Sys_Printf("declType_t idDeclManagerLocal::GetDeclTypeFromName( const char *typeName )\r\n");
    return retVal;
}


/*
=================
idDeclManagerLocal::FindType

External users will always cause the decl to be parsed before returning
=================
*/
const idDecl *idDeclManagerLocal::FindType( declType_t type, const char *name, bool makeDefault ) {
    Sys_Printf("idDecl *idDeclManagerLocal::FindType( declType_t type, const char *name, bool makeDefault )\r\n");
    return NULL;
}


/*
===============
idDeclManagerLocal::FindDeclWithoutParsing
===============
*/
const idDecl* idDeclManagerLocal::FindDeclWithoutParsing( declType_t type, const char *name, bool makeDefault) {
    Sys_Printf("idDecl* idDeclManagerLocal::FindDeclWithoutParsing( declType_t type, const char *name, bool makeDefault)\r\n");
    return NULL;
}


/*
===============
idDeclManagerLocal::ReloadFile
===============
*/
void idDeclManagerLocal::ReloadFile( const char* filename, bool force ) {
    Sys_Printf("void idDeclManagerLocal::ReloadFile( const char* filename, bool force )\r\n");
}


/*
===================
idDeclManagerLocal::GetNumDecls
===================
*/
int idDeclManagerLocal::GetNumDecls( declType_t type ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclManagerLocal::GetNumDecls( declType_t type )\r\n");
    return retVal;
}


/*
===================
idDeclManagerLocal::DeclByIndex
===================
*/
const idDecl *idDeclManagerLocal::DeclByIndex( declType_t type, int index, bool forceParse ) {
    Sys_Printf("idDecl *idDeclManagerLocal::DeclByIndex( declType_t type, int index, bool forceParse )\r\n");
    return NULL;
}


/*
===================
idDeclManagerLocal::ListType

list*
Lists decls currently referenced

list* ever
Lists decls that have been referenced at least once since app launched

list* all
Lists every decl declared, even if it hasn't been referenced or parsed

FIXME: alphabetized, wildcards?
===================
*/
void idDeclManagerLocal::ListType( const idCmdArgs &args, declType_t type ) {
    Sys_Printf("void idDeclManagerLocal::ListType( const idCmdArgs &args, declType_t type )\r\n");
}


/*
===================
idDeclManagerLocal::PrintType
===================
*/
void idDeclManagerLocal::PrintType( const idCmdArgs &args, declType_t type ) {
    Sys_Printf("void idDeclManagerLocal::PrintType( const idCmdArgs &args, declType_t type )\r\n");
}


/*
===================
idDeclManagerLocal::CreateNewDecl
===================
*/
idDecl *idDeclManagerLocal::CreateNewDecl( declType_t type, const char *name, const char *_fileName ) {
    Sys_Printf("idDecl *idDeclManagerLocal::CreateNewDecl( declType_t type, const char *name, const char *_fileName )\r\n");
    return NULL;
}


/*
===============
idDeclManagerLocal::RenameDecl
===============
*/
bool idDeclManagerLocal::RenameDecl( declType_t type, const char* oldName, const char* newName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclManagerLocal::RenameDecl( declType_t type, const char* oldName, const char* newName )\r\n");
    return retVal;
}


/*
===================
idDeclManagerLocal::MediaPrint

This is just used to nicely indent media caching prints
===================
*/
void idDeclManagerLocal::MediaPrint( const char *fmt, ... ) {
    Sys_Printf("void idDeclManagerLocal::MediaPrint( const char *fmt, ... )\r\n");
}


/*
===================
idDeclManagerLocal::WritePrecacheCommands
===================
*/
void idDeclManagerLocal::WritePrecacheCommands( idFile *f ) {
    Sys_Printf("void idDeclManagerLocal::WritePrecacheCommands( idFile *f )\r\n");
}


/********************************************************************/

const idMaterial *idDeclManagerLocal::FindMaterial( const char *name, bool makeDefault ) {
    Sys_Printf("idMaterial *idDeclManagerLocal::FindMaterial( const char *name, bool makeDefault )\r\n");
    return NULL;
}


const idMaterial *idDeclManagerLocal::MaterialByIndex( int index, bool forceParse ) {
    Sys_Printf("idMaterial *idDeclManagerLocal::MaterialByIndex( int index, bool forceParse )\r\n");
    return NULL;
}


/********************************************************************/

const idDeclSkin *idDeclManagerLocal::FindSkin( const char *name, bool makeDefault ) {
    Sys_Printf("idDeclSkin *idDeclManagerLocal::FindSkin( const char *name, bool makeDefault )\r\n");
    return NULL;
}


const idDeclSkin *idDeclManagerLocal::SkinByIndex( int index, bool forceParse ) {
    Sys_Printf("idDeclSkin *idDeclManagerLocal::SkinByIndex( int index, bool forceParse )\r\n");
    return NULL;
}


/********************************************************************/

const idSoundShader *idDeclManagerLocal::FindSound( const char *name, bool makeDefault ) {
    Sys_Printf("idSoundShader *idDeclManagerLocal::FindSound( const char *name, bool makeDefault )\r\n");
    return NULL;
}


const idSoundShader *idDeclManagerLocal::SoundByIndex( int index, bool forceParse ) {
    Sys_Printf("idSoundShader *idDeclManagerLocal::SoundByIndex( int index, bool forceParse )\r\n");
    return NULL;
}


/*
===================
idDeclManagerLocal::MakeNameCanonical
===================
*/
void idDeclManagerLocal::MakeNameCanonical( const char *name, char *result, int maxLength ) {
    Sys_Printf("void idDeclManagerLocal::MakeNameCanonical( const char *name, char *result, int maxLength )\r\n");
}


/*
================
idDeclManagerLocal::ListDecls_f
================
*/
void idDeclManagerLocal::ListDecls_f( const idCmdArgs &args ) {
    Sys_Printf("void idDeclManagerLocal::ListDecls_f( const idCmdArgs &args )\r\n");
}


/*
===================
idDeclManagerLocal::ReloadDecls_f

Reload will not find any new files created in the directories, it
will only reload existing files.

A reload will never cause anything to be purged.
===================
*/
void idDeclManagerLocal::ReloadDecls_f( const idCmdArgs &args ) {
    Sys_Printf("void idDeclManagerLocal::ReloadDecls_f( const idCmdArgs &args )\r\n");
}


/*
===================
idDeclManagerLocal::TouchDecl_f
===================
*/
void idDeclManagerLocal::TouchDecl_f( const idCmdArgs &args ) {
    Sys_Printf("void idDeclManagerLocal::TouchDecl_f( const idCmdArgs &args )\r\n");
}


/*
===================
idDeclManagerLocal::FindTypeWithoutParsing

This finds or creats the decl, but does not cause a parse.  This is only used internally.
===================
*/
idDeclLocal *idDeclManagerLocal::FindTypeWithoutParsing( declType_t type, const char *name, bool makeDefault ) {
    Sys_Printf("idDeclLocal *idDeclManagerLocal::FindTypeWithoutParsing( declType_t type, const char *name, bool makeDefault )\r\n");
    return NULL;
}



/*
====================================================================================

	idDeclLocal

====================================================================================
*/

/*
=================
idDeclLocal::idDeclLocal
=================
*/
idDeclLocal::idDeclLocal( void ) {
	name = "unnamed";
	textSource = NULL;
	textLength = 0;
	compressedLength = 0;
	sourceFile = NULL;
	sourceTextOffset = 0;
	sourceTextLength = 0;
	sourceLine = 0;
	checksum = 0;
	type = DECL_ENTITYDEF;
	index = 0;
	declState = DS_UNPARSED;
	parsedOutsideLevelLoad = false;
	referencedThisLevel = false;
	everReferenced = false;
	redefinedInReload = false;
	nextInFile = NULL;
}

/*
=================
idDeclLocal::GetName
=================
*/
const char *idDeclLocal::GetName( void ) const {
    Sys_Printf("char *idDeclLocal::GetName( void )\r\n");
    return NULL;
}


/*
=================
idDeclLocal::GetType
=================
*/
declType_t idDeclLocal::GetType( void ) const {
    declType_t retVal;
    memset(&retVal, 0, sizeof(declType_t));
    Sys_Printf("declType_t idDeclLocal::GetType( void )\r\n");
    return retVal;
}


/*
=================
idDeclLocal::GetState
=================
*/
declState_t idDeclLocal::GetState( void ) const {
    declState_t retVal;
    memset(&retVal, 0, sizeof(declState_t));
    Sys_Printf("declState_t idDeclLocal::GetState( void )\r\n");
    return retVal;
}


/*
=================
idDeclLocal::IsImplicit
=================
*/
bool idDeclLocal::IsImplicit( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclLocal::IsImplicit( void )\r\n");
    return retVal;
}


/*
=================
idDeclLocal::IsValid
=================
*/
bool idDeclLocal::IsValid( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclLocal::IsValid( void )\r\n");
    return retVal;
}


/*
=================
idDeclLocal::Invalidate
=================
*/
void idDeclLocal::Invalidate( void ) {
    Sys_Printf("void idDeclLocal::Invalidate( void )\r\n");
}


/*
=================
idDeclLocal::EnsureNotPurged
=================
*/
void idDeclLocal::EnsureNotPurged( void ) {
    Sys_Printf("void idDeclLocal::EnsureNotPurged( void )\r\n");
}


/*
=================
idDeclLocal::Index
=================
*/
int idDeclLocal::Index( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclLocal::Index( void )\r\n");
    return retVal;
}


/*
=================
idDeclLocal::GetLineNum
=================
*/
int idDeclLocal::GetLineNum( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclLocal::GetLineNum( void )\r\n");
    return retVal;
}


/*
=================
idDeclLocal::GetFileName
=================
*/
const char *idDeclLocal::GetFileName( void ) const {
    Sys_Printf("char *idDeclLocal::GetFileName( void )\r\n");
    return NULL;
}


/*
=================
idDeclLocal::Size
=================
*/
size_t idDeclLocal::Size( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idDeclLocal::Size( void )\r\n");
    return retVal;
}


/*
=================
idDeclLocal::GetText
=================
*/
void idDeclLocal::GetText( char *text ) const {
    Sys_Printf("void idDeclLocal::GetText( char *text )\r\n");
}


/*
=================
idDeclLocal::GetTextLength
=================
*/
int idDeclLocal::GetTextLength( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclLocal::GetTextLength( void )\r\n");
    return retVal;
}


/*
=================
idDeclLocal::SetText
=================
*/
void idDeclLocal::SetText( const char *text ) {
    Sys_Printf("void idDeclLocal::SetText( const char *text )\r\n");
}


/*
=================
idDeclLocal::SetTextLocal
=================
*/
void idDeclLocal::SetTextLocal( const char *text, const int length ) {
    Sys_Printf("void idDeclLocal::SetTextLocal( const char *text, const int length )\r\n");
}


/*
=================
idDeclLocal::ReplaceSourceFileText
=================
*/
bool idDeclLocal::ReplaceSourceFileText( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclLocal::ReplaceSourceFileText( void )\r\n");
    return retVal;
}


/*
=================
idDeclLocal::SourceFileChanged
=================
*/
bool idDeclLocal::SourceFileChanged( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclLocal::SourceFileChanged( void )\r\n");
    return retVal;
}


/*
=================
idDeclLocal::MakeDefault
=================
*/
void idDeclLocal::MakeDefault() {
    Sys_Printf("void idDeclLocal::MakeDefault()\r\n");
}


/*
=================
idDeclLocal::SetDefaultText
=================
*/
bool idDeclLocal::SetDefaultText( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclLocal::SetDefaultText( void )\r\n");
    return retVal;
}


/*
=================
idDeclLocal::DefaultDefinition
=================
*/
const char *idDeclLocal::DefaultDefinition() const {
    Sys_Printf("char *idDeclLocal::DefaultDefinition()\r\n");
    return NULL;
}


/*
=================
idDeclLocal::Parse
=================
*/
bool idDeclLocal::Parse( const char *text, const int textLength ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclLocal::Parse( const char *text, const int textLength )\r\n");
    return retVal;
}


/*
=================
idDeclLocal::FreeData
=================
*/
void idDeclLocal::FreeData() {
    Sys_Printf("void idDeclLocal::FreeData()\r\n");
}


/*
=================
idDeclLocal::List
=================
*/
void idDeclLocal::List() const {
    Sys_Printf("void idDeclLocal::List()\r\n");
}


/*
=================
idDeclLocal::Print
=================
*/
void idDeclLocal::Print() const {
    Sys_Printf("void idDeclLocal::Print()\r\n");
}


/*
=================
idDeclLocal::Reload
=================
*/
void idDeclLocal::Reload( void ) {
    Sys_Printf("void idDeclLocal::Reload( void )\r\n");
}


/*
=================
idDeclLocal::AllocateSelf
=================
*/
void idDeclLocal::AllocateSelf( void ) {
    Sys_Printf("void idDeclLocal::AllocateSelf( void )\r\n");
}


/*
=================
idDeclLocal::ParseLocal
=================
*/
void idDeclLocal::ParseLocal( void ) {
    Sys_Printf("void idDeclLocal::ParseLocal( void )\r\n");
}


/*
=================
idDeclLocal::Purge
=================
*/
void idDeclLocal::Purge( void ) {
    Sys_Printf("void idDeclLocal::Purge( void )\r\n");
}


/*
=================
idDeclLocal::EverReferenced
=================
*/
bool idDeclLocal::EverReferenced( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclLocal::EverReferenced( void )\r\n");
    return retVal;
}

