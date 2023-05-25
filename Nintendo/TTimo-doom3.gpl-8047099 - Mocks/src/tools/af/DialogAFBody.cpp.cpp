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
#include "DialogAFName.h"
#include "DialogAFConstraint.h"
#include "DialogAFBody.h"

typedef struct {
	traceModel_t type;
	const char *name;
} cm_type_t;

cm_type_t modelTypes[] = {
	{ TRM_INVALID, "invalid" },
	{ TRM_BOX, "box" },
	{ TRM_OCTAHEDRON, "octahedron" },
	{ TRM_DODECAHEDRON, "dodecahedron" },
	{ TRM_CYLINDER, "cylinder" },
	{ TRM_CONE, "cone" },
	{ TRM_BONE, "bone" },
	{ TRM_CUSTOM, "custom" },
	{ TRM_INVALID, NULL }
};

const char *ModelTypeToString( int type ) {
    Sys_Printf("char *ModelTypeToString( int type )\r\n");
    return NULL;
}


traceModel_t StringToModelType( const char *str ) {
    traceModel_t retVal;
    memset(&retVal, 0, sizeof(traceModel_t));
    Sys_Printf("traceModel_t StringToModelType( const char *str )\r\n");
    return retVal;
}


// DialogAFBody dialog

toolTip_t DialogAFBody::toolTips[] = {
	{ IDC_COMBO_BODIES, "select body for editing" },
	{ IDC_BUTTON_NEWBODY, "create a new body" },
	{ IDC_BUTTON_RENAMEBODY, "rename the selected body" },
	{ IDC_BUTTON_DELETEBODY, "delete the selected body" },
	{ IDC_COMBO_CM_TYPE, "collision model type" },
	{ IDC_EDIT_CM_NAME, "custom collision model" },
	{ IDC_BUTTON_CM_BROWSE, "browse custom collision model" },
	{ IDC_COMBO_BONE_JOINT1, "first joint of bone collision model" },
	{ IDC_COMBO_BONE_JOINT2, "second joint of bone collision model" },
	{ IDC_EDIT_CM_HEIGHT, "hieght of the collision model" },
	{ IDC_EDIT_CM_WIDTH, "width of the collision model" },
	{ IDC_EDIT_CM_LENGTH, "length of the collision model" },
	{ IDC_EDIT_CM_NUMSIDES, "number of sides of the collision model" },
	{ IDC_EDIT_CM_DENSITY, "collision model density" },
	{ IDC_EDIT_CM_INERTIASCALE, "inertia tensor scale" },
	{ IDC_RADIO_ORIGIN_COORDINATES, "use absolute coordinates for the body origin" },
	{ IDC_RADIO_ORIGIN_BONECENTER, "use the center of a bone for the body origin" },
	{ IDC_RADIO_ORIGIN_JOINT, "use the position of a joint for the body origin" },
	{ IDC_EDIT_AF_VECTOR_X, "x-coordinate" },
	{ IDC_EDIT_AF_VECTOR_Y, "y-coordinate" },
	{ IDC_EDIT_AF_VECTOR_Z, "z-coordinate" },
	{ IDC_COMBO_ORIGIN_BONECENTER_JOINT1, "bone start joint" },
	{ IDC_COMBO_ORIGIN_BONECENTER_JOINT2, "bone end joint" },
	{ IDC_COMBO_ORIGIN_JOINT, "joint name" },
	{ IDC_EDIT_ANGLES_PITCH, "pitch angle of body" },
	{ IDC_EDIT_ANGLES_YAW, "yaw angle of body" },
	{ IDC_EDIT_ANGLES_ROLL, "roll angle of body" },
	{ IDC_EDIT_LINEARFRICTION, "translational friction" },
	{ IDC_EDIT_ANGULARFRICTION, "rotational friction" },
	{ IDC_EDIT_CONTACTFRICTION, "friction with contact surfaces" },
	{ IDC_CHECK_SELFCOLLISION, "collide with other bodies of this articulated figure" },
	{ IDC_EDIT_CONTENTS, "content of body" },
	{ IDC_EDIT_CLIPMASK, "collide with these content types" },
	{ IDC_EDIT_FRICTIONDIRECTION, "single friction direction relative to body" },
	{ IDC_EDIT_CONTACTMOTORDIRECTION, "contact motor direction" },
	{ IDC_COMBO_MODIFIEDJOINT, "the joint modified by the relative rotation of the body" },
	{ IDC_RADIO_MODIFY_ORIENTATION, "modify the joint orientation" },
	{ IDC_RADIO_MODIFY_POSITION, "modify the joint position" },
	{ IDC_RADIO_MODIFY_BOTH, "modify the joint orientation and position" },
	{ IDC_EDIT_CONTAINEDJOINTS, "all the joints contained by this body" },
	{ 0, NULL }
};

IMPLEMENT_DYNAMIC(DialogAFBody, CDialog)

/*
================
DialogAFBody::DialogAFBody
================
*/
DialogAFBody::DialogAFBody( CWnd* pParent /*=NULL*/ )
	: CDialog(DialogAFBody::IDD, pParent)
	, constraintDlg(NULL)
	, numJoints(0)
	, cm_length(0)
	, cm_height(0)
	, cm_width(0)
	, cm_density(0)
	, cm_numSides(3)
	, cm_origin_x(0)
	, cm_origin_y(0)
	, cm_origin_z(0)
	, cm_angles_pitch(0)
	, cm_angles_yaw(0)
	, cm_angles_roll(0)
	, m_selfCollision(false)
	, m_linearFriction(0)
	, m_angularFriction(0)
	, m_contactFriction(0)
	, file(NULL)
	, body(NULL)
{
	Create( IDD_DIALOG_AF_BODY, pParent );
	EnableToolTips( TRUE );
}

/*
================
DialogAFBody::~DialogAFBody
================
*/
DialogAFBody::~DialogAFBody() {
}

/*
================
DialogAFBody::DoDataExchange
================
*/
void DialogAFBody::DoDataExchange( CDataExchange* pDX ) {
    Sys_Printf("void DialogAFBody::DoDataExchange( CDataExchange* pDX )\r\n");
}


/*
================
DialogAFBody::InitBodyList
================
*/
void DialogAFBody::InitBodyList( void ) {
    Sys_Printf("void DialogAFBody::InitBodyList( void )\r\n");
}


/*
================
DialogAFBody::InitJointLists

  initialize the joint lists for bone collision models
================
*/
void DialogAFBody::InitJointLists( void ) {
    Sys_Printf("void DialogAFBody::InitJointLists( void )\r\n");
}


/*
================
DialogAFBody::InitCollisionModelType
================
*/
void DialogAFBody::InitCollisionModelType( void ) {
    Sys_Printf("void DialogAFBody::InitCollisionModelType( void )\r\n");
}


/*
================
DialogAFBody::InitModifiedJointList
================
*/
void DialogAFBody::InitModifiedJointList( void ) {
    Sys_Printf("void DialogAFBody::InitModifiedJointList( void )\r\n");
}


/*
================
DialogAFBody::InitNewRenameDeleteButtons
================
*/
void DialogAFBody::InitNewRenameDeleteButtons( void ) {
    Sys_Printf("void DialogAFBody::InitNewRenameDeleteButtons( void )\r\n");
}


/*
================
DialogAFBody::LoadFile
================
*/
void DialogAFBody::LoadFile( idDeclAF *af ) {
    Sys_Printf("void DialogAFBody::LoadFile( idDeclAF *af )\r\n");
}


/*
================
DialogAFBody::SaveFile
================
*/
void DialogAFBody::SaveFile( void ) {
    Sys_Printf("void DialogAFBody::SaveFile( void )\r\n");
}


/*
================
DialogAFBody::LoadBody
================
*/
void DialogAFBody::LoadBody( const char *name ) {
    Sys_Printf("void DialogAFBody::LoadBody( const char *name )\r\n");
}


/*
================
DialogAFBody::SaveBody
================
*/
void DialogAFBody::SaveBody( void ) {
    Sys_Printf("void DialogAFBody::SaveBody( void )\r\n");
}


/*
================
DialogAFBody::UpdateFile
================
*/
void DialogAFBody::UpdateFile( void ) {
    Sys_Printf("void DialogAFBody::UpdateFile( void )\r\n");
}


/*
================
DialogAFBody::OnInitDialog
================
*/
BOOL DialogAFBody::OnInitDialog()  {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogAFBody::OnInitDialog()\r\n");
    return retVal;
}


/*
================
DialogAFBody::OnToolHitTest
================
*/
int DialogAFBody::OnToolHitTest( CPoint point, TOOLINFO* pTI ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int DialogAFBody::OnToolHitTest( CPoint point, TOOLINFO* pTI )\r\n");
    return retVal;
}


BEGIN_MESSAGE_MAP(DialogAFBody, CDialog)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTW, 0, 0xFFFF, OnToolTipNotify)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTA, 0, 0xFFFF, OnToolTipNotify)
	ON_WM_SHOWWINDOW()
	ON_CBN_SELCHANGE(IDC_COMBO_BODIES, OnCbnSelchangeComboBodies)
	ON_BN_CLICKED(IDC_BUTTON_NEWBODY, OnBnClickedButtonNewbody)
	ON_BN_CLICKED(IDC_BUTTON_RENAMEBODY, OnBnClickedButtonRenamebody)
	ON_BN_CLICKED(IDC_BUTTON_DELETEBODY, OnBnClickedButtonDeletebody)
	ON_CBN_SELCHANGE(IDC_COMBO_CM_TYPE, OnCbnSelchangeComboCmType)
	ON_EN_CHANGE(IDC_EDIT_CM_LENGTH, OnEnChangeEditCmLength)
	ON_EN_CHANGE(IDC_EDIT_CM_HEIGHT, OnEnChangeEditCmHeight)
	ON_EN_CHANGE(IDC_EDIT_CM_WIDTH, OnEnChangeEditCmWidth)
	ON_EN_CHANGE(IDC_EDIT_CM_NUMSIDES, OnEnChangeEditCmNumsides)
	ON_CBN_SELCHANGE(IDC_COMBO_BONE_JOINT1, OnCbnSelchangeComboBoneJoint1)
	ON_CBN_SELCHANGE(IDC_COMBO_BONE_JOINT2, OnCbnSelchangeComboBoneJoint2)
	ON_EN_CHANGE(IDC_EDIT_CM_DENSITY, OnEnChangeEditCmDensity)
	ON_EN_CHANGE(IDC_EDIT_CM_INERTIASCALE, OnEnChangeEditCmInertiascale)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_CM_LENGTH, OnDeltaposSpinCmLength)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_CM_HEIGHT, OnDeltaposSpinCmHeight)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_CM_WIDTH, OnDeltaposSpinCmWidth)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_CM_NUMSIDES, OnDeltaposSpinCmNumsides)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_CM_DENSITY, OnDeltaposSpinCmDensity)
	ON_BN_CLICKED(IDC_RADIO_ORIGIN_COORDINATES, OnBnClickedRadioOriginCoordinates)
	ON_BN_CLICKED(IDC_RADIO_ORIGIN_BONECENTER, OnBnClickedRadioOriginBonecenter)
	ON_BN_CLICKED(IDC_RADIO_ORIGIN_JOINT, OnBnClickedRadioOriginJoint)
	ON_EN_CHANGE(IDC_EDIT_AF_VECTOR_X, OnEnChangeEditAfVectorX)
	ON_EN_CHANGE(IDC_EDIT_AF_VECTOR_Y, OnEnChangeEditAfVectorY)
	ON_EN_CHANGE(IDC_EDIT_AF_VECTOR_Z, OnEnChangeEditAfVectorZ)
	ON_CBN_SELCHANGE(IDC_COMBO_ORIGIN_BONECENTER_JOINT1, OnOnCbnSelchangeComboOriginBoneCenterJoint1)
	ON_CBN_SELCHANGE(IDC_COMBO_ORIGIN_BONECENTER_JOINT2, OnOnCbnSelchangeComboOriginBoneCenterJoint2)
	ON_CBN_SELCHANGE(IDC_COMBO_ORIGIN_JOINT, OnOnCbnSelchangeComboOriginJoint)
	ON_EN_CHANGE(IDC_EDIT_ANGLES_PITCH, OnEnChangeEditAnglesPitch)
	ON_EN_CHANGE(IDC_EDIT_ANGLES_YAW, OnEnChangeEditAnglesYaw)
	ON_EN_CHANGE(IDC_EDIT_ANGLES_ROLL, OnEnChangeEditAnglesRoll)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_AF_VECTOR_X, OnDeltaposSpinAfVectorX)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_AF_VECTOR_Y, OnDeltaposSpinAfVectorY)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_AF_VECTOR_Z, OnDeltaposSpinAfVectorZ)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_ANGLES_PITCH, OnDeltaposSpinAnglesPitch)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_ANGLES_YAW, OnDeltaposSpinAnglesYaw)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_ANGLES_ROLL, OnDeltaposSpinAnglesRoll)
	ON_BN_CLICKED(IDC_CHECK_SELFCOLLISION, OnBnClickedCheckSelfcollision)
	ON_EN_CHANGE(IDC_EDIT_CONTENTS, OnEnChangeEditContents)
	ON_EN_CHANGE(IDC_EDIT_CLIPMASK, OnEnChangeEditClipmask)
	ON_EN_CHANGE(IDC_EDIT_LINEARFRICTION, OnEnChangeEditLinearfriction)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_LINEARFRICTION, OnDeltaposSpinLinearfriction)
	ON_EN_CHANGE(IDC_EDIT_ANGULARFRICTION, OnEnChangeEditAngularfriction)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_ANGULARFRICTION, OnDeltaposSpinAngularfriction)
	ON_EN_CHANGE(IDC_EDIT_CONTACTFRICTION, OnEnChangeEditContactfriction)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_CONTACTFRICTION, OnDeltaposSpinContactfriction)
	ON_EN_CHANGE(IDC_EDIT_FRICTIONDIRECTION, OnEnChangeEditFrictionDirection)
	ON_EN_CHANGE(IDC_EDIT_CONTACTMOTORDIRECTION, OnEnChangeEditContactMotorDirection)
	ON_CBN_SELCHANGE(IDC_COMBO_MODIFIEDJOINT, OnCbnSelchangeComboModifiedjoint)
	ON_BN_CLICKED(IDC_RADIO_MODIFY_ORIENTATION, OnBnClickedRadioModifyOrientation)
	ON_BN_CLICKED(IDC_RADIO_MODIFY_POSITION, OnBnClickedRadioModifyPosition)
	ON_BN_CLICKED(IDC_RADIO_MODIFY_BOTH, OnBnClickedRadioModifyBoth)
	ON_EN_CHANGE(IDC_EDIT_CONTAINEDJOINTS, OnEnChangeEditContainedjoints)
END_MESSAGE_MAP()


// DialogAFBody message handlers

BOOL DialogAFBody::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogAFBody::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


void DialogAFBody::OnShowWindow( BOOL bShow, UINT nStatus ) {
    Sys_Printf("void DialogAFBody::OnShowWindow( BOOL bShow, UINT nStatus )\r\n");
}


void DialogAFBody::OnCbnSelchangeComboBodies() {
    Sys_Printf("void DialogAFBody::OnCbnSelchangeComboBodies()\r\n");
}


void DialogAFBody::OnBnClickedButtonNewbody() {
    Sys_Printf("void DialogAFBody::OnBnClickedButtonNewbody()\r\n");
}


void DialogAFBody::OnBnClickedButtonRenamebody() {
    Sys_Printf("void DialogAFBody::OnBnClickedButtonRenamebody()\r\n");
}


void DialogAFBody::OnBnClickedButtonDeletebody() {
    Sys_Printf("void DialogAFBody::OnBnClickedButtonDeletebody()\r\n");
}


void DialogAFBody::OnCbnSelchangeComboCmType() {
    Sys_Printf("void DialogAFBody::OnCbnSelchangeComboCmType()\r\n");
}


void DialogAFBody::ValidateCollisionModelLength( bool update ) {
    Sys_Printf("void DialogAFBody::ValidateCollisionModelLength( bool update )\r\n");
}


void DialogAFBody::OnEnChangeEditCmLength() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditCmLength()\r\n");
}


void DialogAFBody::OnDeltaposSpinCmLength(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFBody::OnDeltaposSpinCmLength(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFBody::ValidateCollisionModelHeight( bool update ) {
    Sys_Printf("void DialogAFBody::ValidateCollisionModelHeight( bool update )\r\n");
}


void DialogAFBody::OnEnChangeEditCmHeight() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditCmHeight()\r\n");
}


void DialogAFBody::OnDeltaposSpinCmHeight(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFBody::OnDeltaposSpinCmHeight(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFBody::ValidateCollisionModelWidth( bool update ) {
    Sys_Printf("void DialogAFBody::ValidateCollisionModelWidth( bool update )\r\n");
}


void DialogAFBody::OnEnChangeEditCmWidth() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditCmWidth()\r\n");
}


void DialogAFBody::OnDeltaposSpinCmWidth(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFBody::OnDeltaposSpinCmWidth(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFBody::ValidateCollisionModelNumSides( bool update ) {
    Sys_Printf("void DialogAFBody::ValidateCollisionModelNumSides( bool update )\r\n");
}


void DialogAFBody::OnEnChangeEditCmNumsides() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditCmNumsides()\r\n");
}


void DialogAFBody::OnDeltaposSpinCmNumsides(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFBody::OnDeltaposSpinCmNumsides(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFBody::OnCbnSelchangeComboBoneJoint1() {
    Sys_Printf("void DialogAFBody::OnCbnSelchangeComboBoneJoint1()\r\n");
}


void DialogAFBody::OnCbnSelchangeComboBoneJoint2() {
    Sys_Printf("void DialogAFBody::OnCbnSelchangeComboBoneJoint2()\r\n");
}


void DialogAFBody::ValidateCollisionModelDensity( bool update ) {
    Sys_Printf("void DialogAFBody::ValidateCollisionModelDensity( bool update )\r\n");
}


void DialogAFBody::OnEnChangeEditCmDensity() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditCmDensity()\r\n");
}


void DialogAFBody::OnDeltaposSpinCmDensity(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFBody::OnDeltaposSpinCmDensity(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFBody::OnEnChangeEditCmInertiascale() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditCmInertiascale()\r\n");
}


void DialogAFBody::OnBnClickedRadioOriginCoordinates() {
    Sys_Printf("void DialogAFBody::OnBnClickedRadioOriginCoordinates()\r\n");
}


void DialogAFBody::OnBnClickedRadioOriginBonecenter() {
    Sys_Printf("void DialogAFBody::OnBnClickedRadioOriginBonecenter()\r\n");
}


void DialogAFBody::OnBnClickedRadioOriginJoint() {
    Sys_Printf("void DialogAFBody::OnBnClickedRadioOriginJoint()\r\n");
}


void DialogAFBody::OnEnChangeEditAfVectorX() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditAfVectorX()\r\n");
}


void DialogAFBody::OnDeltaposSpinAfVectorX(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFBody::OnDeltaposSpinAfVectorX(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFBody::OnEnChangeEditAfVectorY() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditAfVectorY()\r\n");
}


void DialogAFBody::OnDeltaposSpinAfVectorY(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFBody::OnDeltaposSpinAfVectorY(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFBody::OnEnChangeEditAfVectorZ() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditAfVectorZ()\r\n");
}


void DialogAFBody::OnDeltaposSpinAfVectorZ(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFBody::OnDeltaposSpinAfVectorZ(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFBody::OnOnCbnSelchangeComboOriginBoneCenterJoint1() {
    Sys_Printf("void DialogAFBody::OnOnCbnSelchangeComboOriginBoneCenterJoint1()\r\n");
}


void DialogAFBody::OnOnCbnSelchangeComboOriginBoneCenterJoint2() {
    Sys_Printf("void DialogAFBody::OnOnCbnSelchangeComboOriginBoneCenterJoint2()\r\n");
}


void DialogAFBody::OnOnCbnSelchangeComboOriginJoint() {
    Sys_Printf("void DialogAFBody::OnOnCbnSelchangeComboOriginJoint()\r\n");
}


void DialogAFBody::OnEnChangeEditAnglesPitch() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditAnglesPitch()\r\n");
}


void DialogAFBody::OnDeltaposSpinAnglesPitch(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFBody::OnDeltaposSpinAnglesPitch(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFBody::OnEnChangeEditAnglesYaw() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditAnglesYaw()\r\n");
}


void DialogAFBody::OnDeltaposSpinAnglesYaw(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFBody::OnDeltaposSpinAnglesYaw(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFBody::OnEnChangeEditAnglesRoll() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditAnglesRoll()\r\n");
}


void DialogAFBody::OnDeltaposSpinAnglesRoll(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFBody::OnDeltaposSpinAnglesRoll(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFBody::OnBnClickedCheckSelfcollision() {
    Sys_Printf("void DialogAFBody::OnBnClickedCheckSelfcollision()\r\n");
}


void DialogAFBody::OnEnChangeEditContents() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditContents()\r\n");
}


void DialogAFBody::OnEnChangeEditClipmask() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditClipmask()\r\n");
}


void DialogAFBody::OnEnChangeEditLinearfriction() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditLinearfriction()\r\n");
}


void DialogAFBody::OnDeltaposSpinLinearfriction(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFBody::OnDeltaposSpinLinearfriction(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFBody::OnEnChangeEditAngularfriction() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditAngularfriction()\r\n");
}


void DialogAFBody::OnDeltaposSpinAngularfriction(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFBody::OnDeltaposSpinAngularfriction(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFBody::OnEnChangeEditContactfriction() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditContactfriction()\r\n");
}


void DialogAFBody::OnDeltaposSpinContactfriction(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFBody::OnDeltaposSpinContactfriction(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}


void DialogAFBody::OnEnChangeEditFrictionDirection() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditFrictionDirection()\r\n");
}


void DialogAFBody::OnEnChangeEditContactMotorDirection() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditContactMotorDirection()\r\n");
}


void DialogAFBody::OnCbnSelchangeComboModifiedjoint() {
    Sys_Printf("void DialogAFBody::OnCbnSelchangeComboModifiedjoint()\r\n");
}


void DialogAFBody::OnBnClickedRadioModifyOrientation() {
    Sys_Printf("void DialogAFBody::OnBnClickedRadioModifyOrientation()\r\n");
}


void DialogAFBody::OnBnClickedRadioModifyPosition() {
    Sys_Printf("void DialogAFBody::OnBnClickedRadioModifyPosition()\r\n");
}


void DialogAFBody::OnBnClickedRadioModifyBoth() {
    Sys_Printf("void DialogAFBody::OnBnClickedRadioModifyBoth()\r\n");
}


void DialogAFBody::OnEnChangeEditContainedjoints() {
    Sys_Printf("void DialogAFBody::OnEnChangeEditContainedjoints()\r\n");
}

