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

#include "../Game_local.h"
#if 0
#include "../../MayaImport/maya_main.h"
#endif

/***********************************************************************

	Maya conversion functions

***********************************************************************/
#if 0
static idStr				Maya_Error;

static exporterInterface_t	Maya_ConvertModel = NULL;
static exporterShutdown_t	Maya_Shutdown = NULL;
static int					importDLL = 0;
#endif

bool idModelExport::initialized = false;

/*
====================
idModelExport::idModelExport
====================
*/
idModelExport::idModelExport() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idModelExport::idModelExport() size %d\r\n", sizeof(*this));
#endif

	Reset();
}

/*
====================
idModelExport::Shutdown
====================
*/
void idModelExport::Shutdown( void ) {
    Sys_Printf("void idModelExport::Shutdown( void )\r\n");
}


/*
=====================
idModelExport::CheckMayaInstall

Determines if Maya is installed on the user's machine
=====================
*/
bool idModelExport::CheckMayaInstall( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idModelExport::CheckMayaInstall( void )\r\n");
    return retVal;
}


/*
=====================
idModelExport::LoadMayaDll

Checks to see if we can load the Maya export dll
=====================
*/
void idModelExport::LoadMayaDll( void ) {
    Sys_Printf("void idModelExport::LoadMayaDll( void )\r\n");
}


/*
=====================
idModelExport::ConvertMayaToMD5

Checks if a Maya model should be converted to an MD5, and converts if if the time/date or 
version number has changed.
=====================
*/
bool idModelExport::ConvertMayaToMD5( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idModelExport::ConvertMayaToMD5( void )\r\n");
    return retVal;
}


/*
====================
idModelExport::Reset
====================
*/
void idModelExport::Reset( void ) {
    Sys_Printf("void idModelExport::Reset( void )\r\n");
}


/*
====================
idModelExport::ExportModel
====================
*/
bool idModelExport::ExportModel( const char *model ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idModelExport::ExportModel( const char *model )\r\n");
    return retVal;
}


/*
====================
idModelExport::ExportAnim
====================
*/
bool idModelExport::ExportAnim( const char *anim ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idModelExport::ExportAnim( const char *anim )\r\n");
    return retVal;
}


/*
====================
idModelExport::ParseOptions
====================
*/
bool idModelExport::ParseOptions( idLexer &lex ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idModelExport::ParseOptions( idLexer &lex )\r\n");
    return retVal;
}


/*
====================
idModelExport::ParseExportSection
====================
*/
int idModelExport::ParseExportSection( idParser &parser ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idModelExport::ParseExportSection( idParser &parser )\r\n");
    return retVal;
}


/*
================
idModelExport::ExportDefFile
================
*/
int idModelExport::ExportDefFile( const char *filename ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idModelExport::ExportDefFile( const char *filename )\r\n");
    return retVal;
}


/*
================
idModelExport::ExportModels
================
*/
int idModelExport::ExportModels( const char *pathname, const char *extension ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idModelExport::ExportModels( const char *pathname, const char *extension )\r\n");
    return retVal;
}

