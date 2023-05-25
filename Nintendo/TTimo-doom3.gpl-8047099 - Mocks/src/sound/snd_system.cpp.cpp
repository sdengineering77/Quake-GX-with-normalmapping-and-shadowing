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

#ifdef ID_DEDICATED
idCVar idSoundSystemLocal::s_noSound( "s_noSound", "1", CVAR_SOUND | CVAR_BOOL | CVAR_ROM, "" );
#else
idCVar idSoundSystemLocal::s_noSound( "s_noSound", "0", CVAR_SOUND | CVAR_BOOL | CVAR_NOCHEAT, "" );
#endif
idCVar idSoundSystemLocal::s_quadraticFalloff( "s_quadraticFalloff", "1", CVAR_SOUND | CVAR_BOOL, "" );
idCVar idSoundSystemLocal::s_drawSounds( "s_drawSounds", "0", CVAR_SOUND | CVAR_INTEGER, "", 0, 2, idCmdSystem::ArgCompletion_Integer<0,2> );
idCVar idSoundSystemLocal::s_showStartSound( "s_showStartSound", "0", CVAR_SOUND | CVAR_BOOL, "" );
idCVar idSoundSystemLocal::s_useOcclusion( "s_useOcclusion", "1", CVAR_SOUND | CVAR_BOOL, "" );
idCVar idSoundSystemLocal::s_maxSoundsPerShader( "s_maxSoundsPerShader", "0", CVAR_SOUND | CVAR_ARCHIVE, "", 0, 10, idCmdSystem::ArgCompletion_Integer<0,10> );
idCVar idSoundSystemLocal::s_showLevelMeter( "s_showLevelMeter", "0", CVAR_SOUND | CVAR_BOOL, "" );
idCVar idSoundSystemLocal::s_constantAmplitude( "s_constantAmplitude", "-1", CVAR_SOUND | CVAR_FLOAT, "" );
idCVar idSoundSystemLocal::s_minVolume6( "s_minVolume6", "0", CVAR_SOUND | CVAR_FLOAT, "" );
idCVar idSoundSystemLocal::s_dotbias6( "s_dotbias6", "0.8", CVAR_SOUND | CVAR_FLOAT, "" );
idCVar idSoundSystemLocal::s_minVolume2( "s_minVolume2", "0.25", CVAR_SOUND | CVAR_FLOAT, "" );
idCVar idSoundSystemLocal::s_dotbias2( "s_dotbias2", "1.1", CVAR_SOUND | CVAR_FLOAT, "" );
idCVar idSoundSystemLocal::s_spatializationDecay( "s_spatializationDecay", "2", CVAR_SOUND | CVAR_ARCHIVE | CVAR_FLOAT, "" );
idCVar idSoundSystemLocal::s_reverse( "s_reverse", "0", CVAR_SOUND | CVAR_ARCHIVE | CVAR_BOOL, "" );
idCVar idSoundSystemLocal::s_meterTopTime( "s_meterTopTime", "2000", CVAR_SOUND | CVAR_ARCHIVE | CVAR_INTEGER, "" );
idCVar idSoundSystemLocal::s_volume( "s_volume_dB", "0", CVAR_SOUND | CVAR_ARCHIVE | CVAR_FLOAT, "volume in dB" );
idCVar idSoundSystemLocal::s_playDefaultSound( "s_playDefaultSound", "1", CVAR_SOUND | CVAR_ARCHIVE | CVAR_BOOL, "play a beep for missing sounds" );
idCVar idSoundSystemLocal::s_subFraction( "s_subFraction", "0.75", CVAR_SOUND | CVAR_ARCHIVE | CVAR_FLOAT, "volume to subwoofer in 5.1" );
idCVar idSoundSystemLocal::s_globalFraction( "s_globalFraction", "0.8", CVAR_SOUND | CVAR_ARCHIVE | CVAR_FLOAT, "volume to all speakers when not spatialized" );
idCVar idSoundSystemLocal::s_doorDistanceAdd( "s_doorDistanceAdd", "150", CVAR_SOUND | CVAR_ARCHIVE | CVAR_FLOAT, "reduce sound volume with this distance when going through a door" );
idCVar idSoundSystemLocal::s_singleEmitter( "s_singleEmitter", "0", CVAR_SOUND | CVAR_INTEGER, "mute all sounds but this emitter" );
idCVar idSoundSystemLocal::s_numberOfSpeakers( "s_numberOfSpeakers", "2", CVAR_SOUND | CVAR_ARCHIVE, "number of speakers" );
idCVar idSoundSystemLocal::s_force22kHz( "s_force22kHz", "0", CVAR_SOUND | CVAR_BOOL, ""  );
idCVar idSoundSystemLocal::s_clipVolumes( "s_clipVolumes", "1", CVAR_SOUND | CVAR_BOOL, ""  );
idCVar idSoundSystemLocal::s_realTimeDecoding( "s_realTimeDecoding", "1", CVAR_SOUND | CVAR_BOOL | CVAR_INIT, "" );

idCVar idSoundSystemLocal::s_slowAttenuate( "s_slowAttenuate", "1", CVAR_SOUND | CVAR_BOOL, "slowmo sounds attenuate over shorted distance" );
idCVar idSoundSystemLocal::s_enviroSuitCutoffFreq( "s_enviroSuitCutoffFreq", "2000", CVAR_SOUND | CVAR_FLOAT, "" );
idCVar idSoundSystemLocal::s_enviroSuitCutoffQ( "s_enviroSuitCutoffQ", "2", CVAR_SOUND | CVAR_FLOAT, "" );
idCVar idSoundSystemLocal::s_reverbTime( "s_reverbTime", "1000", CVAR_SOUND | CVAR_FLOAT, "" );
idCVar idSoundSystemLocal::s_reverbFeedback( "s_reverbFeedback", "0.333", CVAR_SOUND | CVAR_FLOAT, "" );
idCVar idSoundSystemLocal::s_enviroSuitVolumeScale( "s_enviroSuitVolumeScale", "0.9", CVAR_SOUND | CVAR_FLOAT, "" );
idCVar idSoundSystemLocal::s_skipHelltimeFX( "s_skipHelltimeFX", "0", CVAR_SOUND | CVAR_BOOL, "" );

#if ID_OPENAL
// off by default. OpenAL DLL gets loaded on-demand
idCVar idSoundSystemLocal::s_libOpenAL( "s_libOpenAL", "openal32.dll", CVAR_SOUND | CVAR_ARCHIVE, "OpenAL DLL name/path" );
idCVar idSoundSystemLocal::s_useOpenAL( "s_useOpenAL", "0", CVAR_SOUND | CVAR_BOOL | CVAR_ARCHIVE, "use OpenAL" );
idCVar idSoundSystemLocal::s_useEAXReverb( "s_useEAXReverb", "0", CVAR_SOUND | CVAR_BOOL | CVAR_ARCHIVE, "use EAX reverb" );
idCVar idSoundSystemLocal::s_muteEAXReverb( "s_muteEAXReverb", "0", CVAR_SOUND | CVAR_BOOL, "mute eax reverb" );
idCVar idSoundSystemLocal::s_decompressionLimit( "s_decompressionLimit", "6", CVAR_SOUND | CVAR_INTEGER | CVAR_ARCHIVE, "specifies maximum uncompressed sample length in seconds" );
#else
idCVar idSoundSystemLocal::s_libOpenAL( "s_libOpenAL", "openal32.dll", CVAR_SOUND | CVAR_ARCHIVE, "OpenAL is not supported in this build" );
idCVar idSoundSystemLocal::s_useOpenAL( "s_useOpenAL", "0", CVAR_SOUND | CVAR_BOOL | CVAR_ROM, "OpenAL is not supported in this build" );
idCVar idSoundSystemLocal::s_useEAXReverb( "s_useEAXReverb", "0", CVAR_SOUND | CVAR_BOOL | CVAR_ROM, "EAX not available in this build" );
idCVar idSoundSystemLocal::s_muteEAXReverb( "s_muteEAXReverb", "0", CVAR_SOUND | CVAR_BOOL | CVAR_ROM, "mute eax reverb" );
idCVar idSoundSystemLocal::s_decompressionLimit( "s_decompressionLimit", "6", CVAR_SOUND | CVAR_INTEGER | CVAR_ROM, "specifies maximum uncompressed sample length in seconds" );
#endif

bool idSoundSystemLocal::useOpenAL = false;
bool idSoundSystemLocal::useEAXReverb = false;
int idSoundSystemLocal::EAXAvailable = -1;

idSoundSystemLocal	soundSystemLocal;
idSoundSystem	*soundSystem  = &soundSystemLocal;

/*
===============
SoundReloadSounds_f

  this is called from the main thread
===============
*/
void SoundReloadSounds_f( const idCmdArgs &args ) {
    Sys_Printf("void SoundReloadSounds_f( const idCmdArgs &args )\r\n");
}


/*
===============
ListSounds_f

Optional parameter to only list sounds containing that string
===============
*/
void ListSounds_f( const idCmdArgs &args ) {
    Sys_Printf("void ListSounds_f( const idCmdArgs &args )\r\n");
}


/*
===============
ListSoundDecoders_f
===============
*/
void ListSoundDecoders_f( const idCmdArgs &args ) {
    Sys_Printf("void ListSoundDecoders_f( const idCmdArgs &args )\r\n");
}


/*
===============
TestSound_f

  this is called from the main thread
===============
*/
void TestSound_f( const idCmdArgs &args ) {
    Sys_Printf("void TestSound_f( const idCmdArgs &args )\r\n");
}


/*
===============
SoundSystemRestart_f

restart the sound thread

  this is called from the main thread
===============
*/
void SoundSystemRestart_f( const idCmdArgs &args ) {
    Sys_Printf("void SoundSystemRestart_f( const idCmdArgs &args )\r\n");
}


/*
===============
idSoundSystemLocal::Init

initialize the sound system
===============
*/
void idSoundSystemLocal::Init() {
    Sys_Printf("void idSoundSystemLocal::Init()\r\n");
}


/*
===============
idSoundSystemLocal::Shutdown
===============
*/
void idSoundSystemLocal::Shutdown() {
    Sys_Printf("void idSoundSystemLocal::Shutdown()\r\n");
}


/*
===============
idSoundSystemLocal::InitHW
===============
*/
bool idSoundSystemLocal::InitHW() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSoundSystemLocal::InitHW()\r\n");
    return retVal;
}


/*
===============
idSoundSystemLocal::ShutdownHW
===============
*/
bool idSoundSystemLocal::ShutdownHW() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSoundSystemLocal::ShutdownHW()\r\n");
    return retVal;
}


/*
===============
idSoundSystemLocal::GetCurrent44kHzTime
===============
*/
int idSoundSystemLocal::GetCurrent44kHzTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSoundSystemLocal::GetCurrent44kHzTime( void )\r\n");
    return retVal;
}


/*
===================
idSoundSystemLocal::ClearBuffer
===================
*/
void idSoundSystemLocal::ClearBuffer( void ) {
    Sys_Printf("void idSoundSystemLocal::ClearBuffer( void )\r\n");
}


/*
===================
idSoundSystemLocal::AsyncMix
Mac OSX version. The system uses it's own thread and an IOProc callback
===================
*/
int idSoundSystemLocal::AsyncMix( int soundTime, float *mixBuffer ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSoundSystemLocal::AsyncMix( int soundTime, float *mixBuffer )\r\n");
    return retVal;
}


/*
===================
idSoundSystemLocal::AsyncUpdate
called from async sound thread when com_asyncSound == 1 ( Windows )
===================
*/
int idSoundSystemLocal::AsyncUpdate( int inTime ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSoundSystemLocal::AsyncUpdate( int inTime )\r\n");
    return retVal;
}


/*
===================
idSoundSystemLocal::AsyncUpdateWrite
sound output using a write API. all the scheduling based on time
we mix MIXBUFFER_SAMPLES at a time, but we feed the audio device with smaller chunks (and more often)
called by the sound thread when com_asyncSound is 3 ( Linux )
===================
*/
int idSoundSystemLocal::AsyncUpdateWrite( int inTime ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSoundSystemLocal::AsyncUpdateWrite( int inTime )\r\n");
    return retVal;
}


/*
===================
idSoundSystemLocal::dB2Scale
===================
*/
float idSoundSystemLocal::dB2Scale( const float val ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idSoundSystemLocal::dB2Scale( const float val )\r\n");
    return retVal;
}


/*
===================
idSoundSystemLocal::ImageForTime
===================
*/
cinData_t idSoundSystemLocal::ImageForTime( const int milliseconds, const bool waveform ) {
    cinData_t retVal;
    memset(&retVal, 0, sizeof(cinData_t));
    Sys_Printf("cinData_t idSoundSystemLocal::ImageForTime( const int milliseconds, const bool waveform )\r\n");
    return retVal;
}


/*
===================
idSoundSystemLocal::GetSoundDecoderInfo
===================
*/
int idSoundSystemLocal::GetSoundDecoderInfo( int index, soundDecoderInfo_t &decoderInfo ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSoundSystemLocal::GetSoundDecoderInfo( int index, soundDecoderInfo_t &decoderInfo )\r\n");
    return retVal;
}


/*
===================
idSoundSystemLocal::AllocSoundWorld
===================
*/
idSoundWorld *idSoundSystemLocal::AllocSoundWorld( idRenderWorld *rw ) {
    Sys_Printf("idSoundWorld *idSoundSystemLocal::AllocSoundWorld( idRenderWorld *rw )\r\n");
    return NULL;
}


/*
===================
idSoundSystemLocal::SetMute
===================
*/
void idSoundSystemLocal::SetMute( bool muteOn ) {
    Sys_Printf("void idSoundSystemLocal::SetMute( bool muteOn )\r\n");
}


/*
===================
idSoundSystemLocal::SamplesToMilliseconds
===================
*/
int idSoundSystemLocal::SamplesToMilliseconds( int samples ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSoundSystemLocal::SamplesToMilliseconds( int samples )\r\n");
    return retVal;
}


/*
===================
idSoundSystemLocal::SamplesToMilliseconds
===================
*/
int idSoundSystemLocal::MillisecondsToSamples( int ms ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSoundSystemLocal::MillisecondsToSamples( int ms )\r\n");
    return retVal;
}


/*
===================
idSoundSystemLocal::SetPlayingSoundWorld

specifying NULL will cause silence to be played
===================
*/
void idSoundSystemLocal::SetPlayingSoundWorld( idSoundWorld *soundWorld ) {
    Sys_Printf("void idSoundSystemLocal::SetPlayingSoundWorld( idSoundWorld *soundWorld )\r\n");
}


/*
===================
idSoundSystemLocal::GetPlayingSoundWorld
===================
*/
idSoundWorld *idSoundSystemLocal::GetPlayingSoundWorld( void ) {
    Sys_Printf("idSoundWorld *idSoundSystemLocal::GetPlayingSoundWorld( void )\r\n");
    return NULL;
}


/*
===================
idSoundSystemLocal::BeginLevelLoad
===================
*/

void idSoundSystemLocal::BeginLevelLoad() {
    Sys_Printf("void idSoundSystemLocal::BeginLevelLoad()\r\n");
}


/*
===================
idSoundSystemLocal::EndLevelLoad
===================
*/
void idSoundSystemLocal::EndLevelLoad( const char *mapstring ) {
    Sys_Printf("void idSoundSystemLocal::EndLevelLoad( const char *mapstring )\r\n");
}


/*
===================
idSoundSystemLocal::AllocOpenALSource
===================
*/
ALuint idSoundSystemLocal::AllocOpenALSource( idSoundChannel *chan, bool looping, bool stereo ) {
    ALuint retVal;
    memset(&retVal, 0, sizeof(ALuint));
    Sys_Printf("ALuint idSoundSystemLocal::AllocOpenALSource( idSoundChannel *chan, bool looping, bool stereo )\r\n");
    return retVal;
}


/*
===================
idSoundSystemLocal::FreeOpenALSource
===================
*/
void idSoundSystemLocal::FreeOpenALSource( ALuint handle ) {
    Sys_Printf("void idSoundSystemLocal::FreeOpenALSource( ALuint handle )\r\n");
}


/*
============================================================
SoundFX and misc effects
============================================================
*/

/*
===================
idSoundSystemLocal::ProcessSample
===================
*/
void SoundFX_Lowpass::ProcessSample( float* in, float* out ) {
    Sys_Printf("void SoundFX_Lowpass::ProcessSample( float* in, float* out )\r\n");
}


void SoundFX_LowpassFast::ProcessSample( float* in, float* out ) {
    Sys_Printf("void SoundFX_LowpassFast::ProcessSample( float* in, float* out )\r\n");
}


void SoundFX_LowpassFast::SetParms( float p1, float p2, float p3 ) {
    Sys_Printf("void SoundFX_LowpassFast::SetParms( float p1, float p2, float p3 )\r\n");
}


void SoundFX_Comb::Initialize() {
    Sys_Printf("void SoundFX_Comb::Initialize()\r\n");
}


void SoundFX_Comb::ProcessSample( float* in, float* out ) {
    Sys_Printf("void SoundFX_Comb::ProcessSample( float* in, float* out )\r\n");
}


/*
===================
idSoundSystemLocal::DoEnviroSuit
===================
*/
void idSoundSystemLocal::DoEnviroSuit( float* samples, int numSamples, int numSpeakers ) {
    Sys_Printf("void idSoundSystemLocal::DoEnviroSuit( float* samples, int numSamples, int numSpeakers )\r\n");
}


/*
=================
idSoundSystemLocal::PrintMemInfo
=================
*/
void idSoundSystemLocal::PrintMemInfo( MemInfo_t *mi ) {
    Sys_Printf("void idSoundSystemLocal::PrintMemInfo( MemInfo_t *mi )\r\n");
}


/*
===============
idSoundSystemLocal::EAXAvailable
===============
*/
int idSoundSystemLocal::IsEAXAvailable( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSoundSystemLocal::IsEAXAvailable( void )\r\n");
    return retVal;
}

