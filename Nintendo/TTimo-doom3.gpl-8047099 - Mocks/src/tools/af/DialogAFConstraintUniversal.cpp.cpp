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
#include "DialogAFConstraintUniversal.h"


// DialogAFConstraintUniversal dialog

toolTip_t DialogAFConstraintUniversal::toolTips[] = {
	{ IDC_RADIO_ANCHOR_JOINT, "use the position of a joint for the anchor" },
	{ IDC_COMBO_ANCHOR_JOINT, "anchor joint name" },
	{ IDC_RADIO_ANCHOR_COORDINATES, "use absolute coordinates for the anchor" },
	{ IDC_EDIT_ANCHOR_X, "anchor x-coordinate" },
	{ IDC_EDIT_ANCHOR_Y, "anchor y-coordinate" },
	{ IDC_EDIT_ANCHOR_Z, "anchor z-coordinate" },
	{ IDC_RADIO_UNIVERSAL_BONE_SHAFT1, "use a bone for the first shaft" },
	{ IDC_RADIO_UNIVERSAL_ANGLES_SHAFT1, "use angles to set the orientation of the first shaft" },
	{ IDC_COMBO_UNIVERSAL_JOINT1_SHAFT1, "bone start joint" },
	{ IDC_COMBO_UNIVERSAL_JOINT2_SHAFT1, "bone end joint" },
	{ IDC_EDIT_UNIVERSAL_PITCH_SHAFT1, "pitch angle" },
	{ IDC_EDIT_UNIVERSAL_YAW_SHAFT1, "yaw angle" },
	{ IDC_RADIO_UNIVERSAL_BONE_SHAFT2, "use a bone for the second shaft" },
	{ IDC_RADIO_UNIVERSAL_ANGLES_SHAFT2, "use angles to set the orientation of the second shaft" },
	{ IDC_COMBO_UNIVERSAL_JOINT1_SHAFT2, "bone start joint" },
	{ IDC_COMBO_UNIVERSAL_JOINT2_SHAFT2, "bone end joint" },
	{ IDC_EDIT_UNIVERSAL_PITCH_SHAFT2, "pitch angle" },
	{ IDC_EDIT_UNIVERSAL_YAW_SHAFT2, "yaw angle" },
	{ IDC_RADIO_UNIVERSAL_LIMIT_NONE, "no joint limit" },
	{ IDC_RADIO_UNIVERSAL_LIMIT_CONE, "cone shaped joint limit" },
	{ IDC_RADIO_UNIVERSAL_LIMIT_PYRAMID, "pyramid shaped joint limit" },
	{ IDC_RADIO_UNIVERSAL_LIMIT_BONE, "use a bone for the limit orientation" },
	{ IDC_RADIO_UNIVERSAL_LIMIT_ANGLES, "use angles for the limit orientation" },
	{ IDC_COMBO_UNIVERSAL_LIMIT_JOINT1, "bone start joint" },
	{ IDC_COMBO_UNIVERSAL_LIMIT_JOINT2, "bone end joint" },
	{ IDC_EDIT_UNIVERSAL_LIMIT_PITCH, "pitch angle" },
	{ IDC_EDIT_UNIVERSAL_LIMIT_YAW, "yaw angle" },
	{ IDC_EDIT_UNIVERSAL_LIMIT_ROLL, "roll angle" },
	{ IDC_EDIT_UNIVERSAL_LIMIT_CONE_ANGLE, "cone angle" },
	{ IDC_EDIT_UNIVERSAL_LIMIT_PYRAMID_ANGLE1, "first pyramid angle" },
	{ IDC_EDIT_UNIVERSAL_LIMIT_PYRAMID_ANGLE2, "second pyramid angle" },
	{ 0, NULL }
};

IMPLEMENT_DYNAMIC(DialogAFConstraintUniversal, CDialog)

/*
================
DialogAFConstraintUniversal::DialogAFConstraintUniversal
================
*/
DialogAFConstraintUniversal::DialogAFConstraintUniversal(CWnd* pParent /*=NULL*/)
	: CDialog(DialogAFConstraintUniversal::IDD, pParent)
	, m_anchor_x(0)
	, m_anchor_y(0)
	, m_anchor_z(0)
	, m_pitchShaft1(0)
	, m_yawShaft1(0)
	, m_pitchShaft2(0)
	, m_yawShaft2(0)
	, m_coneAngle(30.0f)
	, m_pyramidAngle1(30.0f)
	, m_pyramidAngle2(30.0f)
	, m_limitPitch(0)
	, m_limitYaw(0)
	, m_limitRoll(0)
	, constraint(NULL)
	, file(NULL)
{
	Create( IDD_DIALOG_AF_CONSTRAINT_UNIVERSAL, pParent );
	EnableToolTips( TRUE );
}

/*
================
DialogAFConstraintUniversal::~DialogAFConstraintUniversal
================
*/
DialogAFConstraintUniversal::~DialogAFConstraintUniversal() {
}

/*
================
DialogAFConstraintUniversal::DoDataExchange
================
*/
void DialogAFConstraintUniversal::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void DialogAFConstraintUniversal::DoDataExchange(CDataExchange* pDX)\r\n");
}


/*
================
DialogAFConstraintUniversal::InitJointLists
================
*/
void DialogAFConstraintUniversal::InitJointLists( void ) {
    Sys_Printf("void DialogAFConstraintUniversal::InitJointLists( void )\r\n");
}


/*
================
DialogAFConstraintUniversal::LoadFile
================
*/
void DialogAFConstraintUniversal::LoadFile( idDeclAF *af ) {
    Sys_Printf("void DialogAFConstraintUniversal::LoadFile( idDeclAF *af )\r\n");
}


/*
================
DialogAFConstraintUniversal::SaveFile
================
*/
void DialogAFConstraintUniversal::SaveFile( void ) {
    Sys_Printf("void DialogAFConstraintUniversal::SaveFile( void )\r\n");
}


/*
================
DialogAFConstraintUniversal::LoadConstraint
================
*/
void DialogAFConstraintUniversal::LoadConstraint( idDeclAF_Constraint *c ) {
    Sys_Printf("void DialogAFConstraintUniversal::LoadConstraint( idDeclAF_Constraint *c )\r\n");
}


/*
================
DialogAFConstraintUniversal::SaveConstraint
================
*/
void DialogAFConstraintUniversal::SaveConstraint( void ) {
    Sys_Printf("void DialogAFConstraintUniversal::SaveConstraint( void )\r\n");
}


/*
================
DialogAFConstraintUniversal::UpdateFile
================
*/
void DialogAFConstraintUniversal::UpdateFile( void ) {
    Sys_Printf("void DialogAFConstraintUniversal::UpdateFile( void )\r\n");
}


/*
================
DialogAFConstraintUniversal::OnToolHitTest
================
*/
int DialogAFConstraintUniversal::OnToolHitTest( CPoint point, TOOLINFO* pTI ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int DialogAFConstraintUniversal::OnToolHitTest( CPoint point, TOOLINFO* pTI )\r\n");
    return retVal;
}



BEGIN_MESSAGE_MAP(DialogAFConstraintUniversal, CDialog)
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
	ON_BN_CLICKED(IDC_RADIO_UNIVERSAL_BONE_SHAFT1, OnBnClickedRadioUniversalBoneShaft1)
	ON_BN_CLICKED(IDC_RADIO_UNIVERSAL_ANGLES_SHAFT1, OnBnClickedRadioUniversalAnglesShaft1)
	ON_CBN_SELCHANGE(IDC_COMBO_UNIVERSAL_JOINT1_SHAFT1, OnCbnSelchangeComboUniversalJoint1Shaft1)
	ON_CBN_SELCHANGE(IDC_COMBO_UNIVERSAL_JOINT2_SHAFT1, OnCbnSelchangeComboUniversalJoint2Shaft1)
	ON_EN_CHANGE(IDC_EDIT_UNIVERSAL_PITCH_SHAFT1, OnEnChangeEditUniversalPitchShaft1)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_UNIVERSAL_PITCH_SHAFT1, OnDeltaposSpinUniversalPitchShaft1)
	ON_EN_CHANGE(IDC_EDIT_UNIVERSAL_YAW_SHAFT1, OnEnChangeEditUniversalYawShaft1)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_UNIVERSAL_YAW_SHAFT1, OnDeltaposSpinUniversalYawShaft1)
	ON_BN_CLICKED(IDC_RADIO_UNIVERSAL_BONE_SHAFT2, OnBnClickedRadioUniversalBoneShaft2)
	ON_BN_CLICKED(IDC_RADIO_UNIVERSAL_ANGLES_SHAFT2, OnBnClickedRadioUniversalAnglesShaft2)
	ON_CBN_SELCHANGE(IDC_COMBO_UNIVERSAL_JOINT1_SHAFT2, OnCbnSelchangeComboUniversalJoint1Shaft2)
	ON_CBN_SELCHANGE(IDC_COMBO_UNIVERSAL_JOINT2_SHAFT2, OnCbnSelchangeComboUniversalJoint2Shaft2)
	ON_EN_CHANGE(IDC_EDIT_UNIVERSAL_PITCH_SHAFT2, OnEnChangeEditUniversalPitchShaft2)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_UNIVERSAL_PITCH_SHAFT2, OnDeltaposSpinUniversalPitchShaft2)
	ON_EN_CHANGE(IDC_EDIT_UNIVERSAL_YAW_SHAFT2, OnEnChangeEditUniversalYawShaft2)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_UNIVERSAL_YAW_SHAFT2, OnDeltaposSpinUniversalYawShaft2)
	ON_BN_CLICKED(IDC_RADIO_UNIVERSAL_LIMIT_NONE, OnBnClickedRadioUniversalLimitNone)
	ON_BN_CLICKED(IDC_RADIO_UNIVERSAL_LIMIT_CONE, OnBnClickedRadioUniversalLimitCone)
	ON_BN_CLICKED(IDC_RADIO_UNIVERSAL_LIMIT_PYRAMID, OnBnClickedRadioUniversalLimitPyramid)
	ON_EN_CHANGE(IDC_EDIT_UNIVERSAL_LIMIT_CONE_ANGLE, OnEnChangeEditUniversalLimitConeAngle)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_UNIVERSAL_LIMIT_CONE_ANGLE, OnDeltaposSpinUniversalLimitConeAngle)
	ON_EN_CHANGE(IDC_EDIT_UNIVERSAL_LIMIT_PYRAMID_ANGLE1, OnEnChangeEditUniversalLimitPyramidAngle1)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_UNIVERSAL_LIMIT_PYRAMID_ANGLE1, OnDeltaposSpinUniversalLimitPyramidAngle1)
	ON_EN_CHANGE(IDC_EDIT_UNIVERSAL_LIMIT_PYRAMID_ANGLE2, OnEnChangeEditUniversalLimitPyramidAngle2)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_UNIVERSAL_LIMIT_PYRAMID_ANGLE2, OnDeltaposSpinUniversalLimitPyramidAngle2)
	ON_EN_CHANGE(IDC_EDIT_UNIVERSAL_LIMIT_ROLL, OnEnChangeEditUniversalLimitRoll)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_UNIVERSAL_LIMIT_ROLL, OnDeltaposSpinUniversalLimitRoll)
	ON_BN_CLICKED(IDC_RADIO_UNIVERSAL_LIMIT_BONE, OnBnClickedRadioUniversalLimitBone)
	ON_BN_CLICKED(IDC_RADIO_UNIVERSAL_LIMIT_ANGLES, OnBnClickedRadioUniversalLimitAngles)
	ON_CBN_SELCHANGE(IDC_COMBO_UNIVERSAL_LIMIT_JOINT1, OnCbnSelchangeComboUniversalLimitJoint1)
	ON_CBN_SELCHANGE(IDC_COMBO_UNIVERSAL_LIMIT_JOINT2, OnCbnSelchangeComboUniversalLimitJoint2)
	ON_EN_CHANGE(IDC_EDIT_UNIVERSAL_LIMIT_PITCH, OnEnChangeEditUniversalLimitPitch)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_UNIVERSAL_LIMIT_PITCH, OnDeltaposSpinUniversalLimitPitch)
	ON_EN_CHANGE(IDC_EDIT_UNIVERSAL_LIMIT_YAW, OnEnChangeEditUniversalLimitYaw)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_UNIVERSAL_LIMIT_YAW, OnDeltaposSpinUniversalLimitYaw)
END_MESSAGE_MAP()


// DialogAFConstraintUniversal message handlers

BOOL DialogAFConstraintUniversal::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogAFConstraintUniversal::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


void DialogAFConstraintUniversal::OnBnClickedRadioAnchorJoint() {
    Sys_Printf("void DialogAFConstraintUniversal::OnBnClickedRadioAnchorJoint()\r\n");
}


void DialogAFConstraintUniversal::OnBnClickedRadioAnchorCoordinates() {
    Sys_Printf("void DialogAFConstraintUniversal::OnBnClickedRadioAnchorCoordinates()\r\n");
}


void DialogAFConstraintUniversal::OnCbnSelchangeComboAnchorJoint() {
    Sys_Printf("void DialogAFConstraintUniversal::OnCbnSelchangeComboAnchorJoint()\r\n");
}


void DialogAFConstraintUniversal::OnEnChangeEditAnchorX() {
    Sys_Printf("void DialogAFConstraintUniversal::OnEnChangeEditAnchorX()\r\n");
}


void DialogAFConstraintUniversal::OnEnChangeEditAnchorY() {
    Sys_Printf("void DialogAFConstraintUniversal::OnEnChangeEditAnchorY()\r\n");
}


void DialogAFConstraintUniversal::OnEnChangeEditAnchorZ() {
    Sys_Printf("void DialogAFConstraintUniversal::OnEnChangeEditAnchorZ()\r\n");
}


void DialogAFConstraintUniversal::OnDeltaposSpinAnchorX(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintUniversal::OnDeltaposSpinAnchorX(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintUniversal::OnDeltaposSpinAnchorY(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintUniversal::OnDeltaposSpinAnchorY(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintUniversal::OnDeltaposSpinAnchorZ(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintUniversal::OnDeltaposSpinAnchorZ(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintUniversal::OnBnClickedRadioUniversalBoneShaft1() {
    Sys_Printf("void DialogAFConstraintUniversal::OnBnClickedRadioUniversalBoneShaft1()\r\n");
}


void DialogAFConstraintUniversal::OnBnClickedRadioUniversalAnglesShaft1() {
    Sys_Printf("void DialogAFConstraintUniversal::OnBnClickedRadioUniversalAnglesShaft1()\r\n");
}


void DialogAFConstraintUniversal::OnCbnSelchangeComboUniversalJoint1Shaft1() {
    Sys_Printf("void DialogAFConstraintUniversal::OnCbnSelchangeComboUniversalJoint1Shaft1()\r\n");
}


void DialogAFConstraintUniversal::OnCbnSelchangeComboUniversalJoint2Shaft1() {
    Sys_Printf("void DialogAFConstraintUniversal::OnCbnSelchangeComboUniversalJoint2Shaft1()\r\n");
}


void DialogAFConstraintUniversal::OnEnChangeEditUniversalPitchShaft1() {
    Sys_Printf("void DialogAFConstraintUniversal::OnEnChangeEditUniversalPitchShaft1()\r\n");
}


void DialogAFConstraintUniversal::OnDeltaposSpinUniversalPitchShaft1(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintUniversal::OnDeltaposSpinUniversalPitchShaft1(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintUniversal::OnEnChangeEditUniversalYawShaft1() {
    Sys_Printf("void DialogAFConstraintUniversal::OnEnChangeEditUniversalYawShaft1()\r\n");
}


void DialogAFConstraintUniversal::OnDeltaposSpinUniversalYawShaft1(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintUniversal::OnDeltaposSpinUniversalYawShaft1(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintUniversal::OnBnClickedRadioUniversalBoneShaft2() {
    Sys_Printf("void DialogAFConstraintUniversal::OnBnClickedRadioUniversalBoneShaft2()\r\n");
}


void DialogAFConstraintUniversal::OnBnClickedRadioUniversalAnglesShaft2() {
    Sys_Printf("void DialogAFConstraintUniversal::OnBnClickedRadioUniversalAnglesShaft2()\r\n");
}


void DialogAFConstraintUniversal::OnCbnSelchangeComboUniversalJoint1Shaft2() {
    Sys_Printf("void DialogAFConstraintUniversal::OnCbnSelchangeComboUniversalJoint1Shaft2()\r\n");
}


void DialogAFConstraintUniversal::OnCbnSelchangeComboUniversalJoint2Shaft2() {
    Sys_Printf("void DialogAFConstraintUniversal::OnCbnSelchangeComboUniversalJoint2Shaft2()\r\n");
}


void DialogAFConstraintUniversal::OnEnChangeEditUniversalPitchShaft2() {
    Sys_Printf("void DialogAFConstraintUniversal::OnEnChangeEditUniversalPitchShaft2()\r\n");
}


void DialogAFConstraintUniversal::OnDeltaposSpinUniversalPitchShaft2(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintUniversal::OnDeltaposSpinUniversalPitchShaft2(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintUniversal::OnEnChangeEditUniversalYawShaft2() {
    Sys_Printf("void DialogAFConstraintUniversal::OnEnChangeEditUniversalYawShaft2()\r\n");
}


void DialogAFConstraintUniversal::OnDeltaposSpinUniversalYawShaft2(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintUniversal::OnDeltaposSpinUniversalYawShaft2(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintUniversal::OnBnClickedRadioUniversalLimitNone() {
    Sys_Printf("void DialogAFConstraintUniversal::OnBnClickedRadioUniversalLimitNone()\r\n");
}


void DialogAFConstraintUniversal::OnBnClickedRadioUniversalLimitCone() {
    Sys_Printf("void DialogAFConstraintUniversal::OnBnClickedRadioUniversalLimitCone()\r\n");
}


void DialogAFConstraintUniversal::OnBnClickedRadioUniversalLimitPyramid() {
    Sys_Printf("void DialogAFConstraintUniversal::OnBnClickedRadioUniversalLimitPyramid()\r\n");
}


void DialogAFConstraintUniversal::OnEnChangeEditUniversalLimitConeAngle() {
    Sys_Printf("void DialogAFConstraintUniversal::OnEnChangeEditUniversalLimitConeAngle()\r\n");
}


void DialogAFConstraintUniversal::OnDeltaposSpinUniversalLimitConeAngle(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintUniversal::OnDeltaposSpinUniversalLimitConeAngle(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintUniversal::OnEnChangeEditUniversalLimitPyramidAngle1() {
    Sys_Printf("void DialogAFConstraintUniversal::OnEnChangeEditUniversalLimitPyramidAngle1()\r\n");
}


void DialogAFConstraintUniversal::OnDeltaposSpinUniversalLimitPyramidAngle1(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintUniversal::OnDeltaposSpinUniversalLimitPyramidAngle1(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintUniversal::OnEnChangeEditUniversalLimitPyramidAngle2() {
    Sys_Printf("void DialogAFConstraintUniversal::OnEnChangeEditUniversalLimitPyramidAngle2()\r\n");
}


void DialogAFConstraintUniversal::OnDeltaposSpinUniversalLimitPyramidAngle2(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintUniversal::OnDeltaposSpinUniversalLimitPyramidAngle2(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintUniversal::OnEnChangeEditUniversalLimitRoll() {
    Sys_Printf("void DialogAFConstraintUniversal::OnEnChangeEditUniversalLimitRoll()\r\n");
}


void DialogAFConstraintUniversal::OnDeltaposSpinUniversalLimitRoll(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintUniversal::OnDeltaposSpinUniversalLimitRoll(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintUniversal::OnBnClickedRadioUniversalLimitBone() {
    Sys_Printf("void DialogAFConstraintUniversal::OnBnClickedRadioUniversalLimitBone()\r\n");
}


void DialogAFConstraintUniversal::OnBnClickedRadioUniversalLimitAngles() {
    Sys_Printf("void DialogAFConstraintUniversal::OnBnClickedRadioUniversalLimitAngles()\r\n");
}


void DialogAFConstraintUniversal::OnCbnSelchangeComboUniversalLimitJoint1() {
    Sys_Printf("void DialogAFConstraintUniversal::OnCbnSelchangeComboUniversalLimitJoint1()\r\n");
}


void DialogAFConstraintUniversal::OnCbnSelchangeComboUniversalLimitJoint2() {
    Sys_Printf("void DialogAFConstraintUniversal::OnCbnSelchangeComboUniversalLimitJoint2()\r\n");
}


void DialogAFConstraintUniversal::OnEnChangeEditUniversalLimitPitch() {
    Sys_Printf("void DialogAFConstraintUniversal::OnEnChangeEditUniversalLimitPitch()\r\n");
}


void DialogAFConstraintUniversal::OnDeltaposSpinUniversalLimitPitch(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintUniversal::OnDeltaposSpinUniversalLimitPitch(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintUniversal::OnEnChangeEditUniversalLimitYaw() {
    Sys_Printf("void DialogAFConstraintUniversal::OnEnChangeEditUniversalLimitYaw()\r\n");
}


void DialogAFConstraintUniversal::OnDeltaposSpinUniversalLimitYaw(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintUniversal::OnDeltaposSpinUniversalLimitYaw(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}

