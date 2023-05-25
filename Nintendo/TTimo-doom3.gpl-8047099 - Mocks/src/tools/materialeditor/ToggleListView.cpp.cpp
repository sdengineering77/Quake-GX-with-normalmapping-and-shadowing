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

#include "ToggleListView.h"

#define TOGGLELIST_ITEMHEIGHT 22
#define TEXT_OFFSET 6


IMPLEMENT_DYNCREATE(ToggleListView, CListView)

BEGIN_MESSAGE_MAP(ToggleListView, CListView)
	ON_WM_CREATE()
	ON_WM_SIZE()
	ON_WM_MEASUREITEM_REFLECT()
	ON_NOTIFY_REFLECT(NM_CLICK, OnNMClick)
END_MESSAGE_MAP()


/**
* Protected constructor used by dynamic creation.
*/
ToggleListView::ToggleListView() {
	onIcon = NULL;
	offIcon = NULL;
	disabledIcon = NULL;
}

/**
* Destructor.
*/
ToggleListView::~ToggleListView() {
}


/**
* Sets the tree icons to dispay for each of the three states. Sets the 
* icons to display for each of the three states. The values passed in 
* are the resource name that can be generated using MAKEINTRESOUCE. If 
* the value passed in is NULL then an icon will not be drawn for that
* state.
* @param disabled The icon to draw when the state is TOGGLE_STATE_DISABLED.
* @param on The icon to draw when the state is TOGGLE_STATE_ON.
* @param off The icon to draw when the state is TOGGLE_STATE_OFF.
*/
void ToggleListView::SetToggleIcons(LPCSTR disabled, LPCSTR on, LPCSTR off) {
    Sys_Printf("void ToggleListView::SetToggleIcons(LPCSTR disabled, LPCSTR on, LPCSTR off)\r\n");
}


/**
* Sets the state of an item in the list.
* @param index Index of the item whose state should be changed.
* @param toggleState The state to set
* @param notify Determines if the notification method OnStateChanged should
* be called. OnStateChanged will also not be called if the state has not changed.
*/
void ToggleListView::SetToggleState(int index, int toggleState, bool notify) {
    Sys_Printf("void ToggleListView::SetToggleState(int index, int toggleState, bool notify)\r\n");
}


/**
* Gets the state of an item in the list
* @param index Index of the item of which to retreive the state.
*/
int ToggleListView::GetToggleState(int index) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int ToggleListView::GetToggleState(int index)\r\n");
    return retVal;
}


/**
* Called as the window is being created and initializes icons and window styles
*/
int ToggleListView::OnCreate(LPCREATESTRUCT lpCreateStruct) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int ToggleListView::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


/**
* Called when the window is being resized.
*/
void ToggleListView::OnSize(UINT nType, int cx, int cy) {
    Sys_Printf("void ToggleListView::OnSize(UINT nType, int cx, int cy)\r\n");
}


/**
* Returns the size of each item in the toggle list.
*/
void ToggleListView::MeasureItem(LPMEASUREITEMSTRUCT lpMeasureItemStruct) {
    Sys_Printf("void ToggleListView::MeasureItem(LPMEASUREITEMSTRUCT lpMeasureItemStruct)\r\n");
}


/**
* Toggles the state of an item when the user clicks in the window.
*/
void ToggleListView::OnNMClick(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void ToggleListView::OnNMClick(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/**
* Sets some window styles before the window is created.
*/
BOOL ToggleListView::PreCreateWindow(CREATESTRUCT& cs) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL ToggleListView::PreCreateWindow(CREATESTRUCT& cs)\r\n");
    return retVal;
}


/**
* Responsible for drawing each list item.
*/
void ToggleListView::DrawItem(LPDRAWITEMSTRUCT lpDrawItemStruct) {
    Sys_Printf("void ToggleListView::DrawItem(LPDRAWITEMSTRUCT lpDrawItemStruct)\r\n");
}



/**
* Draws a 3d rectangle using the given brushes this code was taken from the gui editor
*/
void ToggleListView::Draw3dRect (HDC hDC, RECT* rect, HBRUSH topLeft, HBRUSH bottomRight) {
    Sys_Printf("void ToggleListView::Draw3dRect (HDC hDC, RECT* rect, HBRUSH topLeft, HBRUSH bottomRight)\r\n");
}





