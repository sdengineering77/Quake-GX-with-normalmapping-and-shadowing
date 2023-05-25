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

static idCVar lcp_showFailures( "lcp_showFailures", "0", CVAR_SYSTEM | CVAR_BOOL, "show LCP solver failures" );

const float LCP_BOUND_EPSILON			= 1e-5f;
const float LCP_ACCEL_EPSILON			= 1e-5f;
const float LCP_DELTA_ACCEL_EPSILON		= 1e-9f;
const float LCP_DELTA_FORCE_EPSILON		= 1e-9f;

#define IGNORE_UNSATISFIABLE_VARIABLES

//===============================================================
//                                                        M
//  idLCP_Square                                         MrE
//                                                        E
//===============================================================

class idLCP_Square : public idLCP {
public:
	virtual bool	Solve( const idMatX &o_m, idVecX &o_x, const idVecX &o_b, const idVecX &o_lo, const idVecX &o_hi, const int *o_boxIndex );

private:
	idMatX			m;					// original matrix
	idVecX			b;					// right hand side
	idVecX			lo, hi;				// low and high bounds
	idVecX			f, a;				// force and acceleration
	idVecX			delta_f, delta_a;	// delta force and delta acceleration
	idMatX			clamped;			// LU factored sub matrix for clamped variables
	idVecX			diagonal;			// reciprocal of diagonal of U of the LU factored sub matrix for clamped variables
	int				numUnbounded;		// number of unbounded variables
	int				numClamped;			// number of clamped variables
	float **		rowPtrs;			// pointers to the rows of m
	int *			boxIndex;			// box index
	int *			side;				// tells if a variable is at the low boundary = -1, high boundary = 1 or inbetween = 0
	int *			permuted;			// index to keep track of the permutation
	bool			padded;				// set to true if the rows of the initial matrix are 16 byte padded

private:
	bool			FactorClamped( void );
	void			SolveClamped( idVecX &x, const float *b );
	void			Swap( int i, int j );
	void			AddClamped( int r );
	void			RemoveClamped( int r );
	void			CalcForceDelta( int d, float dir );
	void			CalcAccelDelta( int d );
	void			ChangeForce( int d, float step );
	void			ChangeAccel( int d, float step );
	void			GetMaxStep( int d, float dir, float &maxStep, int &limit, int &limitSide ) const;
};

/*
============
idLCP_Square::FactorClamped
============
*/
bool idLCP_Square::FactorClamped( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idLCP_Square::FactorClamped( void )\r\n");
    return retVal;
}


/*
============
idLCP_Square::SolveClamped
============
*/
void idLCP_Square::SolveClamped( idVecX &x, const float *b ) {
    Sys_Printf("void idLCP_Square::SolveClamped( idVecX &x, const float *b )\r\n");
}


/*
============
idLCP_Square::Swap
============
*/
void idLCP_Square::Swap( int i, int j ) {
    Sys_Printf("void idLCP_Square::Swap( int i, int j )\r\n");
}


/*
============
idLCP_Square::AddClamped
============
*/
void idLCP_Square::AddClamped( int r ) {
    Sys_Printf("void idLCP_Square::AddClamped( int r )\r\n");
}


/*
============
idLCP_Square::RemoveClamped
============
*/
void idLCP_Square::RemoveClamped( int r ) {
    Sys_Printf("void idLCP_Square::RemoveClamped( int r )\r\n");
}


/*
============
idLCP_Square::CalcForceDelta

  modifies this->delta_f
============
*/
ID_INLINE void idLCP_Square::CalcForceDelta( int d, float dir ) {
    Sys_Printf("void idLCP_Square::CalcForceDelta( int d, float dir )\r\n");
}


/*
============
idLCP_Square::CalcAccelDelta

  modifies this->delta_a and uses this->delta_f
============
*/
ID_INLINE void idLCP_Square::CalcAccelDelta( int d ) {
    Sys_Printf("void idLCP_Square::CalcAccelDelta( int d )\r\n");
}


/*
============
idLCP_Square::ChangeForce

  modifies this->f and uses this->delta_f
============
*/
ID_INLINE void idLCP_Square::ChangeForce( int d, float step ) {
    Sys_Printf("void idLCP_Square::ChangeForce( int d, float step )\r\n");
}


/*
============
idLCP_Square::ChangeAccel

  modifies this->a and uses this->delta_a
============
*/
ID_INLINE void idLCP_Square::ChangeAccel( int d, float step ) {
    Sys_Printf("void idLCP_Square::ChangeAccel( int d, float step )\r\n");
}


/*
============
idLCP_Square::GetMaxStep
============
*/
void idLCP_Square::GetMaxStep( int d, float dir, float &maxStep, int &limit, int &limitSide ) const {
    Sys_Printf("void idLCP_Square::GetMaxStep( int d, float dir, float &maxStep, int &limit, int &limitSide )\r\n");
}


/*
============
idLCP_Square::Solve
============
*/
bool idLCP_Square::Solve( const idMatX &o_m, idVecX &o_x, const idVecX &o_b, const idVecX &o_lo, const idVecX &o_hi, const int *o_boxIndex ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idLCP_Square::Solve( const idMatX &o_m, idVecX &o_x, const idVecX &o_b, const idVecX &o_lo, const idVecX &o_hi, const int *o_boxIndex )\r\n");
    return retVal;
}



//===============================================================
//                                                        M
//  idLCP_Symmetric                                      MrE
//                                                        E
//===============================================================

class idLCP_Symmetric : public idLCP {
public:
	virtual bool	Solve( const idMatX &o_m, idVecX &o_x, const idVecX &o_b, const idVecX &o_lo, const idVecX &o_hi, const int *o_boxIndex );

private:
	idMatX			m;					// original matrix
	idVecX			b;					// right hand side
	idVecX			lo, hi;				// low and high bounds
	idVecX			f, a;				// force and acceleration
	idVecX			delta_f, delta_a;	// delta force and delta acceleration
	idMatX			clamped;			// LDLt factored sub matrix for clamped variables
	idVecX			diagonal;			// reciprocal of diagonal of LDLt factored sub matrix for clamped variables
	idVecX			solveCache1;		// intermediate result cached in SolveClamped
	idVecX			solveCache2;		// "
	int				numUnbounded;		// number of unbounded variables
	int				numClamped;			// number of clamped variables
	int				clampedChangeStart;	// lowest row/column changed in the clamped matrix during an iteration
	float **		rowPtrs;			// pointers to the rows of m
	int *			boxIndex;			// box index
	int *			side;				// tells if a variable is at the low boundary = -1, high boundary = 1 or inbetween = 0
	int *			permuted;			// index to keep track of the permutation
	bool			padded;				// set to true if the rows of the initial matrix are 16 byte padded

private:
	bool			FactorClamped( void );
	void			SolveClamped( idVecX &x, const float *b );
	void			Swap( int i, int j );
	void			AddClamped( int r, bool useSolveCache );
	void			RemoveClamped( int r );
	void			CalcForceDelta( int d, float dir );
	void			CalcAccelDelta( int d );
	void			ChangeForce( int d, float step );
	void			ChangeAccel( int d, float step );
	void			GetMaxStep( int d, float dir, float &maxStep, int &limit, int &limitSide ) const;
};

/*
============
idLCP_Symmetric::FactorClamped
============
*/
bool idLCP_Symmetric::FactorClamped( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idLCP_Symmetric::FactorClamped( void )\r\n");
    return retVal;
}


/*
============
idLCP_Symmetric::SolveClamped
============
*/
void idLCP_Symmetric::SolveClamped( idVecX &x, const float *b ) {
    Sys_Printf("void idLCP_Symmetric::SolveClamped( idVecX &x, const float *b )\r\n");
}


/*
============
idLCP_Symmetric::Swap
============
*/
void idLCP_Symmetric::Swap( int i, int j ) {
    Sys_Printf("void idLCP_Symmetric::Swap( int i, int j )\r\n");
}


/*
============
idLCP_Symmetric::AddClamped
============
*/
void idLCP_Symmetric::AddClamped( int r, bool useSolveCache ) {
    Sys_Printf("void idLCP_Symmetric::AddClamped( int r, bool useSolveCache )\r\n");
}


/*
============
idLCP_Symmetric::RemoveClamped
============
*/
void idLCP_Symmetric::RemoveClamped( int r ) {
    Sys_Printf("void idLCP_Symmetric::RemoveClamped( int r )\r\n");
}


/*
============
idLCP_Symmetric::CalcForceDelta

  modifies this->delta_f
============
*/
ID_INLINE void idLCP_Symmetric::CalcForceDelta( int d, float dir ) {
    Sys_Printf("void idLCP_Symmetric::CalcForceDelta( int d, float dir )\r\n");
}


/*
============
idLCP_Symmetric::CalcAccelDelta

  modifies this->delta_a and uses this->delta_f
============
*/
ID_INLINE void idLCP_Symmetric::CalcAccelDelta( int d ) {
    Sys_Printf("void idLCP_Symmetric::CalcAccelDelta( int d )\r\n");
}


/*
============
idLCP_Symmetric::ChangeForce

  modifies this->f and uses this->delta_f
============
*/
ID_INLINE void idLCP_Symmetric::ChangeForce( int d, float step ) {
    Sys_Printf("void idLCP_Symmetric::ChangeForce( int d, float step )\r\n");
}


/*
============
idLCP_Symmetric::ChangeAccel

  modifies this->a and uses this->delta_a
============
*/
ID_INLINE void idLCP_Symmetric::ChangeAccel( int d, float step ) {
    Sys_Printf("void idLCP_Symmetric::ChangeAccel( int d, float step )\r\n");
}


/*
============
idLCP_Symmetric::GetMaxStep
============
*/
void idLCP_Symmetric::GetMaxStep( int d, float dir, float &maxStep, int &limit, int &limitSide ) const {
    Sys_Printf("void idLCP_Symmetric::GetMaxStep( int d, float dir, float &maxStep, int &limit, int &limitSide )\r\n");
}


/*
============
idLCP_Symmetric::Solve
============
*/
bool idLCP_Symmetric::Solve( const idMatX &o_m, idVecX &o_x, const idVecX &o_b, const idVecX &o_lo, const idVecX &o_hi, const int *o_boxIndex ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idLCP_Symmetric::Solve( const idMatX &o_m, idVecX &o_x, const idVecX &o_b, const idVecX &o_lo, const idVecX &o_hi, const int *o_boxIndex )\r\n");
    return retVal;
}



//===============================================================
//
//	idLCP
//
//===============================================================

/*
============
idLCP::AllocSquare
============
*/
idLCP *idLCP::AllocSquare( void ) {
    Sys_Printf("idLCP *idLCP::AllocSquare( void )\r\n");
    return NULL;
}


/*
============
idLCP::AllocSymmetric
============
*/
idLCP *idLCP::AllocSymmetric( void ) {
    Sys_Printf("idLCP *idLCP::AllocSymmetric( void )\r\n");
    return NULL;
}


/*
============
idLCP::~idLCP
============
*/
idLCP::~idLCP( void ) {
}

/*
============
idLCP::SetMaxIterations
============
*/
void idLCP::SetMaxIterations( int max ) {
    Sys_Printf("void idLCP::SetMaxIterations( int max )\r\n");
}


/*
============
idLCP::GetMaxIterations
============
*/
int idLCP::GetMaxIterations( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idLCP::GetMaxIterations( void )\r\n");
    return retVal;
}

