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

static autoComplete_t	globalAutoComplete;

/*
===============
FindMatches
===============
*/
static void FindMatches( const char *s ) {
    Sys_Printf("void FindMatches( const char *s )\r\n");
}


/*
===============
FindIndexMatch
===============
*/
static void FindIndexMatch( const char *s ) {
    Sys_Printf("void FindIndexMatch( const char *s )\r\n");
}


/*
===============
PrintMatches
===============
*/
static void PrintMatches( const char *s ) {
    Sys_Printf("void PrintMatches( const char *s )\r\n");
}


/*
===============
PrintCvarMatches
===============
*/
static void PrintCvarMatches( const char *s ) {
    Sys_Printf("void PrintCvarMatches( const char *s )\r\n");
}


/*
===============
idEditField::idEditField
===============
*/
idEditField::idEditField() {
	widthInChars = 0;
	Clear();
}

/*
===============
idEditField::~idEditField
===============
*/
idEditField::~idEditField() {
}

/*
===============
idEditField::Clear
===============
*/
void idEditField::Clear( void ) {
    Sys_Printf("void idEditField::Clear( void )\r\n");
}


/*
===============
idEditField::SetWidthInChars
===============
*/
void idEditField::SetWidthInChars( int w ) {
    Sys_Printf("void idEditField::SetWidthInChars( int w )\r\n");
}


/*
===============
idEditField::SetCursor
===============
*/
void idEditField::SetCursor( int c ) {
    Sys_Printf("void idEditField::SetCursor( int c )\r\n");
}


/*
===============
idEditField::GetCursor
===============
*/
int idEditField::GetCursor( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idEditField::GetCursor( void )\r\n");
    return retVal;
}


/*
===============
idEditField::ClearAutoComplete
===============
*/
void idEditField::ClearAutoComplete( void ) {
    Sys_Printf("void idEditField::ClearAutoComplete( void )\r\n");
}


/*
===============
idEditField::GetAutoCompleteLength
===============
*/
int idEditField::GetAutoCompleteLength( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idEditField::GetAutoCompleteLength( void )\r\n");
    return retVal;
}


/*
===============
idEditField::AutoComplete
===============
*/
void idEditField::AutoComplete( void ) {
    Sys_Printf("void idEditField::AutoComplete( void )\r\n");
}


/*
===============
idEditField::CharEvent
===============
*/
void idEditField::CharEvent( int ch ) {
    Sys_Printf("void idEditField::CharEvent( int ch )\r\n");
}


/*
===============
idEditField::KeyDownEvent
===============
*/
void idEditField::KeyDownEvent( int key ) {
    Sys_Printf("void idEditField::KeyDownEvent( int key )\r\n");
}


/*
===============
idEditField::Paste
===============
*/
void idEditField::Paste( void ) {
    Sys_Printf("void idEditField::Paste( void )\r\n");
}


/*
===============
idEditField::GetBuffer
===============
*/
char *idEditField::GetBuffer( void ) {
    Sys_Printf("char *idEditField::GetBuffer( void )\r\n");
    return NULL;
}


/*
===============
idEditField::SetBuffer
===============
*/
void idEditField::SetBuffer( const char *buf ) {
    Sys_Printf("void idEditField::SetBuffer( const char *buf )\r\n");
}


/*
===============
idEditField::Draw
===============
*/
void idEditField::Draw( int x, int y, int width, bool showCursor, const idMaterial *shader ) {
    Sys_Printf("void idEditField::Draw( int x, int y, int width, bool showCursor, const idMaterial *shader )\r\n");
}

