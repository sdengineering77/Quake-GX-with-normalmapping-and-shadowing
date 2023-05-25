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
#include "DialogAFView.h"

// DialogAFView dialog

toolTip_t DialogAFView::toolTips[] = {
	{ IDC_CHECK_VIEW_BODIES, "show bodies" },
	{ IDC_CHECK_VIEW_BODYNAMES, "show body names" },
	{ IDC_CHECK_VIEW_BODYMASS, "show body mass" },
	{ IDC_CHECK_VIEW_TOTALMASS, "show total mass" },
	{ IDC_CHECK_VIEW_INERTIATENSOR, "show body inertia tensor" },
	{ IDC_CHECK_VIEW_VELOCITY, "show body velocity" },
	{ IDC_CHECK_VIEW_CONSTRAINTNAMES, "show constraint names" },
	{ IDC_CHECK_VIEW_CONSTRAINTS, "show constraints" },
	{ IDC_CHECK_VIEW_PRIMARYONLY, "show only primary constraints" },
	{ IDC_CHECK_VIEW_LIMITS, "show constraint limits" },
	{ IDC_CHECK_VIEW_CONSTRAINEDBODIES, "show bodies constrained by current constraint (body1 = cyan, body2 = blue)" },
	{ IDC_CHECK_VIEW_TREES, "show tree structures" },
	{ IDC_CHECK_MD5_SKELETON, "show md5 with skeleton" },
	{ IDC_CHECK_MD5_SKELETONONLY, "show only the md5 skeleton" },
	{ IDC_CHECK_LINES_DEPTHTEST, "zbuffer lines" },
	{ IDC_CHECK_LINES_USEARROWS, "use arrows" },
	{ IDC_CHECK_PHYSICS_NOFRICTION, "disable all friction" },
	{ IDC_CHECK_PHYSICS_NOLIMITS, "disable all joint limits" },
	{ IDC_CHECK_PHYSICS_NOGRAVITY, "disable gravity" },
	{ IDC_CHECK_PHYSICS_NOSELFCOLLISION, "disable self collision detection" },
	{ IDC_CHECK_PHYSICS_TIMING, "show performance timings" },
	{ IDC_CHECK_PHYSICS_DRAG_ENTITIES, "drag entities" },
	{ IDC_CHECK_PHYSICS_SHOW_DRAG_SELECTION, "show selection box around the entity selected for dragging" },
	{ 0, NULL }
};

IMPLEMENT_DYNAMIC(DialogAFView, CDialog)

/*
================
DialogAFView::DialogAFView
================
*/
DialogAFView::DialogAFView(CWnd* pParent /*=NULL*/)
	: CDialog(DialogAFView::IDD, pParent)

{
	m_showBodies = cvarSystem->GetCVarBool( "af_showBodies" );
	m_showBodyNames = cvarSystem->GetCVarBool( "af_showBodyNames" );
	m_showMass = cvarSystem->GetCVarBool( "af_showMass" );
	m_showTotalMass = cvarSystem->GetCVarBool( "af_showTotalMass" );
	m_showInertia = cvarSystem->GetCVarBool( "af_showInertia" );
	m_showVelocity = cvarSystem->GetCVarBool( "af_showVelocity" );
	m_showConstraints = cvarSystem->GetCVarBool( "af_showConstraints" );
	m_showConstraintNames = cvarSystem->GetCVarBool( "af_showConstraintNames" );
	m_showPrimaryOnly = cvarSystem->GetCVarBool( "af_showPrimaryOnly" );
	m_showLimits = cvarSystem->GetCVarBool( "af_showLimits" );
	m_showConstrainedBodies = cvarSystem->GetCVarBool( "af_showConstrainedBodies" );
	m_showTrees = cvarSystem->GetCVarBool( "af_showTrees" );
	m_showSkeleton = cvarSystem->GetCVarInteger( "af_showSkel" ) == 1;
	m_showSkeletonOnly = cvarSystem->GetCVarInteger( "af_showSkel" ) == 2;
	m_debugLineDepthTest = cvarSystem->GetCVarBool( "r_debugLineDepthTest" );
	m_debugLineUseArrows = cvarSystem->GetCVarInteger( "r_debugArrowStep" ) != 0;
	m_noFriction = cvarSystem->GetCVarBool( "af_skipFriction" );
	m_noLimits = cvarSystem->GetCVarBool( "af_skipLimits" );
	m_gravity = cvarSystem->GetCVarFloat( "g_gravity" );
	m_noGravity = ( m_gravity == 0.0f );
	m_noSelfCollision = cvarSystem->GetCVarBool( "af_skipSelfCollision" );
	m_showTimings = cvarSystem->GetCVarBool( "af_showTimings" );
	m_dragEntity = cvarSystem->GetCVarBool( "g_dragEntity" );
	m_dragShowSelection = cvarSystem->GetCVarBool( "g_dragShowSelection" );

	Create( IDD_DIALOG_AF_VIEW, pParent );
	EnableToolTips( TRUE );
}

/*
================
DialogAFView::~DialogAFView
================
*/
DialogAFView::~DialogAFView() {
}

/*
================
DialogAFView::DoDataExchange
================
*/
void DialogAFView::DoDataExchange(CDataExchange* pDX) {
    Sys_Printf("void DialogAFView::DoDataExchange(CDataExchange* pDX)\r\n");
}


/*
================
DialogAFView::OnToolHitTest
================
*/
int DialogAFView::OnToolHitTest( CPoint point, TOOLINFO* pTI ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int DialogAFView::OnToolHitTest( CPoint point, TOOLINFO* pTI )\r\n");
    return retVal;
}


BEGIN_MESSAGE_MAP(DialogAFView, CDialog)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTW, 0, 0xFFFF, OnToolTipNotify)
	ON_NOTIFY_EX_RANGE(TTN_NEEDTEXTA, 0, 0xFFFF, OnToolTipNotify)
	ON_BN_CLICKED(IDC_CHECK_VIEW_BODIES, OnBnClickedCheckViewBodies)
	ON_BN_CLICKED(IDC_CHECK_VIEW_BODYNAMES, OnBnClickedCheckViewBodynames)
	ON_BN_CLICKED(IDC_CHECK_VIEW_BODYMASS, OnBnClickedCheckViewBodyMass)
	ON_BN_CLICKED(IDC_CHECK_VIEW_TOTALMASS, OnBnClickedCheckViewTotalMass)
	ON_BN_CLICKED(IDC_CHECK_VIEW_INERTIATENSOR, OnBnClickedCheckViewInertiatensor)
	ON_BN_CLICKED(IDC_CHECK_VIEW_VELOCITY, OnBnClickedCheckViewVelocity)
	ON_BN_CLICKED(IDC_CHECK_VIEW_CONSTRAINTS, OnBnClickedCheckViewConstraints)
	ON_BN_CLICKED(IDC_CHECK_VIEW_CONSTRAINTNAMES, OnBnClickedCheckViewConstraintnames)
	ON_BN_CLICKED(IDC_CHECK_VIEW_PRIMARYONLY, OnBnClickedCheckViewPrimaryonly)
	ON_BN_CLICKED(IDC_CHECK_VIEW_LIMITS, OnBnClickedCheckViewLimits)
	ON_BN_CLICKED(IDC_CHECK_VIEW_CONSTRAINEDBODIES, OnBnClickedCheckViewConstrainedBodies)
	ON_BN_CLICKED(IDC_CHECK_VIEW_TREES, OnBnClickedCheckViewTrees)
	ON_BN_CLICKED(IDC_CHECK_MD5_SKELETON, OnBnClickedCheckMd5Skeleton)
	ON_BN_CLICKED(IDC_CHECK_MD5_SKELETONONLY, OnBnClickedCheckMd5Skeletononly)
	ON_BN_CLICKED(IDC_CHECK_LINES_DEPTHTEST, OnBnClickedCheckLinesDepthtest)
	ON_BN_CLICKED(IDC_CHECK_LINES_USEARROWS, OnBnClickedCheckLinesUsearrows)
	ON_BN_CLICKED(IDC_CHECK_PHYSICS_NOFRICTION, OnBnClickedCheckPhysicsNofriction)
	ON_BN_CLICKED(IDC_CHECK_PHYSICS_NOLIMITS, OnBnClickedCheckPhysicsNolimits)
	ON_BN_CLICKED(IDC_CHECK_PHYSICS_NOGRAVITY, OnBnClickedCheckPhysicsNogravity)
	ON_BN_CLICKED(IDC_CHECK_PHYSICS_NOSELFCOLLISION, OnBnClickedCheckPhysicsNoselfcollision)
	ON_BN_CLICKED(IDC_CHECK_PHYSICS_TIMING, OnBnClickedCheckPhysicsTiming)
	ON_BN_CLICKED(IDC_CHECK_PHYSICS_DRAG_ENTITIES, OnBnClickedCheckPhysicsDragEntities)
	ON_BN_CLICKED(IDC_CHECK_PHYSICS_SHOW_DRAG_SELECTION, OnBnClickedCheckPhysicsShowDragSelection)
END_MESSAGE_MAP()


// DialogAFView message handlers

BOOL DialogAFView::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult ) {
    BOOL retVal;
    memset(&retVal, 0, sizeof(BOOL));
    Sys_Printf("BOOL DialogAFView::OnToolTipNotify( UINT id, NMHDR *pNMHDR, LRESULT *pResult )\r\n");
    return retVal;
}


void DialogAFView::OnBnClickedCheckViewBodies() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckViewBodies()\r\n");
}


void DialogAFView::OnBnClickedCheckViewBodynames() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckViewBodynames()\r\n");
}


void DialogAFView::OnBnClickedCheckViewBodyMass() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckViewBodyMass()\r\n");
}


void DialogAFView::OnBnClickedCheckViewTotalMass() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckViewTotalMass()\r\n");
}


void DialogAFView::OnBnClickedCheckViewInertiatensor() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckViewInertiatensor()\r\n");
}


void DialogAFView::OnBnClickedCheckViewVelocity() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckViewVelocity()\r\n");
}


void DialogAFView::OnBnClickedCheckViewConstraints() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckViewConstraints()\r\n");
}


void DialogAFView::OnBnClickedCheckViewConstraintnames() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckViewConstraintnames()\r\n");
}


void DialogAFView::OnBnClickedCheckViewPrimaryonly() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckViewPrimaryonly()\r\n");
}


void DialogAFView::OnBnClickedCheckViewLimits() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckViewLimits()\r\n");
}


void DialogAFView::OnBnClickedCheckViewConstrainedBodies() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckViewConstrainedBodies()\r\n");
}


void DialogAFView::OnBnClickedCheckViewTrees() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckViewTrees()\r\n");
}


void DialogAFView::OnBnClickedCheckMd5Skeleton() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckMd5Skeleton()\r\n");
}


void DialogAFView::OnBnClickedCheckMd5Skeletononly() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckMd5Skeletononly()\r\n");
}


void DialogAFView::OnBnClickedCheckLinesDepthtest() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckLinesDepthtest()\r\n");
}


void DialogAFView::OnBnClickedCheckLinesUsearrows() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckLinesUsearrows()\r\n");
}


void DialogAFView::OnBnClickedCheckPhysicsNofriction() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckPhysicsNofriction()\r\n");
}


void DialogAFView::OnBnClickedCheckPhysicsNolimits() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckPhysicsNolimits()\r\n");
}


void DialogAFView::OnBnClickedCheckPhysicsNogravity() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckPhysicsNogravity()\r\n");
}


void DialogAFView::OnBnClickedCheckPhysicsNoselfcollision() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckPhysicsNoselfcollision()\r\n");
}


void DialogAFView::OnBnClickedCheckPhysicsTiming() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckPhysicsTiming()\r\n");
}


void DialogAFView::OnBnClickedCheckPhysicsDragEntities() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckPhysicsDragEntities()\r\n");
}


void DialogAFView::OnBnClickedCheckPhysicsShowDragSelection() {
    Sys_Printf("void DialogAFView::OnBnClickedCheckPhysicsShowDragSelection()\r\n");
}

