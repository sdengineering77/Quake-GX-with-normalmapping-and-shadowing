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

// This is real evil but allows the code to inspect arbitrary class variables.
#define private		public
#define protected	public

#include "../../idlib/precompiled.h"
#pragma hdrstop

#include "../Game_local.h"

#ifdef ID_DEBUG_MEMORY
#include "GameTypeInfo.h"				// Make sure this is up to date!
#else
#include "NoGameTypeInfo.h"
#endif

// disabled because it's adds about 64MB to state dumps and takes a really long time
//#define DUMP_GAMELOCAL


typedef void (*WriteVariableType_t)( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize );


class idTypeInfoTools {
public:
	static const classTypeInfo_t *	FindClassInfo( const char *typeName );
	static const enumTypeInfo_t *	FindEnumInfo( const char *typeName );
	static bool						IsSubclassOf( const char *typeName, const char *superType );
	static void						PrintType( const void *typePtr, const char *typeName );
	static void						WriteTypeToFile( idFile *fp, const void *typePtr, const char *typeName );
	static void						InitTypeVariables( const void *typePtr, const char *typeName, int value );
	static void						WriteGameState( const char *fileName );
	static void						CompareGameState( const char *fileName );

private:
	static idFile *					fp;
	static int						initValue;
	static WriteVariableType_t		Write;
	static idLexer *				src;
	static bool						typeError;

	static const char *				OutputString( const char *string );
	static bool						ParseTemplateArguments( idLexer &src, idStr &arguments );
	static void						PrintVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize );
	static void						WriteVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize );
	static void						WriteGameStateVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize );
	static void						InitVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize );
	static void						VerifyVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize );
	static int						WriteVariable_r( const void *varPtr, const char *varName, const char *varType, const char *scope, const char *prefix, const int pointerDepth );
	static void						WriteClass_r( const void *classPtr, const char *className, const char *classType, const char *scope, const char *prefix, const int pointerDepth );
};

idFile *							idTypeInfoTools::fp			= NULL;
int									idTypeInfoTools::initValue	= 0;
WriteVariableType_t					idTypeInfoTools::Write		= NULL;
idLexer *							idTypeInfoTools::src		= NULL;
bool								idTypeInfoTools::typeError	= false;


/*
================
GetTypeVariableName
================
*/
const char *GetTypeVariableName( const char *typeName, int offset ) {
    Sys_Printf("char *GetTypeVariableName( const char *typeName, int offset )\r\n");
    return NULL;
}


/*
================
idTypeInfoTools::FindClassInfo
================
*/
const classTypeInfo_t *idTypeInfoTools::FindClassInfo( const char *typeName ) {
    Sys_Printf("classTypeInfo_t *idTypeInfoTools::FindClassInfo( const char *typeName )\r\n");
    return NULL;
}


/*
================
idTypeInfoTools::FindEnumInfo
================
*/
const enumTypeInfo_t *idTypeInfoTools::FindEnumInfo( const char *typeName ) {
    Sys_Printf("enumTypeInfo_t *idTypeInfoTools::FindEnumInfo( const char *typeName )\r\n");
    return NULL;
}


/*
================
idTypeInfoTools::IsSubclassOf
================
*/
bool idTypeInfoTools::IsSubclassOf( const char *typeName, const char *superType ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idTypeInfoTools::IsSubclassOf( const char *typeName, const char *superType )\r\n");
    return retVal;
}


/*
================
idTypeInfoTools::OutputString
================
*/
const char *idTypeInfoTools::OutputString( const char *string ) {
    Sys_Printf("char *idTypeInfoTools::OutputString( const char *string )\r\n");
    return NULL;
}


/*
================
idTypeInfoTools::ParseTemplateArguments
================
*/
bool idTypeInfoTools::ParseTemplateArguments( idLexer &src, idStr &arguments ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idTypeInfoTools::ParseTemplateArguments( idLexer &src, idStr &arguments )\r\n");
    return retVal;
}


/*
================
idTypeInfoTools::PrintType
================
*/
void idTypeInfoTools::PrintType( const void *typePtr, const char *typeName ) {
    Sys_Printf("void idTypeInfoTools::PrintType( const void *typePtr, const char *typeName )\r\n");
}


/*
================
idTypeInfoTools::WriteTypeToFile
================
*/
void idTypeInfoTools::WriteTypeToFile( idFile *fp, const void *typePtr, const char *typeName ) {
    Sys_Printf("void idTypeInfoTools::WriteTypeToFile( idFile *fp, const void *typePtr, const char *typeName )\r\n");
}


/*
================
idTypeInfoTools::InitTypeVariables
================
*/
void idTypeInfoTools::InitTypeVariables( const void *typePtr, const char *typeName, int value ) {
    Sys_Printf("void idTypeInfoTools::InitTypeVariables( const void *typePtr, const char *typeName, int value )\r\n");
}


/*
================
IsAllowedToChangedFromSaveGames
================
*/
bool IsAllowedToChangedFromSaveGames( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool IsAllowedToChangedFromSaveGames( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value )\r\n");
    return retVal;
}


/*
================
IsRenderHandleVariable
================
*/
bool IsRenderHandleVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool IsRenderHandleVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value )\r\n");
    return retVal;
}


/*
================
idTypeInfoTools::PrintVariable
================
*/
void idTypeInfoTools::PrintVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize ) {
    Sys_Printf("void idTypeInfoTools::PrintVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize )\r\n");
}


/*
================
idTypeInfoTools::WriteVariable
================
*/
void idTypeInfoTools::WriteVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize ) {
    Sys_Printf("void idTypeInfoTools::WriteVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize )\r\n");
}


/*
================
idTypeInfoTools::WriteGameStateVariable
================
*/
void idTypeInfoTools::WriteGameStateVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize ) {
    Sys_Printf("void idTypeInfoTools::WriteGameStateVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize )\r\n");
}


/*
================
idTypeInfoTools::InitVariable
================
*/
void idTypeInfoTools::InitVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize ) {
    Sys_Printf("void idTypeInfoTools::InitVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize )\r\n");
}


/*
================
idTypeInfoTools::VerifyVariable
================
*/
void idTypeInfoTools::VerifyVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize ) {
    Sys_Printf("void idTypeInfoTools::VerifyVariable( const char *varName, const char *varType, const char *scope, const char *prefix, const char *postfix, const char *value, const void *varPtr, int varSize )\r\n");
}


/*
================
idTypeInfoTools::WriteVariable_r
================
*/
int idTypeInfoTools::WriteVariable_r( const void *varPtr, const char *varName, const char *varType, const char *scope, const char *prefix, const int pointerDepth ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTypeInfoTools::WriteVariable_r( const void *varPtr, const char *varName, const char *varType, const char *scope, const char *prefix, const int pointerDepth )\r\n");
    return retVal;
}


/*
================
idTypeInfoTools::WriteClass_r
================
*/
void idTypeInfoTools::WriteClass_r( const void *classPtr, const char *className, const char *classType, const char *scope, const char *prefix, const int pointerDepth ) {
    Sys_Printf("void idTypeInfoTools::WriteClass_r( const void *classPtr, const char *className, const char *classType, const char *scope, const char *prefix, const int pointerDepth )\r\n");
}


/*
================
idTypeInfoTools::WriteGameState
================
*/
void idTypeInfoTools::WriteGameState( const char *fileName ) {
    Sys_Printf("void idTypeInfoTools::WriteGameState( const char *fileName )\r\n");
}


/*
================
idTypeInfoTools::CompareGameState
================
*/
void idTypeInfoTools::CompareGameState( const char *fileName ) {
    Sys_Printf("void idTypeInfoTools::CompareGameState( const char *fileName )\r\n");
}


/*
================
WriteGameState_f
================
*/
void WriteGameState_f( const idCmdArgs &args ) {
    Sys_Printf("void WriteGameState_f( const idCmdArgs &args )\r\n");
}


/*
================
CompareGameState_f
================
*/
void CompareGameState_f( const idCmdArgs &args ) {
    Sys_Printf("void CompareGameState_f( const idCmdArgs &args )\r\n");
}


/*
================
TestSaveGame_f
================
*/
void TestSaveGame_f( const idCmdArgs &args ) {
    Sys_Printf("void TestSaveGame_f( const idCmdArgs &args )\r\n");
}


/*
================
WriteTypeToFile
================
*/
void WriteTypeToFile( idFile *fp, const void *typePtr, const char *typeName ) {
    Sys_Printf("void WriteTypeToFile( idFile *fp, const void *typePtr, const char *typeName )\r\n");
}


/*
================
PrintType
================
*/
void PrintType( const void *typePtr, const char *typeName ) {
    Sys_Printf("void PrintType( const void *typePtr, const char *typeName )\r\n");
}


/*
================
InitTypeVariables
================
*/
void InitTypeVariables( const void *typePtr, const char *typeName, int value ) {
    Sys_Printf("void InitTypeVariables( const void *typePtr, const char *typeName, int value )\r\n");
}


/*
================
ListTypeInfo_f
================
*/
int SortTypeInfoByName( const int *a, const int *b ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int SortTypeInfoByName( const int *a, const int *b )\r\n");
    return retVal;
}


int SortTypeInfoBySize( const int *a, const int *b ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int SortTypeInfoBySize( const int *a, const int *b )\r\n");
    return retVal;
}


void ListTypeInfo_f( const idCmdArgs &args ) {
    Sys_Printf("void ListTypeInfo_f( const idCmdArgs &args )\r\n");
}

