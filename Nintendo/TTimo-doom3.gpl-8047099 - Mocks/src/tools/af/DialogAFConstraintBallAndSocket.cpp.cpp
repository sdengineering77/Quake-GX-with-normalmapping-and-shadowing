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
#include "DialogAFConstraintBallAndSocket.h"


// DialogAFConstraintBallAndSocket dialog

toolTip_t DialogAFConstraintBallAndSocket::toolTips[] = {
	{ IDC_RADIO_ANCHOR_JOINT, "use the position of a joint for the anchor" },
	{ IDC_COMBO_ANCHOR_JOINT, "anchor joint name" },
	{ IDC_RADIO_ANCHOR_COORDINATES, "use absolute coordinates for the anchor" },
	{ IDC_EDIT_ANCHOR_X, "anchor x-coordinate" },
	{ IDC_EDIT_ANCHOR_Y, "anchor y-coordinate" },
	{ IDC_EDIT_ANCHOR_Z, "anchor z-coordinate" },
	{ IDC_RADIO_BAS_LIMIT_NONE, "no joint limit" },
	{ IDC_RADIO_BAS_LIMIT_CONE, "cone shaped joint limit" },
	{ IDC_RADIO_BAS_LIMIT_PYRAMID, "pyramid shaped joint limit" },
	{ IDC_EDIT_BAS_LIMIT_CONE_ANGLE, "cone angle" },
	{ IDC_EDIT_BAS_LIMIT_PYRAMID_ANGLE1, "first pyramid angle" },
	{ IDC_EDIT_BAS_LIMIT_PYRAMID_ANGLE2, "second pyramid angle" },
	{ IDC_EDIT_BAS_LIMIT_ROLL, "roll angle" },
	{ IDC_RADIO_BAS_LIMIT_BONE, "use a bone for the orientation of the limit" },
	{ IDC_RADIO_BAS_LIMIT_ANGLES, "use angles to set the orientation of the limit" },
	{ IDC_COMBO_BAS_LIMIT_JOINT1, "bone start joint" },
	{ IDC_COMBO_BAS_LIMIT_JOINT2, "bone end joint" },
	{ IDC_EDIT_BAS_LIMIT_PITCH, "pitch angle" },
	{ IDC_EDIT_BAS_LIMIT_YAW, "yaw angle" },
	{ IDC_RADIO_BAS_LIMIT_AXIS_BONE, "use a bone for the limit axis" },
	{ IDC_RADIO_BAS_LIMIT_AXIS_ANGLES, "use angles to set the orientation of the limit axis" },
	{ IDC_COMBO_BAS_LIMIT_AXIS_JOINT1, "bone start joint" },
	{ IDC_COMBO_BAS_LIMIT_AXIS_JOINT2, "bone end joint" },
	{ IDC_EDIT_BAS_LIMIT_AXIS_PITCH, "pitch angle" },
	{ IDC_EDIT_BAS_LIMIT_AXIS_YAW, "yaw angle" },
	{ 0, NULL }
};

IMPLEMENT_DYNAMIC(DialogAFConstraintBallAndSocket, CDialog)

/*
================
DialogAFConstraintBallAndSocket::DialogAFConstraintBallAndSocket
================
*/
DialogAFConstraintBallAndSocket::DialogAFConstraintBallAndSocket(CWnd* pParent /*=NULL*/)
	: CDialog(DialogAFConstraintBallAndSocket::IDD, pParent)
	, m_anchor_x(0)
	, m_anchor_y(0)
	, m_anchor_z(0)
	, m_coneAngle(30.0f)
	, m_pyramidAngle1(30.0f)
	, m_pyramidAngle2(30.0f)
	, m_limitPitch(0)
	, m_limitYaw(0)
	, m_limitRoll(0)
	, m_limitAxisPitch(0)
	, m_limitAxisYaw(0)
	, constraint(NULL)
	, file(NULL)
{
	Create( IDD_DIALOG_AF_CONSTRAINT_BALLANDSOCKET, pParent );
	EnableToolTips( TRUE );
}

/*
================
DialogAFConstraintBallAndSocket::~DialogAFConstraintBallAndSocket
================
*/
DialogAFConstraintBallAndSocket::~DialogAFConstraintBallAndSocket() {
}

/*
================
DialogAFConstraintBallAndSocket::DoDataExchange
================
*/
void DialogAFConstraintBallAndSocket::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::DoDataExchange(CDataExchange* pDX)\r\n");
}


/*
================
DialogAFConstraintBallAndSocket::InitJointLists
================
*/
void DialogAFConstraintBallAndSocket::InitJointLists( void ) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::InitJointLists( void )\r\n");
}


/*
================
DialogAFConstraintBallAndSocket::LoadFile
================
*/
void DialogAFConstraintBallAndSocket::LoadFile( idDeclAF *af ) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::LoadFile( idDeclAF *af )\r\n");
}


/*
================
DialogAFConstraintBallAndSocket::SaveFile
================
*/
void DialogAFConstraintBallAndSocket::SaveFile( void ) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::SaveFile( void )\r\n");
}


/*
================
DialogAFConstraintBallAndSocket::LoadConstraint
================
*/
void DialogAFConstraintBallAndSocket::LoadConstraint( idDeclAF_Constraint *c ) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::LoadConstraint( idDeclAF_Constraint *c )\r\n");
}


/*
================
DialogAFConstraintBallAndSocket::SaveConstraint
================
*/
void DialogAFConstraintBallAndSocket::SaveConstraint( void ) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::SaveConstraint( void )\r\n");
}


/*
================
DialogAFConstraintBallAndSocket::UpdateFile
================
*/
void DialogAFConstraintBallAndSocket::UpdateFile( void ) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::UpdateFile( void )\r\n");
}


/*
================
DialogAFConstraintBallAndSocket::OnToolHitTest
================
*/
int DialogAFConstraintBallAndSocket::OnToolHitTest( CPoint point, TOOLINFO* pTI ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int DialogAFConstraintBallAndSocket::OnToolHitTest( CPoint point, TOOLINFO* pTI )\r\n");
    return retVal;
}



BEGIN_MESSAGE_MAP(DialogAFConstraintBallAndSocket, CDialog)
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
	ON_BN_CLICKED(IDC_RADIO_BAS_LIMIT_NONE, OnBnClickedRadioBasLimitNone)
	ON_BN_CLICKED(IDC_RADIO_BAS_LIMIT_CONE, OnBnClickedRadioBasLimitCone)
	ON_BN_CLICKED(IDC_RADIO_BAS_LIMIT_PYRAMID, OnBnClickedRadioBasLimitPyramid)
	ON_EN_CHANGE(IDC_EDIT_BAS_LIMIT_CONE_ANGLE, OnEnChangeEditBasLimitConeAngle)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_BAS_LIMIT_CONE_ANGLE, OnDeltaposSpinBasLimitConeAngle)
	ON_EN_CHANGE(IDC_EDIT_BAS_LIMIT_PYRAMID_ANGLE1, OnEnChangeEditBasLimitPyramidAngle1)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_BAS_LIMIT_PYRAMID_ANGLE1, OnDeltaposSpinBasLimitPyramidAngle1)
	ON_EN_CHANGE(IDC_EDIT_BAS_LIMIT_PYRAMID_ANGLE2, OnEnChangeEditBasLimitPyramidAngle2)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_BAS_LIMIT_PYRAMID_ANGLE2, OnDeltaposSpinBasLimitPyramidAngle2)
	ON_EN_CHANGE(IDC_EDIT_BAS_LIMIT_ROLL, OnEnChangeEditBasLimitRoll)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_BAS_LIMIT_ROLL, OnDeltaposSpinBasLimitRoll)
	ON_BN_CLICKED(IDC_RADIO_BAS_LIMIT_BONE, OnBnClickedRadioBasLimitBone)
	ON_BN_CLICKED(IDC_RADIO_BAS_LIMIT_ANGLES, OnBnClickedRadioBasLimitAngles)
	ON_CBN_SELCHANGE(IDC_COMBO_BAS_LIMIT_JOINT1, OnCbnSelchangeComboBasLimitJoint1)
	ON_CBN_SELCHANGE(IDC_COMBO_BAS_LIMIT_JOINT2, OnCbnSelchangeComboBasLimitJoint2)
	ON_EN_CHANGE(IDC_EDIT_BAS_LIMIT_PITCH, OnEnChangeEditBasLimitPitch)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_BAS_LIMIT_PITCH, OnDeltaposSpinBasLimitPitch)
	ON_EN_CHANGE(IDC_EDIT_BAS_LIMIT_YAW, OnEnChangeEditBasLimitYaw)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_BAS_LIMIT_YAW, OnDeltaposSpinBasLimitYaw)
	ON_BN_CLICKED(IDC_RADIO_BAS_LIMIT_AXIS_BONE, OnBnClickedRadioBasLimitAxisBone)
	ON_BN_CLICKED(IDC_RADIO_BAS_LIMIT_AXIS_ANGLES, OnBnClickedRadioBasLimitAxisAngles)
	ON_CBN_SELCHANGE(IDC_COMBO_BAS_LIMIT_AXIS_JOINT1, OnCbnSelchangeComboBasLimitAxisJoint1)
	ON_CBN_SELCHANGE(IDC_COMBO_BAS_LIMIT_AXIS_JOINT2, OnCbnSelchangeComboBasLimitAxisJoint2)
	ON_EN_CHANGE(IDC_EDIT_BAS_LIMIT_AXIS_PITCH, OnEnChangeEditBasLimitAxisPitch)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_BAS_LIMIT_AXIS_PITCH, OnDeltaposSpinBasLimitAxisPitch)
	ON_EN_CHANGE(IDC_EDIT_BAS_LIMIT_AXIS_YAW, OnEnChangeEditBasLimitAxisYaw)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_BAS_LIMIT_AXIS_YAW, OnDeltaposSpinBasLimitAxisYaw)
END_MESSAGE_MAP()


// DialogAFConstraintBallAndSocket message handlers

BOOL DialogAFConstraintBallAndSocket::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogAFConstraintBallAndSocket::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


void DialogAFConstraintBallAndSocket::OnBnClickedRadioAnchorJoint() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnBnClickedRadioAnchorJoint()\r\n");
}


void DialogAFConstraintBallAndSocket::OnBnClickedRadioAnchorCoordinates() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnBnClickedRadioAnchorCoordinates()\r\n");
}


void DialogAFConstraintBallAndSocket::OnCbnSelchangeComboAnchorJoint() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnCbnSelchangeComboAnchorJoint()\r\n");
}


void DialogAFConstraintBallAndSocket::OnEnChangeEditAnchorX() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnEnChangeEditAnchorX()\r\n");
}


void DialogAFConstraintBallAndSocket::OnEnChangeEditAnchorY() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnEnChangeEditAnchorY()\r\n");
}


void DialogAFConstraintBallAndSocket::OnEnChangeEditAnchorZ() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnEnChangeEditAnchorZ()\r\n");
}


void DialogAFConstraintBallAndSocket::OnDeltaposSpinAnchorX(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnDeltaposSpinAnchorX(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintBallAndSocket::OnDeltaposSpinAnchorY(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnDeltaposSpinAnchorY(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintBallAndSocket::OnDeltaposSpinAnchorZ(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnDeltaposSpinAnchorZ(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintBallAndSocket::OnBnClickedRadioBasLimitNone() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnBnClickedRadioBasLimitNone()\r\n");
}


void DialogAFConstraintBallAndSocket::OnBnClickedRadioBasLimitCone() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnBnClickedRadioBasLimitCone()\r\n");
}


void DialogAFConstraintBallAndSocket::OnBnClickedRadioBasLimitPyramid() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnBnClickedRadioBasLimitPyramid()\r\n");
}


void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitConeAngle() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitConeAngle()\r\n");
}


void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitConeAngle(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitConeAngle(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitPyramidAngle1() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitPyramidAngle1()\r\n");
}


void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitPyramidAngle1(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitPyramidAngle1(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitPyramidAngle2() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitPyramidAngle2()\r\n");
}


void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitPyramidAngle2(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitPyramidAngle2(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitRoll() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitRoll()\r\n");
}


void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitRoll(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitRoll(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintBallAndSocket::OnBnClickedRadioBasLimitBone() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnBnClickedRadioBasLimitBone()\r\n");
}


void DialogAFConstraintBallAndSocket::OnBnClickedRadioBasLimitAngles() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnBnClickedRadioBasLimitAngles()\r\n");
}


void DialogAFConstraintBallAndSocket::OnCbnSelchangeComboBasLimitJoint1() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnCbnSelchangeComboBasLimitJoint1()\r\n");
}


void DialogAFConstraintBallAndSocket::OnCbnSelchangeComboBasLimitJoint2() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnCbnSelchangeComboBasLimitJoint2()\r\n");
}


void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitPitch() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitPitch()\r\n");
}


void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitPitch(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitPitch(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitYaw() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitYaw()\r\n");
}


void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitYaw(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitYaw(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintBallAndSocket::OnBnClickedRadioBasLimitAxisBone() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnBnClickedRadioBasLimitAxisBone()\r\n");
}


void DialogAFConstraintBallAndSocket::OnBnClickedRadioBasLimitAxisAngles() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnBnClickedRadioBasLimitAxisAngles()\r\n");
}


void DialogAFConstraintBallAndSocket::OnCbnSelchangeComboBasLimitAxisJoint1() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnCbnSelchangeComboBasLimitAxisJoint1()\r\n");
}


void DialogAFConstraintBallAndSocket::OnCbnSelchangeComboBasLimitAxisJoint2() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnCbnSelchangeComboBasLimitAxisJoint2()\r\n");
}


void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitAxisPitch() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitAxisPitch()\r\n");
}


void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitAxisPitch(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitAxisPitch(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitAxisYaw() {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnEnChangeEditBasLimitAxisYaw()\r\n");
}


void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitAxisYaw(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintBallAndSocket::OnDeltaposSpinBasLimitAxisYaw(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}

