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

//  source file that includes just the standard includes
//	Radiant.pch will be the pre-compiled header
//	stdafx.obj will contain the pre-compiled type information

/*
===============================================================================

	Afx initialization.

===============================================================================
*/

bool afxInitialized = false;

/*
================
InitAfx
================
*/
void InitAfx( void ) {
    Sys_Printf("void InitAfx( void )\r\n");
}



/*
===============================================================================

	Tool Tips.

===============================================================================
*/

/*
================
DefaultOnToolHitTest
================
*/
int DefaultOnToolHitTest( const toolTip_t *toolTips, const CDialog *dialog, CPoint point, TOOLINFO* pTI ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int DefaultOnToolHitTest( const toolTip_t *toolTips, const CDialog *dialog, CPoint point, TOOLINFO* pTI )\r\n");
    return retVal;
}


/*
================
DefaultOnToolTipNotify
================
*/
BOOL DefaultOnToolTipNotify( const toolTip_t *toolTips, UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DefaultOnToolTipNotify( const toolTip_t *toolTips, UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}



/*
===============================================================================

	Common control tools.

===============================================================================
*/

/*
================
EditControlEnterHit

  returns true if [Enter] was hit in the edit box
  all 'return' characters in the text are removed and a single line is maintained
  the edit control must be multi-line with auto-vscroll
================
*/
bool EditControlEnterHit( CEdit *edit ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool EditControlEnterHit( CEdit *edit )\r\n");
    return retVal;
}


/*
================
EditVerifyFloat
================
*/
float EditVerifyFloat( CEdit *edit, bool allowNegative ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float EditVerifyFloat( CEdit *edit, bool allowNegative )\r\n");
    return retVal;
}


/*
================
SpinFloatString
================
*/
void SpinFloatString( CString &str, bool up ) {
    Sys_Printf("void SpinFloatString( CString &str, bool up )\r\n");
}


/*
================
EditSpinFloat
================
*/
float EditSpinFloat( CEdit *edit, bool up ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float EditSpinFloat( CEdit *edit, bool up )\r\n");
    return retVal;
}


/*
================
SetSafeComboBoxSelection
================
*/
int SetSafeComboBoxSelection( CComboBox *combo, const char *string, int skip ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int SetSafeComboBoxSelection( CComboBox *combo, const char *string, int skip )\r\n");
    return retVal;
}


/*
================
GetComboBoxSelection
================
*/
int GetSafeComboBoxSelection( CComboBox *combo, CString &string, int skip ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int GetSafeComboBoxSelection( CComboBox *combo, CString &string, int skip )\r\n");
    return retVal;
}


/*
================
UnsetSafeComboBoxSelection
================
*/
int UnsetSafeComboBoxSelection( CComboBox *combo, CString &string ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int UnsetSafeComboBoxSelection( CComboBox *combo, CString &string )\r\n");
    return retVal;
}

