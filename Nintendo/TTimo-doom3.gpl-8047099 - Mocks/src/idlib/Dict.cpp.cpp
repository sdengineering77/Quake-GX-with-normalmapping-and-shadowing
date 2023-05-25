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

idStrPool		idDict::globalKeys;
idStrPool		idDict::globalValues;

/*
================
idDict::operator=

  clear existing key/value pairs and copy all key/value pairs from other
================
*/
idDict &idDict::operator=( const idDict &other ) {
	int i;

	// check for assignment to self
	if ( this == &other ) {
		return *this;
	}

	Clear();

	args = other.args;
	argHash = other.argHash;

	for ( i = 0; i < args.Num(); i++ ) {
		args[i].key = globalKeys.CopyString( args[i].key );
		args[i].value = globalValues.CopyString( args[i].value );
	}

	return *this;
}

/*
================
idDict::Copy

  copy all key value pairs without removing existing key/value pairs not present in the other dict
================
*/
void idDict::Copy( const idDict &other ) {
    Sys_Printf("void idDict::Copy( const idDict &other )\r\n");
}


/*
================
idDict::TransferKeyValues

  clear existing key/value pairs and transfer key/value pairs from other
================
*/
void idDict::TransferKeyValues( idDict &other ) {
    Sys_Printf("void idDict::TransferKeyValues( idDict &other )\r\n");
}


/*
================
idDict::Parse
================
*/
bool idDict::Parse( idParser &parser ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDict::Parse( idParser &parser )\r\n");
    return retVal;
}


/*
================
idDict::SetDefaults
================
*/
void idDict::SetDefaults( const idDict *dict ) {
    Sys_Printf("void idDict::SetDefaults( const idDict *dict )\r\n");
}


/*
================
idDict::Clear
================
*/
void idDict::Clear( void ) {
    Sys_Printf("void idDict::Clear( void )\r\n");
}


/*
================
idDict::Print
================
*/
void idDict::Print() const {
    Sys_Printf("void idDict::Print()\r\n");
}


int KeyCompare( const idKeyValue *a, const idKeyValue *b ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int KeyCompare( const idKeyValue *a, const idKeyValue *b )\r\n");
    return retVal;
}


/*
================
idDict::Checksum
================
*/
int	idDict::Checksum( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidDict::Checksum( void )\r\n");
    return retVal;
}


/*
================
idDict::Allocated
================
*/
size_t idDict::Allocated( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idDict::Allocated( void )\r\n");
    return retVal;
}


/*
================
idDict::Set
================
*/
void idDict::Set( const char *key, const char *value ) {
    Sys_Printf("void idDict::Set( const char *key, const char *value )\r\n");
}


/*
================
idDict::GetFloat
================
*/
bool idDict::GetFloat( const char *key, const char *defaultString, float &out ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDict::GetFloat( const char *key, const char *defaultString, float &out )\r\n");
    return retVal;
}


/*
================
idDict::GetInt
================
*/
bool idDict::GetInt( const char *key, const char *defaultString, int &out ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDict::GetInt( const char *key, const char *defaultString, int &out )\r\n");
    return retVal;
}


/*
================
idDict::GetBool
================
*/
bool idDict::GetBool( const char *key, const char *defaultString, bool &out ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDict::GetBool( const char *key, const char *defaultString, bool &out )\r\n");
    return retVal;
}


/*
================
idDict::GetAngles
================
*/
bool idDict::GetAngles( const char *key, const char *defaultString, idAngles &out ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDict::GetAngles( const char *key, const char *defaultString, idAngles &out )\r\n");
    return retVal;
}


/*
================
idDict::GetVector
================
*/
bool idDict::GetVector( const char *key, const char *defaultString, idVec3 &out ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDict::GetVector( const char *key, const char *defaultString, idVec3 &out )\r\n");
    return retVal;
}


/*
================
idDict::GetVec2
================
*/
bool idDict::GetVec2( const char *key, const char *defaultString, idVec2 &out ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDict::GetVec2( const char *key, const char *defaultString, idVec2 &out )\r\n");
    return retVal;
}


/*
================
idDict::GetVec4
================
*/
bool idDict::GetVec4( const char *key, const char *defaultString, idVec4 &out ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDict::GetVec4( const char *key, const char *defaultString, idVec4 &out )\r\n");
    return retVal;
}


/*
================
idDict::GetMatrix
================
*/
bool idDict::GetMatrix( const char *key, const char *defaultString, idMat3 &out ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDict::GetMatrix( const char *key, const char *defaultString, idMat3 &out )\r\n");
    return retVal;
}


/*
================
WriteString
================
*/
static void WriteString( const char *s, idFile *f ) {
    Sys_Printf("void WriteString( const char *s, idFile *f )\r\n");
}


/*
================
idDict::FindKey
================
*/
const idKeyValue *idDict::FindKey( const char *key ) const {
    Sys_Printf("idKeyValue *idDict::FindKey( const char *key )\r\n");
    return NULL;
}


/*
================
idDict::FindKeyIndex
================
*/
int idDict::FindKeyIndex( const char *key ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDict::FindKeyIndex( const char *key )\r\n");
    return retVal;
}


/*
================
idDict::Delete
================
*/
void idDict::Delete( const char *key ) {
    Sys_Printf("void idDict::Delete( const char *key )\r\n");
}


/*
================
idDict::MatchPrefix
================
*/
const idKeyValue *idDict::MatchPrefix( const char *prefix, const idKeyValue *lastMatch ) const {
    Sys_Printf("idKeyValue *idDict::MatchPrefix( const char *prefix, const idKeyValue *lastMatch )\r\n");
    return NULL;
}


/*
================
idDict::RandomPrefix
================
*/
const char *idDict::RandomPrefix( const char *prefix, idRandom &random ) const {
    Sys_Printf("char *idDict::RandomPrefix( const char *prefix, idRandom &random )\r\n");
    return NULL;
}


/*
================
idDict::WriteToFileHandle
================
*/
void idDict::WriteToFileHandle( idFile *f ) const {
    Sys_Printf("void idDict::WriteToFileHandle( idFile *f )\r\n");
}


/*
================
ReadString
================
*/
static idStr ReadString( idFile *f ) {
    idStr retVal;
    memset(&retVal, 0, sizeof(idStr));
    Sys_Printf("idStr ReadString( idFile *f )\r\n");
    return retVal;
}


/*
================
idDict::ReadFromFileHandle
================
*/
void idDict::ReadFromFileHandle( idFile *f ) {
    Sys_Printf("void idDict::ReadFromFileHandle( idFile *f )\r\n");
}


/*
================
idDict::Init
================
*/
void idDict::Init( void ) {
    Sys_Printf("void idDict::Init( void )\r\n");
}


/*
================
idDict::Shutdown
================
*/
void idDict::Shutdown( void ) {
    Sys_Printf("void idDict::Shutdown( void )\r\n");
}


/*
================
idDict::ShowMemoryUsage_f
================
*/
void idDict::ShowMemoryUsage_f( const idCmdArgs &args ) {
    Sys_Printf("void idDict::ShowMemoryUsage_f( const idCmdArgs &args )\r\n");
}


/*
================
idDictStringSortCmp
================
*/
// NOTE: the const wonkyness is required to make msvc happy
template<>
ID_INLINE int idListSortCompare( const idPoolStr * const *a, const idPoolStr * const *b ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idListSortCompare( const idPoolStr * const *a, const idPoolStr * const *b )\r\n");
    return retVal;
}


/*
================
idDict::ListKeys_f
================
*/
void idDict::ListKeys_f( const idCmdArgs &args ) {
    Sys_Printf("void idDict::ListKeys_f( const idCmdArgs &args )\r\n");
}


/*
================
idDict::ListValues_f
================
*/
void idDict::ListValues_f( const idCmdArgs &args ) {
    Sys_Printf("void idDict::ListValues_f( const idCmdArgs &args )\r\n");
}

