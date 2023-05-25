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

#include "TypeInfoGen.h"

#define TYPE_INFO_GEN_VERSION		"1.0"

/*
================
idTypeInfoGen::idTypeInfoGen
================
*/
idTypeInfoGen::idTypeInfoGen( void ) {
}

/*
================
idTypeInfoGen::~idTypeInfoGen
================
*/
idTypeInfoGen::~idTypeInfoGen( void ) {
	constants.DeleteContents( true );
	enums.DeleteContents( true );
	classes.DeleteContents( true );
}

/*
================
idTypeInfoGen::GetInheritance
================
*/
int idTypeInfoGen::GetInheritance( const char *typeName ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTypeInfoGen::GetInheritance( const char *typeName )\r\n");
    return retVal;
}


/*
================
idTypeInfoGen::EvaluateIntegerString
================
*/
int idTypeInfoGen::EvaluateIntegerString( const idStr &string ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTypeInfoGen::EvaluateIntegerString( const idStr &string )\r\n");
    return retVal;
}


/*
================
idTypeInfoGen::EvaluateFloatString
================
*/
float idTypeInfoGen::EvaluateFloatString( const idStr &string ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idTypeInfoGen::EvaluateFloatString( const idStr &string )\r\n");
    return retVal;
}


/*
================
idTypeInfoGen::FindConstant
================
*/
idConstantInfo *idTypeInfoGen::FindConstant( const char *name ) {
    Sys_Printf("idConstantInfo *idTypeInfoGen::FindConstant( const char *name )\r\n");
    return NULL;
}


/*
================
idTypeInfoGen::GetIntegerConstant
================
*/
int idTypeInfoGen::GetIntegerConstant( const char *scope, const char *name, idParser &src ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTypeInfoGen::GetIntegerConstant( const char *scope, const char *name, idParser &src )\r\n");
    return retVal;
}


/*
================
idTypeInfoGen::GetFloatConstant
================
*/
float idTypeInfoGen::GetFloatConstant( const char *scope, const char *name, idParser &src ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idTypeInfoGen::GetFloatConstant( const char *scope, const char *name, idParser &src )\r\n");
    return retVal;
}


/*
================
idTypeInfoGen::ParseArraySize
================
*/
int idTypeInfoGen::ParseArraySize( const char *scope, idParser &src ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTypeInfoGen::ParseArraySize( const char *scope, idParser &src )\r\n");
    return retVal;
}


/*
================
idTypeInfoGen::ParseConstantValue
================
*/
void idTypeInfoGen::ParseConstantValue( const char *scope, idParser &src, idStr &value ) {
    Sys_Printf("void idTypeInfoGen::ParseConstantValue( const char *scope, idParser &src, idStr &value )\r\n");
}


/*
================
idTypeInfoGen::ParseEnumType
================
*/
idEnumTypeInfo *idTypeInfoGen::ParseEnumType( const char *scope, bool isTemplate, bool typeDef, idParser &src ) {
    Sys_Printf("idEnumTypeInfo *idTypeInfoGen::ParseEnumType( const char *scope, bool isTemplate, bool typeDef, idParser &src )\r\n");
    return NULL;
}


/*
================
idTypeInfoGen::ParseClassType
================
*/
idClassTypeInfo *idTypeInfoGen::ParseClassType( const char *scope, const char *templateArgs, bool isTemplate, bool typeDef, idParser &src ) {
    Sys_Printf("idClassTypeInfo *idTypeInfoGen::ParseClassType( const char *scope, const char *templateArgs, bool isTemplate, bool typeDef, idParser &src )\r\n");
    return NULL;
}


/*
================
idTypeInfoGen::ParseScope
================
*/
void idTypeInfoGen::ParseScope( const char *scope, bool isTemplate, idParser &src, idClassTypeInfo *typeInfo ) {
    Sys_Printf("void idTypeInfoGen::ParseScope( const char *scope, bool isTemplate, idParser &src, idClassTypeInfo *typeInfo )\r\n");
}


/*
================
idTypeInfoGen::AddDefine
================
*/
void idTypeInfoGen::AddDefine( const char *define ) {
    Sys_Printf("void idTypeInfoGen::AddDefine( const char *define )\r\n");
}


/*
================
idTypeInfoGen::CreateTypeInfo
================
*/
void idTypeInfoGen::CreateTypeInfo( const char *path ) {
    Sys_Printf("void idTypeInfoGen::CreateTypeInfo( const char *path )\r\n");
}


/*
================
CleanName
================
*/
void CleanName( idStr &name ) {
    Sys_Printf("void CleanName( idStr &name )\r\n");
}


/*
================
idTypeInfoGen::WriteTypeInfo
================
*/
void idTypeInfoGen::WriteTypeInfo( const char *fileName ) const {
    Sys_Printf("void idTypeInfoGen::WriteTypeInfo( const char *fileName )\r\n");
}

