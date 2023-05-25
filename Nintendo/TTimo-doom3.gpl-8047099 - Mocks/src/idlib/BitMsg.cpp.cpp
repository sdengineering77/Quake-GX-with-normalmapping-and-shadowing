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
==============================================================================

  idBitMsg

==============================================================================
*/

/*
================
idBitMsg::idBitMsg
================
*/
idBitMsg::idBitMsg() {
	writeData = NULL;
	readData = NULL;
	maxSize = 0;
	curSize = 0;
	writeBit = 0;
	readCount = 0;
	readBit = 0;
	allowOverflow = false;
	overflowed = false;
}

/*
================
idBitMsg::CheckOverflow
================
*/
bool idBitMsg::CheckOverflow( int numBits ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBitMsg::CheckOverflow( int numBits )\r\n");
    return retVal;
}


/*
================
idBitMsg::GetByteSpace
================
*/
byte *idBitMsg::GetByteSpace( int length ) {
    Sys_Printf("byte *idBitMsg::GetByteSpace( int length )\r\n");
    return NULL;
}


/*
================
idBitMsg::WriteBits

  If the number of bits is negative a sign is included.
================
*/
void idBitMsg::WriteBits( int value, int numBits ) {
    Sys_Printf("void idBitMsg::WriteBits( int value, int numBits )\r\n");
}


/*
================
idBitMsg::WriteString
================
*/
void idBitMsg::WriteString( const char *s, int maxLength, bool make7Bit ) {
    Sys_Printf("void idBitMsg::WriteString( const char *s, int maxLength, bool make7Bit )\r\n");
}


/*
================
idBitMsg::WriteData
================
*/
void idBitMsg::WriteData( const void *data, int length ) {
    Sys_Printf("void idBitMsg::WriteData( const void *data, int length )\r\n");
}


/*
================
idBitMsg::WriteNetadr
================
*/
void idBitMsg::WriteNetadr( const netadr_t adr ) {
    Sys_Printf("void idBitMsg::WriteNetadr( const netadr_t adr )\r\n");
}


/*
================
idBitMsg::WriteDelta
================
*/
void idBitMsg::WriteDelta( int oldValue, int newValue, int numBits ) {
    Sys_Printf("void idBitMsg::WriteDelta( int oldValue, int newValue, int numBits )\r\n");
}


/*
================
idBitMsg::WriteDeltaByteCounter
================
*/
void idBitMsg::WriteDeltaByteCounter( int oldValue, int newValue ) {
    Sys_Printf("void idBitMsg::WriteDeltaByteCounter( int oldValue, int newValue )\r\n");
}


/*
================
idBitMsg::WriteDeltaShortCounter
================
*/
void idBitMsg::WriteDeltaShortCounter( int oldValue, int newValue ) {
    Sys_Printf("void idBitMsg::WriteDeltaShortCounter( int oldValue, int newValue )\r\n");
}


/*
================
idBitMsg::WriteDeltaLongCounter
================
*/
void idBitMsg::WriteDeltaLongCounter( int oldValue, int newValue ) {
    Sys_Printf("void idBitMsg::WriteDeltaLongCounter( int oldValue, int newValue )\r\n");
}


/*
==================
idBitMsg::WriteDeltaDict
==================
*/
bool idBitMsg::WriteDeltaDict( const idDict &dict, const idDict *base ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBitMsg::WriteDeltaDict( const idDict &dict, const idDict *base )\r\n");
    return retVal;
}


/*
================
idBitMsg::ReadBits

  If the number of bits is negative a sign is included.
================
*/
int idBitMsg::ReadBits( int numBits ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBitMsg::ReadBits( int numBits )\r\n");
    return retVal;
}


/*
================
idBitMsg::ReadString
================
*/
int idBitMsg::ReadString( char *buffer, int bufferSize ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBitMsg::ReadString( char *buffer, int bufferSize )\r\n");
    return retVal;
}


/*
================
idBitMsg::ReadData
================
*/
int idBitMsg::ReadData( void *data, int length ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBitMsg::ReadData( void *data, int length )\r\n");
    return retVal;
}


/*
================
idBitMsg::ReadNetadr
================
*/
void idBitMsg::ReadNetadr( netadr_t *adr ) const {
    Sys_Printf("void idBitMsg::ReadNetadr( netadr_t *adr )\r\n");
}


/*
================
idBitMsg::ReadDelta
================
*/
int idBitMsg::ReadDelta( int oldValue, int numBits ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBitMsg::ReadDelta( int oldValue, int numBits )\r\n");
    return retVal;
}


/*
================
idBitMsg::ReadDeltaByteCounter
================
*/
int idBitMsg::ReadDeltaByteCounter( int oldValue ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBitMsg::ReadDeltaByteCounter( int oldValue )\r\n");
    return retVal;
}


/*
================
idBitMsg::ReadDeltaShortCounter
================
*/
int idBitMsg::ReadDeltaShortCounter( int oldValue ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBitMsg::ReadDeltaShortCounter( int oldValue )\r\n");
    return retVal;
}


/*
================
idBitMsg::ReadDeltaLongCounter
================
*/
int idBitMsg::ReadDeltaLongCounter( int oldValue ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBitMsg::ReadDeltaLongCounter( int oldValue )\r\n");
    return retVal;
}


/*
==================
idBitMsg::ReadDeltaDict
==================
*/
bool idBitMsg::ReadDeltaDict( idDict &dict, const idDict *base ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idBitMsg::ReadDeltaDict( idDict &dict, const idDict *base )\r\n");
    return retVal;
}


/*
================
idBitMsg::DirToBits
================
*/
int idBitMsg::DirToBits( const idVec3 &dir, int numBits ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBitMsg::DirToBits( const idVec3 &dir, int numBits )\r\n");
    return retVal;
}


/*
================
idBitMsg::BitsToDir
================
*/
idVec3 idBitMsg::BitsToDir( int bits, int numBits ) {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idBitMsg::BitsToDir( int bits, int numBits )\r\n");
    return retVal;
}



/*
==============================================================================

  idBitMsgDelta

==============================================================================
*/

const int MAX_DATA_BUFFER		= 1024;

/*
================
idBitMsgDelta::WriteBits
================
*/
void idBitMsgDelta::WriteBits( int value, int numBits ) {
    Sys_Printf("void idBitMsgDelta::WriteBits( int value, int numBits )\r\n");
}


/*
================
idBitMsgDelta::WriteDelta
================
*/
void idBitMsgDelta::WriteDelta( int oldValue, int newValue, int numBits ) {
    Sys_Printf("void idBitMsgDelta::WriteDelta( int oldValue, int newValue, int numBits )\r\n");
}


/*
================
idBitMsgDelta::ReadBits
================
*/
int idBitMsgDelta::ReadBits( int numBits ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBitMsgDelta::ReadBits( int numBits )\r\n");
    return retVal;
}


/*
================
idBitMsgDelta::ReadDelta
================
*/
int idBitMsgDelta::ReadDelta( int oldValue, int numBits ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBitMsgDelta::ReadDelta( int oldValue, int numBits )\r\n");
    return retVal;
}


/*
================
idBitMsgDelta::WriteString
================
*/
void idBitMsgDelta::WriteString( const char *s, int maxLength ) {
    Sys_Printf("void idBitMsgDelta::WriteString( const char *s, int maxLength )\r\n");
}


/*
================
idBitMsgDelta::WriteData
================
*/
void idBitMsgDelta::WriteData( const void *data, int length ) {
    Sys_Printf("void idBitMsgDelta::WriteData( const void *data, int length )\r\n");
}


/*
================
idBitMsgDelta::WriteDict
================
*/
void idBitMsgDelta::WriteDict( const idDict &dict ) {
    Sys_Printf("void idBitMsgDelta::WriteDict( const idDict &dict )\r\n");
}


/*
================
idBitMsgDelta::WriteDeltaByteCounter
================
*/
void idBitMsgDelta::WriteDeltaByteCounter( int oldValue, int newValue ) {
    Sys_Printf("void idBitMsgDelta::WriteDeltaByteCounter( int oldValue, int newValue )\r\n");
}


/*
================
idBitMsgDelta::WriteDeltaShortCounter
================
*/
void idBitMsgDelta::WriteDeltaShortCounter( int oldValue, int newValue ) {
    Sys_Printf("void idBitMsgDelta::WriteDeltaShortCounter( int oldValue, int newValue )\r\n");
}


/*
================
idBitMsgDelta::WriteDeltaLongCounter
================
*/
void idBitMsgDelta::WriteDeltaLongCounter( int oldValue, int newValue ) {
    Sys_Printf("void idBitMsgDelta::WriteDeltaLongCounter( int oldValue, int newValue )\r\n");
}


/*
================
idBitMsgDelta::ReadString
================
*/
void idBitMsgDelta::ReadString( char *buffer, int bufferSize ) const {
    Sys_Printf("void idBitMsgDelta::ReadString( char *buffer, int bufferSize )\r\n");
}


/*
================
idBitMsgDelta::ReadData
================
*/
void idBitMsgDelta::ReadData( void *data, int length ) const {
    Sys_Printf("void idBitMsgDelta::ReadData( void *data, int length )\r\n");
}


/*
================
idBitMsgDelta::ReadDict
================
*/
void idBitMsgDelta::ReadDict( idDict &dict ) {
    Sys_Printf("void idBitMsgDelta::ReadDict( idDict &dict )\r\n");
}


/*
================
idBitMsgDelta::ReadDeltaByteCounter
================
*/
int idBitMsgDelta::ReadDeltaByteCounter( int oldValue ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBitMsgDelta::ReadDeltaByteCounter( int oldValue )\r\n");
    return retVal;
}


/*
================
idBitMsgDelta::ReadDeltaShortCounter
================
*/
int idBitMsgDelta::ReadDeltaShortCounter( int oldValue ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBitMsgDelta::ReadDeltaShortCounter( int oldValue )\r\n");
    return retVal;
}


/*
================
idBitMsgDelta::ReadDeltaLongCounter
================
*/
int idBitMsgDelta::ReadDeltaLongCounter( int oldValue ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBitMsgDelta::ReadDeltaLongCounter( int oldValue )\r\n");
    return retVal;
}

