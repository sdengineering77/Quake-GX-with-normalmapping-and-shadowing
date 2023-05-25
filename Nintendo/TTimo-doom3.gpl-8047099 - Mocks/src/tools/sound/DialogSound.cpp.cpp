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

#include "../../game/game.h"
#include "../../sys/win32/win_local.h"
#include "../../sys/win32/rc/common_resource.h"
#include "../../sys/win32/rc/SoundEditor_resource.h"
#include "../comafx/DialogName.h"
#include "../../sys/win32/rc/DeclEditor_resource.h"
#include "../decl/DialogDeclEditor.h"

#include "DialogSound.h"
#include "DialogSoundGroup.h"

#ifdef ID_DEBUG_MEMORY
#undef new
#undef DEBUG_NEW
#define DEBUG_NEW new
#endif

extern HTREEITEM FindTreeItem(CTreeCtrl *tree, HTREEITEM root, const char *text, HTREEITEM forceParent);


/////////////////////////////////////////////////////////////////////////////
// CDialogSound dialog
CDialogSound *g_SoundDialog = NULL;


CDialogSound::CDialogSound(CWnd* pParent /*=NULL*/)
	: CDialog(CDialogSound::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDialogSound)
	strName = _T("");
	fVolume = 0.0f;
	fMax = 0.0f;
	fMin = 0.0f;
	strShader = _T("");
	bPlay = TRUE;
	bTriggered = FALSE;
	bOmni = FALSE;
	strGroup = _T("");
	bGroupOnly = FALSE;
	bOcclusion = FALSE;
	leadThrough = 0.0f;
	plain = FALSE;
	inUseTree = NULL;
	random = 0.0f;
	wait = 0.0f;
	shakes = 0.0f;
	looping = TRUE;
	unclamped = FALSE;
	//}}AFX_DATA_INIT
}


void CDialogSound::DoDataExchange(CDataExchange* pDX)
{
    Sys_Printf("void CDialogSound::DoDataExchange(CDataExchange* pDX)\r\n");
}



BEGIN_MESSAGE_MAP(CDialogSound, CDialog)
	//{{AFX_MSG_MAP(CDialogSound)
	ON_BN_CLICKED(IDC_BTN_SAVEMAP, OnBtnSavemap)
	ON_BN_CLICKED(IDC_BTN_SWITCHTOGAME, OnBtnSwitchtogame)
	ON_BN_CLICKED(IDC_BTN_APPLY_SOUND, OnBtnApply)
	ON_EN_CHANGE(IDC_EDIT_VOLUME, OnChangeEditVolume)
	ON_BN_CLICKED(IDC_BTN_REFRESH, OnBtnRefresh)
	ON_BN_CLICKED(IDC_BTN_PLAYSOUND, OnBtnPlaysound)
	ON_NOTIFY(NM_DBLCLK, IDC_TREE_SOUNDS, OnDblclkTreeSounds)
	ON_NOTIFY(TVN_SELCHANGED, IDC_TREE_SOUNDS, OnSelchangedTreeSounds)
	ON_BN_CLICKED(IDC_CHECK_PLAY, OnCheckPlay)
	ON_BN_CLICKED(IDC_BTN_EDIT_SOUND, OnBtnEdit)
	ON_BN_CLICKED(IDC_BTN_DROP, OnBtnDrop)
	ON_BN_CLICKED(IDC_BTN_GROUP, OnBtnGroup)
	ON_BN_CLICKED(IDC_BTN_SAVEMAPAS, OnBtnSavemapas)
	ON_BN_CLICKED(IDC_BTN_YUP, OnBtnYup)
	ON_BN_CLICKED(IDC_BTN_YDN, OnBtnYdn)
	ON_BN_CLICKED(IDC_BTN_XDN, OnBtnXdn)
	ON_BN_CLICKED(IDC_BTN_XUP, OnBtnXup)
	ON_BN_CLICKED(IDC_BTN_ZUP, OnBtnZup)
	ON_BN_CLICKED(IDC_BTN_ZDN, OnBtnZdn)
	ON_BN_CLICKED(IDC_BTN_TRIGGER, OnBtnTrigger)
	ON_WM_HSCROLL()
	ON_BN_CLICKED(IDC_CHECK_GROUPONLY, OnCheckGrouponly)
	ON_CBN_SELCHANGE(IDC_COMBO_GROUPS, OnSelchangeComboGroups)
	ON_CBN_SELCHANGE(IDC_COMBO_SPEAKERS, OnSelchangeComboSpeakers)
	ON_BN_CLICKED(IDC_BTN_DOWN, OnBtnDown)
	ON_BN_CLICKED(IDC_BTN_UP, OnBtnUp)
	ON_BN_CLICKED(IDC_BTN_REFRESHSPEAKERS, OnBtnRefreshspeakers)
	ON_BN_CLICKED(IDC_BTN_REFRESHWAVE, OnBtnRefreshwave)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDialogSound message handlers

void SoundEditorInit( const idDict *spawnArgs ) {
    Sys_Printf("void SoundEditorInit( const idDict *spawnArgs )\r\n");
}


void SoundEditorRun( void ) {
    Sys_Printf("void SoundEditorRun( void )\r\n");
}


void SoundEditorShutdown( void ) {
    Sys_Printf("void SoundEditorShutdown( void )\r\n");
}


void CDialogSound::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized ) {
    Sys_Printf("void CDialogSound::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized )\r\n");
}


void CDialogSound::OnMove( int x, int y ) {
    Sys_Printf("void CDialogSound::OnMove( int x, int y )\r\n");
}


void CDialogSound::OnDestroy() {
    Sys_Printf("void CDialogSound::OnDestroy()\r\n");
}


void CDialogSound::Set( const idDict *source ) {
    Sys_Printf("void CDialogSound::Set( const idDict *source )\r\n");
}


void CDialogSound::Get( idDict *source ) {
    Sys_Printf("void CDialogSound::Get( idDict *source )\r\n");
}


void CDialogSound::OnBtnSavemap() 
{
    Sys_Printf("void CDialogSound::OnBtnSavemap()\r\n");
}


void CDialogSound::OnBtnSwitchtogame() 
{
    Sys_Printf("void CDialogSound::OnBtnSwitchtogame()\r\n");
}


void CDialogSound::SetVolume( float vol ) {
    Sys_Printf("void CDialogSound::SetVolume( float vol )\r\n");
}


void CDialogSound::ApplyChanges( bool volumeOnly, bool updateInUseTree ) {
    Sys_Printf("void CDialogSound::ApplyChanges( bool volumeOnly, bool updateInUseTree )\r\n");
}


void CDialogSound::OnBtnApply() 
{
    Sys_Printf("void CDialogSound::OnBtnApply()\r\n");
}


void CDialogSound::OnChangeEditVolume() 
{
    Sys_Printf("void CDialogSound::OnChangeEditVolume()\r\n");
}


HTREEITEM CDialogSound::AddStrList(const char *root, const idStrList &list, int id) {
    HTREEITEM retVal;
    memset(&retVal, 0, sizeof(HTREEITEM));
    Sys_Printf("HTREEITEM CDialogSound::AddStrList(const char *root, const idStrList &list, int id)\r\n");
    return retVal;
}


void CDialogSound::AddSounds(bool rootItems) {
    Sys_Printf("void CDialogSound::AddSounds(bool rootItems)\r\n");
}


void CDialogSound::AddGroups() {
    Sys_Printf("void CDialogSound::AddGroups()\r\n");
}


void CDialogSound::AddInUseSounds() {
    Sys_Printf("void CDialogSound::AddInUseSounds()\r\n");
}


void CDialogSound::AddSpeakers() {
    Sys_Printf("void CDialogSound::AddSpeakers()\r\n");
}


BOOL CDialogSound::OnInitDialog() 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDialogSound::OnInitDialog()\r\n");
    return retVal;
}


void CDialogSound::OnBtnRefresh() 
{
    Sys_Printf("void CDialogSound::OnBtnRefresh()\r\n");
}


void CDialogSound::OnBtnPlaysound() 
{
    Sys_Printf("void CDialogSound::OnBtnPlaysound()\r\n");
}


void CDialogSound::OnDblclkTreeSounds(NMHDR* pNMHDR, LRESULT* pResult) 
{
    Sys_Printf("void CDialogSound::OnDblclkTreeSounds(NMHDR* pNMHDR, LRESULT* pResult)\r\n");
}


void CDialogSound::SetWaveSize( const char *p ) {
    Sys_Printf("void CDialogSound::SetWaveSize( const char *p )\r\n");
}


void CDialogSound::OnSelchangedTreeSounds(NMHDR* pNMHDR, LRESULT* pResult) 
{
    Sys_Printf("void CDialogSound::OnSelchangedTreeSounds(NMHDR* pNMHDR, LRESULT* pResult)\r\n");
}


void CDialogSound::OnCheckPlay() 
{
    Sys_Printf("void CDialogSound::OnCheckPlay()\r\n");
}


void CDialogSound::OnBtnEdit() 
{
    Sys_Printf("void CDialogSound::OnBtnEdit()\r\n");
}


void CDialogSound::OnBtnDrop() 
{
    Sys_Printf("void CDialogSound::OnBtnDrop()\r\n");
}


void CDialogSound::OnBtnGroup() 
{
    Sys_Printf("void CDialogSound::OnBtnGroup()\r\n");
}


void CDialogSound::OnBtnSavemapas() 
{
    Sys_Printf("void CDialogSound::OnBtnSavemapas()\r\n");
}


idStr CDialogSound::RebuildItemName(const char *root, HTREEITEM item) {
    idStr retVal;
    memset(&retVal, 0, sizeof(idStr));
    Sys_Printf("idStr CDialogSound::RebuildItemName(const char *root, HTREEITEM item)\r\n");
    return retVal;
}



void CDialogSound::UpdateSelectedOrigin( float x, float y, float z ) {
    Sys_Printf("void CDialogSound::UpdateSelectedOrigin( float x, float y, float z )\r\n");
}


void CDialogSound::OnBtnYup() 
{
    Sys_Printf("void CDialogSound::OnBtnYup()\r\n");
}


void CDialogSound::OnBtnYdn() 
{
    Sys_Printf("void CDialogSound::OnBtnYdn()\r\n");
}


void CDialogSound::OnBtnXdn() 
{
    Sys_Printf("void CDialogSound::OnBtnXdn()\r\n");
}


void CDialogSound::OnBtnXup() 
{
    Sys_Printf("void CDialogSound::OnBtnXup()\r\n");
}


void CDialogSound::OnBtnZup() 
{
    Sys_Printf("void CDialogSound::OnBtnZup()\r\n");
}


void CDialogSound::OnBtnZdn() 
{
    Sys_Printf("void CDialogSound::OnBtnZdn()\r\n");
}


void CDialogSound::OnBtnTrigger() {
    Sys_Printf("void CDialogSound::OnBtnTrigger()\r\n");
}


void CDialogSound::OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar) {
    Sys_Printf("void CDialogSound::OnHScroll(UINT nSBCode, UINT nPos, CScrollBar* pScrollBar)\r\n");
}



void CDialogSound::OnCheckGrouponly() 
{
    Sys_Printf("void CDialogSound::OnCheckGrouponly()\r\n");
}


void CDialogSound::OnSelchangeComboGroups() {
    Sys_Printf("void CDialogSound::OnSelchangeComboGroups()\r\n");
}


void CDialogSound::OnSelchangeComboSpeakers() {
    Sys_Printf("void CDialogSound::OnSelchangeComboSpeakers()\r\n");
}


void CDialogSound::OnBtnDown() {
    Sys_Printf("void CDialogSound::OnBtnDown()\r\n");
}


void CDialogSound::OnBtnUp() {
    Sys_Printf("void CDialogSound::OnBtnUp()\r\n");
}


void CDialogSound::OnBtnRefreshspeakers() 
{
    Sys_Printf("void CDialogSound::OnBtnRefreshspeakers()\r\n");
}


void CDialogSound::OnBtnRefreshwave() 
{
    Sys_Printf("void CDialogSound::OnBtnRefreshwave()\r\n");
}


BOOL CDialogSound::PreTranslateMessage(MSG* pMsg)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDialogSound::PreTranslateMessage(MSG* pMsg)\r\n");
    return retVal;
}

