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


/*
=================
idDeclFX::Size
=================
*/
size_t idDeclFX::Size( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idDeclFX::Size( void )\r\n");
    return retVal;
}


/*
===============
idDeclFX::Print
===============
*/
void idDeclFX::Print( void ) const {
    Sys_Printf("void idDeclFX::Print( void )\r\n");
}


/*
===============
idDeclFX::List
===============
*/
void idDeclFX::List( void ) const {
    Sys_Printf("void idDeclFX::List( void )\r\n");
}


/*
================
idDeclFX::ParseSingleFXAction
================
*/
void idDeclFX::ParseSingleFXAction( idLexer &src, idFXSingleAction& FXAction ) {
    Sys_Printf("void idDeclFX::ParseSingleFXAction( idLexer &src, idFXSingleAction& FXAction )\r\n");
}


/*
================
idDeclFX::Parse
================
*/
bool idDeclFX::Parse( const char *text, const int textLength ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclFX::Parse( const char *text, const int textLength )\r\n");
    return retVal;
}


/*
===================
idDeclFX::DefaultDefinition
===================
*/
const char *idDeclFX::DefaultDefinition( void ) const {
    Sys_Printf("char *idDeclFX::DefaultDefinition( void )\r\n");
    return NULL;
}


/*
===================
idDeclFX::FreeData
===================
*/
void idDeclFX::FreeData( void ) {
    Sys_Printf("void idDeclFX::FreeData( void )\r\n");
}

