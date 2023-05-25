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
#include "DialogTextures.h"
#include "DialogInfo.h"
#include "EditViewDlg.h"

#ifdef _DEBUG
	#define new DEBUG_NEW
	#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif												    

HTREEITEM FindTreeItem(CTreeCtrl *tree, HTREEITEM root, const char *text, HTREEITEM forceParent);
extern void Select_SetKeyVal(const char *key, const char *val);

const char *CDialogTextures::TypeNames[] = {
	"None",
	"Textures",
	"Materials",
	"Models",
	"Scripts",
	"Sounds",
	"SoundParent",
	"Guis",
	"Particles",
	"Fx"
};

//
// =======================================================================================================================
//    CDialogTextures dialog
// =======================================================================================================================
//
CDialogTextures::CDialogTextures(CWnd *pParent /* =NULL */ ) :
	CDialog(CDialogTextures::IDD, pParent) {
		setTexture  = true;
		ignoreCollapse = false;
		mode = TEXTURES;
		editMaterial = NULL;
		editGui = "";
	//{{AFX_DATA_INIT(CDialogTextures)
	//}}AFX_DATA_INIT
}

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CDialogTextures::DoDataExchange(CDataExchange *pDX) {
    Sys_Printf("void CDialogTextures::DoDataExchange(CDataExchange *pDX)\r\n");
}


BEGIN_MESSAGE_MAP(CDialogTextures, CDialog)
//{{AFX_MSG_MAP(CDialogTextures)
	ON_BN_CLICKED(IDC_LOAD, OnLoad)
	ON_BN_CLICKED(IDC_REFRESH, OnRefresh)
	ON_NOTIFY(NM_CLICK, IDC_TREE_TEXTURES, OnClickTreeTextures)
	ON_NOTIFY(TVN_SELCHANGED, IDC_TREE_TEXTURES, OnSelchangedTreeTextures)
	ON_NOTIFY(NM_DBLCLK, IDC_TREE_TEXTURES, OnDblclkTreeTextures)
	ON_BN_CLICKED(IDC_PREVIEW, OnPreview)
	ON_WM_CREATE()
	ON_WM_SIZE()
	ON_BN_CLICKED(IDC_CHECK_HIDEROOT, OnCheckHideroot)
	ON_COMMAND(ID_MATERIAL_EDIT, OnMaterialEdit)
	ON_COMMAND(ID_MATERIAL_INFO, OnMaterialInfo)
	//}}AFX_MSG_MAP
	ON_WM_SETFOCUS()
	ON_NOTIFY(NM_RCLICK, IDC_TREE_TEXTURES, OnNMRclickTreeTextures)
END_MESSAGE_MAP()
//
// =======================================================================================================================
//    CDialogTextures message handlers
// =======================================================================================================================
//
void CDialogTextures::OnOK() {
    Sys_Printf("void CDialogTextures::OnOK()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
BOOL CDialogTextures::OnInitDialog() {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDialogTextures::OnInitDialog()\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
bool CDialogTextures::loadTree( HTREEITEM item, const idStr &name, CWaitDlg *dlg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CDialogTextures::loadTree( HTREEITEM item, const idStr &name, CWaitDlg *dlg )\r\n");
    return retVal;
}


HTREEITEM CDialogTextures::findItem(const char *name, HTREEITEM item, HTREEITEM *foundItem) {
    HTREEITEM retVal;
    memset(&retVal, 0, sizeof(HTREEITEM));
    Sys_Printf("HTREEITEM CDialogTextures::findItem(const char *name, HTREEITEM item, HTREEITEM *foundItem)\r\n");
    return retVal;
}


void CDialogTextures::CollapseChildren(HTREEITEM parent) {
    Sys_Printf("void CDialogTextures::CollapseChildren(HTREEITEM parent)\r\n");
}


void CDialogTextures::SelectCurrentItem(bool collapse, const char *name, int id) {
    Sys_Printf("void CDialogTextures::SelectCurrentItem(bool collapse, const char *name, int id)\r\n");
}


void CDialogTextures::OnLoad() {
    Sys_Printf("void CDialogTextures::OnLoad()\r\n");
}


const char *CDialogTextures::buildItemName(HTREEITEM item, const char *rootName) {
    Sys_Printf("char *CDialogTextures::buildItemName(HTREEITEM item, const char *rootName)\r\n");
    return NULL;
}

/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CDialogTextures::OnRefresh() {
    Sys_Printf("void CDialogTextures::OnRefresh()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
HTREEITEM FindTreeItem(CTreeCtrl *tree, HTREEITEM root, const char *text, HTREEITEM forceParent) {
    HTREEITEM retVal;
    memset(&retVal, 0, sizeof(HTREEITEM));
    Sys_Printf("HTREEITEM FindTreeItem(CTreeCtrl *tree, HTREEITEM root, const char *text, HTREEITEM forceParent)\r\n");
    return retVal;
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CDialogTextures::BuildTree() {
    Sys_Printf("void CDialogTextures::BuildTree()\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CDialogTextures::OnClickTreeTextures(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void CDialogTextures::OnClickTreeTextures(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CDialogTextures::OnSelchangedTreeTextures(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void CDialogTextures::OnSelchangedTreeTextures(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CDialogTextures::addMaterials( bool rootItems ) {
    Sys_Printf("void CDialogTextures::addMaterials( bool rootItems )\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CDialogTextures::addParticles( bool rootItems ) {
    Sys_Printf("void CDialogTextures::addParticles( bool rootItems )\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CDialogTextures::addSounds(bool rootItems) {
    Sys_Printf("void CDialogTextures::addSounds(bool rootItems)\r\n");
}

 
void CDialogTextures::addStrList( const char *root, const idStrList &list, int id ) {
    Sys_Printf("void CDialogTextures::addStrList( const char *root, const idStrList &list, int id )\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CDialogTextures::addModels(bool rootItems) {
    Sys_Printf("void CDialogTextures::addModels(bool rootItems)\r\n");
}


void CDialogTextures::addGuis( bool rootItems ) {
    Sys_Printf("void CDialogTextures::addGuis( bool rootItems )\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CDialogTextures::addScripts(bool rootItems) {
    Sys_Printf("void CDialogTextures::addScripts(bool rootItems)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CDialogTextures::OnDblclkTreeTextures(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void CDialogTextures::OnDblclkTreeTextures(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


/*
 =======================================================================================================================
 =======================================================================================================================
 */
void CDialogTextures::OnPreview() {
    Sys_Printf("void CDialogTextures::OnPreview()\r\n");
}



//void CDialogTextures::OnSave() 
//{
/*
	CString str;
	m_wndEditShader.GetWindowText(str);
	if (currentFile.length() && str.GetLength()) {
		fileSystem->WriteFile(currentFile, str.GetBuffer(0), str.GetLength());
	}
*/
//}

int CDialogTextures::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CDialogTextures::OnCreate(LPCREATESTRUCT lpCreateStruct)\r\n");
    return retVal;
}


void CDialogTextures::OnSize(UINT nType, int cx, int cy) 
{
    Sys_Printf("void CDialogTextures::OnSize(UINT nType, int cx, int cy)\r\n");
}


BOOL CDialogTextures::PreCreateWindow(CREATESTRUCT& cs) 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDialogTextures::PreCreateWindow(CREATESTRUCT& cs)\r\n");
    return retVal;
}


void CDialogTextures::OnCheckHideroot() 
{
    Sys_Printf("void CDialogTextures::OnCheckHideroot()\r\n");
}


void CDialogTextures::CollapseEditor() {
    Sys_Printf("void CDialogTextures::CollapseEditor()\r\n");
}



void CDialogTextures::OnCancel() {
    Sys_Printf("void CDialogTextures::OnCancel()\r\n");
}



BOOL CDialogTextures::PreTranslateMessage(MSG* pMsg)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDialogTextures::PreTranslateMessage(MSG* pMsg)\r\n");
    return retVal;
}


void CDialogTextures::OnSetFocus(CWnd* pOldWnd)
{
    Sys_Printf("void CDialogTextures::OnSetFocus(CWnd* pOldWnd)\r\n");
}


void CDialogTextures::OnNMRclickTreeTextures(NMHDR *pNMHDR, LRESULT *pResult)
{
    Sys_Printf("void CDialogTextures::OnNMRclickTreeTextures(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void CDialogTextures::OnMaterialEdit() {
    Sys_Printf("void CDialogTextures::OnMaterialEdit()\r\n");
}


void CDialogTextures::OnMaterialInfo() {
    Sys_Printf("void CDialogTextures::OnMaterialInfo()\r\n");
}

