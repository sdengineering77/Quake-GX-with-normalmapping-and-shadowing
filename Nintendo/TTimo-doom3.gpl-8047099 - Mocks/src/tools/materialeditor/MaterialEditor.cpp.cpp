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

#include "../../sys/win32/win_local.h"

#include "MaterialEditor.h"
#include "MEMainFrame.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

MEMainFrame* meMainFrame = NULL;

CFont* materialEditorFont = NULL;

/**
* Initializes the material editor tool.
*/
void MaterialEditorInit( void ) {
    Sys_Printf("void MaterialEditorInit( void )\r\n");
}


/**
* Called every frame by the doom engine to allow the material editor to process messages.
*/
void MaterialEditorRun( void ) {
    Sys_Printf("void MaterialEditorRun( void )\r\n");
}


/**
* Called by the doom engine when the material editor needs to be destroyed.
*/
void MaterialEditorShutdown( void ) {
    Sys_Printf("void MaterialEditorShutdown( void )\r\n");
}

 
/**
* Allows the doom engine to reflect console output to the material editors console.
*/
void MaterialEditorPrintConsole( const char *msg ) {
    Sys_Printf("void MaterialEditorPrintConsole( const char *msg )\r\n");
}


/**
* Returns the handle to the main Material Editor Window
*/
HWND GetMaterialEditorWindow() {
    HWND retVal;
    memset(&retVal, 0, sizeof(HWND));
    Sys_Printf("HWND GetMaterialEditorWindow()\r\n");
    return retVal;
}


/**
* Simple about box for the material editor.
*/
class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

	enum { IDD = IDD_ME_ABOUTBOX };

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

	DECLARE_MESSAGE_MAP()
};

/**
* Constructor for the about box.
*/
CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD) {
}

/**
* Called by the MFC framework to exchange data with the window controls.
*/
void CAboutDlg::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void CAboutDlg::DoDataExchange(CDataExchange* pDX)\r\n");
}


BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
END_MESSAGE_MAP()

