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
//	idMat2
//
//===============================================================

idMat2 mat2_zero( idVec2( 0, 0 ), idVec2( 0, 0 ) );
idMat2 mat2_identity( idVec2( 1, 0 ), idVec2( 0, 1 ) );

/*
============
idMat2::InverseSelf
============
*/
bool idMat2::InverseSelf( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMat2::InverseSelf( void )\r\n");
    return retVal;
}


/*
============
idMat2::InverseFastSelf
============
*/
bool idMat2::InverseFastSelf( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMat2::InverseFastSelf( void )\r\n");
    return retVal;
}


/*
=============
idMat2::ToString
=============
*/
const char *idMat2::ToString( int precision ) const {
    Sys_Printf("char *idMat2::ToString( int precision )\r\n");
    return NULL;
}



//===============================================================
//
//	idMat3
//
//===============================================================

idMat3 mat3_zero( idVec3( 0, 0, 0 ), idVec3( 0, 0, 0 ), idVec3( 0, 0, 0 ) );
idMat3 mat3_identity( idVec3( 1, 0, 0 ), idVec3( 0, 1, 0 ), idVec3( 0, 0, 1 ) );

/*
============
idMat3::ToAngles
============
*/
idAngles idMat3::ToAngles( void ) const {
    idAngles retVal;
    memset(&retVal, 0, sizeof(idAngles));
    Sys_Printf("idAngles idMat3::ToAngles( void )\r\n");
    return retVal;
}


/*
============
idMat3::ToQuat
============
*/
idQuat idMat3::ToQuat( void ) const {
    idQuat retVal;
    memset(&retVal, 0, sizeof(idQuat));
    Sys_Printf("idQuat idMat3::ToQuat( void )\r\n");
    return retVal;
}


/*
============
idMat3::ToCQuat
============
*/
idCQuat idMat3::ToCQuat( void ) const {
    idCQuat retVal;
    memset(&retVal, 0, sizeof(idCQuat));
    Sys_Printf("idCQuat idMat3::ToCQuat( void )\r\n");
    return retVal;
}


/*
============
idMat3::ToRotation
============
*/
idRotation idMat3::ToRotation( void ) const {
    idRotation retVal;
    memset(&retVal, 0, sizeof(idRotation));
    Sys_Printf("idRotation idMat3::ToRotation( void )\r\n");
    return retVal;
}


/*
=================
idMat3::ToAngularVelocity
=================
*/
idVec3 idMat3::ToAngularVelocity( void ) const {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idMat3::ToAngularVelocity( void )\r\n");
    return retVal;
}


/*
============
idMat3::Determinant
============
*/
float idMat3::Determinant( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idMat3::Determinant( void )\r\n");
    return retVal;
}


/*
============
idMat3::InverseSelf
============
*/
bool idMat3::InverseSelf( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMat3::InverseSelf( void )\r\n");
    return retVal;
}


/*
============
idMat3::InverseFastSelf
============
*/
bool idMat3::InverseFastSelf( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMat3::InverseFastSelf( void )\r\n");
    return retVal;
}


/*
============
idMat3::InertiaTranslate
============
*/
idMat3 idMat3::InertiaTranslate( const float mass, const idVec3 &centerOfMass, const idVec3 &translation ) const {
    idMat3 retVal;
    memset(&retVal, 0, sizeof(idMat3));
    Sys_Printf("idMat3 idMat3::InertiaTranslate( const float mass, const idVec3 &centerOfMass, const idVec3 &translation )\r\n");
    return retVal;
}


/*
============
idMat3::InertiaTranslateSelf
============
*/
idMat3 &idMat3::InertiaTranslateSelf( const float mass, const idVec3 &centerOfMass, const idVec3 &translation ) {
	idMat3 m;
	idVec3 newCenter;

	newCenter = centerOfMass + translation;

	m[0][0] = mass * ( ( centerOfMass[1] * centerOfMass[1] + centerOfMass[2] * centerOfMass[2] )
				- ( newCenter[1] * newCenter[1] + newCenter[2] * newCenter[2] ) );
	m[1][1] = mass * ( ( centerOfMass[0] * centerOfMass[0] + centerOfMass[2] * centerOfMass[2] )
				- ( newCenter[0] * newCenter[0] + newCenter[2] * newCenter[2] ) );
	m[2][2] = mass * ( ( centerOfMass[0] * centerOfMass[0] + centerOfMass[1] * centerOfMass[1] )
				- ( newCenter[0] * newCenter[0] + newCenter[1] * newCenter[1] ) );

	m[0][1] = m[1][0] = mass * ( newCenter[0] * newCenter[1] - centerOfMass[0] * centerOfMass[1] );
	m[1][2] = m[2][1] = mass * ( newCenter[1] * newCenter[2] - centerOfMass[1] * centerOfMass[2] );
	m[0][2] = m[2][0] = mass * ( newCenter[0] * newCenter[2] - centerOfMass[0] * centerOfMass[2] );

	(*this) += m;

	return (*this);
}

/*
============
idMat3::InertiaRotate
============
*/
idMat3 idMat3::InertiaRotate( const idMat3 &rotation ) const {
    idMat3 retVal;
    memset(&retVal, 0, sizeof(idMat3));
    Sys_Printf("idMat3 idMat3::InertiaRotate( const idMat3 &rotation )\r\n");
    return retVal;
}


/*
============
idMat3::InertiaRotateSelf
============
*/
idMat3 &idMat3::InertiaRotateSelf( const idMat3 &rotation ) {
	// NOTE: the rotation matrix is stored column-major
	*this = rotation.Transpose() * (*this) * rotation;
	return *this;
}

/*
=============
idMat3::ToString
=============
*/
const char *idMat3::ToString( int precision ) const {
    Sys_Printf("char *idMat3::ToString( int precision )\r\n");
    return NULL;
}



//===============================================================
//
//	idMat4
//
//===============================================================

idMat4 mat4_zero( idVec4( 0, 0, 0, 0 ), idVec4( 0, 0, 0, 0 ), idVec4( 0, 0, 0, 0 ), idVec4( 0, 0, 0, 0 ) );
idMat4 mat4_identity( idVec4( 1, 0, 0, 0 ), idVec4( 0, 1, 0, 0 ), idVec4( 0, 0, 1, 0 ), idVec4( 0, 0, 0, 1 ) );

/*
============
idMat4::Transpose
============
*/
idMat4 idMat4::Transpose( void ) const {
    idMat4 retVal;
    memset(&retVal, 0, sizeof(idMat4));
    Sys_Printf("idMat4 idMat4::Transpose( void )\r\n");
    return retVal;
}


/*
============
idMat4::TransposeSelf
============
*/
idMat4 &idMat4::TransposeSelf( void ) {
	float	temp;
	int		i, j;
   
	for( i = 0; i < 4; i++ ) {
		for( j = i + 1; j < 4; j++ ) {
			temp = mat[ i ][ j ];
			mat[ i ][ j ] = mat[ j ][ i ];
			mat[ j ][ i ] = temp;
        }
	}
	return *this;
}

/*
============
idMat4::Determinant
============
*/
float idMat4::Determinant( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idMat4::Determinant( void )\r\n");
    return retVal;
}


/*
============
idMat4::InverseSelf
============
*/
bool idMat4::InverseSelf( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMat4::InverseSelf( void )\r\n");
    return retVal;
}


/*
============
idMat4::InverseFastSelf
============
*/
bool idMat4::InverseFastSelf( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMat4::InverseFastSelf( void )\r\n");
    return retVal;
}


/*
=============
idMat4::ToString
=============
*/
const char *idMat4::ToString( int precision ) const {
    Sys_Printf("char *idMat4::ToString( int precision )\r\n");
    return NULL;
}



//===============================================================
//
//	idMat5
//
//===============================================================

idMat5 mat5_zero( idVec5( 0, 0, 0, 0, 0 ), idVec5( 0, 0, 0, 0, 0 ), idVec5( 0, 0, 0, 0, 0 ), idVec5( 0, 0, 0, 0, 0 ), idVec5( 0, 0, 0, 0, 0 ) );
idMat5 mat5_identity( idVec5( 1, 0, 0, 0, 0 ), idVec5( 0, 1, 0, 0, 0 ), idVec5( 0, 0, 1, 0, 0 ), idVec5( 0, 0, 0, 1, 0 ), idVec5( 0, 0, 0, 0, 1 ) );

/*
============
idMat5::Transpose
============
*/
idMat5 idMat5::Transpose( void ) const {
    idMat5 retVal;
    memset(&retVal, 0, sizeof(idMat5));
    Sys_Printf("idMat5 idMat5::Transpose( void )\r\n");
    return retVal;
}


/*
============
idMat5::TransposeSelf
============
*/
idMat5 &idMat5::TransposeSelf( void ) {
	float	temp;
	int		i, j;
   
	for( i = 0; i < 5; i++ ) {
		for( j = i + 1; j < 5; j++ ) {
			temp = mat[ i ][ j ];
			mat[ i ][ j ] = mat[ j ][ i ];
			mat[ j ][ i ] = temp;
        }
	}
	return *this;
}

/*
============
idMat5::Determinant
============
*/
float idMat5::Determinant( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idMat5::Determinant( void )\r\n");
    return retVal;
}


/*
============
idMat5::InverseSelf
============
*/
bool idMat5::InverseSelf( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMat5::InverseSelf( void )\r\n");
    return retVal;
}


/*
============
idMat5::InverseFastSelf
============
*/
bool idMat5::InverseFastSelf( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMat5::InverseFastSelf( void )\r\n");
    return retVal;
}


/*
=============
idMat5::ToString
=============
*/
const char *idMat5::ToString( int precision ) const {
    Sys_Printf("char *idMat5::ToString( int precision )\r\n");
    return NULL;
}



//===============================================================
//
//	idMat6
//
//===============================================================

idMat6 mat6_zero( idVec6( 0, 0, 0, 0, 0, 0 ), idVec6( 0, 0, 0, 0, 0, 0 ), idVec6( 0, 0, 0, 0, 0, 0 ), idVec6( 0, 0, 0, 0, 0, 0 ), idVec6( 0, 0, 0, 0, 0, 0 ), idVec6( 0, 0, 0, 0, 0, 0 ) );
idMat6 mat6_identity( idVec6( 1, 0, 0, 0, 0, 0 ), idVec6( 0, 1, 0, 0, 0, 0 ), idVec6( 0, 0, 1, 0, 0, 0 ), idVec6( 0, 0, 0, 1, 0, 0 ), idVec6( 0, 0, 0, 0, 1, 0 ), idVec6( 0, 0, 0, 0, 0, 1 ) );

/*
============
idMat6::Transpose
============
*/
idMat6 idMat6::Transpose( void ) const {
    idMat6 retVal;
    memset(&retVal, 0, sizeof(idMat6));
    Sys_Printf("idMat6 idMat6::Transpose( void )\r\n");
    return retVal;
}


/*
============
idMat6::TransposeSelf
============
*/
idMat6 &idMat6::TransposeSelf( void ) {
	float	temp;
	int		i, j;
   
	for( i = 0; i < 6; i++ ) {
		for( j = i + 1; j < 6; j++ ) {
			temp = mat[ i ][ j ];
			mat[ i ][ j ] = mat[ j ][ i ];
			mat[ j ][ i ] = temp;
        }
	}
	return *this;
}

/*
============
idMat6::Determinant
============
*/
float idMat6::Determinant( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idMat6::Determinant( void )\r\n");
    return retVal;
}


/*
============
idMat6::InverseSelf
============
*/
bool idMat6::InverseSelf( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMat6::InverseSelf( void )\r\n");
    return retVal;
}


/*
============
idMat6::InverseFastSelf
============
*/
bool idMat6::InverseFastSelf( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMat6::InverseFastSelf( void )\r\n");
    return retVal;
}


/*
=============
idMat6::ToString
=============
*/
const char *idMat6::ToString( int precision ) const {
    Sys_Printf("char *idMat6::ToString( int precision )\r\n");
    return NULL;
}



//===============================================================
//
//  idMatX
//
//===============================================================

float	idMatX::temp[MATX_MAX_TEMP+4];
float *	idMatX::tempPtr = (float *) ( ( (int) idMatX::temp + 15 ) & ~15 );
int		idMatX::tempIndex = 0;


/*
============
idMatX::ChangeSize
============
*/
void idMatX::ChangeSize( int rows, int columns, bool makeZero ) {
    Sys_Printf("void idMatX::ChangeSize( int rows, int columns, bool makeZero )\r\n");
}


/*
============
idMatX::RemoveRow
============
*/
idMatX &idMatX::RemoveRow( int r ) {
	int i;

	assert( r < numRows );

	numRows--;

	for ( i = r; i < numRows; i++ ) {
		memcpy( &mat[i * numColumns], &mat[( i + 1 ) * numColumns], numColumns * sizeof( float ) );
	}

	return *this;
}

/*
============
idMatX::RemoveColumn
============
*/
idMatX &idMatX::RemoveColumn( int r ) {
	int i;

	assert( r < numColumns );

	numColumns--;

	for ( i = 0; i < numRows - 1; i++ ) {
		memmove( &mat[i * numColumns + r], &mat[i * ( numColumns + 1 ) + r + 1], numColumns * sizeof( float ) );
	}
	memmove( &mat[i * numColumns + r], &mat[i * ( numColumns + 1 ) + r + 1], ( numColumns - r ) * sizeof( float ) );

	return *this;
}

/*
============
idMatX::RemoveRowColumn
============
*/
idMatX &idMatX::RemoveRowColumn( int r ) {
	int i;

	assert( r < numRows && r < numColumns );

	numRows--;
	numColumns--;

	if ( r > 0 ) {
		for ( i = 0; i < r - 1; i++ ) {
			memmove( &mat[i * numColumns + r], &mat[i * ( numColumns + 1 ) + r + 1], numColumns * sizeof( float ) );
		}
		memmove( &mat[i * numColumns + r], &mat[i * ( numColumns + 1 ) + r + 1], ( numColumns - r ) * sizeof( float ) );
	}

	memcpy( &mat[r * numColumns], &mat[( r + 1 ) * ( numColumns + 1 )], r * sizeof( float ) );

	for ( i = r; i < numRows - 1; i++ ) {
		memcpy( &mat[i * numColumns + r], &mat[( i + 1 ) * ( numColumns + 1 ) + r + 1], numColumns * sizeof( float ) );
	}
	memcpy( &mat[i * numColumns + r], &mat[( i + 1 ) * ( numColumns + 1 ) + r + 1], ( numColumns - r ) * sizeof( float ) );

	return *this;
}

/*
============
idMatX::IsOrthogonal

  returns true if (*this) * this->Transpose() == Identity
============
*/
bool idMatX::IsOrthogonal( const float epsilon ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::IsOrthogonal( const float epsilon )\r\n");
    return retVal;
}


/*
============
idMatX::IsOrthonormal

  returns true if (*this) * this->Transpose() == Identity and the length of each column vector is 1
============
*/
bool idMatX::IsOrthonormal( const float epsilon ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::IsOrthonormal( const float epsilon )\r\n");
    return retVal;
}


/*
============
idMatX::IsPMatrix

  returns true if the matrix is a P-matrix
  A square matrix is a P-matrix if all its principal minors are positive.
============
*/
bool idMatX::IsPMatrix( const float epsilon ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::IsPMatrix( const float epsilon )\r\n");
    return retVal;
}


/*
============
idMatX::IsZMatrix

  returns true if the matrix is a Z-matrix
  A square matrix M is a Z-matrix if M[i][j] <= 0 for all i != j.
============
*/
bool idMatX::IsZMatrix( const float epsilon ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::IsZMatrix( const float epsilon )\r\n");
    return retVal;
}


/*
============
idMatX::IsPositiveDefinite

  returns true if the matrix is Positive Definite (PD)
  A square matrix M of order n is said to be PD if y'My > 0 for all vectors y of dimension n, y != 0.
============
*/
bool idMatX::IsPositiveDefinite( const float epsilon ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::IsPositiveDefinite( const float epsilon )\r\n");
    return retVal;
}


/*
============
idMatX::IsSymmetricPositiveDefinite

  returns true if the matrix is Symmetric Positive Definite (PD)
============
*/
bool idMatX::IsSymmetricPositiveDefinite( const float epsilon ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::IsSymmetricPositiveDefinite( const float epsilon )\r\n");
    return retVal;
}


/*
============
idMatX::IsPositiveSemiDefinite

  returns true if the matrix is Positive Semi Definite (PSD)
  A square matrix M of order n is said to be PSD if y'My >= 0 for all vectors y of dimension n, y != 0.
============
*/
bool idMatX::IsPositiveSemiDefinite( const float epsilon ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::IsPositiveSemiDefinite( const float epsilon )\r\n");
    return retVal;
}


/*
============
idMatX::IsSymmetricPositiveSemiDefinite

  returns true if the matrix is Symmetric Positive Semi Definite (PSD)
============
*/
bool idMatX::IsSymmetricPositiveSemiDefinite( const float epsilon ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::IsSymmetricPositiveSemiDefinite( const float epsilon )\r\n");
    return retVal;
}


/*
============
idMatX::LowerTriangularInverse

  in-place inversion of the lower triangular matrix
============
*/
bool idMatX::LowerTriangularInverse( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::LowerTriangularInverse( void )\r\n");
    return retVal;
}


/*
============
idMatX::UpperTriangularInverse

  in-place inversion of the upper triangular matrix
============
*/
bool idMatX::UpperTriangularInverse( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::UpperTriangularInverse( void )\r\n");
    return retVal;
}


/*
=============
idMatX::ToString
=============
*/
const char *idMatX::ToString( int precision ) const {
    Sys_Printf("char *idMatX::ToString( int precision )\r\n");
    return NULL;
}


/*
============
idMatX::Update_RankOne

  Updates the matrix to obtain the matrix: A + alpha * v * w'
============
*/
void idMatX::Update_RankOne( const idVecX &v, const idVecX &w, float alpha ) {
    Sys_Printf("void idMatX::Update_RankOne( const idVecX &v, const idVecX &w, float alpha )\r\n");
}


/*
============
idMatX::Update_RankOneSymmetric

  Updates the matrix to obtain the matrix: A + alpha * v * v'
============
*/
void idMatX::Update_RankOneSymmetric( const idVecX &v, float alpha ) {
    Sys_Printf("void idMatX::Update_RankOneSymmetric( const idVecX &v, float alpha )\r\n");
}


/*
============
idMatX::Update_RowColumn

  Updates the matrix to obtain the matrix:

      [ 0  a  0 ]
  A + [ d  b  e ]
      [ 0  c  0 ]

  where: a = v[0,r-1], b = v[r], c = v[r+1,numRows-1], d = w[0,r-1], w[r] = 0.0f, e = w[r+1,numColumns-1]
============
*/
void idMatX::Update_RowColumn( const idVecX &v, const idVecX &w, int r ) {
    Sys_Printf("void idMatX::Update_RowColumn( const idVecX &v, const idVecX &w, int r )\r\n");
}


/*
============
idMatX::Update_RowColumnSymmetric

  Updates the matrix to obtain the matrix:

      [ 0  a  0 ]
  A + [ a  b  c ]
      [ 0  c  0 ]

  where: a = v[0,r-1], b = v[r], c = v[r+1,numRows-1]
============
*/
void idMatX::Update_RowColumnSymmetric( const idVecX &v, int r ) {
    Sys_Printf("void idMatX::Update_RowColumnSymmetric( const idVecX &v, int r )\r\n");
}


/*
============
idMatX::Update_Increment

  Updates the matrix to obtain the matrix:

  [ A  a ]
  [ c  b ]

  where: a = v[0,numRows-1], b = v[numRows], c = w[0,numColumns-1]], w[numColumns] = 0
============
*/
void idMatX::Update_Increment( const idVecX &v, const idVecX &w ) {
    Sys_Printf("void idMatX::Update_Increment( const idVecX &v, const idVecX &w )\r\n");
}


/*
============
idMatX::Update_IncrementSymmetric

  Updates the matrix to obtain the matrix:

  [ A  a ]
  [ a  b ]

  where: a = v[0,numRows-1], b = v[numRows]
============
*/
void idMatX::Update_IncrementSymmetric( const idVecX &v ) {
    Sys_Printf("void idMatX::Update_IncrementSymmetric( const idVecX &v )\r\n");
}


/*
============
idMatX::Update_Decrement

  Updates the matrix to obtain a matrix with row r and column r removed.
============
*/
void idMatX::Update_Decrement( int r ) {
    Sys_Printf("void idMatX::Update_Decrement( int r )\r\n");
}


/*
============
idMatX::Inverse_GaussJordan

  in-place inversion using Gauss-Jordan elimination
============
*/
bool idMatX::Inverse_GaussJordan( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::Inverse_GaussJordan( void )\r\n");
    return retVal;
}


/*
============
idMatX::Inverse_UpdateRankOne

  Updates the in-place inverse using the Sherman-Morrison formula to obtain the inverse for the matrix: A + alpha * v * w'
============
*/
bool idMatX::Inverse_UpdateRankOne( const idVecX &v, const idVecX &w, float alpha ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::Inverse_UpdateRankOne( const idVecX &v, const idVecX &w, float alpha )\r\n");
    return retVal;
}


/*
============
idMatX::Inverse_UpdateRowColumn

  Updates the in-place inverse to obtain the inverse for the matrix:

      [ 0  a  0 ]
  A + [ d  b  e ]
      [ 0  c  0 ]

  where: a = v[0,r-1], b = v[r], c = v[r+1,numRows-1], d = w[0,r-1], w[r] = 0.0f, e = w[r+1,numColumns-1]
============
*/
bool idMatX::Inverse_UpdateRowColumn( const idVecX &v, const idVecX &w, int r ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::Inverse_UpdateRowColumn( const idVecX &v, const idVecX &w, int r )\r\n");
    return retVal;
}


/*
============
idMatX::Inverse_UpdateIncrement

  Updates the in-place inverse to obtain the inverse for the matrix:

  [ A  a ]
  [ c  b ]

  where: a = v[0,numRows-1], b = v[numRows], c = w[0,numColumns-1], w[numColumns] = 0
============
*/
bool idMatX::Inverse_UpdateIncrement( const idVecX &v, const idVecX &w ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::Inverse_UpdateIncrement( const idVecX &v, const idVecX &w )\r\n");
    return retVal;
}


/*
============
idMatX::Inverse_UpdateDecrement

  Updates the in-place inverse to obtain the inverse of the matrix with row r and column r removed.
  v and w should store the column and row of the original matrix respectively.
============
*/
bool idMatX::Inverse_UpdateDecrement( const idVecX &v, const idVecX &w, int r ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::Inverse_UpdateDecrement( const idVecX &v, const idVecX &w, int r )\r\n");
    return retVal;
}


/*
============
idMatX::Inverse_Solve

  Solve Ax = b with A inverted
============
*/
void idMatX::Inverse_Solve( idVecX &x, const idVecX &b ) const {
    Sys_Printf("void idMatX::Inverse_Solve( idVecX &x, const idVecX &b )\r\n");
}


/*
============
idMatX::LU_Factor

  in-place factorization: LU
  L is a triangular matrix stored in the lower triangle.
  L has ones on the diagonal that are not stored.
  U is a triangular matrix stored in the upper triangle.
  If index != NULL partial pivoting is used for numerical stability.
  If index != NULL it must point to an array of numRow integers and is used to keep track of the row permutation.
  If det != NULL the determinant of the matrix is calculated and stored.
============
*/
bool idMatX::LU_Factor( int *index, float *det ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::LU_Factor( int *index, float *det )\r\n");
    return retVal;
}
   

/*
============
idMatX::LU_UpdateRankOne

  Updates the in-place LU factorization to obtain the factors for the matrix: LU + alpha * v * w'
============
*/
bool idMatX::LU_UpdateRankOne( const idVecX &v, const idVecX &w, float alpha, int *index ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::LU_UpdateRankOne( const idVecX &v, const idVecX &w, float alpha, int *index )\r\n");
    return retVal;
}


/*
============
idMatX::LU_UpdateRowColumn

  Updates the in-place LU factorization to obtain the factors for the matrix:

       [ 0  a  0 ]
  LU + [ d  b  e ]
       [ 0  c  0 ]

  where: a = v[0,r-1], b = v[r], c = v[r+1,numRows-1], d = w[0,r-1], w[r] = 0.0f, e = w[r+1,numColumns-1]
============
*/
bool idMatX::LU_UpdateRowColumn( const idVecX &v, const idVecX &w, int r, int *index ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::LU_UpdateRowColumn( const idVecX &v, const idVecX &w, int r, int *index )\r\n");
    return retVal;
}


/*
============
idMatX::LU_UpdateIncrement

  Updates the in-place LU factorization to obtain the factors for the matrix:

  [ A  a ]
  [ c  b ]

  where: a = v[0,numRows-1], b = v[numRows], c = w[0,numColumns-1], w[numColumns] = 0
============
*/
bool idMatX::LU_UpdateIncrement( const idVecX &v, const idVecX &w, int *index ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::LU_UpdateIncrement( const idVecX &v, const idVecX &w, int *index )\r\n");
    return retVal;
}


/*
============
idMatX::LU_UpdateDecrement

  Updates the in-place LU factorization to obtain the factors for the matrix with row r and column r removed.
  v and w should store the column and row of the original matrix respectively.
  If index != NULL then u should store row index[r] of the original matrix. If index == NULL then u = w.
============
*/
bool idMatX::LU_UpdateDecrement( const idVecX &v, const idVecX &w, const idVecX &u, int r, int *index ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::LU_UpdateDecrement( const idVecX &v, const idVecX &w, const idVecX &u, int r, int *index )\r\n");
    return retVal;
}


/*
============
idMatX::LU_Solve

  Solve Ax = b with A factored in-place as: LU
============
*/
void idMatX::LU_Solve( idVecX &x, const idVecX &b, const int *index ) const {
    Sys_Printf("void idMatX::LU_Solve( idVecX &x, const idVecX &b, const int *index )\r\n");
}


/*
============
idMatX::LU_Inverse

  Calculates the inverse of the matrix which is factored in-place as LU
============
*/
void idMatX::LU_Inverse( idMatX &inv, const int *index ) const {
    Sys_Printf("void idMatX::LU_Inverse( idMatX &inv, const int *index )\r\n");
}


/*
============
idMatX::LU_UnpackFactors

  Unpacks the in-place LU factorization.
============
*/
void idMatX::LU_UnpackFactors( idMatX &L, idMatX &U ) const {
    Sys_Printf("void idMatX::LU_UnpackFactors( idMatX &L, idMatX &U )\r\n");
}


/*
============
idMatX::LU_MultiplyFactors

  Multiplies the factors of the in-place LU factorization to form the original matrix.
============
*/
void idMatX::LU_MultiplyFactors( idMatX &m, const int *index ) const {
    Sys_Printf("void idMatX::LU_MultiplyFactors( idMatX &m, const int *index )\r\n");
}


/*
============
idMatX::QR_Factor

  in-place factorization: QR
  Q is an orthogonal matrix represented as a product of Householder matrices stored in the lower triangle and c.
  R is a triangular matrix stored in the upper triangle except for the diagonal elements which are stored in d.
  The initial matrix has to be square.
============
*/
bool idMatX::QR_Factor( idVecX &c, idVecX &d ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::QR_Factor( idVecX &c, idVecX &d )\r\n");
    return retVal;
}


/*
============
idMatX::QR_Rotate

  Performs a Jacobi rotation on the rows i and i+1 of the unpacked QR factors.
============
*/
void idMatX::QR_Rotate( idMatX &R, int i, float a, float b ) {
    Sys_Printf("void idMatX::QR_Rotate( idMatX &R, int i, float a, float b )\r\n");
}


/*
============
idMatX::QR_UpdateRankOne

  Updates the unpacked QR factorization to obtain the factors for the matrix: QR + alpha * v * w'
============
*/
bool idMatX::QR_UpdateRankOne( idMatX &R, const idVecX &v, const idVecX &w, float alpha ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::QR_UpdateRankOne( idMatX &R, const idVecX &v, const idVecX &w, float alpha )\r\n");
    return retVal;
}


/*
============
idMatX::QR_UpdateRowColumn

  Updates the unpacked QR factorization to obtain the factors for the matrix:

       [ 0  a  0 ]
  QR + [ d  b  e ]
       [ 0  c  0 ]

  where: a = v[0,r-1], b = v[r], c = v[r+1,numRows-1], d = w[0,r-1], w[r] = 0.0f, e = w[r+1,numColumns-1]
============
*/
bool idMatX::QR_UpdateRowColumn( idMatX &R, const idVecX &v, const idVecX &w, int r ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::QR_UpdateRowColumn( idMatX &R, const idVecX &v, const idVecX &w, int r )\r\n");
    return retVal;
}


/*
============
idMatX::QR_UpdateIncrement

  Updates the unpacked QR factorization to obtain the factors for the matrix:

  [ A  a ]
  [ c  b ]

  where: a = v[0,numRows-1], b = v[numRows], c = w[0,numColumns-1], w[numColumns] = 0
============
*/
bool idMatX::QR_UpdateIncrement( idMatX &R, const idVecX &v, const idVecX &w ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::QR_UpdateIncrement( idMatX &R, const idVecX &v, const idVecX &w )\r\n");
    return retVal;
}


/*
============
idMatX::QR_UpdateDecrement

  Updates the unpacked QR factorization to obtain the factors for the matrix with row r and column r removed.
  v and w should store the column and row of the original matrix respectively.
============
*/
bool idMatX::QR_UpdateDecrement( idMatX &R, const idVecX &v, const idVecX &w, int r ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::QR_UpdateDecrement( idMatX &R, const idVecX &v, const idVecX &w, int r )\r\n");
    return retVal;
}


/*
============
idMatX::QR_Solve

  Solve Ax = b with A factored in-place as: QR
============
*/
void idMatX::QR_Solve( idVecX &x, const idVecX &b, const idVecX &c, const idVecX &d ) const {
    Sys_Printf("void idMatX::QR_Solve( idVecX &x, const idVecX &b, const idVecX &c, const idVecX &d )\r\n");
}


/*
============
idMatX::QR_Solve

  Solve Ax = b with A factored as: QR
============
*/
void idMatX::QR_Solve( idVecX &x, const idVecX &b, const idMatX &R ) const {
    Sys_Printf("void idMatX::QR_Solve( idVecX &x, const idVecX &b, const idMatX &R )\r\n");
}


/*
============
idMatX::QR_Inverse

  Calculates the inverse of the matrix which is factored in-place as: QR
============
*/
void idMatX::QR_Inverse( idMatX &inv, const idVecX &c, const idVecX &d ) const {
    Sys_Printf("void idMatX::QR_Inverse( idMatX &inv, const idVecX &c, const idVecX &d )\r\n");
}


/*
============
idMatX::QR_UnpackFactors

  Unpacks the in-place QR factorization.
============
*/
void idMatX::QR_UnpackFactors( idMatX &Q, idMatX &R, const idVecX &c, const idVecX &d ) const {
    Sys_Printf("void idMatX::QR_UnpackFactors( idMatX &Q, idMatX &R, const idVecX &c, const idVecX &d )\r\n");
}


/*
============
idMatX::QR_MultiplyFactors

  Multiplies the factors of the in-place QR factorization to form the original matrix.
============
*/
void idMatX::QR_MultiplyFactors( idMatX &m, const idVecX &c, const idVecX &d ) const {
    Sys_Printf("void idMatX::QR_MultiplyFactors( idMatX &m, const idVecX &c, const idVecX &d )\r\n");
}


/*
============
idMatX::Pythag

  Computes (a^2 + b^2)^1/2 without underflow or overflow.
============
*/
float idMatX::Pythag( float a, float b ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idMatX::Pythag( float a, float b )\r\n");
    return retVal;
}


/*
============
idMatX::SVD_BiDiag
============
*/
void idMatX::SVD_BiDiag( idVecX &w, idVecX &rv1, float &anorm ) {
    Sys_Printf("void idMatX::SVD_BiDiag( idVecX &w, idVecX &rv1, float &anorm )\r\n");
}


/*
============
idMatX::SVD_InitialWV
============
*/
void idMatX::SVD_InitialWV( idVecX &w, idMatX &V, idVecX &rv1 ) {
    Sys_Printf("void idMatX::SVD_InitialWV( idVecX &w, idMatX &V, idVecX &rv1 )\r\n");
}


/*
============
idMatX::SVD_Factor

  in-place factorization: U * Diag(w) * V.Transpose()
  known as the Singular Value Decomposition.
  U is a column-orthogonal matrix which overwrites the original matrix.
  w is a diagonal matrix with all elements >= 0 which are the singular values.
  V is the transpose of an orthogonal matrix.
============
*/
bool idMatX::SVD_Factor( idVecX &w, idMatX &V ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::SVD_Factor( idVecX &w, idMatX &V )\r\n");
    return retVal;
}


/*
============
idMatX::SVD_Solve

  Solve Ax = b with A factored as: U * Diag(w) * V.Transpose()
============
*/
void idMatX::SVD_Solve( idVecX &x, const idVecX &b, const idVecX &w, const idMatX &V ) const {
    Sys_Printf("void idMatX::SVD_Solve( idVecX &x, const idVecX &b, const idVecX &w, const idMatX &V )\r\n");
}


/*
============
idMatX::SVD_Inverse

  Calculates the inverse of the matrix which is factored in-place as: U * Diag(w) * V.Transpose()
============
*/
void idMatX::SVD_Inverse( idMatX &inv, const idVecX &w, const idMatX &V ) const {
    Sys_Printf("void idMatX::SVD_Inverse( idMatX &inv, const idVecX &w, const idMatX &V )\r\n");
}


/*
============
idMatX::SVD_MultiplyFactors

  Multiplies the factors of the in-place SVD factorization to form the original matrix.
============
*/
void idMatX::SVD_MultiplyFactors( idMatX &m, const idVecX &w, const idMatX &V ) const {
    Sys_Printf("void idMatX::SVD_MultiplyFactors( idMatX &m, const idVecX &w, const idMatX &V )\r\n");
}


/*
============
idMatX::Cholesky_Factor

  in-place Cholesky factorization: LL'
  L is a triangular matrix stored in the lower triangle.
  The upper triangle is not cleared.
  The initial matrix has to be symmetric positive definite.
============
*/
bool idMatX::Cholesky_Factor( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::Cholesky_Factor( void )\r\n");
    return retVal;
}


/*
============
idMatX::Cholesky_UpdateRankOne

  Updates the in-place Cholesky factorization to obtain the factors for the matrix: LL' + alpha * v * v'
  If offset > 0 only the lower right corner starting at (offset, offset) is updated.
============
*/
bool idMatX::Cholesky_UpdateRankOne( const idVecX &v, float alpha, int offset ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::Cholesky_UpdateRankOne( const idVecX &v, float alpha, int offset )\r\n");
    return retVal;
}


/*
============
idMatX::Cholesky_UpdateRowColumn

  Updates the in-place Cholesky factorization to obtain the factors for the matrix:

        [ 0  a  0 ]
  LL' + [ a  b  c ]
        [ 0  c  0 ]

  where: a = v[0,r-1], b = v[r], c = v[r+1,numRows-1]
============
*/
bool idMatX::Cholesky_UpdateRowColumn( const idVecX &v, int r ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::Cholesky_UpdateRowColumn( const idVecX &v, int r )\r\n");
    return retVal;
}


/*
============
idMatX::Cholesky_UpdateIncrement

  Updates the in-place Cholesky factorization to obtain the factors for the matrix:

  [ A  a ]
  [ a  b ]

  where: a = v[0,numRows-1], b = v[numRows]
============
*/
bool idMatX::Cholesky_UpdateIncrement( const idVecX &v ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::Cholesky_UpdateIncrement( const idVecX &v )\r\n");
    return retVal;
}


/*
============
idMatX::Cholesky_UpdateDecrement

  Updates the in-place Cholesky factorization to obtain the factors for the matrix with row r and column r removed.
  v should store the row of the original matrix.
============
*/
bool idMatX::Cholesky_UpdateDecrement( const idVecX &v, int r ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::Cholesky_UpdateDecrement( const idVecX &v, int r )\r\n");
    return retVal;
}


/*
============
idMatX::Cholesky_Solve

  Solve Ax = b with A factored in-place as: LL'
============
*/
void idMatX::Cholesky_Solve( idVecX &x, const idVecX &b ) const {
    Sys_Printf("void idMatX::Cholesky_Solve( idVecX &x, const idVecX &b )\r\n");
}


/*
============
idMatX::Cholesky_Inverse

  Calculates the inverse of the matrix which is factored in-place as: LL'
============
*/
void idMatX::Cholesky_Inverse( idMatX &inv ) const {
    Sys_Printf("void idMatX::Cholesky_Inverse( idMatX &inv )\r\n");
}


/*
============
idMatX::Cholesky_MultiplyFactors

  Multiplies the factors of the in-place Cholesky factorization to form the original matrix.
============
*/
void idMatX::Cholesky_MultiplyFactors( idMatX &m ) const {
    Sys_Printf("void idMatX::Cholesky_MultiplyFactors( idMatX &m )\r\n");
}


/*
============
idMatX::LDLT_Factor

  in-place factorization: LDL'
  L is a triangular matrix stored in the lower triangle.
  L has ones on the diagonal that are not stored.
  D is a diagonal matrix stored on the diagonal.
  The upper triangle is not cleared.
  The initial matrix has to be symmetric.
============
*/
bool idMatX::LDLT_Factor( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::LDLT_Factor( void )\r\n");
    return retVal;
}


/*
============
idMatX::LDLT_UpdateRankOne

  Updates the in-place LDL' factorization to obtain the factors for the matrix: LDL' + alpha * v * v'
  If offset > 0 only the lower right corner starting at (offset, offset) is updated.
============
*/
bool idMatX::LDLT_UpdateRankOne( const idVecX &v, float alpha, int offset ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::LDLT_UpdateRankOne( const idVecX &v, float alpha, int offset )\r\n");
    return retVal;
}


/*
============
idMatX::LDLT_UpdateRowColumn

  Updates the in-place LDL' factorization to obtain the factors for the matrix:

         [ 0  a  0 ]
  LDL' + [ a  b  c ]
         [ 0  c  0 ]

  where: a = v[0,r-1], b = v[r], c = v[r+1,numRows-1]
============
*/
bool idMatX::LDLT_UpdateRowColumn( const idVecX &v, int r ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::LDLT_UpdateRowColumn( const idVecX &v, int r )\r\n");
    return retVal;
}


/*
============
idMatX::LDLT_UpdateIncrement

  Updates the in-place LDL' factorization to obtain the factors for the matrix:

  [ A  a ]
  [ a  b ]

  where: a = v[0,numRows-1], b = v[numRows]
============
*/
bool idMatX::LDLT_UpdateIncrement( const idVecX &v ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::LDLT_UpdateIncrement( const idVecX &v )\r\n");
    return retVal;
}


/*
============
idMatX::LDLT_UpdateDecrement

  Updates the in-place LDL' factorization to obtain the factors for the matrix with row r and column r removed.
  v should store the row of the original matrix.
============
*/
bool idMatX::LDLT_UpdateDecrement( const idVecX &v, int r ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::LDLT_UpdateDecrement( const idVecX &v, int r )\r\n");
    return retVal;
}


/*
============
idMatX::LDLT_Solve

  Solve Ax = b with A factored in-place as: LDL'
============
*/
void idMatX::LDLT_Solve( idVecX &x, const idVecX &b ) const {
    Sys_Printf("void idMatX::LDLT_Solve( idVecX &x, const idVecX &b )\r\n");
}


/*
============
idMatX::LDLT_Inverse

  Calculates the inverse of the matrix which is factored in-place as: LDL'
============
*/
void idMatX::LDLT_Inverse( idMatX &inv ) const {
    Sys_Printf("void idMatX::LDLT_Inverse( idMatX &inv )\r\n");
}


/*
============
idMatX::LDLT_UnpackFactors

  Unpacks the in-place LDL' factorization.
============
*/
void idMatX::LDLT_UnpackFactors( idMatX &L, idMatX &D ) const {
    Sys_Printf("void idMatX::LDLT_UnpackFactors( idMatX &L, idMatX &D )\r\n");
}


/*
============
idMatX::LDLT_MultiplyFactors

  Multiplies the factors of the in-place LDL' factorization to form the original matrix.
============
*/
void idMatX::LDLT_MultiplyFactors( idMatX &m ) const {
    Sys_Printf("void idMatX::LDLT_MultiplyFactors( idMatX &m )\r\n");
}


/*
============
idMatX::TriDiagonal_ClearTriangles
============
*/
void idMatX::TriDiagonal_ClearTriangles( void ) {
    Sys_Printf("void idMatX::TriDiagonal_ClearTriangles( void )\r\n");
}


/*
============
idMatX::TriDiagonal_Solve

  Solve Ax = b with A being tridiagonal.
============
*/
bool idMatX::TriDiagonal_Solve( idVecX &x, const idVecX &b ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::TriDiagonal_Solve( idVecX &x, const idVecX &b )\r\n");
    return retVal;
}


/*
============
idMatX::TriDiagonal_Inverse

  Calculates the inverse of a tri-diagonal matrix.
============
*/
void idMatX::TriDiagonal_Inverse( idMatX &inv ) const {
    Sys_Printf("void idMatX::TriDiagonal_Inverse( idMatX &inv )\r\n");
}


/*
============
idMatX::HouseholderReduction

  Householder reduction to symmetric tri-diagonal form.
  The original matrix is replaced by an orthogonal matrix effecting the accumulated householder transformations.
  The diagonal elements of the diagonal matrix are stored in diag.
  The off-diagonal elements of the diagonal matrix are stored in subd.
  The initial matrix has to be symmetric.
============
*/
void idMatX::HouseholderReduction( idVecX &diag, idVecX &subd ) {
    Sys_Printf("void idMatX::HouseholderReduction( idVecX &diag, idVecX &subd )\r\n");
}


/*
============
idMatX::QL

  QL algorithm with implicit shifts to determine the eigenvalues and eigenvectors of a symmetric tri-diagonal matrix.
  diag contains the diagonal elements of the symmetric tri-diagonal matrix on input and is overwritten with the eigenvalues.
  subd contains the off-diagonal elements of the symmetric tri-diagonal matrix and is destroyed.
  This matrix has to be either the identity matrix to determine the eigenvectors for a symmetric tri-diagonal matrix,
  or the matrix returned by the Householder reduction to determine the eigenvalues for the original symmetric matrix.
============
*/
bool idMatX::QL( idVecX &diag, idVecX &subd ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::QL( idVecX &diag, idVecX &subd )\r\n");
    return retVal;
}


/*
============
idMatX::Eigen_SolveSymmetricTriDiagonal

  Determine eigen values and eigen vectors for a symmetric tri-diagonal matrix.
  The eigen values are stored in 'eigenValues'.
  Column i of the original matrix will store the eigen vector corresponding to the eigenValues[i].
  The initial matrix has to be symmetric tri-diagonal.
============
*/
bool idMatX::Eigen_SolveSymmetricTriDiagonal( idVecX &eigenValues ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::Eigen_SolveSymmetricTriDiagonal( idVecX &eigenValues )\r\n");
    return retVal;
}


/*
============
idMatX::Eigen_SolveSymmetric

  Determine eigen values and eigen vectors for a symmetric matrix.
  The eigen values are stored in 'eigenValues'.
  Column i of the original matrix will store the eigen vector corresponding to the eigenValues[i].
  The initial matrix has to be symmetric.
============
*/
bool idMatX::Eigen_SolveSymmetric( idVecX &eigenValues ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::Eigen_SolveSymmetric( idVecX &eigenValues )\r\n");
    return retVal;
}


/*
============
idMatX::HessenbergReduction

  Reduction to Hessenberg form.
============
*/
void idMatX::HessenbergReduction( idMatX &H ) {
    Sys_Printf("void idMatX::HessenbergReduction( idMatX &H )\r\n");
}


/*
============
idMatX::ComplexDivision

  Complex scalar division.
============
*/
void idMatX::ComplexDivision( float xr, float xi, float yr, float yi, float &cdivr, float &cdivi ) {
    Sys_Printf("void idMatX::ComplexDivision( float xr, float xi, float yr, float yi, float &cdivr, float &cdivi )\r\n");
}


/*
============
idMatX::HessenbergToRealSchur

  Reduction from Hessenberg to real Schur form.
============
*/
bool idMatX::HessenbergToRealSchur( idMatX &H, idVecX &realEigenValues, idVecX &imaginaryEigenValues ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::HessenbergToRealSchur( idMatX &H, idVecX &realEigenValues, idVecX &imaginaryEigenValues )\r\n");
    return retVal;
}


/*
============
idMatX::Eigen_Solve

  Determine eigen values and eigen vectors for a square matrix.
  The eigen values are stored in 'realEigenValues' and 'imaginaryEigenValues'.
  Column i of the original matrix will store the eigen vector corresponding to the realEigenValues[i] and imaginaryEigenValues[i].
============
*/
bool idMatX::Eigen_Solve( idVecX &realEigenValues, idVecX &imaginaryEigenValues ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::Eigen_Solve( idVecX &realEigenValues, idVecX &imaginaryEigenValues )\r\n");
    return retVal;
}


/*
============
idMatX::Eigen_SortIncreasing
============
*/
void idMatX::Eigen_SortIncreasing( idVecX &eigenValues ) {
    Sys_Printf("void idMatX::Eigen_SortIncreasing( idVecX &eigenValues )\r\n");
}


/*
============
idMatX::Eigen_SortDecreasing
============
*/
void idMatX::Eigen_SortDecreasing( idVecX &eigenValues ) {
    Sys_Printf("void idMatX::Eigen_SortDecreasing( idVecX &eigenValues )\r\n");
}


/*
============
idMatX::DeterminantGeneric
============
*/
float idMatX::DeterminantGeneric( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idMatX::DeterminantGeneric( void )\r\n");
    return retVal;
}


/*
============
idMatX::InverseSelfGeneric
============
*/
bool idMatX::InverseSelfGeneric( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMatX::InverseSelfGeneric( void )\r\n");
    return retVal;
}


/*
============
idMatX::Test
============
*/
void idMatX::Test( void ) {
    Sys_Printf("void idMatX::Test( void )\r\n");
}

