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

#include "../Game_local.h"

CLASS_DECLARATION( idPhysics_Base, idPhysics_AF )
END_CLASS

const float ERROR_REDUCTION					= 0.5f;
const float ERROR_REDUCTION_MAX				= 256.0f;
const float LIMIT_ERROR_REDUCTION			= 0.3f;
const float LCP_EPSILON						= 1e-7f;
const float LIMIT_LCP_EPSILON				= 1e-4f;
const float CONTACT_LCP_EPSILON				= 1e-6f;
const float CENTER_OF_MASS_EPSILON			= 1e-4f;
const float NO_MOVE_TIME					= 1.0f;
const float NO_MOVE_TRANSLATION_TOLERANCE	= 10.0f;
const float NO_MOVE_ROTATION_TOLERANCE		= 10.0f;
const float MIN_MOVE_TIME					= -1.0f;
const float MAX_MOVE_TIME					= -1.0f;
const float IMPULSE_THRESHOLD				= 500.0f;
const float SUSPEND_LINEAR_VELOCITY			= 10.0f;
const float SUSPEND_ANGULAR_VELOCITY		= 15.0f;
const float SUSPEND_LINEAR_ACCELERATION		= 20.0f;
const float SUSPEND_ANGULAR_ACCELERATION	= 30.0f;
const idVec6 vec6_lcp_epsilon				= idVec6( LCP_EPSILON, LCP_EPSILON, LCP_EPSILON,
													 LCP_EPSILON, LCP_EPSILON, LCP_EPSILON );

#define AF_TIMINGS

#ifdef AF_TIMINGS
static int lastTimerReset = 0;
static int numArticulatedFigures = 0;
static idTimer timer_total, timer_pc, timer_ac, timer_collision, timer_lcp;
#endif



//===============================================================
//
//	idAFConstraint
//
//===============================================================

/*
================
idAFConstraint::idAFConstraint
================
*/
idAFConstraint::idAFConstraint( void ) {
	type				= CONSTRAINT_INVALID;
	name				= "noname";
	body1				= NULL;
	body2				= NULL;
	physics				= NULL;

	lo.Zero( 6 );
	lo.SubVec6(0)		= -vec6_infinity;
	hi.Zero( 6 );
	hi.SubVec6(0)		= vec6_infinity;
	e.SetSize( 6 );
	e.SubVec6(0)		= vec6_lcp_epsilon;

	boxConstraint		= NULL;
	boxIndex[0]			= -1;
	boxIndex[1]			= -1;
	boxIndex[2]			= -1;
	boxIndex[3]			= -1;
	boxIndex[4]			= -1;
	boxIndex[5]			= -1;

	firstIndex			= 0;

	memset( &fl, 0, sizeof( fl ) );
}

/*
================
idAFConstraint::~idAFConstraint
================
*/
idAFConstraint::~idAFConstraint( void ) {
}

/*
================
idAFConstraint::SetBody1
================
*/
void idAFConstraint::SetBody1( idAFBody *body ) {
    Sys_Printf("void idAFConstraint::SetBody1( idAFBody *body )\r\n");
}


/*
================
idAFConstraint::SetBody2
================
*/
void idAFConstraint::SetBody2( idAFBody *body ) {
    Sys_Printf("void idAFConstraint::SetBody2( idAFBody *body )\r\n");
}


/*
================
idAFConstraint::GetMultiplier
================
*/
const idVecX &idAFConstraint::GetMultiplier( void ) {
	return lm;
}

/*
================
idAFConstraint::Evaluate
================
*/
void idAFConstraint::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint::ApplyFriction
================
*/
void idAFConstraint::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint::GetForce
================
*/
void idAFConstraint::GetForce( idAFBody *body, idVec6 &force ) {
    Sys_Printf("void idAFConstraint::GetForce( idAFBody *body, idVec6 &force )\r\n");
}


/*
================
idAFConstraint::Translate
================
*/
void idAFConstraint::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint::Rotate
================
*/
void idAFConstraint::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint::GetCenter
================
*/
void idAFConstraint::GetCenter( idVec3 &center ) {
    Sys_Printf("void idAFConstraint::GetCenter( idVec3 &center )\r\n");
}


/*
================
idAFConstraint::DebugDraw
================
*/
void idAFConstraint::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint::DebugDraw( void )\r\n");
}


/*
================
idAFConstraint::InitSize
================
*/
void idAFConstraint::InitSize( int size ) {
    Sys_Printf("void idAFConstraint::InitSize( int size )\r\n");
}


/*
================
idAFConstraint::Save
================
*/
void idAFConstraint::Save( idSaveGame *saveFile ) const {
    Sys_Printf("void idAFConstraint::Save( idSaveGame *saveFile )\r\n");
}


/*
================
idAFConstraint::Restore
================
*/
void idAFConstraint::Restore( idRestoreGame *saveFile ) {
    Sys_Printf("void idAFConstraint::Restore( idRestoreGame *saveFile )\r\n");
}



//===============================================================
//
//	idAFConstraint_Fixed
//
//===============================================================

/*
================
idAFConstraint_Fixed::idAFConstraint_Fixed
================
*/
idAFConstraint_Fixed::idAFConstraint_Fixed( const idStr &name, idAFBody *body1, idAFBody *body2 ) {
	assert( body1 );
	type = CONSTRAINT_FIXED;
	this->name = name;
	this->body1 = body1;
	this->body2 = body2;
	InitSize( 6 );
	fl.allowPrimary = true;
	fl.noCollision = true;

	InitOffset();
}

/*
================
idAFConstraint_Fixed::InitOffset
================
*/
void idAFConstraint_Fixed::InitOffset( void ) {
    Sys_Printf("void idAFConstraint_Fixed::InitOffset( void )\r\n");
}


/*
================
idAFConstraint_Fixed::SetBody1
================
*/
void idAFConstraint_Fixed::SetBody1( idAFBody *body ) {
    Sys_Printf("void idAFConstraint_Fixed::SetBody1( idAFBody *body )\r\n");
}


/*
================
idAFConstraint_Fixed::SetBody2
================
*/
void idAFConstraint_Fixed::SetBody2( idAFBody *body ) {
    Sys_Printf("void idAFConstraint_Fixed::SetBody2( idAFBody *body )\r\n");
}


/*
================
idAFConstraint_Fixed::Evaluate
================
*/
void idAFConstraint_Fixed::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Fixed::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Fixed::ApplyFriction
================
*/
void idAFConstraint_Fixed::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Fixed::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Fixed::Translate
================
*/
void idAFConstraint_Fixed::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_Fixed::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_Fixed::Rotate
================
*/
void idAFConstraint_Fixed::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_Fixed::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint_Fixed::GetCenter
================
*/
void idAFConstraint_Fixed::GetCenter( idVec3 &center ) {
    Sys_Printf("void idAFConstraint_Fixed::GetCenter( idVec3 &center )\r\n");
}


/*
================
idAFConstraint_Fixed::DebugDraw
================
*/
void idAFConstraint_Fixed::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint_Fixed::DebugDraw( void )\r\n");
}


/*
================
idAFConstraint_Fixed::Save
================
*/
void idAFConstraint_Fixed::Save( idSaveGame *saveFile ) const {
    Sys_Printf("void idAFConstraint_Fixed::Save( idSaveGame *saveFile )\r\n");
}


/*
================
idAFConstraint_Fixed::Restore
================
*/
void idAFConstraint_Fixed::Restore( idRestoreGame *saveFile ) {
    Sys_Printf("void idAFConstraint_Fixed::Restore( idRestoreGame *saveFile )\r\n");
}



//===============================================================
//
//	idAFConstraint_BallAndSocketJoint
//
//===============================================================

/*
================
idAFConstraint_BallAndSocketJoint::idAFConstraint_BallAndSocketJoint
================
*/
idAFConstraint_BallAndSocketJoint::idAFConstraint_BallAndSocketJoint( const idStr &name, idAFBody *body1, idAFBody *body2 ) {
	assert( body1 );
	type = CONSTRAINT_BALLANDSOCKETJOINT;
	this->name = name;
	this->body1 = body1;
	this->body2 = body2;
	InitSize( 3 );
	coneLimit = NULL;
	pyramidLimit = NULL;
	friction = 0.0f;
	fc = NULL;
	fl.allowPrimary = true;
	fl.noCollision = true;
}

/*
================
idAFConstraint_BallAndSocketJoint::~idAFConstraint_BallAndSocketJoint
================
*/
idAFConstraint_BallAndSocketJoint::~idAFConstraint_BallAndSocketJoint( void ) {
	if ( coneLimit ) {
		delete coneLimit;
	}
	if ( pyramidLimit ) {
		delete pyramidLimit;
	}
}

/*
================
idAFConstraint_BallAndSocketJoint::SetAnchor
================
*/
void idAFConstraint_BallAndSocketJoint::SetAnchor( const idVec3 &worldPosition ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJoint::SetAnchor( const idVec3 &worldPosition )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJoint::GetAnchor
================
*/
idVec3 idAFConstraint_BallAndSocketJoint::GetAnchor( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAFConstraint_BallAndSocketJoint::GetAnchor( void )\r\n");
    return retVal;
}


/*
================
idAFConstraint_BallAndSocketJoint::SetNoLimit
================
*/
void idAFConstraint_BallAndSocketJoint::SetNoLimit( void ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJoint::SetNoLimit( void )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJoint::SetConeLimit
================
*/
void idAFConstraint_BallAndSocketJoint::SetConeLimit( const idVec3 &coneAxis, const float coneAngle, const idVec3 &body1Axis ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJoint::SetConeLimit( const idVec3 &coneAxis, const float coneAngle, const idVec3 &body1Axis )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJoint::SetPyramidLimit
================
*/
void idAFConstraint_BallAndSocketJoint::SetPyramidLimit( const idVec3 &pyramidAxis, const idVec3 &baseAxis,
														const float angle1, const float angle2, const idVec3 &body1Axis ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJoint::SetPyramidLimit( const idVec3 &pyramidAxis, const idVec3 &baseAxis,const float angle1, const float angle2, const idVec3 &body1Axis )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJoint::SetLimitEpsilon
================
*/
void idAFConstraint_BallAndSocketJoint::SetLimitEpsilon( const float e ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJoint::SetLimitEpsilon( const float e )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJoint::GetFriction
================
*/
float idAFConstraint_BallAndSocketJoint::GetFriction( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAFConstraint_BallAndSocketJoint::GetFriction( void )\r\n");
    return retVal;
}


/*
================
idAFConstraint_BallAndSocketJoint::Evaluate
================
*/
void idAFConstraint_BallAndSocketJoint::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJoint::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJoint::ApplyFriction
================
*/
void idAFConstraint_BallAndSocketJoint::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJoint::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJoint::GetForce
================
*/
void idAFConstraint_BallAndSocketJoint::GetForce( idAFBody *body, idVec6 &force ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJoint::GetForce( idAFBody *body, idVec6 &force )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJoint::Translate
================
*/
void idAFConstraint_BallAndSocketJoint::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJoint::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJoint::Rotate
================
*/
void idAFConstraint_BallAndSocketJoint::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJoint::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJoint::GetCenter
================
*/
void idAFConstraint_BallAndSocketJoint::GetCenter( idVec3 &center ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJoint::GetCenter( idVec3 &center )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJoint::DebugDraw
================
*/
void idAFConstraint_BallAndSocketJoint::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJoint::DebugDraw( void )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJoint::Save
================
*/
void idAFConstraint_BallAndSocketJoint::Save( idSaveGame *saveFile ) const {
    Sys_Printf("void idAFConstraint_BallAndSocketJoint::Save( idSaveGame *saveFile )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJoint::Restore
================
*/
void idAFConstraint_BallAndSocketJoint::Restore( idRestoreGame *saveFile ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJoint::Restore( idRestoreGame *saveFile )\r\n");
}



//===============================================================
//
//	idAFConstraint_BallAndSocketJointFriction
//
//===============================================================

/*
================
idAFConstraint_BallAndSocketJointFriction::idAFConstraint_BallAndSocketJointFriction
================
*/
idAFConstraint_BallAndSocketJointFriction::idAFConstraint_BallAndSocketJointFriction( void ) {
	type = CONSTRAINT_FRICTION;
	name = "ballAndSocketJointFriction";
	InitSize( 3 );
	joint = NULL;
	fl.allowPrimary = false;
	fl.frameConstraint = true;
}

/*
================
idAFConstraint_BallAndSocketJointFriction::Setup
================
*/
void idAFConstraint_BallAndSocketJointFriction::Setup( idAFConstraint_BallAndSocketJoint *bsj ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJointFriction::Setup( idAFConstraint_BallAndSocketJoint *bsj )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJointFriction::Evaluate
================
*/
void idAFConstraint_BallAndSocketJointFriction::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJointFriction::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJointFriction::ApplyFriction
================
*/
void idAFConstraint_BallAndSocketJointFriction::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJointFriction::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJointFriction::Add
================
*/
bool idAFConstraint_BallAndSocketJointFriction::Add( idPhysics_AF *phys, float invTimeStep ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFConstraint_BallAndSocketJointFriction::Add( idPhysics_AF *phys, float invTimeStep )\r\n");
    return retVal;
}


/*
================
idAFConstraint_BallAndSocketJointFriction::Translate
================
*/
void idAFConstraint_BallAndSocketJointFriction::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJointFriction::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_BallAndSocketJointFriction::Rotate
================
*/
void idAFConstraint_BallAndSocketJointFriction::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_BallAndSocketJointFriction::Rotate( const idRotation &rotation )\r\n");
}



//===============================================================
//
//	idAFConstraint_UniversalJoint
//
//===============================================================

/*
================
idAFConstraint_UniversalJoint::idAFConstraint_UniversalJoint
================
*/
idAFConstraint_UniversalJoint::idAFConstraint_UniversalJoint( const idStr &name, idAFBody *body1, idAFBody *body2 ) {
	assert( body1 );
	type = CONSTRAINT_UNIVERSALJOINT;
	this->name = name;
	this->body1 = body1;
	this->body2 = body2;
	InitSize( 4 );
	coneLimit = NULL;
	pyramidLimit = NULL;
	friction = 0.0f;
	fc = NULL;
	fl.allowPrimary = true;
	fl.noCollision = true;
}

/*
================
idAFConstraint_UniversalJoint::~idAFConstraint_UniversalJoint
================
*/
idAFConstraint_UniversalJoint::~idAFConstraint_UniversalJoint( void ) {
	if ( coneLimit ) {
		delete coneLimit;
	}
	if ( pyramidLimit ) {
		delete pyramidLimit;
	}
	if ( fc ) {
		delete fc;
	}
}

/*
================
idAFConstraint_UniversalJoint::SetAnchor
================
*/
void idAFConstraint_UniversalJoint::SetAnchor( const idVec3 &worldPosition ) {
    Sys_Printf("void idAFConstraint_UniversalJoint::SetAnchor( const idVec3 &worldPosition )\r\n");
}


/*
================
idAFConstraint_UniversalJoint::GetAnchor
================
*/
idVec3 idAFConstraint_UniversalJoint::GetAnchor( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAFConstraint_UniversalJoint::GetAnchor( void )\r\n");
    return retVal;
}


/*
================
idAFConstraint_UniversalJoint::SetShafts
================
*/
void idAFConstraint_UniversalJoint::SetShafts( const idVec3 &cardanShaft1, const idVec3 &cardanShaft2 ) {
    Sys_Printf("void idAFConstraint_UniversalJoint::SetShafts( const idVec3 &cardanShaft1, const idVec3 &cardanShaft2 )\r\n");
}


/*
================
idAFConstraint_UniversalJoint::SetNoLimit
================
*/
void idAFConstraint_UniversalJoint::SetNoLimit( void ) {
    Sys_Printf("void idAFConstraint_UniversalJoint::SetNoLimit( void )\r\n");
}


/*
================
idAFConstraint_UniversalJoint::SetConeLimit
================
*/
void idAFConstraint_UniversalJoint::SetConeLimit( const idVec3 &coneAxis, const float coneAngle ) {
    Sys_Printf("void idAFConstraint_UniversalJoint::SetConeLimit( const idVec3 &coneAxis, const float coneAngle )\r\n");
}


/*
================
idAFConstraint_UniversalJoint::SetPyramidLimit
================
*/
void idAFConstraint_UniversalJoint::SetPyramidLimit( const idVec3 &pyramidAxis, const idVec3 &baseAxis,
														const float angle1, const float angle2 ) {
    Sys_Printf("void idAFConstraint_UniversalJoint::SetPyramidLimit( const idVec3 &pyramidAxis, const idVec3 &baseAxis,const float angle1, const float angle2 )\r\n");
}


/*
================
idAFConstraint_UniversalJoint::SetLimitEpsilon
================
*/
void idAFConstraint_UniversalJoint::SetLimitEpsilon( const float e ) {
    Sys_Printf("void idAFConstraint_UniversalJoint::SetLimitEpsilon( const float e )\r\n");
}


/*
================
idAFConstraint_UniversalJoint::GetFriction
================
*/
float idAFConstraint_UniversalJoint::GetFriction( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAFConstraint_UniversalJoint::GetFriction( void )\r\n");
    return retVal;
}


/*
================
idAFConstraint_UniversalJoint::Evaluate

  NOTE: this joint is homokinetic
================
*/
void idAFConstraint_UniversalJoint::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_UniversalJoint::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_UniversalJoint::ApplyFriction
================
*/
void idAFConstraint_UniversalJoint::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_UniversalJoint::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_UniversalJoint::GetForce
================
*/
void idAFConstraint_UniversalJoint::GetForce( idAFBody *body, idVec6 &force ) {
    Sys_Printf("void idAFConstraint_UniversalJoint::GetForce( idAFBody *body, idVec6 &force )\r\n");
}


/*
================
idAFConstraint_UniversalJoint::Translate
================
*/
void idAFConstraint_UniversalJoint::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_UniversalJoint::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_UniversalJoint::Rotate
================
*/
void idAFConstraint_UniversalJoint::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_UniversalJoint::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint_UniversalJoint::GetCenter
================
*/
void idAFConstraint_UniversalJoint::GetCenter( idVec3 &center ) {
    Sys_Printf("void idAFConstraint_UniversalJoint::GetCenter( idVec3 &center )\r\n");
}


/*
================
idAFConstraint_UniversalJoint::DebugDraw
================
*/
void idAFConstraint_UniversalJoint::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint_UniversalJoint::DebugDraw( void )\r\n");
}


/*
================
idAFConstraint_UniversalJoint::Save
================
*/
void idAFConstraint_UniversalJoint::Save( idSaveGame *saveFile ) const {
    Sys_Printf("void idAFConstraint_UniversalJoint::Save( idSaveGame *saveFile )\r\n");
}


/*
================
idAFConstraint_UniversalJoint::Restore
================
*/
void idAFConstraint_UniversalJoint::Restore( idRestoreGame *saveFile ) {
    Sys_Printf("void idAFConstraint_UniversalJoint::Restore( idRestoreGame *saveFile )\r\n");
}



//===============================================================
//
//	idAFConstraint_UniversalJointFriction
//
//===============================================================

/*
================
idAFConstraint_UniversalJointFriction::idAFConstraint_UniversalJointFriction
================
*/
idAFConstraint_UniversalJointFriction::idAFConstraint_UniversalJointFriction( void ) {
	type = CONSTRAINT_FRICTION;
	name = "universalJointFriction";
	InitSize( 2 );
	joint = NULL;
	fl.allowPrimary = false;
	fl.frameConstraint = true;
}

/*
================
idAFConstraint_UniversalJointFriction::Setup
================
*/
void idAFConstraint_UniversalJointFriction::Setup( idAFConstraint_UniversalJoint *uj ) {
    Sys_Printf("void idAFConstraint_UniversalJointFriction::Setup( idAFConstraint_UniversalJoint *uj )\r\n");
}


/*
================
idAFConstraint_UniversalJointFriction::Evaluate
================
*/
void idAFConstraint_UniversalJointFriction::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_UniversalJointFriction::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_UniversalJointFriction::ApplyFriction
================
*/
void idAFConstraint_UniversalJointFriction::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_UniversalJointFriction::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_UniversalJointFriction::Add
================
*/
bool idAFConstraint_UniversalJointFriction::Add( idPhysics_AF *phys, float invTimeStep ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFConstraint_UniversalJointFriction::Add( idPhysics_AF *phys, float invTimeStep )\r\n");
    return retVal;
}


/*
================
idAFConstraint_UniversalJointFriction::Translate
================
*/
void idAFConstraint_UniversalJointFriction::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_UniversalJointFriction::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_UniversalJointFriction::Rotate
================
*/
void idAFConstraint_UniversalJointFriction::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_UniversalJointFriction::Rotate( const idRotation &rotation )\r\n");
}



//===============================================================
//
//	idAFConstraint_CylindricalJoint
//
//===============================================================

/*
================
idAFConstraint_CylindricalJoint::idAFConstraint_CylindricalJoint
================
*/
idAFConstraint_CylindricalJoint::idAFConstraint_CylindricalJoint( const idStr &name, idAFBody *body1, idAFBody *body2 ) {
	assert( 0 );	// FIXME: implement
}

/*
================
idAFConstraint_CylindricalJoint::Evaluate
================
*/
void idAFConstraint_CylindricalJoint::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_CylindricalJoint::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_CylindricalJoint::ApplyFriction
================
*/
void idAFConstraint_CylindricalJoint::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_CylindricalJoint::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_CylindricalJoint::Translate
================
*/
void idAFConstraint_CylindricalJoint::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_CylindricalJoint::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_CylindricalJoint::Rotate
================
*/
void idAFConstraint_CylindricalJoint::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_CylindricalJoint::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint_CylindricalJoint::DebugDraw
================
*/
void idAFConstraint_CylindricalJoint::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint_CylindricalJoint::DebugDraw( void )\r\n");
}



//===============================================================
//
//	idAFConstraint_Hinge
//
//===============================================================

/*
================
idAFConstraint_Hinge::idAFConstraint_Hinge
================
*/
idAFConstraint_Hinge::idAFConstraint_Hinge( const idStr &name, idAFBody *body1, idAFBody *body2 ) {
	assert( body1 );
	type = CONSTRAINT_HINGE;
	this->name = name;
	this->body1 = body1;
	this->body2 = body2;
	InitSize( 5 );
	coneLimit = NULL;
	steering = NULL;
	friction = 0.0f;
	fc = NULL;
	fl.allowPrimary = true;
	fl.noCollision = true;
	initialAxis = body1->GetWorldAxis();
	if ( body2 ) {
		initialAxis *= body2->GetWorldAxis().Transpose();
	}
}

/*
================
idAFConstraint_Hinge::~idAFConstraint_Hinge
================
*/
idAFConstraint_Hinge::~idAFConstraint_Hinge( void ) {
	if ( coneLimit ) {
		delete coneLimit;
	}
	if ( fc ) {
		delete fc;
	}
	if ( steering ) {
		delete steering;
	}
}

/*
================
idAFConstraint_Hinge::SetAnchor
================
*/
void idAFConstraint_Hinge::SetAnchor( const idVec3 &worldPosition ) {
    Sys_Printf("void idAFConstraint_Hinge::SetAnchor( const idVec3 &worldPosition )\r\n");
}


/*
================
idAFConstraint_Hinge::GetAnchor
================
*/
idVec3 idAFConstraint_Hinge::GetAnchor( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAFConstraint_Hinge::GetAnchor( void )\r\n");
    return retVal;
}


/*
================
idAFConstraint_Hinge::SetAxis
================
*/
void idAFConstraint_Hinge::SetAxis( const idVec3 &axis ) {
    Sys_Printf("void idAFConstraint_Hinge::SetAxis( const idVec3 &axis )\r\n");
}


/*
================
idAFConstraint_Hinge::GetAxis
================
*/
idVec3 idAFConstraint_Hinge::GetAxis( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAFConstraint_Hinge::GetAxis( void )\r\n");
    return retVal;
}


/*
================
idAFConstraint_Hinge::SetNoLimit
================
*/
void idAFConstraint_Hinge::SetNoLimit( void ) {
    Sys_Printf("void idAFConstraint_Hinge::SetNoLimit( void )\r\n");
}


/*
================
idAFConstraint_Hinge::SetLimit
================
*/
void idAFConstraint_Hinge::SetLimit( const idVec3 &axis, const float angle, const idVec3 &body1Axis ) {
    Sys_Printf("void idAFConstraint_Hinge::SetLimit( const idVec3 &axis, const float angle, const idVec3 &body1Axis )\r\n");
}


/*
================
idAFConstraint_Hinge::SetLimitEpsilon
================
*/
void idAFConstraint_Hinge::SetLimitEpsilon( const float e ) {
    Sys_Printf("void idAFConstraint_Hinge::SetLimitEpsilon( const float e )\r\n");
}


/*
================
idAFConstraint_Hinge::GetFriction
================
*/
float idAFConstraint_Hinge::GetFriction( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAFConstraint_Hinge::GetFriction( void )\r\n");
    return retVal;
}


/*
================
idAFConstraint_Hinge::GetAngle
================
*/
float idAFConstraint_Hinge::GetAngle( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAFConstraint_Hinge::GetAngle( void )\r\n");
    return retVal;
}


/*
================
idAFConstraint_Hinge::SetSteerAngle
================
*/
void idAFConstraint_Hinge::SetSteerAngle( const float degrees ) {
    Sys_Printf("void idAFConstraint_Hinge::SetSteerAngle( const float degrees )\r\n");
}


/*
================
idAFConstraint_Hinge::SetSteerSpeed
================
*/
void idAFConstraint_Hinge::SetSteerSpeed( const float speed ) {
    Sys_Printf("void idAFConstraint_Hinge::SetSteerSpeed( const float speed )\r\n");
}


/*
================
idAFConstraint_Hinge::Evaluate
================
*/
void idAFConstraint_Hinge::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Hinge::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Hinge::ApplyFriction
================
*/
void idAFConstraint_Hinge::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Hinge::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Hinge::GetForce
================
*/
void idAFConstraint_Hinge::GetForce( idAFBody *body, idVec6 &force ) {
    Sys_Printf("void idAFConstraint_Hinge::GetForce( idAFBody *body, idVec6 &force )\r\n");
}


/*
================
idAFConstraint_Hinge::Translate
================
*/
void idAFConstraint_Hinge::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_Hinge::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_Hinge::Rotate
================
*/
void idAFConstraint_Hinge::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_Hinge::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint_Hinge::GetCenter
================
*/
void idAFConstraint_Hinge::GetCenter( idVec3 &center ) {
    Sys_Printf("void idAFConstraint_Hinge::GetCenter( idVec3 &center )\r\n");
}


/*
================
idAFConstraint_Hinge::DebugDraw
================
*/
void idAFConstraint_Hinge::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint_Hinge::DebugDraw( void )\r\n");
}


/*
================
idAFConstraint_Hinge::Save
================
*/
void idAFConstraint_Hinge::Save( idSaveGame *saveFile ) const {
    Sys_Printf("void idAFConstraint_Hinge::Save( idSaveGame *saveFile )\r\n");
}


/*
================
idAFConstraint_Hinge::Restore
================
*/
void idAFConstraint_Hinge::Restore( idRestoreGame *saveFile ) {
    Sys_Printf("void idAFConstraint_Hinge::Restore( idRestoreGame *saveFile )\r\n");
}



//===============================================================
//
//	idAFConstraint_HingeFriction
//
//===============================================================

/*
================
idAFConstraint_HingeFriction::idAFConstraint_HingeFriction
================
*/
idAFConstraint_HingeFriction::idAFConstraint_HingeFriction( void ) {
	type = CONSTRAINT_FRICTION;
	name = "hingeFriction";
	InitSize( 1 );
	hinge = NULL;
	fl.allowPrimary = false;
	fl.frameConstraint = true;
}

/*
================
idAFConstraint_HingeFriction::Setup
================
*/
void idAFConstraint_HingeFriction::Setup( idAFConstraint_Hinge *h ) {
    Sys_Printf("void idAFConstraint_HingeFriction::Setup( idAFConstraint_Hinge *h )\r\n");
}


/*
================
idAFConstraint_HingeFriction::Evaluate
================
*/
void idAFConstraint_HingeFriction::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_HingeFriction::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_HingeFriction::ApplyFriction
================
*/
void idAFConstraint_HingeFriction::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_HingeFriction::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_HingeFriction::Add
================
*/
bool idAFConstraint_HingeFriction::Add( idPhysics_AF *phys, float invTimeStep ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFConstraint_HingeFriction::Add( idPhysics_AF *phys, float invTimeStep )\r\n");
    return retVal;
}


/*
================
idAFConstraint_HingeFriction::Translate
================
*/
void idAFConstraint_HingeFriction::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_HingeFriction::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_HingeFriction::Rotate
================
*/
void idAFConstraint_HingeFriction::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_HingeFriction::Rotate( const idRotation &rotation )\r\n");
}



//===============================================================
//
//	idAFConstraint_HingeSteering
//
//===============================================================

/*
================
idAFConstraint_HingeSteering::idAFConstraint_HingeSteering
================
*/
idAFConstraint_HingeSteering::idAFConstraint_HingeSteering( void ) {
	type = CONSTRAINT_HINGESTEERING;
	name = "hingeFriction";
	InitSize( 1 );
	hinge = NULL;
	fl.allowPrimary = false;
	fl.frameConstraint = true;
	steerSpeed = 0.0f;
	epsilon = LCP_EPSILON;
}

/*
================
idAFConstraint_HingeSteering::Save
================
*/
void idAFConstraint_HingeSteering::Save( idSaveGame *saveFile ) const {
    Sys_Printf("void idAFConstraint_HingeSteering::Save( idSaveGame *saveFile )\r\n");
}


/*
================
idAFConstraint_HingeSteering::Restore
================
*/
void idAFConstraint_HingeSteering::Restore( idRestoreGame *saveFile ) {
    Sys_Printf("void idAFConstraint_HingeSteering::Restore( idRestoreGame *saveFile )\r\n");
}


/*
================
idAFConstraint_HingeSteering::Setup
================
*/
void idAFConstraint_HingeSteering::Setup( idAFConstraint_Hinge *h ) {
    Sys_Printf("void idAFConstraint_HingeSteering::Setup( idAFConstraint_Hinge *h )\r\n");
}


/*
================
idAFConstraint_HingeSteering::Evaluate
================
*/
void idAFConstraint_HingeSteering::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_HingeSteering::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_HingeSteering::ApplyFriction
================
*/
void idAFConstraint_HingeSteering::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_HingeSteering::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_HingeSteering::Add
================
*/
bool idAFConstraint_HingeSteering::Add( idPhysics_AF *phys, float invTimeStep ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFConstraint_HingeSteering::Add( idPhysics_AF *phys, float invTimeStep )\r\n");
    return retVal;
}


/*
================
idAFConstraint_HingeSteering::Translate
================
*/
void idAFConstraint_HingeSteering::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_HingeSteering::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_HingeSteering::Rotate
================
*/
void idAFConstraint_HingeSteering::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_HingeSteering::Rotate( const idRotation &rotation )\r\n");
}



//===============================================================
//
//	idAFConstraint_Slider
//
//===============================================================

/*
================
idAFConstraint_Slider::idAFConstraint_Slider
================
*/
idAFConstraint_Slider::idAFConstraint_Slider( const idStr &name, idAFBody *body1, idAFBody *body2 ) {
	assert( body1 );
	type = CONSTRAINT_SLIDER;
	this->name = name;
	this->body1 = body1;
	this->body2 = body2;
	InitSize( 5 );
	fl.allowPrimary = true;
	fl.noCollision = true;

	if ( body2 ) {
		offset = ( body1->GetWorldOrigin() - body2->GetWorldOrigin() ) * body1->GetWorldAxis().Transpose();
		relAxis = body1->GetWorldAxis() * body2->GetWorldAxis().Transpose();
	}
	else {
		offset = body1->GetWorldOrigin();
		relAxis = body1->GetWorldAxis();
	}
}

/*
================
idAFConstraint_Slider::SetAxis
================
*/
void idAFConstraint_Slider::SetAxis( const idVec3 &ax ) {
    Sys_Printf("void idAFConstraint_Slider::SetAxis( const idVec3 &ax )\r\n");
}


/*
================
idAFConstraint_Slider::Evaluate
================
*/
void idAFConstraint_Slider::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Slider::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Slider::ApplyFriction
================
*/
void idAFConstraint_Slider::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Slider::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Slider::Translate
================
*/
void idAFConstraint_Slider::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_Slider::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_Slider::Rotate
================
*/
void idAFConstraint_Slider::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_Slider::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint_Slider::GetCenter
================
*/
void idAFConstraint_Slider::GetCenter( idVec3 &center ) {
    Sys_Printf("void idAFConstraint_Slider::GetCenter( idVec3 &center )\r\n");
}


/*
================
idAFConstraint_Slider::DebugDraw
================
*/
void idAFConstraint_Slider::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint_Slider::DebugDraw( void )\r\n");
}


/*
================
idAFConstraint_Slider::Save
================
*/
void idAFConstraint_Slider::Save( idSaveGame *saveFile ) const {
    Sys_Printf("void idAFConstraint_Slider::Save( idSaveGame *saveFile )\r\n");
}


/*
================
idAFConstraint_Slider::Restore
================
*/
void idAFConstraint_Slider::Restore( idRestoreGame *saveFile ) {
    Sys_Printf("void idAFConstraint_Slider::Restore( idRestoreGame *saveFile )\r\n");
}



//===============================================================
//
//	idAFConstraint_Line
//
//===============================================================

/*
================
idAFConstraint_Line::idAFConstraint_Line
================
*/
idAFConstraint_Line::idAFConstraint_Line( const idStr &name, idAFBody *body1, idAFBody *body2 ) {
	assert( 0 );	// FIXME: implement
}

/*
================
idAFConstraint_Line::Evaluate
================
*/
void idAFConstraint_Line::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Line::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Line::ApplyFriction
================
*/
void idAFConstraint_Line::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Line::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Line::Translate
================
*/
void idAFConstraint_Line::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_Line::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_Line::Rotate
================
*/
void idAFConstraint_Line::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_Line::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint_Line::DebugDraw
================
*/
void idAFConstraint_Line::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint_Line::DebugDraw( void )\r\n");
}



//===============================================================
//
//	idAFConstraint_Plane
//
//===============================================================

/*
================
idAFConstraint_Plane::idAFConstraint_Plane
================
*/
idAFConstraint_Plane::idAFConstraint_Plane( const idStr &name, idAFBody *body1, idAFBody *body2 ) {
	assert( body1 );
	type = CONSTRAINT_PLANE;
	this->name = name;
	this->body1 = body1;
	this->body2 = body2;
	InitSize( 1 );
	fl.allowPrimary = true;
	fl.noCollision = true;
}

/*
================
idAFConstraint_Plane::SetPlane
================
*/
void idAFConstraint_Plane::SetPlane( const idVec3 &normal, const idVec3 &anchor ) {
    Sys_Printf("void idAFConstraint_Plane::SetPlane( const idVec3 &normal, const idVec3 &anchor )\r\n");
}


/*
================
idAFConstraint_Plane::Evaluate
================
*/
void idAFConstraint_Plane::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Plane::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Plane::ApplyFriction
================
*/
void idAFConstraint_Plane::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Plane::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Plane::Translate
================
*/
void idAFConstraint_Plane::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_Plane::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_Plane::Rotate
================
*/
void idAFConstraint_Plane::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_Plane::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint_Plane::DebugDraw
================
*/
void idAFConstraint_Plane::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint_Plane::DebugDraw( void )\r\n");
}


/*
================
idAFConstraint_Plane::Save
================
*/
void idAFConstraint_Plane::Save( idSaveGame *saveFile ) const {
    Sys_Printf("void idAFConstraint_Plane::Save( idSaveGame *saveFile )\r\n");
}


/*
================
idAFConstraint_Plane::Restore
================
*/
void idAFConstraint_Plane::Restore( idRestoreGame *saveFile ) {
    Sys_Printf("void idAFConstraint_Plane::Restore( idRestoreGame *saveFile )\r\n");
}



//===============================================================
//
//	idAFConstraint_Spring
//
//===============================================================

/*
================
idAFConstraint_Spring::idAFConstraint_Spring
================
*/
idAFConstraint_Spring::idAFConstraint_Spring( const idStr &name, idAFBody *body1, idAFBody *body2 ) {
	assert( body1 );
	type = CONSTRAINT_SPRING;
	this->name = name;
	this->body1 = body1;
	this->body2 = body2;
	InitSize( 1 );
	fl.allowPrimary = false;
	kstretch = kcompress = damping = 1.0f;
	minLength = maxLength = restLength = 0.0f;
}

/*
================
idAFConstraint_Spring::SetAnchor
================
*/
void idAFConstraint_Spring::SetAnchor( const idVec3 &worldAnchor1, const idVec3 &worldAnchor2 ) {
    Sys_Printf("void idAFConstraint_Spring::SetAnchor( const idVec3 &worldAnchor1, const idVec3 &worldAnchor2 )\r\n");
}


/*
================
idAFConstraint_Spring::SetSpring
================
*/
void idAFConstraint_Spring::SetSpring( const float stretch, const float compress, const float damping, const float restLength ) {
    Sys_Printf("void idAFConstraint_Spring::SetSpring( const float stretch, const float compress, const float damping, const float restLength )\r\n");
}


/*
================
idAFConstraint_Spring::SetLimit
================
*/
void idAFConstraint_Spring::SetLimit( const float minLength, const float maxLength ) {
    Sys_Printf("void idAFConstraint_Spring::SetLimit( const float minLength, const float maxLength )\r\n");
}


/*
================
idAFConstraint_Spring::Evaluate
================
*/
void idAFConstraint_Spring::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Spring::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Spring::ApplyFriction
================
*/
void idAFConstraint_Spring::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Spring::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Spring::Translate
================
*/
void idAFConstraint_Spring::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_Spring::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_Spring::Rotate
================
*/
void idAFConstraint_Spring::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_Spring::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint_Spring::GetCenter
================
*/
void idAFConstraint_Spring::GetCenter( idVec3 &center ) {
    Sys_Printf("void idAFConstraint_Spring::GetCenter( idVec3 &center )\r\n");
}


/*
================
idAFConstraint_Spring::DebugDraw
================
*/
void idAFConstraint_Spring::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint_Spring::DebugDraw( void )\r\n");
}


/*
================
idAFConstraint_Spring::Save
================
*/
void idAFConstraint_Spring::Save( idSaveGame *saveFile ) const {
    Sys_Printf("void idAFConstraint_Spring::Save( idSaveGame *saveFile )\r\n");
}


/*
================
idAFConstraint_Spring::Restore
================
*/
void idAFConstraint_Spring::Restore( idRestoreGame *saveFile ) {
    Sys_Printf("void idAFConstraint_Spring::Restore( idRestoreGame *saveFile )\r\n");
}



//===============================================================
//
//	idAFConstraint_Contact
//
//===============================================================

/*
================
idAFConstraint_Contact::idAFConstraint_Contact
================
*/
idAFConstraint_Contact::idAFConstraint_Contact( void ) {
	name = "contact";
	type = CONSTRAINT_CONTACT;
	InitSize( 1 );
	fc = NULL;
	fl.allowPrimary = false;
	fl.frameConstraint = true;
}

/*
================
idAFConstraint_Contact::~idAFConstraint_Contact
================
*/
idAFConstraint_Contact::~idAFConstraint_Contact( void ) {
	if ( fc ) {
		delete fc;
	}
}

/*
================
idAFConstraint_Contact::Setup
================
*/
void idAFConstraint_Contact::Setup( idAFBody *b1, idAFBody *b2, contactInfo_t &c ) {
    Sys_Printf("void idAFConstraint_Contact::Setup( idAFBody *b1, idAFBody *b2, contactInfo_t &c )\r\n");
}


/*
================
idAFConstraint_Contact::Evaluate
================
*/
void idAFConstraint_Contact::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Contact::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Contact::ApplyFriction
================
*/
void idAFConstraint_Contact::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Contact::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Contact::Translate
================
*/
void idAFConstraint_Contact::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_Contact::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_Contact::Rotate
================
*/
void idAFConstraint_Contact::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_Contact::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint_Contact::GetCenter
================
*/
void idAFConstraint_Contact::GetCenter( idVec3 &center ) {
    Sys_Printf("void idAFConstraint_Contact::GetCenter( idVec3 &center )\r\n");
}


/*
================
idAFConstraint_Contact::DebugDraw
================
*/
void idAFConstraint_Contact::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint_Contact::DebugDraw( void )\r\n");
}



//===============================================================
//
//	idAFConstraint_ContactFriction
//
//===============================================================

/*
================
idAFConstraint_ContactFriction::idAFConstraint_ContactFriction
================
*/
idAFConstraint_ContactFriction::idAFConstraint_ContactFriction( void ) {
	type = CONSTRAINT_FRICTION;
	name = "contactFriction";
	InitSize( 2 );
	cc = NULL;
	fl.allowPrimary = false;
	fl.frameConstraint = true;
}

/*
================
idAFConstraint_ContactFriction::Setup
================
*/
void idAFConstraint_ContactFriction::Setup( idAFConstraint_Contact *cc ) {
    Sys_Printf("void idAFConstraint_ContactFriction::Setup( idAFConstraint_Contact *cc )\r\n");
}


/*
================
idAFConstraint_ContactFriction::Evaluate
================
*/
void idAFConstraint_ContactFriction::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_ContactFriction::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_ContactFriction::ApplyFriction
================
*/
void idAFConstraint_ContactFriction::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_ContactFriction::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_ContactFriction::Add
================
*/
bool idAFConstraint_ContactFriction::Add( idPhysics_AF *phys, float invTimeStep ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFConstraint_ContactFriction::Add( idPhysics_AF *phys, float invTimeStep )\r\n");
    return retVal;
}


/*
================
idAFConstraint_ContactFriction::Translate
================
*/
void idAFConstraint_ContactFriction::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_ContactFriction::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_ContactFriction::Rotate
================
*/
void idAFConstraint_ContactFriction::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_ContactFriction::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint_ContactFriction::DebugDraw
================
*/
void idAFConstraint_ContactFriction::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint_ContactFriction::DebugDraw( void )\r\n");
}



//===============================================================
//
//	idAFConstraint_ConeLimit
//
//===============================================================

/*
================
idAFConstraint_ConeLimit::idAFConstraint_ConeLimit
================
*/
idAFConstraint_ConeLimit::idAFConstraint_ConeLimit( void ) {
	type = CONSTRAINT_CONELIMIT;
	name = "coneLimit";
	InitSize( 1 );
	fl.allowPrimary = false;
	fl.frameConstraint = true;
}

/*
================
idAFConstraint_ConeLimit::Setup

  the coneAnchor is the top of the cone in body2 space
  the coneAxis is the axis of the cone in body2 space
  the coneAngle is the angle the cone hull makes at the top
  the body1Axis is the axis in body1 space that should stay within the cone
================
*/
void idAFConstraint_ConeLimit::Setup( idAFBody *b1, idAFBody *b2, const idVec3 &coneAnchor, const idVec3 &coneAxis, const float coneAngle, const idVec3 &body1Axis ) {
    Sys_Printf("void idAFConstraint_ConeLimit::Setup( idAFBody *b1, idAFBody *b2, const idVec3 &coneAnchor, const idVec3 &coneAxis, const float coneAngle, const idVec3 &body1Axis )\r\n");
}


/*
================
idAFConstraint_ConeLimit::SetAnchor
================
*/
void idAFConstraint_ConeLimit::SetAnchor( const idVec3 &coneAnchor ) {
    Sys_Printf("void idAFConstraint_ConeLimit::SetAnchor( const idVec3 &coneAnchor )\r\n");
}


/*
================
idAFConstraint_ConeLimit::SetBody1Axis
================
*/
void idAFConstraint_ConeLimit::SetBody1Axis( const idVec3 &body1Axis ) {
    Sys_Printf("void idAFConstraint_ConeLimit::SetBody1Axis( const idVec3 &body1Axis )\r\n");
}


/*
================
idAFConstraint_ConeLimit::Evaluate
================
*/
void idAFConstraint_ConeLimit::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_ConeLimit::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_ConeLimit::ApplyFriction
================
*/
void idAFConstraint_ConeLimit::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_ConeLimit::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_ConeLimit::Add
================
*/
bool idAFConstraint_ConeLimit::Add( idPhysics_AF *phys, float invTimeStep ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFConstraint_ConeLimit::Add( idPhysics_AF *phys, float invTimeStep )\r\n");
    return retVal;
}


/*
================
idAFConstraint_ConeLimit::Translate
================
*/
void idAFConstraint_ConeLimit::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_ConeLimit::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_ConeLimit::Rotate
================
*/
void idAFConstraint_ConeLimit::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_ConeLimit::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint_ConeLimit::DebugDraw
================
*/
void idAFConstraint_ConeLimit::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint_ConeLimit::DebugDraw( void )\r\n");
}


/*
================
idAFConstraint_ConeLimit::Save
================
*/
void idAFConstraint_ConeLimit::Save( idSaveGame *saveFile ) const {
    Sys_Printf("void idAFConstraint_ConeLimit::Save( idSaveGame *saveFile )\r\n");
}


/*
================
idAFConstraint_ConeLimit::Restore
================
*/
void idAFConstraint_ConeLimit::Restore( idRestoreGame *saveFile ) {
    Sys_Printf("void idAFConstraint_ConeLimit::Restore( idRestoreGame *saveFile )\r\n");
}



//===============================================================
//
//	idAFConstraint_PyramidLimit
//
//===============================================================

/*
================
idAFConstraint_PyramidLimit::idAFConstraint_PyramidLimit
================
*/
idAFConstraint_PyramidLimit::idAFConstraint_PyramidLimit( void ) {
	type = CONSTRAINT_PYRAMIDLIMIT;
	name = "pyramidLimit";
	InitSize( 1 );
	fl.allowPrimary = false;
	fl.frameConstraint = true;
}

/*
================
idAFConstraint_PyramidLimit::Setup
================
*/
void idAFConstraint_PyramidLimit::Setup( idAFBody *b1, idAFBody *b2, const idVec3 &pyramidAnchor,
								const idVec3 &pyramidAxis, const idVec3 &baseAxis,
								const float pyramidAngle1, const float pyramidAngle2, const idVec3 &body1Axis ) {
    Sys_Printf("void idAFConstraint_PyramidLimit::Setup( idAFBody *b1, idAFBody *b2, const idVec3 &pyramidAnchor,const idVec3 &pyramidAxis, const idVec3 &baseAxis,const float pyramidAngle1, const float pyramidAngle2, const idVec3 &body1Axis )\r\n");
}


/*
================
idAFConstraint_PyramidLimit::SetAnchor
================
*/
void idAFConstraint_PyramidLimit::SetAnchor( const idVec3 &pyramidAnchor ) {
    Sys_Printf("void idAFConstraint_PyramidLimit::SetAnchor( const idVec3 &pyramidAnchor )\r\n");
}


/*
================
idAFConstraint_PyramidLimit::SetBody1Axis
================
*/
void idAFConstraint_PyramidLimit::SetBody1Axis( const idVec3 &body1Axis ) {
    Sys_Printf("void idAFConstraint_PyramidLimit::SetBody1Axis( const idVec3 &body1Axis )\r\n");
}


/*
================
idAFConstraint_PyramidLimit::Evaluate
================
*/
void idAFConstraint_PyramidLimit::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_PyramidLimit::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_PyramidLimit::ApplyFriction
================
*/
void idAFConstraint_PyramidLimit::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_PyramidLimit::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_PyramidLimit::Add
================
*/
bool idAFConstraint_PyramidLimit::Add( idPhysics_AF *phys, float invTimeStep ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFConstraint_PyramidLimit::Add( idPhysics_AF *phys, float invTimeStep )\r\n");
    return retVal;
}


/*
================
idAFConstraint_PyramidLimit::Translate
================
*/
void idAFConstraint_PyramidLimit::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_PyramidLimit::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_PyramidLimit::Rotate
================
*/
void idAFConstraint_PyramidLimit::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_PyramidLimit::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint_PyramidLimit::DebugDraw
================
*/
void idAFConstraint_PyramidLimit::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint_PyramidLimit::DebugDraw( void )\r\n");
}


/*
================
idAFConstraint_PyramidLimit::Save
================
*/
void idAFConstraint_PyramidLimit::Save( idSaveGame *saveFile ) const {
    Sys_Printf("void idAFConstraint_PyramidLimit::Save( idSaveGame *saveFile )\r\n");
}


/*
================
idAFConstraint_PyramidLimit::Restore
================
*/
void idAFConstraint_PyramidLimit::Restore( idRestoreGame *saveFile ) {
    Sys_Printf("void idAFConstraint_PyramidLimit::Restore( idRestoreGame *saveFile )\r\n");
}



//===============================================================
//
//	idAFConstraint_Suspension
//
//===============================================================

/*
================
idAFConstraint_Suspension::idAFConstraint_Suspension
================
*/
idAFConstraint_Suspension::idAFConstraint_Suspension( void ) {
	type = CONSTRAINT_SUSPENSION;
	name = "suspension";
	InitSize( 3 );
	fl.allowPrimary = false;
	fl.frameConstraint = true;

	localOrigin.Zero();
	localAxis.Identity();
	suspensionUp = 0.0f;
	suspensionDown = 0.0f;
	suspensionKCompress = 0.0f;
	suspensionDamping = 0.0f;
	steerAngle = 0.0f;
	friction = 2.0f;
	motorEnabled = false;
	motorForce = 0.0f;
	motorVelocity = 0.0f;
	wheelModel = NULL;
	memset( &trace, 0, sizeof( trace ) );
	epsilon = LCP_EPSILON;
}

/*
================
idAFConstraint_Suspension::Setup
================
*/
void idAFConstraint_Suspension::Setup( const char *name, idAFBody *body, const idVec3 &origin, const idMat3 &axis, idClipModel *clipModel ) {
    Sys_Printf("void idAFConstraint_Suspension::Setup( const char *name, idAFBody *body, const idVec3 &origin, const idMat3 &axis, idClipModel *clipModel )\r\n");
}


/*
================
idAFConstraint_Suspension::SetSuspension
================
*/
void idAFConstraint_Suspension::SetSuspension( const float up, const float down, const float k, const float d, const float f ) {
    Sys_Printf("void idAFConstraint_Suspension::SetSuspension( const float up, const float down, const float k, const float d, const float f )\r\n");
}


/*
================
idAFConstraint_Suspension::GetWheelOrigin
================
*/
const idVec3 idAFConstraint_Suspension::GetWheelOrigin( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAFConstraint_Suspension::GetWheelOrigin( void )\r\n");
    return retVal;
}


/*
================
idAFConstraint_Suspension::Evaluate
================
*/
void idAFConstraint_Suspension::Evaluate( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Suspension::Evaluate( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Suspension::ApplyFriction
================
*/
void idAFConstraint_Suspension::ApplyFriction( float invTimeStep ) {
    Sys_Printf("void idAFConstraint_Suspension::ApplyFriction( float invTimeStep )\r\n");
}


/*
================
idAFConstraint_Suspension::Translate
================
*/
void idAFConstraint_Suspension::Translate( const idVec3 &translation ) {
    Sys_Printf("void idAFConstraint_Suspension::Translate( const idVec3 &translation )\r\n");
}


/*
================
idAFConstraint_Suspension::Rotate
================
*/
void idAFConstraint_Suspension::Rotate( const idRotation &rotation ) {
    Sys_Printf("void idAFConstraint_Suspension::Rotate( const idRotation &rotation )\r\n");
}


/*
================
idAFConstraint_Suspension::DebugDraw
================
*/
void idAFConstraint_Suspension::DebugDraw( void ) {
    Sys_Printf("void idAFConstraint_Suspension::DebugDraw( void )\r\n");
}



//===============================================================
//
//	idAFBody
//
//===============================================================

/*
================
idAFBody::idAFBody
================
*/
idAFBody::idAFBody( void ) {
	Init();
}

/*
================
idAFBody::idAFBody
================
*/
idAFBody::idAFBody( const idStr &name, idClipModel *clipModel, float density ) {

	assert( clipModel );
	assert( clipModel->IsTraceModel() );

	Init();

	this->name = name;
	this->clipModel = NULL;

	SetClipModel( clipModel );
	SetDensity( density );

	current->worldOrigin = clipModel->GetOrigin();
	current->worldAxis = clipModel->GetAxis();
	*next = *current;

}

/*
================
idAFBody::~idAFBody
================
*/
idAFBody::~idAFBody( void ) {
	delete clipModel;
}

/*
================
idAFBody::Init
================
*/
void idAFBody::Init( void ) {
    Sys_Printf("void idAFBody::Init( void )\r\n");
}


/*
================
idAFBody::SetClipModel
================
*/
void idAFBody::SetClipModel( idClipModel *clipModel ) {
    Sys_Printf("void idAFBody::SetClipModel( idClipModel *clipModel )\r\n");
}


/*
================
idAFBody::SetFriction
================
*/
void idAFBody::SetFriction( float linear, float angular, float contact ) {
    Sys_Printf("void idAFBody::SetFriction( float linear, float angular, float contact )\r\n");
}


/*
================
idAFBody::SetBouncyness
================
*/
void idAFBody::SetBouncyness( float bounce ) {
    Sys_Printf("void idAFBody::SetBouncyness( float bounce )\r\n");
}


/*
================
idAFBody::SetDensity
================
*/
void idAFBody::SetDensity( float density, const idMat3 &inertiaScale ) {
    Sys_Printf("void idAFBody::SetDensity( float density, const idMat3 &inertiaScale )\r\n");
}


/*
================
idAFBody::SetFrictionDirection
================
*/
void idAFBody::SetFrictionDirection( const idVec3 &dir ) {
    Sys_Printf("void idAFBody::SetFrictionDirection( const idVec3 &dir )\r\n");
}


/*
================
idAFBody::GetFrictionDirection
================
*/
bool idAFBody::GetFrictionDirection( idVec3 &dir ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFBody::GetFrictionDirection( idVec3 &dir )\r\n");
    return retVal;
}


/*
================
idAFBody::SetContactMotorDirection
================
*/
void idAFBody::SetContactMotorDirection( const idVec3 &dir ) {
    Sys_Printf("void idAFBody::SetContactMotorDirection( const idVec3 &dir )\r\n");
}


/*
================
idAFBody::GetContactMotorDirection
================
*/
bool idAFBody::GetContactMotorDirection( idVec3 &dir ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFBody::GetContactMotorDirection( idVec3 &dir )\r\n");
    return retVal;
}


/*
================
idAFBody::GetPointVelocity
================
*/
idVec3 idAFBody::GetPointVelocity( const idVec3 &point ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idAFBody::GetPointVelocity( const idVec3 &point )\r\n");
    return retVal;
}


/*
================
idAFBody::AddForce
================
*/
void idAFBody::AddForce( const idVec3 &point, const idVec3 &force ) {
    Sys_Printf("void idAFBody::AddForce( const idVec3 &point, const idVec3 &force )\r\n");
}


/*
================
idAFBody::InverseWorldSpatialInertiaMultiply

  dst = this->inverseWorldSpatialInertia * v;
================
*/
ID_INLINE void idAFBody::InverseWorldSpatialInertiaMultiply( idVecX &dst, const float *v ) const {
    Sys_Printf("void idAFBody::InverseWorldSpatialInertiaMultiply( idVecX &dst, const float *v )\r\n");
}


/*
================
idAFBody::Save
================
*/
void idAFBody::Save( idSaveGame *saveFile ) {
    Sys_Printf("void idAFBody::Save( idSaveGame *saveFile )\r\n");
}


/*
================
idAFBody::Restore
================
*/
void idAFBody::Restore( idRestoreGame *saveFile ) {
    Sys_Printf("void idAFBody::Restore( idRestoreGame *saveFile )\r\n");
}




//===============================================================
//                                                        M
//  idAFTree                                             MrE
//                                                        E
//===============================================================

/*
================
idAFTree::Factor

  factor matrix for the primary constraints in the tree
================
*/
void idAFTree::Factor( void ) const {
    Sys_Printf("void idAFTree::Factor( void )\r\n");
}


/*
================
idAFTree::Solve

  solve for primary constraints in the tree
================
*/
void idAFTree::Solve( int auxiliaryIndex ) const {
    Sys_Printf("void idAFTree::Solve( int auxiliaryIndex )\r\n");
}


/*
================
idAFTree::Response

  calculate body forces in the tree in response to a constraint force
================
*/
void idAFTree::Response( const idAFConstraint *constraint, int row, int auxiliaryIndex ) const {
    Sys_Printf("void idAFTree::Response( const idAFConstraint *constraint, int row, int auxiliaryIndex )\r\n");
}


/*
================
idAFTree::CalculateForces

  calculate forces on the bodies in the tree
================
*/
void idAFTree::CalculateForces( float timeStep ) const {
    Sys_Printf("void idAFTree::CalculateForces( float timeStep )\r\n");
}


/*
================
idAFTree::SetMaxSubTreeAuxiliaryIndex
================
*/
void idAFTree::SetMaxSubTreeAuxiliaryIndex( void ) {
    Sys_Printf("void idAFTree::SetMaxSubTreeAuxiliaryIndex( void )\r\n");
}


/*
================
idAFTree::SortBodies_r
================
*/
void idAFTree::SortBodies_r( idList<idAFBody*>&sortedList, idAFBody *body ) {
    Sys_Printf("void idAFTree::SortBodies_r( idList<idAFBody*>&sortedList, idAFBody *body )\r\n");
}


/*
================
idAFTree::SortBodies

  sort body list to make sure parents come first
================
*/
void idAFTree::SortBodies( void ) {
    Sys_Printf("void idAFTree::SortBodies( void )\r\n");
}


/*
================
idAFTree::DebugDraw
================
*/
void idAFTree::DebugDraw( const idVec4 &color ) const {
    Sys_Printf("void idAFTree::DebugDraw( const idVec4 &color )\r\n");
}



//===============================================================
//                                                        M
//  idPhysics_AF                                         MrE
//                                                        E
//===============================================================

/*
================
idPhysics_AF::EvaluateConstraints
================
*/
void idPhysics_AF::EvaluateConstraints( float timeStep ) {
    Sys_Printf("void idPhysics_AF::EvaluateConstraints( float timeStep )\r\n");
}


/*
================
idPhysics_AF::EvaluateBodies
================
*/
void idPhysics_AF::EvaluateBodies( float timeStep ) {
    Sys_Printf("void idPhysics_AF::EvaluateBodies( float timeStep )\r\n");
}


/*
================
idPhysics_AF::AddFrameConstraints
================
*/
void idPhysics_AF::AddFrameConstraints( void ) {
    Sys_Printf("void idPhysics_AF::AddFrameConstraints( void )\r\n");
}


/*
================
idPhysics_AF::RemoveFrameConstraints
================
*/
void idPhysics_AF::RemoveFrameConstraints( void ) {
    Sys_Printf("void idPhysics_AF::RemoveFrameConstraints( void )\r\n");
}


/*
================
idPhysics_AF::ApplyFriction
================
*/
void idPhysics_AF::ApplyFriction( float timeStep, float endTimeMSec ) {
    Sys_Printf("void idPhysics_AF::ApplyFriction( float timeStep, float endTimeMSec )\r\n");
}


/*
================
idPhysics_AF::PrimaryFactor
================
*/
void idPhysics_AF::PrimaryFactor( void ) {
    Sys_Printf("void idPhysics_AF::PrimaryFactor( void )\r\n");
}


/*
================
idPhysics_AF::PrimaryForces
================
*/
void idPhysics_AF::PrimaryForces( float timeStep ) {
    Sys_Printf("void idPhysics_AF::PrimaryForces( float timeStep )\r\n");
}


/*
================
idPhysics_AF::AuxiliaryForces
================
*/
void idPhysics_AF::AuxiliaryForces( float timeStep ) {
    Sys_Printf("void idPhysics_AF::AuxiliaryForces( float timeStep )\r\n");
}


/*
================
idPhysics_AF::VerifyContactConstraints
================
*/
void idPhysics_AF::VerifyContactConstraints( void ) {
    Sys_Printf("void idPhysics_AF::VerifyContactConstraints( void )\r\n");
}


/*
================
idPhysics_AF::Evolve
================
*/
void idPhysics_AF::Evolve( float timeStep ) {
    Sys_Printf("void idPhysics_AF::Evolve( float timeStep )\r\n");
}


/*
================
idPhysics_AF::CollisionImpulse

  apply impulse to the colliding bodies
  the current state of the body should be set to the moment of impact
  this is silly as it doesn't take the AF structure into account
================
*/
bool idPhysics_AF::CollisionImpulse( float timeStep, idAFBody *body, trace_t &collision ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_AF::CollisionImpulse( float timeStep, idAFBody *body, trace_t &collision )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::ApplyCollisions
================
*/
bool idPhysics_AF::ApplyCollisions( float timeStep ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_AF::ApplyCollisions( float timeStep )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::SetupCollisionForBody
================
*/
idEntity *idPhysics_AF::SetupCollisionForBody( idAFBody *body ) const {
    Sys_Printf("idEntity *idPhysics_AF::SetupCollisionForBody( idAFBody *body )\r\n");
    return NULL;
}


/*
================
idPhysics_AF::CheckForCollisions

  check for collisions between the current and next state
  if there is a collision the next state is set to the state at the moment of impact
  assumes all bodies are linked for collision detection and relinks all bodies after moving them
================
*/
void idPhysics_AF::CheckForCollisions( float timeStep ) {
    Sys_Printf("void idPhysics_AF::CheckForCollisions( float timeStep )\r\n");
}


/*
================
idPhysics_AF::EvaluateContacts
================
*/
bool idPhysics_AF::EvaluateContacts( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_AF::EvaluateContacts( void )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::SetupContactConstraints
================
*/
void idPhysics_AF::SetupContactConstraints( void ) {
    Sys_Printf("void idPhysics_AF::SetupContactConstraints( void )\r\n");
}


/*
================
idPhysics_AF::ApplyContactForces
================
*/
void idPhysics_AF::ApplyContactForces( void ) {
    Sys_Printf("void idPhysics_AF::ApplyContactForces( void )\r\n");
}


/*
================
idPhysics_AF::ClearExternalForce
================
*/
void idPhysics_AF::ClearExternalForce( void ) {
    Sys_Printf("void idPhysics_AF::ClearExternalForce( void )\r\n");
}


/*
================
idPhysics_AF::AddGravity
================
*/
void idPhysics_AF::AddGravity( void ) {
    Sys_Printf("void idPhysics_AF::AddGravity( void )\r\n");
}


/*
================
idPhysics_AF::SwapStates
================
*/
void idPhysics_AF::SwapStates( void ) {
    Sys_Printf("void idPhysics_AF::SwapStates( void )\r\n");
}


/*
================
idPhysics_AF::UpdateClipModels
================
*/
void idPhysics_AF::UpdateClipModels( void ) {
    Sys_Printf("void idPhysics_AF::UpdateClipModels( void )\r\n");
}


/*
================
idPhysics_AF::SetSuspendSpeed
================
*/
void idPhysics_AF::SetSuspendSpeed( const idVec2 &velocity, const idVec2 &acceleration ) {
    Sys_Printf("void idPhysics_AF::SetSuspendSpeed( const idVec2 &velocity, const idVec2 &acceleration )\r\n");
}


/*
================
idPhysics_AF::SetSuspendTime
================
*/
void idPhysics_AF::SetSuspendTime( const float minTime, const float maxTime ) {
    Sys_Printf("void idPhysics_AF::SetSuspendTime( const float minTime, const float maxTime )\r\n");
}


/*
================
idPhysics_AF::SetSuspendTolerance
================
*/
void idPhysics_AF::SetSuspendTolerance( const float noMoveTime, const float noMoveTranslation, const float noMoveRotation ) {
    Sys_Printf("void idPhysics_AF::SetSuspendTolerance( const float noMoveTime, const float noMoveTranslation, const float noMoveRotation )\r\n");
}


/*
================
idPhysics_AF::SetTimeScaleRamp
================
*/
void idPhysics_AF::SetTimeScaleRamp( const float start, const float end ) {
    Sys_Printf("void idPhysics_AF::SetTimeScaleRamp( const float start, const float end )\r\n");
}


/*
================
idPhysics_AF::SetJointFrictionDent
================
*/
void idPhysics_AF::SetJointFrictionDent( const float dent, const float start, const float end ) {
    Sys_Printf("void idPhysics_AF::SetJointFrictionDent( const float dent, const float start, const float end )\r\n");
}


/*
================
idPhysics_AF::GetJointFrictionScale
================
*/
float idPhysics_AF::GetJointFrictionScale( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPhysics_AF::GetJointFrictionScale( void )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::SetContactFrictionDent
================
*/
void idPhysics_AF::SetContactFrictionDent( const float dent, const float start, const float end ) {
    Sys_Printf("void idPhysics_AF::SetContactFrictionDent( const float dent, const float start, const float end )\r\n");
}


/*
================
idPhysics_AF::GetContactFrictionScale
================
*/
float idPhysics_AF::GetContactFrictionScale( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPhysics_AF::GetContactFrictionScale( void )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::TestIfAtRest
================
*/
bool idPhysics_AF::TestIfAtRest( float timeStep ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_AF::TestIfAtRest( float timeStep )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::Rest
================
*/
void idPhysics_AF::Rest( void ) {
    Sys_Printf("void idPhysics_AF::Rest( void )\r\n");
}


/*
================
idPhysics_AF::Activate
================
*/
void idPhysics_AF::Activate( void ) {
    Sys_Printf("void idPhysics_AF::Activate( void )\r\n");
}


/*
================
idPhysics_AF::PutToRest

  put to rest untill something collides with this physics object
================
*/
void idPhysics_AF::PutToRest( void ) {
    Sys_Printf("void idPhysics_AF::PutToRest( void )\r\n");
}


/*
================
idPhysics_AF::EnableImpact
================
*/
void idPhysics_AF::EnableImpact( void ) {
    Sys_Printf("void idPhysics_AF::EnableImpact( void )\r\n");
}


/*
================
idPhysics_AF::DisableImpact
================
*/
void idPhysics_AF::DisableImpact( void ) {
    Sys_Printf("void idPhysics_AF::DisableImpact( void )\r\n");
}


/*
================
idPhysics_AF::AddPushVelocity
================
*/
void idPhysics_AF::AddPushVelocity( const idVec6 &pushVelocity ) {
    Sys_Printf("void idPhysics_AF::AddPushVelocity( const idVec6 &pushVelocity )\r\n");
}


/*
================
idPhysics_AF::SetClipModel
================
*/
void idPhysics_AF::SetClipModel( idClipModel *model, float density, int id, bool freeOld ) {
    Sys_Printf("void idPhysics_AF::SetClipModel( idClipModel *model, float density, int id, bool freeOld )\r\n");
}


/*
================
idPhysics_AF::GetClipModel
================
*/
idClipModel *idPhysics_AF::GetClipModel( int id ) const {
    Sys_Printf("idClipModel *idPhysics_AF::GetClipModel( int id )\r\n");
    return NULL;
}


/*
================
idPhysics_AF::GetNumClipModels
================
*/
int idPhysics_AF::GetNumClipModels( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_AF::GetNumClipModels( void )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::SetMass
================
*/
void idPhysics_AF::SetMass( float mass, int id ) {
    Sys_Printf("void idPhysics_AF::SetMass( float mass, int id )\r\n");
}


/*
================
idPhysics_AF::GetMass
================
*/
float idPhysics_AF::GetMass( int id ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idPhysics_AF::GetMass( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::SetContents
================
*/
void idPhysics_AF::SetContents( int contents, int id ) {
    Sys_Printf("void idPhysics_AF::SetContents( int contents, int id )\r\n");
}


/*
================
idPhysics_AF::GetContents
================
*/
int idPhysics_AF::GetContents( int id ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_AF::GetContents( int id )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::GetBounds
================
*/
const idBounds &idPhysics_AF::GetBounds( int id ) const {
	int i;
	static idBounds relBounds;

	if ( id >= 0 && id < bodies.Num() ) {
		return bodies[id]->GetClipModel()->GetBounds();
	}
	else if ( !bodies.Num() ) {
		relBounds.Zero();
		return relBounds;
	}
	else {
		relBounds = bodies[0]->GetClipModel()->GetBounds();
		for ( i = 1; i < bodies.Num(); i++ ) {
			idBounds bounds;
			idVec3 origin = ( bodies[i]->GetWorldOrigin() - bodies[0]->GetWorldOrigin() ) * bodies[0]->GetWorldAxis().Transpose();
			idMat3 axis = bodies[i]->GetWorldAxis() * bodies[0]->GetWorldAxis().Transpose();
			bounds.FromTransformedBounds( bodies[i]->GetClipModel()->GetBounds(), origin, axis );
			relBounds += bounds;
		}
		return relBounds;
	}
}

/*
================
idPhysics_AF::GetAbsBounds
================
*/
const idBounds &idPhysics_AF::GetAbsBounds( int id ) const {
	int i;
	static idBounds absBounds;

	if ( id >= 0 && id < bodies.Num() ) {
		return bodies[id]->GetClipModel()->GetAbsBounds();
	}
	else if ( !bodies.Num() ) {
		absBounds.Zero();
		return absBounds;
	}
	else {
		absBounds = bodies[0]->GetClipModel()->GetAbsBounds();
		for ( i = 1; i < bodies.Num(); i++ ) {
			absBounds += bodies[i]->GetClipModel()->GetAbsBounds();
		}
		return absBounds;
	}
}

/*
================
idPhysics_AF::Evaluate
================
*/
bool idPhysics_AF::Evaluate( int timeStepMSec, int endTimeMSec ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_AF::Evaluate( int timeStepMSec, int endTimeMSec )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::UpdateTime
================
*/
void idPhysics_AF::UpdateTime( int endTimeMSec ) {
    Sys_Printf("void idPhysics_AF::UpdateTime( int endTimeMSec )\r\n");
}


/*
================
idPhysics_AF::GetTime
================
*/
int idPhysics_AF::GetTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_AF::GetTime( void )\r\n");
    return retVal;
}


/*
================
DrawTraceModelSilhouette
================
*/
void DrawTraceModelSilhouette( const idVec3 &projectionOrigin, const idClipModel *clipModel ) {
    Sys_Printf("void DrawTraceModelSilhouette( const idVec3 &projectionOrigin, const idClipModel *clipModel )\r\n");
}


/*
================
idPhysics_AF::DebugDraw
================
*/
void idPhysics_AF::DebugDraw( void ) {
    Sys_Printf("void idPhysics_AF::DebugDraw( void )\r\n");
}


/*
================
idPhysics_AF::idPhysics_AF
================
*/
idPhysics_AF::idPhysics_AF( void ) {
	trees.Clear();
	bodies.Clear();
	constraints.Clear();
	primaryConstraints.Clear();
	auxiliaryConstraints.Clear();
	frameConstraints.Clear();
	contacts.Clear();
	collisions.Clear();
	changedAF = true;
	masterBody = NULL;

	lcp = idLCP::AllocSymmetric();

	memset( &current, 0, sizeof( current ) );
	current.atRest = -1;
	current.lastTimeStep = USERCMD_MSEC;
	saved = current;

	linearFriction = 0.005f;
	angularFriction = 0.005f;
	contactFriction = 0.8f;
	bouncyness = 0.4f;
	totalMass = 0.0f;
	forceTotalMass = -1.0f;

	suspendVelocity.Set( SUSPEND_LINEAR_VELOCITY, SUSPEND_ANGULAR_VELOCITY );
	suspendAcceleration.Set( SUSPEND_LINEAR_ACCELERATION, SUSPEND_LINEAR_ACCELERATION );
	noMoveTime = NO_MOVE_TIME;
	noMoveTranslation = NO_MOVE_TRANSLATION_TOLERANCE;
	noMoveRotation = NO_MOVE_ROTATION_TOLERANCE;
	minMoveTime = MIN_MOVE_TIME;
	maxMoveTime = MAX_MOVE_TIME;
	impulseThreshold = IMPULSE_THRESHOLD;

	timeScale = 1.0f;
	timeScaleRampStart = 0.0f;
	timeScaleRampEnd = 0.0f;

	jointFrictionScale = 0.0f;
	jointFrictionDent = 0.0f;
	jointFrictionDentStart = 0.0f;
	jointFrictionDentEnd = 0.0f;
	jointFrictionDentScale = 0.0f;

	contactFrictionScale = 0.0f;
	contactFrictionDent = 0.0f;
	contactFrictionDentStart = 0.0f;
	contactFrictionDentEnd = 0.0f;
	contactFrictionDentScale = 0.0f;

	enableCollision = true;
	selfCollision = true;
	comeToRest = true;
	linearTime = true;
	noImpact = false;
	worldConstraintsLocked = false;
	forcePushable = false;

#ifdef AF_TIMINGS
	lastTimerReset = 0;
#endif
}

/*
================
idPhysics_AF::~idPhysics_AF
================
*/
idPhysics_AF::~idPhysics_AF( void ) {
	int i;

	trees.DeleteContents( true );

	for ( i = 0; i < bodies.Num(); i++ ) {
		delete bodies[i];
	}

	for ( i = 0; i < constraints.Num(); i++ ) {
		delete constraints[i];
	}

	contactConstraints.SetNum( contactConstraints.NumAllocated(), false );
	for ( i = 0; i < contactConstraints.NumAllocated(); i++ ) {
		delete contactConstraints[i];
	}

	delete lcp;

	if ( masterBody ) {
		delete masterBody;
	}
}

/*
================
idPhysics_AF_SavePState
================
*/
void idPhysics_AF_SavePState( idSaveGame *saveFile, const AFPState_t &state ) {
    Sys_Printf("void idPhysics_AF_SavePState( idSaveGame *saveFile, const AFPState_t &state )\r\n");
}


/*
================
idPhysics_AF_RestorePState
================
*/
void idPhysics_AF_RestorePState( idRestoreGame *saveFile, AFPState_t &state ) {
    Sys_Printf("void idPhysics_AF_RestorePState( idRestoreGame *saveFile, AFPState_t &state )\r\n");
}


/*
================
idPhysics_AF::Save
================
*/
void idPhysics_AF::Save( idSaveGame *saveFile ) const {
    Sys_Printf("void idPhysics_AF::Save( idSaveGame *saveFile )\r\n");
}


/*
================
idPhysics_AF::Restore
================
*/
void idPhysics_AF::Restore( idRestoreGame *saveFile ) {
    Sys_Printf("void idPhysics_AF::Restore( idRestoreGame *saveFile )\r\n");
}


/*
================
idPhysics_AF::IsClosedLoop
================
*/
bool idPhysics_AF::IsClosedLoop( const idAFBody *body1, const idAFBody *body2 ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_AF::IsClosedLoop( const idAFBody *body1, const idAFBody *body2 )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::BuildTrees
================
*/
void idPhysics_AF::BuildTrees( void ) {
    Sys_Printf("void idPhysics_AF::BuildTrees( void )\r\n");
}


/*
================
idPhysics_AF::AddBody

  bodies get an id in the order they are added starting at zero
  as such the first body added will get id zero
================
*/
int idPhysics_AF::AddBody( idAFBody *body ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_AF::AddBody( idAFBody *body )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::AddConstraint
================
*/
void idPhysics_AF::AddConstraint( idAFConstraint *constraint ) {
    Sys_Printf("void idPhysics_AF::AddConstraint( idAFConstraint *constraint )\r\n");
}


/*
================
idPhysics_AF::AddFrameConstraint
================
*/
void idPhysics_AF::AddFrameConstraint( idAFConstraint *constraint ) {
    Sys_Printf("void idPhysics_AF::AddFrameConstraint( idAFConstraint *constraint )\r\n");
}


/*
================
idPhysics_AF::ForceBodyId
================
*/
void idPhysics_AF::ForceBodyId( idAFBody *body, int newId ) {
    Sys_Printf("void idPhysics_AF::ForceBodyId( idAFBody *body, int newId )\r\n");
}


/*
================
idPhysics_AF::GetBodyId
================
*/
int idPhysics_AF::GetBodyId( idAFBody *body ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_AF::GetBodyId( idAFBody *body )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::GetBodyId
================
*/
int idPhysics_AF::GetBodyId( const char *bodyName ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_AF::GetBodyId( const char *bodyName )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::GetConstraintId
================
*/
int idPhysics_AF::GetConstraintId( idAFConstraint *constraint ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_AF::GetConstraintId( idAFConstraint *constraint )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::GetConstraintId
================
*/
int idPhysics_AF::GetConstraintId( const char *constraintName ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_AF::GetConstraintId( const char *constraintName )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::GetNumBodies
================
*/
int idPhysics_AF::GetNumBodies( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_AF::GetNumBodies( void )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::GetNumConstraints
================
*/
int idPhysics_AF::GetNumConstraints( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_AF::GetNumConstraints( void )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::GetBody
================
*/
idAFBody *idPhysics_AF::GetBody( const char *bodyName ) const {
    Sys_Printf("idAFBody *idPhysics_AF::GetBody( const char *bodyName )\r\n");
    return NULL;
}


/*
================
idPhysics_AF::GetBody
================
*/
idAFBody *idPhysics_AF::GetBody( const int id ) const {
    Sys_Printf("idAFBody *idPhysics_AF::GetBody( const int id )\r\n");
    return NULL;
}


/*
================
idPhysics_AF::GetConstraint
================
*/
idAFConstraint *idPhysics_AF::GetConstraint( const char *constraintName ) const {
    Sys_Printf("idAFConstraint *idPhysics_AF::GetConstraint( const char *constraintName )\r\n");
    return NULL;
}


/*
================
idPhysics_AF::GetConstraint
================
*/
idAFConstraint *idPhysics_AF::GetConstraint( const int id ) const {
    Sys_Printf("idAFConstraint *idPhysics_AF::GetConstraint( const int id )\r\n");
    return NULL;
}


/*
================
idPhysics_AF::DeleteBody
================
*/
void idPhysics_AF::DeleteBody( const char *bodyName ) {
    Sys_Printf("void idPhysics_AF::DeleteBody( const char *bodyName )\r\n");
}


/*
================
idPhysics_AF::DeleteBody
================
*/
void idPhysics_AF::DeleteBody( const int id ) {
    Sys_Printf("void idPhysics_AF::DeleteBody( const int id )\r\n");
}


/*
================
idPhysics_AF::DeleteConstraint
================
*/
void idPhysics_AF::DeleteConstraint( const char *constraintName ) {
    Sys_Printf("void idPhysics_AF::DeleteConstraint( const char *constraintName )\r\n");
}


/*
================
idPhysics_AF::DeleteConstraint
================
*/
void idPhysics_AF::DeleteConstraint( const int id ) {
    Sys_Printf("void idPhysics_AF::DeleteConstraint( const int id )\r\n");
}


/*
================
idPhysics_AF::GetBodyContactConstraints
================
*/
int idPhysics_AF::GetBodyContactConstraints( const int id, idAFConstraint_Contact *contacts[], int maxContacts ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_AF::GetBodyContactConstraints( const int id, idAFConstraint_Contact *contacts[], int maxContacts )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::SetDefaultFriction
================
*/
void idPhysics_AF::SetDefaultFriction( float linear, float angular, float contact ) {
    Sys_Printf("void idPhysics_AF::SetDefaultFriction( float linear, float angular, float contact )\r\n");
}


/*
================
idPhysics_AF::GetImpactInfo
================
*/
void idPhysics_AF::GetImpactInfo( const int id, const idVec3 &point, impactInfo_t *info ) const {
    Sys_Printf("void idPhysics_AF::GetImpactInfo( const int id, const idVec3 &point, impactInfo_t *info )\r\n");
}


/*
================
idPhysics_AF::ApplyImpulse
================
*/
void idPhysics_AF::ApplyImpulse( const int id, const idVec3 &point, const idVec3 &impulse ) {
    Sys_Printf("void idPhysics_AF::ApplyImpulse( const int id, const idVec3 &point, const idVec3 &impulse )\r\n");
}


/*
================
idPhysics_AF::AddForce
================
*/
void idPhysics_AF::AddForce( const int id, const idVec3 &point, const idVec3 &force ) {
    Sys_Printf("void idPhysics_AF::AddForce( const int id, const idVec3 &point, const idVec3 &force )\r\n");
}


/*
================
idPhysics_AF::IsAtRest
================
*/
bool idPhysics_AF::IsAtRest( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_AF::IsAtRest( void )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::GetRestStartTime
================
*/
int idPhysics_AF::GetRestStartTime( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_AF::GetRestStartTime( void )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::IsPushable
================
*/
bool idPhysics_AF::IsPushable( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPhysics_AF::IsPushable( void )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::SaveState
================
*/
void idPhysics_AF::SaveState( void ) {
    Sys_Printf("void idPhysics_AF::SaveState( void )\r\n");
}


/*
================
idPhysics_AF::RestoreState
================
*/
void idPhysics_AF::RestoreState( void ) {
    Sys_Printf("void idPhysics_AF::RestoreState( void )\r\n");
}


/*
================
idPhysics_AF::SetOrigin
================
*/
void idPhysics_AF::SetOrigin( const idVec3 &newOrigin, int id ) {
    Sys_Printf("void idPhysics_AF::SetOrigin( const idVec3 &newOrigin, int id )\r\n");
}


/*
================
idPhysics_AF::SetAxis
================
*/
void idPhysics_AF::SetAxis( const idMat3 &newAxis, int id ) {
    Sys_Printf("void idPhysics_AF::SetAxis( const idMat3 &newAxis, int id )\r\n");
}


/*
================
idPhysics_AF::Translate
================
*/
void idPhysics_AF::Translate( const idVec3 &translation, int id ) {
    Sys_Printf("void idPhysics_AF::Translate( const idVec3 &translation, int id )\r\n");
}


/*
================
idPhysics_AF::Rotate
================
*/
void idPhysics_AF::Rotate( const idRotation &rotation, int id ) {
    Sys_Printf("void idPhysics_AF::Rotate( const idRotation &rotation, int id )\r\n");
}


/*
================
idPhysics_AF::GetOrigin
================
*/
const idVec3 &idPhysics_AF::GetOrigin( int id ) const {
	if ( id < 0 || id >= bodies.Num() ) {
		return vec3_origin;
	}
	else {
		return bodies[id]->current->worldOrigin;
	}
}

/*
================
idPhysics_AF::GetAxis
================
*/
const idMat3 &idPhysics_AF::GetAxis( int id ) const {
	if ( id < 0 || id >= bodies.Num() ) {
		return mat3_identity;
	}
	else {
		return bodies[id]->current->worldAxis;
	}
}

/*
================
idPhysics_AF::SetLinearVelocity
================
*/
void idPhysics_AF::SetLinearVelocity( const idVec3 &newLinearVelocity, int id ) {
    Sys_Printf("void idPhysics_AF::SetLinearVelocity( const idVec3 &newLinearVelocity, int id )\r\n");
}


/*
================
idPhysics_AF::SetAngularVelocity
================
*/
void idPhysics_AF::SetAngularVelocity( const idVec3 &newAngularVelocity, int id ) {
    Sys_Printf("void idPhysics_AF::SetAngularVelocity( const idVec3 &newAngularVelocity, int id )\r\n");
}


/*
================
idPhysics_AF::GetLinearVelocity
================
*/
const idVec3 &idPhysics_AF::GetLinearVelocity( int id ) const {
	if ( id < 0 || id >= bodies.Num() ) {
		return vec3_origin;
	}
	else {
		return bodies[id]->current->spatialVelocity.SubVec3( 0 );
	}
}

/*
================
idPhysics_AF::GetAngularVelocity
================
*/
const idVec3 &idPhysics_AF::GetAngularVelocity( int id ) const {
	if ( id < 0 || id >= bodies.Num() ) {
		return vec3_origin;
	}
	else {
		return bodies[id]->current->spatialVelocity.SubVec3( 1 );
	}
}

/*
================
idPhysics_AF::ClipTranslation
================
*/
void idPhysics_AF::ClipTranslation( trace_t &results, const idVec3 &translation, const idClipModel *model ) const {
    Sys_Printf("void idPhysics_AF::ClipTranslation( trace_t &results, const idVec3 &translation, const idClipModel *model )\r\n");
}


/*
================
idPhysics_AF::ClipRotation
================
*/
void idPhysics_AF::ClipRotation( trace_t &results, const idRotation &rotation, const idClipModel *model ) const {
    Sys_Printf("void idPhysics_AF::ClipRotation( trace_t &results, const idRotation &rotation, const idClipModel *model )\r\n");
}


/*
================
idPhysics_AF::ClipContents
================
*/
int idPhysics_AF::ClipContents( const idClipModel *model ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idPhysics_AF::ClipContents( const idClipModel *model )\r\n");
    return retVal;
}


/*
================
idPhysics_AF::DisableClip
================
*/
void idPhysics_AF::DisableClip( void ) {
    Sys_Printf("void idPhysics_AF::DisableClip( void )\r\n");
}


/*
================
idPhysics_AF::EnableClip
================
*/
void idPhysics_AF::EnableClip( void ) {
    Sys_Printf("void idPhysics_AF::EnableClip( void )\r\n");
}


/*
================
idPhysics_AF::UnlinkClip
================
*/
void idPhysics_AF::UnlinkClip( void ) {
    Sys_Printf("void idPhysics_AF::UnlinkClip( void )\r\n");
}


/*
================
idPhysics_AF::LinkClip
================
*/
void idPhysics_AF::LinkClip( void ) {
    Sys_Printf("void idPhysics_AF::LinkClip( void )\r\n");
}


/*
================
idPhysics_AF::SetPushed
================
*/
void idPhysics_AF::SetPushed( int deltaTime ) {
    Sys_Printf("void idPhysics_AF::SetPushed( int deltaTime )\r\n");
}


/*
================
idPhysics_AF::GetPushedLinearVelocity
================
*/
const idVec3 &idPhysics_AF::GetPushedLinearVelocity( const int id ) const {
	return current.pushVelocity.SubVec3(0);
}

/*
================
idPhysics_AF::GetPushedAngularVelocity
================
*/
const idVec3 &idPhysics_AF::GetPushedAngularVelocity( const int id ) const {
	return current.pushVelocity.SubVec3(1);
}

/*
================
idPhysics_AF::SetMaster

   the binding is orientated based on the constraints being used
================
*/
void idPhysics_AF::SetMaster( idEntity *master, const bool orientated ) {
    Sys_Printf("void idPhysics_AF::SetMaster( idEntity *master, const bool orientated )\r\n");
}



const float	AF_VELOCITY_MAX				= 16000;
const int	AF_VELOCITY_TOTAL_BITS		= 16;
const int	AF_VELOCITY_EXPONENT_BITS	= idMath::BitsForInteger( idMath::BitsForFloat( AF_VELOCITY_MAX ) ) + 1;
const int	AF_VELOCITY_MANTISSA_BITS	= AF_VELOCITY_TOTAL_BITS - 1 - AF_VELOCITY_EXPONENT_BITS;
const float	AF_FORCE_MAX				= 1e20f;
const int	AF_FORCE_TOTAL_BITS			= 16;
const int	AF_FORCE_EXPONENT_BITS		= idMath::BitsForInteger( idMath::BitsForFloat( AF_FORCE_MAX ) ) + 1;
const int	AF_FORCE_MANTISSA_BITS		= AF_FORCE_TOTAL_BITS - 1 - AF_FORCE_EXPONENT_BITS;

/*
================
idPhysics_AF::WriteToSnapshot
================
*/
void idPhysics_AF::WriteToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idPhysics_AF::WriteToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idPhysics_AF::ReadFromSnapshot
================
*/
void idPhysics_AF::ReadFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idPhysics_AF::ReadFromSnapshot( const idBitMsgDelta &msg )\r\n");
}

