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

#ifdef ID_DEBUG_MEMORY
#undef new
#endif

#include "math.h"
#include "CDIB.h"

// Original ColorPicker/DIB source by Rajiv Ramachandran <rrajivram@hotmail.com>
// included with Permission from the author

#define BIG_DISTANCE 10000000L

#define DIST(r1,g1,b1,r2,g2,b2) \
	    (long) (3L*(long)((r1)-(r2))*(long)((r1)-(r2)) + \
		    4L*(long)((g1)-(g2))*(long)((g1)-(g2)) + \
		    2L*(long)((b1)-(b2))*(long)((b1)-(b2)))


static unsigned char masktable[] = { 0x80,0x40,0x20,0x10,0x08,0x04,0x02,0x01 };



CDIB::CDIB(HANDLE hDib,int nBits)
{
	m_pVoid = NULL;
	m_pLinePtr = NULL;
	m_bUseGamma=FALSE;
	width=height=0;
	if(hDib)
	{
		CreateFromHandle(hDib,nBits);
	}
}

CDIB::~CDIB()
{
	DestroyDIB();
}

void CDIB::DestroyDIB()
{
    Sys_Printf("void CDIB::DestroyDIB()\r\n");
}



BOOL CDIB::Create(int width,int height,int bits)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDIB::Create(int width,int height,int bits)\r\n");
    return retVal;
}


BOOL CDIB::Create(BITMAPINFOHEADER& bmInfo)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDIB::Create(BITMAPINFOHEADER& bmInfo)\r\n");
    return retVal;
}


void CDIB::SetPalette(unsigned char *palette)
{
    Sys_Printf("void CDIB::SetPalette(unsigned char *palette)\r\n");
}


void CDIB::SetPalette(RGBQUAD *pRGB)
{
    Sys_Printf("void CDIB::SetPalette(RGBQUAD *pRGB)\r\n");
}



int CDIB::GetPaletteSize()
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CDIB::GetPaletteSize()\r\n");
    return retVal;
}



int CDIB::GetPaletteSize(BITMAPINFOHEADER& bmInfo)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CDIB::GetPaletteSize(BITMAPINFOHEADER& bmInfo)\r\n");
    return retVal;
}



void CDIB::SetPixel(int x,int y,COLORREF color)
{
    Sys_Printf("void CDIB::SetPixel(int x,int y,COLORREF color)\r\n");
}


void CDIB::SetPixel8(int x,int y,unsigned char color)
{
    Sys_Printf("void CDIB::SetPixel8(int x,int y,unsigned char color)\r\n");
}



COLORREF CDIB::GetPixel(int x,int y)
{
    COLORREF retVal;
    memset(&retVal, 0, sizeof(COLORREF));
    Sys_Printf("COLORREF CDIB::GetPixel(int x,int y)\r\n");
    return retVal;
}


CBitmap *CDIB::GetTempBitmap(CDC& dc)
{
    Sys_Printf("CBitmap *CDIB::GetTempBitmap(CDC& dc)\r\n");
    return NULL;
}


CBitmap *CDIB::GetBitmap(CDC& dc)
{
    Sys_Printf("CBitmap *CDIB::GetBitmap(CDC& dc)\r\n");
    return NULL;
}


void CDIB::CopyLine(int source,int dest)
{
    Sys_Printf("void CDIB::CopyLine(int source,int dest)\r\n");
}


void CDIB::InitDIB(COLORREF color)
{
    Sys_Printf("void CDIB::InitDIB(COLORREF color)\r\n");
}



void CDIB::BitBlt(HDC hDest,int nXDest,int nYDest,int nWidth,int nHeight,int xSrc,int ySrc)
{
    Sys_Printf("void CDIB::BitBlt(HDC hDest,int nXDest,int nYDest,int nWidth,int nHeight,int xSrc,int ySrc)\r\n");
}


void CDIB::StretchBlt(HDC hDest,int nXDest,int nYDest,int nDWidth,int nDHeight,int xSrc,int ySrc,int  nSWidth,int nSHeight)
{
    Sys_Printf("void CDIB::StretchBlt(HDC hDest,int nXDest,int nYDest,int nDWidth,int nDHeight,int xSrc,int ySrc,int  nSWidth,int nSHeight)\r\n");
}


void CDIB::ExpandBlt(int nXDest,int nYDest,int xRatio,int yRatio,CDIB& dibSrc,int xSrc,int ySrc,int  nSWidth,int nSHeight)
{
    Sys_Printf("void CDIB::ExpandBlt(int nXDest,int nYDest,int xRatio,int yRatio,CDIB& dibSrc,int xSrc,int ySrc,int  nSWidth,int nSHeight)\r\n");
}


void CDIB::Expand(int nXDest,int nYDest,int xRatio,int yRatio,CDIB& dibSrc,int xSrc,int ySrc,int  nSWidth,int nSHeight)
{
    Sys_Printf("void CDIB::Expand(int nXDest,int nYDest,int xRatio,int yRatio,CDIB& dibSrc,int xSrc,int ySrc,int  nSWidth,int nSHeight)\r\n");
}


void CDIB::StretchBlt(int nXDest,int nYDest,int nDWidth,int nDHeight,CDIB& dibSrc,int xSrc,int ySrc,int  nSWidth,int nSHeight)
{
    Sys_Printf("void CDIB::StretchBlt(int nXDest,int nYDest,int nDWidth,int nDHeight,CDIB& dibSrc,int xSrc,int ySrc,int  nSWidth,int nSHeight)\r\n");
}


void CDIB::BitBlt(int nXDest,int nYDest,int nWidth,int nHeight,CDIB& dibSrc,int nSrcX,int nSrcY,BYTE *colors)
{
    Sys_Printf("void CDIB::BitBlt(int nXDest,int nYDest,int nWidth,int nHeight,CDIB& dibSrc,int nSrcX,int nSrcY,BYTE *colors)\r\n");
}


unsigned char *CDIB::GetLinePtr(int line)
{
    Sys_Printf("char *CDIB::GetLinePtr(int line)\r\n");
    return NULL;
}

	
BOOL CDIB::CopyDIB(CDIB& dib)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDIB::CopyDIB(CDIB& dib)\r\n");
    return retVal;
}


void CDIB::ReplaceColor(unsigned char oldColor,unsigned char newColor)
{
    Sys_Printf("void CDIB::ReplaceColor(unsigned char oldColor,unsigned char newColor)\r\n");
}



CDIB& CDIB::operator=(CDIB& dib)
{
	CopyDIB(dib);
	return *this;
}

HANDLE CDIB::GetDIBits(int nStartX,int nStartY,int nCx,int nCy)
{
    HANDLE retVal;
    memset(&retVal, 0, sizeof(HANDLE));
    Sys_Printf("HANDLE CDIB::GetDIBits(int nStartX,int nStartY,int nCx,int nCy)\r\n");
    return retVal;
}


DWORD CDIB::GetDIBSize()
{
    DWORD retVal;
    memset(&retVal, 0, sizeof(DWORD));
    Sys_Printf("DWORD CDIB::GetDIBSize()\r\n");
    return retVal;
}


HANDLE CDIB::DIBHandle()
{
    HANDLE retVal;
    memset(&retVal, 0, sizeof(HANDLE));
    Sys_Printf("HANDLE CDIB::DIBHandle()\r\n");
    return retVal;
}


BOOL CDIB::CreateFromHandle(HANDLE hMem,int bits)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDIB::CreateFromHandle(HANDLE hMem,int bits)\r\n");
    return retVal;
}


void CDIB::UseGamma(float fg,BOOL bUse)
{
    Sys_Printf("void CDIB::UseGamma(float fg,BOOL bUse)\r\n");
}



void CDIB::CreateGammaCurve()
{
    Sys_Printf("void CDIB::CreateGammaCurve()\r\n");
}




void CDIB::GetPixel(UINT x,UINT y,int& pixel)
{
    Sys_Printf("void CDIB::GetPixel(UINT x,UINT y,int& pixel)\r\n");
}


BOOL CDIB::Make8Bit(CDIB& dib)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDIB::Make8Bit(CDIB& dib)\r\n");
    return retVal;
}


/*
BOOL CDIB::SwitchFrom24(CDIB& dib)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDIB::SwitchFrom24(CDIB& dib)\r\n");
    return retVal;
}

*/


BOOL CDIB::SwitchFromOne(CDIB& dib)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDIB::SwitchFromOne(CDIB& dib)\r\n");
    return retVal;
}


BOOL CDIB::SwitchFromFour(CDIB& dib)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDIB::SwitchFromFour(CDIB& dib)\r\n");
    return retVal;
}


BOOL CDIB::SwitchPalette(CDIB& dib)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDIB::SwitchPalette(CDIB& dib)\r\n");
    return retVal;
}



int CDIB::ClosestColor(RGBQUAD *pRgb)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CDIB::ClosestColor(RGBQUAD *pRgb)\r\n");
    return retVal;
}


unsigned int CDIB::Distance(RGBQUAD& rgb1,RGBQUAD& rgb2)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CDIB::Distance(RGBQUAD& rgb1,RGBQUAD& rgb2)\r\n");
    return retVal;
}


BOOL CDIB::OpenDIB(CString& csFileName)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDIB::OpenDIB(CString& csFileName)\r\n");
    return retVal;
}




BOOL CDIB::SaveDIB(CString& csFileName,BitmapType type)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDIB::SaveDIB(CString& csFileName,BitmapType type)\r\n");
    return retVal;
}


BOOL CDIB::SaveBMP(CString& csFileName)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDIB::SaveBMP(CString& csFileName)\r\n");
    return retVal;
}


BOOL CDIB::OpenBMP(CString& csFileName)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDIB::OpenBMP(CString& csFileName)\r\n");
    return retVal;
}



int CDIB::CountColors()
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CDIB::CountColors()\r\n");
    return retVal;
}


int CDIB::EnumColors(BYTE *array)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CDIB::EnumColors(BYTE *array)\r\n");
    return retVal;
}


COLORREF CDIB::PaletteColor(int nIndex)
{
    COLORREF retVal;
    memset(&retVal, 0, sizeof(COLORREF));
    Sys_Printf("COLORREF CDIB::PaletteColor(int nIndex)\r\n");
    return retVal;
}


BOOL CDIB::SwitchFrom24(CDIB& dib)
{
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL CDIB::SwitchFrom24(CDIB& dib)\r\n");
    return retVal;
}

