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

#include "../idlib/precompiled.h"
#pragma hdrstop

/*
===============================================================================

	idDeclAF

===============================================================================
*/

/*
================
idAFVector::idAFVector
================
*/
idAFVector::idAFVector( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idAFVector::idAFVector( void ) size %d\r\n", sizeof(*this));
#endif

	type = VEC_COORDS;
	vec.Zero();
	negate = false;
}

/*
================
idAFVector::Parse
================
*/
bool idAFVector::Parse( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFVector::Parse( idLexer &src )\r\n");
    return retVal;
}


/*
================
idAFVector::Finish
================
*/
bool idAFVector::Finish( const char *fileName, const getJointTransform_t GetJointTransform, const idJointMat *frame, void *model ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFVector::Finish( const char *fileName, const getJointTransform_t GetJointTransform, const idJointMat *frame, void *model )\r\n");
    return retVal;
}


/*
================
idAFVector::Write
================
*/
bool idAFVector::Write( idFile *f ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAFVector::Write( idFile *f )\r\n");
    return retVal;
}


/*
================
idAFVector::ToString
================
*/
const char *idAFVector::ToString( idStr &str, const int precision ) {
    Sys_Printf("char *idAFVector::ToString( idStr &str, const int precision )\r\n");
    return NULL;
}


/*
================
idDeclAF_Body::SetDefault
================
*/
void idDeclAF_Body::SetDefault( const idDeclAF *file ) {
    Sys_Printf("void idDeclAF_Body::SetDefault( const idDeclAF *file )\r\n");
}


/*
================
idDeclAF_Constraint::SetDefault
================
*/
void idDeclAF_Constraint::SetDefault( const idDeclAF *file ) {
    Sys_Printf("void idDeclAF_Constraint::SetDefault( const idDeclAF *file )\r\n");
}


/*
================
idDeclAF::WriteBody
================
*/
bool idDeclAF::WriteBody( idFile *f, const idDeclAF_Body &body ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::WriteBody( idFile *f, const idDeclAF_Body &body )\r\n");
    return retVal;
}


/*
================
idDeclAF::WriteFixed
================
*/
bool idDeclAF::WriteFixed( idFile *f, const idDeclAF_Constraint &c ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::WriteFixed( idFile *f, const idDeclAF_Constraint &c )\r\n");
    return retVal;
}


/*
================
idDeclAF::WriteBallAndSocketJoint
================
*/
bool idDeclAF::WriteBallAndSocketJoint( idFile *f, const idDeclAF_Constraint &c ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::WriteBallAndSocketJoint( idFile *f, const idDeclAF_Constraint &c )\r\n");
    return retVal;
}


/*
================
idDeclAF::WriteUniversalJoint
================
*/
bool idDeclAF::WriteUniversalJoint( idFile *f, const idDeclAF_Constraint &c ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::WriteUniversalJoint( idFile *f, const idDeclAF_Constraint &c )\r\n");
    return retVal;
}


/*
================
idDeclAF::WriteHinge
================
*/
bool idDeclAF::WriteHinge( idFile *f, const idDeclAF_Constraint &c ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::WriteHinge( idFile *f, const idDeclAF_Constraint &c )\r\n");
    return retVal;
}


/*
================
idDeclAF::WriteSlider
================
*/
bool idDeclAF::WriteSlider( idFile *f, const idDeclAF_Constraint &c ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::WriteSlider( idFile *f, const idDeclAF_Constraint &c )\r\n");
    return retVal;
}


/*
================
idDeclAF::WriteSpring
================
*/
bool idDeclAF::WriteSpring( idFile *f, const idDeclAF_Constraint &c ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::WriteSpring( idFile *f, const idDeclAF_Constraint &c )\r\n");
    return retVal;
}


/*
================
idDeclAF::WriteConstraint
================
*/
bool idDeclAF::WriteConstraint( idFile *f, const idDeclAF_Constraint &c ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::WriteConstraint( idFile *f, const idDeclAF_Constraint &c )\r\n");
    return retVal;
}


/*
================
idDeclAF::WriteSettings
================
*/
bool idDeclAF::WriteSettings( idFile *f ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::WriteSettings( idFile *f )\r\n");
    return retVal;
}



/*
================
idDeclAF::RebuildTextSource
================
*/
bool idDeclAF::RebuildTextSource( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::RebuildTextSource( void )\r\n");
    return retVal;
}


/*
================
idDeclAF::Save
================
*/
bool idDeclAF::Save( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::Save( void )\r\n");
    return retVal;
}


/*
================
idDeclAF::ContentsFromString
================
*/
int idDeclAF::ContentsFromString( const char *str ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idDeclAF::ContentsFromString( const char *str )\r\n");
    return retVal;
}


/*
================
idDeclAF::ContentsToString
================
*/
const char *idDeclAF::ContentsToString( const int contents, idStr &str ) {
    Sys_Printf("char *idDeclAF::ContentsToString( const int contents, idStr &str )\r\n");
    return NULL;
}


/*
================
idDeclAF::JointModFromString
================
*/
declAFJointMod_t idDeclAF::JointModFromString( const char *str ) {
    declAFJointMod_t retVal;
    memset(&retVal, 0, sizeof(declAFJointMod_t));
    Sys_Printf("declAFJointMod_t idDeclAF::JointModFromString( const char *str )\r\n");
    return retVal;
}


/*
================
idDeclAF::JointModToString
================
*/
const char * idDeclAF::JointModToString( declAFJointMod_t jointMod ) {
    Sys_Printf("char * idDeclAF::JointModToString( declAFJointMod_t jointMod )\r\n");
    return NULL;
}


/*
=================
idDeclAF::Size
=================
*/
size_t idDeclAF::Size( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idDeclAF::Size( void )\r\n");
    return retVal;
}


/*
================
idDeclAF::ParseContents
================
*/
bool idDeclAF::ParseContents( idLexer &src, int &c ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::ParseContents( idLexer &src, int &c )\r\n");
    return retVal;
}


/*
================
idDeclAF::ParseBody
================
*/
bool idDeclAF::ParseBody( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::ParseBody( idLexer &src )\r\n");
    return retVal;
}


/*
================
idDeclAF::ParseFixed
================
*/
bool idDeclAF::ParseFixed( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::ParseFixed( idLexer &src )\r\n");
    return retVal;
}


/*
================
idDeclAF::ParseBallAndSocketJoint
================
*/
bool idDeclAF::ParseBallAndSocketJoint( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::ParseBallAndSocketJoint( idLexer &src )\r\n");
    return retVal;
}


/*
================
idDeclAF::ParseUniversalJoint
================
*/
bool idDeclAF::ParseUniversalJoint( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::ParseUniversalJoint( idLexer &src )\r\n");
    return retVal;
}


/*
================
idDeclAF::ParseHinge
================
*/
bool idDeclAF::ParseHinge( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::ParseHinge( idLexer &src )\r\n");
    return retVal;
}


/*
================
idDeclAF::ParseSlider
================
*/
bool idDeclAF::ParseSlider( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::ParseSlider( idLexer &src )\r\n");
    return retVal;
}


/*
================
idDeclAF::ParseSpring
================
*/
bool idDeclAF::ParseSpring( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::ParseSpring( idLexer &src )\r\n");
    return retVal;
}


/*
================
idDeclAF::ParseSettings
================
*/
bool idDeclAF::ParseSettings( idLexer &src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::ParseSettings( idLexer &src )\r\n");
    return retVal;
}


/*
================
idDeclAF::Parse
================
*/
bool idDeclAF::Parse( const char *text, const int textLength ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idDeclAF::Parse( const char *text, const int textLength )\r\n");
    return retVal;
}


/*
================
idDeclAF::DefaultDefinition
================
*/
const char *idDeclAF::DefaultDefinition( void ) const {
    Sys_Printf("char *idDeclAF::DefaultDefinition( void )\r\n");
    return NULL;
}


/*
================
idDeclAF::FreeData
================
*/
void idDeclAF::FreeData( void ) {
    Sys_Printf("void idDeclAF::FreeData( void )\r\n");
}


/*
================
idDeclAF::Finish
================
*/
void idDeclAF::Finish( const getJointTransform_t GetJointTransform, const idJointMat *frame, void *model ) const {
    Sys_Printf("void idDeclAF::Finish( const getJointTransform_t GetJointTransform, const idJointMat *frame, void *model )\r\n");
}


/*
================
idDeclAF::NewBody
================
*/
void idDeclAF::NewBody( const char *name ) {
    Sys_Printf("void idDeclAF::NewBody( const char *name )\r\n");
}


/*
================
idDeclAF::RenameBody

  rename the body with the given name and rename
  all constraint body references
================
*/
void idDeclAF::RenameBody( const char *oldName, const char *newName ) {
    Sys_Printf("void idDeclAF::RenameBody( const char *oldName, const char *newName )\r\n");
}


/*
================
idDeclAF::DeleteBody

  delete the body with the given name and delete
  all constraints that reference the body
================
*/
void idDeclAF::DeleteBody( const char *name ) {
    Sys_Printf("void idDeclAF::DeleteBody( const char *name )\r\n");
}


/*
================
idDeclAF::NewConstraint
================
*/
void idDeclAF::NewConstraint( const char *name ) {
    Sys_Printf("void idDeclAF::NewConstraint( const char *name )\r\n");
}


/*
================
idDeclAF::RenameConstraint
================
*/
void idDeclAF::RenameConstraint( const char *oldName, const char *newName ) {
    Sys_Printf("void idDeclAF::RenameConstraint( const char *oldName, const char *newName )\r\n");
}


/*
================
idDeclAF::DeleteConstraint
================
*/
void idDeclAF::DeleteConstraint( const char *name ) {
    Sys_Printf("void idDeclAF::DeleteConstraint( const char *name )\r\n");
}


/*
================
idDeclAF::idDeclAF
================
*/
idDeclAF::idDeclAF( void ) {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idDeclAF::idDeclAF( void ) size %d\r\n", sizeof(*this));
#endif

	FreeData();
}

/*
================
idDeclAF::~idDeclAF
================
*/
idDeclAF::~idDeclAF( void ) {
	bodies.DeleteContents( true );
	constraints.DeleteContents( true );
}
