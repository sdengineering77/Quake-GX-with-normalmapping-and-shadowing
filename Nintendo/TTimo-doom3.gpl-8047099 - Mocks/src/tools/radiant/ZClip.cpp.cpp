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
#include "Radiant.h"

#include "zclip.h"


CZClip::CZClip()
{	
	LONG 
	lSize = sizeof(m_bEnabled);
	if (!LoadRegistryInfo("radiant_ZClipEnabled",	&m_bEnabled, &lSize))
		m_bEnabled = false;

	lSize = sizeof(m_iZClipTop);
	if (!LoadRegistryInfo("radiant_ZClipTop",		&m_iZClipTop, &lSize))
		m_iZClipTop = 64;

	lSize = sizeof(m_iZClipBottom);
	if (!LoadRegistryInfo("radiant_ZClipBottom",	&m_iZClipBottom, &lSize))
		m_iZClipBottom = -64;

	Legalise();
}

CZClip::~CZClip()
{
	// TODO: registry save

	SaveRegistryInfo("radiant_ZClipEnabled", &m_bEnabled,		sizeof(m_bEnabled));
	SaveRegistryInfo("radiant_ZClipTop",     &m_iZClipTop,		sizeof(m_iZClipTop));
	SaveRegistryInfo("radiant_ZClipBottom",  &m_iZClipBottom,	sizeof(m_iZClipBottom));
}

void CZClip::Reset(void)
{
    Sys_Printf("void CZClip::Reset(void)\r\n");
}



int	CZClip::GetTop(void)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intCZClip::GetTop(void)\r\n");
    return retVal;
}


int CZClip::GetBottom(void)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CZClip::GetBottom(void)\r\n");
    return retVal;
}


void CZClip::Legalise(void)
{
    Sys_Printf("void CZClip::Legalise(void)\r\n");
}



void CZClip::SetTop(int iNewZ)
{
    Sys_Printf("void CZClip::SetTop(int iNewZ)\r\n");
}


void CZClip::SetBottom(int iNewZ)
{
    Sys_Printf("void CZClip::SetBottom(int iNewZ)\r\n");
}


bool CZClip::IsEnabled(void)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CZClip::IsEnabled(void)\r\n");
    return retVal;
}



bool CZClip::Enable(bool bOnOff)
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool CZClip::Enable(bool bOnOff)\r\n");
    return retVal;
}


#define ZCLIP_BAR_THICKNESS 8
#define ZCLIP_ARROWHEIGHT (ZCLIP_BAR_THICKNESS*8)

void CZClip::Paint(void)
{
    Sys_Printf("void CZClip::Paint(void)\r\n");
}



///////////////// eof ///////////////////


