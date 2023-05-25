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


#include "MaterialPreviewPropView.h"


// MaterialPropTreeView

IMPLEMENT_DYNCREATE(MaterialPreviewPropView, CPropTreeView)


MaterialPreviewPropView::MaterialPreviewPropView() {
	numLights = 0;
	materialPreview = NULL;
}

MaterialPreviewPropView::~MaterialPreviewPropView() {
}

BEGIN_MESSAGE_MAP(MaterialPreviewPropView, CPropTreeView)
	ON_NOTIFY( PTN_ITEMCHANGED, IDC_PROPERTYTREE, OnPropertyChangeNotification )
	ON_NOTIFY( PTN_ITEMBUTTONCLICK, IDC_PROPERTYTREE, OnPropertyButtonClick )
END_MESSAGE_MAP()


void MaterialPreviewPropView::AddLight( void ) {
    Sys_Printf("void MaterialPreviewPropView::AddLight( void )\r\n");
}


//Create sample data for the preview properties
void MaterialPreviewPropView::InitializePropTree( void ) {
    Sys_Printf("void MaterialPreviewPropView::InitializePropTree( void )\r\n");
}


// MaterialPreviewPropView drawing

void MaterialPreviewPropView::OnDraw(CDC* pDC)
{
    Sys_Printf("void MaterialPreviewPropView::OnDraw(CDC* pDC)\r\n");
}


// MaterialPreviewPropView diagnostics

#ifdef _DEBUG
void MaterialPreviewPropView::AssertValid() const
{
    Sys_Printf("void MaterialPreviewPropView::AssertValid()\r\n");
}


void MaterialPreviewPropView::Dump(CDumpContext& dc) const
{
    Sys_Printf("void MaterialPreviewPropView::Dump(CDumpContext& dc)\r\n");
}

#endif //_DEBUG


void MaterialPreviewPropView::RegisterPreviewView( MaterialPreviewView *view ) {
    Sys_Printf("void MaterialPreviewPropView::RegisterPreviewView( MaterialPreviewView *view )\r\n");
}


// MaterialPreviewPropView message handlers

void MaterialPreviewPropView::OnPropertyChangeNotification( NMHDR *nmhdr, LRESULT *lresult ) {
    Sys_Printf("void MaterialPreviewPropView::OnPropertyChangeNotification( NMHDR *nmhdr, LRESULT *lresult )\r\n");
}


void MaterialPreviewPropView::OnPropertyButtonClick( NMHDR *nmhdr, LRESULT *lresult ) {
    Sys_Printf("void MaterialPreviewPropView::OnPropertyButtonClick( NMHDR *nmhdr, LRESULT *lresult )\r\n");
}

