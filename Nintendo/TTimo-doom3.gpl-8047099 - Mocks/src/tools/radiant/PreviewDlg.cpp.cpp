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
#include "WaitDlg.h"
#include "PreviewDlg.h"
#include "CommentsDlg.h"

const int PARENTID = 99999;

extern HTREEITEM FindTreeItem(CTreeCtrl *tree, HTREEITEM root, const char *text, HTREEITEM forceParent);

// CPreviewDlg dialog

IMPLEMENT_DYNAMIC(CPreviewDlg, CDialog)
CPreviewDlg::CPreviewDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CPreviewDlg::IDD, pParent)
{
	currentMode = MODELS;
	disablePreview = false;
}

CPreviewDlg::~CPreviewDlg()
{
}

void CPreviewDlg::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CPreviewDlg::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CPreviewDlg, CDialog)
	ON_NOTIFY(TVN_SELCHANGED, IDC_TREE_MEDIA, OnTvnSelchangedTreeMedia)
	ON_BN_CLICKED(IDC_BUTTON_RELOAD, OnBnClickedButtonReload)
	ON_BN_CLICKED(IDC_BUTTON_ADD, OnBnClickedButtonAdd)
	ON_BN_CLICKED(IDC_BUTTON_PLAY, OnBnClickedButtonPlay)
END_MESSAGE_MAP()


// CPreviewDlg message handlers

BOOL CPreviewDlg::OnInitDialog()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPreviewDlg::OnInitDialog()\r\n");
    return retVal;
}


void CPreviewDlg::BuildTree() {
    Sys_Printf("void CPreviewDlg::BuildTree()\r\n");
}


void CPreviewDlg::RebuildTree( const char *_data ) {
    Sys_Printf("void CPreviewDlg::RebuildTree( const char *_data )\r\n");
}


void CPreviewDlg::AddCommentedItems() {
    Sys_Printf("void CPreviewDlg::AddCommentedItems()\r\n");
}

	


void CPreviewDlg::AddStrList( const char *root, const idStrList &list, int id ) {
    Sys_Printf("void CPreviewDlg::AddStrList( const char *root, const idStrList &list, int id )\r\n");
}


void CPreviewDlg::OnTvnSelchangedTreeMedia(NMHDR *pNMHDR, LRESULT *pResult)
{
    Sys_Printf("void CPreviewDlg::OnTvnSelchangedTreeMedia(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}



BOOL CPreviewDlg::Create(LPCTSTR lpszTemplateName, CWnd* pParentWnd)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CPreviewDlg::Create(LPCTSTR lpszTemplateName, CWnd* pParentWnd)\r\n");
    return retVal;
}


void CPreviewDlg::OnCancel()
{
    Sys_Printf("void CPreviewDlg::OnCancel()\r\n");
}


void CPreviewDlg::OnOK()
{
    Sys_Printf("void CPreviewDlg::OnOK()\r\n");
}


bool CPreviewDlg::Waiting() {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CPreviewDlg::Waiting()\r\n");
    return retVal;
}


void CPreviewDlg::SetModal() {
    Sys_Printf("void CPreviewDlg::SetModal()\r\n");
}

void CPreviewDlg::OnBnClickedButtonReload()
{
    Sys_Printf("void CPreviewDlg::OnBnClickedButtonReload()\r\n");
}


void CPreviewDlg::OnBnClickedButtonAdd()
{
    Sys_Printf("void CPreviewDlg::OnBnClickedButtonAdd()\r\n");
}



void CPreviewDlg::AddSounds(bool rootItems) {
    Sys_Printf("void CPreviewDlg::AddSounds(bool rootItems)\r\n");
}


void CPreviewDlg::SetMode( int mode, const char *preSelect ) {
    Sys_Printf("void CPreviewDlg::SetMode( int mode, const char *preSelect )\r\n");
}


void CPreviewDlg::OnBnClickedButtonPlay() {
    Sys_Printf("void CPreviewDlg::OnBnClickedButtonPlay()\r\n");
}


void CPreviewDlg::AddMaterials(bool rootItems) {
    Sys_Printf("void CPreviewDlg::AddMaterials(bool rootItems)\r\n");
}


void CPreviewDlg::AddParticles(bool rootItems) {
    Sys_Printf("void CPreviewDlg::AddParticles(bool rootItems)\r\n");
}


void CPreviewDlg::AddSkins( bool rootItems ) {
    Sys_Printf("void CPreviewDlg::AddSkins( bool rootItems )\r\n");
}


void CPreviewDlg::OnShowWindow( BOOL bShow, UINT status ) {
    Sys_Printf("void CPreviewDlg::OnShowWindow( BOOL bShow, UINT status )\r\n");
}

