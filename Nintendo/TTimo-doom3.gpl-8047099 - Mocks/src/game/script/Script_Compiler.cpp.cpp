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

#define FUNCTION_PRIORITY	2
#define INT_PRIORITY		2
#define NOT_PRIORITY		5
#define TILDE_PRIORITY		5
#define TOP_PRIORITY		7

bool idCompiler::punctuationValid[ 256 ];
char *idCompiler::punctuation[] = {
	"+=", "-=", "*=", "/=", "%=", "&=", "|=", "++", "--",
	"&&", "||", "<=", ">=", "==", "!=", "::", ";",  ",",
	"~",  "!",  "*",  "/",  "%",  "(",   ")",  "-", "+",
	"=",  "[",  "]",  ".",  "<",  ">" ,  "&",  "|", ":",  NULL
};

opcode_t idCompiler::opcodes[] = {
	{ "<RETURN>", "RETURN", -1, false, &def_void, &def_void, &def_void },
		
	{ "++", "UINC_F", 1, true, &def_float, &def_void, &def_void },
	{ "++", "UINCP_F", 1, true, &def_object, &def_field, &def_float },
	{ "--", "UDEC_F", 1, true, &def_float, &def_void, &def_void },
	{ "--", "UDECP_F", 1, true, &def_object, &def_field, &def_float },

	{ "~", "COMP_F", -1, false, &def_float, &def_void, &def_float },
	
	{ "*", "MUL_F", 3, false, &def_float, &def_float, &def_float },
	{ "*", "MUL_V", 3, false, &def_vector, &def_vector, &def_float },
	{ "*", "MUL_FV", 3, false, &def_float, &def_vector, &def_vector },
	{ "*", "MUL_VF", 3, false, &def_vector, &def_float, &def_vector },
	
	{ "/", "DIV", 3, false, &def_float, &def_float, &def_float },
	{ "%", "MOD_F",	3, false, &def_float, &def_float, &def_float },
	
	{ "+", "ADD_F", 4, false, &def_float, &def_float, &def_float },
	{ "+", "ADD_V", 4, false, &def_vector, &def_vector, &def_vector },
	{ "+", "ADD_S", 4, false, &def_string, &def_string, &def_string },
	{ "+", "ADD_FS", 4, false, &def_float, &def_string, &def_string },
	{ "+", "ADD_SF", 4, false, &def_string, &def_float, &def_string },
	{ "+", "ADD_VS", 4, false, &def_vector, &def_string, &def_string },
	{ "+", "ADD_SV", 4, false, &def_string, &def_vector, &def_string },
	
	{ "-", "SUB_F", 4, false, &def_float, &def_float, &def_float },
	{ "-", "SUB_V", 4, false, &def_vector, &def_vector, &def_vector },
	
	{ "==", "EQ_F", 5, false, &def_float, &def_float, &def_float },
	{ "==", "EQ_V", 5, false, &def_vector, &def_vector, &def_float },
	{ "==", "EQ_S", 5, false, &def_string, &def_string, &def_float },
	{ "==", "EQ_E", 5, false, &def_entity, &def_entity, &def_float },
	{ "==", "EQ_EO", 5, false, &def_entity, &def_object, &def_float },
	{ "==", "EQ_OE", 5, false, &def_object, &def_entity, &def_float },
	{ "==", "EQ_OO", 5, false, &def_object, &def_object, &def_float },
	
	{ "!=", "NE_F", 5, false, &def_float, &def_float, &def_float },
	{ "!=", "NE_V", 5, false, &def_vector, &def_vector, &def_float },
	{ "!=", "NE_S", 5, false, &def_string, &def_string, &def_float },
    { "!=", "NE_E", 5, false, &def_entity, &def_entity, &def_float },
	{ "!=", "NE_EO", 5, false, &def_entity, &def_object, &def_float },
	{ "!=", "NE_OE", 5, false, &def_object, &def_entity, &def_float },
	{ "!=", "NE_OO", 5, false, &def_object, &def_object, &def_float },
	
	{ "<=", "LE", 5, false, &def_float, &def_float, &def_float },
	{ ">=", "GE", 5, false, &def_float, &def_float, &def_float },
	{ "<", "LT", 5, false, &def_float, &def_float, &def_float },
	{ ">", "GT", 5, false, &def_float, &def_float, &def_float },
	
	{ ".", "INDIRECT_F", 1, false, &def_object, &def_field, &def_float },
	{ ".", "INDIRECT_V", 1, false, &def_object, &def_field, &def_vector },
	{ ".", "INDIRECT_S", 1, false, &def_object, &def_field, &def_string },
	{ ".", "INDIRECT_E", 1, false, &def_object, &def_field, &def_entity },
	{ ".", "INDIRECT_BOOL", 1, false, &def_object, &def_field, &def_boolean },
	{ ".", "INDIRECT_OBJ", 1, false, &def_object, &def_field, &def_object },

	{ ".", "ADDRESS", 1, false, &def_entity, &def_field, &def_pointer },

	{ ".", "EVENTCALL", 2, false, &def_entity, &def_function, &def_void },
	{ ".", "OBJECTCALL", 2, false, &def_object, &def_function, &def_void },
	{ ".", "SYSCALL", 2, false, &def_void, &def_function, &def_void },

	{ "=", "STORE_F", 6, true, &def_float, &def_float, &def_float },
	{ "=", "STORE_V", 6, true, &def_vector, &def_vector, &def_vector },
	{ "=", "STORE_S", 6, true, &def_string, &def_string, &def_string },
	{ "=", "STORE_ENT", 6, true, &def_entity, &def_entity, &def_entity },
	{ "=", "STORE_BOOL", 6, true, &def_boolean, &def_boolean, &def_boolean },
	{ "=", "STORE_OBJENT", 6, true, &def_object, &def_entity, &def_object },
	{ "=", "STORE_OBJ", 6, true, &def_object, &def_object, &def_object },
	{ "=", "STORE_OBJENT", 6, true, &def_entity, &def_object, &def_object },
	
	{ "=", "STORE_FTOS", 6, true, &def_string, &def_float, &def_string },
	{ "=", "STORE_BTOS", 6, true, &def_string, &def_boolean, &def_string },
	{ "=", "STORE_VTOS", 6, true, &def_string, &def_vector, &def_string },
	{ "=", "STORE_FTOBOOL", 6, true, &def_boolean, &def_float, &def_boolean },
	{ "=", "STORE_BOOLTOF", 6, true, &def_float, &def_boolean, &def_float },

	{ "=", "STOREP_F", 6, true, &def_pointer, &def_float, &def_float },
	{ "=", "STOREP_V", 6, true, &def_pointer, &def_vector, &def_vector },
	{ "=", "STOREP_S", 6, true, &def_pointer, &def_string, &def_string },
	{ "=", "STOREP_ENT", 6, true, &def_pointer, &def_entity, &def_entity },
	{ "=", "STOREP_FLD", 6, true, &def_pointer, &def_field, &def_field },
	{ "=", "STOREP_BOOL", 6, true, &def_pointer, &def_boolean, &def_boolean },
	{ "=", "STOREP_OBJ", 6, true, &def_pointer, &def_object, &def_object },
	{ "=", "STOREP_OBJENT", 6, true, &def_pointer, &def_object, &def_object },

	{ "<=>", "STOREP_FTOS", 6, true, &def_pointer, &def_float, &def_string },
	{ "<=>", "STOREP_BTOS", 6, true, &def_pointer, &def_boolean, &def_string },
	{ "<=>", "STOREP_VTOS", 6, true, &def_pointer, &def_vector, &def_string },
	{ "<=>", "STOREP_FTOBOOL", 6, true, &def_pointer, &def_float, &def_boolean },
	{ "<=>", "STOREP_BOOLTOF", 6, true, &def_pointer, &def_boolean, &def_float },
	
	{ "*=", "UMUL_F", 6, true, &def_float, &def_float, &def_void },
	{ "*=", "UMUL_V", 6, true, &def_vector, &def_float, &def_void },
	{ "/=", "UDIV_F", 6, true, &def_float, &def_float, &def_void },
	{ "/=", "UDIV_V", 6, true, &def_vector, &def_float, &def_void },
	{ "%=", "UMOD_F", 6, true, &def_float, &def_float, &def_void },
	{ "+=", "UADD_F", 6, true, &def_float, &def_float, &def_void },
	{ "+=", "UADD_V", 6, true, &def_vector, &def_vector, &def_void },
	{ "-=", "USUB_F", 6, true, &def_float, &def_float, &def_void },
	{ "-=", "USUB_V", 6, true, &def_vector, &def_vector, &def_void },
	{ "&=", "UAND_F", 6, true, &def_float, &def_float, &def_void },
	{ "|=", "UOR_F", 6, true, &def_float, &def_float, &def_void },
	
	{ "!", "NOT_BOOL", -1, false, &def_boolean, &def_void, &def_float },
	{ "!", "NOT_F", -1, false, &def_float, &def_void, &def_float },
	{ "!", "NOT_V", -1, false, &def_vector, &def_void, &def_float },
	{ "!", "NOT_S", -1, false, &def_vector, &def_void, &def_float },
	{ "!", "NOT_ENT", -1, false, &def_entity, &def_void, &def_float },

	{ "<NEG_F>", "NEG_F", -1, false, &def_float, &def_void, &def_float },
	{ "<NEG_V>", "NEG_V", -1, false, &def_vector, &def_void, &def_vector },

	{ "int", "INT_F", -1, false, &def_float, &def_void, &def_float },
	
	{ "<IF>", "IF", -1, false, &def_float, &def_jumpoffset, &def_void },
	{ "<IFNOT>", "IFNOT", -1, false, &def_float, &def_jumpoffset, &def_void },
	
	// calls returns REG_RETURN
	{ "<CALL>", "CALL", -1, false, &def_function, &def_argsize, &def_void },
	{ "<THREAD>", "THREAD", -1, false, &def_function, &def_argsize, &def_void },
	{ "<THREAD>", "OBJTHREAD", -1, false, &def_function, &def_argsize, &def_void },
	
	{ "<PUSH>", "PUSH_F", -1, false, &def_float, &def_float, &def_void },
	{ "<PUSH>", "PUSH_V", -1, false, &def_vector, &def_vector, &def_void },
	{ "<PUSH>", "PUSH_S", -1, false, &def_string, &def_string, &def_void },
	{ "<PUSH>", "PUSH_ENT", -1, false, &def_entity, &def_entity, &def_void },
	{ "<PUSH>", "PUSH_OBJ", -1, false, &def_object, &def_object, &def_void },
	{ "<PUSH>", "PUSH_OBJENT", -1, false, &def_entity, &def_object, &def_void },
	{ "<PUSH>", "PUSH_FTOS", -1, false, &def_string, &def_float, &def_void },
	{ "<PUSH>", "PUSH_BTOF", -1, false, &def_float, &def_boolean, &def_void },
	{ "<PUSH>", "PUSH_FTOB", -1, false, &def_boolean, &def_float, &def_void },
	{ "<PUSH>", "PUSH_VTOS", -1, false, &def_string, &def_vector, &def_void },
	{ "<PUSH>", "PUSH_BTOS", -1, false, &def_string, &def_boolean, &def_void },
	
	{ "<GOTO>", "GOTO", -1, false, &def_jumpoffset, &def_void, &def_void },
	
	{ "&&", "AND", 7, false, &def_float, &def_float, &def_float },
	{ "&&", "AND_BOOLF", 7, false, &def_boolean, &def_float, &def_float },
	{ "&&", "AND_FBOOL", 7, false, &def_float, &def_boolean, &def_float },
	{ "&&", "AND_BOOLBOOL", 7, false, &def_boolean, &def_boolean, &def_float },
	{ "||", "OR", 7, false, &def_float, &def_float, &def_float },
	{ "||", "OR_BOOLF", 7, false, &def_boolean, &def_float, &def_float },
	{ "||", "OR_FBOOL", 7, false, &def_float, &def_boolean, &def_float },
	{ "||", "OR_BOOLBOOL", 7, false, &def_boolean, &def_boolean, &def_float },
	
	{ "&", "BITAND", 3, false, &def_float, &def_float, &def_float },
	{ "|", "BITOR", 3, false, &def_float, &def_float, &def_float },

	{ "<BREAK>", "BREAK", -1, false, &def_float, &def_void, &def_void },
	{ "<CONTINUE>", "CONTINUE", -1, false, &def_float, &def_void, &def_void },

	{ NULL }
};

/*
================
idCompiler::idCompiler()
================
*/
idCompiler::idCompiler() {
	char	**ptr;
	int		id;

	// make sure we have the right # of opcodes in the table
	assert( ( sizeof( opcodes ) / sizeof( opcodes[ 0 ] ) ) == ( NUM_OPCODES + 1 ) );

	eof	= true;
	parserPtr = &parser;

	callthread			= false;
	loopDepth			= 0;
	eof					= false;
	braceDepth			= 0;
	immediateType		= NULL;
	basetype			= NULL;
	currentLineNumber	= 0;
	currentFileNumber	= 0;
	errorCount			= 0;
	console				= false;
	scope				= &def_namespace;

	memset( &immediate, 0, sizeof( immediate ) );
	memset( punctuationValid, 0, sizeof( punctuationValid ) );
	for( ptr = punctuation; *ptr != NULL; ptr++ ) {
		id = parserPtr->GetPunctuationId( *ptr );
		if ( ( id >= 0 ) && ( id < 256 ) ) {
			punctuationValid[ id ] = true;
		}
	}
}

/*
============
idCompiler::Error

Aborts the current file load
============
*/
void idCompiler::Error( const char *message, ... ) const {
    Sys_Printf("void idCompiler::Error( const char *message, ... )\r\n");
}


/*
============
idCompiler::Warning

Prints a warning about the current line
============
*/
void idCompiler::Warning( const char *message, ... ) const {
    Sys_Printf("void idCompiler::Warning( const char *message, ... )\r\n");
}


/*
============
idCompiler::VirtualFunctionConstant

Creates a def for an index into a virtual function table
============
*/
ID_INLINE idVarDef *idCompiler::VirtualFunctionConstant( idVarDef *func ) {
    Sys_Printf("idVarDef *idCompiler::VirtualFunctionConstant( idVarDef *func )\r\n");
    return NULL;
}


/*
============
idCompiler::SizeConstant

Creates a def for a size constant
============
*/
ID_INLINE idVarDef *idCompiler::SizeConstant( int size ) {
    Sys_Printf("idVarDef *idCompiler::SizeConstant( int size )\r\n");
    return NULL;
}


/*
============
idCompiler::JumpConstant

Creates a def for a jump constant
============
*/
ID_INLINE idVarDef *idCompiler::JumpConstant( int value ) {
    Sys_Printf("idVarDef *idCompiler::JumpConstant( int value )\r\n");
    return NULL;
}


/*
============
idCompiler::JumpDef

Creates a def for a relative jump from one code location to another
============
*/
ID_INLINE idVarDef *idCompiler::JumpDef( int jumpfrom, int jumpto ) {
    Sys_Printf("idVarDef *idCompiler::JumpDef( int jumpfrom, int jumpto )\r\n");
    return NULL;
}


/*
============
idCompiler::JumpTo

Creates a def for a relative jump from current code location
============
*/
ID_INLINE idVarDef *idCompiler::JumpTo( int jumpto ) {
    Sys_Printf("idVarDef *idCompiler::JumpTo( int jumpto )\r\n");
    return NULL;
}


/*
============
idCompiler::JumpFrom

Creates a def for a relative jump from code location to current code location
============
*/
ID_INLINE idVarDef *idCompiler::JumpFrom( int jumpfrom ) {
    Sys_Printf("idVarDef *idCompiler::JumpFrom( int jumpfrom )\r\n");
    return NULL;
}


/*
============
idCompiler::Divide
============
*/
ID_INLINE float idCompiler::Divide( float numerator, float denominator ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idCompiler::Divide( float numerator, float denominator )\r\n");
    return retVal;
}


/*
============
idCompiler::FindImmediate

tries to find an existing immediate with the same value
============
*/
idVarDef *idCompiler::FindImmediate( const idTypeDef *type, const eval_t *eval, const char *string ) const {
    Sys_Printf("idVarDef *idCompiler::FindImmediate( const idTypeDef *type, const eval_t *eval, const char *string )\r\n");
    return NULL;
}


/*
============
idCompiler::GetImmediate

returns an existing immediate with the same value, or allocates a new one
============
*/
idVarDef *idCompiler::GetImmediate( idTypeDef *type, const eval_t *eval, const char *string ) {
    Sys_Printf("idVarDef *idCompiler::GetImmediate( idTypeDef *type, const eval_t *eval, const char *string )\r\n");
    return NULL;
}


/*
============
idCompiler::OptimizeOpcode

try to optimize when the operator works on constants only
============
*/
idVarDef *idCompiler::OptimizeOpcode( const opcode_t *op, idVarDef *var_a, idVarDef *var_b ) {
    Sys_Printf("idVarDef *idCompiler::OptimizeOpcode( const opcode_t *op, idVarDef *var_a, idVarDef *var_b )\r\n");
    return NULL;
}


/*
============
idCompiler::EmitOpcode

Emits a primitive statement, returning the var it places it's value in
============
*/
idVarDef *idCompiler::EmitOpcode( const opcode_t *op, idVarDef *var_a, idVarDef *var_b ) {
    Sys_Printf("idVarDef *idCompiler::EmitOpcode( const opcode_t *op, idVarDef *var_a, idVarDef *var_b )\r\n");
    return NULL;
}


/*
============
idCompiler::EmitOpcode

Emits a primitive statement, returning the var it places it's value in
============
*/
ID_INLINE idVarDef *idCompiler::EmitOpcode( int op, idVarDef *var_a, idVarDef *var_b ) {
    Sys_Printf("idVarDef *idCompiler::EmitOpcode( int op, idVarDef *var_a, idVarDef *var_b )\r\n");
    return NULL;
}


/*
============
idCompiler::EmitPush

Emits an opcode to push the variable onto the stack.
============
*/
bool idCompiler::EmitPush( idVarDef *expression, const idTypeDef *funcArg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCompiler::EmitPush( idVarDef *expression, const idTypeDef *funcArg )\r\n");
    return retVal;
}


/*
==============
idCompiler::NextToken

Sets token, immediateType, and possibly immediate
==============
*/
void idCompiler::NextToken( void ) {
    Sys_Printf("void idCompiler::NextToken( void )\r\n");
}


/*
=============
idCompiler::ExpectToken

Issues an Error if the current token isn't equal to string
Gets the next token
=============
*/
void idCompiler::ExpectToken( const char *string ) {
    Sys_Printf("void idCompiler::ExpectToken( const char *string )\r\n");
}


/*
=============
idCompiler::CheckToken

Returns true and gets the next token if the current token equals string
Returns false and does nothing otherwise
=============
*/
bool idCompiler::CheckToken( const char *string ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCompiler::CheckToken( const char *string )\r\n");
    return retVal;
}


/*
============
idCompiler::ParseName

Checks to see if the current token is a valid name
============
*/
void idCompiler::ParseName( idStr &name ) {
    Sys_Printf("void idCompiler::ParseName( idStr &name )\r\n");
}


/*
============
idCompiler::SkipOutOfFunction

For error recovery, pops out of nested braces
============
*/
void idCompiler::SkipOutOfFunction( void ) {
    Sys_Printf("void idCompiler::SkipOutOfFunction( void )\r\n");
}


/*
============
idCompiler::SkipToSemicolon

For error recovery
============
*/
void idCompiler::SkipToSemicolon( void ) {
    Sys_Printf("void idCompiler::SkipToSemicolon( void )\r\n");
}


/*
============
idCompiler::CheckType

Parses a variable type, including functions types
============
*/
idTypeDef *idCompiler::CheckType( void ) {
    Sys_Printf("idTypeDef *idCompiler::CheckType( void )\r\n");
    return NULL;
}


/*
============
idCompiler::ParseType

Parses a variable type, including functions types
============
*/
idTypeDef *idCompiler::ParseType( void ) {
    Sys_Printf("idTypeDef *idCompiler::ParseType( void )\r\n");
    return NULL;
}


/*
============
idCompiler::ParseImmediate

Looks for a preexisting constant
============
*/
idVarDef *idCompiler::ParseImmediate( void ) {
    Sys_Printf("idVarDef *idCompiler::ParseImmediate( void )\r\n");
    return NULL;
}


/*
============
idCompiler::EmitFunctionParms
============
*/
idVarDef *idCompiler::EmitFunctionParms( int op, idVarDef *func, int startarg, int startsize, idVarDef *object ) {
    Sys_Printf("idVarDef *idCompiler::EmitFunctionParms( int op, idVarDef *func, int startarg, int startsize, idVarDef *object )\r\n");
    return NULL;
}


/*
============
idCompiler::ParseFunctionCall
============
*/
idVarDef *idCompiler::ParseFunctionCall( idVarDef *funcDef ) {
    Sys_Printf("idVarDef *idCompiler::ParseFunctionCall( idVarDef *funcDef )\r\n");
    return NULL;
}


/*
============
idCompiler::ParseObjectCall
============
*/
idVarDef *idCompiler::ParseObjectCall( idVarDef *object, idVarDef *func ) {
    Sys_Printf("idVarDef *idCompiler::ParseObjectCall( idVarDef *object, idVarDef *func )\r\n");
    return NULL;
}


/*
============
idCompiler::ParseEventCall
============
*/
idVarDef *idCompiler::ParseEventCall( idVarDef *object, idVarDef *funcDef ) {
    Sys_Printf("idVarDef *idCompiler::ParseEventCall( idVarDef *object, idVarDef *funcDef )\r\n");
    return NULL;
}


/*
============
idCompiler::ParseSysObjectCall
============
*/
idVarDef *idCompiler::ParseSysObjectCall( idVarDef *funcDef ) {
    Sys_Printf("idVarDef *idCompiler::ParseSysObjectCall( idVarDef *funcDef )\r\n");
    return NULL;
}


/*
============
idCompiler::LookupDef
============
*/
idVarDef *idCompiler::LookupDef( const char *name, const idVarDef *baseobj ) {
    Sys_Printf("idVarDef *idCompiler::LookupDef( const char *name, const idVarDef *baseobj )\r\n");
    return NULL;
}


/*
============
idCompiler::ParseValue

Returns the def for the current token
============
*/
idVarDef *idCompiler::ParseValue( void ) {
    Sys_Printf("idVarDef *idCompiler::ParseValue( void )\r\n");
    return NULL;
}


/*
============
idCompiler::GetTerm
============
*/
idVarDef *idCompiler::GetTerm( void ) {
    Sys_Printf("idVarDef *idCompiler::GetTerm( void )\r\n");
    return NULL;
}


/*
==============
idCompiler::TypeMatches
==============
*/
bool idCompiler::TypeMatches( etype_t type1, etype_t type2 ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCompiler::TypeMatches( etype_t type1, etype_t type2 )\r\n");
    return retVal;
}


/*
==============
idCompiler::GetExpression
==============
*/
idVarDef *idCompiler::GetExpression( int priority ) {
    Sys_Printf("idVarDef *idCompiler::GetExpression( int priority )\r\n");
    return NULL;
}


/*
================
idCompiler::PatchLoop
================
*/
void idCompiler::PatchLoop( int start, int continuePos ) {
    Sys_Printf("void idCompiler::PatchLoop( int start, int continuePos )\r\n");
}


/*
================
idCompiler::ParseReturnStatement
================
*/
void idCompiler::ParseReturnStatement( void ) {
    Sys_Printf("void idCompiler::ParseReturnStatement( void )\r\n");
}

	
/*
================
idCompiler::ParseWhileStatement
================
*/
void idCompiler::ParseWhileStatement( void ) {
    Sys_Printf("void idCompiler::ParseWhileStatement( void )\r\n");
}


/*
================
idCompiler::ParseForStatement

Form of for statement with a counter:

	a = 0;
start:					<< patch4
	if ( !( a < 10 ) ) {
		goto end;		<< patch1
	} else {
		goto process;	<< patch3
	}

increment:				<< patch2
	a = a + 1;
	goto start;			<< goto patch4

process:
	statements;
	goto increment;		<< goto patch2

end:

Form of for statement without a counter:

	a = 0;
start:					<< patch2
	if ( !( a < 10 ) ) {
		goto end;		<< patch1
	}

process:
	statements;
	goto start;			<< goto patch2

end:
================
*/
void idCompiler::ParseForStatement( void ) {
    Sys_Printf("void idCompiler::ParseForStatement( void )\r\n");
}


/*
================
idCompiler::ParseDoWhileStatement
================
*/
void idCompiler::ParseDoWhileStatement( void ) {
    Sys_Printf("void idCompiler::ParseDoWhileStatement( void )\r\n");
}


/*
================
idCompiler::ParseIfStatement
================
*/
void idCompiler::ParseIfStatement( void ) {
    Sys_Printf("void idCompiler::ParseIfStatement( void )\r\n");
}


/*
============
idCompiler::ParseStatement
============
*/
void idCompiler::ParseStatement( void ) {
    Sys_Printf("void idCompiler::ParseStatement( void )\r\n");
}


/*
================
idCompiler::ParseObjectDef
================
*/
void idCompiler::ParseObjectDef( const char *objname ) {
    Sys_Printf("void idCompiler::ParseObjectDef( const char *objname )\r\n");
}


/*
============
idCompiler::ParseFunction

parse a function type
============
*/
idTypeDef *idCompiler::ParseFunction( idTypeDef *returnType, const char *name ) {
    Sys_Printf("idTypeDef *idCompiler::ParseFunction( idTypeDef *returnType, const char *name )\r\n");
    return NULL;
}


/*
================
idCompiler::ParseFunctionDef
================
*/
void idCompiler::ParseFunctionDef( idTypeDef *returnType, const char *name ) {
    Sys_Printf("void idCompiler::ParseFunctionDef( idTypeDef *returnType, const char *name )\r\n");
}


/*
================
idCompiler::ParseVariableDef
================
*/
void idCompiler::ParseVariableDef( idTypeDef *type, const char *name ) {
    Sys_Printf("void idCompiler::ParseVariableDef( idTypeDef *type, const char *name )\r\n");
}


/*
================
idCompiler::GetTypeForEventArg
================
*/
idTypeDef *idCompiler::GetTypeForEventArg( char argType ) {
    Sys_Printf("idTypeDef *idCompiler::GetTypeForEventArg( char argType )\r\n");
    return NULL;
}


/*
================
idCompiler::ParseEventDef
================
*/
void idCompiler::ParseEventDef( idTypeDef *returnType, const char *name ) {
    Sys_Printf("void idCompiler::ParseEventDef( idTypeDef *returnType, const char *name )\r\n");
}


/*
================
idCompiler::ParseDefs

Called at the outer layer and when a local statement is hit
================
*/
void idCompiler::ParseDefs( void ) {
    Sys_Printf("void idCompiler::ParseDefs( void )\r\n");
}


/*
================
idCompiler::ParseNamespace

Parses anything within a namespace definition
================
*/
void idCompiler::ParseNamespace( idVarDef *newScope ) {
    Sys_Printf("void idCompiler::ParseNamespace( idVarDef *newScope )\r\n");
}


/*
============
idCompiler::CompileFile

compiles the 0 terminated text, adding definitions to the program structure
============
*/
void idCompiler::CompileFile( const char *text, const char *filename, bool toConsole ) {
    Sys_Printf("void idCompiler::CompileFile( const char *text, const char *filename, bool toConsole )\r\n");
}

