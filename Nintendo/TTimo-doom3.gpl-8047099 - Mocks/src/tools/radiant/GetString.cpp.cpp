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

#include "qe3.h"
#include "Radiant.h"

#include "GetString.h"

// CGetString dialog


CGetString::CGetString(LPCSTR pPrompt, CString *pFeedback, CWnd* pParent /*=NULL*/)
	: CDialog(CGetString::IDD, pParent)
{
	m_strEditBox = _T("");

	m_pFeedback = pFeedback;
	m_pPrompt	= pPrompt;
}

CGetString::~CGetString()
{
}

void CGetString::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CGetString::DoDataExchange(CDataExchange* pDX)\r\n");
}


BOOL CGetString::OnInitDialog()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CGetString::OnInitDialog()\r\n");
    return retVal;
}


BEGIN_MESSAGE_MAP(CGetString, CDialog)
	//{{AFX_MSG_MAP(CGetString)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()



void CGetString::OnOK() 
{
    Sys_Printf("void CGetString::OnOK()\r\n");
}



// returns NULL if CANCEL, else input string
//
LPCSTR GetString(LPCSTR psPrompt)
{
    LPCSTR retVal;
    memset(&retVal, 0, sizeof(LPCSTR));
    Sys_Printf("LPCSTR GetString(LPCSTR psPrompt)\r\n");
    return retVal;
}



bool GetYesNo(const char *psQuery)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool GetYesNo(const char *psQuery)\r\n");
    return retVal;
}


void ErrorBox(const char *sString)
{
    Sys_Printf("void ErrorBox(const char *sString)\r\n");
}

void InfoBox(const char *sString)
{
    Sys_Printf("void InfoBox(const char *sString)\r\n");
}

void WarningBox(const char *sString)
{
    Sys_Printf("void WarningBox(const char *sString)\r\n");
}




