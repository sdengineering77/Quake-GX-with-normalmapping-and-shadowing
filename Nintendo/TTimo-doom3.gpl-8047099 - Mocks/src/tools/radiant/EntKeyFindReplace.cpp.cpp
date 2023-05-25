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

//#include "stdafx.h"
#include "radiant.h"
#include "GetString.h"	// for ErrorBox() etc
#include "qe3.h"

#include "EntKeyFindReplace.h"
//#include "oddbits.h"
/*
#include "stdafx.h"
#include "Radiant.h"
#include "ZWnd.h"
#include "qe3.h"
#include "zclip.h"
*/

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CEntKeyFindReplace dialog

CEntKeyFindReplace::CEntKeyFindReplace(	CString* p_strFindKey, 
										CString* p_strFindValue, 
										CString* p_strReplaceKey, 
										CString* p_strReplaceValue, 
										bool*	 p_bWholeStringMatchOnly,
										bool*	 p_bSelectAllMatchingEnts,
										CWnd*	 pParent /*=NULL*/)
	: CDialog(CEntKeyFindReplace::IDD, pParent)
{
	m_pStrFindKey		= p_strFindKey;
	m_pStrFindValue		= p_strFindValue;
	m_pStrReplaceKey	= p_strReplaceKey;
	m_pStrReplaceValue	= p_strReplaceValue;
	m_pbWholeStringMatchOnly = p_bWholeStringMatchOnly;
	m_pbSelectAllMatchingEnts= p_bSelectAllMatchingEnts;

	//{{AFX_DATA_INIT(CEntKeyFindReplace)
	m_strFindKey	  = *m_pStrFindKey;
	m_strFindValue	  = *m_pStrFindValue;
	m_strReplaceKey	  = *m_pStrReplaceKey;
	m_strReplaceValue = *m_pStrReplaceValue;
	m_bWholeStringMatchOnly = *m_pbWholeStringMatchOnly;
	m_bSelectAllMatchingEnts = *m_pbSelectAllMatchingEnts;
	//}}AFX_DATA_INIT
}


void CEntKeyFindReplace::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CEntKeyFindReplace::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CEntKeyFindReplace, CDialog)
	//{{AFX_MSG_MAP(CEntKeyFindReplace)
	ON_BN_CLICKED(IDC_REPLACE, OnReplace)
	ON_BN_CLICKED(IDC_FIND,	 OnFind)
	ON_BN_CLICKED(IDC_KEYCOPY, OnKeycopy)
	ON_BN_CLICKED(IDC_VALUECOPY, OnValuecopy)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CEntKeyFindReplace message handlers

void CEntKeyFindReplace::OnCancel() 
{
    Sys_Printf("void CEntKeyFindReplace::OnCancel()\r\n");
}


void CEntKeyFindReplace::OnReplace() 
{
    Sys_Printf("void CEntKeyFindReplace::OnReplace()\r\n");
}


void CEntKeyFindReplace::OnFind()
{
    Sys_Printf("void CEntKeyFindReplace::OnFind()\r\n");
}


void CEntKeyFindReplace::CopyFields()
{
    Sys_Printf("void CEntKeyFindReplace::CopyFields()\r\n");
}



void CEntKeyFindReplace::OnKeycopy() 
{
    Sys_Printf("void CEntKeyFindReplace::OnKeycopy()\r\n");
}


void CEntKeyFindReplace::OnValuecopy() 
{
    Sys_Printf("void CEntKeyFindReplace::OnValuecopy()\r\n");
}


