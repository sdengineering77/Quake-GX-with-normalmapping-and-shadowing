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

#include "RegistryOptions.h"

/*
================
rvRegistryOptions::rvRegistryOptions

Constructor
================
*/
rvRegistryOptions::rvRegistryOptions( void ) {
}

/*
================
rvRegistryOptions::Init
================
*/
void rvRegistryOptions::Init( const char *key ) {
    Sys_Printf("void rvRegistryOptions::Init( const char *key )\r\n");
}


/*
================
rvRegistryOptions::Save

Write the options to the registry 
================
*/
bool rvRegistryOptions::Save ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvRegistryOptions::Save ( void )\r\n");
    return retVal;
}


/*
================
rvRegistryOptions::Load

Read the options from the registry
================
*/
bool rvRegistryOptions::Load ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvRegistryOptions::Load ( void )\r\n");
    return retVal;
}


/*
================
rvRegistryOptions::SetWindowPlacement

Set a window placement in the options
================
*/
void rvRegistryOptions::SetWindowPlacement ( const char* name, HWND hwnd )
{
    Sys_Printf("void rvRegistryOptions::SetWindowPlacement ( const char* name, HWND hwnd )\r\n");
}


/*
================
rvRegistryOptions::GetWindowPlacement

Retrieve a window placement from the options
================
*/
bool rvRegistryOptions::GetWindowPlacement ( const char* name, HWND hwnd )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvRegistryOptions::GetWindowPlacement ( const char* name, HWND hwnd )\r\n");
    return retVal;
}


/*
================
rvRegistryOptions::AddRecentFile

Adds the given filename to the MRU list
================
*/
void rvRegistryOptions::AddRecentFile ( const char* filename )
{
    Sys_Printf("void rvRegistryOptions::AddRecentFile ( const char* filename )\r\n");
}


/*
================
rvRegistryOptions::SetColumnWidths

Set a group of column widths in the options
================
*/
void rvRegistryOptions::SetColumnWidths ( const char* name, HWND list )
{
    Sys_Printf("void rvRegistryOptions::SetColumnWidths ( const char* name, HWND list )\r\n");
}


/*
================
rvRegistryOptions::GetColumnWidths

Retrieve a group of column widths from the options
================
*/
void rvRegistryOptions::GetColumnWidths ( const char* name, HWND list )
{
    Sys_Printf("void rvRegistryOptions::GetColumnWidths ( const char* name, HWND list )\r\n");
}


/*
================
rvRegistryOptions::SetBinary

Set binary data for the given key
================
*/
void rvRegistryOptions::SetBinary ( const char* name, const unsigned char* data, int size )
{
    Sys_Printf("void rvRegistryOptions::SetBinary ( const char* name, const unsigned char* data, int size )\r\n");
}


/*
================
rvRegistryOptions::GetBinary

Get the binary data for a given key
================
*/
void rvRegistryOptions::GetBinary ( const char* name, unsigned char* data, int size )
{
    Sys_Printf("void rvRegistryOptions::GetBinary ( const char* name, unsigned char* data, int size )\r\n");
}

