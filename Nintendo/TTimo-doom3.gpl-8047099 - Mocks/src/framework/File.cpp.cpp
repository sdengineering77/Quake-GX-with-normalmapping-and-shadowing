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

#define	MAX_PRINT_MSG		4096

/*
=================
FS_WriteFloatString
=================
*/
int FS_WriteFloatString( char *buf, const char *fmt, va_list argPtr ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int FS_WriteFloatString( char *buf, const char *fmt, va_list argPtr )\r\n");
    return retVal;
}


/*
=================================================================================

idFile

=================================================================================
*/

/*
=================
idFile::GetName
=================
*/
const char *idFile::GetName( void ) {
    Sys_Printf("char *idFile::GetName( void )\r\n");
    return NULL;
}


/*
=================
idFile::GetFullPath
=================
*/
const char *idFile::GetFullPath( void ) {
    Sys_Printf("char *idFile::GetFullPath( void )\r\n");
    return NULL;
}


/*
=================
idFile::Read
=================
*/
int idFile::Read( void *buffer, int len ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::Read( void *buffer, int len )\r\n");
    return retVal;
}


/*
=================
idFile::Write
=================
*/
int idFile::Write( const void *buffer, int len ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::Write( const void *buffer, int len )\r\n");
    return retVal;
}


/*
=================
idFile::Length
=================
*/
int idFile::Length( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::Length( void )\r\n");
    return retVal;
}


/*
=================
idFile::Timestamp
=================
*/
ID_TIME_T idFile::Timestamp( void ) {
    ID_TIME_T retVal;
    memset(&retVal, 0, sizeof(ID_TIME_T));
    Sys_Printf("ID_TIME_T idFile::Timestamp( void )\r\n");
    return retVal;
}


/*
=================
idFile::Tell
=================
*/
int idFile::Tell( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::Tell( void )\r\n");
    return retVal;
}


/*
=================
idFile::ForceFlush
=================
*/
void idFile::ForceFlush( void ) {
    Sys_Printf("void idFile::ForceFlush( void )\r\n");
}


/*
=================
idFile::Flush
=================
*/
void idFile::Flush( void ) {
    Sys_Printf("void idFile::Flush( void )\r\n");
}


/*
=================
idFile::Seek
=================
*/
int idFile::Seek( long offset, fsOrigin_t origin ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::Seek( long offset, fsOrigin_t origin )\r\n");
    return retVal;
}


/*
=================
idFile::Rewind
=================
*/
void idFile::Rewind( void ) {
    Sys_Printf("void idFile::Rewind( void )\r\n");
}


/*
=================
idFile::Printf
=================
*/
int idFile::Printf( const char *fmt, ... ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::Printf( const char *fmt, ... )\r\n");
    return retVal;
}


/*
=================
idFile::VPrintf
=================
*/
int idFile::VPrintf( const char *fmt, va_list args ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::VPrintf( const char *fmt, va_list args )\r\n");
    return retVal;
}


/*
=================
idFile::WriteFloatString
=================
*/
int idFile::WriteFloatString( const char *fmt, ... ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteFloatString( const char *fmt, ... )\r\n");
    return retVal;
}


/*
 =================
 idFile::ReadInt
 =================
 */
int idFile::ReadInt( int &value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::ReadInt( int &value )\r\n");
    return retVal;
}


/*
 =================
 idFile::ReadUnsignedInt
 =================
 */
int idFile::ReadUnsignedInt( unsigned int &value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::ReadUnsignedInt( unsigned int &value )\r\n");
    return retVal;
}


/*
 =================
 idFile::ReadShort
 =================
 */
int idFile::ReadShort( short &value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::ReadShort( short &value )\r\n");
    return retVal;
}


/*
 =================
 idFile::ReadUnsignedShort
 =================
 */
int idFile::ReadUnsignedShort( unsigned short &value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::ReadUnsignedShort( unsigned short &value )\r\n");
    return retVal;
}


/*
 =================
 idFile::ReadChar
 =================
 */
int idFile::ReadChar( char &value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::ReadChar( char &value )\r\n");
    return retVal;
}


/*
 =================
 idFile::ReadUnsignedChar
 =================
 */
int idFile::ReadUnsignedChar( unsigned char &value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::ReadUnsignedChar( unsigned char &value )\r\n");
    return retVal;
}


/*
 =================
 idFile::ReadFloat
 =================
 */
int idFile::ReadFloat( float &value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::ReadFloat( float &value )\r\n");
    return retVal;
}


/*
 =================
 idFile::ReadBool
 =================
 */
int idFile::ReadBool( bool &value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::ReadBool( bool &value )\r\n");
    return retVal;
}


/*
 =================
 idFile::ReadString
 =================
 */
int idFile::ReadString( idStr &string ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::ReadString( idStr &string )\r\n");
    return retVal;
}


/*
 =================
 idFile::ReadVec2
 =================
 */
int idFile::ReadVec2( idVec2 &vec ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::ReadVec2( idVec2 &vec )\r\n");
    return retVal;
}


/*
 =================
 idFile::ReadVec3
 =================
 */
int idFile::ReadVec3( idVec3 &vec ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::ReadVec3( idVec3 &vec )\r\n");
    return retVal;
}


/*
 =================
 idFile::ReadVec4
 =================
 */
int idFile::ReadVec4( idVec4 &vec ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::ReadVec4( idVec4 &vec )\r\n");
    return retVal;
}


/*
 =================
 idFile::ReadVec6
 =================
 */
int idFile::ReadVec6( idVec6 &vec ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::ReadVec6( idVec6 &vec )\r\n");
    return retVal;
}


/*
 =================
 idFile::ReadMat3
 =================
 */
int idFile::ReadMat3( idMat3 &mat ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::ReadMat3( idMat3 &mat )\r\n");
    return retVal;
}


/*
 =================
 idFile::WriteInt
 =================
 */
int idFile::WriteInt( const int value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteInt( const int value )\r\n");
    return retVal;
}


/*
 =================
 idFile::WriteUnsignedInt
 =================
 */
int idFile::WriteUnsignedInt( const unsigned int value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteUnsignedInt( const unsigned int value )\r\n");
    return retVal;
}


/*
 =================
 idFile::WriteShort
 =================
 */
int idFile::WriteShort( const short value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteShort( const short value )\r\n");
    return retVal;
}


/*
 =================
 idFile::WriteUnsignedShort
 =================
 */
int idFile::WriteUnsignedShort( const unsigned short value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteUnsignedShort( const unsigned short value )\r\n");
    return retVal;
}


/*
 =================
 idFile::WriteChar
 =================
 */
int idFile::WriteChar( const char value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteChar( const char value )\r\n");
    return retVal;
}


/*
 =================
 idFile::WriteUnsignedChar
 =================
 */
int idFile::WriteUnsignedChar( const unsigned char value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteUnsignedChar( const unsigned char value )\r\n");
    return retVal;
}


/*
 =================
 idFile::WriteFloat
 =================
 */
int idFile::WriteFloat( const float value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteFloat( const float value )\r\n");
    return retVal;
}


/*
 =================
 idFile::WriteBool
 =================
 */
int idFile::WriteBool( const bool value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteBool( const bool value )\r\n");
    return retVal;
}


/*
 =================
 idFile::WriteString
 =================
 */
int idFile::WriteString( const char *value ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteString( const char *value )\r\n");
    return retVal;
}


/*
 =================
 idFile::WriteVec2
 =================
 */
int idFile::WriteVec2( const idVec2 &vec ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteVec2( const idVec2 &vec )\r\n");
    return retVal;
}


/*
 =================
 idFile::WriteVec3
 =================
 */
int idFile::WriteVec3( const idVec3 &vec ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteVec3( const idVec3 &vec )\r\n");
    return retVal;
}


/*
 =================
 idFile::WriteVec4
 =================
 */
int idFile::WriteVec4( const idVec4 &vec ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteVec4( const idVec4 &vec )\r\n");
    return retVal;
}


/*
 =================
 idFile::WriteVec6
 =================
 */
int idFile::WriteVec6( const idVec6 &vec ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteVec6( const idVec6 &vec )\r\n");
    return retVal;
}


/*
 =================
 idFile::WriteMat3
 =================
 */
int idFile::WriteMat3( const idMat3 &mat ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile::WriteMat3( const idMat3 &mat )\r\n");
    return retVal;
}


/*
=================================================================================

idFile_Memory

=================================================================================
*/


/*
=================
idFile_Memory::idFile_Memory
=================
*/
idFile_Memory::idFile_Memory( void ) {
	name = "*unknown*";
	maxSize = 0;
	fileSize = 0;
	allocated = 0;
	granularity = 16384;

	mode = ( 1 << FS_WRITE );
	filePtr = NULL;
	curPtr = NULL;
}

/*
=================
idFile_Memory::idFile_Memory
=================
*/
idFile_Memory::idFile_Memory( const char *name ) {
	this->name = name;
	maxSize = 0;
	fileSize = 0;
	allocated = 0;
	granularity = 16384;

	mode = ( 1 << FS_WRITE );
	filePtr = NULL;
	curPtr = NULL;
}

/*
=================
idFile_Memory::idFile_Memory
=================
*/
idFile_Memory::idFile_Memory( const char *name, char *data, int length ) {
	this->name = name;
	maxSize = length;
	fileSize = 0;
	allocated = length;
	granularity = 16384;

	mode = ( 1 << FS_WRITE );
	filePtr = data;
	curPtr = data;
}

/*
=================
idFile_Memory::idFile_Memory
=================
*/
idFile_Memory::idFile_Memory( const char *name, const char *data, int length ) {
	this->name = name;
	maxSize = 0;
	fileSize = length;
	allocated = 0;
	granularity = 16384;

	mode = ( 1 << FS_READ );
	filePtr = const_cast<char *>(data);
	curPtr = const_cast<char *>(data);
}

/*
=================
idFile_Memory::~idFile_Memory
=================
*/
idFile_Memory::~idFile_Memory( void ) {
	if ( filePtr && allocated > 0 && maxSize == 0 ) {
		Mem_Free( filePtr );
	}
}

/*
=================
idFile_Memory::Read
=================
*/
int idFile_Memory::Read( void *buffer, int len ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_Memory::Read( void *buffer, int len )\r\n");
    return retVal;
}


/*
=================
idFile_Memory::Write
=================
*/
int idFile_Memory::Write( const void *buffer, int len ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_Memory::Write( const void *buffer, int len )\r\n");
    return retVal;
}


/*
=================
idFile_Memory::Length
=================
*/
int idFile_Memory::Length( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_Memory::Length( void )\r\n");
    return retVal;
}


/*
=================
idFile_Memory::Timestamp
=================
*/
ID_TIME_T idFile_Memory::Timestamp( void ) {
    ID_TIME_T retVal;
    memset(&retVal, 0, sizeof(ID_TIME_T));
    Sys_Printf("ID_TIME_T idFile_Memory::Timestamp( void )\r\n");
    return retVal;
}


/*
=================
idFile_Memory::Tell
=================
*/
int idFile_Memory::Tell( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_Memory::Tell( void )\r\n");
    return retVal;
}


/*
=================
idFile_Memory::ForceFlush
=================
*/
void idFile_Memory::ForceFlush( void ) {
    Sys_Printf("void idFile_Memory::ForceFlush( void )\r\n");
}


/*
=================
idFile_Memory::Flush
=================
*/
void idFile_Memory::Flush( void ) {
    Sys_Printf("void idFile_Memory::Flush( void )\r\n");
}


/*
=================
idFile_Memory::Seek

  returns zero on success and -1 on failure
=================
*/
int idFile_Memory::Seek( long offset, fsOrigin_t origin ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_Memory::Seek( long offset, fsOrigin_t origin )\r\n");
    return retVal;
}


/*
=================
idFile_Memory::MakeReadOnly
=================
*/
void idFile_Memory::MakeReadOnly( void ) {
    Sys_Printf("void idFile_Memory::MakeReadOnly( void )\r\n");
}


/*
=================
idFile_Memory::Clear
=================
*/
void idFile_Memory::Clear( bool freeMemory ) {
    Sys_Printf("void idFile_Memory::Clear( bool freeMemory )\r\n");
}


/*
=================
idFile_Memory::SetData
=================
*/
void idFile_Memory::SetData( const char *data, int length ) {
    Sys_Printf("void idFile_Memory::SetData( const char *data, int length )\r\n");
}



/*
=================================================================================

idFile_BitMsg

=================================================================================
*/

/*
=================
idFile_BitMsg::idFile_BitMsg
=================
*/
idFile_BitMsg::idFile_BitMsg( idBitMsg &msg ) {
	name = "*unknown*";
	mode = ( 1 << FS_WRITE );
	this->msg = &msg;
}

/*
=================
idFile_BitMsg::idFile_BitMsg
=================
*/
idFile_BitMsg::idFile_BitMsg( const idBitMsg &msg ) {
	name = "*unknown*";
	mode = ( 1 << FS_READ );
	this->msg = const_cast<idBitMsg *>(&msg);
}

/*
=================
idFile_BitMsg::~idFile_BitMsg
=================
*/
idFile_BitMsg::~idFile_BitMsg( void ) {
}

/*
=================
idFile_BitMsg::Read
=================
*/
int idFile_BitMsg::Read( void *buffer, int len ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_BitMsg::Read( void *buffer, int len )\r\n");
    return retVal;
}


/*
=================
idFile_BitMsg::Write
=================
*/
int idFile_BitMsg::Write( const void *buffer, int len ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_BitMsg::Write( const void *buffer, int len )\r\n");
    return retVal;
}


/*
=================
idFile_BitMsg::Length
=================
*/
int idFile_BitMsg::Length( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_BitMsg::Length( void )\r\n");
    return retVal;
}


/*
=================
idFile_BitMsg::Timestamp
=================
*/
ID_TIME_T idFile_BitMsg::Timestamp( void ) {
    ID_TIME_T retVal;
    memset(&retVal, 0, sizeof(ID_TIME_T));
    Sys_Printf("ID_TIME_T idFile_BitMsg::Timestamp( void )\r\n");
    return retVal;
}


/*
=================
idFile_BitMsg::Tell
=================
*/
int idFile_BitMsg::Tell( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_BitMsg::Tell( void )\r\n");
    return retVal;
}


/*
=================
idFile_BitMsg::ForceFlush
=================
*/
void idFile_BitMsg::ForceFlush( void ) {
    Sys_Printf("void idFile_BitMsg::ForceFlush( void )\r\n");
}


/*
=================
idFile_BitMsg::Flush
=================
*/
void idFile_BitMsg::Flush( void ) {
    Sys_Printf("void idFile_BitMsg::Flush( void )\r\n");
}


/*
=================
idFile_BitMsg::Seek

  returns zero on success and -1 on failure
=================
*/
int idFile_BitMsg::Seek( long offset, fsOrigin_t origin ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_BitMsg::Seek( long offset, fsOrigin_t origin )\r\n");
    return retVal;
}



/*
=================================================================================

idFile_Permanent

=================================================================================
*/

/*
=================
idFile_Permanent::idFile_Permanent
=================
*/
idFile_Permanent::idFile_Permanent( void ) {
	name = "invalid";
	o = NULL;
	mode = 0;
	fileSize = 0;
	handleSync = false;
}

/*
=================
idFile_Permanent::~idFile_Permanent
=================
*/
idFile_Permanent::~idFile_Permanent( void ) {
	if ( o ) {
		fclose( o );
	}
}

/*
=================
idFile_Permanent::Read

Properly handles partial reads
=================
*/
int idFile_Permanent::Read( void *buffer, int len ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_Permanent::Read( void *buffer, int len )\r\n");
    return retVal;
}


/*
=================
idFile_Permanent::Write

Properly handles partial writes
=================
*/
int idFile_Permanent::Write( const void *buffer, int len ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_Permanent::Write( const void *buffer, int len )\r\n");
    return retVal;
}


/*
=================
idFile_Permanent::ForceFlush
=================
*/
void idFile_Permanent::ForceFlush( void ) {
    Sys_Printf("void idFile_Permanent::ForceFlush( void )\r\n");
}


/*
=================
idFile_Permanent::Flush
=================
*/
void idFile_Permanent::Flush( void ) {
    Sys_Printf("void idFile_Permanent::Flush( void )\r\n");
}


/*
=================
idFile_Permanent::Tell
=================
*/
int idFile_Permanent::Tell( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_Permanent::Tell( void )\r\n");
    return retVal;
}


/*
================
idFile_Permanent::Length
================
*/
int idFile_Permanent::Length( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_Permanent::Length( void )\r\n");
    return retVal;
}


/*
================
idFile_Permanent::Timestamp
================
*/
ID_TIME_T idFile_Permanent::Timestamp( void ) {
    ID_TIME_T retVal;
    memset(&retVal, 0, sizeof(ID_TIME_T));
    Sys_Printf("ID_TIME_T idFile_Permanent::Timestamp( void )\r\n");
    return retVal;
}


/*
=================
idFile_Permanent::Seek

  returns zero on success and -1 on failure
=================
*/
int idFile_Permanent::Seek( long offset, fsOrigin_t origin ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_Permanent::Seek( long offset, fsOrigin_t origin )\r\n");
    return retVal;
}



/*
=================================================================================

idFile_InZip

=================================================================================
*/

/*
=================
idFile_InZip::idFile_InZip
=================
*/
idFile_InZip::idFile_InZip( void ) {
	name = "invalid";
	zipFilePos = 0;
	fileSize = 0;
	memset( &z, 0, sizeof( z ) );
}

/*
=================
idFile_InZip::~idFile_InZip
=================
*/
idFile_InZip::~idFile_InZip( void ) {
	unzCloseCurrentFile( z );
	unzClose( z );
}

/*
=================
idFile_InZip::Read

Properly handles partial reads
=================
*/
int idFile_InZip::Read( void *buffer, int len ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_InZip::Read( void *buffer, int len )\r\n");
    return retVal;
}


/*
=================
idFile_InZip::Write
=================
*/
int idFile_InZip::Write( const void *buffer, int len ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_InZip::Write( const void *buffer, int len )\r\n");
    return retVal;
}


/*
=================
idFile_InZip::ForceFlush
=================
*/
void idFile_InZip::ForceFlush( void ) {
    Sys_Printf("void idFile_InZip::ForceFlush( void )\r\n");
}


/*
=================
idFile_InZip::Flush
=================
*/
void idFile_InZip::Flush( void ) {
    Sys_Printf("void idFile_InZip::Flush( void )\r\n");
}


/*
=================
idFile_InZip::Tell
=================
*/
int idFile_InZip::Tell( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_InZip::Tell( void )\r\n");
    return retVal;
}


/*
================
idFile_InZip::Length
================
*/
int idFile_InZip::Length( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_InZip::Length( void )\r\n");
    return retVal;
}


/*
================
idFile_InZip::Timestamp
================
*/
ID_TIME_T idFile_InZip::Timestamp( void ) {
    ID_TIME_T retVal;
    memset(&retVal, 0, sizeof(ID_TIME_T));
    Sys_Printf("ID_TIME_T idFile_InZip::Timestamp( void )\r\n");
    return retVal;
}


/*
=================
idFile_InZip::Seek

  returns zero on success and -1 on failure
=================
*/
#define ZIP_SEEK_BUF_SIZE	(1<<15)

int idFile_InZip::Seek( long offset, fsOrigin_t origin ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idFile_InZip::Seek( long offset, fsOrigin_t origin )\r\n");
    return retVal;
}

