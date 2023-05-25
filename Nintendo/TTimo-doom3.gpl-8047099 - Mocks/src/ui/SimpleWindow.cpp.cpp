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
#include "Window.h"
#include "UserInterfaceLocal.h"
#include "SimpleWindow.h"


idSimpleWindow::idSimpleWindow(idWindow *win) {
	gui = win->GetGui();
	dc = win->dc;
	drawRect = win->drawRect;
	clientRect = win->clientRect;
	textRect = win->textRect;
	origin = win->origin;
	fontNum = win->fontNum;
	name = win->name;
	matScalex = win->matScalex;
	matScaley = win->matScaley;
	borderSize = win->borderSize;
	textAlign = win->textAlign;
	textAlignx = win->textAlignx;
	textAligny = win->textAligny;
	background = win->background;
	flags = win->flags;
	textShadow = win->textShadow;

	visible = win->visible;
	text = win->text;
	rect = win->rect;
	backColor = win->backColor;
	matColor = win->matColor;
	foreColor = win->foreColor;
	borderColor = win->borderColor;
	textScale = win->textScale;
	rotate = win->rotate;
	shear = win->shear;
	backGroundName = win->backGroundName;
	if (backGroundName.Length()) {
		background = declManager->FindMaterial(backGroundName);
		background->SetSort( SS_GUI );
		background->SetImageClassifications( 1 );	// just for resource tracking
	}
	backGroundName.SetMaterialPtr(&background);

// 
//  added parent
	mParent = win->GetParent();
// 

	hideCursor = win->hideCursor;

	idWindow *parent = win->GetParent();
	if (parent) {
		if (text.NeedsUpdate()) {
			parent->AddUpdateVar(&text);
		}
		if (visible.NeedsUpdate()) {
			parent->AddUpdateVar(&visible);
		}
		if (rect.NeedsUpdate()) {
			parent->AddUpdateVar(&rect);
		}
		if (backColor.NeedsUpdate()) {
			parent->AddUpdateVar(&backColor);
		}
		if (matColor.NeedsUpdate()) {
			parent->AddUpdateVar(&matColor);
		}
		if (foreColor.NeedsUpdate()) {
			parent->AddUpdateVar(&foreColor);
		}
		if (borderColor.NeedsUpdate()) {
			parent->AddUpdateVar(&borderColor);
		}
		if (textScale.NeedsUpdate()) {
			parent->AddUpdateVar(&textScale);
		}
		if (rotate.NeedsUpdate()) {
			parent->AddUpdateVar(&rotate);
		}
		if (shear.NeedsUpdate()) {
			parent->AddUpdateVar(&shear);
		}
		if (backGroundName.NeedsUpdate()) {
			parent->AddUpdateVar(&backGroundName);
		}
	}
}

idSimpleWindow::~idSimpleWindow() {

}

void idSimpleWindow::StateChanged( bool redraw ) {
    Sys_Printf("void idSimpleWindow::StateChanged( bool redraw )\r\n");
}


void idSimpleWindow::SetupTransforms(float x, float y) {
    Sys_Printf("void idSimpleWindow::SetupTransforms(float x, float y)\r\n");
}


void idSimpleWindow::DrawBackground(const idRectangle &drawRect) {
    Sys_Printf("void idSimpleWindow::DrawBackground(const idRectangle &drawRect)\r\n");
}


void idSimpleWindow::DrawBorderAndCaption(const idRectangle &drawRect) {
    Sys_Printf("void idSimpleWindow::DrawBorderAndCaption(const idRectangle &drawRect)\r\n");
}


void idSimpleWindow::CalcClientRect(float xofs, float yofs) {
    Sys_Printf("void idSimpleWindow::CalcClientRect(float xofs, float yofs)\r\n");
}



void idSimpleWindow::Redraw(float x, float y) {
    Sys_Printf("void idSimpleWindow::Redraw(float x, float y)\r\n");
}


int idSimpleWindow::GetWinVarOffset( idWinVar *wv, drawWin_t* owner) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idSimpleWindow::GetWinVarOffset( idWinVar *wv, drawWin_t* owner)\r\n");
    return retVal;
}


idWinVar *idSimpleWindow::GetWinVarByName(const char *_name) {
    Sys_Printf("idWinVar *idSimpleWindow::GetWinVarByName(const char *_name)\r\n");
    return NULL;
}


/*
========================
idSimpleWindow::WriteToSaveGame
========================
*/
void idSimpleWindow::WriteToSaveGame( idFile *savefile ) {
    Sys_Printf("void idSimpleWindow::WriteToSaveGame( idFile *savefile )\r\n");
}


/*
========================
idSimpleWindow::ReadFromSaveGame
========================
*/
void idSimpleWindow::ReadFromSaveGame( idFile *savefile ) {
    Sys_Printf("void idSimpleWindow::ReadFromSaveGame( idFile *savefile )\r\n");
}



/*
===============================
*/

size_t idSimpleWindow::Size() {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idSimpleWindow::Size()\r\n");
    return retVal;
}

