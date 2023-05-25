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
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>
#include <malloc.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
// OSS sound interface
// http://www.opensound.com/
#include <sys/soundcard.h>

#include "../../idlib/precompiled.h"
#include "../../sound/snd_local.h"
#include "../posix/posix_public.h"
#include "sound.h"

const char	*s_driverArgs[]	= { "best", "oss", "alsa", NULL };

#ifndef NO_ALSA
static idCVar s_driver( "s_driver", s_driverArgs[0], CVAR_SYSTEM | CVAR_ARCHIVE, "sound driver. 'best' will attempt to use alsa and fallback to OSS if not available", s_driverArgs, idCmdSystem::ArgCompletion_String<s_driverArgs> );
#else
static idCVar s_driver( "s_driver", "oss", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_ROM, "sound driver. only OSS is supported in this build" );
#endif

idAudioHardware *idAudioHardware::Alloc() {
    Sys_Printf("idAudioHardware *idAudioHardware::Alloc()\r\n");
    return NULL;
}


// OSS sound ----------------------------------------------------

/*
===============
idAudioHardware::~idAudioHardware
===============
*/
idAudioHardware::~idAudioHardware() { }
	
/*
=================
idAudioHardwareOSS::~idAudioHardwareOSS
=================	
*/	
idAudioHardwareOSS::~idAudioHardwareOSS() {
	Release();
}

/*
=================
idAudioHardwareOSS::Release
=================	
*/	
void idAudioHardwareOSS::Release( bool bSilent ) {
    Sys_Printf("void idAudioHardwareOSS::Release( bool bSilent )\r\n");
}
	

/*
=================
idAudioHardwareOSS::InitFailed
=================	
*/	
void idAudioHardwareOSS::InitFailed() {
    Sys_Printf("void idAudioHardwareOSS::InitFailed()\r\n");
}


/*
=================
idAudioHardwareOSS::ExtractOSSVersion
=================	
*/	
void idAudioHardwareOSS::ExtractOSSVersion( int version, idStr &str ) const {
    Sys_Printf("void idAudioHardwareOSS::ExtractOSSVersion( int version, idStr &str )\r\n");
}


/*
=================
idAudioHardwareOSS::Initialize

http://www.4front-tech.com/pguide/index.html
though OSS API docs (1.1) advertise AFMT_S32_LE, AFMT_S16_LE is the only output format I've found in kernel emu10k1 headers

BSD NOTE: With the GNU library, you can use free to free the blocks that memalign, posix_memalign, and valloc return.
That does not work in BSD, however--BSD does not provide any way to free such blocks.
=================	
*/
idCVar s_device( "s_dsp", "/dev/dsp", CVAR_SYSTEM | CVAR_ARCHIVE, "" );

bool idAudioHardwareOSS::Initialize( ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioHardwareOSS::Initialize( )\r\n");
    return retVal;
}


/*
===============
idAudioHardwareOSS::Flush
===============
*/
bool idAudioHardwareOSS::Flush( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioHardwareOSS::Flush( void )\r\n");
    return retVal;
}


/*
=================
idAudioHardwareOSS::GetMixBufferSize
=================
*/	
int idAudioHardwareOSS::GetMixBufferSize() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAudioHardwareOSS::GetMixBufferSize()\r\n");
    return retVal;
}


/*
=================
idAudioHardwareOSS::GetMixBuffer
=================
*/	
short* idAudioHardwareOSS::GetMixBuffer() {
    Sys_Printf("short* idAudioHardwareOSS::GetMixBuffer()\r\n");
    return NULL;
}


/*
===============
idAudioHardwareOSS::Write
rely on m_freeWriteChunks which has been set in Flush() before engine did the mixing for this MIXBUFFER_SAMPLE
===============
*/
void idAudioHardwareOSS::Write( bool flushing ) {
    Sys_Printf("void idAudioHardwareOSS::Write( bool flushing )\r\n");
}


/*
 ===============
 Sys_LoadOpenAL
 -===============
 */
bool Sys_LoadOpenAL( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_LoadOpenAL( void )\r\n");
    return retVal;
}


