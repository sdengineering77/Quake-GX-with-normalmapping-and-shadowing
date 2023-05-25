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

idCVar idDemoFile::com_logDemos( "com_logDemos", "0", CVAR_SYSTEM | CVAR_BOOL, "Write demo.log with debug information in it" );
idCVar idDemoFile::com_compressDemos( "com_compressDemos", "1", CVAR_SYSTEM | CVAR_INTEGER | CVAR_ARCHIVE, "Compression scheme for demo files\n0: None    (Fast, large files)\n1: LZW     (Fast to compress, Fast to decompress, medium/small files)\n2: LZSS    (Slow to compress, Fast to decompress, small files)\n3: Huffman (Fast to compress, Slow to decompress, medium files)\nSee also: The 'CompressDemo' command" );
idCVar idDemoFile::com_preloadDemos( "com_preloadDemos", "0", CVAR_SYSTEM | CVAR_BOOL | CVAR_ARCHIVE, "Load the whole demo in to RAM before running it" );

#define DEMO_MAGIC GAME_NAME " RDEMO"

/*
================
idDemoFile::idDemoFile
================
*/
idDemoFile::idDemoFile() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idDemoFile::idDemoFile() size %d\r\n", sizeof(*this));
#endif

	f = NULL;
	fLog = NULL;
	log = false;
	fileImage = NULL;
	compressor = NULL;
	writing = false;
}

/*
================
idDemoFile::~idDemoFile
================
*/
idDemoFile::~idDemoFile() {
	Close();
}

/*
================
idDemoFile::AllocCompressor
================
*/
idCompressor *idDemoFile::AllocCompressor( int type ) {
    Sys_Printf("idCompressor *idDemoFile::AllocCompressor( int type )\r\n");
    return NULL;
}


/*
================
idDemoFile::OpenForReading
================
*/
bool idDemoFile::OpenForReading( const char *fileName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDemoFile::OpenForReading( const char *fileName )\r\n");
    return retVal;
}


/*
================
idDemoFile::SetLog
================
*/
void idDemoFile::SetLog(bool b, const char *p) {
    Sys_Printf("void idDemoFile::SetLog(bool b, const char *p)\r\n");
}


/*
================
idDemoFile::Log
================
*/
void idDemoFile::Log(const char *p) {
    Sys_Printf("void idDemoFile::Log(const char *p)\r\n");
}


/*
================
idDemoFile::OpenForWriting
================
*/
bool idDemoFile::OpenForWriting( const char *fileName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDemoFile::OpenForWriting( const char *fileName )\r\n");
    return retVal;
}


/*
================
idDemoFile::Close
================
*/
void idDemoFile::Close() {
    Sys_Printf("void idDemoFile::Close()\r\n");
}


/*
================
idDemoFile::ReadHashString
================
*/
const char *idDemoFile::ReadHashString() {
    Sys_Printf("char *idDemoFile::ReadHashString()\r\n");
    return NULL;
}


/*
================
idDemoFile::WriteHashString
================
*/
void idDemoFile::WriteHashString( const char *str ) {
    Sys_Printf("void idDemoFile::WriteHashString( const char *str )\r\n");
}


/*
================
idDemoFile::ReadDict
================
*/
void idDemoFile::ReadDict( idDict &dict ) {
    Sys_Printf("void idDemoFile::ReadDict( idDict &dict )\r\n");
}


/*
================
idDemoFile::WriteDict
================
*/
void idDemoFile::WriteDict( const idDict &dict ) {
    Sys_Printf("void idDemoFile::WriteDict( const idDict &dict )\r\n");
}


/*
 ================
 idDemoFile::Read
 ================
 */
int idDemoFile::Read( void *buffer, int len ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDemoFile::Read( void *buffer, int len )\r\n");
    return retVal;
}


/*
 ================
 idDemoFile::Write
 ================
 */
int idDemoFile::Write( const void *buffer, int len ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDemoFile::Write( const void *buffer, int len )\r\n");
    return retVal;
}





