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

#include "../../sys/win32/rc/common_resource.h"
#include "../comafx/DialogName.h"

#include "qe3.h"
#include "DlgCamera.h"
#include "DlgEvent.h"
#include "splines.h"
#include "CameraTargetDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

CDlgCamera g_dlgCamera;


void showCameraInspector() {
    Sys_Printf("void showCameraInspector()\r\n");
}

/////////////////////////////////////////////////////////////////////////////
// CDlgCamera dialog


CDlgCamera::CDlgCamera(CWnd* pParent /*=NULL*/)
	: CDialog(CDlgCamera::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDlgCamera)
	m_strName = _T("");
	m_fSeconds = 0.0f;
	m_trackCamera = TRUE;
	m_numSegments = 0;
	m_currentSegment = 0;
	m_strType = _T("");
	m_editPoints = 0;
	//}}AFX_DATA_INIT
}


void CDlgCamera::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CDlgCamera::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CDlgCamera, CDialog)
	//{{AFX_MSG_MAP(CDlgCamera)
	ON_BN_CLICKED(IDC_BTN_ADDEVENT, OnBtnAddevent)
	ON_BN_CLICKED(IDC_BTN_ADDTARGET, OnBtnAddtarget)
	ON_BN_CLICKED(IDC_BTN_DELEVENT, OnBtnDelevent)
	ON_CBN_DBLCLK(IDC_COMBO_SPLINES, OnDblclkComboSplines)
	ON_CBN_SELCHANGE(IDC_COMBO_SPLINES, OnSelchangeComboSplines)
	ON_LBN_SELCHANGE(IDC_LIST_EVENTS, OnSelchangeListEvents)
	ON_LBN_DBLCLK(IDC_LIST_EVENTS, OnDblclkListEvents)
	ON_WM_DESTROY()
	ON_BN_CLICKED(IDC_APPLY, OnApply)
	ON_WM_HSCROLL()
	ON_BN_CLICKED(ID_FILE_NEW, OnFileNew)
	ON_BN_CLICKED(ID_FILE_OPEN, OnFileOpen)
	ON_BN_CLICKED(ID_FILE_SAVE, OnFileSave)
	ON_BN_CLICKED(IDC_TESTCAMERA, OnTestcamera)
	ON_BN_CLICKED(IDC_BTN_DELETEPOINTS, OnBtnDeletepoints)
	ON_BN_CLICKED(IDC_BTN_SELECTALL, OnBtnSelectall)
	ON_BN_CLICKED(IDC_RADIO_EDITPOINTS, OnRadioEditpoints)
	ON_BN_CLICKED(IDC_RADIO_EDITPOINTS2, OnRadioAddPoints)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDlgCamera message handlers

void CDlgCamera::OnBtnAddevent() 
{
    Sys_Printf("void CDlgCamera::OnBtnAddevent()\r\n");
}


void CDlgCamera::OnBtnAddtarget() 
{
    Sys_Printf("void CDlgCamera::OnBtnAddtarget()\r\n");
}


void CDlgCamera::OnBtnDelevent() 
{
    Sys_Printf("void CDlgCamera::OnBtnDelevent()\r\n");
}


void CDlgCamera::OnBtnDeltarget() 
{
    Sys_Printf("void CDlgCamera::OnBtnDeltarget()\r\n");
}


void CDlgCamera::OnDblclkComboSplines() 
{
    Sys_Printf("void CDlgCamera::OnDblclkComboSplines()\r\n");
}


void CDlgCamera::OnSelchangeComboSplines() 
{
    Sys_Printf("void CDlgCamera::OnSelchangeComboSplines()\r\n");
}


void CDlgCamera::OnSelchangeListEvents() 
{
    Sys_Printf("void CDlgCamera::OnSelchangeListEvents()\r\n");
}


void CDlgCamera::OnDblclkListEvents() 
{
    Sys_Printf("void CDlgCamera::OnDblclkListEvents()\r\n");
}


void CDlgCamera::setupFromCamera()
{
    Sys_Printf("void CDlgCamera::setupFromCamera()\r\n");
}


BOOL CDlgCamera::OnInitDialog() 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDlgCamera::OnInitDialog()\r\n");
    return retVal;
}


void CDlgCamera::OnOK() 
{
    Sys_Printf("void CDlgCamera::OnOK()\r\n");
}


void CDlgCamera::OnDestroy() 
{
    Sys_Printf("void CDlgCamera::OnDestroy()\r\n");
}



void CDlgCamera::OnApply() 
{
    Sys_Printf("void CDlgCamera::OnApply()\r\n");
}


void CDlgCamera::OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar) 
{
    Sys_Printf("void CDlgCamera::OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar)\r\n");
}


void CDlgCamera::OnFileNew() 
{
    Sys_Printf("void CDlgCamera::OnFileNew()\r\n");
}


void CDlgCamera::OnFileOpen() 
{
    Sys_Printf("void CDlgCamera::OnFileOpen()\r\n");
}


void CDlgCamera::OnFileSave() 
{
    Sys_Printf("void CDlgCamera::OnFileSave()\r\n");
}


void CDlgCamera::OnTestcamera() 
{
    Sys_Printf("void CDlgCamera::OnTestcamera()\r\n");
}


void CDlgCamera::OnBtnDeletepoints() 
{
    Sys_Printf("void CDlgCamera::OnBtnDeletepoints()\r\n");
}


void CDlgCamera::OnBtnSelectall() 
{
    Sys_Printf("void CDlgCamera::OnBtnSelectall()\r\n");
}


void CDlgCamera::OnRadioEditpoints() 
{
    Sys_Printf("void CDlgCamera::OnRadioEditpoints()\r\n");
}


void CDlgCamera::OnRadioAddPoints() 
{
    Sys_Printf("void CDlgCamera::OnRadioAddPoints()\r\n");
}

