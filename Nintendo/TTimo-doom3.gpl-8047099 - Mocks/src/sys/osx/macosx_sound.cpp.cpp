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
#include "../../sound/snd_local.h"

#include <Carbon/Carbon.h>
#include <CoreAudio/CoreAudio.h>

idCVar s_device( "s_device", "-1", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_INTEGER, "Sound device to use. -1 for default device" );

class idAudioHardwareOSX : public idAudioHardware {
public:
	idAudioHardwareOSX();
    ~idAudioHardwareOSX();

    bool	Initialize( );

	// OSX driver doesn't support memory map API
	bool	Lock( void **pDSLockedBuffer, ulong *dwDSLockedBufferSize ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolLock( void **pDSLockedBuffer, ulong *dwDSLockedBufferSize )\r\n");
    return retVal;
}

	bool	Unlock( void *pDSLockedBuffer, dword dwDSLockedBufferSize ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolUnlock( void *pDSLockedBuffer, dword dwDSLockedBufferSize )\r\n");
    return retVal;
}

	bool	GetCurrentPosition( ulong *pdwCurrentWriteCursor ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolGetCurrentPosition( ulong *pdwCurrentWriteCursor )\r\n");
    return retVal;
}

	int		GetMixBufferSize( void )  {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intGetMixBufferSize( void )\r\n");
    return retVal;
}

	
	int		GetNumberOfSpeakers( void );

	// OSX driver doesn't support write API
	bool	Flush( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("boolFlush( void )\r\n");
    return retVal;
}

	void	Write( bool ) {
    Sys_Printf("voidWrite( bool )\r\n");
}

	short*	GetMixBuffer( void ) {
    Sys_Printf("short*GetMixBuffer( void )\r\n");
    return NULL;
}

	
private:
	AudioDeviceID		selectedDevice;
	bool				activeIOProc;

	void				Reset( void );
	void				InitFailed( void );
	const char*			ExtractStatus( OSStatus status );
	void				GetAvailableNominalSampleRates( void );

	// AudioDevicePropertyListenerProc
	static OSStatus		DeviceListener(	AudioDeviceID			inDevice,
	   									UInt32					inChannel,
										Boolean					isInput,
										AudioDevicePropertyID	inPropertyID,
										void*					inClientData );

	// AudioDeviceIOProc
	static OSStatus		DeviceIOProc( AudioDeviceID				inDevice,
									  const AudioTimeStamp*		inNow,
									  const AudioBufferList*	inInputData,
									  const AudioTimeStamp*		inInputTime,
									  AudioBufferList*			outOutputData, 
									  const AudioTimeStamp*		inOutputTime,
									  void*						inClientData );
};

/*
==========
iAudioHardware::Alloc
==========
*/
idAudioHardware *idAudioHardware::Alloc() {
    Sys_Printf("idAudioHardware *idAudioHardware::Alloc()\r\n");
    return NULL;
}


/*
==========
idAudioHardware::~idAudioHardware
==========
*/
idAudioHardware::~idAudioHardware() { }

/*
==========
idAudioHardwareOSX::idAudioHardwareOSX
==========
*/
idAudioHardwareOSX::idAudioHardwareOSX() {
	selectedDevice = kAudioDeviceUnknown;
	activeIOProc = false;
}

/*
==========
idAudioHardwareOSX::~idAudioHardwareOSX
==========
*/
idAudioHardwareOSX::~idAudioHardwareOSX() {
	Reset();
}

/*
==========
idAudioHardwareOSX::Reset
==========
*/
void idAudioHardwareOSX::Reset() {
    Sys_Printf("void idAudioHardwareOSX::Reset()\r\n");
}


/*
=================
idAudioHardwareOSX::InitFailed
=================	
*/	
void idAudioHardwareOSX::InitFailed() {
    Sys_Printf("void idAudioHardwareOSX::InitFailed()\r\n");
}


/*
==========
idAudioHardwareOSX::DeviceListener
==========
*/
OSStatus idAudioHardwareOSX::DeviceListener(	AudioDeviceID			inDevice,
												UInt32					inChannel,
												Boolean					isInput,
												AudioDevicePropertyID	inPropertyID,
												void*					inClientData) {
    OSStatus retVal;
    memset(&retVal, 0, sizeof(OSStatus));
    Sys_Printf("OSStatus idAudioHardwareOSX::DeviceListener(AudioDeviceIDinDevice,UInt32inChannel,BooleanisInput,AudioDevicePropertyIDinPropertyID,void*inClientData)\r\n");
    return retVal;
}


/*
==========
idAudioHardwareOSX::DeviceIOProc
==========
*/
OSStatus idAudioHardwareOSX::DeviceIOProc( AudioDeviceID			inDevice,
										   const AudioTimeStamp*	inNow,
										   const AudioBufferList*	inInputData,
										   const AudioTimeStamp*	inInputTime,
										   AudioBufferList*			outOutputData, 
										   const AudioTimeStamp*	inOutputTime,
										   void*					inClientData ) {
    OSStatus retVal;
    memset(&retVal, 0, sizeof(OSStatus));
    Sys_Printf("OSStatus idAudioHardwareOSX::DeviceIOProc( AudioDeviceIDinDevice, const AudioTimeStamp*inNow, const AudioBufferList*inInputData, const AudioTimeStamp*inInputTime, AudioBufferList*outOutputData, const AudioTimeStamp*inOutputTime, void*inClientData )\r\n");
    return retVal;
}


/*
==========
idAudioHardwareOSX::ExtractStatus
==========
*/
const char*	idAudioHardwareOSX::ExtractStatus( OSStatus status ) {
    Sys_Printf("char*idAudioHardwareOSX::ExtractStatus( OSStatus status )\r\n");
    return NULL;
}


/*
==========
idAudioHardwareOSX::Initialize
==========
*/
bool idAudioHardwareOSX::Initialize( ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioHardwareOSX::Initialize( )\r\n");
    return retVal;
}


/*
==========
idAudioHardwareOSX::GetAvailableNominalSampleRates
==========
*/
void idAudioHardwareOSX::GetAvailableNominalSampleRates( void ) {
    Sys_Printf("void idAudioHardwareOSX::GetAvailableNominalSampleRates( void )\r\n");
}


/*
==========
idAudioHardwareOSX::GetNumberOfSpeakers
==========
*/
int	idAudioHardwareOSX::GetNumberOfSpeakers() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidAudioHardwareOSX::GetNumberOfSpeakers()\r\n");
    return retVal;
}


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

