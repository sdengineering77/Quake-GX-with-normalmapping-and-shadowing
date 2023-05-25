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
idDeclPDA::Size
=================
*/
size_t idDeclPDA::Size( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idDeclPDA::Size( void )\r\n");
    return retVal;
}


/*
===============
idDeclPDA::Print
===============
*/
void idDeclPDA::Print( void ) const {
    Sys_Printf("void idDeclPDA::Print( void )\r\n");
}


/*
===============
idDeclPDA::List
===============
*/
void idDeclPDA::List( void ) const {
    Sys_Printf("void idDeclPDA::List( void )\r\n");
}


/*
================
idDeclPDA::Parse
================
*/
bool idDeclPDA::Parse( const char *text, const int textLength ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclPDA::Parse( const char *text, const int textLength )\r\n");
    return retVal;
}


/*
===================
idDeclPDA::DefaultDefinition
===================
*/
const char *idDeclPDA::DefaultDefinition( void ) const {
    Sys_Printf("char *idDeclPDA::DefaultDefinition( void )\r\n");
    return NULL;
}


/*
===================
idDeclPDA::FreeData
===================
*/
void idDeclPDA::FreeData( void ) {
    Sys_Printf("void idDeclPDA::FreeData( void )\r\n");
}


/*
=================
idDeclPDA::AddVideo
=================
*/
void idDeclPDA::AddVideo( const char *name, bool unique ) const {
    Sys_Printf("void idDeclPDA::AddVideo( const char *name, bool unique )\r\n");
}


/*
=================
idDeclPDA::AddAudio
=================
*/
void idDeclPDA::AddAudio( const char *name, bool unique ) const {
    Sys_Printf("void idDeclPDA::AddAudio( const char *name, bool unique )\r\n");
}


/*
=================
idDeclPDA::AddEmail
=================
*/
void idDeclPDA::AddEmail( const char *name, bool unique ) const {
    Sys_Printf("void idDeclPDA::AddEmail( const char *name, bool unique )\r\n");
}


/*
=================
idDeclPDA::RemoveAddedEmailsAndVideos
=================
*/
void idDeclPDA::RemoveAddedEmailsAndVideos() const {
    Sys_Printf("void idDeclPDA::RemoveAddedEmailsAndVideos()\r\n");
}


/*
=================
idDeclPDA::SetSecurity
=================
*/
void idDeclPDA::SetSecurity( const char *sec ) const {
    Sys_Printf("void idDeclPDA::SetSecurity( const char *sec )\r\n");
}


/*
=================
idDeclPDA::GetNumVideos
=================
*/
const int idDeclPDA::GetNumVideos() const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclPDA::GetNumVideos()\r\n");
    return retVal;
}


/*
=================
idDeclPDA::GetNumAudios
=================
*/
const int idDeclPDA::GetNumAudios() const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclPDA::GetNumAudios()\r\n");
    return retVal;
}


/*
=================
idDeclPDA::GetNumEmails
=================
*/
const int idDeclPDA::GetNumEmails() const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclPDA::GetNumEmails()\r\n");
    return retVal;
}


/*
=================
idDeclPDA::GetVideoByIndex
=================
*/
const idDeclVideo* idDeclPDA::GetVideoByIndex( int index ) const {
    Sys_Printf("idDeclVideo* idDeclPDA::GetVideoByIndex( int index )\r\n");
    return NULL;
}


/*
=================
idDeclPDA::GetAudioByIndex
=================
*/
const idDeclAudio* idDeclPDA::GetAudioByIndex( int index ) const {
    Sys_Printf("idDeclAudio* idDeclPDA::GetAudioByIndex( int index )\r\n");
    return NULL;
}


/*
=================
idDeclPDA::GetEmailByIndex
=================
*/
const idDeclEmail* idDeclPDA::GetEmailByIndex( int index ) const {
    Sys_Printf("idDeclEmail* idDeclPDA::GetEmailByIndex( int index )\r\n");
    return NULL;
}


/*
=================
idDeclEmail::Size
=================
*/
size_t idDeclEmail::Size( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idDeclEmail::Size( void )\r\n");
    return retVal;
}


/*
===============
idDeclEmail::Print
===============
*/
void idDeclEmail::Print( void ) const {
    Sys_Printf("void idDeclEmail::Print( void )\r\n");
}


/*
===============
idDeclEmail::List
===============
*/
void idDeclEmail::List( void ) const {
    Sys_Printf("void idDeclEmail::List( void )\r\n");
}


/*
================
idDeclEmail::Parse
================
*/
bool idDeclEmail::Parse( const char *_text, const int textLength ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclEmail::Parse( const char *_text, const int textLength )\r\n");
    return retVal;
}


/*
===================
idDeclEmail::DefaultDefinition
===================
*/
const char *idDeclEmail::DefaultDefinition( void ) const {
    Sys_Printf("char *idDeclEmail::DefaultDefinition( void )\r\n");
    return NULL;
}


/*
===================
idDeclEmail::FreeData
===================
*/
void idDeclEmail::FreeData( void ) {
    Sys_Printf("void idDeclEmail::FreeData( void )\r\n");
}


/*
=================
idDeclVideo::Size
=================
*/
size_t idDeclVideo::Size( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idDeclVideo::Size( void )\r\n");
    return retVal;
}


/*
===============
idDeclVideo::Print
===============
*/
void idDeclVideo::Print( void ) const {
    Sys_Printf("void idDeclVideo::Print( void )\r\n");
}


/*
===============
idDeclVideo::List
===============
*/
void idDeclVideo::List( void ) const {
    Sys_Printf("void idDeclVideo::List( void )\r\n");
}


/*
================
idDeclVideo::Parse
================
*/
bool idDeclVideo::Parse( const char *text, const int textLength ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclVideo::Parse( const char *text, const int textLength )\r\n");
    return retVal;
}


/*
===================
idDeclVideo::DefaultDefinition
===================
*/
const char *idDeclVideo::DefaultDefinition( void ) const {
    Sys_Printf("char *idDeclVideo::DefaultDefinition( void )\r\n");
    return NULL;
}


/*
===================
idDeclVideo::FreeData
===================
*/
void idDeclVideo::FreeData( void ) {
    Sys_Printf("void idDeclVideo::FreeData( void )\r\n");
}


/*
=================
idDeclAudio::Size
=================
*/
size_t idDeclAudio::Size( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idDeclAudio::Size( void )\r\n");
    return retVal;
}


/*
===============
idDeclAudio::Print
===============
*/
void idDeclAudio::Print( void ) const {
    Sys_Printf("void idDeclAudio::Print( void )\r\n");
}


/*
===============
idDeclAudio::List
===============
*/
void idDeclAudio::List( void ) const {
    Sys_Printf("void idDeclAudio::List( void )\r\n");
}


/*
================
idDeclAudio::Parse
================
*/
bool idDeclAudio::Parse( const char *text, const int textLength ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAudio::Parse( const char *text, const int textLength )\r\n");
    return retVal;
}


/*
===================
idDeclAudio::DefaultDefinition
===================
*/
const char *idDeclAudio::DefaultDefinition( void ) const {
    Sys_Printf("char *idDeclAudio::DefaultDefinition( void )\r\n");
    return NULL;
}


/*
===================
idDeclAudio::FreeData
===================
*/
void idDeclAudio::FreeData( void ) {
    Sys_Printf("void idDeclAudio::FreeData( void )\r\n");
}

