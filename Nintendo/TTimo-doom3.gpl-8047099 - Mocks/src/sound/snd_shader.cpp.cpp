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
===============
idSoundShader::Init
===============
*/
void idSoundShader::Init( void ) {
    Sys_Printf("void idSoundShader::Init( void )\r\n");
}


/*
===============
idSoundShader::idSoundShader
===============
*/
idSoundShader::idSoundShader( void ) {
	Init();
}

/*
===============
idSoundShader::~idSoundShader
===============
*/
idSoundShader::~idSoundShader( void ) {
}

/*
=================
idSoundShader::Size
=================
*/
size_t idSoundShader::Size( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idSoundShader::Size( void )\r\n");
    return retVal;
}


/*
===============
idSoundShader::idSoundShader::FreeData
===============
*/
void idSoundShader::FreeData() {
    Sys_Printf("void idSoundShader::FreeData()\r\n");
}


/*
===================
idSoundShader::SetDefaultText
===================
*/
bool idSoundShader::SetDefaultText( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSoundShader::SetDefaultText( void )\r\n");
    return retVal;
}


/*
===================
DefaultDefinition
===================
*/
const char *idSoundShader::DefaultDefinition() const {
    Sys_Printf("char *idSoundShader::DefaultDefinition()\r\n");
    return NULL;
}


/*
===============
idSoundShader::Parse

  this is called by the declManager
===============
*/
bool idSoundShader::Parse( const char *text, const int textLength ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSoundShader::Parse( const char *text, const int textLength )\r\n");
    return retVal;
}


/*
===============
idSoundShader::ParseShader
===============
*/
bool idSoundShader::ParseShader( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSoundShader::ParseShader( idLexer &src )\r\n");
    return retVal;
}


/*
===============
idSoundShader::CheckShakesAndOgg
===============
*/
bool idSoundShader::CheckShakesAndOgg( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSoundShader::CheckShakesAndOgg( void )\r\n");
    return retVal;
}


/*
===============
idSoundShader::List
===============
*/
void idSoundShader::List() const {
    Sys_Printf("void idSoundShader::List()\r\n");
}


/*
===============
idSoundShader::GetAltSound
===============
*/
const idSoundShader *idSoundShader::GetAltSound( void ) const {
    Sys_Printf("idSoundShader *idSoundShader::GetAltSound( void )\r\n");
    return NULL;
}


/*
===============
idSoundShader::GetMinDistance
===============
*/
float idSoundShader::GetMinDistance() const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idSoundShader::GetMinDistance()\r\n");
    return retVal;
}


/*
===============
idSoundShader::GetMaxDistance
===============
*/
float idSoundShader::GetMaxDistance() const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idSoundShader::GetMaxDistance()\r\n");
    return retVal;
}


/*
===============
idSoundShader::GetDescription
===============
*/
const char *idSoundShader::GetDescription() const {
    Sys_Printf("char *idSoundShader::GetDescription()\r\n");
    return NULL;
}


/*
===============
idSoundShader::HasDefaultSound
===============
*/
bool idSoundShader::HasDefaultSound() const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idSoundShader::HasDefaultSound()\r\n");
    return retVal;
}


/*
===============
idSoundShader::GetParms
===============
*/
const soundShaderParms_t *idSoundShader::GetParms() const {
    Sys_Printf("soundShaderParms_t *idSoundShader::GetParms()\r\n");
    return NULL;
}


/*
===============
idSoundShader::GetNumSounds
===============
*/
int idSoundShader::GetNumSounds() const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSoundShader::GetNumSounds()\r\n");
    return retVal;
}


/*
===============
idSoundShader::GetSound
===============
*/
const char *idSoundShader::GetSound( int index ) const {
    Sys_Printf("char *idSoundShader::GetSound( int index )\r\n");
    return NULL;
}

