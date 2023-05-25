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
/*
=============================================================================

  MODEL TESTING

Model viewing can begin with either "testmodel <modelname>"

The names must be the full pathname after the basedir, like 
"models/weapons/v_launch/tris.md3" or "players/male/tris.md3"

Extension will default to ".ase" if not specified.

Testmodel will create a fake entity 100 units in front of the current view
position, directly facing the viewer.  It will remain immobile, so you can
move around it to view it from different angles.

  g_testModelRotate
  g_testModelAnimate
  g_testModelBlend

=============================================================================
*/

#include "../../idlib/precompiled.h"
#pragma hdrstop

#include "../Game_local.h"

CLASS_DECLARATION( idAnimatedEntity, idTestModel )
	EVENT( EV_FootstepLeft,			idTestModel::Event_Footstep )
	EVENT( EV_FootstepRight,		idTestModel::Event_Footstep )	
END_CLASS

/*
================
idTestModel::idTestModel
================
*/
idTestModel::idTestModel() {
	head = NULL;
	headAnimator = NULL;
	anim = 0;
	headAnim = 0;
	starttime = 0;
	animtime = 0;
	mode = 0;
	frame = 0;
}

/*
================
idTestModel::Save
================
*/
void idTestModel::Save( idSaveGame *savefile ) {
    Sys_Printf("void idTestModel::Save( idSaveGame *savefile )\r\n");
}


/*
================
idTestModel::Restore
================
*/
void idTestModel::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idTestModel::Restore( idRestoreGame *savefile )\r\n");
}


/*
================
idTestModel::Spawn
================
*/
void idTestModel::Spawn( void ) {
    Sys_Printf("void idTestModel::Spawn( void )\r\n");
}


/*
================
idTestModel::~idTestModel
================
*/
idTestModel::~idTestModel() {
	StopSound( SND_CHANNEL_ANY, false );
	if ( renderEntity.hModel ) {
		gameLocal.Printf( "Removing testmodel %s\n", renderEntity.hModel->Name() );
	} else {
		gameLocal.Printf( "Removing testmodel\n" );
	}
	if ( gameLocal.testmodel == this ) {
		gameLocal.testmodel = NULL;
	}
	if ( head.GetEntity() ) {
		head.GetEntity()->StopSound( SND_CHANNEL_ANY, false );
		head.GetEntity()->PostEventMS( &EV_Remove, 0 );
	}
}

/*
===============
idTestModel::Event_Footstep
===============
*/
void idTestModel::Event_Footstep( void ) {
    Sys_Printf("void idTestModel::Event_Footstep( void )\r\n");
}


/*
================
idTestModel::ShouldConstructScriptObjectAtSpawn

Called during idEntity::Spawn to see if it should construct the script object or not.
Overridden by subclasses that need to spawn the script object themselves.
================
*/
bool idTestModel::ShouldConstructScriptObjectAtSpawn( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idTestModel::ShouldConstructScriptObjectAtSpawn( void )\r\n");
    return retVal;
}


/*
================
idTestModel::Think
================
*/
void idTestModel::Think( void ) {
    Sys_Printf("void idTestModel::Think( void )\r\n");
}


/*
================
idTestModel::NextAnim
================
*/
void idTestModel::NextAnim( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::NextAnim( const idCmdArgs &args )\r\n");
}


/*
================
idTestModel::PrevAnim
================
*/
void idTestModel::PrevAnim( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::PrevAnim( const idCmdArgs &args )\r\n");
}


/*
================
idTestModel::NextFrame
================
*/
void idTestModel::NextFrame( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::NextFrame( const idCmdArgs &args )\r\n");
}


/*
================
idTestModel::PrevFrame
================
*/
void idTestModel::PrevFrame( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::PrevFrame( const idCmdArgs &args )\r\n");
}


/*
================
idTestModel::TestAnim
================
*/
void idTestModel::TestAnim( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::TestAnim( const idCmdArgs &args )\r\n");
}


/*
=====================
idTestModel::BlendAnim
=====================
*/
void idTestModel::BlendAnim( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::BlendAnim( const idCmdArgs &args )\r\n");
}


/***********************************************************************

	Testmodel console commands

***********************************************************************/

/*
=================
idTestModel::KeepTestModel_f

Makes the current test model permanent, allowing you to place
multiple test models
=================
*/
void idTestModel::KeepTestModel_f( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::KeepTestModel_f( const idCmdArgs &args )\r\n");
}


/*
=================
idTestModel::TestSkin_f

Sets a skin on an existing testModel
=================
*/
void idTestModel::TestSkin_f( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::TestSkin_f( const idCmdArgs &args )\r\n");
}


/*
=================
idTestModel::TestShaderParm_f

Sets a shaderParm on an existing testModel
=================
*/
void idTestModel::TestShaderParm_f( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::TestShaderParm_f( const idCmdArgs &args )\r\n");
}


/*
=================
idTestModel::TestModel_f

Creates a static modelDef in front of the current position, which
can then be moved around
=================
*/
void idTestModel::TestModel_f( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::TestModel_f( const idCmdArgs &args )\r\n");
}


/*
=====================
idTestModel::ArgCompletion_TestModel
=====================
*/
void idTestModel::ArgCompletion_TestModel( const idCmdArgs &args, void(*callback)( const char *s ) ) {
	int i, num;

	num = declManager->GetNumDecls( DECL_ENTITYDEF );
	for ( i = 0; i < num; i++ ) {
		callback( idStr( args.Argv( 0 ) ) + " " + declManager->DeclByIndex( DECL_ENTITYDEF, i , false )->GetName() );
	}
	num = declManager->GetNumDecls( DECL_MODELDEF );
	for ( i = 0; i < num; i++ ) {
		callback( idStr( args.Argv( 0 ) ) + " " + declManager->DeclByIndex( DECL_MODELDEF, i , false )->GetName() );
	}
	cmdSystem->ArgCompletion_FolderExtension( args, callback, "models/", false, ".lwo", ".ase", ".md5mesh", ".ma", ".mb", NULL );
}

/*
=====================
idTestModel::TestParticleStopTime_f
=====================
*/
void idTestModel::TestParticleStopTime_f( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::TestParticleStopTime_f( const idCmdArgs &args )\r\n");
}


/*
=====================
idTestModel::TestAnim_f
=====================
*/
void idTestModel::TestAnim_f( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::TestAnim_f( const idCmdArgs &args )\r\n");
}



/*
=====================
idTestModel::ArgCompletion_TestAnim
=====================
*/
void idTestModel::ArgCompletion_TestAnim( const idCmdArgs &args, void(*callback)( const char *s ) ) {
	if ( gameLocal.testmodel ) {
		idAnimator *animator = gameLocal.testmodel->GetAnimator();
		for( int i = 0; i < animator->NumAnims(); i++ ) {
			callback( va( "%s %s", args.Argv( 0 ), animator->AnimFullName( i ) ) );
		}
	}
}

/*
=====================
idTestModel::TestBlend_f
=====================
*/
void idTestModel::TestBlend_f( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::TestBlend_f( const idCmdArgs &args )\r\n");
}


/*
=====================
idTestModel::TestModelNextAnim_f
=====================
*/
void idTestModel::TestModelNextAnim_f( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::TestModelNextAnim_f( const idCmdArgs &args )\r\n");
}


/*
=====================
idTestModel::TestModelPrevAnim_f
=====================
*/
void idTestModel::TestModelPrevAnim_f( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::TestModelPrevAnim_f( const idCmdArgs &args )\r\n");
}


/*
=====================
idTestModel::TestModelNextFrame_f
=====================
*/
void idTestModel::TestModelNextFrame_f( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::TestModelNextFrame_f( const idCmdArgs &args )\r\n");
}


/*
=====================
idTestModel::TestModelPrevFrame_f
=====================
*/
void idTestModel::TestModelPrevFrame_f( const idCmdArgs &args ) {
    Sys_Printf("void idTestModel::TestModelPrevFrame_f( const idCmdArgs &args )\r\n");
}

