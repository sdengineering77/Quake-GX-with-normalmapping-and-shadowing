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
#include "DialogAFConstraintHinge.h"


// DialogAFConstraintHinge dialog

toolTip_t DialogAFConstraintHinge::toolTips[] = {
	{ IDC_RADIO_ANCHOR_JOINT, "use the position of a joint for the anchor" },
	{ IDC_COMBO_ANCHOR_JOINT, "anchor joint name" },
	{ IDC_RADIO_ANCHOR_COORDINATES, "use absolute coordinates for the anchor" },
	{ IDC_EDIT_ANCHOR_X, "anchor x-coordinate" },
	{ IDC_EDIT_ANCHOR_Y, "anchor y-coordinate" },
	{ IDC_EDIT_ANCHOR_Z, "anchor z-coordinate" },
	{ IDC_RADIO_HINGE_AXIS_BONE, "use a bone for the hinge axis" },
	{ IDC_RADIO_HINGE_AXIS_ANGLES, "use angles to set the orientation of the hinge axis" },
	{ IDC_COMBO_HINGE_AXIS_JOINT1, "bone start joint" },
	{ IDC_COMBO_HINGE_AXIS_JOINT2, "bone end joint" },
	{ IDC_EDIT_HINGE_AXIS_PITCH, "pitch angle" },
	{ IDC_EDIT_HINGE_AXIS_YAW, "yaw angle" },
	{ IDC_RADIO_HINGE_LIMIT_NONE, "no limit" },
	{ IDC_RADIO_HINGE_LIMIT_ANGLES, "angle limit" },
	{ IDC_EDIT_HINGE_LIMIT_ANGLE1, "limit orientation" },
	{ IDC_EDIT_HINGE_LIMIT_ANGLE2, "limit width" },
	{ IDC_EDIT_HINGE_LIMIT_ANGLE3, "limit angle" },
	{ 0, NULL }
};

IMPLEMENT_DYNAMIC(DialogAFConstraintHinge, CDialog)

/*
================
DialogAFConstraintHinge::DialogAFConstraintHinge
================
*/
DialogAFConstraintHinge::DialogAFConstraintHinge(CWnd* pParent /*=NULL*/)
	: CDialog(DialogAFConstraintHinge::IDD, pParent)
	, m_anchor_x(0)
	, m_anchor_y(0)
	, m_anchor_z(0)
	, m_axisPitch(0)
	, m_axisYaw(0)
	, m_limitAngle1(0)
	, m_limitAngle2(30.0f)
	, m_limitAngle3(0)
	, constraint(NULL)
	, file(NULL)
{
	Create( IDD_DIALOG_AF_CONSTRAINT_HINGE, pParent );
	EnableToolTips( TRUE );
}

/*
================
DialogAFConstraintHinge::~DialogAFConstraintHinge
================
*/
DialogAFConstraintHinge::~DialogAFConstraintHinge() {
}

/*
================
DialogAFConstraintHinge::DoDataExchange
================
*/
void DialogAFConstraintHinge::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void DialogAFConstraintHinge::DoDataExchange(CDataExchange* pDX)\r\n");
}


/*
================
DialogAFConstraintHinge::InitJointLists
================
*/
void DialogAFConstraintHinge::InitJointLists( void ) {
    Sys_Printf("void DialogAFConstraintHinge::InitJointLists( void )\r\n");
}


/*
================
DialogAFConstraintHinge::LoadFile
================
*/
void DialogAFConstraintHinge::LoadFile( idDeclAF *af ) {
    Sys_Printf("void DialogAFConstraintHinge::LoadFile( idDeclAF *af )\r\n");
}


/*
================
DialogAFConstraintHinge::SaveFile
================
*/
void DialogAFConstraintHinge::SaveFile( void ) {
    Sys_Printf("void DialogAFConstraintHinge::SaveFile( void )\r\n");
}


/*
================
DialogAFConstraintHinge::LoadConstraint
================
*/
void DialogAFConstraintHinge::LoadConstraint( idDeclAF_Constraint *c ) {
    Sys_Printf("void DialogAFConstraintHinge::LoadConstraint( idDeclAF_Constraint *c )\r\n");
}


/*
================
DialogAFConstraintHinge::SaveConstraint
================
*/
void DialogAFConstraintHinge::SaveConstraint( void ) {
    Sys_Printf("void DialogAFConstraintHinge::SaveConstraint( void )\r\n");
}


/*
================
DialogAFConstraintHinge::UpdateFile
================
*/
void DialogAFConstraintHinge::UpdateFile( void ) {
    Sys_Printf("void DialogAFConstraintHinge::UpdateFile( void )\r\n");
}


/*
================
DialogAFConstraintHinge::OnToolHitTest
================
*/
int DialogAFConstraintHinge::OnToolHitTest( CPoint point, TOOLINFO* pTI ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int DialogAFConstraintHinge::OnToolHitTest( CPoint point, TOOLINFO* pTI )\r\n");
    return retVal;
}



BEGIN_MESSAGE_MAP(DialogAFConstraintHinge, CDialog)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTW, 0, 0xFFFF, OnToolTipNotify)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTA, 0, 0xFFFF, OnToolTipNotify)
	ON_BN_CLICKED(IDC_RADIO_ANCHOR_JOINT, OnBnClickedRadioAnchorJoint)
	ON_BN_CLICKED(IDC_RADIO_ANCHOR_COORDINATES, OnBnClickedRadioAnchorCoordinates)
	ON_CBN_SELCHANGE(IDC_COMBO_ANCHOR_JOINT, OnCbnSelchangeComboAnchorJoint)
	ON_EN_CHANGE(IDC_EDIT_ANCHOR_X, OnEnChangeEditAnchorX)
	ON_EN_CHANGE(IDC_EDIT_ANCHOR_Y, OnEnChangeEditAnchorY)
	ON_EN_CHANGE(IDC_EDIT_ANCHOR_Z, OnEnChangeEditAnchorZ)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_ANCHOR_X, OnDeltaposSpinAnchorX)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_ANCHOR_Y, OnDeltaposSpinAnchorY)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_ANCHOR_Z, OnDeltaposSpinAnchorZ)
	ON_BN_CLICKED(IDC_RADIO_HINGE_AXIS_BONE, OnBnClickedRadioHingeAxisBone)
	ON_BN_CLICKED(IDC_RADIO_HINGE_AXIS_ANGLES, OnBnClickedRadioHingeAxisAngles)
	ON_CBN_SELCHANGE(IDC_COMBO_HINGE_AXIS_JOINT1, OnCbnSelchangeComboHingeAxisJoint1)
	ON_CBN_SELCHANGE(IDC_COMBO_HINGE_AXIS_JOINT2, OnCbnSelchangeComboHingeAxisJoint2)
	ON_EN_CHANGE(IDC_EDIT_HINGE_AXIS_PITCH, OnEnChangeEditHingeAxisPitch)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_HINGE_AXIS_PITCH, OnDeltaposSpinHingeAxisPitch)
	ON_EN_CHANGE(IDC_EDIT_HINGE_AXIS_YAW, OnEnChangeEditHingeAxisYaw)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_HINGE_AXIS_YAW, OnDeltaposSpinHingeAxisYaw)
	ON_BN_CLICKED(IDC_RADIO_HINGE_LIMIT_NONE, OnBnClickedRadioHingeLimitNone)
	ON_BN_CLICKED(IDC_RADIO_HINGE_LIMIT_ANGLES, OnBnClickedRadioHingeLimitAngles)
	ON_EN_CHANGE(IDC_EDIT_HINGE_LIMIT_ANGLE1, OnEnChangeEditHingeLimitAngle1)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_HINGE_LIMIT_ANGLE1, OnDeltaposSpinHingeLimitAngle1)
	ON_EN_CHANGE(IDC_EDIT_HINGE_LIMIT_ANGLE2, OnEnChangeEditHingeLimitAngle2)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_HINGE_LIMIT_ANGLE2, OnDeltaposSpinHingeLimitAngle2)
	ON_EN_CHANGE(IDC_EDIT_HINGE_LIMIT_ANGLE3, OnEnChangeEditHingeLimitAngle3)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_HINGE_LIMIT_ANGLE3, OnDeltaposSpinHingeLimitAngle3)
END_MESSAGE_MAP()


// DialogAFConstraintHinge message handlers

BOOL DialogAFConstraintHinge::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogAFConstraintHinge::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


void DialogAFConstraintHinge::OnBnClickedRadioAnchorJoint() {
    Sys_Printf("void DialogAFConstraintHinge::OnBnClickedRadioAnchorJoint()\r\n");
}


void DialogAFConstraintHinge::OnBnClickedRadioAnchorCoordinates() {
    Sys_Printf("void DialogAFConstraintHinge::OnBnClickedRadioAnchorCoordinates()\r\n");
}


void DialogAFConstraintHinge::OnCbnSelchangeComboAnchorJoint() {
    Sys_Printf("void DialogAFConstraintHinge::OnCbnSelchangeComboAnchorJoint()\r\n");
}


void DialogAFConstraintHinge::OnEnChangeEditAnchorX() {
    Sys_Printf("void DialogAFConstraintHinge::OnEnChangeEditAnchorX()\r\n");
}


void DialogAFConstraintHinge::OnEnChangeEditAnchorY() {
    Sys_Printf("void DialogAFConstraintHinge::OnEnChangeEditAnchorY()\r\n");
}


void DialogAFConstraintHinge::OnEnChangeEditAnchorZ() {
    Sys_Printf("void DialogAFConstraintHinge::OnEnChangeEditAnchorZ()\r\n");
}


void DialogAFConstraintHinge::OnDeltaposSpinAnchorX(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintHinge::OnDeltaposSpinAnchorX(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintHinge::OnDeltaposSpinAnchorY(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintHinge::OnDeltaposSpinAnchorY(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintHinge::OnDeltaposSpinAnchorZ(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintHinge::OnDeltaposSpinAnchorZ(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintHinge::OnBnClickedRadioHingeAxisBone() {
    Sys_Printf("void DialogAFConstraintHinge::OnBnClickedRadioHingeAxisBone()\r\n");
}


void DialogAFConstraintHinge::OnBnClickedRadioHingeAxisAngles() {
    Sys_Printf("void DialogAFConstraintHinge::OnBnClickedRadioHingeAxisAngles()\r\n");
}


void DialogAFConstraintHinge::OnCbnSelchangeComboHingeAxisJoint1() {
    Sys_Printf("void DialogAFConstraintHinge::OnCbnSelchangeComboHingeAxisJoint1()\r\n");
}


void DialogAFConstraintHinge::OnCbnSelchangeComboHingeAxisJoint2() {
    Sys_Printf("void DialogAFConstraintHinge::OnCbnSelchangeComboHingeAxisJoint2()\r\n");
}


void DialogAFConstraintHinge::OnEnChangeEditHingeAxisPitch() {
    Sys_Printf("void DialogAFConstraintHinge::OnEnChangeEditHingeAxisPitch()\r\n");
}


void DialogAFConstraintHinge::OnDeltaposSpinHingeAxisPitch(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintHinge::OnDeltaposSpinHingeAxisPitch(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintHinge::OnEnChangeEditHingeAxisYaw() {
    Sys_Printf("void DialogAFConstraintHinge::OnEnChangeEditHingeAxisYaw()\r\n");
}


void DialogAFConstraintHinge::OnDeltaposSpinHingeAxisYaw(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintHinge::OnDeltaposSpinHingeAxisYaw(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintHinge::OnBnClickedRadioHingeLimitNone() {
    Sys_Printf("void DialogAFConstraintHinge::OnBnClickedRadioHingeLimitNone()\r\n");
}


void DialogAFConstraintHinge::OnBnClickedRadioHingeLimitAngles() {
    Sys_Printf("void DialogAFConstraintHinge::OnBnClickedRadioHingeLimitAngles()\r\n");
}


void DialogAFConstraintHinge::OnEnChangeEditHingeLimitAngle1() {
    Sys_Printf("void DialogAFConstraintHinge::OnEnChangeEditHingeLimitAngle1()\r\n");
}


void DialogAFConstraintHinge::OnDeltaposSpinHingeLimitAngle1(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintHinge::OnDeltaposSpinHingeLimitAngle1(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintHinge::OnEnChangeEditHingeLimitAngle2() {
    Sys_Printf("void DialogAFConstraintHinge::OnEnChangeEditHingeLimitAngle2()\r\n");
}


void DialogAFConstraintHinge::OnDeltaposSpinHingeLimitAngle2(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintHinge::OnDeltaposSpinHingeLimitAngle2(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintHinge::OnEnChangeEditHingeLimitAngle3() {
    Sys_Printf("void DialogAFConstraintHinge::OnEnChangeEditHingeLimitAngle3()\r\n");
}


void DialogAFConstraintHinge::OnDeltaposSpinHingeLimitAngle3(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintHinge::OnDeltaposSpinHingeLimitAngle3(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}

