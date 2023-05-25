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

// simple types.  function types are dynamically allocated
idTypeDef	type_void( ev_void, &def_void, "void", 0, NULL );
idTypeDef	type_scriptevent( ev_scriptevent, &def_scriptevent, "scriptevent", sizeof( void * ), NULL );
idTypeDef	type_namespace( ev_namespace, &def_namespace, "namespace", sizeof( void * ), NULL );
idTypeDef	type_string( ev_string, &def_string, "string", MAX_STRING_LEN, NULL );
idTypeDef	type_float( ev_float, &def_float, "float", sizeof( float ), NULL );
idTypeDef	type_vector( ev_vector, &def_vector, "vector", sizeof( idVec3 ), NULL );
idTypeDef	type_entity( ev_entity, &def_entity, "entity", sizeof( int * ), NULL );					// stored as entity number pointer
idTypeDef	type_field( ev_field, &def_field, "field", sizeof( void * ), NULL );
idTypeDef	type_function( ev_function, &def_function, "function", sizeof( void * ), &type_void );
idTypeDef	type_virtualfunction( ev_virtualfunction, &def_virtualfunction, "virtual function", sizeof( int ), NULL );
idTypeDef	type_pointer( ev_pointer, &def_pointer, "pointer", sizeof( void * ), NULL );
idTypeDef	type_object( ev_object, &def_object, "object", sizeof( int * ), NULL );					// stored as entity number pointer
idTypeDef	type_jumpoffset( ev_jumpoffset, &def_jumpoffset, "<jump>", sizeof( int ), NULL );		// only used for jump opcodes
idTypeDef	type_argsize( ev_argsize, &def_argsize, "<argsize>", sizeof( int ), NULL );				// only used for function call and thread opcodes
idTypeDef	type_boolean( ev_boolean, &def_boolean, "boolean", sizeof( int ), NULL );

idVarDef	def_void( &type_void );
idVarDef	def_scriptevent( &type_scriptevent );
idVarDef	def_namespace( &type_namespace );
idVarDef	def_string( &type_string );
idVarDef	def_float( &type_float );
idVarDef	def_vector( &type_vector );
idVarDef	def_entity( &type_entity );
idVarDef	def_field( &type_field );
idVarDef	def_function( &type_function );
idVarDef	def_virtualfunction( &type_virtualfunction );
idVarDef	def_pointer( &type_pointer );
idVarDef	def_object( &type_object );
idVarDef	def_jumpoffset( &type_jumpoffset );		// only used for jump opcodes
idVarDef	def_argsize( &type_argsize );
idVarDef	def_boolean( &type_boolean );

/***********************************************************************

  function_t

***********************************************************************/

/*
================
function_t::function_t
================
*/
function_t::function_t() {
	Clear();
}

/*
================
function_t::Allocated
================
*/
size_t function_t::Allocated( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t function_t::Allocated( void )\r\n");
    return retVal;
}


/*
================
function_t::SetName
================
*/
void function_t::SetName( const char *name ) {
    Sys_Printf("void function_t::SetName( const char *name )\r\n");
}


/*
================
function_t::Name
================
*/
const char *function_t::Name( void ) const {
    Sys_Printf("char *function_t::Name( void )\r\n");
    return NULL;
}


/*
================
function_t::Clear
================
*/
void function_t::Clear( void ) {
    Sys_Printf("void function_t::Clear( void )\r\n");
}


/***********************************************************************

  idTypeDef

***********************************************************************/

/*
================
idTypeDef::idTypeDef
================
*/
idTypeDef::idTypeDef( etype_t etype, idVarDef *edef, const char *ename, int esize, idTypeDef *aux ) {
	name		= ename;
	type		= etype;
	def			= edef;
	size		= esize;
	auxType		= aux;
	
	parmTypes.SetGranularity( 1 );
	parmNames.SetGranularity( 1 );
	functions.SetGranularity( 1 );
}

/*
================
idTypeDef::idTypeDef
================
*/
idTypeDef::idTypeDef( const idTypeDef &other ) {
	*this = other;
}

/*
================
idTypeDef::operator=
================
*/
void idTypeDef::operator=( const idTypeDef& other ) {
	type		= other.type;
	def			= other.def;
	name		= other.name;
	size		= other.size;
	auxType		= other.auxType;
	parmTypes	= other.parmTypes;
	parmNames	= other.parmNames;
	functions	= other.functions;
}

/*
================
idTypeDef::Allocated
================
*/
size_t idTypeDef::Allocated( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idTypeDef::Allocated( void )\r\n");
    return retVal;
}


/*
================
idTypeDef::Inherits

Returns true if basetype is an ancestor of this type.
================
*/
bool idTypeDef::Inherits( const idTypeDef *basetype ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idTypeDef::Inherits( const idTypeDef *basetype )\r\n");
    return retVal;
}


/*
================
idTypeDef::MatchesType

Returns true if both types' base types and parameters match
================
*/
bool idTypeDef::MatchesType( const idTypeDef &matchtype ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idTypeDef::MatchesType( const idTypeDef &matchtype )\r\n");
    return retVal;
}


/*
================
idTypeDef::MatchesVirtualFunction

Returns true if both functions' base types and parameters match
================
*/
bool idTypeDef::MatchesVirtualFunction( const idTypeDef &matchfunc ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idTypeDef::MatchesVirtualFunction( const idTypeDef &matchfunc )\r\n");
    return retVal;
}


/*
================
idTypeDef::AddFunctionParm

Adds a new parameter for a function type.
================
*/
void idTypeDef::AddFunctionParm( idTypeDef *parmtype, const char *name ) {
    Sys_Printf("void idTypeDef::AddFunctionParm( idTypeDef *parmtype, const char *name )\r\n");
}


/*
================
idTypeDef::AddField

Adds a new field to an object type.
================
*/
void idTypeDef::AddField( idTypeDef *fieldtype, const char *name ) {
    Sys_Printf("void idTypeDef::AddField( idTypeDef *fieldtype, const char *name )\r\n");
}


/*
================
idTypeDef::SetName
================
*/
void idTypeDef::SetName( const char *newname ) {
    Sys_Printf("void idTypeDef::SetName( const char *newname )\r\n");
}


/*
================
idTypeDef::Name
================
*/
const char *idTypeDef::Name( void ) const {
    Sys_Printf("char *idTypeDef::Name( void )\r\n");
    return NULL;
}


/*
================
idTypeDef::Type
================
*/
etype_t idTypeDef::Type( void ) const {
    etype_t retVal;
    memset(&retVal, 0, sizeof(etype_t));
    Sys_Printf("etype_t idTypeDef::Type( void )\r\n");
    return retVal;
}


/*
================
idTypeDef::Size
================
*/
int idTypeDef::Size( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTypeDef::Size( void )\r\n");
    return retVal;
}


/*
================
idTypeDef::SuperClass

If type is an object, then returns the object's superclass
================
*/
idTypeDef *idTypeDef::SuperClass( void ) const {
    Sys_Printf("idTypeDef *idTypeDef::SuperClass( void )\r\n");
    return NULL;
}


/*
================
idTypeDef::ReturnType

If type is a function, then returns the function's return type
================
*/
idTypeDef *idTypeDef::ReturnType( void ) const {
    Sys_Printf("idTypeDef *idTypeDef::ReturnType( void )\r\n");
    return NULL;
}


/*
================
idTypeDef::SetReturnType

If type is a function, then sets the function's return type
================
*/
void idTypeDef::SetReturnType( idTypeDef *returntype ) {
    Sys_Printf("void idTypeDef::SetReturnType( idTypeDef *returntype )\r\n");
}


/*
================
idTypeDef::FieldType

If type is a field, then returns it's type
================
*/
idTypeDef *idTypeDef::FieldType( void ) const {
    Sys_Printf("idTypeDef *idTypeDef::FieldType( void )\r\n");
    return NULL;
}


/*
================
idTypeDef::SetFieldType

If type is a field, then sets the function's return type
================
*/
void idTypeDef::SetFieldType( idTypeDef *fieldtype ) {
    Sys_Printf("void idTypeDef::SetFieldType( idTypeDef *fieldtype )\r\n");
}


/*
================
idTypeDef::PointerType

If type is a pointer, then returns the type it points to
================
*/
idTypeDef *idTypeDef::PointerType( void ) const {
    Sys_Printf("idTypeDef *idTypeDef::PointerType( void )\r\n");
    return NULL;
}


/*
================
idTypeDef::SetPointerType

If type is a pointer, then sets the pointer's type
================
*/
void idTypeDef::SetPointerType( idTypeDef *pointertype ) {
    Sys_Printf("void idTypeDef::SetPointerType( idTypeDef *pointertype )\r\n");
}


/*
================
idTypeDef::NumParameters
================
*/
int idTypeDef::NumParameters( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTypeDef::NumParameters( void )\r\n");
    return retVal;
}


/*
================
idTypeDef::GetParmType
================
*/
idTypeDef *idTypeDef::GetParmType( int parmNumber ) const {
    Sys_Printf("idTypeDef *idTypeDef::GetParmType( int parmNumber )\r\n");
    return NULL;
}


/*
================
idTypeDef::GetParmName
================
*/
const char *idTypeDef::GetParmName( int parmNumber ) const {
    Sys_Printf("char *idTypeDef::GetParmName( int parmNumber )\r\n");
    return NULL;
}


/*
================
idTypeDef::NumFunctions
================
*/
int idTypeDef::NumFunctions( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTypeDef::NumFunctions( void )\r\n");
    return retVal;
}


/*
================
idTypeDef::GetFunctionNumber
================
*/
int idTypeDef::GetFunctionNumber( const function_t *func ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTypeDef::GetFunctionNumber( const function_t *func )\r\n");
    return retVal;
}


/*
================
idTypeDef::GetFunction
================
*/
const function_t *idTypeDef::GetFunction( int funcNumber ) const {
    Sys_Printf("function_t *idTypeDef::GetFunction( int funcNumber )\r\n");
    return NULL;
}


/*
================
idTypeDef::AddFunction
================
*/
void idTypeDef::AddFunction( const function_t *func ) {
    Sys_Printf("void idTypeDef::AddFunction( const function_t *func )\r\n");
}


/***********************************************************************

  idVarDef

***********************************************************************/

/*
================
idVarDef::idVarDef()
================
*/
idVarDef::idVarDef( idTypeDef *typeptr ) {
	typeDef		= typeptr;
	num			= 0;
	scope		= NULL;
	numUsers	= 0;
	initialized = idVarDef::uninitialized;
	memset( &value, 0, sizeof( value ) );
	name		= NULL;
	next		= NULL;
}

/*
============
idVarDef::~idVarDef
============
*/
idVarDef::~idVarDef() {
	if ( name ) {
		name->RemoveDef( this );
	}
}

/*
============
idVarDef::Name
============
*/
const char *idVarDef::Name( void ) const {
    Sys_Printf("char *idVarDef::Name( void )\r\n");
    return NULL;
}


/*
============
idVarDef::GlobalName
============
*/
const char *idVarDef::GlobalName( void ) const {
    Sys_Printf("char *idVarDef::GlobalName( void )\r\n");
    return NULL;
}


/*
============
idVarDef::DepthOfScope
============
*/
int idVarDef::DepthOfScope( const idVarDef *otherScope ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idVarDef::DepthOfScope( const idVarDef *otherScope )\r\n");
    return retVal;
}


/*
============
idVarDef::SetFunction
============
*/
void idVarDef::SetFunction( function_t *func ) {
    Sys_Printf("void idVarDef::SetFunction( function_t *func )\r\n");
}


/*
============
idVarDef::SetObject
============
*/
void idVarDef::SetObject( idScriptObject *object ) {
    Sys_Printf("void idVarDef::SetObject( idScriptObject *object )\r\n");
}


/*
============
idVarDef::SetValue
============
*/
void idVarDef::SetValue( const eval_t &_value, bool constant ) {
    Sys_Printf("void idVarDef::SetValue( const eval_t &_value, bool constant )\r\n");
}


/*
============
idVarDef::SetString
============
*/
void idVarDef::SetString( const char *string, bool constant ) {
    Sys_Printf("void idVarDef::SetString( const char *string, bool constant )\r\n");
}


/*
============
idVarDef::PrintInfo
============
*/
void idVarDef::PrintInfo( idFile *file, int instructionPointer ) const {
    Sys_Printf("void idVarDef::PrintInfo( idFile *file, int instructionPointer )\r\n");
}


/***********************************************************************

  idVarDef

***********************************************************************/

/*
============
idVarDefName::AddDef
============
*/
void idVarDefName::AddDef( idVarDef *def ) {
    Sys_Printf("void idVarDefName::AddDef( idVarDef *def )\r\n");
}


/*
============
idVarDefName::RemoveDef
============
*/
void idVarDefName::RemoveDef( idVarDef *def ) {
    Sys_Printf("void idVarDefName::RemoveDef( idVarDef *def )\r\n");
}


/***********************************************************************

  idScriptObject

***********************************************************************/

/*
============
idScriptObject::idScriptObject
============
*/
idScriptObject::idScriptObject() {
	data = NULL;
	type = &type_object;
}

/*
============
idScriptObject::~idScriptObject
============
*/
idScriptObject::~idScriptObject() {
	Free();
}

/*
============
idScriptObject::Free
============
*/
void idScriptObject::Free( void ) {
    Sys_Printf("void idScriptObject::Free( void )\r\n");
}


/*
================
idScriptObject::Save
================
*/
void idScriptObject::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idScriptObject::Save( idSaveGame *savefile )\r\n");
}


/*
================
idScriptObject::Restore
================
*/
void idScriptObject::Restore( idRestoreGame *savefile ) {
    Sys_Printf("void idScriptObject::Restore( idRestoreGame *savefile )\r\n");
}


/*
============
idScriptObject::SetType

Allocates an object and initializes memory.
============
*/
bool idScriptObject::SetType( const char *typeName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idScriptObject::SetType( const char *typeName )\r\n");
    return retVal;
}


/*
============
idScriptObject::ClearObject

Resets the memory for the script object without changing its type.
============
*/
void idScriptObject::ClearObject( void ) {
    Sys_Printf("void idScriptObject::ClearObject( void )\r\n");
}


/*
============
idScriptObject::HasObject
============
*/
bool idScriptObject::HasObject( void ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idScriptObject::HasObject( void )\r\n");
    return retVal;
}


/*
============
idScriptObject::GetTypeDef
============
*/
idTypeDef *idScriptObject::GetTypeDef( void ) const {
    Sys_Printf("idTypeDef *idScriptObject::GetTypeDef( void )\r\n");
    return NULL;
}


/*
============
idScriptObject::GetTypeName
============
*/
const char *idScriptObject::GetTypeName( void ) const {
    Sys_Printf("char *idScriptObject::GetTypeName( void )\r\n");
    return NULL;
}


/*
============
idScriptObject::GetConstructor
============
*/
const function_t *idScriptObject::GetConstructor( void ) const {
    Sys_Printf("function_t *idScriptObject::GetConstructor( void )\r\n");
    return NULL;
}


/*
============
idScriptObject::GetDestructor
============
*/
const function_t *idScriptObject::GetDestructor( void ) const {
    Sys_Printf("function_t *idScriptObject::GetDestructor( void )\r\n");
    return NULL;
}


/*
============
idScriptObject::GetFunction
============
*/
const function_t *idScriptObject::GetFunction( const char *name ) const {
    Sys_Printf("function_t *idScriptObject::GetFunction( const char *name )\r\n");
    return NULL;
}


/*
============
idScriptObject::GetVariable
============
*/
byte *idScriptObject::GetVariable( const char *name, etype_t etype ) const {
    Sys_Printf("byte *idScriptObject::GetVariable( const char *name, etype_t etype )\r\n");
    return NULL;
}


/***********************************************************************

  idProgram

***********************************************************************/

/*
============
idProgram::AllocType
============
*/
idTypeDef *idProgram::AllocType( idTypeDef &type ) {
    Sys_Printf("idTypeDef *idProgram::AllocType( idTypeDef &type )\r\n");
    return NULL;
}


/*
============
idProgram::AllocType
============
*/
idTypeDef *idProgram::AllocType( etype_t etype, idVarDef *edef, const char *ename, int esize, idTypeDef *aux ) {
    Sys_Printf("idTypeDef *idProgram::AllocType( etype_t etype, idVarDef *edef, const char *ename, int esize, idTypeDef *aux )\r\n");
    return NULL;
}


/*
============
idProgram::GetType

Returns a preexisting complex type that matches the parm, or allocates
a new one and copies it out.
============
*/
idTypeDef *idProgram::GetType( idTypeDef &type, bool allocate ) {
    Sys_Printf("idTypeDef *idProgram::GetType( idTypeDef &type, bool allocate )\r\n");
    return NULL;
}


/*
============
idProgram::FindType

Returns a preexisting complex type that matches the name, or returns NULL if not found
============
*/
idTypeDef *idProgram::FindType( const char *name ) {
    Sys_Printf("idTypeDef *idProgram::FindType( const char *name )\r\n");
    return NULL;
}


/*
============
idProgram::GetDefList
============
*/
idVarDef *idProgram::GetDefList( const char *name ) const {
    Sys_Printf("idVarDef *idProgram::GetDefList( const char *name )\r\n");
    return NULL;
}


/*
============
idProgram::AddDefToNameList
============
*/
void idProgram::AddDefToNameList( idVarDef *def, const char *name ) {
    Sys_Printf("void idProgram::AddDefToNameList( idVarDef *def, const char *name )\r\n");
}


/*
============
idProgram::AllocDef
============
*/
idVarDef *idProgram::AllocDef( idTypeDef *type, const char *name, idVarDef *scope, bool constant ) {
    Sys_Printf("idVarDef *idProgram::AllocDef( idTypeDef *type, const char *name, idVarDef *scope, bool constant )\r\n");
    return NULL;
}


/*
============
idProgram::GetDef

If type is NULL, it will match any type
============
*/
idVarDef *idProgram::GetDef( const idTypeDef *type, const char *name, const idVarDef *scope ) const {
    Sys_Printf("idVarDef *idProgram::GetDef( const idTypeDef *type, const char *name, const idVarDef *scope )\r\n");
    return NULL;
}


/*
============
idProgram::FreeDef
============
*/
void idProgram::FreeDef( idVarDef *def, const idVarDef *scope ) {
    Sys_Printf("void idProgram::FreeDef( idVarDef *def, const idVarDef *scope )\r\n");
}


/*
============
idProgram::FindFreeResultDef
============
*/
idVarDef *idProgram::FindFreeResultDef( idTypeDef *type, const char *name, idVarDef *scope, const idVarDef *a, const idVarDef *b ) {
    Sys_Printf("idVarDef *idProgram::FindFreeResultDef( idTypeDef *type, const char *name, idVarDef *scope, const idVarDef *a, const idVarDef *b )\r\n");
    return NULL;
}


/*
================
idProgram::FindFunction

Searches for the specified function in the currently loaded script.  A full namespace should be
specified if not in the global namespace.

Returns 0 if function not found.
Returns >0 if function found.
================
*/
function_t *idProgram::FindFunction( const char *name ) const {
    Sys_Printf("function_t *idProgram::FindFunction( const char *name )\r\n");
    return NULL;
}


/*
================
idProgram::FindFunction

Searches for the specified object function in the currently loaded script.

Returns 0 if function not found.
Returns >0 if function found.
================
*/
function_t *idProgram::FindFunction( const char *name, const idTypeDef *type ) const {
    Sys_Printf("function_t *idProgram::FindFunction( const char *name, const idTypeDef *type )\r\n");
    return NULL;
}


/*
================
idProgram::AllocFunction
================
*/
function_t &idProgram::AllocFunction( idVarDef *def ) {
	if ( functions.Num() >= functions.Max() ) {
		throw idCompileError( va( "Exceeded maximum allowed number of functions (%d)", functions.Max() ) );
	}

	// fill in the dfunction
	function_t &func	= *functions.Alloc();
	func.eventdef		= NULL;
	func.def			= def;
	func.type			= def->TypeDef();
	func.firstStatement	= 0;
	func.numStatements	= 0;
	func.parmTotal		= 0;
	func.locals			= 0;
	func.filenum		= filenum;
	func.parmSize.SetGranularity( 1 );
	func.SetName( def->GlobalName() );

	def->SetFunction( &func );

	return func;
}

/*
================
idProgram::SetEntity
================
*/
void idProgram::SetEntity( const char *name, idEntity *ent ) {
    Sys_Printf("void idProgram::SetEntity( const char *name, idEntity *ent )\r\n");
}


/*
================
idProgram::AllocStatement
================
*/
statement_t *idProgram::AllocStatement( void ) {
    Sys_Printf("statement_t *idProgram::AllocStatement( void )\r\n");
    return NULL;
}


/*
==============
idProgram::BeginCompilation

called before compiling a batch of files, clears the pr struct
==============
*/
void idProgram::BeginCompilation( void ) {
    Sys_Printf("void idProgram::BeginCompilation( void )\r\n");
}


/*
==============
idProgram::DisassembleStatement
==============
*/
void idProgram::DisassembleStatement( idFile *file, int instructionPointer ) const {
    Sys_Printf("void idProgram::DisassembleStatement( idFile *file, int instructionPointer )\r\n");
}


/*
==============
idProgram::Disassemble
==============
*/
void idProgram::Disassemble( void ) const {
    Sys_Printf("void idProgram::Disassemble( void )\r\n");
}


/*
==============
idProgram::FinishCompilation

Called after all files are compiled to check for errors
==============
*/
void idProgram::FinishCompilation( void ) {
    Sys_Printf("void idProgram::FinishCompilation( void )\r\n");
}


/*
==============
idProgram::CompileStats

called after all files are compiled to report memory usage.
==============
*/
void idProgram::CompileStats( void ) {
    Sys_Printf("void idProgram::CompileStats( void )\r\n");
}


/*
================
idProgram::CompileText
================
*/
bool idProgram::CompileText( const char *source, const char *text, bool console ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idProgram::CompileText( const char *source, const char *text, bool console )\r\n");
    return retVal;
}


/*
================
idProgram::CompileFunction
================
*/
const function_t *idProgram::CompileFunction( const char *functionName, const char *text ) {
    Sys_Printf("function_t *idProgram::CompileFunction( const char *functionName, const char *text )\r\n");
    return NULL;
}


/*
================
idProgram::CompileFile
================
*/
void idProgram::CompileFile( const char *filename ) {
    Sys_Printf("void idProgram::CompileFile( const char *filename )\r\n");
}


/*
================
idProgram::FreeData
================
*/
void idProgram::FreeData( void ) {
    Sys_Printf("void idProgram::FreeData( void )\r\n");
}


/*
================
idProgram::Startup
================
*/
void idProgram::Startup( const char *defaultScript ) {
    Sys_Printf("void idProgram::Startup( const char *defaultScript )\r\n");
}


/*
================
idProgram::Save
================
*/
void idProgram::Save( idSaveGame *savefile ) const {
    Sys_Printf("void idProgram::Save( idSaveGame *savefile )\r\n");
}


/*
================
idProgram::Restore
================
*/
bool idProgram::Restore( idRestoreGame *savefile ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idProgram::Restore( idRestoreGame *savefile )\r\n");
    return retVal;
}


/*
================
idProgram::CalculateChecksum
================
*/
int idProgram::CalculateChecksum( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idProgram::CalculateChecksum( void )\r\n");
    return retVal;
}


/*
==============
idProgram::Restart

Restores all variables to their initial value
==============
*/
void idProgram::Restart( void ) {
    Sys_Printf("void idProgram::Restart( void )\r\n");
}


/*
================
idProgram::GetFilenum
================
*/
int idProgram::GetFilenum( const char *name ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idProgram::GetFilenum( const char *name )\r\n");
    return retVal;
}


/*
================
idProgram::idProgram
================
*/
idProgram::idProgram() {
	FreeData();
}

/*
================
idProgram::~idProgram
================
*/
idProgram::~idProgram() {
	FreeData();
}

/*
================
idProgram::ReturnEntity
================
*/
void idProgram::ReturnEntity( idEntity *ent ) {
    Sys_Printf("void idProgram::ReturnEntity( idEntity *ent )\r\n");
}

