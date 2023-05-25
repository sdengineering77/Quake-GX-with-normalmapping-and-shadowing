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

#include "../../sys/win32/win_local.h"
#include "PropertyGrid.h"

class rvPropertyGridItem
{
public:

	rvPropertyGridItem ( )
	{
	}
	
	idStr						mName;
	idStr						mValue;
	rvPropertyGrid::EItemType	mType;
};

/*
================
rvPropertyGrid::rvPropertyGrid

constructor
================
*/
rvPropertyGrid::rvPropertyGrid ( void )
{
	mWindow			= NULL;
	mEdit			= NULL;
	mListWndProc	= NULL;
	mSplitter		= 100;
	mSelectedItem	= -1;
	mEditItem		= -1;
	mState			= STATE_NORMAL;
}

/*
================
rvPropertyGrid::Create

Create a new property grid control with the given id and parent
================
*/
bool rvPropertyGrid::Create ( HWND parent, int id, int style )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvPropertyGrid::Create ( HWND parent, int id, int style )\r\n");
    return retVal;
}


/*
================
rvPropertyGrid::Move

Move the window
================
*/
void rvPropertyGrid::Move ( int x, int y, int w, int h, BOOL redraw )
{
    Sys_Printf("void rvPropertyGrid::Move ( int x, int y, int w, int h, BOOL redraw )\r\n");
}


/*
================
rvPropertyGrid::StartEdit

Start editing
================
*/
void rvPropertyGrid::StartEdit ( int item, bool label )
{
    Sys_Printf("void rvPropertyGrid::StartEdit ( int item, bool label )\r\n");
}


/*
================
rvPropertyGrid::FinishEdit

Finish editing by copying the data in the edit control to the internal value
================
*/
void rvPropertyGrid::FinishEdit ( void )
{
    Sys_Printf("void rvPropertyGrid::FinishEdit ( void )\r\n");
}


/*
================
rvPropertyGrid::CancelEdit

Stop editing without saving the data
================
*/
void rvPropertyGrid::CancelEdit ( void )
{
    Sys_Printf("void rvPropertyGrid::CancelEdit ( void )\r\n");
}


/*
================
rvPropertyGrid::AddItem

Add a new item to the property grid
================
*/
int rvPropertyGrid::AddItem ( const char* name, const char* value, EItemType type )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvPropertyGrid::AddItem ( const char* name, const char* value, EItemType type )\r\n");
    return retVal;
}


/*
================
rvPropertyGrid::RemoveItem

Remove the item at the given index
================
*/
void rvPropertyGrid::RemoveItem ( int index )
{
    Sys_Printf("void rvPropertyGrid::RemoveItem ( int index )\r\n");
}


/*
================
rvPropertyGrid::RemoveAllItems

Remove all items from the property grid
================
*/
void rvPropertyGrid::RemoveAllItems ( void )
{
    Sys_Printf("void rvPropertyGrid::RemoveAllItems ( void )\r\n");
}


/*
================
rvPropertyGrid::GetItemName

Return name of item at given index
================
*/
const char* rvPropertyGrid::GetItemName ( int index )
{
    Sys_Printf("char* rvPropertyGrid::GetItemName ( int index )\r\n");
    return NULL;
}

	
/*
================
rvPropertyGrid::GetItemValue

Return value of item at given index
================
*/
const char* rvPropertyGrid::GetItemValue ( int index )
{
    Sys_Printf("char* rvPropertyGrid::GetItemValue ( int index )\r\n");
    return NULL;
}


/*
================
rvPropertyGrid::WndProc

Window procedure for property grid
================
*/
LRESULT CALLBACK rvPropertyGrid::WndProc ( HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam )
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvPropertyGrid::WndProc ( HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvPropertyGrid::ReflectMessage

Handle messages sent to the parent window
================
*/
bool rvPropertyGrid::ReflectMessage ( HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvPropertyGrid::ReflectMessage ( HWND hWnd, UINT msg, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvPropertyGrid::HandleDrawItem

Handle the draw item message
================
*/
int rvPropertyGrid::HandleDrawItem ( WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvPropertyGrid::HandleDrawItem ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}

