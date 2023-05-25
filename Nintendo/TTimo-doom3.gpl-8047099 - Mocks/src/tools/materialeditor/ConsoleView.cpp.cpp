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

#include "ConsoleView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

#define EDIT_HEIGHT 25


IMPLEMENT_DYNCREATE(ConsoleView, CFormView)

BEGIN_MESSAGE_MAP(ConsoleView, CFormView)
	ON_WM_SIZE()
END_MESSAGE_MAP()

/**
* Constructor for ConsoleView.
*/
ConsoleView::ConsoleView()
: CFormView(ConsoleView::IDD) {
}

/**
* Destructor for ConsoleView.
*/
ConsoleView::~ConsoleView() {
}

/**
* Adds text to the end of the console output window.
* @param msg The text to append.
* \todo: BMatt Nerve: Fix scroll code so the output window will scroll as text
* is added if the cursor is at the end of the window.
*/
void ConsoleView::AddText( const char *msg ) {
    Sys_Printf("void ConsoleView::AddText( const char *msg )\r\n");
}


/**
* Replaces the text in the console window with the specified text.
* @param text The text to place in the console window.
*/
void ConsoleView::SetConsoleText ( const idStr& text ) {
    Sys_Printf("void ConsoleView::SetConsoleText ( const idStr& text )\r\n");
}


/**
* Executes the specified console command. If the command is passed
* as a parameter then it is executed otherwise the command in the
* input box is executed.
* @param cmd The text to execute. If this string is empty then the
* input edit box text is used.
*/
void ConsoleView::ExecuteCommand ( const idStr& cmd ) {
    Sys_Printf("void ConsoleView::ExecuteCommand ( const idStr& cmd )\r\n");
}


/**
* Handles keyboard input to process the "Enter" key to execute 
* commands and command history.
*/
BOOL ConsoleView::PreTranslateMessage(MSG* pMsg) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL ConsoleView::PreTranslateMessage(MSG* pMsg)\r\n");
    return retVal;
}


/**
* Transfers data to and from the controls in the console.
*/
void ConsoleView::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void ConsoleView::DoDataExchange(CDataExchange* pDX)\r\n");
}


/**
* Transfers data to and from the controls in the console.
*/
void ConsoleView::OnInitialUpdate() {
    Sys_Printf("void ConsoleView::OnInitialUpdate()\r\n");
}


/**
* Windows message called when the window is resized.
*/
void ConsoleView::OnSize(UINT nType, int cx, int cy) {
    Sys_Printf("void ConsoleView::OnSize(UINT nType, int cx, int cy)\r\n");
}


/**
* Replaces \\n with \\r\\n for carriage returns in an edit control.
*/
const char *ConsoleView::TranslateString(const char *buf) {
    Sys_Printf("char *ConsoleView::TranslateString(const char *buf)\r\n");
    return NULL;
}

