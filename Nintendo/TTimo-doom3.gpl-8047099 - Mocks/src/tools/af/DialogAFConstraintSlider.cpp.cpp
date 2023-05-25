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

#include "../../sys/win32/rc/AFEditor_resource.h"

#include "DialogAF.h"
#include "DialogAFConstraint.h"
#include "DialogAFConstraintSlider.h"


// DialogAFConstraintSlider dialog

toolTip_t DialogAFConstraintSlider::toolTips[] = {
	{ IDC_RADIO_SLIDER_AXIS_BONE, "use a bone for the slider axis" },
	{ IDC_RADIO_SLIDER_AXIS_ANGLES, "use angles to set the orientation of the slider axis" },
	{ IDC_COMBO_SLIDER_AXIS_JOINT1, "bone start joint" },
	{ IDC_COMBO_SLIDER_AXIS_JOINT2, "bone end joint" },
	{ IDC_EDIT_SLIDER_AXIS_PITCH, "pitch angle" },
	{ IDC_EDIT_SLIDER_AXIS_YAW, "yaw angle" },
	{ 0, NULL }
};

IMPLEMENT_DYNAMIC(DialogAFConstraintSlider, CDialog)

/*
================
DialogAFConstraintSlider::DialogAFConstraintSlider
================
*/
DialogAFConstraintSlider::DialogAFConstraintSlider(CWnd* pParent /*=NULL*/)
	: CDialog(DialogAFConstraintSlider::IDD, pParent)
	, m_axisPitch(0)
	, m_axisYaw(0)
	, constraint(NULL)
	, file(NULL)
{
	Create( IDD_DIALOG_AF_CONSTRAINT_SLIDER, pParent );
	EnableToolTips( TRUE );
}

/*
================
DialogAFConstraintSlider::~DialogAFConstraintSlider
================
*/
DialogAFConstraintSlider::~DialogAFConstraintSlider() {
}

/*
================
DialogAFConstraintSlider::DoDataExchange
================
*/
void DialogAFConstraintSlider::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void DialogAFConstraintSlider::DoDataExchange(CDataExchange* pDX)\r\n");
}


/*
================
DialogAFConstraintSlider::InitJointLists
================
*/
void DialogAFConstraintSlider::InitJointLists( void ) {
    Sys_Printf("void DialogAFConstraintSlider::InitJointLists( void )\r\n");
}


/*
================
DialogAFConstraintSlider::LoadFile
================
*/
void DialogAFConstraintSlider::LoadFile( idDeclAF *af ) {
    Sys_Printf("void DialogAFConstraintSlider::LoadFile( idDeclAF *af )\r\n");
}


/*
================
DialogAFConstraintSlider::SaveFile
================
*/
void DialogAFConstraintSlider::SaveFile( void ) {
    Sys_Printf("void DialogAFConstraintSlider::SaveFile( void )\r\n");
}


/*
================
DialogAFConstraintSlider::LoadConstraint
================
*/
void DialogAFConstraintSlider::LoadConstraint( idDeclAF_Constraint *c ) {
    Sys_Printf("void DialogAFConstraintSlider::LoadConstraint( idDeclAF_Constraint *c )\r\n");
}


/*
================
DialogAFConstraintSlider::SaveConstraint
================
*/
void DialogAFConstraintSlider::SaveConstraint( void ) {
    Sys_Printf("void DialogAFConstraintSlider::SaveConstraint( void )\r\n");
}


/*
================
DialogAFConstraintSlider::UpdateFile
================
*/
void DialogAFConstraintSlider::UpdateFile( void ) {
    Sys_Printf("void DialogAFConstraintSlider::UpdateFile( void )\r\n");
}


/*
================
DialogAFConstraintSlider::OnToolHitTest
================
*/
int DialogAFConstraintSlider::OnToolHitTest( CPoint point, TOOLINFO* pTI ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int DialogAFConstraintSlider::OnToolHitTest( CPoint point, TOOLINFO* pTI )\r\n");
    return retVal;
}



BEGIN_MESSAGE_MAP(DialogAFConstraintSlider, CDialog)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTW, 0, 0xFFFF, OnToolTipNotify)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTA, 0, 0xFFFF, OnToolTipNotify)
	ON_BN_CLICKED(IDC_RADIO_SLIDER_AXIS_BONE, OnBnClickedRadioSliderAxisBone)
	ON_BN_CLICKED(IDC_RADIO_SLIDER_AXIS_ANGLES, OnBnClickedRadioSliderAxisAngles)
	ON_CBN_SELCHANGE(IDC_COMBO_SLIDER_AXIS_JOINT1, OnCbnSelchangeComboSliderAxisJoint1)
	ON_CBN_SELCHANGE(IDC_COMBO_SLIDER_AXIS_JOINT2, OnCbnSelchangeComboSliderAxisJoint2)
	ON_EN_CHANGE(IDC_EDIT_SLIDER_AXIS_PITCH, OnEnChangeEditSliderAxisPitch)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_SLIDER_AXIS_PITCH, OnDeltaposSpinSliderAxisPitch)
	ON_EN_CHANGE(IDC_EDIT_SLIDER_AXIS_YAW, OnEnChangeEditSliderAxisYaw)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_SLIDER_AXIS_YAW, OnDeltaposSpinSliderAxisYaw)
END_MESSAGE_MAP()


// DialogAFConstraintSlider message handlers

BOOL DialogAFConstraintSlider::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogAFConstraintSlider::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


void DialogAFConstraintSlider::OnBnClickedRadioSliderAxisBone() {
    Sys_Printf("void DialogAFConstraintSlider::OnBnClickedRadioSliderAxisBone()\r\n");
}


void DialogAFConstraintSlider::OnBnClickedRadioSliderAxisAngles() {
    Sys_Printf("void DialogAFConstraintSlider::OnBnClickedRadioSliderAxisAngles()\r\n");
}


void DialogAFConstraintSlider::OnCbnSelchangeComboSliderAxisJoint1() {
    Sys_Printf("void DialogAFConstraintSlider::OnCbnSelchangeComboSliderAxisJoint1()\r\n");
}


void DialogAFConstraintSlider::OnCbnSelchangeComboSliderAxisJoint2() {
    Sys_Printf("void DialogAFConstraintSlider::OnCbnSelchangeComboSliderAxisJoint2()\r\n");
}


void DialogAFConstraintSlider::OnEnChangeEditSliderAxisPitch() {
    Sys_Printf("void DialogAFConstraintSlider::OnEnChangeEditSliderAxisPitch()\r\n");
}


void DialogAFConstraintSlider::OnDeltaposSpinSliderAxisPitch(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintSlider::OnDeltaposSpinSliderAxisPitch(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintSlider::OnEnChangeEditSliderAxisYaw() {
    Sys_Printf("void DialogAFConstraintSlider::OnEnChangeEditSliderAxisYaw()\r\n");
}


void DialogAFConstraintSlider::OnDeltaposSpinSliderAxisYaw(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintSlider::OnDeltaposSpinSliderAxisYaw(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}

