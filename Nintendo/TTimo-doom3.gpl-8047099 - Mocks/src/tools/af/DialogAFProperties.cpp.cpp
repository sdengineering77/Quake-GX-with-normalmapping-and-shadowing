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
#include "DialogAFProperties.h"
#include "DialogAFBody.h"
#include "DialogAFConstraint.h"


// DialogAFProperties dialog

toolTip_t DialogAFProperties::toolTips[] = {
	{ IDC_EDIT_MODEL, "model def" },
	{ IDC_BUTTON_BROWSE_MODEL, "browse model def" },
	{ IDC_EDIT_SKIN, "skin" },
	{ IDC_BUTTON_BROWSE_SKIN, "browse skin" },
	{ IDC_EDIT_LINEARFRICTION, "translational friction" },
	{ IDC_EDIT_ANGULARFRICTION, "rotational friction" },
	{ IDC_EDIT_CONTACTFRICTION, "friction with contact surfaces" },
	{ IDC_EDIT_CONSTRAINTFRICTION, "constraint friction" },
	{ IDC_CHECK_SELFCOLLISION, "allow bodies to collide with other bodies of this articulated figure" },
	{ IDC_EDIT_CONTENTS, "content of bodies" },
	{ IDC_EDIT_CLIPMASK, "collide with these content types" },
	{ IDC_EDIT_TOTALMASS, "scale the mass of each body to get this total mass" },
	{ IDC_EDIT_LINEARVELOCITY, "do not suspend simulation if the linear velocity is higher than this value" },
	{ IDC_EDIT_ANGULARVELOCITY, "do not suspend simulation if the angular velocity is higher than this value" },
	{ IDC_EDIT_LINEARACCELERATION, "do not suspend simulation if the linear acceleration is higher than this value" },
	{ IDC_EDIT_ANGULARACCELERATION, "do not suspend simulation if the angular acceleration is higher than this value" },
	{ IDC_EDIT_NO_MOVE_TIME, "suspend simulation if hardly any movement for this many seconds" },
	{ IDC_EDIT_MAXIMUM_MOVE_TIME, "always suspend simulation after running for this many seconds" },
	{ IDC_EDIT_LINEAR_TOLERANCE, "maximum translation considered no movement" },
	{ IDC_EDIT_ANGULAR_TOLERANCE, "maximum rotation considered no movement" },
	{ 0, NULL }
};

IMPLEMENT_DYNAMIC(DialogAFProperties, CDialog)

/*
================
DialogAFProperties::DialogAFProperties
================
*/
DialogAFProperties::DialogAFProperties(CWnd* pParent /*=NULL*/)
	: CDialog(DialogAFProperties::IDD, pParent)
	, m_selfCollision(false)
	, m_linearFriction(0)
	, m_angularFriction(0)
	, m_contactFriction(0)
	, m_constraintFriction(0)
	, m_totalMass(0)
	, m_suspendLinearVelocity(0)
	, m_suspendAngularVelocity(0)
	, m_suspendLinearAcceleration(0)
	, m_suspendAngularAcceleration(0)
	, m_noMoveTime(0)
	, m_minMoveTime(0)
	, m_maxMoveTime(0)
	, m_linearTolerance(0)
	, m_angularTolerance(0)
	, file(NULL)
{
	Create( IDD_DIALOG_AF_PROPERTIES, pParent );
	EnableToolTips( TRUE );
}

/*
================
DialogAFProperties::~DialogAFProperties
================
*/
DialogAFProperties::~DialogAFProperties() {
}

/*
================
DialogAFProperties::DoDataExchange
================
*/
void DialogAFProperties::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void DialogAFProperties::DoDataExchange(CDataExchange* pDX)\r\n");
}


/*
================
DialogAFProperties::LoadFile
================
*/
void DialogAFProperties::LoadFile( idDeclAF *af ) {
    Sys_Printf("void DialogAFProperties::LoadFile( idDeclAF *af )\r\n");
}


/*
================
DialogAFProperties::SetFile
================
*/
void DialogAFProperties::SaveFile( void ) {
    Sys_Printf("void DialogAFProperties::SaveFile( void )\r\n");
}


/*
================
DialogAFProperties::UpdateFile
================
*/
void DialogAFProperties::UpdateFile( void ) {
    Sys_Printf("void DialogAFProperties::UpdateFile( void )\r\n");
}


/*
================
DialogAFProperties::ClearFile
================
*/
void DialogAFProperties::ClearFile( void ) {
    Sys_Printf("void DialogAFProperties::ClearFile( void )\r\n");
}


/*
================
DialogAFProperties::OnToolHitTest
================
*/
int DialogAFProperties::OnToolHitTest( CPoint point, TOOLINFO* pTI ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int DialogAFProperties::OnToolHitTest( CPoint point, TOOLINFO* pTI )\r\n");
    return retVal;
}


BEGIN_MESSAGE_MAP(DialogAFProperties, CDialog)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTW, 0, 0xFFFF, OnToolTipNotify)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTA, 0, 0xFFFF, OnToolTipNotify)
	ON_EN_CHANGE(IDC_EDIT_MODEL, OnEnChangeEditModel)
	ON_BN_CLICKED(IDC_BUTTON_BROWSE_MODEL, OnBnClickedButtonBrowseModel)
	ON_EN_CHANGE(IDC_EDIT_SKIN, OnEnChangeEditSkin)
	ON_BN_CLICKED(IDC_BUTTON_BROWSE_SKIN, OnBnClickedButtonBrowseSkin)
	ON_EN_CHANGE(IDC_EDIT_LINEARFRICTION, OnEnChangeEditLinearfriction)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_LINEARFRICTION, OnDeltaposSpinLinearfriction)
	ON_EN_CHANGE(IDC_EDIT_ANGULARFRICTION, OnEnChangeEditAngularfriction)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_ANGULARFRICTION, OnDeltaposSpinAngularfriction)
	ON_EN_CHANGE(IDC_EDIT_CONTACTFRICTION, OnEnChangeEditContactfriction)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_CONTACTFRICTION, OnDeltaposSpinContactfriction)
	ON_EN_CHANGE(IDC_EDIT_CONSTRAINTFRICTION, OnEnChangeEditConstraintfriction)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_CONSTRAINTFRICTION, OnDeltaposSpinConstraintfriction)
	ON_BN_CLICKED(IDC_CHECK_SELFCOLLISION, OnBnClickedCheckSelfcollision)
	ON_EN_CHANGE(IDC_EDIT_CONTENTS, OnEnChangeEditContents)
	ON_EN_CHANGE(IDC_EDIT_CLIPMASK, OnEnChangeEditClipmask)
	ON_EN_CHANGE(IDC_EDIT_TOTALMASS, OnEnChangeEditTotalmass)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_TOTALMASS, OnDeltaposSpinTotalmass)
	ON_EN_CHANGE(IDC_EDIT_LINEARVELOCITY, OnEnChangeEditLinearvelocity)
	ON_EN_CHANGE(IDC_EDIT_ANGULARVELOCITY, OnEnChangeEditAngularvelocity)
	ON_EN_CHANGE(IDC_EDIT_LINEARACCELERATION, OnEnChangeEditLinearacceleration)
	ON_EN_CHANGE(IDC_EDIT_ANGULARACCELERATION, OnEnChangeEditAngularacceleration)
	ON_EN_CHANGE(IDC_EDIT_NO_MOVE_TIME, OnEnChangeEditNomovetime)
	ON_EN_CHANGE(IDC_EDIT_MINIMUM_MOVE_TIME, OnEnChangeEditMinimummovetime)
	ON_EN_CHANGE(IDC_EDIT_MAXIMUM_MOVE_TIME, OnEnChangeEditMaximummovetime)
	ON_EN_CHANGE(IDC_EDIT_LINEAR_TOLERANCE, OnEnChangeEditLineartolerance)
	ON_EN_CHANGE(IDC_EDIT_ANGULAR_TOLERANCE, OnEnChangeEditAngulartolerance)
END_MESSAGE_MAP()


// DialogAFProperties message handlers

BOOL DialogAFProperties::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogAFProperties::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


void DialogAFProperties::OnEnChangeEditModel() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditModel()\r\n");
}


void DialogAFProperties::OnEnChangeEditSkin() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditSkin()\r\n");
}


void DialogAFProperties::OnBnClickedCheckSelfcollision() {
    Sys_Printf("void DialogAFProperties::OnBnClickedCheckSelfcollision()\r\n");
}


void DialogAFProperties::OnEnChangeEditContents() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditContents()\r\n");
}


void DialogAFProperties::OnEnChangeEditClipmask() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditClipmask()\r\n");
}


void DialogAFProperties::OnEnChangeEditLinearfriction() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditLinearfriction()\r\n");
}


void DialogAFProperties::OnDeltaposSpinLinearfriction(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFProperties::OnDeltaposSpinLinearfriction(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFProperties::OnEnChangeEditAngularfriction() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditAngularfriction()\r\n");
}


void DialogAFProperties::OnDeltaposSpinAngularfriction(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFProperties::OnDeltaposSpinAngularfriction(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFProperties::OnEnChangeEditContactfriction() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditContactfriction()\r\n");
}


void DialogAFProperties::OnDeltaposSpinContactfriction(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFProperties::OnDeltaposSpinContactfriction(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFProperties::OnEnChangeEditConstraintfriction() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditConstraintfriction()\r\n");
}


void DialogAFProperties::OnDeltaposSpinConstraintfriction(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFProperties::OnDeltaposSpinConstraintfriction(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFProperties::OnEnChangeEditTotalmass() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditTotalmass()\r\n");
}


void DialogAFProperties::OnDeltaposSpinTotalmass(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFProperties::OnDeltaposSpinTotalmass(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFProperties::OnEnChangeEditLinearvelocity() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditLinearvelocity()\r\n");
}


void DialogAFProperties::OnEnChangeEditAngularvelocity() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditAngularvelocity()\r\n");
}


void DialogAFProperties::OnEnChangeEditLinearacceleration() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditLinearacceleration()\r\n");
}


void DialogAFProperties::OnEnChangeEditAngularacceleration() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditAngularacceleration()\r\n");
}


void DialogAFProperties::OnEnChangeEditNomovetime() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditNomovetime()\r\n");
}


void DialogAFProperties::OnEnChangeEditMinimummovetime() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditMinimummovetime()\r\n");
}


void DialogAFProperties::OnEnChangeEditMaximummovetime() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditMaximummovetime()\r\n");
}


void DialogAFProperties::OnEnChangeEditLineartolerance() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditLineartolerance()\r\n");
}


void DialogAFProperties::OnEnChangeEditAngulartolerance() {
    Sys_Printf("void DialogAFProperties::OnEnChangeEditAngulartolerance()\r\n");
}


void DialogAFProperties::OnBnClickedButtonBrowseModel() {
    Sys_Printf("void DialogAFProperties::OnBnClickedButtonBrowseModel()\r\n");
}


void DialogAFProperties::OnBnClickedButtonBrowseSkin() {
    Sys_Printf("void DialogAFProperties::OnBnClickedButtonBrowseSkin()\r\n");
}

