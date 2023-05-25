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


#include "VectorCtl.h"
#include <math.h>

BEGIN_MESSAGE_MAP(CVectorCtl, CButton)
	//{{AFX_MSG_MAP(idGLWidget)
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_MOUSEMOVE()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

CVectorCtl::CVectorCtl () :
    m_bBmpCreated (FALSE), 
    m_bImageChange (TRUE),
    m_bBackgroundBitmapUsed (FALSE),
    m_clrDiffuse (DEFAULT_DIFFUSE),
    m_clrAmbient (DEFAULT_AMBIENT),
    m_clrLight (DEFAULT_LIGHT),
    m_clrBackgroundStart (DEFAULT_START_BACKGROUND_COLOR),
    m_clrBackgroundEnd (DEFAULT_END_BACKGROUND_COLOR),
    m_dSpecularExponent (DEFAULT_SPEC_EXP),
    m_bHasFocus (FALSE), 
    m_bSelected (FALSE),
    m_bFrontVector (FALSE),
    m_dSensitivity (20.0),
    m_procVectorChanging (NULL),
    m_procVectorChanged (NULL)
{
    double DefaultVec[3] = DEFAULT_VEC;
    for (int i=0; i<3; i++) {
        m_dVec[i] = DefaultVec[i];
        pCtl[i] = NULL;
    }

	rotationQuat.Set( 0.0f, 0.0f, 0.0f, 1.0f );
	lastPress.Zero();
	radius = 0.6f;
}


CVectorCtl::~CVectorCtl () 
{
    if (m_bBmpCreated) 
        m_dcMem.SelectObject (m_pOldBitmap);
    ClearBackgroundBitmap ();
}

// Owner-drawn control service function:
void CVectorCtl::DrawItem( LPDRAWITEMSTRUCT lpDrawItemStruct )
{
    Sys_Printf("void CVectorCtl::DrawItem( LPDRAWITEMSTRUCT lpDrawItemStruct )\r\n");
}


// Mouse was dragged 
void CVectorCtl::OnMouseDrag (int ixMove, int iyMove)
{
    Sys_Printf("void CVectorCtl::OnMouseDrag (int ixMove, int iyMove)\r\n");
}


// Recalc ball image
void CVectorCtl::BuildImage (LPDRAWITEMSTRUCT lpDrawItemStruct)
{
    Sys_Printf("void CVectorCtl::BuildImage (LPDRAWITEMSTRUCT lpDrawItemStruct)\r\n");
}


// Normalize a vector to unit size
BOOL CVectorCtl::Normalize ()
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CVectorCtl::Normalize ()\r\n");
    return retVal;
}


// Calculate lightning effect for specific pixel on ball's surface
COLORREF CVectorCtl::CalcLight (double dx, double dy, double dz)
{
    COLORREF retVal;
    memset(&retVal, 0, sizeof(COLORREF));
    Sys_Printf("COLORREF CVectorCtl::CalcLight (double dx, double dy, double dz)\r\n");
    return retVal;
}



// Start memory buffer bitmap and measure it
void CVectorCtl::InitBitmap (LPDRAWITEMSTRUCT lpDrawItemStruct, CDC *pDC)
{
    Sys_Printf("void CVectorCtl::InitBitmap (LPDRAWITEMSTRUCT lpDrawItemStruct, CDC *pDC)\r\n");
}


// Set new specular intensity
BOOL CVectorCtl::SetSpecularExponent (double dExp)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CVectorCtl::SetSpecularExponent (double dExp)\r\n");
    return retVal;
}


// Rotate our vector around the X and Y axis
void CVectorCtl::RotateByXandY (double XRot, double YRot)
{
    Sys_Printf("void CVectorCtl::RotateByXandY (double XRot, double YRot)\r\n");
}


 
void CVectorCtl::UpdateAxisControls ()
{
    Sys_Printf("void CVectorCtl::UpdateAxisControls ()\r\n");
}
            

void CVectorCtl::SetAxisControl (int nXCtl, int nYCtl, int nZCtl)
{
    Sys_Printf("void CVectorCtl::SetAxisControl (int nXCtl, int nYCtl, int nZCtl)\r\n");
}


void CVectorCtl::SetRadius (UINT uRadius)
{
    Sys_Printf("void CVectorCtl::SetRadius (UINT uRadius)\r\n");
}



void CVectorCtl::SetCenter (UINT uHorizPos, UINT uVertPos)
{
    Sys_Printf("void CVectorCtl::SetCenter (UINT uHorizPos, UINT uVertPos)\r\n");
}



void CVectorCtl::SetAxis (double d, int nAxis)
{
    Sys_Printf("void CVectorCtl::SetAxis (double d, int nAxis)\r\n");
}


void CVectorCtl::SetVector (double dx, double dy, double dz)
{
    Sys_Printf("void CVectorCtl::SetVector (double dx, double dy, double dz)\r\n");
}


void CVectorCtl::SetBackgroundColor (COLORREF clrStart, COLORREF clrEnd)
{
    Sys_Printf("void CVectorCtl::SetBackgroundColor (COLORREF clrStart, COLORREF clrEnd)\r\n");
}



BOOL CVectorCtl::SetBackgroundImage (UINT uBackgroundBitmapID)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CVectorCtl::SetBackgroundImage (UINT uBackgroundBitmapID)\r\n");
    return retVal;
}


void CVectorCtl::CreateBackground ()
{
    Sys_Printf("void CVectorCtl::CreateBackground ()\r\n");
}
    

    
void CVectorCtl::ClearBackgroundBitmap ()
{
    Sys_Printf("void CVectorCtl::ClearBackgroundBitmap ()\r\n");
}


BOOL CVectorCtl::SetSensitivity (UINT uSens)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CVectorCtl::SetSensitivity (UINT uSens)\r\n");
    return retVal;
}


void CVectorCtl::Redraw (BOOL bErase) {
    Sys_Printf("void CVectorCtl::Redraw (BOOL bErase)\r\n");
}


void CVectorCtl::OnMouseMove(UINT nFlags, CPoint point) {
    Sys_Printf("void CVectorCtl::OnMouseMove(UINT nFlags, CPoint point)\r\n");
}


void CVectorCtl::OnLButtonDown(UINT nFlags, CPoint point) {
    Sys_Printf("void CVectorCtl::OnLButtonDown(UINT nFlags, CPoint point)\r\n");
}


void CVectorCtl::OnLButtonUp(UINT nFlags, CPoint point) {
    Sys_Printf("void CVectorCtl::OnLButtonUp(UINT nFlags, CPoint point)\r\n");
}



