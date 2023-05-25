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

#include "../../sys/win32/rc/Radiant_resource.h"
#include "DialogColorPicker.h"

#ifdef ID_DEBUG_MEMORY
#undef new
#undef DEBUG_NEW
#define DEBUG_NEW new
#endif

// Old color picker

class CMyColorDialog : public CColorDialog 
{
  DECLARE_DYNCREATE(CMyColorDialog);
     // Construction
public:
     CMyColorDialog( COLORREF clrInit = 0, DWORD dwFlags = 0, CWnd *pParentWnd = NULL );
     virtual int DoModal();

protected:
     enum { NCUSTCOLORS = 16 };
     static COLORREF	c_CustColors[NCUSTCOLORS];
     static COLORREF	c_LastCustColors[NCUSTCOLORS];
     static bool		c_NeedToInitCustColors;
     static void		InitCustColors();
     static void		SaveCustColors();

	 // Dialog Data
     //{{AFX_DATA(CMyColorDialog)
     //}}AFX_DATA

protected:
     // ClassWizard generate virtual function overrides
     //{{AFX_VIRTUAL(CMyColorDialog)
     virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
     //}}AFX_VIRTUAL

	 // Generated message map functions
     //{{AFX_MSG(CMyColorDialog)
     //}}AFX_MSG
     DECLARE_MESSAGE_MAP()
};

IMPLEMENT_DYNCREATE( CMyColorDialog, CColorDialog )

bool CMyColorDialog::c_NeedToInitCustColors = true;
COLORREF CMyColorDialog::c_CustColors[];
COLORREF CMyColorDialog::c_LastCustColors[];

#define SECTION _T("Custom Colors")

void CMyColorDialog::InitCustColors() {
    Sys_Printf("void CMyColorDialog::InitCustColors()\r\n");
}


void CMyColorDialog::SaveCustColors() {
    Sys_Printf("void CMyColorDialog::SaveCustColors()\r\n");
}


CMyColorDialog::CMyColorDialog( COLORREF clrInit, DWORD dwFlags, 
		CWnd* pParentWnd) : CColorDialog(clrInit,dwFlags,pParentWnd)
{
     //{{AFX_DATA_INIT(CMyColorDialog)
     //}}AFX_DATA_INIT
     if (c_NeedToInitCustColors) {
    AFX_DATA_INIT retVal;
    memset(&retVal, 0, sizeof(AFX_DATA_INIT));
    Sys_Printf("AFX_DATA_INIT     if (c_NeedToInitCustColors)\r\n");
    return retVal;
}

     m_cc.lpCustColors = c_CustColors;
}

int CMyColorDialog::DoModal() {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CMyColorDialog::DoModal()\r\n");
    return retVal;
}


void CMyColorDialog::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void CMyColorDialog::DoDataExchange(CDataExchange* pDX)\r\n");
}


BEGIN_MESSAGE_MAP(CMyColorDialog, CColorDialog)
//{{AFX_MSG_MAP(CMyColorDialog)
//}}AFX_MSG_MAP
END_MESSAGE_MAP()

COLORREF DoOldColor(COLORREF cr) {
    COLORREF retVal;
    memset(&retVal, 0, sizeof(COLORREF));
    Sys_Printf("COLORREF DoOldColor(COLORREF cr)\r\n");
    return retVal;
}


// New color picker

// Original ColorPicker/DIB source by Rajiv Ramachandran <rrajivram@hotmail.com>
// included with Permission from the author

#define RADUIS	100

#define IN_NOTHING		0
#define IN_CIRCLE		1
#define IN_BRIGHT		2
#define IN_OVERBRIGHT	3

int Distance(CPoint pt1,CPoint pt2);


double Slope( CPoint pt1,CPoint pt2 ) {
    double retVal;
    memset(&retVal, 0, sizeof(double));
    Sys_Printf("double Slope( CPoint pt1,CPoint pt2 )\r\n");
    return retVal;
}


CPoint Intersection(LineDesc l1,LineDesc l2)
{
    CPoint retVal;
    memset(&retVal, 0, sizeof(CPoint));
    Sys_Printf("CPoint Intersection(LineDesc l1,LineDesc l2)\r\n");
    return retVal;
}


double FindC(LineDesc& l)
{
    double retVal;
    memset(&retVal, 0, sizeof(double));
    Sys_Printf("double FindC(LineDesc& l)\r\n");
    return retVal;
}


CPoint PointOnLine(CPoint pt1,CPoint pt2,int len,int maxlen )
{
    CPoint retVal;
    memset(&retVal, 0, sizeof(CPoint));
    Sys_Printf("CPoint PointOnLine(CPoint pt1,CPoint pt2,int len,int maxlen )\r\n");
    return retVal;
}



int Distance(CPoint pt1,CPoint pt2)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Distance(CPoint pt1,CPoint pt2)\r\n");
    return retVal;
}


double AngleFromPoint(CPoint pt,CPoint center)
{
    double retVal;
    memset(&retVal, 0, sizeof(double));
    Sys_Printf("double AngleFromPoint(CPoint pt,CPoint center)\r\n");
    return retVal;
}


CPoint PtFromAngle(double angle,double sat,CPoint center)
{
    CPoint retVal;
    memset(&retVal, 0, sizeof(CPoint));
    Sys_Printf("CPoint PtFromAngle(double angle,double sat,CPoint center)\r\n");
    return retVal;
}


RGBType HSVType::toRGB()
{
    RGBType retVal;
    memset(&retVal, 0, sizeof(RGBType));
    Sys_Printf("RGBType HSVType::toRGB()\r\n");
    return retVal;
}



HSVType RGBType::toHSV()
{
    HSVType retVal;
    memset(&retVal, 0, sizeof(HSVType));
    Sys_Printf("HSVType RGBType::toHSV()\r\n");
    return retVal;
}

/////////////////////////////////////////////////////////////////////////////
// CDialogColorPicker dialog


CDialogColorPicker::CDialogColorPicker( COLORREF c, CWnd* pParent /*=NULL*/)
	: CDialog(CDialogColorPicker::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDialogColorPicker)
	m_overBright = 0.0f;
	//}}AFX_DATA_INIT

	Vertex = CPoint(102,108);
	Top = CPoint(102,9);
	Left = CPoint(23,147);
	Right = CPoint(181,147);

	color.r = GetRValue(c);
	color.g = GetGValue(c);
	color.b = GetBValue(c);

	m_OldColor = color;
	hsvColor = color.toHSV();
	m_bInMouse = FALSE;
	m_bInitOver = FALSE;
	m_bInDrawAll = FALSE;
	overBright = 1.0f;
	UpdateParent = NULL;
}

CDialogColorPicker::~CDialogColorPicker()
{
	if(m_RgbBitmap.GetSafeHandle())
	{
		m_RgbBitmap.DeleteObject();
	}
	if(m_HsbBitmap.GetSafeHandle())
	{
		m_HsbBitmap.DeleteObject();
	}
}


BEGIN_MESSAGE_MAP(CDialogColorPicker, CDialog)
	//{{AFX_MSG_MAP(CDialogColorPicker)
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_MOUSEMOVE()
	ON_WM_SYSCOLORCHANGE()
	ON_WM_PAINT()
	ON_EN_CHANGE(IDC_EDIT_BLUE, OnChangeEditBlue)
	ON_EN_CHANGE(IDC_EDIT_GREEN, OnChangeEditGreen)
	ON_EN_CHANGE(IDC_EDIT_HUE, OnChangeEditHue)
	ON_EN_CHANGE(IDC_EDIT_RED, OnChangeEditRed)
	ON_EN_CHANGE(IDC_EDIT_SAT, OnChangeEditSat)
	ON_EN_CHANGE(IDC_EDIT_VAL, OnChangeEditVal)
	ON_EN_CHANGE(IDC_EDIT_OVERBRIGHT, OnChangeEditOverbright)
	ON_BN_CLICKED(IDC_BTN_OLDCOLOR, OnBtnColor)
	ON_WM_TIMER()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDialogColorPicker message handlers

void CDialogColorPicker::OnLButtonDown(UINT nFlags, CPoint point) {
    Sys_Printf("void CDialogColorPicker::OnLButtonDown(UINT nFlags, CPoint point)\r\n");
}


void CDialogColorPicker::OnLButtonUp(UINT nFlags, CPoint point) 
{
    Sys_Printf("void CDialogColorPicker::OnLButtonUp(UINT nFlags, CPoint point)\r\n");
}


void CDialogColorPicker::OnMouseMove(UINT nFlags, CPoint point) 
{
    Sys_Printf("void CDialogColorPicker::OnMouseMove(UINT nFlags, CPoint point)\r\n");
}


void CDialogColorPicker::OnPaint() 
{
    Sys_Printf("void CDialogColorPicker::OnPaint()\r\n");
}


BOOL CDialogColorPicker::OnInitDialog() 
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDialogColorPicker::OnInitDialog()\r\n");
    return retVal;
}


void CDialogColorPicker::DrawMarkers(CDC *pDC)
{
    Sys_Printf("void CDialogColorPicker::DrawMarkers(CDC *pDC)\r\n");
}


BOOL CDialogColorPicker::InCircle(CPoint pt)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDialogColorPicker::InCircle(CPoint pt)\r\n");
    return retVal;
}


BOOL CDialogColorPicker::InBright(CPoint pt)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDialogColorPicker::InBright(CPoint pt)\r\n");
    return retVal;
}


BOOL CDialogColorPicker::InOverBright(CPoint pt)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDialogColorPicker::InOverBright(CPoint pt)\r\n");
    return retVal;
}


void CDialogColorPicker::TrackPoint(CPoint pt)
{
    Sys_Printf("void CDialogColorPicker::TrackPoint(CPoint pt)\r\n");
}


void CDialogColorPicker::CreateBrightDIB()
{
    Sys_Printf("void CDialogColorPicker::CreateBrightDIB()\r\n");
}


void CDialogColorPicker::SetDIBPalette()
{
    Sys_Printf("void CDialogColorPicker::SetDIBPalette()\r\n");
}


void CDialogColorPicker::CalcRects()
{
    Sys_Printf("void CDialogColorPicker::CalcRects()\r\n");
}



void CDialogColorPicker::DrawHSB(CDC *pDC)
{
    Sys_Printf("void CDialogColorPicker::DrawHSB(CDC *pDC)\r\n");
}


void CDialogColorPicker::DrawRGB(CDC *pDC)
{
    Sys_Printf("void CDialogColorPicker::DrawRGB(CDC *pDC)\r\n");
}


void CDialogColorPicker::DrawLines(CDC *pDC)
{
    Sys_Printf("void CDialogColorPicker::DrawLines(CDC *pDC)\r\n");
}


void CDialogColorPicker::DrawXorRect(CDC *pDC,CRect& cr)
{
    Sys_Printf("void CDialogColorPicker::DrawXorRect(CDC *pDC,CRect& cr)\r\n");
}


void CDialogColorPicker::CalcSlopes()
{
    Sys_Printf("void CDialogColorPicker::CalcSlopes()\r\n");
}


/*

  Cuboid points
   0 = vertex
   1 = Red Axis
   2 = Red Green Intersection
   3 = Green Axis
   4 = Blue Green Intersection
   5 = Blue Green Red Intersection
   6 = Red Blue Intersection
   7 = Blue Axis

  Draw the following lines :
	
	1 -2 
	2 -3
	3 - 4
	4- 5
	5 -2
	5 - 6
	6-7
	7-4
*/

void CDialogColorPicker::CalcCuboid()
{
    Sys_Printf("void CDialogColorPicker::CalcCuboid()\r\n");
}


void CDialogColorPicker::SetSpinVals()
{
    Sys_Printf("void CDialogColorPicker::SetSpinVals()\r\n");
}


void CDialogColorPicker::SetEditVals()
{
    Sys_Printf("void CDialogColorPicker::SetEditVals()\r\n");
}


void CDialogColorPicker::OnChangeEditBlue() 
{
    Sys_Printf("void CDialogColorPicker::OnChangeEditBlue()\r\n");
}


void CDialogColorPicker::OnChangeEditGreen() 
{
    Sys_Printf("void CDialogColorPicker::OnChangeEditGreen()\r\n");
}


void CDialogColorPicker::OnChangeEditRed() 
{
    Sys_Printf("void CDialogColorPicker::OnChangeEditRed()\r\n");
}


void CDialogColorPicker::OnChangeEditHue() 
{
    Sys_Printf("void CDialogColorPicker::OnChangeEditHue()\r\n");
}


void CDialogColorPicker::OnChangeEditSat() 
{
    Sys_Printf("void CDialogColorPicker::OnChangeEditSat()\r\n");
}


void CDialogColorPicker::OnChangeEditVal() 
{
    Sys_Printf("void CDialogColorPicker::OnChangeEditVal()\r\n");
}


void CDialogColorPicker::OnChangeEditOverbright() {
    Sys_Printf("void CDialogColorPicker::OnChangeEditOverbright()\r\n");
}


void CDialogColorPicker::DrawAll()
{
    Sys_Printf("void CDialogColorPicker::DrawAll()\r\n");
}


void CDialogColorPicker::DrawFilledColor(CDC *pDC,CRect cr,COLORREF c)
{
    Sys_Printf("void CDialogColorPicker::DrawFilledColor(CDC *pDC,CRect cr,COLORREF c)\r\n");
}


void CDialogColorPicker::LoadMappedBitmap(CBitmap& bitmap,UINT nIdResource,CSize& size)
{
    Sys_Printf("void CDialogColorPicker::LoadMappedBitmap(CBitmap& bitmap,UINT nIdResource,CSize& size)\r\n");
}


void CDialogColorPicker::OnSysColorChange()
{
    Sys_Printf("void CDialogColorPicker::OnSysColorChange()\r\n");
}


void CDialogColorPicker::OnTimer(UINT nIDEvent)  {
    Sys_Printf("void CDialogColorPicker::OnTimer(UINT nIDEvent)\r\n");
}


void CDialogColorPicker::OnBtnColor() {
    Sys_Printf("void CDialogColorPicker::OnBtnColor()\r\n");
}


bool DoNewColor( int* i1, int* i2, int* i3, float *overBright, void (*Update)( float, float, float, float ) ) {
	COLORREF cr = (*i1) + ((*i2) <<8) + ((*i3) <<16);
	CDialogColorPicker dlg( cr );
	//CMyColorDialog dlg(cr, CC_FULLOPEN | CC_RGBINIT | CC_ANYCOLOR);

	dlg.UpdateParent = Update;

	if ( dlg.DoModal() == IDOK ) {
		*i1 = (dlg.GetColor() & 255);
		*i2 = ((dlg.GetColor() >> 8) & 255);
		*i3 = ((dlg.GetColor() >> 16) & 255);
		*overBright = dlg.GetOverBright();
		return true;
	}
	return false;
}
