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
===================
idSoundFade::Clear
===================
*/
void idSoundFade::Clear() {
    Sys_Printf("void idSoundFade::Clear()\r\n");
}


/*
===================
idSoundFade::FadeDbAt44kHz
===================
*/
float idSoundFade::FadeDbAt44kHz( int current44kHz ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idSoundFade::FadeDbAt44kHz( int current44kHz )\r\n");
    return retVal;
}


//========================================================================


/*
=======================
GeneratePermutedList

Fills in elements[0] .. elements[numElements-1] with a permutation of
0 .. numElements-1 based on the permute parameter

numElements == 3
maxPermute = 6
permute 0 = 012
permute 1 = 021
permute 2 = 102
permute 3 = 120
permute 4 = 201
permute 5 = 210
=======================
*/
void PermuteList_r( int *list, int listLength, int permute, int maxPermute ) {
    Sys_Printf("void PermuteList_r( int *list, int listLength, int permute, int maxPermute )\r\n");
}


int	Factorial( int val ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intFactorial( int val )\r\n");
    return retVal;
}


void GeneratePermutedList( int *list, int listLength, int permute ) {
    Sys_Printf("void GeneratePermutedList( int *list, int listLength, int permute )\r\n");
}


void TestPermutations( void ) {
    Sys_Printf("void TestPermutations( void )\r\n");
}


//=====================================================================================

/*
===================
idSoundChannel::idSoundChannel
===================
*/
idSoundChannel::idSoundChannel( void ) {
	decoder = NULL;
	Clear();
}

/*
===================
idSoundChannel::~idSoundChannel
===================
*/
idSoundChannel::~idSoundChannel( void ) {
	Clear();
}

/*
===================
idSoundChannel::Clear
===================
*/
void idSoundChannel::Clear( void ) {
    Sys_Printf("void idSoundChannel::Clear( void )\r\n");
}


/*
===================
idSoundChannel::Start
===================
*/
void idSoundChannel::Start( void ) {
    Sys_Printf("void idSoundChannel::Start( void )\r\n");
}


/*
===================
idSoundChannel::Stop
===================
*/
void idSoundChannel::Stop( void ) {
    Sys_Printf("void idSoundChannel::Stop( void )\r\n");
}


/*
===================
idSoundChannel::ALStop
===================
*/
void idSoundChannel::ALStop( void ) {
    Sys_Printf("void idSoundChannel::ALStop( void )\r\n");
}


/*
===================
idSoundChannel::GatherChannelSamples

Will always return 44kHz samples for the given range, even if it deeply looped or
out of the range of the unlooped samples.  Handles looping between multiple different
samples and leadins
===================
*/
void idSoundChannel::GatherChannelSamples( int sampleOffset44k, int sampleCount44k, float *dest ) const {
    Sys_Printf("void idSoundChannel::GatherChannelSamples( int sampleOffset44k, int sampleCount44k, float *dest )\r\n");
}



//=====================================================================================

/*
===============
idSoundEmitterLocal::idSoundEmitterLocal
  
===============
*/
idSoundEmitterLocal::idSoundEmitterLocal( void ) {	
	soundWorld = NULL;
	Clear();
}

/*
===============
idSoundEmitterLocal::~idSoundEmitterLocal
===============
*/
idSoundEmitterLocal::~idSoundEmitterLocal( void ) {
	Clear();
}

/*
===============
idSoundEmitterLocal::Clear
===============
*/
void idSoundEmitterLocal::Clear( void ) {
    Sys_Printf("void idSoundEmitterLocal::Clear( void )\r\n");
}


/*
==================
idSoundEmitterLocal::OverrideParms
==================
*/
void idSoundEmitterLocal::OverrideParms( const soundShaderParms_t *base, 
									  const soundShaderParms_t *over, soundShaderParms_t *out ) {
    Sys_Printf("void idSoundEmitterLocal::OverrideParms( const soundShaderParms_t *base, const soundShaderParms_t *over, soundShaderParms_t *out )\r\n");
}


/*
==================
idSoundEmitterLocal::CheckForCompletion

Checks to see if all the channels have completed, clearing the playing flag if necessary.
Sets the playing and shakes bools.
==================
*/
void idSoundEmitterLocal::CheckForCompletion( int current44kHzTime ) {
    Sys_Printf("void idSoundEmitterLocal::CheckForCompletion( int current44kHzTime )\r\n");
}


/*
===================
idSoundEmitterLocal::Spatialize

Called once each sound frame by the main thread from idSoundWorldLocal::PlaceOrigin
===================
*/
void idSoundEmitterLocal::Spatialize( idVec3 listenerPos, int listenerArea, idRenderWorld *rw ) {
    Sys_Printf("void idSoundEmitterLocal::Spatialize( idVec3 listenerPos, int listenerArea, idRenderWorld *rw )\r\n");
}


/*
===========================================================================================

PUBLIC FUNCTIONS

===========================================================================================
*/

/*
=====================
idSoundEmitterLocal::UpdateEmitter
=====================
*/
void idSoundEmitterLocal::UpdateEmitter( const idVec3 &origin, int listenerId, const soundShaderParms_t *parms ) {
    Sys_Printf("void idSoundEmitterLocal::UpdateEmitter( const idVec3 &origin, int listenerId, const soundShaderParms_t *parms )\r\n");
}


/*
=====================
idSoundEmitterLocal::Free

They are never truly freed, just marked so they can be reused by the soundWorld
=====================
*/
void idSoundEmitterLocal::Free( bool immediate ) {
    Sys_Printf("void idSoundEmitterLocal::Free( bool immediate )\r\n");
}


/*
=====================
idSoundEmitterLocal::StartSound

returns the length of the started sound in msec
=====================
*/
int idSoundEmitterLocal::StartSound( const idSoundShader *shader, const s_channelType channel, float diversity, int soundShaderFlags, bool allowSlow ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSoundEmitterLocal::StartSound( const idSoundShader *shader, const s_channelType channel, float diversity, int soundShaderFlags, bool allowSlow )\r\n");
    return retVal;
}


/*
===================
idSoundEmitterLocal::ModifySound
===================
*/
void idSoundEmitterLocal::ModifySound( const s_channelType channel, const soundShaderParms_t *parms ) {
    Sys_Printf("void idSoundEmitterLocal::ModifySound( const s_channelType channel, const soundShaderParms_t *parms )\r\n");
}


/*
===================
idSoundEmitterLocal::StopSound

can pass SCHANNEL_ANY
===================
*/
void idSoundEmitterLocal::StopSound( const s_channelType channel ) {
    Sys_Printf("void idSoundEmitterLocal::StopSound( const s_channelType channel )\r\n");
}


/*
===================
idSoundEmitterLocal::FadeSound

to is in Db (sigh), over is in seconds
===================
*/
void idSoundEmitterLocal::FadeSound( const s_channelType channel, float to, float over ) {
    Sys_Printf("void idSoundEmitterLocal::FadeSound( const s_channelType channel, float to, float over )\r\n");
}


/*
===================
idSoundEmitterLocal::CurrentlyPlaying
===================
*/
bool idSoundEmitterLocal::CurrentlyPlaying( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSoundEmitterLocal::CurrentlyPlaying( void )\r\n");
    return retVal;
}


/*
===================
idSoundEmitterLocal::Index
===================
*/
int	idSoundEmitterLocal::Index( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidSoundEmitterLocal::Index( void )\r\n");
    return retVal;
}


/*
===================
idSoundEmitterLocal::CurrentAmplitude

this is called from the main thread by the material shader system
to allow lights and surface flares to vary with the sound amplitude
===================
*/
float idSoundEmitterLocal::CurrentAmplitude( void ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idSoundEmitterLocal::CurrentAmplitude( void )\r\n");
    return retVal;
}


/*
===================
idSoundEmitterLocal::GetSlowChannel
===================
*/
idSlowChannel idSoundEmitterLocal::GetSlowChannel( const idSoundChannel *chan ) {
    idSlowChannel retVal;
    memset(&retVal, 0, sizeof(idSlowChannel));
    Sys_Printf("idSlowChannel idSoundEmitterLocal::GetSlowChannel( const idSoundChannel *chan )\r\n");
    return retVal;
}


/*
===================
idSoundEmitterLocal::SetSlowChannel
===================
*/
void idSoundEmitterLocal::SetSlowChannel( const idSoundChannel *chan, idSlowChannel slow ) {
    Sys_Printf("void idSoundEmitterLocal::SetSlowChannel( const idSoundChannel *chan, idSlowChannel slow )\r\n");
}


/*
===================
idSoundEmitterLocal::ResetSlowChannel
===================
*/
void idSoundEmitterLocal::ResetSlowChannel( const idSoundChannel *chan ) {
    Sys_Printf("void idSoundEmitterLocal::ResetSlowChannel( const idSoundChannel *chan )\r\n");
}


/*
===================
idSlowChannel::Reset
===================
*/
void idSlowChannel::Reset() {
    Sys_Printf("void idSlowChannel::Reset()\r\n");
}


/*
===================
idSlowChannel::AttachSoundChannel
===================
*/
void idSlowChannel::AttachSoundChannel( const idSoundChannel *chan ) {
    Sys_Printf("void idSlowChannel::AttachSoundChannel( const idSoundChannel *chan )\r\n");
}


/*
===================
idSlowChannel::GetSlowmoSpeed
===================
*/
float idSlowChannel::GetSlowmoSpeed() {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idSlowChannel::GetSlowmoSpeed()\r\n");
    return retVal;
}


/*
===================
idSlowChannel::GenerateSlowChannel
===================
*/
void idSlowChannel::GenerateSlowChannel( FracTime& playPos, int sampleCount44k, float* finalBuffer ) {
    Sys_Printf("void idSlowChannel::GenerateSlowChannel( FracTime& playPos, int sampleCount44k, float* finalBuffer )\r\n");
}


/*
===================
idSlowChannel::GatherChannelSamples
===================
*/
void idSlowChannel::GatherChannelSamples( int sampleOffset44k, int sampleCount44k, float *dest ) {
    Sys_Printf("void idSlowChannel::GatherChannelSamples( int sampleOffset44k, int sampleCount44k, float *dest )\r\n");
}

