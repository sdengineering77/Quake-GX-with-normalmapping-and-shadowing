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
#include "mediapreviewdlg.h"


// CMediaPreviewDlg dialog

IMPLEMENT_DYNAMIC(CMediaPreviewDlg, CDialog)
CMediaPreviewDlg::CMediaPreviewDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CMediaPreviewDlg::IDD, pParent)
{
	mode = MATERIALS;
	media = "";
}

void CMediaPreviewDlg::SetMedia(const char *_media) {
    Sys_Printf("void CMediaPreviewDlg::SetMedia(const char *_media)\r\n");
}


void CMediaPreviewDlg::Refresh() {
    Sys_Printf("void CMediaPreviewDlg::Refresh()\r\n");
}


CMediaPreviewDlg::~CMediaPreviewDlg()
{
}

void CMediaPreviewDlg::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CMediaPreviewDlg::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CMediaPreviewDlg, CDialog)
	ON_WM_SIZE()
	ON_WM_DESTROY()
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_MOUSEMOVE()
END_MESSAGE_MAP()


// CMediaPreviewDlg message handlers

BOOL CMediaPreviewDlg::OnInitDialog()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CMediaPreviewDlg::OnInitDialog()\r\n");
    return retVal;
}


void CMediaPreviewDlg::OnSize(UINT nType, int cx, int cy)
{
    Sys_Printf("void CMediaPreviewDlg::OnSize(UINT nType, int cx, int cy)\r\n");
}


void CMediaPreviewDlg::OnDestroy()
{
    Sys_Printf("void CMediaPreviewDlg::OnDestroy()\r\n");
}


void CMediaPreviewDlg::OnLButtonDown(UINT nFlags, CPoint point)
{
    Sys_Printf("void CMediaPreviewDlg::OnLButtonDown(UINT nFlags, CPoint point)\r\n");
}


void CMediaPreviewDlg::OnLButtonUp(UINT nFlags, CPoint point)
{
    Sys_Printf("void CMediaPreviewDlg::OnLButtonUp(UINT nFlags, CPoint point)\r\n");
}


void CMediaPreviewDlg::OnMouseMove(UINT nFlags, CPoint point)
{
    Sys_Printf("void CMediaPreviewDlg::OnMouseMove(UINT nFlags, CPoint point)\r\n");
}

