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

#include "snd_local.h"

//-----------------------------------------------------------------------------
// Name: idWaveFile::idWaveFile()
// Desc: Constructs the class.  Call Open() to open a wave file for reading.  
//       Then call Read() as needed.  Calling the destructor or Close() 
//       will close the file.  
//-----------------------------------------------------------------------------
idWaveFile::idWaveFile( void ) {
	memset( &mpwfx, 0, sizeof( waveformatextensible_t ) );
	mhmmio		= NULL;
	mdwSize		= 0;
	mseekBase	= 0;
	mbIsReadingFromMemory = false;
	mpbData		= NULL;
	ogg			= NULL;
	isOgg		= false;
}

//-----------------------------------------------------------------------------
// Name: idWaveFile::~idWaveFile()
// Desc: Destructs the class
//-----------------------------------------------------------------------------
idWaveFile::~idWaveFile( void ) {
	Close();

	if ( mbIsReadingFromMemory && mpbData ) {
		Mem_Free( mpbData );
	}

	memset( &mpwfx, 0, sizeof( waveformatextensible_t ) );
}

//-----------------------------------------------------------------------------
// Name: idWaveFile::Open()
// Desc: Opens a wave file for reading
//-----------------------------------------------------------------------------
int idWaveFile::Open( const char* strFileName, waveformatex_t* pwfx ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWaveFile::Open( const char* strFileName, waveformatex_t* pwfx )\r\n");
    return retVal;
}


//-----------------------------------------------------------------------------
// Name: idWaveFile::OpenFromMemory()
// Desc: copy data to idWaveFile member variable from memory
//-----------------------------------------------------------------------------
int idWaveFile::OpenFromMemory( short* pbData, int ulDataSize, waveformatextensible_t* pwfx ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWaveFile::OpenFromMemory( short* pbData, int ulDataSize, waveformatextensible_t* pwfx )\r\n");
    return retVal;
}


//-----------------------------------------------------------------------------
// Name: idWaveFile::ReadMMIO()
// Desc: Support function for reading from a multimedia I/O stream.
//       mhmmio must be valid before calling.  This function uses it to
//       update mckRiff, and mpwfx. 
//-----------------------------------------------------------------------------
int idWaveFile::ReadMMIO( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWaveFile::ReadMMIO( void )\r\n");
    return retVal;
}


//-----------------------------------------------------------------------------
// Name: idWaveFile::ResetFile()
// Desc: Resets the internal mck pointer so reading starts from the 
//       beginning of the file again 
//-----------------------------------------------------------------------------
int idWaveFile::ResetFile( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWaveFile::ResetFile( void )\r\n");
    return retVal;
}


//-----------------------------------------------------------------------------
// Name: idWaveFile::Read()
// Desc: Reads section of data from a wave file into pBuffer and returns 
//       how much read in pdwSizeRead, reading not more than dwSizeToRead.
//       This uses mck to determine where to start reading from.  So 
//       subsequent calls will be continue where the last left off unless 
//       Reset() is called.
//-----------------------------------------------------------------------------
int idWaveFile::Read( byte* pBuffer, int dwSizeToRead, int *pdwSizeRead ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWaveFile::Read( byte* pBuffer, int dwSizeToRead, int *pdwSizeRead )\r\n");
    return retVal;
}


//-----------------------------------------------------------------------------
// Name: idWaveFile::Close()
// Desc: Closes the wave file 
//-----------------------------------------------------------------------------
int idWaveFile::Close( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWaveFile::Close( void )\r\n");
    return retVal;
}


//-----------------------------------------------------------------------------
// Name: idWaveFile::Seek()
//-----------------------------------------------------------------------------
int idWaveFile::Seek( int offset ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWaveFile::Seek( int offset )\r\n");
    return retVal;
}

