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
#include "DialogAFConstraintSpring.h"


// DialogAFConstraintSpring dialog

toolTip_t DialogAFConstraintSpring::toolTips[] = {
	{ IDC_RADIO_ANCHOR_JOINT, "use the position of a joint for the first anchor" },
	{ IDC_COMBO_ANCHOR_JOINT, "first anchor joint name" },
	{ IDC_RADIO_ANCHOR_COORDINATES, "use absolute coordinates for the first anchor" },
	{ IDC_EDIT_ANCHOR_X, "first anchor x-coordinate" },
	{ IDC_EDIT_ANCHOR_Y, "first anchor y-coordinate" },
	{ IDC_EDIT_ANCHOR_Z, "first anchor z-coordinate" },
	{ IDC_RADIO_ANCHOR2_JOINT, "use the position of a joint for the second anchor" },
	{ IDC_COMBO_ANCHOR2_JOINT, "second anchor joint name" },
	{ IDC_RADIO_ANCHOR2_COORDINATES, "use absolute coordinates for the second anchor" },
	{ IDC_EDIT_ANCHOR2_X, "second anchor x-coordinate" },
	{ IDC_EDIT_ANCHOR2_Y, "second anchor y-coordinate" },
	{ IDC_EDIT_ANCHOR2_Z, "second anchor z-coordinate" },
	{ IDC_EDIT_SPRING_STRETCH, "spring constant when stretched" },
	{ IDC_EDIT_SPRING_COMPRESS, "spring constant when compressed" },
	{ IDC_EDIT_SPRING_DAMPING, "spring damping" },
	{ IDC_EDIT_SPRING_REST_LENGTH, "rest length" },
	{ IDC_RADIO_SPRING_NO_MIN_LENGTH, "no minimum length" },
	{ IDC_RADIO_SPRING_MIN_LENGTH, "minimum length" },
	{ IDC_EDIT_SPRING_MIN_LENGTH, "minimum length" },
	{ IDC_RADIO_SPRING_NO_MAX_LENGTH, "no maximum length" },
	{ IDC_RADIO_SPRING_MAX_LENGTH, "maximum length" },
	{ IDC_EDIT_SPRING_MAX_LENGTH, "maximum length" },
	{ 0, NULL }
};

IMPLEMENT_DYNAMIC(DialogAFConstraintSpring, CDialog)

/*
================
DialogAFConstraintSpring::DialogAFConstraintSpring
================
*/
DialogAFConstraintSpring::DialogAFConstraintSpring(CWnd* pParent /*=NULL*/)
	: CDialog(DialogAFConstraintSpring::IDD, pParent)
	, m_anchor_x(0)
	, m_anchor_y(0)
	, m_anchor_z(0)
	, m_anchor2_x(0)
	, m_anchor2_y(0)
	, m_anchor2_z(0)
	, m_stretch(0)
	, m_compress(0)
	, m_damping(0)
	, m_restLength(0)
	, m_minLength(0)
	, m_maxLength(0)
	, constraint(NULL)
	, file(NULL)
{
	Create( IDD_DIALOG_AF_CONSTRAINT_SPRING, pParent );
	EnableToolTips( TRUE );
}

/*
================
DialogAFConstraintSpring::~DialogAFConstraintSpring
================
*/
DialogAFConstraintSpring::~DialogAFConstraintSpring() {
}

/*
================
DialogAFConstraintSpring::DoDataExchange
================
*/
void DialogAFConstraintSpring::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void DialogAFConstraintSpring::DoDataExchange(CDataExchange* pDX)\r\n");
}


/*
================
DialogAFConstraintSpring::InitJointLists
================
*/
void DialogAFConstraintSpring::InitJointLists( void ) {
    Sys_Printf("void DialogAFConstraintSpring::InitJointLists( void )\r\n");
}


/*
================
DialogAFConstraintSpring::LoadFile
================
*/
void DialogAFConstraintSpring::LoadFile( idDeclAF *af ) {
    Sys_Printf("void DialogAFConstraintSpring::LoadFile( idDeclAF *af )\r\n");
}


/*
================
DialogAFConstraintSpring::SaveFile
================
*/
void DialogAFConstraintSpring::SaveFile( void ) {
    Sys_Printf("void DialogAFConstraintSpring::SaveFile( void )\r\n");
}


/*
================
DialogAFConstraintSpring::LoadConstraint
================
*/
void DialogAFConstraintSpring::LoadConstraint( idDeclAF_Constraint *c ) {
    Sys_Printf("void DialogAFConstraintSpring::LoadConstraint( idDeclAF_Constraint *c )\r\n");
}


/*
================
DialogAFConstraintSpring::SaveConstraint
================
*/
void DialogAFConstraintSpring::SaveConstraint( void ) {
    Sys_Printf("void DialogAFConstraintSpring::SaveConstraint( void )\r\n");
}


/*
================
DialogAFConstraintSpring::UpdateFile
================
*/
void DialogAFConstraintSpring::UpdateFile( void ) {
    Sys_Printf("void DialogAFConstraintSpring::UpdateFile( void )\r\n");
}


/*
================
DialogAFConstraintSpring::OnToolHitTest
================
*/
int DialogAFConstraintSpring::OnToolHitTest( CPoint point, TOOLINFO* pTI ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int DialogAFConstraintSpring::OnToolHitTest( CPoint point, TOOLINFO* pTI )\r\n");
    return retVal;
}



BEGIN_MESSAGE_MAP(DialogAFConstraintSpring, CDialog)
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
	ON_BN_CLICKED(IDC_RADIO_ANCHOR2_JOINT, OnBnClickedRadioAnchor2Joint)
	ON_BN_CLICKED(IDC_RADIO_ANCHOR2_COORDINATES, OnBnClickedRadioAnchor2Coordinates)
	ON_CBN_SELCHANGE(IDC_COMBO_ANCHOR2_JOINT, OnCbnSelchangeComboAnchor2Joint)
	ON_EN_CHANGE(IDC_EDIT_ANCHOR2_X, OnEnChangeEditAnchor2X)
	ON_EN_CHANGE(IDC_EDIT_ANCHOR2_Y, OnEnChangeEditAnchor2Y)
	ON_EN_CHANGE(IDC_EDIT_ANCHOR2_Z, OnEnChangeEditAnchor2Z)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_ANCHOR2_X, OnDeltaposSpinAnchor2X)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_ANCHOR2_Y, OnDeltaposSpinAnchor2Y)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_ANCHOR2_Z, OnDeltaposSpinAnchor2Z)
	ON_EN_CHANGE(IDC_EDIT_SPRING_STRETCH, OnEnChangeEditSpringStretch)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_SPRING_STRETCH, OnDeltaposSpinSpringStretch)
	ON_EN_CHANGE(IDC_EDIT_SPRING_COMPRESS, OnEnChangeEditSpringCompress)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_SPRING_COMPRESS, OnDeltaposSpinSpringCompress)
	ON_EN_CHANGE(IDC_EDIT_SPRING_DAMPING, OnEnChangeEditSpringDamping)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_SPRING_DAMPING, OnDeltaposSpinSpringDamping)
	ON_EN_CHANGE(IDC_EDIT_SPRING_REST_LENGTH, OnEnChangeEditSpringRestLength)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_SPRING_REST_LENGTH, OnDeltaposSpinSpringRestLength)
	ON_BN_CLICKED(IDC_RADIO_SPRING_NO_MIN_LENGTH, OnBnClickedRadioLimitNoMinLength)
	ON_BN_CLICKED(IDC_RADIO_SPRING_MIN_LENGTH, OnBnClickedRadioLimitMinLength)
	ON_EN_CHANGE(IDC_EDIT_SPRING_MIN_LENGTH, OnEnChangeEditLimitMinLength)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_SPRING_MIN_LENGTH, OnDeltaposSpinLimitMinLength)
	ON_BN_CLICKED(IDC_RADIO_SPRING_NO_MAX_LENGTH, OnBnClickedRadioLimitNoMaxLength)
	ON_BN_CLICKED(IDC_RADIO_SPRING_MAX_LENGTH, OnBnClickedRadioLimitMaxLength)
	ON_EN_CHANGE(IDC_EDIT_SPRING_MAX_LENGTH, OnEnChangeEditLimitMaxLength)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_SPRING_MAX_LENGTH, OnDeltaposSpinLimitMaxLength)
END_MESSAGE_MAP()


// DialogAFConstraintSpring message handlers

BOOL DialogAFConstraintSpring::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogAFConstraintSpring::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


void DialogAFConstraintSpring::OnBnClickedRadioAnchorJoint() {
    Sys_Printf("void DialogAFConstraintSpring::OnBnClickedRadioAnchorJoint()\r\n");
}


void DialogAFConstraintSpring::OnBnClickedRadioAnchorCoordinates() {
    Sys_Printf("void DialogAFConstraintSpring::OnBnClickedRadioAnchorCoordinates()\r\n");
}


void DialogAFConstraintSpring::OnCbnSelchangeComboAnchorJoint() {
    Sys_Printf("void DialogAFConstraintSpring::OnCbnSelchangeComboAnchorJoint()\r\n");
}


void DialogAFConstraintSpring::OnEnChangeEditAnchorX() {
    Sys_Printf("void DialogAFConstraintSpring::OnEnChangeEditAnchorX()\r\n");
}


void DialogAFConstraintSpring::OnEnChangeEditAnchorY() {
    Sys_Printf("void DialogAFConstraintSpring::OnEnChangeEditAnchorY()\r\n");
}


void DialogAFConstraintSpring::OnEnChangeEditAnchorZ() {
    Sys_Printf("void DialogAFConstraintSpring::OnEnChangeEditAnchorZ()\r\n");
}


void DialogAFConstraintSpring::OnDeltaposSpinAnchorX(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintSpring::OnDeltaposSpinAnchorX(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintSpring::OnDeltaposSpinAnchorY(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintSpring::OnDeltaposSpinAnchorY(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintSpring::OnDeltaposSpinAnchorZ(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintSpring::OnDeltaposSpinAnchorZ(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintSpring::OnBnClickedRadioAnchor2Joint() {
    Sys_Printf("void DialogAFConstraintSpring::OnBnClickedRadioAnchor2Joint()\r\n");
}


void DialogAFConstraintSpring::OnBnClickedRadioAnchor2Coordinates() {
    Sys_Printf("void DialogAFConstraintSpring::OnBnClickedRadioAnchor2Coordinates()\r\n");
}


void DialogAFConstraintSpring::OnCbnSelchangeComboAnchor2Joint() {
    Sys_Printf("void DialogAFConstraintSpring::OnCbnSelchangeComboAnchor2Joint()\r\n");
}


void DialogAFConstraintSpring::OnEnChangeEditAnchor2X() {
    Sys_Printf("void DialogAFConstraintSpring::OnEnChangeEditAnchor2X()\r\n");
}


void DialogAFConstraintSpring::OnEnChangeEditAnchor2Y() {
    Sys_Printf("void DialogAFConstraintSpring::OnEnChangeEditAnchor2Y()\r\n");
}


void DialogAFConstraintSpring::OnEnChangeEditAnchor2Z() {
    Sys_Printf("void DialogAFConstraintSpring::OnEnChangeEditAnchor2Z()\r\n");
}


void DialogAFConstraintSpring::OnDeltaposSpinAnchor2X(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintSpring::OnDeltaposSpinAnchor2X(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintSpring::OnDeltaposSpinAnchor2Y(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintSpring::OnDeltaposSpinAnchor2Y(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintSpring::OnDeltaposSpinAnchor2Z(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintSpring::OnDeltaposSpinAnchor2Z(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintSpring::OnEnChangeEditSpringStretch() {
    Sys_Printf("void DialogAFConstraintSpring::OnEnChangeEditSpringStretch()\r\n");
}


void DialogAFConstraintSpring::OnDeltaposSpinSpringStretch(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintSpring::OnDeltaposSpinSpringStretch(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintSpring::OnEnChangeEditSpringCompress() {
    Sys_Printf("void DialogAFConstraintSpring::OnEnChangeEditSpringCompress()\r\n");
}


void DialogAFConstraintSpring::OnDeltaposSpinSpringCompress(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintSpring::OnDeltaposSpinSpringCompress(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintSpring::OnEnChangeEditSpringDamping() {
    Sys_Printf("void DialogAFConstraintSpring::OnEnChangeEditSpringDamping()\r\n");
}


void DialogAFConstraintSpring::OnDeltaposSpinSpringDamping(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintSpring::OnDeltaposSpinSpringDamping(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintSpring::OnEnChangeEditSpringRestLength() {
    Sys_Printf("void DialogAFConstraintSpring::OnEnChangeEditSpringRestLength()\r\n");
}


void DialogAFConstraintSpring::OnDeltaposSpinSpringRestLength(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintSpring::OnDeltaposSpinSpringRestLength(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintSpring::OnBnClickedRadioLimitNoMinLength() {
    Sys_Printf("void DialogAFConstraintSpring::OnBnClickedRadioLimitNoMinLength()\r\n");
}


void DialogAFConstraintSpring::OnBnClickedRadioLimitMinLength() {
    Sys_Printf("void DialogAFConstraintSpring::OnBnClickedRadioLimitMinLength()\r\n");
}


void DialogAFConstraintSpring::OnEnChangeEditLimitMinLength() {
    Sys_Printf("void DialogAFConstraintSpring::OnEnChangeEditLimitMinLength()\r\n");
}


void DialogAFConstraintSpring::OnDeltaposSpinLimitMinLength(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintSpring::OnDeltaposSpinLimitMinLength(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFConstraintSpring::OnBnClickedRadioLimitNoMaxLength() {
    Sys_Printf("void DialogAFConstraintSpring::OnBnClickedRadioLimitNoMaxLength()\r\n");
}


void DialogAFConstraintSpring::OnBnClickedRadioLimitMaxLength() {
    Sys_Printf("void DialogAFConstraintSpring::OnBnClickedRadioLimitMaxLength()\r\n");
}


void DialogAFConstraintSpring::OnEnChangeEditLimitMaxLength() {
    Sys_Printf("void DialogAFConstraintSpring::OnEnChangeEditLimitMaxLength()\r\n");
}


void DialogAFConstraintSpring::OnDeltaposSpinLimitMaxLength(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraintSpring::OnDeltaposSpinLimitMaxLength(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}

