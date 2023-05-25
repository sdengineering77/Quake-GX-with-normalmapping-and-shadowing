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
#include "DialogAFConstraintFixed.h"
#include "DialogAFConstraintBallAndSocket.h"
#include "DialogAFConstraintUniversal.h"
#include "DialogAFConstraintHinge.h"
#include "DialogAFConstraintSlider.h"
#include "DialogAFConstraintSpring.h"

#ifdef ID_DEBUG_MEMORY
#undef new
#undef DEBUG_NEW
#define DEBUG_NEW new
#endif


typedef struct {
	declAFConstraintType_t type;
	const char *name;
} c_type_t;

c_type_t constraintTypes[] = {
	{ DECLAF_CONSTRAINT_FIXED, "fixed" },
	{ DECLAF_CONSTRAINT_BALLANDSOCKETJOINT, "ball and socket" },
	{ DECLAF_CONSTRAINT_UNIVERSALJOINT, "universal" },
	{ DECLAF_CONSTRAINT_HINGE, "hinge" },
	{ DECLAF_CONSTRAINT_SLIDER, "slider" },
	{ DECLAF_CONSTRAINT_SPRING, "spring" },
	{ DECLAF_CONSTRAINT_INVALID, NULL }
};


const char *ConstraintTypeToString( declAFConstraintType_t type ) {
    Sys_Printf("char *ConstraintTypeToString( declAFConstraintType_t type )\r\n");
    return NULL;
}


declAFConstraintType_t StringToConstraintType( const char *str ) {
    declAFConstraintType_t retVal;
    memset(&retVal, 0, sizeof(declAFConstraintType_t));
    Sys_Printf("declAFConstraintType_t StringToConstraintType( const char *str )\r\n");
    return retVal;
}



// DialogAFConstraint dialog

toolTip_t DialogAFConstraint::toolTips[] = {
	{ IDC_COMBO_CONSTRAINTS, "select contraint for editing" },
	{ IDC_BUTTON_NEWCONSTRAINT, "create a new constraint" },
	{ IDC_BUTTON_RENAMECONSTRAINT, "rename the selected constraint" },
	{ IDC_BUTTON_DELETECONSTRAINT, "delete the selected constraint" },
	{ IDC_COMBO_CONSTRAINT_TYPE, "constraint type" },
	{ IDC_COMBO_CONSTRAINT_BODY1, "first constrained body" },
	{ IDC_COMBO_CONSTRAINT_BODY2, "second constrained body" },
	{ IDC_EDIT_CONSTRAINT_FRICTION, "constraint friction" },
	{ 0, NULL }
};

IMPLEMENT_DYNAMIC(DialogAFConstraint, CDialog)

/*
================
DialogAFConstraint::DialogAFConstraint
================
*/
DialogAFConstraint::DialogAFConstraint( CWnd* pParent /*=NULL*/ )
	: CDialog(DialogAFConstraint::IDD, pParent)
	, m_friction(0)
	, constraint(NULL)
	, file(NULL)
	, constraintDlg(NULL)
{
	Create( IDD_DIALOG_AF_CONSTRAINT, pParent );
	EnableToolTips( TRUE );
}

/*
================
DialogAFConstraint::~DialogAFConstraint
================
*/
DialogAFConstraint::~DialogAFConstraint() {
}

/*
================
DialogAFConstraint::DoDataExchange
================
*/
void DialogAFConstraint::DoDataExchange( CDataExchange* pDX ) {
    Sys_Printf("void DialogAFConstraint::DoDataExchange( CDataExchange* pDX )\r\n");
}


/*
================
DialogAFConstraint::InitConstraintList
================
*/
void DialogAFConstraint::InitConstraintList( void ) {
    Sys_Printf("void DialogAFConstraint::InitConstraintList( void )\r\n");
}


/*
================
DialogAFConstraint::InitConstraintTypeDlg
================
*/
void DialogAFConstraint::InitConstraintTypeDlg( void ) {
    Sys_Printf("void DialogAFConstraint::InitConstraintTypeDlg( void )\r\n");
}


/*
================
DialogAFConstraint::InitBodyLists
================
*/
void DialogAFConstraint::InitBodyLists( void ) {
    Sys_Printf("void DialogAFConstraint::InitBodyLists( void )\r\n");
}


/*
================
DialogAFConstraint::InitNewRenameDeleteButtons
================
*/
void DialogAFConstraint::InitNewRenameDeleteButtons( void ) {
    Sys_Printf("void DialogAFConstraint::InitNewRenameDeleteButtons( void )\r\n");
}


/*
================
DialogAFConstraint::LoadFile
================
*/
void DialogAFConstraint::LoadFile( idDeclAF *af ) {
    Sys_Printf("void DialogAFConstraint::LoadFile( idDeclAF *af )\r\n");
}


/*
================
DialogAFConstraint::SaveFile
================
*/
void DialogAFConstraint::SaveFile( void ) {
    Sys_Printf("void DialogAFConstraint::SaveFile( void )\r\n");
}


/*
================
DialogAFConstraint::LoadConstraint
================
*/
void DialogAFConstraint::LoadConstraint( const char *name ) {
    Sys_Printf("void DialogAFConstraint::LoadConstraint( const char *name )\r\n");
}


/*
================
DialogAFConstraint::SaveConstraint
================
*/
void DialogAFConstraint::SaveConstraint( void ) {
    Sys_Printf("void DialogAFConstraint::SaveConstraint( void )\r\n");
}


/*
================
DialogAFConstraint::UpdateFile
================
*/
void DialogAFConstraint::UpdateFile( void ) {
    Sys_Printf("void DialogAFConstraint::UpdateFile( void )\r\n");
}


/*
================
DialogAFConstraint::OnInitDialog
================
*/
BOOL DialogAFConstraint::OnInitDialog()  {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogAFConstraint::OnInitDialog()\r\n");
    return retVal;
}


/*
================
DialogAFConstraint::OnToolHitTest
================
*/
int DialogAFConstraint::OnToolHitTest( CPoint point, TOOLINFO* pTI ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int DialogAFConstraint::OnToolHitTest( CPoint point, TOOLINFO* pTI )\r\n");
    return retVal;
}


BEGIN_MESSAGE_MAP(DialogAFConstraint, CDialog)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTW, 0, 0xFFFF, OnToolTipNotify)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTA, 0, 0xFFFF, OnToolTipNotify)
	ON_WM_SHOWWINDOW()
	ON_CBN_SELCHANGE(IDC_COMBO_CONSTRAINTS, OnCbnSelchangeComboConstraints)
	ON_CBN_SELCHANGE(IDC_COMBO_CONSTRAINT_TYPE, OnCbnSelchangeComboConstraintType)
	ON_CBN_SELCHANGE(IDC_COMBO_CONSTRAINT_BODY1, OnCbnSelchangeComboConstraintBody1)
	ON_CBN_SELCHANGE(IDC_COMBO_CONSTRAINT_BODY2, OnCbnSelchangeComboConstraintBody2)
	ON_EN_CHANGE(IDC_EDIT_CONSTRAINT_FRICTION, OnEnChangeEditConstraintFriction)
	ON_NOTIFY(UDN_DELTAPOS, IDC_SPIN_CONSTRAINT_FRICTION, OnDeltaposSpinConstraintFriction)
	ON_BN_CLICKED(IDC_BUTTON_NEWCONSTRAINT, OnBnClickedButtonNewconstraint)
	ON_BN_CLICKED(IDC_BUTTON_RENAMECONSTRAINT, OnBnClickedButtonRenameconstraint)
	ON_BN_CLICKED(IDC_BUTTON_DELETECONSTRAINT, OnBnClickedButtonDeleteconstraint)
END_MESSAGE_MAP()


// DialogAFConstraint message handlers

BOOL DialogAFConstraint::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogAFConstraint::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


void DialogAFConstraint::OnShowWindow( BOOL bShow, UINT nStatus ) {
    Sys_Printf("void DialogAFConstraint::OnShowWindow( BOOL bShow, UINT nStatus )\r\n");
}


void DialogAFConstraint::OnCbnSelchangeComboConstraints() {
    Sys_Printf("void DialogAFConstraint::OnCbnSelchangeComboConstraints()\r\n");
}


void DialogAFConstraint::OnBnClickedButtonNewconstraint() {
    Sys_Printf("void DialogAFConstraint::OnBnClickedButtonNewconstraint()\r\n");
}


void DialogAFConstraint::OnBnClickedButtonRenameconstraint() {
    Sys_Printf("void DialogAFConstraint::OnBnClickedButtonRenameconstraint()\r\n");
}


void DialogAFConstraint::OnBnClickedButtonDeleteconstraint() {
    Sys_Printf("void DialogAFConstraint::OnBnClickedButtonDeleteconstraint()\r\n");
}


void DialogAFConstraint::OnCbnSelchangeComboConstraintType() {
    Sys_Printf("void DialogAFConstraint::OnCbnSelchangeComboConstraintType()\r\n");
}


void DialogAFConstraint::OnCbnSelchangeComboConstraintBody1() {
    Sys_Printf("void DialogAFConstraint::OnCbnSelchangeComboConstraintBody1()\r\n");
}


void DialogAFConstraint::OnCbnSelchangeComboConstraintBody2() {
    Sys_Printf("void DialogAFConstraint::OnCbnSelchangeComboConstraintBody2()\r\n");
}


void DialogAFConstraint::OnEnChangeEditConstraintFriction() {
    Sys_Printf("void DialogAFConstraint::OnEnChangeEditConstraintFriction()\r\n");
}


void DialogAFConstraint::OnDeltaposSpinConstraintFriction(NMHDR *pNMHDR, LRESULT *pResult) {
    Sys_Printf("void DialogAFConstraint::OnDeltaposSpinConstraintFriction(NMHDR *pNMHDR, LRESULT *pResult)\r\n");
}

