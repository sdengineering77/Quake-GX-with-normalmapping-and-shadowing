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
#include "../sound/snd_local.h"

AL_API ALenum AL_APIENTRY alGetError() {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alGetError()\r\n");
    return retVal;
}


AL_API ALboolean AL_APIENTRY alIsSource( ALuint sid ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alIsSource( ALuint sid )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alGenBuffers( ALsizei n, ALuint* buffers ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alGenBuffers( ALsizei n, ALuint* buffers )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alSourceStop( ALuint sid ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alSourceStop( ALuint sid )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alGetSourcei( ALuint sid,  ALenum pname, ALint* value ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alGetSourcei( ALuint sid, ALenum pname, ALint* value )\r\n");
    return retVal;
}


AL_API ALint AL_APIENTRY alGetInteger( ALenum param ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alGetInteger( ALenum param )\r\n");
    return retVal;
}


ALC_API void ALC_APIENTRY alcSuspendContext( ALCcontext *alcHandle ) {
    ALC_APIENTRY retVal;
    memset(&retVal, 0, sizeof(ALC_APIENTRY));
    Sys_Printf("ALC_APIENTRY alcSuspendContext( ALCcontext *alcHandle )\r\n");
    return retVal;
}


ALC_API ALCdevice * ALC_APIENTRY alcOpenDevice( const ALchar *tokstr ) {
    ALC_APIENTRY retVal;
    memset(&retVal, 0, sizeof(ALC_APIENTRY));
    Sys_Printf("ALC_APIENTRY alcOpenDevice( const ALchar *tokstr )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alDeleteBuffers( ALsizei n, const ALuint* buffers ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alDeleteBuffers( ALsizei n, const ALuint* buffers )\r\n");
    return retVal;
}


AL_API ALboolean AL_APIENTRY alIsExtensionPresent( const ALchar* fname ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alIsExtensionPresent( const ALchar* fname )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alBufferData( ALuint   buffer,
									ALenum   format,
									const ALvoid*    data,
									ALsizei  size,
									ALsizei  freq ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alBufferData( ALuint   buffer,ALenum   format,const ALvoid*    data,ALsizei  size,ALsizei  freq )\r\n");
    return retVal;
}


ALC_API ALCboolean ALC_APIENTRY alcMakeContextCurrent( ALCcontext *alcHandle ) {
    ALC_APIENTRY retVal;
    memset(&retVal, 0, sizeof(ALC_APIENTRY));
    Sys_Printf("ALC_APIENTRY alcMakeContextCurrent( ALCcontext *alcHandle )\r\n");
    return retVal;
}


ALC_API ALCvoid ALC_APIENTRY alcProcessContext( ALCcontext *alcHandle ) {
    ALC_APIENTRY retVal;
    memset(&retVal, 0, sizeof(ALC_APIENTRY));
    Sys_Printf("ALC_APIENTRY alcProcessContext( ALCcontext *alcHandle )\r\n");
    return retVal;
}


ALC_API ALCvoid ALC_APIENTRY alcDestroyContext( ALCcontext *alcHandle ) {
    ALC_APIENTRY retVal;
    memset(&retVal, 0, sizeof(ALC_APIENTRY));
    Sys_Printf("ALC_APIENTRY alcDestroyContext( ALCcontext *alcHandle )\r\n");
    return retVal;
}


ALC_API const ALCchar * ALC_APIENTRY alcGetString( ALCdevice *deviceHandle, ALCenum token ) {
    ALC_APIENTRY retVal;
    memset(&retVal, 0, sizeof(ALC_APIENTRY));
    Sys_Printf("ALC_APIENTRY alcGetString( ALCdevice *deviceHandle, ALCenum token )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alBufferData( ALuint   buffer,
									ALenum   format,
									ALvoid*    data,
									ALsizei  size,
									ALsizei  freq ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alBufferData( ALuint   buffer,ALenum   format,ALvoid*    data,ALsizei  size,ALsizei  freq )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alDeleteBuffers( ALsizei n, ALuint* buffers ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alDeleteBuffers( ALsizei n, ALuint* buffers )\r\n");
    return retVal;
}


AL_API ALboolean AL_APIENTRY alIsExtensionPresent( ALubyte* fname ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alIsExtensionPresent( ALubyte* fname )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alDeleteSources( ALsizei n, const ALuint* sources ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alDeleteSources( ALsizei n, const ALuint* sources )\r\n");
    return retVal;
}


AL_API ALenum AL_APIENTRY alGetEnumValue( const ALchar* ename ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alGetEnumValue( const ALchar* ename )\r\n");
    return retVal;
}


AL_API void* AL_APIENTRY alGetProcAddress( const ALchar* fname ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alGetProcAddress( const ALchar* fname )\r\n");
    return retVal;
}


ALC_API ALCcontext * ALC_APIENTRY alcCreateContext( ALCdevice *dev,
												  const ALCint* attrlist ) {
    ALC_APIENTRY retVal;
    memset(&retVal, 0, sizeof(ALC_APIENTRY));
    Sys_Printf("ALC_APIENTRY alcCreateContext( ALCdevice *dev, const ALCint* attrlist )\r\n");
    return retVal;
}


ALC_API ALCdevice * ALC_APIENTRY alcOpenDevice( ALubyte *tokstr ) {
    ALC_APIENTRY retVal;
    memset(&retVal, 0, sizeof(ALC_APIENTRY));
    Sys_Printf("ALC_APIENTRY alcOpenDevice( ALubyte *tokstr )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alListenerfv( ALenum pname, const ALfloat* param ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alListenerfv( ALenum pname, const ALfloat* param )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alSourceQueueBuffers( ALuint sid, ALsizei numEntries, const ALuint *bids ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alSourceQueueBuffers( ALuint sid, ALsizei numEntries, const ALuint *bids )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alSourcei( ALuint sid, ALenum param, ALint value ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alSourcei( ALuint sid, ALenum param, ALint value )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alListenerf( ALenum pname, ALfloat param ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alListenerf( ALenum pname, ALfloat param )\r\n");
    return retVal;
}


ALC_API ALCboolean ALC_APIENTRY alcCloseDevice( ALCdevice *dev ) {
    ALC_APIENTRY retVal;
    memset(&retVal, 0, sizeof(ALC_APIENTRY));
    Sys_Printf("ALC_APIENTRY alcCloseDevice( ALCdevice *dev )\r\n");
    return retVal;
}


AL_API ALboolean AL_APIENTRY alIsBuffer( ALuint buffer ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alIsBuffer( ALuint buffer )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alSource3f( ALuint sid, ALenum param,
                                  ALfloat f1, ALfloat f2, ALfloat f3 ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alSource3f( ALuint sid, ALenum param, ALfloat f1, ALfloat f2, ALfloat f3 )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alGenSources( ALsizei n, ALuint* sources ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alGenSources( ALsizei n, ALuint* sources )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alSourcef( ALuint sid, ALenum param, ALfloat value ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alSourcef( ALuint sid, ALenum param, ALfloat value )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alSourceUnqueueBuffers( ALuint sid, ALsizei numEntries, ALuint *bids ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alSourceUnqueueBuffers( ALuint sid, ALsizei numEntries, ALuint *bids )\r\n");
    return retVal;
}


AL_API void AL_APIENTRY alSourcePlay( ALuint sid ) {
    AL_APIENTRY retVal;
    memset(&retVal, 0, sizeof(AL_APIENTRY));
    Sys_Printf("AL_APIENTRY alSourcePlay( ALuint sid )\r\n");
    return retVal;
}

