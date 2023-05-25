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

#include "CPathTreeCtrl.h"


/*
================
CPathTreeCtrl::CPathTreeCtrl
================
*/
CPathTreeCtrl::CPathTreeCtrl() {
}

/*
================
CPathTreeCtrl::~CPathTreeCtrl
================
*/
CPathTreeCtrl::~CPathTreeCtrl() {
}

/*
================
CPathTreeCtrl::PreSubclassWindow
================
*/
void CPathTreeCtrl::PreSubclassWindow() {
    Sys_Printf("void CPathTreeCtrl::PreSubclassWindow()\r\n");
}


/*
================
CPathTreeCtrl::FindItem

Find the given path in the tree.
================
*/
HTREEITEM CPathTreeCtrl::FindItem( const idStr &pathName ) {
    HTREEITEM retVal;
    memset(&retVal, 0, sizeof(HTREEITEM));
    Sys_Printf("HTREEITEM CPathTreeCtrl::FindItem( const idStr &pathName )\r\n");
    return retVal;
}


/*
================
CPathTreeCtrl::InsertPathIntoTree

Inserts a new item going from the root down the tree only creating paths where necessary.
This is slow and should only be used to insert single items.
================
*/
HTREEITEM CPathTreeCtrl::InsertPathIntoTree( const idStr &pathName, const int id ) {
    HTREEITEM retVal;
    memset(&retVal, 0, sizeof(HTREEITEM));
    Sys_Printf("HTREEITEM CPathTreeCtrl::InsertPathIntoTree( const idStr &pathName, const int id )\r\n");
    return retVal;
}


/*
================
CPathTreeCtrl::AddPathToTree

Adds a new item to the tree.
Assumes new paths after the current stack path do not yet exist.
================
*/
HTREEITEM CPathTreeCtrl::AddPathToTree( const idStr &pathName, const int id, idPathTreeStack &stack ) {
    HTREEITEM retVal;
    memset(&retVal, 0, sizeof(HTREEITEM));
    Sys_Printf("HTREEITEM CPathTreeCtrl::AddPathToTree( const idStr &pathName, const int id, idPathTreeStack &stack )\r\n");
    return retVal;
}


/*
================
CPathTreeCtrl::SearchTree

Search the three using the search string.
Adds the matched tree items to the result tree.
Returns the number of items added to the result tree.
================
*/
int CPathTreeCtrl::SearchTree( treeItemCompare_t compare, void *data, CPathTreeCtrl &result ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CPathTreeCtrl::SearchTree( treeItemCompare_t compare, void *data, CPathTreeCtrl &result )\r\n");
    return retVal;
}


BEGIN_MESSAGE_MAP(CPathTreeCtrl,CTreeCtrl)
	//{{AFX_MSG_MAP(CPathTreeCtrl)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTW, 0, 0xFFFF, OnToolTipText)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTA, 0, 0xFFFF, OnToolTipText)
	ON_WM_MOUSEMOVE()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/*
================
CPathTreeCtrl::OnToolHitTest
================
*/
int CPathTreeCtrl::OnToolHitTest( CPoint point, TOOLINFO * pTI ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CPathTreeCtrl::OnToolHitTest( CPoint point, TOOLINFO * pTI )\r\n");
    return retVal;
}


/*
================
CPathTreeCtrl::OnToolTipText
================
*/
BOOL CPathTreeCtrl::OnToolTipText( UINT id, NMHDR * pNMHDR, LRESULT * pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPathTreeCtrl::OnToolTipText( UINT id, NMHDR * pNMHDR, LRESULT * pResult )\r\n");
    return retVal;
}

