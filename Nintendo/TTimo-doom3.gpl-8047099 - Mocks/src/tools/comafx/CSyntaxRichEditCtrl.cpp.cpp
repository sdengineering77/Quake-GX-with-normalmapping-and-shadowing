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

#include "CSyntaxRichEditCtrl.h"

#ifdef ID_DEBUG_MEMORY
#undef new
#undef DEBUG_NEW
#define DEBUG_NEW new
#endif

// NOTE:	known bug, if you directly jump to a not yet highligted page with the first line starting
//			inside a multi-line comment then the multi-line comment is not picked up and highlighted

const int AUTOCOMPLETE_WIDTH			= 200;
const int AUTOCOMPLETE_HEIGHT			= 180;
const int AUTOCOMPLETE_OFFSET			= 16;

const int FUNCPARMTOOLTIP_WIDTH			= 16;
const int FUNCPARMTOOLTIP_HEIGHT		= 20;
const int FUNCPARMTOOLTIP_OFFSET		= 16;

const COLORREF DEFAULT_BACK_COLOR				= SRE_COLOR_WHITE;
const COLORREF INVALID_BACK_COLOR				= SRE_COLOR_WHITE - 2;
const COLORREF MULTILINE_COMMENT_BACK_COLOR		= SRE_COLOR_WHITE - 1;

#define IDC_LISTBOX_AUTOCOMPLETE		700
#define IDC_EDITBOX_FUNCPARMS			701

static keyWord_t defaultKeyWords[] = {
	{ NULL, SRE_COLOR_BLACK, "" }
};

BEGIN_MESSAGE_MAP(CSyntaxRichEditCtrl, CRichEditCtrl)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTW, 0, 0xFFFF, OnToolTipNotify)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTA, 0, 0xFFFF, OnToolTipNotify)
	ON_WM_GETDLGCODE()
	ON_WM_KEYDOWN()
	ON_WM_CHAR()
	ON_WM_LBUTTONDOWN()
	ON_WM_MOUSEWHEEL()
	ON_WM_MOUSEMOVE()
	ON_WM_VSCROLL()
	ON_WM_SIZE()
	ON_NOTIFY_REFLECT(EN_PROTECTED, OnProtected)
	ON_CONTROL_REFLECT(EN_CHANGE, OnChange)
	ON_LBN_SELCANCEL(IDC_LISTBOX_AUTOCOMPLETE, OnAutoCompleteListBoxChange)
	ON_LBN_SELCHANGE(IDC_LISTBOX_AUTOCOMPLETE, OnAutoCompleteListBoxChange)
	ON_LBN_DBLCLK(IDC_LISTBOX_AUTOCOMPLETE, OnAutoCompleteListBoxDblClk)
END_MESSAGE_MAP()


/*
================
CSyntaxRichEditCtrl::CSyntaxRichEditCtrl
================
*/
CSyntaxRichEditCtrl::CSyntaxRichEditCtrl( void ) {
	m_TextDoc = NULL;
	keyWords = defaultKeyWords;
	keyWordColors = NULL;
	keyWordLengths = NULL;
	caseSensitive = false;
	allowPathNames = true;
	keyWordAutoCompletion = true;
	updateRange.cpMin = 0;
	updateRange.cpMax = 0;
	updateSyntaxHighlighting = true;
	stringColorIndex = 0;
	stringColorLine = -1;
	autoCompleteStart = -1;
	funcParmToolTipStart = -1;
	bracedSection[0] = -1;
	bracedSection[1] = -1;
	GetObjectMembers = NULL;
	GetFunctionParms = NULL;
	GetToolTip = NULL;
	mousePoint.x = 0;
	mousePoint.y = 0;
	keyWordToolTip = NULL;
	m_pchTip = NULL;
	m_pwchTip = NULL;
}

/*
================
CSyntaxRichEditCtrl::~CSyntaxRichEditCtrl
================
*/
CSyntaxRichEditCtrl::~CSyntaxRichEditCtrl( void ) {
	FreeKeyWordsFromFile();
	delete m_pchTip;
	delete m_pwchTip;
	m_DefaultFont->Release();
}

/*
================
CSyntaxRichEditCtrl::InitFont
================
*/
void CSyntaxRichEditCtrl::InitFont( void ) {
    Sys_Printf("void CSyntaxRichEditCtrl::InitFont( void )\r\n");
}


/*
================
CSyntaxRichEditCtrl::SetCharType
================
*/
void CSyntaxRichEditCtrl::SetCharType( int first, int last, int type ) {
    Sys_Printf("void CSyntaxRichEditCtrl::SetCharType( int first, int last, int type )\r\n");
}


/*
================
CSyntaxRichEditCtrl::InitSyntaxHighlighting
================
*/
void CSyntaxRichEditCtrl::InitSyntaxHighlighting( void ) {
    Sys_Printf("void CSyntaxRichEditCtrl::InitSyntaxHighlighting( void )\r\n");
}


/*
================
CSyntaxRichEditCtrl::Init
================
*/
void CSyntaxRichEditCtrl::Init( void ) {
    Sys_Printf("void CSyntaxRichEditCtrl::Init( void )\r\n");
}


/*
================
CSyntaxRichEditCtrl::FindKeyWord
================
*/
ID_INLINE int CSyntaxRichEditCtrl::FindKeyWord( const char *keyWord, int length ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CSyntaxRichEditCtrl::FindKeyWord( const char *keyWord, int length )\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::SetKeyWords
================
*/
void CSyntaxRichEditCtrl::SetKeyWords( const keyWord_t kws[] ) {
    Sys_Printf("void CSyntaxRichEditCtrl::SetKeyWords( const keyWord_t kws[] )\r\n");
}


/*
================
CSyntaxRichEditCtrl::LoadKeyWordsFromFile
================
*/
bool CSyntaxRichEditCtrl::LoadKeyWordsFromFile( const char *fileName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CSyntaxRichEditCtrl::LoadKeyWordsFromFile( const char *fileName )\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::FreeKeyWordsFromFile
================
*/
void CSyntaxRichEditCtrl::FreeKeyWordsFromFile( void ) {
    Sys_Printf("void CSyntaxRichEditCtrl::FreeKeyWordsFromFile( void )\r\n");
}


/*
================
CSyntaxRichEditCtrl::SetDefaultColor
================
*/
void CSyntaxRichEditCtrl::SetDefaultColor( const COLORREF color ) {
    Sys_Printf("void CSyntaxRichEditCtrl::SetDefaultColor( const COLORREF color )\r\n");
}


/*
================
CSyntaxRichEditCtrl::SetCommentColor
================
*/
void CSyntaxRichEditCtrl::SetCommentColor( const COLORREF color ) {
    Sys_Printf("void CSyntaxRichEditCtrl::SetCommentColor( const COLORREF color )\r\n");
}


/*
================
CSyntaxRichEditCtrl::SetStringColor
================
*/
void CSyntaxRichEditCtrl::SetStringColor( const COLORREF color, const COLORREF altColor ) {
    Sys_Printf("void CSyntaxRichEditCtrl::SetStringColor( const COLORREF color, const COLORREF altColor )\r\n");
}


/*
================
CSyntaxRichEditCtrl::SetLiteralColor
================
*/
void CSyntaxRichEditCtrl::SetLiteralColor( const COLORREF color ) {
    Sys_Printf("void CSyntaxRichEditCtrl::SetLiteralColor( const COLORREF color )\r\n");
}


/*
================
CSyntaxRichEditCtrl::SetObjectMemberCallback
================
*/
void CSyntaxRichEditCtrl::SetObjectMemberCallback( objectMemberCallback_t callback ) {
    Sys_Printf("void CSyntaxRichEditCtrl::SetObjectMemberCallback( objectMemberCallback_t callback )\r\n");
}


/*
================
CSyntaxRichEditCtrl::SetFunctionParmCallback
================
*/
void CSyntaxRichEditCtrl::SetFunctionParmCallback( toolTipCallback_t callback ) {
    Sys_Printf("void CSyntaxRichEditCtrl::SetFunctionParmCallback( toolTipCallback_t callback )\r\n");
}


/*
================
CSyntaxRichEditCtrl::SetToolTipCallback
================
*/
void CSyntaxRichEditCtrl::SetToolTipCallback( toolTipCallback_t callback ) {
    Sys_Printf("void CSyntaxRichEditCtrl::SetToolTipCallback( toolTipCallback_t callback )\r\n");
}


/*
================
CSyntaxRichEditCtrl::SetCaseSensitive
================
*/
void CSyntaxRichEditCtrl::SetCaseSensitive( bool caseSensitive ) {
    Sys_Printf("void CSyntaxRichEditCtrl::SetCaseSensitive( bool caseSensitive )\r\n");
}


/*
================
CSyntaxRichEditCtrl::AllowPathNames
================
*/
void CSyntaxRichEditCtrl::AllowPathNames( bool allow ) {
    Sys_Printf("void CSyntaxRichEditCtrl::AllowPathNames( bool allow )\r\n");
}


/*
================
CSyntaxRichEditCtrl::EnableKeyWordAutoCompletion
================
*/
void CSyntaxRichEditCtrl::EnableKeyWordAutoCompletion( bool enable ) {
    Sys_Printf("void CSyntaxRichEditCtrl::EnableKeyWordAutoCompletion( bool enable )\r\n");
}


/*
================
CSyntaxRichEditCtrl::GetVisibleRange
================
*/
CHARRANGE CSyntaxRichEditCtrl::GetVisibleRange( void ) const {
    CHARRANGE retVal;
    memset(&retVal, 0, sizeof(CHARRANGE));
    Sys_Printf("CHARRANGE CSyntaxRichEditCtrl::GetVisibleRange( void )\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::SetDefaultFont
================
*/
void CSyntaxRichEditCtrl::SetDefaultFont( int startCharIndex, int endCharIndex ) {
    Sys_Printf("void CSyntaxRichEditCtrl::SetDefaultFont( int startCharIndex, int endCharIndex )\r\n");
}


/*
================
CSyntaxRichEditCtrl::SetColor
================
*/
void CSyntaxRichEditCtrl::SetColor( int startCharIndex, int endCharIndex, COLORREF foreColor, COLORREF backColor, bool bold ) {
    Sys_Printf("void CSyntaxRichEditCtrl::SetColor( int startCharIndex, int endCharIndex, COLORREF foreColor, COLORREF backColor, bool bold )\r\n");
}


/*
================
CSyntaxRichEditCtrl::GetForeColor
================
*/
COLORREF CSyntaxRichEditCtrl::GetForeColor( int charIndex ) const {
    COLORREF retVal;
    memset(&retVal, 0, sizeof(COLORREF));
    Sys_Printf("COLORREF CSyntaxRichEditCtrl::GetForeColor( int charIndex )\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::GetBackColor
================
*/
COLORREF CSyntaxRichEditCtrl::GetBackColor( int charIndex ) const {
    COLORREF retVal;
    memset(&retVal, 0, sizeof(COLORREF));
    Sys_Printf("COLORREF CSyntaxRichEditCtrl::GetBackColor( int charIndex )\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::HighlightSyntax

  Update the syntax highlighting for the given character range.
================
*/
void CSyntaxRichEditCtrl::HighlightSyntax( int startCharIndex, int endCharIndex ) {
    Sys_Printf("void CSyntaxRichEditCtrl::HighlightSyntax( int startCharIndex, int endCharIndex )\r\n");
}


/*
================
CSyntaxRichEditCtrl::UpdateVisibleRange

  Updates the visible character range if it is not yet properly highlighted.
================
*/
void CSyntaxRichEditCtrl::UpdateVisibleRange( void ) {
    Sys_Printf("void CSyntaxRichEditCtrl::UpdateVisibleRange( void )\r\n");
}


/*
================
CSyntaxRichEditCtrl::GetCursorPos
================
*/
void CSyntaxRichEditCtrl::GetCursorPos( int &line, int &column, int &character ) const {
    Sys_Printf("void CSyntaxRichEditCtrl::GetCursorPos( int &line, int &column, int &character )\r\n");
}


/*
================
CSyntaxRichEditCtrl::GetText
================
*/
void CSyntaxRichEditCtrl::GetText( idStr &text ) const {
    Sys_Printf("void CSyntaxRichEditCtrl::GetText( idStr &text )\r\n");
}


/*
================
CSyntaxRichEditCtrl::GetText
================
*/
void CSyntaxRichEditCtrl::GetText( idStr &text, int startCharIndex, int endCharIndex ) const {
    Sys_Printf("void CSyntaxRichEditCtrl::GetText( idStr &text, int startCharIndex, int endCharIndex )\r\n");
}


/*
================
CSyntaxRichEditCtrl::SetText
================
*/
void CSyntaxRichEditCtrl::SetText( const char *text ) {
    Sys_Printf("void CSyntaxRichEditCtrl::SetText( const char *text )\r\n");
}


/*
================
CSyntaxRichEditCtrl::FindNext
================
*/
bool CSyntaxRichEditCtrl::FindNext( const char *find, bool matchCase, bool matchWholeWords, bool searchForward ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CSyntaxRichEditCtrl::FindNext( const char *find, bool matchCase, bool matchWholeWords, bool searchForward )\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::ReplaceAll
================
*/
int CSyntaxRichEditCtrl::ReplaceAll( const char *find, const char *replace, bool matchCase, bool matchWholeWords ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CSyntaxRichEditCtrl::ReplaceAll( const char *find, const char *replace, bool matchCase, bool matchWholeWords )\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::ReplaceText
================
*/
void CSyntaxRichEditCtrl::ReplaceText( int startCharIndex, int endCharIndex, const char *replace ) {
    Sys_Printf("void CSyntaxRichEditCtrl::ReplaceText( int startCharIndex, int endCharIndex, const char *replace )\r\n");
}


/*
================
CSyntaxRichEditCtrl::AutoCompleteInsertText
================
*/
void CSyntaxRichEditCtrl::AutoCompleteInsertText( void ) {
    Sys_Printf("void CSyntaxRichEditCtrl::AutoCompleteInsertText( void )\r\n");
}


/*
================
CSyntaxRichEditCtrl::AutoCompleteUpdate
================
*/
void CSyntaxRichEditCtrl::AutoCompleteUpdate( void ) {
    Sys_Printf("void CSyntaxRichEditCtrl::AutoCompleteUpdate( void )\r\n");
}


/*
================
CSyntaxRichEditCtrl::AutoCompleteShow
================
*/
void CSyntaxRichEditCtrl::AutoCompleteShow( int charIndex ) {
    Sys_Printf("void CSyntaxRichEditCtrl::AutoCompleteShow( int charIndex )\r\n");
}


/*
================
CSyntaxRichEditCtrl::AutoCompleteHide
================
*/
void CSyntaxRichEditCtrl::AutoCompleteHide( void ) {
    Sys_Printf("void CSyntaxRichEditCtrl::AutoCompleteHide( void )\r\n");
}


/*
================
CSyntaxRichEditCtrl::ToolTipShow
================
*/
void CSyntaxRichEditCtrl::ToolTipShow( int charIndex, const char *string ) {
    Sys_Printf("void CSyntaxRichEditCtrl::ToolTipShow( int charIndex, const char *string )\r\n");
}


/*
================
CSyntaxRichEditCtrl::ToolTipHide
================
*/
void CSyntaxRichEditCtrl::ToolTipHide( void ) {
    Sys_Printf("void CSyntaxRichEditCtrl::ToolTipHide( void )\r\n");
}


/*
================
CSyntaxRichEditCtrl::BracedSectionStart
================
*/
bool CSyntaxRichEditCtrl::BracedSectionStart( char braceStartChar, char braceEndChar ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CSyntaxRichEditCtrl::BracedSectionStart( char braceStartChar, char braceEndChar )\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::BracedSectionEnd
================
*/
bool CSyntaxRichEditCtrl::BracedSectionEnd( char braceStartChar, char braceEndChar ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CSyntaxRichEditCtrl::BracedSectionEnd( char braceStartChar, char braceEndChar )\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::BracedSectionAdjustEndTabs
================
*/
void CSyntaxRichEditCtrl::BracedSectionAdjustEndTabs( void ) {
    Sys_Printf("void CSyntaxRichEditCtrl::BracedSectionAdjustEndTabs( void )\r\n");
}


/*
================
CSyntaxRichEditCtrl::BracedSectionShow
================
*/
void CSyntaxRichEditCtrl::BracedSectionShow( void ) {
    Sys_Printf("void CSyntaxRichEditCtrl::BracedSectionShow( void )\r\n");
}


/*
================
CSyntaxRichEditCtrl::BracedSectionHide
================
*/
void CSyntaxRichEditCtrl::BracedSectionHide( void ) {
    Sys_Printf("void CSyntaxRichEditCtrl::BracedSectionHide( void )\r\n");
}


/*
================
CSyntaxRichEditCtrl::GetNameBeforeCurrentSelection
================
*/
bool CSyntaxRichEditCtrl::GetNameBeforeCurrentSelection( CString &name, int &charIndex ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CSyntaxRichEditCtrl::GetNameBeforeCurrentSelection( CString &name, int &charIndex )\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::GetNameForMousePosition
================
*/
bool CSyntaxRichEditCtrl::GetNameForMousePosition( idStr &name ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CSyntaxRichEditCtrl::GetNameForMousePosition( idStr &name )\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::GoToLine
================
*/
void CSyntaxRichEditCtrl::GoToLine( int line ) {
    Sys_Printf("void CSyntaxRichEditCtrl::GoToLine( int line )\r\n");
}


/*
================
CSyntaxRichEditCtrl::OnToolHitTest
================
*/
int CSyntaxRichEditCtrl::OnToolHitTest( CPoint point, TOOLINFO* pTI ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CSyntaxRichEditCtrl::OnToolHitTest( CPoint point, TOOLINFO* pTI )\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::OnToolTipNotify
================
*/
BOOL CSyntaxRichEditCtrl::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CSyntaxRichEditCtrl::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::OnGetDlgCode
================
*/
UINT CSyntaxRichEditCtrl::OnGetDlgCode() {
    UINT retVal;
    memset(&retVal, 0, sizeof(UINT));
    Sys_Printf("UINT CSyntaxRichEditCtrl::OnGetDlgCode()\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::OnKeyDown
================
*/
void CSyntaxRichEditCtrl::OnKeyDown( UINT nKey, UINT nRepCnt, UINT nFlags ) {
    Sys_Printf("void CSyntaxRichEditCtrl::OnKeyDown( UINT nKey, UINT nRepCnt, UINT nFlags )\r\n");
}


/*
================
CSyntaxRichEditCtrl::OnChar
================
*/
void CSyntaxRichEditCtrl::OnChar( UINT nChar, UINT nRepCnt, UINT nFlags ) {
    Sys_Printf("void CSyntaxRichEditCtrl::OnChar( UINT nChar, UINT nRepCnt, UINT nFlags )\r\n");
}


/*
================
CSyntaxRichEditCtrl::OnLButtonDown
================
*/
void CSyntaxRichEditCtrl::OnLButtonDown( UINT nFlags, CPoint point ) {
    Sys_Printf("void CSyntaxRichEditCtrl::OnLButtonDown( UINT nFlags, CPoint point )\r\n");
}


/*
================
CSyntaxRichEditCtrl::OnMouseWheel
================
*/
BOOL CSyntaxRichEditCtrl::OnMouseWheel( UINT nFlags, short zDelta, CPoint pt ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CSyntaxRichEditCtrl::OnMouseWheel( UINT nFlags, short zDelta, CPoint pt )\r\n");
    return retVal;
}


/*
================
CSyntaxRichEditCtrl::OnMouseMove
================
*/
void CSyntaxRichEditCtrl::OnMouseMove( UINT nFlags, CPoint point ) {
    Sys_Printf("void CSyntaxRichEditCtrl::OnMouseMove( UINT nFlags, CPoint point )\r\n");
}


/*
================
CSyntaxRichEditCtrl::OnSize
================
*/
void CSyntaxRichEditCtrl::OnSize( UINT nType, int cx, int cy ) {
    Sys_Printf("void CSyntaxRichEditCtrl::OnSize( UINT nType, int cx, int cy )\r\n");
}


/*
================
CSyntaxRichEditCtrl::OnVScroll
================
*/
void CSyntaxRichEditCtrl::OnVScroll( UINT nSBCode, UINT nPos, CScrollBar* pScrollBar ) {
    Sys_Printf("void CSyntaxRichEditCtrl::OnVScroll( UINT nSBCode, UINT nPos, CScrollBar* pScrollBar )\r\n");
}


/*
================
CSyntaxRichEditCtrl::OnProtected
================
*/
void CSyntaxRichEditCtrl::OnProtected( NMHDR *pNMHDR, LRESULT *pResult ) {
    Sys_Printf("void CSyntaxRichEditCtrl::OnProtected( NMHDR *pNMHDR, LRESULT *pResult )\r\n");
}


/*
================
CSyntaxRichEditCtrl::OnChange
================
*/
void CSyntaxRichEditCtrl::OnChange() {
    Sys_Printf("void CSyntaxRichEditCtrl::OnChange()\r\n");
}


/*
================
CSyntaxRichEditCtrl::OnAutoCompleteListBoxChange
================
*/
void CSyntaxRichEditCtrl::OnAutoCompleteListBoxChange() {
    Sys_Printf("void CSyntaxRichEditCtrl::OnAutoCompleteListBoxChange()\r\n");
}


/*
================
CSyntaxRichEditCtrl::OnAutoCompleteListBoxDblClk
================
*/
void CSyntaxRichEditCtrl::OnAutoCompleteListBoxDblClk() {
    Sys_Printf("void CSyntaxRichEditCtrl::OnAutoCompleteListBoxDblClk()\r\n");
}

