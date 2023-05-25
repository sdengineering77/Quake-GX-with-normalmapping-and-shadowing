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

#include "ColorButton.h"

static const int ARROW_SIZE_CX = 4 ;
static const int ARROW_SIZE_CY = 2 ;

/*
================
ColorButton_SetColor

Sets the current color button color
================
*/
void ColorButton_SetColor ( HWND hWnd, COLORREF color )
{
    Sys_Printf("void ColorButton_SetColor ( HWND hWnd, COLORREF color )\r\n");
}


void ColorButton_SetColor ( HWND hWnd, const char* color )
{
    Sys_Printf("void ColorButton_SetColor ( HWND hWnd, const char* color )\r\n");
}


void AlphaButton_SetColor ( HWND hWnd, const char* color )
{
    Sys_Printf("void AlphaButton_SetColor ( HWND hWnd, const char* color )\r\n");
}


/*
================
ColorButton_GetColor

Retrieves the current color button color
================
*/
COLORREF ColorButton_GetColor ( HWND hWnd )
{
    COLORREF retVal;
    memset(&retVal, 0, sizeof(COLORREF));
    Sys_Printf("COLORREF ColorButton_GetColor ( HWND hWnd )\r\n");
    return retVal;
}


/*
================
ColorButton_DrawArrow

Draws the arrow on the color button
================
*/
static void ColorButton_DrawArrow ( HDC hDC, RECT* pRect, COLORREF color )
{
    Sys_Printf("void ColorButton_DrawArrow ( HDC hDC, RECT* pRect, COLORREF color )\r\n");
}


/*
================
ColorButton_DrawItem

Draws the actual color button as as reponse to a WM_DRAWITEM message
================
*/
void ColorButton_DrawItem ( HWND hWnd, LPDRAWITEMSTRUCT dis )
{
    Sys_Printf("void ColorButton_DrawItem ( HWND hWnd, LPDRAWITEMSTRUCT dis )\r\n");
}

