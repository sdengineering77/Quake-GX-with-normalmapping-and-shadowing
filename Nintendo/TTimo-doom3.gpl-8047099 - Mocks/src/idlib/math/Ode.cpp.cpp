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

#include "../precompiled.h"
#pragma hdrstop

//===============================================================
//
//	idODE_Euler
//
//===============================================================

/*
=============
idODE_Euler::idODE_Euler
=============
*/
idODE_Euler::idODE_Euler( const int dim, deriveFunction_t dr, const void *ud ) {
	dimension = dim;
	derivatives = new float[dim];
	derive = dr;
	userData = ud;
}

/*
=============
idODE_Euler::~idODE_Euler
=============
*/
idODE_Euler::~idODE_Euler( void ) {
	delete[] derivatives;
}

/*
=============
idODE_Euler::Evaluate
=============
*/
float idODE_Euler::Evaluate( const float *state, float *newState, float t0, float t1 ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idODE_Euler::Evaluate( const float *state, float *newState, float t0, float t1 )\r\n");
    return retVal;
}


//===============================================================
//
//	idODE_Midpoint
//
//===============================================================

/*
=============
idODE_Midpoint::idODE_Midpoint
=============
*/
idODE_Midpoint::idODE_Midpoint( const int dim, deriveFunction_t dr, const void *ud ) {
	dimension = dim;
	tmpState = new float[dim];
	derivatives = new float[dim];
	derive = dr;
	userData = ud;
}

/*
=============
idODE_Midpoint::~idODE_Midpoint
=============
*/
idODE_Midpoint::~idODE_Midpoint( void ) {
	delete tmpState;
	delete derivatives;
}

/*
=============
idODE_Midpoint::~Evaluate
=============
*/
float idODE_Midpoint::Evaluate( const float *state, float *newState, float t0, float t1 ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idODE_Midpoint::Evaluate( const float *state, float *newState, float t0, float t1 )\r\n");
    return retVal;
}


//===============================================================
//
//	idODE_RK4
//
//===============================================================

/*
=============
idODE_RK4::idODE_RK4
=============
*/
idODE_RK4::idODE_RK4( const int dim, deriveFunction_t dr, const void *ud ) {
	dimension = dim;
	derive = dr;
	userData = ud;
	tmpState = new float[dim];
	d1 = new float[dim];
	d2 = new float[dim];
	d3 = new float[dim];
	d4 = new float[dim];
}

/*
=============
idODE_RK4::~idODE_RK4
=============
*/
idODE_RK4::~idODE_RK4( void ) {
	delete tmpState;
	delete d1;
	delete d2;
	delete d3;
	delete d4;
}

/*
=============
idODE_RK4::Evaluate
=============
*/
float idODE_RK4::Evaluate( const float *state, float *newState, float t0, float t1 ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idODE_RK4::Evaluate( const float *state, float *newState, float t0, float t1 )\r\n");
    return retVal;
}


//===============================================================
//
//	idODE_RK4Adaptive
//
//===============================================================

/*
=============
idODE_RK4Adaptive::idODE_RK4Adaptive
=============
*/
idODE_RK4Adaptive::idODE_RK4Adaptive( const int dim, deriveFunction_t dr, const void *ud ) {
	dimension = dim;
	derive = dr;
	userData = ud;
	maxError = 0.01f;
	tmpState = new float[dim];
	d1 = new float[dim];
	d1half = new float [dim];
	d2 = new float[dim];
	d3 = new float[dim];
	d4 = new float[dim];
}

/*
=============
idODE_RK4Adaptive::~idODE_RK4Adaptive
=============
*/
idODE_RK4Adaptive::~idODE_RK4Adaptive( void ) {
	delete tmpState;
	delete d1;
	delete d1half;
	delete d2;
	delete d3;
	delete d4;
}

/*
=============
idODE_RK4Adaptive::SetMaxError
=============
*/
void idODE_RK4Adaptive::SetMaxError( const float err ) {
    Sys_Printf("void idODE_RK4Adaptive::SetMaxError( const float err )\r\n");
}


/*
=============
idODE_RK4Adaptive::Evaluate
=============
*/
float idODE_RK4Adaptive::Evaluate( const float *state, float *newState, float t0, float t1 ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idODE_RK4Adaptive::Evaluate( const float *state, float *newState, float t0, float t1 )\r\n");
    return retVal;
}


