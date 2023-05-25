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

#include "../../sys/win32/rc/DeclEditor_resource.h"
#include "../../sys/win32/rc/ScriptEditor_resource.h"

#include "../comafx/CPathTreeCtrl.h"
#include "../script/DialogScriptEditor.h"
#include "DialogDeclBrowser.h"
#include "DialogDeclEditor.h"
#include "DialogDeclNew.h"

#ifdef ID_DEBUG_MEMORY
#undef new
#undef DEBUG_NEW
#define DEBUG_NEW new
#endif

const int DECLTYPE_SHIFT			= 24;
const int DECLINDEX_MASK			= ( 1 << DECLTYPE_SHIFT ) - 1;
const int DECLTYPE_SCRIPT			= 126;
const int DECLTYPE_GUI				= 127;

#define GetIdFromTypeAndIndex( type, index )		( ( (int)type << DECLTYPE_SHIFT ) | index )
#define GetTypeFromId( id )							( (declType_t) ( (int)id >> DECLTYPE_SHIFT ) )
#define GetIndexFromId( id )						( (int)id & DECLINDEX_MASK )

toolTip_t DialogDeclBrowser::toolTips[] = {
	{ IDC_DECLBROWSER_TREE, "decl browser" },
	{ IDC_DECLBROWSER_EDIT_SEARCH_NAMES, "search for declarations with matching name, use meta characters: *, ? and [abc...]" },
	{ IDC_DECLBROWSER_EDIT_SEARCH_TEXT, "search for declarations containing text" },
	{ IDC_DECLBROWSER_BUTTON_FIND, "find declarations matching the search strings" },
	{ IDC_DECLBROWSER_BUTTON_EDIT, "edit selected declaration" },
	{ IDC_DECLBROWSER_BUTTON_NEW, "create new declaration" },
	{ IDC_DECLBROWSER_BUTTON_RELOAD, "reload declarations" },
	{ IDOK, "ok" },
	{ IDCANCEL, "cancel" },
	{ 0, NULL }
};


static DialogDeclBrowser *g_DeclDialog = NULL;


IMPLEMENT_DYNAMIC(DialogDeclBrowser, CDialog)

/*
================
DialogDeclBrowser::DialogDeclBrowser
================
*/
DialogDeclBrowser::DialogDeclBrowser( CWnd* pParent /*=NULL*/ )
	: CDialog(DialogDeclBrowser::IDD, pParent)
	, m_pchTip(NULL)
	, m_pwchTip(NULL)
{
}

/*
================
DialogDeclBrowser::~DialogDeclBrowser
================
*/
DialogDeclBrowser::~DialogDeclBrowser() {
	delete m_pwchTip;
	delete m_pchTip;
}

/*
================
DialogDeclBrowser::DoDataExchange
================
*/
void DialogDeclBrowser::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void DialogDeclBrowser::DoDataExchange(CDataExchange* pDX)\r\n");
}


/*
================
DialogDeclBrowser::AddDeclTypeToTree
================
*/
template< class type >
int idListDeclSortCompare( const type *a, const type *b ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idListDeclSortCompare( const type *a, const type *b )\r\n");
    return retVal;
}


void DialogDeclBrowser::AddDeclTypeToTree( declType_t type, const char *root, CPathTreeCtrl &tree ) {
    Sys_Printf("void DialogDeclBrowser::AddDeclTypeToTree( declType_t type, const char *root, CPathTreeCtrl &tree )\r\n");
}


/*
================
DialogDeclBrowser::AddScriptsToTree
================
*/
void DialogDeclBrowser::AddScriptsToTree( CPathTreeCtrl &tree ) {
    Sys_Printf("void DialogDeclBrowser::AddScriptsToTree( CPathTreeCtrl &tree )\r\n");
}


/*
================
DialogDeclBrowser::AddGUIsToTree
================
*/
void DialogDeclBrowser::AddGUIsToTree( CPathTreeCtrl &tree ) {
    Sys_Printf("void DialogDeclBrowser::AddGUIsToTree( CPathTreeCtrl &tree )\r\n");
}


/*
================
DialogDeclBrowser::InitBaseDeclTree
================
*/
void DialogDeclBrowser::InitBaseDeclTree( void ) {
    Sys_Printf("void DialogDeclBrowser::InitBaseDeclTree( void )\r\n");
}


/*
================
DialogDeclBrowser::GetDeclName
================
*/
void DialogDeclBrowser::GetDeclName( HTREEITEM item, idStr &typeName, idStr &declName ) const {
    Sys_Printf("void DialogDeclBrowser::GetDeclName( HTREEITEM item, idStr &typeName, idStr &declName )\r\n");
}


/*
================
DialogDeclBrowser::GetDeclFromTreeItem
================
*/
const idDecl *DialogDeclBrowser::GetDeclFromTreeItem( HTREEITEM item ) const {
    Sys_Printf("idDecl *DialogDeclBrowser::GetDeclFromTreeItem( HTREEITEM item )\r\n");
    return NULL;
}


/*
================
DialogDeclBrowser::GetSelectedDecl
================
*/
const idDecl *DialogDeclBrowser::GetSelectedDecl( void ) const {
    Sys_Printf("idDecl *DialogDeclBrowser::GetSelectedDecl( void )\r\n");
    return NULL;
}


/*
================
DialogDeclBrowser::EditSelected
================
*/
void DialogDeclBrowser::EditSelected( void ) const {
    Sys_Printf("void DialogDeclBrowser::EditSelected( void )\r\n");
}


/*
================
DeclBrowserCompareDecl
================
*/
bool DeclBrowserCompareDecl( void *data, HTREEITEM item, const char *name ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool DeclBrowserCompareDecl( void *data, HTREEITEM item, const char *name )\r\n");
    return retVal;
}


/*
================
DialogDeclBrowser::CompareDecl
================
*/
bool DialogDeclBrowser::CompareDecl( HTREEITEM item, const char *name ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool DialogDeclBrowser::CompareDecl( HTREEITEM item, const char *name )\r\n");
    return retVal;
}


/*
================
DialogDeclBrowser::OnInitDialog
================
*/
BOOL DialogDeclBrowser::OnInitDialog()  {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogDeclBrowser::OnInitDialog()\r\n");
    return retVal;
}


/*
================
DeclBrowserInit
================
*/
void DeclBrowserInit( const idDict *spawnArgs ) {
    Sys_Printf("void DeclBrowserInit( const idDict *spawnArgs )\r\n");
}


/*
================
DeclBrowserRun
================
*/
void DeclBrowserRun( void ) {
    Sys_Printf("void DeclBrowserRun( void )\r\n");
}


/*
================
DeclBrowserShutdown
================
*/
void DeclBrowserShutdown( void ) {
    Sys_Printf("void DeclBrowserShutdown( void )\r\n");
}


/*
================
DeclBrowserReloadDeclarations
================
*/
void DeclBrowserReloadDeclarations( void ) {
    Sys_Printf("void DeclBrowserReloadDeclarations( void )\r\n");
}


/*
================
DialogDeclBrowser::ReloadDeclarations
================
*/
void DialogDeclBrowser::ReloadDeclarations( void ) {
    Sys_Printf("void DialogDeclBrowser::ReloadDeclarations( void )\r\n");
}


BEGIN_MESSAGE_MAP(DialogDeclBrowser, CDialog)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTW, 0, 0xFFFF, OnToolTipNotify)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTA, 0, 0xFFFF, OnToolTipNotify)
	ON_WM_DESTROY()
	ON_WM_ACTIVATE()
	ON_WM_MOVE()
	ON_WM_SIZE()
	ON_WM_SIZING()
	ON_WM_SETFOCUS()
	ON_NOTIFY(TVN_SELCHANGED, IDC_DECLBROWSER_TREE, OnTreeSelChanged)
	ON_NOTIFY(NM_DBLCLK, IDC_DECLBROWSER_TREE, OnTreeDblclk)
	ON_BN_CLICKED(IDC_DECLBROWSER_BUTTON_FIND, OnBnClickedFind)
	ON_BN_CLICKED(IDC_DECLBROWSER_BUTTON_EDIT, OnBnClickedEdit)
	ON_BN_CLICKED(IDC_DECLBROWSER_BUTTON_NEW, OnBnClickedNew)
	ON_BN_CLICKED(IDC_DECLBROWSER_BUTTON_RELOAD, OnBnClickedReload)
	ON_BN_CLICKED(IDOK, OnBnClickedOk)
	ON_BN_CLICKED(IDCANCEL, OnBnClickedCancel)
END_MESSAGE_MAP()

// DialogDeclBrowser message handlers

/*
================
DialogDeclBrowser::OnActivate
================
*/
void DialogDeclBrowser::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized ) {
    Sys_Printf("void DialogDeclBrowser::OnActivate( UINT nState, CWnd *pWndOther, BOOL bMinimized )\r\n");
}


/*
================
DialogDeclBrowser::OnToolTipNotify
================
*/
BOOL DialogDeclBrowser::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogDeclBrowser::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


/*
================
DialogDeclBrowser::OnSetFocus
================
*/
void DialogDeclBrowser::OnSetFocus( CWnd *pOldWnd ) {
    Sys_Printf("void DialogDeclBrowser::OnSetFocus( CWnd *pOldWnd )\r\n");
}


/*
================
DialogDeclBrowser::OnDestroy
================
*/
void DialogDeclBrowser::OnDestroy() {
    Sys_Printf("void DialogDeclBrowser::OnDestroy()\r\n");
}


/*
================
DialogDeclBrowser::OnMove
================
*/
void DialogDeclBrowser::OnMove( int x, int y ) {
    Sys_Printf("void DialogDeclBrowser::OnMove( int x, int y )\r\n");
}


/*
================
DialogDeclBrowser::OnMove
================
*/
#define BORDER_SIZE			4
#define BUTTON_SPACE		4
#define TOOLBAR_HEIGHT		24

void DialogDeclBrowser::OnSize( UINT nType, int cx, int cy ) {
    Sys_Printf("void DialogDeclBrowser::OnSize( UINT nType, int cx, int cy )\r\n");
}


/*
================
DialogDeclBrowser::OnSizing
================
*/
void DialogDeclBrowser::OnSizing( UINT nSide, LPRECT lpRect ) {
    Sys_Printf("void DialogDeclBrowser::OnSizing( UINT nSide, LPRECT lpRect )\r\n");
}


/*
================
DialogDeclBrowser::OnTreeSelChanged
================
*/
void DialogDeclBrowser::OnTreeSelChanged( NMHDR* pNMHDR, LRESULT* pResult ) {
    Sys_Printf("void DialogDeclBrowser::OnTreeSelChanged( NMHDR* pNMHDR, LRESULT* pResult )\r\n");
}


/*
================
DialogDeclBrowser::OnTreeDblclk
================
*/
void DialogDeclBrowser::OnTreeDblclk( NMHDR *pNMHDR, LRESULT *pResult ) {
    Sys_Printf("void DialogDeclBrowser::OnTreeDblclk( NMHDR *pNMHDR, LRESULT *pResult )\r\n");
}


/*
================
DialogDeclBrowser::OnBnClickedFind
================
*/
void DialogDeclBrowser::OnBnClickedFind() {
    Sys_Printf("void DialogDeclBrowser::OnBnClickedFind()\r\n");
}


/*
================
DialogDeclBrowser::OnBnClickedEdit
================
*/
void DialogDeclBrowser::OnBnClickedEdit() {
    Sys_Printf("void DialogDeclBrowser::OnBnClickedEdit()\r\n");
}


/*
================
DialogDeclBrowser::OnBnClickedNew
================
*/
void DialogDeclBrowser::OnBnClickedNew() {
    Sys_Printf("void DialogDeclBrowser::OnBnClickedNew()\r\n");
}


/*
================
DialogDeclBrowser::OnBnClickedReload
================
*/
void DialogDeclBrowser::OnBnClickedReload() {
    Sys_Printf("void DialogDeclBrowser::OnBnClickedReload()\r\n");
}


/*
================
DialogDeclBrowser::OnBnClickedOk
================
*/
void DialogDeclBrowser::OnBnClickedOk() {
    Sys_Printf("void DialogDeclBrowser::OnBnClickedOk()\r\n");
}


/*
================
DialogDeclBrowser::OnBnClickedCancel
================
*/
void DialogDeclBrowser::OnBnClickedCancel() {
    Sys_Printf("void DialogDeclBrowser::OnBnClickedCancel()\r\n");
}

