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
#include "radiant.h"
#include "MainFrm.h"
#include "lightdlg.h"

#include <process.h>    // for _beginthreadex and _endthreadex
#include <ddeml.h>  // for MSGF_DDEMGR

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

idCVar radiant_entityMode( "radiant_entityMode", "0", CVAR_TOOL | CVAR_ARCHIVE, "" );

/////////////////////////////////////////////////////////////////////////////
// CRadiantApp

BEGIN_MESSAGE_MAP(CRadiantApp, CWinApp)
	//{{AFX_MSG_MAP(CRadiantApp)
	ON_COMMAND(ID_HELP, OnHelp)
	//}}AFX_MSG_MAP
	// Standard file based document commands
	ON_COMMAND(ID_FILE_NEW, CWinApp::OnFileNew)
	ON_COMMAND(ID_FILE_OPEN, CWinApp::OnFileOpen)
	// Standard print setup command
	ON_COMMAND(ID_FILE_PRINT_SETUP, CWinApp::OnFilePrintSetup)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CRadiantApp construction

CRadiantApp::CRadiantApp()
{
    construction retVal;
    memset(&retVal, 0, sizeof(construction));
    Sys_Printf("constructionCRadiantApp::CRadiantApp()\r\n");
    return retVal;
}


/////////////////////////////////////////////////////////////////////////////
// The one and only CRadiantApp object

CRadiantApp theApp;
HINSTANCE g_DoomInstance = NULL;
bool g_editorAlive = false;

void RadiantPrint( const char *text ) {
    Sys_Printf("void RadiantPrint( const char *text )\r\n");
}


void RadiantShutdown( void ) {
    Sys_Printf("void RadiantShutdown( void )\r\n");
}


/*
=================
RadiantInit

This is also called when you 'quit' in doom
=================
*/
void RadiantInit( void ) {
    Sys_Printf("void RadiantInit( void )\r\n");
}



extern void Map_VerifyCurrentMap(const char *map);

void RadiantSync( const char *mapName, const idVec3 &viewOrg, const idAngles &viewAngles ) {
    Sys_Printf("void RadiantSync( const char *mapName, const idVec3 &viewOrg, const idAngles &viewAngles )\r\n");
}


void RadiantRun( void ) {
    Sys_Printf("void RadiantRun( void )\r\n");
}


/////////////////////////////////////////////////////////////////////////////
// CRadiantApp initialization

HINSTANCE g_hOpenGL32 = NULL;
HINSTANCE g_hOpenGL = NULL;
bool g_bBuildList = false;

BOOL CRadiantApp::InitInstance()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CRadiantApp::InitInstance()\r\n");
    return retVal;
}


/////////////////////////////////////////////////////////////////////////////
// CRadiantApp commands

int CRadiantApp::ExitInstance() 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CRadiantApp::ExitInstance()\r\n");
    return retVal;
}



BOOL CRadiantApp::OnIdle(LONG lCount) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CRadiantApp::OnIdle(LONG lCount)\r\n");
    return retVal;
}


void CRadiantApp::OnHelp()
{
    Sys_Printf("void CRadiantApp::OnHelp()\r\n");
}


int CRadiantApp::Run( void ) 
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CRadiantApp::Run( void )\r\n");
    return retVal;
}



/*
=============================================================

REGISTRY INFO

=============================================================
*/

bool SaveRegistryInfo(const char *pszName, void *pvBuf, long lSize)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool SaveRegistryInfo(const char *pszName, void *pvBuf, long lSize)\r\n");
    return retVal;
}


bool LoadRegistryInfo(const char *pszName, void *pvBuf, long *plSize)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool LoadRegistryInfo(const char *pszName, void *pvBuf, long *plSize)\r\n");
    return retVal;
}


bool SaveWindowState(HWND hWnd, const char *pszName)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool SaveWindowState(HWND hWnd, const char *pszName)\r\n");
    return retVal;
}



bool LoadWindowState(HWND hWnd, const char *pszName)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool LoadWindowState(HWND hWnd, const char *pszName)\r\n");
    return retVal;
}


/*
===============================================================

  STATUS WINDOW

===============================================================
*/

void Sys_UpdateStatusBar( void )
{
    Sys_Printf("void Sys_UpdateStatusBar( void )\r\n");
}


void Sys_Status(const char *psz, int part )
{
    Sys_Printf("void Sys_Status(const char *psz, int part )\r\n");
}

