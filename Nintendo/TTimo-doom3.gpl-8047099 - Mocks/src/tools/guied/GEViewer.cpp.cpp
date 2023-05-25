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

#include "../../sys/win32/rc/guied_resource.h"
#include "../../renderer/tr_local.h"

#include "GEApp.h"
#include "GEViewer.h"

rvGEViewer::rvGEViewer ( )
{
	mInterface = NULL;
	mPaused    = true;
	mTime	   = 0;
}

bool rvGEViewer::Create ( HWND parent )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEViewer::Create ( HWND parent )\r\n");
    return retVal;
}


void rvGEViewer::Play ( void )
{
    Sys_Printf("void rvGEViewer::Play ( void )\r\n");
}


void rvGEViewer::Pause ( void )
{
    Sys_Printf("void rvGEViewer::Pause ( void )\r\n");
}



bool rvGEViewer::Destroy ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEViewer::Destroy ( void )\r\n");
    return retVal;
}


bool rvGEViewer::OpenFile ( const char* filename )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEViewer::OpenFile ( const char* filename )\r\n");
    return retVal;
}


/*
=======
MapKey

Map from windows to Doom keynums
=======
*/
static int MapKey (int key)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int MapKey (int key)\r\n");
    return retVal;
}


LRESULT CALLBACK rvGEViewer::WndProc ( HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvGEViewer::WndProc ( HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


LRESULT rvGEViewer::HandlePaint ( WPARAM wParam, LPARAM lParam )
{
    LRESULT retVal;
    memset(&retVal, 0, sizeof(LRESULT));
    Sys_Printf("LRESULT rvGEViewer::HandlePaint ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvGEViewer::SetupPixelFormat

Setup the pixel format for the opengl context
================
*/
bool rvGEViewer::SetupPixelFormat ( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvGEViewer::SetupPixelFormat ( void )\r\n");
    return retVal;
}


void rvGEViewer::Render	( HDC dc )
{
    Sys_Printf("void rvGEViewer::Render( HDC dc )\r\n");
}


void rvGEViewer::RunFrame ( void )
{
    Sys_Printf("void rvGEViewer::RunFrame ( void )\r\n");
}

