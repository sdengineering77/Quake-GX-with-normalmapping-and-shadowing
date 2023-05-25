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
#include "RollupPanel.h"

// Based on original code by Johann Nadalutti

#define	RP_PGBUTTONHEIGHT		18
#define	RP_SCROLLBARWIDTH		6
#define	RP_GRPBOXINDENT			6
#define	RP_SCROLLBARCOLOR		RGB(150,180,180)
#define RP_ROLLCURSOR			MAKEINTRESOURCE(32649)	// see IDC_HAND (WINVER >= 0x0500)

//Popup Menu Ids
#define	RP_IDM_EXPANDALL		0x100
#define	RP_IDM_COLLAPSEALL		0x101
#define	RP_IDM_STARTITEMS		0x102

idList<HWND>	rvRollupPanel::mDialogs;	
HHOOK			rvRollupPanel::mDialogHook	= NULL;

#define DEFERPOS

/*
================
rvRollupPanel::rvRollupPanel

constructor
================
*/
rvRollupPanel::rvRollupPanel ( void )
{
	mStartYPos  = 0;
	mItemHeight = 0;
	mWindow		= NULL;
}

/*
================
rvRollupPanel::~rvRollupPanel

destructor
================
*/
rvRollupPanel::~rvRollupPanel ( void )
{
	// destroy the items
	for ( ; mItems.Num(); )
	{
		_RemoveItem ( 0 );
	}
}

/*
================
rvRollupPanel::Create

Create the rollup panel window
================
*/
bool rvRollupPanel::Create ( DWORD dwStyle, const RECT& rect, HWND parent, unsigned int id )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool rvRollupPanel::Create ( DWORD dwStyle, const RECT& rect, HWND parent, unsigned int id )\r\n");
    return retVal;
}


/*
================
rvRollupPanel::InsertItem

Insert and item into the rollup panel.  Return -1 if an error occured
================
*/
int rvRollupPanel::InsertItem ( const char* caption, HWND dialog, bool autoDestroy, int index )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvRollupPanel::InsertItem ( const char* caption, HWND dialog, bool autoDestroy, int index )\r\n");
    return retVal;
}


/*
================
rvRollupPanel::RemoveItem

Remove the item at the given index from the rollup panel
================
*/
void rvRollupPanel::RemoveItem ( int index )
{
    Sys_Printf("void rvRollupPanel::RemoveItem ( int index )\r\n");
}


/*
================
rvRollupPanel::RemoveAllItems

Remove all items from the control
================
*/
void rvRollupPanel::RemoveAllItems()
{
    Sys_Printf("void rvRollupPanel::RemoveAllItems()\r\n");
}


/*
================
rvRollupPanel::_RemoveItem

called by RemoveItem and RemoveAllItems methods to acutally remove the item
================
*/
void rvRollupPanel::_RemoveItem ( int index )
{
    Sys_Printf("void rvRollupPanel::_RemoveItem ( int index )\r\n");
}


/*
================
rvRollupPanel::ExpandItem

expand or collapse the item at the given index
================
*/
void rvRollupPanel::ExpandItem( int index, bool expand )
{
    Sys_Printf("void rvRollupPanel::ExpandItem( int index, bool expand )\r\n");
}


/*
================
rvRollupPanel::ExpandItem

expand or collapse the item at the given index
================
*/
void rvRollupPanel::ExpandAllItems( bool expand )
{
    Sys_Printf("void rvRollupPanel::ExpandAllItems( bool expand )\r\n");
}


/*
================
rvRollupPanel::ExpandItem

expand or collapse the item at the given index
================
*/
void rvRollupPanel::_ExpandItem ( RPITEM* item, bool expand )
{
    Sys_Printf("void rvRollupPanel::_ExpandItem ( RPITEM* item, bool expand )\r\n");
}


/*
================
rvRollupPanel::EnableItem

enable/disable the item at the given index
================
*/
void rvRollupPanel::EnableItem ( int index, bool enable )
{
    Sys_Printf("void rvRollupPanel::EnableItem ( int index, bool enable )\r\n");
}


/*
================
rvRollupPanel::EnableAllItems

enable/disable all items in the panel
================
*/
void rvRollupPanel::EnableAllItems ( bool enable )
{
    Sys_Printf("void rvRollupPanel::EnableAllItems ( bool enable )\r\n");
}


/*
================
rvRollupPanel::_EnableItem

Called by EnableItem and EnableAllItems to do the work of enabling/disablgin
the window
================
*/
void rvRollupPanel::_EnableItem ( RPITEM* item, bool enable )
{
    Sys_Printf("void rvRollupPanel::_EnableItem ( RPITEM* item, bool enable )\r\n");
}


/*
================
rvRollupPanel::ScrollToItem

Scroll a page at the top of the Rollup Panel if top = true or just ensure 
item visibility into view if top = false 
================
*/
void rvRollupPanel::ScrollToItem ( int index, bool top )
{
    Sys_Printf("void rvRollupPanel::ScrollToItem ( int index, bool top )\r\n");
}


/*
================
rvRollupPanel::MoveItemAt

newIndex can be equal to -1 (move at end)
return -1 if an error occurs
================
*/
int rvRollupPanel::MoveItemAt ( int index, int newIndex )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvRollupPanel::MoveItemAt ( int index, int newIndex )\r\n");
    return retVal;
}


/*
================
rvRollupPanel::RecallLayout

Update the layout of the control based on current states
================
*/
void rvRollupPanel::RecallLayout ( void )
{
    Sys_Printf("void rvRollupPanel::RecallLayout ( void )\r\n");
}


/*
================
rvRollupPanel::GetItemIndex

Return -1 if no matching item was found, otherwise the index of the item
================
*/
int rvRollupPanel::GetItemIndex ( HWND wnd )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvRollupPanel::GetItemIndex ( HWND wnd )\r\n");
    return retVal;
}


int rvRollupPanel::GetItemIndex	( const char* caption )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvRollupPanel::GetItemIndex( const char* caption )\r\n");
    return retVal;
}


/*
================
rvRollupPanel::GetItem

Return NULL if the index is invalid
================
*/
RPITEM* rvRollupPanel::GetItem ( int index )
{
    Sys_Printf("RPITEM* rvRollupPanel::GetItem ( int index )\r\n");
    return NULL;
}


/*
================
rvRollupPanel::DialogProc

Dialog procedure for items
================
*/
LRESULT CALLBACK rvRollupPanel::DialogProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvRollupPanel::DialogProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)\r\n");
    return retVal;
}


/*
================
rvRollupPanel::DialogProc

Button procedure for items
================
*/
LRESULT CALLBACK rvRollupPanel::ButtonProc (HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvRollupPanel::ButtonProc (HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)\r\n");
    return retVal;
}


/*
================
rvRollupPanel::WindowProc

Window procedure for rollup panel
================
*/
LRESULT CALLBACK rvRollupPanel::WindowProc (HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
    CALLBACK retVal;
    memset(&retVal, 0, sizeof(CALLBACK));
    Sys_Printf("CALLBACK rvRollupPanel::WindowProc (HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)\r\n");
    return retVal;
}


/*
================
rvRollupPanel::HandleCommand

Handle the WM_COMMAND message
================
*/
int rvRollupPanel::HandleCommand ( WPARAM wParam, LPARAM lParam ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvRollupPanel::HandleCommand ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvRollupPanel::HandlePaint

Handle the WM_PAINT message
================
*/
int rvRollupPanel::HandlePaint( WPARAM wParam, LPARAM lParam ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvRollupPanel::HandlePaint( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvRollupPanel::HandleSize

Handle the WM_SIZE message
================
*/
int rvRollupPanel::HandleSize ( WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvRollupPanel::HandleSize ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvRollupPanel::HandleLButtonDown

Handle the WM_LBUTTONDOWN message
================
*/
int rvRollupPanel::HandleLButtonDown ( WPARAM wParam, LPARAM lParam ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvRollupPanel::HandleLButtonDown ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvRollupPanel::HandleLButtonUp

Handle the WM_LBUTTONUP message
================
*/
int rvRollupPanel::HandleLButtonUp ( WPARAM wParam, LPARAM lParam ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvRollupPanel::HandleLButtonUp ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvRollupPanel::HandleMouseMove

Handle the WM_MOUSEMOVE message
================
*/
int rvRollupPanel::HandleMouseMove ( WPARAM wParam, LPARAM lParam ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvRollupPanel::HandleMouseMove ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvRollupPanel::HandleMouseWheel

Handle the WM_MOUSEWHEEL message
================
*/
int rvRollupPanel::HandleMouseWheel ( WPARAM wParam, LPARAM lParam ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvRollupPanel::HandleMouseWheel ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvRollupPanel::HandleMouseActivate

Handle the WM_MOUSEACTIVATE message
================
*/
int rvRollupPanel::HandleMouseActivate  ( WPARAM wParam, LPARAM lParam ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvRollupPanel::HandleMouseActivate  ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvRollupPanel::HandleContextMenu

Handle the WM_CONTEXTMENU message
================
*/
int rvRollupPanel::HandleContextMenu ( WPARAM wParam, LPARAM lParam )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int rvRollupPanel::HandleContextMenu ( WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}


/*
================
rvRollupPanel::GetMsgProc

Ensures normal dialog functions work in the alpha select dialog
================
*/
LRESULT FAR PASCAL rvRollupPanel::GetMsgProc ( int nCode, WPARAM wParam, LPARAM lParam )
{
    PASCAL retVal;
    memset(&retVal, 0, sizeof(PASCAL));
    Sys_Printf("PASCAL rvRollupPanel::GetMsgProc ( int nCode, WPARAM wParam, LPARAM lParam )\r\n");
    return retVal;
}
 

/*
================
rvRollupPanel::AutoSize

Automatically set the width of the control based on the dialogs it contains
================
*/
void rvRollupPanel::AutoSize ( void )
{
    Sys_Printf("void rvRollupPanel::AutoSize ( void )\r\n");
}


