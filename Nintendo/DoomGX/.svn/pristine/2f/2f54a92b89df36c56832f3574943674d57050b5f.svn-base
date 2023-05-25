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

#include "precompiled.h"
#pragma hdrstop

#define PUNCTABLE

//longer punctuations first
punctuation_t default_punctuations[] = {
	//binary operators
	{">>=",P_RSHIFT_ASSIGN},
	{"<<=",P_LSHIFT_ASSIGN},
	//
	{"...",P_PARMS},
	//define merge operator
	{"##",P_PRECOMPMERGE},				// pre-compiler
	//logic operators
	{"&&",P_LOGIC_AND},					// pre-compiler
	{"||",P_LOGIC_OR},					// pre-compiler
	{">=",P_LOGIC_GEQ},					// pre-compiler
	{"<=",P_LOGIC_LEQ},					// pre-compiler
	{"==",P_LOGIC_EQ},					// pre-compiler
	{"!=",P_LOGIC_UNEQ},				// pre-compiler
	//arithmatic operators
	{"*=",P_MUL_ASSIGN},
	{"/=",P_DIV_ASSIGN},
	{"%=",P_MOD_ASSIGN},
	{"+=",P_ADD_ASSIGN},
	{"-=",P_SUB_ASSIGN},
	{"++",P_INC},
	{"--",P_DEC},
	//binary operators
	{"&=",P_BIN_AND_ASSIGN},
	{"|=",P_BIN_OR_ASSIGN},
	{"^=",P_BIN_XOR_ASSIGN},
	{">>",P_RSHIFT},					// pre-compiler
	{"<<",P_LSHIFT},					// pre-compiler
	//reference operators
	{"->",P_POINTERREF},
	//C++
	{"::",P_CPP1},
	{".*",P_CPP2},
	//arithmatic operators
	{"*",P_MUL},						// pre-compiler
	{"/",P_DIV},						// pre-compiler
	{"%",P_MOD},						// pre-compiler
	{"+",P_ADD},						// pre-compiler
	{"-",P_SUB},						// pre-compiler
	{"=",P_ASSIGN},
	//binary operators
	{"&",P_BIN_AND},					// pre-compiler
	{"|",P_BIN_OR},						// pre-compiler
	{"^",P_BIN_XOR},					// pre-compiler
	{"~",P_BIN_NOT},					// pre-compiler
	//logic operators
	{"!",P_LOGIC_NOT},					// pre-compiler
	{">",P_LOGIC_GREATER},				// pre-compiler
	{"<",P_LOGIC_LESS},					// pre-compiler
	//reference operator
	{".",P_REF},
	//seperators
	{",",P_COMMA},						// pre-compiler
	{";",P_SEMICOLON},
	//label indication
	{":",P_COLON},						// pre-compiler
	//if statement
	{"?",P_QUESTIONMARK},				// pre-compiler
	//embracements
	{"(",P_PARENTHESESOPEN},			// pre-compiler
	{")",P_PARENTHESESCLOSE},			// pre-compiler
	{"{",P_BRACEOPEN},					// pre-compiler
	{"}",P_BRACECLOSE},					// pre-compiler
	{"[",P_SQBRACKETOPEN},
	{"]",P_SQBRACKETCLOSE},
	//
	{"\\",P_BACKSLASH},
	//precompiler operator
	{"#",P_PRECOMP},					// pre-compiler
	{"$",P_DOLLAR},
	{NULL, 0}
};

int default_punctuationtable[256];
int default_nextpunctuation[sizeof(default_punctuations) / sizeof(punctuation_t)];
int default_setup;

char idLexer::baseFolder[ 256 ];

/*
================
idLexer::CreatePunctuationTable
================
*/
void idLexer::CreatePunctuationTable( const punctuation_t *punctuations ) {
    Sys_Printf("void idLexer::CreatePunctuationTable( const punctuation_t *punctuations )\r\n");
}


/*
================
idLexer::GetPunctuationFromId
================
*/
const char *idLexer::GetPunctuationFromId( int id ) {
    Sys_Printf("char *idLexer::GetPunctuationFromId( int id )\r\n");
    return NULL;
}


/*
================
idLexer::GetPunctuationId
================
*/
int idLexer::GetPunctuationId( const char *p ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::GetPunctuationId( const char *p )\r\n");
    return retVal;
}


/*
================
idLexer::Error
================
*/
void idLexer::Error( const char *str, ... ) {
    Sys_Printf("void idLexer::Error( const char *str, ... )\r\n");
}


/*
================
idLexer::Warning
================
*/
void idLexer::Warning( const char *str, ... ) {
    Sys_Printf("void idLexer::Warning( const char *str, ... )\r\n");
}


/*
================
idLexer::SetPunctuations
================
*/
void idLexer::SetPunctuations( const punctuation_t *p ) {
    Sys_Printf("void idLexer::SetPunctuations( const punctuation_t *p )\r\n");
}


/*
================
idLexer::ReadWhiteSpace

Reads spaces, tabs, C-like comments etc.
When a newline character is found the scripts line counter is increased.
================
*/
int idLexer::ReadWhiteSpace( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::ReadWhiteSpace( void )\r\n");
    return retVal;
}


/*
================
idLexer::ReadEscapeCharacter
================
*/
int idLexer::ReadEscapeCharacter( char *ch ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::ReadEscapeCharacter( char *ch )\r\n");
    return retVal;
}


/*
================
idLexer::ReadString

Escape characters are interpretted.
Reads two strings with only a white space between them as one string.
================
*/
int idLexer::ReadString( idToken *token, int quote ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::ReadString( idToken *token, int quote )\r\n");
    return retVal;
}


/*
================
idLexer::ReadName
================
*/
int idLexer::ReadName( idToken *token ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::ReadName( idToken *token )\r\n");
    return retVal;
}


/*
================
idLexer::CheckString
================
*/
ID_INLINE int idLexer::CheckString( const char *str ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::CheckString( const char *str )\r\n");
    return retVal;
}


/*
================
idLexer::ReadNumber
================
*/
int idLexer::ReadNumber( idToken *token ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::ReadNumber( idToken *token )\r\n");
    return retVal;
}


/*
================
idLexer::ReadPunctuation
================
*/
int idLexer::ReadPunctuation( idToken *token ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::ReadPunctuation( idToken *token )\r\n");
    return retVal;
}


/*
================
idLexer::ReadToken
================
*/
int idLexer::ReadToken( idToken *token ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::ReadToken( idToken *token )\r\n");
    return retVal;
}


/*
================
idLexer::ExpectTokenString
================
*/
int idLexer::ExpectTokenString( const char *string ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::ExpectTokenString( const char *string )\r\n");
    return retVal;
}


/*
================
idLexer::ExpectTokenType
================
*/
int idLexer::ExpectTokenType( int type, int subtype, idToken *token ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::ExpectTokenType( int type, int subtype, idToken *token )\r\n");
    return retVal;
}


/*
================
idLexer::ExpectAnyToken
================
*/
int idLexer::ExpectAnyToken( idToken *token ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::ExpectAnyToken( idToken *token )\r\n");
    return retVal;
}


/*
================
idLexer::CheckTokenString
================
*/
int idLexer::CheckTokenString( const char *string ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::CheckTokenString( const char *string )\r\n");
    return retVal;
}


/*
================
idLexer::CheckTokenType
================
*/
int idLexer::CheckTokenType( int type, int subtype, idToken *token ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::CheckTokenType( int type, int subtype, idToken *token )\r\n");
    return retVal;
}


/*
================
idLexer::PeekTokenString
================
*/
int idLexer::PeekTokenString( const char *string ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::PeekTokenString( const char *string )\r\n");
    return retVal;
}


/*
================
idLexer::PeekTokenType
================
*/
int idLexer::PeekTokenType( int type, int subtype, idToken *token ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::PeekTokenType( int type, int subtype, idToken *token )\r\n");
    return retVal;
}


/*
================
idLexer::SkipUntilString
================
*/
int idLexer::SkipUntilString( const char *string ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::SkipUntilString( const char *string )\r\n");
    return retVal;
}


/*
================
idLexer::SkipRestOfLine
================
*/
int idLexer::SkipRestOfLine( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::SkipRestOfLine( void )\r\n");
    return retVal;
}


/*
=================
idLexer::SkipBracedSection

Skips until a matching close brace is found.
Internal brace depths are properly skipped.
=================
*/
int idLexer::SkipBracedSection( bool parseFirstBrace ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::SkipBracedSection( bool parseFirstBrace )\r\n");
    return retVal;
}


/*
================
idLexer::UnreadToken
================
*/
void idLexer::UnreadToken( const idToken *token ) {
    Sys_Printf("void idLexer::UnreadToken( const idToken *token )\r\n");
}


/*
================
idLexer::ReadTokenOnLine
================
*/
int idLexer::ReadTokenOnLine( idToken *token ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::ReadTokenOnLine( idToken *token )\r\n");
    return retVal;
}


/*
================
idLexer::ReadRestOfLine
================
*/
const char*	idLexer::ReadRestOfLine(idStr& out) {
    Sys_Printf("char*idLexer::ReadRestOfLine(idStr& out)\r\n");
    return NULL;
}


/*
================
idLexer::ParseInt
================
*/
int idLexer::ParseInt( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::ParseInt( void )\r\n");
    return retVal;
}


/*
================
idLexer::ParseBool
================
*/
bool idLexer::ParseBool( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idLexer::ParseBool( void )\r\n");
    return retVal;
}


/*
================
idLexer::ParseFloat
================
*/
float idLexer::ParseFloat( bool *errorFlag ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idLexer::ParseFloat( bool *errorFlag )\r\n");
    return retVal;
}


/*
================
idLexer::Parse1DMatrix
================
*/
int idLexer::Parse1DMatrix( int x, float *m ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::Parse1DMatrix( int x, float *m )\r\n");
    return retVal;
}


/*
================
idLexer::Parse2DMatrix
================
*/
int idLexer::Parse2DMatrix( int y, int x, float *m ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::Parse2DMatrix( int y, int x, float *m )\r\n");
    return retVal;
}


/*
================
idLexer::Parse3DMatrix
================
*/
int idLexer::Parse3DMatrix( int z, int y, int x, float *m ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::Parse3DMatrix( int z, int y, int x, float *m )\r\n");
    return retVal;
}


/*
=================
idParser::ParseBracedSection

The next token should be an open brace.
Parses until a matching close brace is found.
Maintains exact characters between braces.

  FIXME: this should use ReadToken and replace the token white space with correct indents and newlines
=================
*/
const char *idLexer::ParseBracedSectionExact( idStr &out, int tabs ) {
    Sys_Printf("char *idLexer::ParseBracedSectionExact( idStr &out, int tabs )\r\n");
    return NULL;
}


/*
=================
idLexer::ParseBracedSection

The next token should be an open brace.
Parses until a matching close brace is found.
Internal brace depths are properly skipped.
=================
*/
const char *idLexer::ParseBracedSection( idStr &out ) {
    Sys_Printf("char *idLexer::ParseBracedSection( idStr &out )\r\n");
    return NULL;
}


/*
=================
idLexer::ParseRestOfLine

  parse the rest of the line
=================
*/
const char *idLexer::ParseRestOfLine( idStr &out ) {
    Sys_Printf("char *idLexer::ParseRestOfLine( idStr &out )\r\n");
    return NULL;
}


/*
================
idLexer::GetLastWhiteSpace
================
*/
int idLexer::GetLastWhiteSpace( idStr &whiteSpace ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::GetLastWhiteSpace( idStr &whiteSpace )\r\n");
    return retVal;
}


/*
================
idLexer::GetLastWhiteSpaceStart
================
*/
int idLexer::GetLastWhiteSpaceStart( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::GetLastWhiteSpaceStart( void )\r\n");
    return retVal;
}


/*
================
idLexer::GetLastWhiteSpaceEnd
================
*/
int idLexer::GetLastWhiteSpaceEnd( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::GetLastWhiteSpaceEnd( void )\r\n");
    return retVal;
}


/*
================
idLexer::Reset
================
*/
void idLexer::Reset( void ) {
    Sys_Printf("void idLexer::Reset( void )\r\n");
}


/*
================
idLexer::EndOfFile
================
*/
int idLexer::EndOfFile( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::EndOfFile( void )\r\n");
    return retVal;
}


/*
================
idLexer::NumLinesCrossed
================
*/
int idLexer::NumLinesCrossed( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::NumLinesCrossed( void )\r\n");
    return retVal;
}


/*
================
idLexer::LoadFile
================
*/
int idLexer::LoadFile( const char *filename, bool OSPath ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::LoadFile( const char *filename, bool OSPath )\r\n");
    return retVal;
}


/*
================
idLexer::LoadMemory
================
*/
int idLexer::LoadMemory( const char *ptr, int length, const char *name, int startLine ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLexer::LoadMemory( const char *ptr, int length, const char *name, int startLine )\r\n");
    return retVal;
}


/*
================
idLexer::FreeSource
================
*/
void idLexer::FreeSource( void ) {
    Sys_Printf("void idLexer::FreeSource( void )\r\n");
}


/*
================
idLexer::idLexer
================
*/
idLexer::idLexer( void ) {
	idLexer::loaded = false;
	idLexer::filename = "";
	idLexer::flags = 0;
	idLexer::SetPunctuations( NULL );
	idLexer::allocated = false;
	idLexer::fileTime = 0;
	idLexer::length = 0;
	idLexer::line = 0;
	idLexer::lastline = 0;
	idLexer::tokenavailable = 0;
	idLexer::token = "";
	idLexer::next = NULL;
	idLexer::hadError = false;
}

/*
================
idLexer::idLexer
================
*/
idLexer::idLexer( int flags ) {
	idLexer::loaded = false;
	idLexer::filename = "";
	idLexer::flags = flags;
	idLexer::SetPunctuations( NULL );
	idLexer::allocated = false;
	idLexer::fileTime = 0;
	idLexer::length = 0;
	idLexer::line = 0;
	idLexer::lastline = 0;
	idLexer::tokenavailable = 0;
	idLexer::token = "";
	idLexer::next = NULL;
	idLexer::hadError = false;
}

/*
================
idLexer::idLexer
================
*/
idLexer::idLexer( const char *filename, int flags, bool OSPath ) {
	idLexer::loaded = false;
	idLexer::flags = flags;
	idLexer::SetPunctuations( NULL );
	idLexer::allocated = false;
	idLexer::token = "";
	idLexer::next = NULL;
	idLexer::hadError = false;
	idLexer::LoadFile( filename, OSPath );
}

/*
================
idLexer::idLexer
================
*/
idLexer::idLexer( const char *ptr, int length, const char *name, int flags ) {
	idLexer::loaded = false;
	idLexer::flags = flags;
	idLexer::SetPunctuations( NULL );
	idLexer::allocated = false;
	idLexer::token = "";
	idLexer::next = NULL;
	idLexer::hadError = false;
	idLexer::LoadMemory( ptr, length, name );
}

/*
================
idLexer::~idLexer
================
*/
idLexer::~idLexer( void ) {
	idLexer::FreeSource();
}

/*
================
idLexer::SetBaseFolder
================
*/
void idLexer::SetBaseFolder( const char *path ) {
    Sys_Printf("void idLexer::SetBaseFolder( const char *path )\r\n");
}


/*
================
idLexer::HadError
================
*/
bool idLexer::HadError( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idLexer::HadError( void )\r\n");
    return retVal;
}


