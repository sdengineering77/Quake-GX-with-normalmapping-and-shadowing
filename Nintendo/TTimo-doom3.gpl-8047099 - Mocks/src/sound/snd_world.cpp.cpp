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

/*
==================
idSoundWorldLocal::Init
==================
*/
void idSoundWorldLocal::Init( idRenderWorld *renderWorld ) {
    Sys_Printf("void idSoundWorldLocal::Init( idRenderWorld *renderWorld )\r\n");
}


/*
===============
idSoundWorldLocal::idSoundWorldLocal
===============
*/
idSoundWorldLocal::idSoundWorldLocal() {
}

/*
===============
idSoundWorldLocal::~idSoundWorldLocal
===============
*/
idSoundWorldLocal::~idSoundWorldLocal() {
	Shutdown();
}

/*
===============
idSoundWorldLocal::Shutdown

  this is called from the main thread
===============
*/
void idSoundWorldLocal::Shutdown() {
    Sys_Printf("void idSoundWorldLocal::Shutdown()\r\n");
}


/*
===================
idSoundWorldLocal::ClearAllSoundEmitters
===================
*/
void idSoundWorldLocal::ClearAllSoundEmitters() {
    Sys_Printf("void idSoundWorldLocal::ClearAllSoundEmitters()\r\n");
}


/*
===================
idSoundWorldLocal::AllocLocalSoundEmitter
===================
*/
idSoundEmitterLocal *idSoundWorldLocal::AllocLocalSoundEmitter() {
    Sys_Printf("idSoundEmitterLocal *idSoundWorldLocal::AllocLocalSoundEmitter()\r\n");
    return NULL;
}


/*
===================
idSoundWorldLocal::AllocSoundEmitter

  this is called from the main thread
===================
*/
idSoundEmitter *idSoundWorldLocal::AllocSoundEmitter() {
    Sys_Printf("idSoundEmitter *idSoundWorldLocal::AllocSoundEmitter()\r\n");
    return NULL;
}


/*
===================
idSoundWorldLocal::StartWritingDemo

  this is called from the main thread
===================
*/
void idSoundWorldLocal::StartWritingDemo( idDemoFile *demo ) {
    Sys_Printf("void idSoundWorldLocal::StartWritingDemo( idDemoFile *demo )\r\n");
}


/*
===================
idSoundWorldLocal::StopWritingDemo

  this is called from the main thread
===================
*/
void idSoundWorldLocal::StopWritingDemo() {
    Sys_Printf("void idSoundWorldLocal::StopWritingDemo()\r\n");
}


/*
===================
idSoundWorldLocal::ProcessDemoCommand

  this is called from the main thread
===================
*/
void idSoundWorldLocal::ProcessDemoCommand( idDemoFile *readDemo ) {
    Sys_Printf("void idSoundWorldLocal::ProcessDemoCommand( idDemoFile *readDemo )\r\n");
}


/*
===================
idSoundWorldLocal::CurrentShakeAmplitudeForPosition

  this is called from the main thread
===================
*/
float idSoundWorldLocal::CurrentShakeAmplitudeForPosition( const int time, const idVec3 &listererPosition ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idSoundWorldLocal::CurrentShakeAmplitudeForPosition( const int time, const idVec3 &listererPosition )\r\n");
    return retVal;
}


/*
===================
idSoundWorldLocal::MixLoop

Sum all sound contributions into finalMixBuffer, an unclamped float buffer holding
all output channels.  MIXBUFFER_SAMPLES samples will be created, with each sample consisting
of 2 or 6 floats depending on numSpeakers.

this is normally called from the sound thread, but also from the main thread
for AVIdemo writing
===================
*/
void idSoundWorldLocal::MixLoop( int current44kHz, int numSpeakers, float *finalMixBuffer ) {
    Sys_Printf("void idSoundWorldLocal::MixLoop( int current44kHz, int numSpeakers, float *finalMixBuffer )\r\n");
}


//==============================================================================

/*
===================
idSoundWorldLocal::AVIOpen

	this is called by the main thread
===================
*/
void idSoundWorldLocal::AVIOpen( const char *path, const char *name ) {
    Sys_Printf("void idSoundWorldLocal::AVIOpen( const char *path, const char *name )\r\n");
}


/*
===================
idSoundWorldLocal::AVIUpdate

this is called by the main thread
writes one block of sound samples if enough time has passed
This can be used to write wave files even if no sound hardware exists
===================
*/
void idSoundWorldLocal::AVIUpdate() {
    Sys_Printf("void idSoundWorldLocal::AVIUpdate()\r\n");
}


/*
===================
idSoundWorldLocal::AVIClose
===================
*/
void idSoundWorldLocal::AVIClose( void ) {
    Sys_Printf("void idSoundWorldLocal::AVIClose( void )\r\n");
}


//==============================================================================


/*
===================
idSoundWorldLocal::ResolveOrigin

Find out of the sound is completely occluded by a closed door portal, or
the virtual sound origin position at the portal closest to the listener.
  this is called by the main thread

dist is the distance from the orignial sound origin to the current portal that enters soundArea
def->distance is the distance we are trying to reduce.

If there is no path through open portals from the sound to the listener, def->distance will remain
set at maxDistance
===================
*/
static const int MAX_PORTAL_TRACE_DEPTH = 10;

void idSoundWorldLocal::ResolveOrigin( const int stackDepth, const soundPortalTrace_t *prevStack, const int soundArea, const float dist, const idVec3& soundOrigin, idSoundEmitterLocal *def ) {
    Sys_Printf("void idSoundWorldLocal::ResolveOrigin( const int stackDepth, const soundPortalTrace_t *prevStack, const int soundArea, const float dist, const idVec3& soundOrigin, idSoundEmitterLocal *def )\r\n");
}



/*
===================
idSoundWorldLocal::PlaceListener

  this is called by the main thread
===================
*/
void idSoundWorldLocal::PlaceListener( const idVec3& origin, const idMat3& axis, 
									const int listenerId, const int gameTime, const idStr& areaName  ) {
    Sys_Printf("void idSoundWorldLocal::PlaceListener( const idVec3& origin, const idMat3& axis, const int listenerId, const int gameTime, const idStr& areaName  )\r\n");
}


/*
==================
idSoundWorldLocal::ForegroundUpdate
==================
*/
void idSoundWorldLocal::ForegroundUpdate( int current44kHzTime ) {
    Sys_Printf("void idSoundWorldLocal::ForegroundUpdate( int current44kHzTime )\r\n");
}


/*
===================
idSoundWorldLocal::OffsetSoundTime
===================
*/
void idSoundWorldLocal::OffsetSoundTime( int offset44kHz ) {
    Sys_Printf("void idSoundWorldLocal::OffsetSoundTime( int offset44kHz )\r\n");
}


/*
===================
idSoundWorldLocal::WriteToSaveGame
===================
*/
void idSoundWorldLocal::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void idSoundWorldLocal::WriteToSaveGame( idFile *savefile )\r\n");
}


/*
 ===================
 idSoundWorldLocal::WriteToSaveGameSoundShaderParams
 ===================
 */
void idSoundWorldLocal::WriteToSaveGameSoundShaderParams( idFile *saveGame, soundShaderParms_t *params ) {
    Sys_Printf("void idSoundWorldLocal::WriteToSaveGameSoundShaderParams( idFile *saveGame, soundShaderParms_t *params )\r\n");
}


/*
 ===================
 idSoundWorldLocal::WriteToSaveGameSoundChannel
 ===================
 */
void idSoundWorldLocal::WriteToSaveGameSoundChannel( idFile *saveGame, idSoundChannel *ch ) {
    Sys_Printf("void idSoundWorldLocal::WriteToSaveGameSoundChannel( idFile *saveGame, idSoundChannel *ch )\r\n");
}


/*
===================
idSoundWorldLocal::ReadFromSaveGame
===================
*/
void idSoundWorldLocal::ReadFromSaveGame( idFile *savefile ) {
    Sys_Printf("void idSoundWorldLocal::ReadFromSaveGame( idFile *savefile )\r\n");
}


/*
 ===================
 idSoundWorldLocal::ReadFromSaveGameSoundShaderParams
 ===================
 */
void idSoundWorldLocal::ReadFromSaveGameSoundShaderParams( idFile *saveGame, soundShaderParms_t *params ) {
    Sys_Printf("void idSoundWorldLocal::ReadFromSaveGameSoundShaderParams( idFile *saveGame, soundShaderParms_t *params )\r\n");
}


/*
 ===================
 idSoundWorldLocal::ReadFromSaveGameSoundChannel
 ===================
 */
void idSoundWorldLocal::ReadFromSaveGameSoundChannel( idFile *saveGame, idSoundChannel *ch ) {
    Sys_Printf("void idSoundWorldLocal::ReadFromSaveGameSoundChannel( idFile *saveGame, idSoundChannel *ch )\r\n");
}


/*
===================
idSoundWorldLocal::EmitterForIndex
===================
*/
idSoundEmitter	*idSoundWorldLocal::EmitterForIndex( int index ) {
    Sys_Printf("idSoundEmitter*idSoundWorldLocal::EmitterForIndex( int index )\r\n");
    return NULL;
}


/*
===============
idSoundWorldLocal::StopAllSounds

  this is called from the main thread
===============
*/
void idSoundWorldLocal::StopAllSounds() {
    Sys_Printf("void idSoundWorldLocal::StopAllSounds()\r\n");
}


/*
===============
idSoundWorldLocal::Pause
===============
*/
void idSoundWorldLocal::Pause( void ) {
    Sys_Printf("void idSoundWorldLocal::Pause( void )\r\n");
}


/*
===============
idSoundWorldLocal::UnPause
===============
*/
void idSoundWorldLocal::UnPause( void ) {
    Sys_Printf("void idSoundWorldLocal::UnPause( void )\r\n");
}


/*
===============
idSoundWorldLocal::IsPaused
===============
*/
bool idSoundWorldLocal::IsPaused( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSoundWorldLocal::IsPaused( void )\r\n");
    return retVal;
}


/*
===============
idSoundWorldLocal::PlayShaderDirectly

start a music track

  this is called from the main thread
===============
*/
void idSoundWorldLocal::PlayShaderDirectly( const char *shaderName, int channel ) {
    Sys_Printf("void idSoundWorldLocal::PlayShaderDirectly( const char *shaderName, int channel )\r\n");
}


/*
===============
idSoundWorldLocal::CalcEars

Determine the volumes from each speaker for a given sound emitter
===============
*/
void idSoundWorldLocal::CalcEars( int numSpeakers, idVec3 spatializedOrigin, idVec3 listenerPos,
								 idMat3 listenerAxis, float ears[6], float spatialize ) {
    Sys_Printf("void idSoundWorldLocal::CalcEars( int numSpeakers, idVec3 spatializedOrigin, idVec3 listenerPos, idMat3 listenerAxis, float ears[6], float spatialize )\r\n");
}


/*
===============
idSoundWorldLocal::AddChannelContribution

Adds the contribution of a single sound channel to finalMixBuffer
this is called from the async thread

Mixes MIXBUFFER_SAMPLES samples starting at current44kHz sample time into
finalMixBuffer
===============
*/
void idSoundWorldLocal::AddChannelContribution( idSoundEmitterLocal *sound, idSoundChannel *chan,
				   int current44kHz, int numSpeakers, float *finalMixBuffer ) {
    Sys_Printf("void idSoundWorldLocal::AddChannelContribution( idSoundEmitterLocal *sound, idSoundChannel *chan, int current44kHz, int numSpeakers, float *finalMixBuffer )\r\n");
}


/*
===============
idSoundWorldLocal::FindAmplitude

  this is called from the main thread

  if listenerPosition is NULL, this is being used for shader parameters,
  like flashing lights and glows based on sound level.  Otherwise, it is being used for
  the screen-shake on a player.

  This doesn't do the portal-occlusion currently, because it would have to reset all the defs
  which would be problematic in multiplayer
===============
*/
float idSoundWorldLocal::FindAmplitude( idSoundEmitterLocal *sound, const int localTime, const idVec3 *listenerPosition, 
									   const s_channelType channel, bool shakesOnly ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idSoundWorldLocal::FindAmplitude( idSoundEmitterLocal *sound, const int localTime, const idVec3 *listenerPosition, const s_channelType channel, bool shakesOnly )\r\n");
    return retVal;
}


/*
=================
idSoundWorldLocal::FadeSoundClasses

fade all sounds in the world with a given shader soundClass
to is in Db (sigh), over is in seconds
=================
*/
void	idSoundWorldLocal::FadeSoundClasses( const int soundClass, const float to, const float over ) {
    Sys_Printf("voididSoundWorldLocal::FadeSoundClasses( const int soundClass, const float to, const float over )\r\n");
}


/*
=================
idSoundWorldLocal::SetSlowmo
=================
*/
void idSoundWorldLocal::SetSlowmo( bool active ) {
    Sys_Printf("void idSoundWorldLocal::SetSlowmo( bool active )\r\n");
}


/*
=================
idSoundWorldLocal::SetSlowmoSpeed
=================
*/
void idSoundWorldLocal::SetSlowmoSpeed( float speed ) {
    Sys_Printf("void idSoundWorldLocal::SetSlowmoSpeed( float speed )\r\n");
}


/*
=================
idSoundWorldLocal::SetEnviroSuit
=================
*/
void idSoundWorldLocal::SetEnviroSuit( bool active ) {
    Sys_Printf("void idSoundWorldLocal::SetEnviroSuit( bool active )\r\n");
}

