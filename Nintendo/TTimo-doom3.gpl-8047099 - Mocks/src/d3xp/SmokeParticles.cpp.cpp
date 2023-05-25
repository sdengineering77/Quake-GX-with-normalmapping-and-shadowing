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

#include "Game_local.h"

static const char *smokeParticle_SnapshotName = "_SmokeParticle_Snapshot_";

/*
================
idSmokeParticles::idSmokeParticles
================
*/
idSmokeParticles::idSmokeParticles( void ) {
	initialized = false;
	memset( &renderEntity, 0, sizeof( renderEntity ) );
	renderEntityHandle = -1;
	memset( smokes, 0, sizeof( smokes ) );
	freeSmokes = NULL;
	numActiveSmokes = 0;
	currentParticleTime = -1;
}

/*
================
idSmokeParticles::Init
================
*/
void idSmokeParticles::Init( void ) {
    Sys_Printf("void idSmokeParticles::Init( void )\r\n");
}


/*
================
idSmokeParticles::Shutdown
================
*/
void idSmokeParticles::Shutdown( void ) {
    Sys_Printf("void idSmokeParticles::Shutdown( void )\r\n");
}


/*
================
idSmokeParticles::FreeSmokes
================
*/
void idSmokeParticles::FreeSmokes( void ) {
    Sys_Printf("void idSmokeParticles::FreeSmokes( void )\r\n");
}


/*
================
idSmokeParticles::EmitSmoke

Called by game code to drop another particle into the list
================
*/
bool idSmokeParticles::EmitSmoke( const idDeclParticle *smoke, const int systemStartTime, const float diversity, const idVec3 &origin, const idMat3 &axis, int timeGroup /*_D3XP*/ ) {
	bool	continues = false;
#ifdef _D3XP
	SetTimeState ts( timeGroup );
#endif

	if ( !smoke ) {
		return false;
	}

	if ( !gameLocal.isNewFrame ) {
		return false;
	}

	// dedicated doesn't smoke. No UpdateRenderEntity, so they would not be freed
	if ( gameLocal.localClientNum < 0 ) {
    freed retVal;
    memset(&retVal, 0, sizeof(freed));
    Sys_Printf("freedif ( gameLocal.localClientNum < 0 )\r\n");
    return retVal;
}


	assert( gameLocal.time == 0 || systemStartTime <= gameLocal.time );
	if ( systemStartTime > gameLocal.time ) {
		return false;
	}

	idRandom steppingRandom( 0xffff * diversity );

	// for each stage in the smoke that is still emitting particles, emit a new singleSmoke_t
	for ( int stageNum = 0; stageNum < smoke->stages.Num(); stageNum++ ) {
		const idParticleStage *stage = smoke->stages[stageNum];

		if ( !stage->cycleMsec ) {
			continue;
		}

		if ( !stage->material ) {
			continue;
		}

		if ( stage->particleLife <= 0 ) {
			continue;
		}

		// see how many particles we should emit this tic
		// FIXME: 			smoke.privateStartTime += stage->timeOffset;
		int		finalParticleTime = stage->cycleMsec * stage->spawnBunching;
		int		deltaMsec = gameLocal.time - systemStartTime;

		int		nowCount, prevCount;
		if ( finalParticleTime == 0 ) {
			// if spawnBunching is 0, they will all come out at once
			if ( gameLocal.time == systemStartTime ) {
				prevCount = -1;
				nowCount = stage->totalParticles-1;
			} else {
				prevCount = stage->totalParticles;
			}
		} else {
			nowCount = floor( ( (float)deltaMsec / finalParticleTime ) * stage->totalParticles );
			if ( nowCount >= stage->totalParticles ) {
				nowCount = stage->totalParticles-1;
			}
			prevCount = floor( ((float)( deltaMsec - gameLocal.msec /*_D3XP - FIX - was USERCMD_MSEC*/ ) / finalParticleTime) * stage->totalParticles );
			if ( prevCount < -1 ) {
				prevCount = -1;
			}
		}

		if ( prevCount >= stage->totalParticles ) {
			// no more particles from this stage
			continue;
		}

		if ( nowCount < stage->totalParticles-1 ) {
			// the system will need to emit particles next frame as well
			continues = true;
		}

		// find an activeSmokeStage that matches this
		activeSmokeStage_t	*active;
		int i;
		for ( i = 0 ; i < activeStages.Num() ; i++ ) {
			active = &activeStages[i];
			if ( active->stage == stage ) {
				break;
			}
		}
		if ( i == activeStages.Num() ) {
			// add a new one
			activeSmokeStage_t	newActive;

			newActive.smokes = NULL;
			newActive.stage = stage;
			i = activeStages.Append( newActive );
			active = &activeStages[i];
		}

		// add all the required particles
		for ( prevCount++ ; prevCount <= nowCount ; prevCount++ ) {
			if ( !freeSmokes ) {
				gameLocal.Printf( "idSmokeParticles::EmitSmoke: no free smokes with %d active stages\n", activeStages.Num() );
				return true;
			}
			singleSmoke_t	*newSmoke = freeSmokes;
			freeSmokes = freeSmokes->next;
			numActiveSmokes++;

#ifdef _D3XP
			newSmoke->timeGroup = timeGroup;
#endif
			newSmoke->index = prevCount;
			newSmoke->axis = axis;
			newSmoke->origin = origin;
			newSmoke->random = steppingRandom;
			newSmoke->privateStartTime = systemStartTime + prevCount * finalParticleTime / stage->totalParticles;
			newSmoke->next = active->smokes;
			active->smokes = newSmoke;

			steppingRandom.RandomInt();	// advance the random
		}
	}

	return continues;
}

/*
================
idSmokeParticles::UpdateRenderEntity
================
*/
bool idSmokeParticles::UpdateRenderEntity( renderEntity_s *renderEntity, const renderView_t *renderView ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSmokeParticles::UpdateRenderEntity( renderEntity_s *renderEntity, const renderView_t *renderView )\r\n");
    return retVal;
}


/*
================
idSmokeParticles::ModelCallback
================
*/
bool idSmokeParticles::ModelCallback( renderEntity_s *renderEntity, const renderView_t *renderView ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSmokeParticles::ModelCallback( renderEntity_s *renderEntity, const renderView_t *renderView )\r\n");
    return retVal;
}

