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
#include "../../idlib/precompiled.h"
#pragma hdrstop

// DirectX SDK
#include <DxErr.h>

#include <ks.h>
#include <ksmedia.h>
#include "../../sound/snd_local.h"
#include "win_local.h"

#include "../../openal/idal.cpp"

#define SAFE_DELETE(p)       { if(p) { delete (p);     (p)=NULL; } }
#define SAFE_DELETE_ARRAY(p) { if(p) { delete[] (p);   (p)=NULL; } }
#define SAFE_RELEASE(p)      { if(p) { (p)->Release(); (p)=NULL; } }

class idAudioBufferWIN32 : public idAudioBuffer {
public:
    idAudioBufferWIN32( LPDIRECTSOUNDBUFFER apDSBuffer, dword dwDSBufferSize, idWaveFile* pWaveFile=NULL );
    ~idAudioBufferWIN32();

    int FillBufferWithSound( LPDIRECTSOUNDBUFFER pDSB, bool bRepeatWavIfBufferLarger );

	bool Lock( void **pDSLockedBuffer, ulong *dwDSLockedBufferSize );
	bool Unlock(void *pDSLockedBuffer, dword dwDSLockedBufferSize );
	bool GetCurrentPosition( ulong *pdwCurrentWriteCursor );

    int Play( dword dwPriority=0, dword dwFlags=0 );
    int Stop( void );
    int Reset( void );
    bool    IsSoundPlaying( void );
	void SetVolume( float x);

    idWaveFile*			m_pWaveFile;
private:
    LPDIRECTSOUNDBUFFER		m_apDSBuffer;
    dword					m_dwDSBufferSize;

    int RestoreBuffer( LPDIRECTSOUNDBUFFER pDSB, bool* pbWasRestored );
};

class idAudioHardwareWIN32 : public idAudioHardware {

public:
    idAudioHardwareWIN32();
    ~idAudioHardwareWIN32();

    bool Initialize( );
	bool InitializeSpeakers( byte *buffer, int bufferSize, dword dwPrimaryFreq, dword dwPrimaryBitRate, dword dwSpeakers );

	void SetPrimaryBufferFormat( dword dwPrimaryFreq, dword dwPrimaryBitRate, dword dwSpeakers );

    int Create( idWaveFile* pWaveFile, idAudioBuffer** ppiab );
    int Create( idAudioBuffer** ppSound, const char* strWaveFileName, dword dwCreationFlags = 0 );
    int CreateFromMemory( idAudioBufferWIN32** ppSound, byte* pbData, ulong ulDataSize, waveformatextensible_t *pwfx, dword dwCreationFlags = 0 );

	bool Lock( void **pDSLockedBuffer, ulong *dwDSLockedBufferSize );
	bool Unlock( void *pDSLockedBuffer, dword dwDSLockedBufferSize );
	bool GetCurrentPosition( ulong *pdwCurrentWriteCursor );
	
	int				GetNumberOfSpeakers()				{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intGetNumberOfSpeakers()\r\n");
    return retVal;
}

	int				GetMixBufferSize()					{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intGetMixBufferSize()\r\n");
    return retVal;
}


	// WIN32 driver doesn't support write API
	bool Flush( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Flush( void )\r\n");
    return retVal;
}

	void Write( bool ) {
    Sys_Printf("void Write( bool )\r\n");
}

	short* GetMixBuffer( void ) {
    Sys_Printf("short* GetMixBuffer( void )\r\n");
    return NULL;
}


private:
    LPDIRECTSOUND			m_pDS;
    LPDIRECTSOUNDBUFFER		pDSBPrimary;
	idAudioBufferWIN32		*speakers;

	int						numSpeakers;
	int						bitsPerSample;
	int						bufferSize;		// allocate buffer handed over to DirectSound
	int						blockAlign;		// channels * bits per sample / 8: sound frame size
};

idAudioHardware *idAudioHardware::Alloc() {
    Sys_Printf("idAudioHardware *idAudioHardware::Alloc()\r\n");
    return NULL;
}

idAudioHardware::~idAudioHardware() {}

/*
================
idAudioHardwareWIN32::idAudioHardware
================
*/
idAudioHardwareWIN32::idAudioHardwareWIN32() {
    m_pDS = NULL;
	pDSBPrimary = NULL;
	speakers = NULL;
}

/*
================
idAudioHardwareWIN32::~idAudioHardware
================
*/
idAudioHardwareWIN32::~idAudioHardwareWIN32() {
	SAFE_DELETE( speakers );
	SAFE_RELEASE( pDSBPrimary );
    SAFE_RELEASE( m_pDS ); 
}

/*
===============
idAudioHardwareWIN32::Initialize
===============
*/
bool idAudioHardwareWIN32::Initialize( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioHardwareWIN32::Initialize( void )\r\n");
    return retVal;
}


/*
===============
idAudioHardwareWIN32::InitializeSpeakers
===============
*/
bool idAudioHardwareWIN32::InitializeSpeakers( byte *speakerData, int bufferSize, dword dwPrimaryFreq, dword dwPrimaryBitRate, dword dwSpeakers ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioHardwareWIN32::InitializeSpeakers( byte *speakerData, int bufferSize, dword dwPrimaryFreq, dword dwPrimaryBitRate, dword dwSpeakers )\r\n");
    return retVal;
}


/*
===============
idAudioHardwareWIN32::SetPrimaryBufferFormat
Set primary buffer to a specified format 
For example, to set the primary buffer format to 22kHz stereo, 16-bit
then:   dwPrimaryChannels = 2
        dwPrimaryFreq     = 22050, 
        dwPrimaryBitRate  = 16
===============
*/
void idAudioHardwareWIN32::SetPrimaryBufferFormat( dword dwPrimaryFreq, dword dwPrimaryBitRate, dword dwSpeakers ) {
    Sys_Printf("void idAudioHardwareWIN32::SetPrimaryBufferFormat( dword dwPrimaryFreq, dword dwPrimaryBitRate, dword dwSpeakers )\r\n");
}


/*
===============
idAudioHardwareWIN32::Create
===============
*/
int idAudioHardwareWIN32::Create( idAudioBuffer** ppSound, 
                               const char* strWaveFileName, 
							   dword dwCreationFlags ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAudioHardwareWIN32::Create( idAudioBuffer** ppSound, const char* strWaveFileName, dword dwCreationFlags )\r\n");
    return retVal;
}


/*
===============
idAudioHardwareWIN32::Create
===============
*/
int idAudioHardwareWIN32::Create( idWaveFile* pWaveFile, idAudioBuffer** ppiab ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAudioHardwareWIN32::Create( idWaveFile* pWaveFile, idAudioBuffer** ppiab )\r\n");
    return retVal;
}


//-----------------------------------------------------------------------------
// Name: idAudioHardwareWIN32::CreateFromMemory()
// Desc: 
//-----------------------------------------------------------------------------
int idAudioHardwareWIN32::CreateFromMemory( idAudioBufferWIN32** ppSound, 
                                        byte* pbData,
                                        ulong  ulDataSize,
                                        waveformatextensible_t* pwfx,
										dword dwCreationFlags ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAudioHardwareWIN32::CreateFromMemory( idAudioBufferWIN32** ppSound, byte* pbData, ulong  ulDataSize, waveformatextensible_t* pwfx,dword dwCreationFlags )\r\n");
    return retVal;
}


/*
===============
idAudioHardwareWIN32::Lock
===============
*/
bool idAudioHardwareWIN32::Lock( void **pDSLockedBuffer, ulong *dwDSLockedBufferSize ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioHardwareWIN32::Lock( void **pDSLockedBuffer, ulong *dwDSLockedBufferSize )\r\n");
    return retVal;
}


/*
===============
idAudioHardwareWIN32::Unlock
===============
*/
bool idAudioHardwareWIN32::Unlock(void *pDSLockedBuffer, dword dwDSLockedBufferSize ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioHardwareWIN32::Unlock(void *pDSLockedBuffer, dword dwDSLockedBufferSize )\r\n");
    return retVal;
}


/*
===============
idAudioHardwareWIN32::GetCurrentPosition
===============
*/
bool idAudioHardwareWIN32::GetCurrentPosition( ulong *pdwCurrentWriteCursor ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioHardwareWIN32::GetCurrentPosition( ulong *pdwCurrentWriteCursor )\r\n");
    return retVal;
}


static HMODULE hOpenAL = NULL;

/*
===============
Sys_LoadOpenAL
===============
*/
bool Sys_LoadOpenAL( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_LoadOpenAL( void )\r\n");
    return retVal;
}


/*
===============
Sys_FreeOpenAL
===============
*/
void Sys_FreeOpenAL( void ) {
    Sys_Printf("void Sys_FreeOpenAL( void )\r\n");
}


/*
===============
idAudioBufferWIN32::idAudioBuffer
===============
*/
idAudioBufferWIN32::idAudioBufferWIN32( LPDIRECTSOUNDBUFFER apDSBuffer, dword dwDSBufferSize, idWaveFile* pWaveFile ) {

    m_apDSBuffer = apDSBuffer;

    m_dwDSBufferSize = dwDSBufferSize;
    m_pWaveFile      = pWaveFile;

	if (pWaveFile) {
	    FillBufferWithSound( m_apDSBuffer, false );

		m_apDSBuffer->SetCurrentPosition(0);
	}
}

/*
===============
idAudioBufferWIN32::~idAudioBuffer
===============
*/
idAudioBufferWIN32::~idAudioBufferWIN32() {
	SAFE_DELETE(m_pWaveFile);
	SAFE_RELEASE( m_apDSBuffer ); 
	m_pWaveFile = NULL;
	m_apDSBuffer = NULL;
}

/*
===============
idAudioBufferWIN32::FillBufferWithSound
===============
*/
int idAudioBufferWIN32::FillBufferWithSound( LPDIRECTSOUNDBUFFER pDSB, bool bRepeatWavIfBufferLarger ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAudioBufferWIN32::FillBufferWithSound( LPDIRECTSOUNDBUFFER pDSB, bool bRepeatWavIfBufferLarger )\r\n");
    return retVal;
}


/*
===============
idAudioBufferWIN32::RestoreBuffer
Desc: Restores the lost buffer. *pbWasRestored returns true if the buffer was 
      restored.  It can also NULL if the information is not needed.
===============
*/
int idAudioBufferWIN32::RestoreBuffer( LPDIRECTSOUNDBUFFER pDSB, bool* pbWasRestored ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAudioBufferWIN32::RestoreBuffer( LPDIRECTSOUNDBUFFER pDSB, bool* pbWasRestored )\r\n");
    return retVal;
}


/*
===============
idAudioBufferWIN32::Play
Desc: Plays the sound using voice management flags.  Pass in DSBPLAY_LOOPING
      in the dwFlags to loop the sound
===============
*/
int idAudioBufferWIN32::Play( dword dwPriority, dword dwFlags ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAudioBufferWIN32::Play( dword dwPriority, dword dwFlags )\r\n");
    return retVal;
}


/*
===============
idAudioBufferWIN32::Stop
Desc: Stops the sound from playing
===============
*/
int idAudioBufferWIN32::Stop() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAudioBufferWIN32::Stop()\r\n");
    return retVal;
}


/*
===============
idAudioBufferWIN32::Reset
Desc: Reset all of the sound buffers
===============
*/
int idAudioBufferWIN32::Reset() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAudioBufferWIN32::Reset()\r\n");
    return retVal;
}


/*
===============
idAudioBufferWIN32::IsSoundPlaying
Desc: Checks to see if a buffer is playing and returns true if it
===============
*/
bool idAudioBufferWIN32::IsSoundPlaying( ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioBufferWIN32::IsSoundPlaying( )\r\n");
    return retVal;
}


/*
===============
idAudioBufferWIN32::Lock
===============
*/
bool idAudioBufferWIN32::Lock( void **pDSLockedBuffer, ulong *dwDSLockedBufferSize ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioBufferWIN32::Lock( void **pDSLockedBuffer, ulong *dwDSLockedBufferSize )\r\n");
    return retVal;
}


/*
===============
idAudioBufferWIN32::Unlock
===============
*/
bool idAudioBufferWIN32::Unlock(void *pDSLockedBuffer, dword dwDSLockedBufferSize ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioBufferWIN32::Unlock(void *pDSLockedBuffer, dword dwDSLockedBufferSize )\r\n");
    return retVal;
}


/*
===============
idAudioBufferWIN32::GetCurrentPosition
===============
*/
bool idAudioBufferWIN32::GetCurrentPosition( ulong *pdwCurrentWriteCursor ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioBufferWIN32::GetCurrentPosition( ulong *pdwCurrentWriteCursor )\r\n");
    return retVal;
}


/*
===============
idAudioBufferWIN32::SetVolume
===============
*/
void idAudioBufferWIN32::SetVolume( float x) {
    Sys_Printf("void idAudioBufferWIN32::SetVolume( float x)\r\n");
}

