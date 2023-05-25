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
#include "cmdlib.h"

#define PATHSEPERATOR   '/'

// rad additions
// 11.29.99
PFN_ERR *g_pfnError = NULL;
PFN_PRINTF *g_pfnPrintf = NULL;
PFN_ERR_NUM *g_pfnErrorNum = NULL;
PFN_PRINTF_NUM *g_pfnPrintfNum = NULL;


void Error(const char *pFormat, ...)
{
    Sys_Printf("void Error(const char *pFormat, ...)\r\n");
}


void Printf(const char *pFormat, ...)
{
    Sys_Printf("void Printf(const char *pFormat, ...)\r\n");
}


void ErrorNum(int nErr, const char *pFormat, ...)
{
    Sys_Printf("void ErrorNum(int nErr, const char *pFormat, ...)\r\n");
}


void PrintfNum(int nErr, const char *pFormat, ...)
{
    Sys_Printf("void PrintfNum(int nErr, const char *pFormat, ...)\r\n");
}


void SetErrorHandler(PFN_ERR pe)
{
    Sys_Printf("void SetErrorHandler(PFN_ERR pe)\r\n");
}


void SetPrintfHandler(PFN_PRINTF pe)
{
    Sys_Printf("void SetPrintfHandler(PFN_PRINTF pe)\r\n");
}


void SetErrorHandlerNum(PFN_ERR_NUM pe)
{
    Sys_Printf("void SetErrorHandlerNum(PFN_ERR_NUM pe)\r\n");
}


void SetPrintfHandler(PFN_PRINTF_NUM pe)
{
    Sys_Printf("void SetPrintfHandler(PFN_PRINTF_NUM pe)\r\n");
}



/*
================
Q_filelength
================
*/
int Q_filelength (FILE *f)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Q_filelength (FILE *f)\r\n");
    return retVal;
}


/*
==============
LoadFile
==============
*/
int LoadFile (const char *filename, void **bufferptr)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int LoadFile (const char *filename, void **bufferptr)\r\n");
    return retVal;
}


/*
==============
DefaultExtension
==============
*/
void DefaultExtension (char *path, char *extension)
{
    Sys_Printf("void DefaultExtension (char *path, char *extension)\r\n");
}


/*
==============
DefaultPath
==============
*/
void DefaultPath (char *path, char *basepath)
{
    Sys_Printf("void DefaultPath (char *path, char *basepath)\r\n");
}


/*
==============
StripFilename
==============
*/
void StripFilename (char *path)
{
    Sys_Printf("void StripFilename (char *path)\r\n");
}


/*
==============
StripExtension
==============
*/
void StripExtension (char *path)
{
    Sys_Printf("void StripExtension (char *path)\r\n");
}

