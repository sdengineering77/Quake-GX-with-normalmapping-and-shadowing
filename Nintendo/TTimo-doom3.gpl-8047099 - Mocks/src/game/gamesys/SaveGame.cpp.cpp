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

#include "../Game_local.h"

#include "TypeInfo.h"

/*
Save game related helper classes.

Save games are implemented in two classes, idSaveGame and idRestoreGame, that implement write/read functions for 
common types.  They're passed in to each entity and object for them to archive themselves.  Each class
implements save/restore functions for it's own data.  When restoring, all the objects are instantiated,
then the restore function is called on each, superclass first, then subclasses.

Pointers are restored by saving out an object index for each unique object pointer and adding them to a list of
objects that are to be saved.  Restore instantiates all the objects in the list before calling the Restore function
on each object so that the pointers returned are valid.  No object's restore function should rely on any other objects
being fully instantiated until after the restore process is complete.  Post restore fixup should be done by posting
events with 0 delay.

The savegame header will have the Game Name, Version, Map Name, and Player Persistent Info.

Changes in version make savegames incompatible, and the game will start from the beginning of the level with
the player's persistent info.

Changes to classes that don't need to break compatibilty can use the build number as the savegame version.
Later versions are responsible for restoring from previous versions by ignoring any unused data and initializing
variables that weren't in previous versions with safe information.

At the head of the save game is enough information to restore the player to the beginning of the level should the
file be unloadable in some way (for example, due to script changes).
*/

/*
================
idSaveGame::idSaveGame()
================
*/
idSaveGame::idSaveGame( idFile *savefile ) {

	file = savefile;

	// Put NULL at the start of the list so we can skip over it.
	objects.Clear();
	objects.Append( NULL );
}

/*
================
idSaveGame::~idSaveGame()
================
*/
idSaveGame::~idSaveGame() {
	if ( objects.Num() ) {
		Close();
	}
}

/*
================
idSaveGame::Close
================
*/
void idSaveGame::Close( void ) {
    Sys_Printf("void idSaveGame::Close( void )\r\n");
}


/*
================
idSaveGame::WriteObjectList
================
*/
void idSaveGame::WriteObjectList( void ) {
    Sys_Printf("void idSaveGame::WriteObjectList( void )\r\n");
}


/*
================
idSaveGame::CallSave_r
================
*/
void idSaveGame::CallSave_r( const idTypeInfo *cls, const idClass *obj ) {
    Sys_Printf("void idSaveGame::CallSave_r( const idTypeInfo *cls, const idClass *obj )\r\n");
}


/*
================
idSaveGame::AddObject
================
*/
void idSaveGame::AddObject( const idClass *obj ) {
    Sys_Printf("void idSaveGame::AddObject( const idClass *obj )\r\n");
}


/*
================
idSaveGame::Write
================
*/
void idSaveGame::Write( const void *buffer, int len ) {
    Sys_Printf("void idSaveGame::Write( const void *buffer, int len )\r\n");
}


/*
================
idSaveGame::WriteInt
================
*/
void idSaveGame::WriteInt( const int value ) {
    Sys_Printf("void idSaveGame::WriteInt( const int value )\r\n");
}


/*
================
idSaveGame::WriteJoint
================
*/
void idSaveGame::WriteJoint( const jointHandle_t value ) {
    Sys_Printf("void idSaveGame::WriteJoint( const jointHandle_t value )\r\n");
}


/*
================
idSaveGame::WriteShort
================
*/
void idSaveGame::WriteShort( const short value ) {
    Sys_Printf("void idSaveGame::WriteShort( const short value )\r\n");
}


/*
================
idSaveGame::WriteByte
================
*/
void idSaveGame::WriteByte( const byte value ) {
    Sys_Printf("void idSaveGame::WriteByte( const byte value )\r\n");
}


/*
================
idSaveGame::WriteSignedChar
================
*/
void idSaveGame::WriteSignedChar( const signed char value ) {
    Sys_Printf("void idSaveGame::WriteSignedChar( const signed char value )\r\n");
}


/*
================
idSaveGame::WriteFloat
================
*/
void idSaveGame::WriteFloat( const float value ) {
    Sys_Printf("void idSaveGame::WriteFloat( const float value )\r\n");
}


/*
================
idSaveGame::WriteBool
================
*/
void idSaveGame::WriteBool( const bool value ) {
    Sys_Printf("void idSaveGame::WriteBool( const bool value )\r\n");
}


/*
================
idSaveGame::WriteString
================
*/  
void idSaveGame::WriteString( const char *string ) {
    Sys_Printf("void idSaveGame::WriteString( const char *string )\r\n");
}


/*
================
idSaveGame::WriteVec2
================
*/
void idSaveGame::WriteVec2( const idVec2 &vec ) {
    Sys_Printf("void idSaveGame::WriteVec2( const idVec2 &vec )\r\n");
}


/*
================
idSaveGame::WriteVec3
================
*/
void idSaveGame::WriteVec3( const idVec3 &vec ) {
    Sys_Printf("void idSaveGame::WriteVec3( const idVec3 &vec )\r\n");
}


/*
================
idSaveGame::WriteVec4
================
*/
void idSaveGame::WriteVec4( const idVec4 &vec ) {
    Sys_Printf("void idSaveGame::WriteVec4( const idVec4 &vec )\r\n");
}


/*
================
idSaveGame::WriteVec6
================
*/
void idSaveGame::WriteVec6( const idVec6 &vec ) {
    Sys_Printf("void idSaveGame::WriteVec6( const idVec6 &vec )\r\n");
}


/*
================
idSaveGame::WriteBounds
================
*/
void idSaveGame::WriteBounds( const idBounds &bounds ) {
    Sys_Printf("void idSaveGame::WriteBounds( const idBounds &bounds )\r\n");
}


/*
================
idSaveGame::WriteBounds
================
*/
void idSaveGame::WriteWinding( const idWinding &w )
{
    Sys_Printf("void idSaveGame::WriteWinding( const idWinding &w )\r\n");
}



/*
================
idSaveGame::WriteMat3
================
*/
void idSaveGame::WriteMat3( const idMat3 &mat ) {
    Sys_Printf("void idSaveGame::WriteMat3( const idMat3 &mat )\r\n");
}


/*
================
idSaveGame::WriteAngles
================
*/
void idSaveGame::WriteAngles( const idAngles &angles ) {
    Sys_Printf("void idSaveGame::WriteAngles( const idAngles &angles )\r\n");
}


/*
================
idSaveGame::WriteObject
================
*/
void idSaveGame::WriteObject( const idClass *obj ) {
    Sys_Printf("void idSaveGame::WriteObject( const idClass *obj )\r\n");
}


/*
================
idSaveGame::WriteStaticObject
================
*/
void idSaveGame::WriteStaticObject( const idClass &obj ) {
    Sys_Printf("void idSaveGame::WriteStaticObject( const idClass &obj )\r\n");
}


/*
================
idSaveGame::WriteDict
================
*/
void idSaveGame::WriteDict( const idDict *dict ) {
    Sys_Printf("void idSaveGame::WriteDict( const idDict *dict )\r\n");
}


/*
================
idSaveGame::WriteMaterial
================
*/
void idSaveGame::WriteMaterial( const idMaterial *material ) {
    Sys_Printf("void idSaveGame::WriteMaterial( const idMaterial *material )\r\n");
}


/*
================
idSaveGame::WriteSkin
================
*/
void idSaveGame::WriteSkin( const idDeclSkin *skin ) {
    Sys_Printf("void idSaveGame::WriteSkin( const idDeclSkin *skin )\r\n");
}


/*
================
idSaveGame::WriteParticle
================
*/
void idSaveGame::WriteParticle( const idDeclParticle *particle ) {
    Sys_Printf("void idSaveGame::WriteParticle( const idDeclParticle *particle )\r\n");
}


/*
================
idSaveGame::WriteFX
================
*/
void idSaveGame::WriteFX( const idDeclFX *fx ) {
    Sys_Printf("void idSaveGame::WriteFX( const idDeclFX *fx )\r\n");
}


/*
================
idSaveGame::WriteModelDef
================
*/
void idSaveGame::WriteModelDef( const idDeclModelDef *modelDef ) {
    Sys_Printf("void idSaveGame::WriteModelDef( const idDeclModelDef *modelDef )\r\n");
}


/*
================
idSaveGame::WriteSoundShader
================
*/
void idSaveGame::WriteSoundShader( const idSoundShader *shader ) {
    Sys_Printf("void idSaveGame::WriteSoundShader( const idSoundShader *shader )\r\n");
}


/*
================
idSaveGame::WriteModel
================
*/
void idSaveGame::WriteModel( const idRenderModel *model ) {
    Sys_Printf("void idSaveGame::WriteModel( const idRenderModel *model )\r\n");
}


/*
================
idSaveGame::WriteUserInterface
================
*/
void idSaveGame::WriteUserInterface( const idUserInterface *ui, bool unique ) {
    Sys_Printf("void idSaveGame::WriteUserInterface( const idUserInterface *ui, bool unique )\r\n");
}


/*
================
idSaveGame::WriteRenderEntity
================
*/
void idSaveGame::WriteRenderEntity( const renderEntity_t &renderEntity ) {
    Sys_Printf("void idSaveGame::WriteRenderEntity( const renderEntity_t &renderEntity )\r\n");
}


/*
================
idSaveGame::WriteRenderLight
================
*/
void idSaveGame::WriteRenderLight( const renderLight_t &renderLight ) {
    Sys_Printf("void idSaveGame::WriteRenderLight( const renderLight_t &renderLight )\r\n");
}


/*
================
idSaveGame::WriteRefSound
================
*/
void idSaveGame::WriteRefSound( const refSound_t &refSound ) {
    Sys_Printf("void idSaveGame::WriteRefSound( const refSound_t &refSound )\r\n");
}


/*
================
idSaveGame::WriteRenderView
================
*/
void idSaveGame::WriteRenderView( const renderView_t &view ) {
    Sys_Printf("void idSaveGame::WriteRenderView( const renderView_t &view )\r\n");
}


/*
===================
idSaveGame::WriteUsercmd
===================
*/
void idSaveGame::WriteUsercmd( const usercmd_t &usercmd ) {
    Sys_Printf("void idSaveGame::WriteUsercmd( const usercmd_t &usercmd )\r\n");
}


/*
===================
idSaveGame::WriteContactInfo
===================
*/
void idSaveGame::WriteContactInfo( const contactInfo_t &contactInfo ) {
    Sys_Printf("void idSaveGame::WriteContactInfo( const contactInfo_t &contactInfo )\r\n");
}


/*
===================
idSaveGame::WriteTrace
===================
*/
void idSaveGame::WriteTrace( const trace_t &trace ) {
    Sys_Printf("void idSaveGame::WriteTrace( const trace_t &trace )\r\n");
}


/*
 ===================
 idRestoreGame::WriteTraceModel
 ===================
 */
void idSaveGame::WriteTraceModel( const idTraceModel &trace ) {
    Sys_Printf("void idSaveGame::WriteTraceModel( const idTraceModel &trace )\r\n");
}


/*
===================
idSaveGame::WriteClipModel
===================
*/
void idSaveGame::WriteClipModel( const idClipModel *clipModel ) {
    Sys_Printf("void idSaveGame::WriteClipModel( const idClipModel *clipModel )\r\n");
}


/*
===================
idSaveGame::WriteSoundCommands
===================
*/
void idSaveGame::WriteSoundCommands( void ) {
    Sys_Printf("void idSaveGame::WriteSoundCommands( void )\r\n");
}


/*
======================
idSaveGame::WriteBuildNumber
======================
*/
void idSaveGame::WriteBuildNumber( const int value ) {
    Sys_Printf("void idSaveGame::WriteBuildNumber( const int value )\r\n");
}


/***********************************************************************

	idRestoreGame
	
***********************************************************************/

/*
================
idRestoreGame::RestoreGame
================
*/
idRestoreGame::idRestoreGame( idFile *savefile ) {
	file = savefile;
}

/*
================
idRestoreGame::~idRestoreGame()
================
*/
idRestoreGame::~idRestoreGame() {
}

/*
================
void idRestoreGame::CreateObjects
================
*/
void idRestoreGame::CreateObjects( void ) {
    Sys_Printf("void idRestoreGame::CreateObjects( void )\r\n");
}


/*
================
void idRestoreGame::RestoreObjects
================
*/
void idRestoreGame::RestoreObjects( void ) {
    Sys_Printf("void idRestoreGame::RestoreObjects( void )\r\n");
}


/*
====================
void idRestoreGame::DeleteObjects
====================
*/
void idRestoreGame::DeleteObjects( void ) {
    Sys_Printf("void idRestoreGame::DeleteObjects( void )\r\n");
}


/*
================
idRestoreGame::Error
================
*/
void idRestoreGame::Error( const char *fmt, ... ) {
    Sys_Printf("void idRestoreGame::Error( const char *fmt, ... )\r\n");
}


/*
================
idRestoreGame::CallRestore_r
================
*/
void idRestoreGame::CallRestore_r( const idTypeInfo *cls, idClass *obj ) {
    Sys_Printf("void idRestoreGame::CallRestore_r( const idTypeInfo *cls, idClass *obj )\r\n");
}


/*
================
idRestoreGame::Read
================
*/
void idRestoreGame::Read( void *buffer, int len ) {
    Sys_Printf("void idRestoreGame::Read( void *buffer, int len )\r\n");
}


/*
================
idRestoreGame::ReadInt
================
*/
void idRestoreGame::ReadInt( int &value ) {
    Sys_Printf("void idRestoreGame::ReadInt( int &value )\r\n");
}


/*
================
idRestoreGame::ReadJoint
================
*/
void idRestoreGame::ReadJoint( jointHandle_t &value ) {
    Sys_Printf("void idRestoreGame::ReadJoint( jointHandle_t &value )\r\n");
}


/*
================
idRestoreGame::ReadShort
================
*/
void idRestoreGame::ReadShort( short &value ) {
    Sys_Printf("void idRestoreGame::ReadShort( short &value )\r\n");
}


/*
================
idRestoreGame::ReadByte
================
*/
void idRestoreGame::ReadByte( byte &value ) {
    Sys_Printf("void idRestoreGame::ReadByte( byte &value )\r\n");
}


/*
================
idRestoreGame::ReadSignedChar
================
*/
void idRestoreGame::ReadSignedChar( signed char &value ) {
    Sys_Printf("void idRestoreGame::ReadSignedChar( signed char &value )\r\n");
}


/*
================
idRestoreGame::ReadFloat
================
*/
void idRestoreGame::ReadFloat( float &value ) {
    Sys_Printf("void idRestoreGame::ReadFloat( float &value )\r\n");
}


/*
================
idRestoreGame::ReadBool
================
*/
void idRestoreGame::ReadBool( bool &value ) {
    Sys_Printf("void idRestoreGame::ReadBool( bool &value )\r\n");
}


/*
================
idRestoreGame::ReadString
================
*/
void idRestoreGame::ReadString( idStr &string ) {
    Sys_Printf("void idRestoreGame::ReadString( idStr &string )\r\n");
}


/*
================
idRestoreGame::ReadVec2
================
*/
void idRestoreGame::ReadVec2( idVec2 &vec ) {
    Sys_Printf("void idRestoreGame::ReadVec2( idVec2 &vec )\r\n");
}


/*
================
idRestoreGame::ReadVec3
================
*/
void idRestoreGame::ReadVec3( idVec3 &vec ) {
    Sys_Printf("void idRestoreGame::ReadVec3( idVec3 &vec )\r\n");
}


/*
================
idRestoreGame::ReadVec4
================
*/
void idRestoreGame::ReadVec4( idVec4 &vec ) {
    Sys_Printf("void idRestoreGame::ReadVec4( idVec4 &vec )\r\n");
}


/*
================
idRestoreGame::ReadVec6
================
*/
void idRestoreGame::ReadVec6( idVec6 &vec ) {
    Sys_Printf("void idRestoreGame::ReadVec6( idVec6 &vec )\r\n");
}


/*
================
idRestoreGame::ReadBounds
================
*/
void idRestoreGame::ReadBounds( idBounds &bounds ) {
    Sys_Printf("void idRestoreGame::ReadBounds( idBounds &bounds )\r\n");
}


/*
================
idRestoreGame::ReadWinding
================
*/
void idRestoreGame::ReadWinding( idWinding &w )
{
    Sys_Printf("void idRestoreGame::ReadWinding( idWinding &w )\r\n");
}


/*
================
idRestoreGame::ReadMat3
================
*/
void idRestoreGame::ReadMat3( idMat3 &mat ) {
    Sys_Printf("void idRestoreGame::ReadMat3( idMat3 &mat )\r\n");
}


/*
================
idRestoreGame::ReadAngles
================
*/
void idRestoreGame::ReadAngles( idAngles &angles ) {
    Sys_Printf("void idRestoreGame::ReadAngles( idAngles &angles )\r\n");
}


/*
================
idRestoreGame::ReadObject
================
*/
void idRestoreGame::ReadObject( idClass *&obj ) {
    Sys_Printf("void idRestoreGame::ReadObject( idClass *&obj )\r\n");
}


/*
================
idRestoreGame::ReadStaticObject
================
*/
void idRestoreGame::ReadStaticObject( idClass &obj ) {
    Sys_Printf("void idRestoreGame::ReadStaticObject( idClass &obj )\r\n");
}


/*
================
idRestoreGame::ReadDict
================
*/
void idRestoreGame::ReadDict( idDict *dict ) {
    Sys_Printf("void idRestoreGame::ReadDict( idDict *dict )\r\n");
}


/*
================
idRestoreGame::ReadMaterial
================
*/
void idRestoreGame::ReadMaterial( const idMaterial *&material ) {
    Sys_Printf("void idRestoreGame::ReadMaterial( const idMaterial *&material )\r\n");
}


/*
================
idRestoreGame::ReadSkin
================
*/
void idRestoreGame::ReadSkin( const idDeclSkin *&skin ) {
    Sys_Printf("void idRestoreGame::ReadSkin( const idDeclSkin *&skin )\r\n");
}


/*
================
idRestoreGame::ReadParticle
================
*/
void idRestoreGame::ReadParticle( const idDeclParticle *&particle ) {
    Sys_Printf("void idRestoreGame::ReadParticle( const idDeclParticle *&particle )\r\n");
}


/*
================
idRestoreGame::ReadFX
================
*/
void idRestoreGame::ReadFX( const idDeclFX *&fx ) {
    Sys_Printf("void idRestoreGame::ReadFX( const idDeclFX *&fx )\r\n");
}


/*
================
idRestoreGame::ReadSoundShader
================
*/
void idRestoreGame::ReadSoundShader( const idSoundShader *&shader ) {
    Sys_Printf("void idRestoreGame::ReadSoundShader( const idSoundShader *&shader )\r\n");
}


/*
================
idRestoreGame::ReadModelDef
================
*/
void idRestoreGame::ReadModelDef( const idDeclModelDef *&modelDef ) {
    Sys_Printf("void idRestoreGame::ReadModelDef( const idDeclModelDef *&modelDef )\r\n");
}


/*
================
idRestoreGame::ReadModel
================
*/
void idRestoreGame::ReadModel( idRenderModel *&model ) {
    Sys_Printf("void idRestoreGame::ReadModel( idRenderModel *&model )\r\n");
}


/*
================
idRestoreGame::ReadUserInterface
================
*/
void idRestoreGame::ReadUserInterface( idUserInterface *&ui ) {
    Sys_Printf("void idRestoreGame::ReadUserInterface( idUserInterface *&ui )\r\n");
}


/*
================
idRestoreGame::ReadRenderEntity
================
*/
void idRestoreGame::ReadRenderEntity( renderEntity_t &renderEntity ) {
    Sys_Printf("void idRestoreGame::ReadRenderEntity( renderEntity_t &renderEntity )\r\n");
}


/*
================
idRestoreGame::ReadRenderLight
================
*/
void idRestoreGame::ReadRenderLight( renderLight_t &renderLight ) {
    Sys_Printf("void idRestoreGame::ReadRenderLight( renderLight_t &renderLight )\r\n");
}


/*
================
idRestoreGame::ReadRefSound
================
*/
void idRestoreGame::ReadRefSound( refSound_t &refSound ) {
    Sys_Printf("void idRestoreGame::ReadRefSound( refSound_t &refSound )\r\n");
}


/*
================
idRestoreGame::ReadRenderView
================
*/
void idRestoreGame::ReadRenderView( renderView_t &view ) {
    Sys_Printf("void idRestoreGame::ReadRenderView( renderView_t &view )\r\n");
}


/*
=================
idRestoreGame::ReadUsercmd
=================
*/
void idRestoreGame::ReadUsercmd( usercmd_t &usercmd ) {
    Sys_Printf("void idRestoreGame::ReadUsercmd( usercmd_t &usercmd )\r\n");
}


/*
===================
idRestoreGame::ReadContactInfo
===================
*/
void idRestoreGame::ReadContactInfo( contactInfo_t &contactInfo ) {
    Sys_Printf("void idRestoreGame::ReadContactInfo( contactInfo_t &contactInfo )\r\n");
}


/*
===================
idRestoreGame::ReadTrace
===================
*/
void idRestoreGame::ReadTrace( trace_t &trace ) {
    Sys_Printf("void idRestoreGame::ReadTrace( trace_t &trace )\r\n");
}


/*
 ===================
 idRestoreGame::ReadTraceModel
 ===================
 */
void idRestoreGame::ReadTraceModel( idTraceModel &trace ) {
    Sys_Printf("void idRestoreGame::ReadTraceModel( idTraceModel &trace )\r\n");
}


/*
=====================
idRestoreGame::ReadClipModel
=====================
*/
void idRestoreGame::ReadClipModel( idClipModel *&clipModel ) {
    Sys_Printf("void idRestoreGame::ReadClipModel( idClipModel *&clipModel )\r\n");
}


/*
=====================
idRestoreGame::ReadSoundCommands
=====================
*/
void idRestoreGame::ReadSoundCommands( void ) {
    Sys_Printf("void idRestoreGame::ReadSoundCommands( void )\r\n");
}


/*
=====================
idRestoreGame::ReadBuildNumber
=====================
*/
void idRestoreGame::ReadBuildNumber( void ) {
    Sys_Printf("void idRestoreGame::ReadBuildNumber( void )\r\n");
}


/*
=====================
idRestoreGame::GetBuildNumber
=====================
*/
int idRestoreGame::GetBuildNumber( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idRestoreGame::GetBuildNumber( void )\r\n");
    return retVal;
}

