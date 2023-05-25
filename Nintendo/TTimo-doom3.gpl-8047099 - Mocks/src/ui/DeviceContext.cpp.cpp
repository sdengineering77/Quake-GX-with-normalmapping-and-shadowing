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

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "DeviceContext.h"

idVec4 idDeviceContext::colorPurple;
idVec4 idDeviceContext::colorOrange;
idVec4 idDeviceContext::colorYellow;
idVec4 idDeviceContext::colorGreen;
idVec4 idDeviceContext::colorBlue;
idVec4 idDeviceContext::colorRed;
idVec4 idDeviceContext::colorBlack;
idVec4 idDeviceContext::colorWhite;
idVec4 idDeviceContext::colorNone;


idCVar gui_smallFontLimit( "gui_smallFontLimit", "0.30", CVAR_GUI | CVAR_ARCHIVE, "" );
idCVar gui_mediumFontLimit( "gui_mediumFontLimit", "0.60", CVAR_GUI | CVAR_ARCHIVE, "" );


idList<fontInfoEx_t> idDeviceContext::fonts;

int idDeviceContext::FindFont( const char *name ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeviceContext::FindFont( const char *name )\r\n");
    return retVal;
}


void idDeviceContext::SetupFonts() {
    Sys_Printf("void idDeviceContext::SetupFonts()\r\n");
}


void idDeviceContext::SetFont( int num ) {
    Sys_Printf("void idDeviceContext::SetFont( int num )\r\n");
}



void idDeviceContext::Init() {
    Sys_Printf("void idDeviceContext::Init()\r\n");
}


void idDeviceContext::Shutdown() {
    Sys_Printf("void idDeviceContext::Shutdown()\r\n");
}


void idDeviceContext::Clear() {
    Sys_Printf("void idDeviceContext::Clear()\r\n");
}


idDeviceContext::idDeviceContext() {
	Clear();
}

void idDeviceContext::SetTransformInfo(const idVec3 &org, const idMat3 &m) {
    Sys_Printf("void idDeviceContext::SetTransformInfo(const idVec3 &org, const idMat3 &m)\r\n");
}


// 
//  added method
void idDeviceContext::GetTransformInfo(idVec3& org, idMat3& m )
{
    Sys_Printf("void idDeviceContext::GetTransformInfo(idVec3& org, idMat3& m )\r\n");
}

// 

void idDeviceContext::PopClipRect() {
    Sys_Printf("void idDeviceContext::PopClipRect()\r\n");
}


void idDeviceContext::PushClipRect(idRectangle r) {
    Sys_Printf("void idDeviceContext::PushClipRect(idRectangle r)\r\n");
}


void idDeviceContext::PushClipRect(float x, float y, float w, float h) {
    Sys_Printf("void idDeviceContext::PushClipRect(float x, float y, float w, float h)\r\n");
}


bool idDeviceContext::ClippedCoords(float *x, float *y, float *w, float *h, float *s1, float *t1, float *s2, float *t2) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeviceContext::ClippedCoords(float *x, float *y, float *w, float *h, float *s1, float *t1, float *s2, float *t2)\r\n");
    return retVal;
}



void idDeviceContext::AdjustCoords(float *x, float *y, float *w, float *h) {
    Sys_Printf("void idDeviceContext::AdjustCoords(float *x, float *y, float *w, float *h)\r\n");
}


void idDeviceContext::DrawStretchPic(float x, float y, float w, float h, float s1, float t1, float s2, float t2, const idMaterial *shader) {
    Sys_Printf("void idDeviceContext::DrawStretchPic(float x, float y, float w, float h, float s1, float t1, float s2, float t2, const idMaterial *shader)\r\n");
}



void idDeviceContext::DrawMaterial(float x, float y, float w, float h, const idMaterial *mat, const idVec4 &color, float scalex, float scaley) {
    Sys_Printf("void idDeviceContext::DrawMaterial(float x, float y, float w, float h, const idMaterial *mat, const idVec4 &color, float scalex, float scaley)\r\n");
}


void idDeviceContext::DrawMaterialRotated(float x, float y, float w, float h, const idMaterial *mat, const idVec4 &color, float scalex, float scaley, float angle) {
    Sys_Printf("void idDeviceContext::DrawMaterialRotated(float x, float y, float w, float h, const idMaterial *mat, const idVec4 &color, float scalex, float scaley, float angle)\r\n");
}


void idDeviceContext::DrawStretchPicRotated(float x, float y, float w, float h, float s1, float t1, float s2, float t2, const idMaterial *shader, float angle) {
    Sys_Printf("void idDeviceContext::DrawStretchPicRotated(float x, float y, float w, float h, float s1, float t1, float s2, float t2, const idMaterial *shader, float angle)\r\n");
}


void idDeviceContext::DrawFilledRect( float x, float y, float w, float h, const idVec4 &color) {
    Sys_Printf("void idDeviceContext::DrawFilledRect( float x, float y, float w, float h, const idVec4 &color)\r\n");
}



void idDeviceContext::DrawRect( float x, float y, float w, float h, float size, const idVec4 &color) {
    Sys_Printf("void idDeviceContext::DrawRect( float x, float y, float w, float h, float size, const idVec4 &color)\r\n");
}


void idDeviceContext::DrawMaterialRect( float x, float y, float w, float h, float size, const idMaterial *mat, const idVec4 &color) {
    Sys_Printf("void idDeviceContext::DrawMaterialRect( float x, float y, float w, float h, float size, const idMaterial *mat, const idVec4 &color)\r\n");
}



void idDeviceContext::SetCursor(int n) {
    Sys_Printf("void idDeviceContext::SetCursor(int n)\r\n");
}


void idDeviceContext::DrawCursor(float *x, float *y, float size) {
    Sys_Printf("void idDeviceContext::DrawCursor(float *x, float *y, float size)\r\n");
}

/*
 =======================================================================================================================
 =======================================================================================================================
 */

void idDeviceContext::PaintChar(float x,float y,float width,float height,float scale,float	s,float	t,float	s2,float t2,const idMaterial *hShader) {
    Sys_Printf("void idDeviceContext::PaintChar(float x,float y,float width,float height,float scale,floats,floatt,floats2,float t2,const idMaterial *hShader)\r\n");
}



void idDeviceContext::SetFontByScale(float scale) {
    Sys_Printf("void idDeviceContext::SetFontByScale(float scale)\r\n");
}


int idDeviceContext::DrawText(float x, float y, float scale, idVec4 color, const char *text, float adjust, int limit, int style, int cursor) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeviceContext::DrawText(float x, float y, float scale, idVec4 color, const char *text, float adjust, int limit, int style, int cursor)\r\n");
    return retVal;
}


void idDeviceContext::SetSize(float width, float height) {
    Sys_Printf("void idDeviceContext::SetSize(float width, float height)\r\n");
}


int idDeviceContext::CharWidth( const char c, float scale ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeviceContext::CharWidth( const char c, float scale )\r\n");
    return retVal;
}


int idDeviceContext::TextWidth( const char *text, float scale, int limit ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeviceContext::TextWidth( const char *text, float scale, int limit )\r\n");
    return retVal;
}


int idDeviceContext::TextHeight(const char *text, float scale, int limit) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeviceContext::TextHeight(const char *text, float scale, int limit)\r\n");
    return retVal;
}


int idDeviceContext::MaxCharWidth(float scale) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeviceContext::MaxCharWidth(float scale)\r\n");
    return retVal;
}


int idDeviceContext::MaxCharHeight(float scale) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeviceContext::MaxCharHeight(float scale)\r\n");
    return retVal;
}


const idMaterial *idDeviceContext::GetScrollBarImage(int index) {
    Sys_Printf("idMaterial *idDeviceContext::GetScrollBarImage(int index)\r\n");
    return NULL;
}


// this only supports left aligned text
idRegion *idDeviceContext::GetTextRegion(const char *text, float textScale, idRectangle rectDraw, float xStart, float yStart) {
    Sys_Printf("idRegion *idDeviceContext::GetTextRegion(const char *text, float textScale, idRectangle rectDraw, float xStart, float yStart)\r\n");
    return NULL;
}


void idDeviceContext::DrawEditCursor( float x, float y, float scale ) {
    Sys_Printf("void idDeviceContext::DrawEditCursor( float x, float y, float scale )\r\n");
}


int idDeviceContext::DrawText( const char *text, float textScale, int textAlign, idVec4 color, idRectangle rectDraw, bool wrap, int cursor, bool calcOnly, idList<int> *breaks, int limit ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeviceContext::DrawText( const char *text, float textScale, int textAlign, idVec4 color, idRectangle rectDraw, bool wrap, int cursor, bool calcOnly, idList<int> *breaks, int limit )\r\n");
    return retVal;
}


/*
=============
idRectangle::String
=============
*/
char *idRectangle::String( void ) const {
    Sys_Printf("char *idRectangle::String( void )\r\n");
    return NULL;
}

