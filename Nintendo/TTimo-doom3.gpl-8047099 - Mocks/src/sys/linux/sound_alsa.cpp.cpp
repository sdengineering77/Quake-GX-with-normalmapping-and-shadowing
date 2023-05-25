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
#include "../posix/posix_public.h"
#include "sound.h"

#include <dlfcn.h>

static idCVar s_alsa_pcm( "s_alsa_pcm", "default", CVAR_SYSTEM | CVAR_ARCHIVE, "which alsa pcm device to use. default, hwplug, hw.. see alsa docs" );
static idCVar s_alsa_lib( "s_alsa_lib", "libasound.so.2", CVAR_SYSTEM | CVAR_ARCHIVE, "alsa client sound library" );

/*
===============
idAudioHardwareALSA::DLOpen
===============
*/
bool idAudioHardwareALSA::DLOpen( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioHardwareALSA::DLOpen( void )\r\n");
    return retVal;
}


/*
===============
idAudioHardwareALSA::Release
===============
*/
void idAudioHardwareALSA::Release() {
    Sys_Printf("void idAudioHardwareALSA::Release()\r\n");
}


/*
=================
idAudioHardwareALSA::InitFailed
=================	
*/	
void idAudioHardwareALSA::InitFailed() {
    Sys_Printf("void idAudioHardwareALSA::InitFailed()\r\n");
}


/*
=====================
idAudioHardwareALSA::Initialize
=====================
*/
bool idAudioHardwareALSA::Initialize( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioHardwareALSA::Initialize( void )\r\n");
    return retVal;
}


/*
===============
idAudioHardwareALSA::~idAudioHardwareALSA
===============
*/
idAudioHardwareALSA::~idAudioHardwareALSA() {
	common->Printf( "----------- Alsa Shutdown ------------\n" );
	Release();
	common->Printf( "--------------------------------------\n" );
}

/*
=================
idAudioHardwareALSA::GetMixBufferSize
=================
*/	
int idAudioHardwareALSA::GetMixBufferSize() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAudioHardwareALSA::GetMixBufferSize()\r\n");
    return retVal;
}


/*
=================
idAudioHardwareALSA::GetMixBuffer
=================
*/	
short* idAudioHardwareALSA::GetMixBuffer() {
    Sys_Printf("short* idAudioHardwareALSA::GetMixBuffer()\r\n");
    return NULL;
}


/*
===============
idAudioHardwareALSA::Flush
===============
*/
bool idAudioHardwareALSA::Flush( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAudioHardwareALSA::Flush( void )\r\n");
    return retVal;
}


/*
===============
idAudioHardwareALSA::Write
rely on m_freeWriteChunks which has been set in Flush() before engine did the mixing for this MIXBUFFER_SAMPLE
===============
*/
void idAudioHardwareALSA::Write( bool flushing ) {
    Sys_Printf("void idAudioHardwareALSA::Write( bool flushing )\r\n");
}

