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
#include "OggVorbis/vorbis/codec.h"
#include "OggVorbis/vorbis/vorbisfile.h"


/*
===================================================================================

  Thread safe decoder memory allocator.

  Each OggVorbis decoder consumes about 150kB of memory.

===================================================================================
*/

idDynamicBlockAlloc<byte, 1<<20, 128>		decoderMemoryAllocator;

const int MIN_OGGVORBIS_MEMORY				= 768 * 1024;

extern "C" {
	void *_decoder_malloc( size_t size );
	void *_decoder_calloc( size_t num, size_t size );
	void *_decoder_realloc( void *memblock, size_t size );
	void _decoder_free( void *memblock );
}

void *_decoder_malloc( size_t size ) {
    Sys_Printf("void *_decoder_malloc( size_t size )\r\n");
    return NULL;
}


void *_decoder_calloc( size_t num, size_t size ) {
    Sys_Printf("void *_decoder_calloc( size_t num, size_t size )\r\n");
    return NULL;
}


void *_decoder_realloc( void *memblock, size_t size ) {
    Sys_Printf("void *_decoder_realloc( void *memblock, size_t size )\r\n");
    return NULL;
}


void _decoder_free( void *memblock ) {
    Sys_Printf("void _decoder_free( void *memblock )\r\n");
}



/*
===================================================================================

  OggVorbis file loading/decoding.

===================================================================================
*/

/*
====================
FS_ReadOGG
====================
*/
size_t FS_ReadOGG( void *dest, size_t size1, size_t size2, void *fh ) {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t FS_ReadOGG( void *dest, size_t size1, size_t size2, void *fh )\r\n");
    return retVal;
}


/*
====================
FS_SeekOGG
====================
*/
int FS_SeekOGG( void *fh, ogg_int64_t to, int type ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int FS_SeekOGG( void *fh, ogg_int64_t to, int type )\r\n");
    return retVal;
}


/*
====================
FS_CloseOGG
====================
*/
int FS_CloseOGG( void *fh ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int FS_CloseOGG( void *fh )\r\n");
    return retVal;
}


/*
====================
FS_TellOGG
====================
*/
long FS_TellOGG( void *fh ) {
    long retVal;
    memset(&retVal, 0, sizeof(long));
    Sys_Printf("long FS_TellOGG( void *fh )\r\n");
    return retVal;
}


/*
====================
ov_openFile
====================
*/
int ov_openFile( idFile *f, OggVorbis_File *vf ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int ov_openFile( idFile *f, OggVorbis_File *vf )\r\n");
    return retVal;
}


/*
====================
idWaveFile::OpenOGG
====================
*/
int idWaveFile::OpenOGG( const char* strFileName, waveformatex_t *pwfx ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWaveFile::OpenOGG( const char* strFileName, waveformatex_t *pwfx )\r\n");
    return retVal;
}


/*
====================
idWaveFile::ReadOGG
====================
*/
int idWaveFile::ReadOGG( byte* pBuffer, int dwSizeToRead, int *pdwSizeRead ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWaveFile::ReadOGG( byte* pBuffer, int dwSizeToRead, int *pdwSizeRead )\r\n");
    return retVal;
}


/*
====================
idWaveFile::CloseOGG
====================
*/
int idWaveFile::CloseOGG( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idWaveFile::CloseOGG( void )\r\n");
    return retVal;
}



/*
===================================================================================

  idSampleDecoderLocal

===================================================================================
*/

class idSampleDecoderLocal : public idSampleDecoder {
public:
	virtual void			Decode( idSoundSample *sample, int sampleOffset44k, int sampleCount44k, float *dest );
	virtual void			ClearDecoder( void );
	virtual idSoundSample *	GetSample( void ) const;
	virtual int				GetLastDecodeTime( void ) const;

	void					Clear( void );
	int						DecodePCM( idSoundSample *sample, int sampleOffset44k, int sampleCount44k, float *dest );
	int						DecodeOGG( idSoundSample *sample, int sampleOffset44k, int sampleCount44k, float *dest );

private:
	bool					failed;				// set if decoding failed
	int						lastFormat;			// last format being decoded
	idSoundSample *			lastSample;			// last sample being decoded
	int						lastSampleOffset;	// last offset into the decoded sample
	int						lastDecodeTime;		// last time decoding sound
	idFile_Memory			file;				// encoded file in memory

	OggVorbis_File			ogg;				// OggVorbis file
};

idBlockAlloc<idSampleDecoderLocal, 64>		sampleDecoderAllocator;

/*
====================
idSampleDecoder::Init
====================
*/
void idSampleDecoder::Init( void ) {
    Sys_Printf("void idSampleDecoder::Init( void )\r\n");
}


/*
====================
idSampleDecoder::Shutdown
====================
*/
void idSampleDecoder::Shutdown( void ) {
    Sys_Printf("void idSampleDecoder::Shutdown( void )\r\n");
}


/*
====================
idSampleDecoder::Alloc
====================
*/
idSampleDecoder *idSampleDecoder::Alloc( void ) {
    Sys_Printf("idSampleDecoder *idSampleDecoder::Alloc( void )\r\n");
    return NULL;
}


/*
====================
idSampleDecoder::Free
====================
*/
void idSampleDecoder::Free( idSampleDecoder *decoder ) {
    Sys_Printf("void idSampleDecoder::Free( idSampleDecoder *decoder )\r\n");
}


/*
====================
idSampleDecoder::GetNumUsedBlocks
====================
*/
int idSampleDecoder::GetNumUsedBlocks( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSampleDecoder::GetNumUsedBlocks( void )\r\n");
    return retVal;
}


/*
====================
idSampleDecoder::GetUsedBlockMemory
====================
*/
int idSampleDecoder::GetUsedBlockMemory( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSampleDecoder::GetUsedBlockMemory( void )\r\n");
    return retVal;
}


/*
====================
idSampleDecoderLocal::Clear
====================
*/
void idSampleDecoderLocal::Clear( void ) {
    Sys_Printf("void idSampleDecoderLocal::Clear( void )\r\n");
}


/*
====================
idSampleDecoderLocal::ClearDecoder
====================
*/
void idSampleDecoderLocal::ClearDecoder( void ) {
    Sys_Printf("void idSampleDecoderLocal::ClearDecoder( void )\r\n");
}


/*
====================
idSampleDecoderLocal::GetSample
====================
*/
idSoundSample *idSampleDecoderLocal::GetSample( void ) const {
    Sys_Printf("idSoundSample *idSampleDecoderLocal::GetSample( void )\r\n");
    return NULL;
}


/*
====================
idSampleDecoderLocal::GetLastDecodeTime
====================
*/
int idSampleDecoderLocal::GetLastDecodeTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSampleDecoderLocal::GetLastDecodeTime( void )\r\n");
    return retVal;
}


/*
====================
idSampleDecoderLocal::Decode
====================
*/
void idSampleDecoderLocal::Decode( idSoundSample *sample, int sampleOffset44k, int sampleCount44k, float *dest ) {
    Sys_Printf("void idSampleDecoderLocal::Decode( idSoundSample *sample, int sampleOffset44k, int sampleCount44k, float *dest )\r\n");
}


/*
====================
idSampleDecoderLocal::DecodePCM
====================
*/
int idSampleDecoderLocal::DecodePCM( idSoundSample *sample, int sampleOffset44k, int sampleCount44k, float *dest ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSampleDecoderLocal::DecodePCM( idSoundSample *sample, int sampleOffset44k, int sampleCount44k, float *dest )\r\n");
    return retVal;
}


/*
====================
idSampleDecoderLocal::DecodeOGG
====================
*/
int idSampleDecoderLocal::DecodeOGG( idSoundSample *sample, int sampleOffset44k, int sampleCount44k, float *dest ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSampleDecoderLocal::DecodeOGG( idSoundSample *sample, int sampleOffset44k, int sampleCount44k, float *dest )\r\n");
    return retVal;
}

