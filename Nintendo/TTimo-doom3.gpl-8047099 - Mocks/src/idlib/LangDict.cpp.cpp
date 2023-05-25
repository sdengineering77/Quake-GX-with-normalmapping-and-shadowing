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


/*
============
idLangDict::idLangDict
============
*/
idLangDict::idLangDict( void ) {
	args.SetGranularity( 256 );
	hash.SetGranularity( 256 );
	hash.Clear( 4096, 8192 );
	baseID = 0;
}

/*
============
idLangDict::~idLangDict
============
*/
idLangDict::~idLangDict( void ) {
	Clear();
}

/*
============
idLangDict::Clear
============
*/
void idLangDict::Clear( void ) {
    Sys_Printf("void idLangDict::Clear( void )\r\n");
}


/*
============
idLangDict::Load
============
*/
bool idLangDict::Load( const char *fileName, bool clear /* _D3XP */ ) {
	
	if ( clear ) {
		Clear();
	}
	
	const char *buffer = NULL;
	idLexer src( LEXFL_NOFATALERRORS | LEXFL_NOSTRINGCONCAT | LEXFL_ALLOWMULTICHARLITERALS | LEXFL_ALLOWBACKSLASHSTRINGCONCAT );

	int len = idLib::fileSystem->ReadFile( fileName, (void**)&buffer );
	if ( len <= 0 ) {
		// let whoever called us deal with the failure (so sys_lang can be reset)
		return false;
	}
	src.LoadMemory( buffer, strlen( buffer ), fileName );
	if ( !src.IsLoaded() ) {
		return false;
	}

	idToken tok, tok2;
	src.ExpectTokenString( "{" );
	while ( src.ReadToken( &tok ) ) {
		if ( tok == "}" ) {
			break;
		}
		if ( src.ReadToken( &tok2 ) ) {
			if ( tok2 == "}" ) {
				break;
			}
			idLangKeyValue kv;
			kv.key = tok;
			kv.value = tok2;
			assert( kv.key.Cmpn( STRTABLE_ID, STRTABLE_ID_LENGTH ) == 0 );
			hash.Add( GetHashKey( kv.key ), args.Append( kv ) );
		}
	}
	idLib::common->Printf( "%i strings read from %s\n", args.Num(), fileName );
	idLib::fileSystem->FreeFile( (void*)buffer );
	
	return true;
}

/*
============
idLangDict::Save
============
*/
void idLangDict::Save( const char *fileName ) {
    Sys_Printf("void idLangDict::Save( const char *fileName )\r\n");
}


/*
============
idLangDict::GetString
============
*/
const char *idLangDict::GetString( const char *str ) const {
    Sys_Printf("char *idLangDict::GetString( const char *str )\r\n");
    return NULL;
}


/*
============
idLangDict::AddString
============
*/
const char *idLangDict::AddString( const char *str ) {
    Sys_Printf("char *idLangDict::AddString( const char *str )\r\n");
    return NULL;
}


/*
============
idLangDict::GetNumKeyVals
============
*/
int idLangDict::GetNumKeyVals( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLangDict::GetNumKeyVals( void )\r\n");
    return retVal;
}


/*
============
idLangDict::GetKeyVal
============
*/
const idLangKeyValue * idLangDict::GetKeyVal( int i ) const {
    Sys_Printf("idLangKeyValue * idLangDict::GetKeyVal( int i )\r\n");
    return NULL;
}


/*
============
idLangDict::AddKeyVal
============
*/
void idLangDict::AddKeyVal( const char *key, const char *val ) {
    Sys_Printf("void idLangDict::AddKeyVal( const char *key, const char *val )\r\n");
}


/*
============
idLangDict::ExcludeString
============
*/
bool idLangDict::ExcludeString( const char *str ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idLangDict::ExcludeString( const char *str )\r\n");
    return retVal;
}


/*
============
idLangDict::GetNextId
============
*/
int idLangDict::GetNextId( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLangDict::GetNextId( void )\r\n");
    return retVal;
}


/*
============
idLangDict::GetHashKey
============
*/
int idLangDict::GetHashKey( const char *str ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLangDict::GetHashKey( const char *str )\r\n");
    return retVal;
}

