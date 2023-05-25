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

#include "tr_local.h"

/*

Any errors during parsing just set MF_DEFAULTED and return, rather than throwing
a hard error. This will cause the material to fall back to default material,
but otherwise let things continue.

Each material may have a set of calculations that must be evaluated before
drawing with it.

Every expression that a material uses can be evaluated at one time, which
will allow for perfect common subexpression removal when I get around to
writing it.

Without this, scrolling an entire surface could result in evaluating the
same texture matrix calculations a half dozen times.

  Open question: should I allow arbitrary per-vertex color, texCoord, and vertex
  calculations to be specified in the material code?

  Every stage will definately have a valid image pointer.

  We might want the ability to change the sort value based on conditionals,
  but it could be a hassle to implement,

*/

// keep all of these on the stack, when they are static it makes material parsing non-reentrant
typedef struct mtrParsingData_s {
	bool			registerIsTemporary[MAX_EXPRESSION_REGISTERS];
	float			shaderRegisters[MAX_EXPRESSION_REGISTERS];
	expOp_t			shaderOps[MAX_EXPRESSION_OPS];
	shaderStage_t	parseStages[MAX_SHADER_STAGES];

	bool			registersAreConstant;
	bool			forceOverlays;
} mtrParsingData_t;


/*
=============
idMaterial::CommonInit
=============
*/
void idMaterial::CommonInit() {
    Sys_Printf("void idMaterial::CommonInit()\r\n");
}


/*
=============
idMaterial::idMaterial
=============
*/
idMaterial::idMaterial() {
	CommonInit();

	// we put this here instead of in CommonInit, because
	// we don't want it cleared when a material is purged
	surfaceArea = 0;
}

/*
=============
idMaterial::~idMaterial
=============
*/
idMaterial::~idMaterial() {
}

/*
===============
idMaterial::FreeData
===============
*/
void idMaterial::FreeData() {
    Sys_Printf("void idMaterial::FreeData()\r\n");
}


/*
==============
idMaterial::GetEditorImage
==============
*/
idImage *idMaterial::GetEditorImage( void ) const {
    Sys_Printf("idImage *idMaterial::GetEditorImage( void )\r\n");
    return NULL;
}



// info parms
typedef struct {
	char	*name;
	int		clearSolid, surfaceFlags, contents;
} infoParm_t;

static infoParm_t	infoParms[] = {
	// game relevant attributes
	{"solid",		0,	0,	CONTENTS_SOLID },		// may need to override a clearSolid
	{"water",		1,	0,	CONTENTS_WATER },		// used for water
	{"playerclip",	0,	0,	CONTENTS_PLAYERCLIP },	// solid to players
	{"monsterclip",	0,	0,	CONTENTS_MONSTERCLIP },	// solid to monsters
	{"moveableclip",0,	0,	CONTENTS_MOVEABLECLIP },// solid to moveable entities
	{"ikclip",		0,	0,	CONTENTS_IKCLIP },		// solid to IK
	{"blood",		0,	0,	CONTENTS_BLOOD },		// used to detect blood decals
	{"trigger",		0,	0,	CONTENTS_TRIGGER },		// used for triggers
	{"aassolid",	0,	0,	CONTENTS_AAS_SOLID },	// solid for AAS
	{"aasobstacle",	0,	0,	CONTENTS_AAS_OBSTACLE },// used to compile an obstacle into AAS that can be enabled/disabled
	{"flashlight_trigger",	0,	0,	CONTENTS_FLASHLIGHT_TRIGGER }, // used for triggers that are activated by the flashlight
	{"nonsolid",	1,	0,	0 },					// clears the solid flag
	{"nullNormal",	0,	SURF_NULLNORMAL,0 },		// renderbump will draw as 0x80 0x80 0x80

	// utility relevant attributes
	{"areaportal",	1,	0,	CONTENTS_AREAPORTAL },	// divides areas
	{"qer_nocarve",	1,	0,	CONTENTS_NOCSG},		// don't cut brushes in editor

	{"discrete",	1,	SURF_DISCRETE,	0 },		// surfaces should not be automatically merged together or
													// clipped to the world,
													// because they represent discrete objects like gui shaders
													// mirrors, or autosprites
	{"noFragment",	0,	SURF_NOFRAGMENT,	0 },

	{"slick",		0,	SURF_SLICK,		0 },
	{"collision",	0,	SURF_COLLISION,	0 },
	{"noimpact",	0,	SURF_NOIMPACT,	0 },		// don't make impact explosions or marks
	{"nodamage",	0,	SURF_NODAMAGE,	0 },		// no falling damage when hitting
	{"ladder",		0,	SURF_LADDER,	0 },		// climbable
	{"nosteps",		0,	SURF_NOSTEPS,	0 },		// no footsteps

	// material types for particle, sound, footstep feedback
	{"metal",		0,  SURFTYPE_METAL,		0 },	// metal
	{"stone",		0,  SURFTYPE_STONE,		0 },	// stone
	{"flesh",		0,  SURFTYPE_FLESH,		0 },	// flesh
	{"wood",		0,  SURFTYPE_WOOD,		0 },	// wood
	{"cardboard",	0,	SURFTYPE_CARDBOARD,	0 },	// cardboard
	{"liquid",		0,	SURFTYPE_LIQUID,	0 },	// liquid
	{"glass",		0,	SURFTYPE_GLASS,		0 },	// glass
	{"plastic",		0,	SURFTYPE_PLASTIC,	0 },	// plastic
	{"ricochet",	0,	SURFTYPE_RICOCHET,	0 },	// behaves like metal but causes a ricochet sound

	// unassigned surface types
	{"surftype10",	0,	SURFTYPE_10,	0 },
	{"surftype11",	0,	SURFTYPE_11,	0 },
	{"surftype12",	0,	SURFTYPE_12,	0 },
	{"surftype13",	0,	SURFTYPE_13,	0 },
	{"surftype14",	0,	SURFTYPE_14,	0 },
	{"surftype15",	0,	SURFTYPE_15,	0 },
};

static const int numInfoParms = sizeof(infoParms) / sizeof (infoParms[0]);


/*
===============
idMaterial::CheckSurfaceParm

See if the current token matches one of the surface parm bit flags
===============
*/
bool idMaterial::CheckSurfaceParm( idToken *token ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMaterial::CheckSurfaceParm( idToken *token )\r\n");
    return retVal;
}


/*
===============
idMaterial::MatchToken

Sets defaultShader and returns false if the next token doesn't match
===============
*/
bool idMaterial::MatchToken( idLexer &src, const char *match ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMaterial::MatchToken( idLexer &src, const char *match )\r\n");
    return retVal;
}


/*
=================
idMaterial::ParseSort
=================
*/
void idMaterial::ParseSort( idLexer &src ) {
    Sys_Printf("void idMaterial::ParseSort( idLexer &src )\r\n");
}


/*
=================
idMaterial::ParseDecalInfo
=================
*/
void idMaterial::ParseDecalInfo( idLexer &src ) {
    Sys_Printf("void idMaterial::ParseDecalInfo( idLexer &src )\r\n");
}


/*
=============
idMaterial::GetExpressionConstant
=============
*/
int idMaterial::GetExpressionConstant( float f ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMaterial::GetExpressionConstant( float f )\r\n");
    return retVal;
}


/*
=============
idMaterial::GetExpressionTemporary
=============
*/
int idMaterial::GetExpressionTemporary( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMaterial::GetExpressionTemporary( void )\r\n");
    return retVal;
}


/*
=============
idMaterial::GetExpressionOp
=============
*/
expOp_t	*idMaterial::GetExpressionOp( void ) {
    Sys_Printf("expOp_t*idMaterial::GetExpressionOp( void )\r\n");
    return NULL;
}


/*
=================
idMaterial::EmitOp
=================
*/
int idMaterial::EmitOp( int a, int b, expOpType_t opType ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMaterial::EmitOp( int a, int b, expOpType_t opType )\r\n");
    return retVal;
}


/*
=================
idMaterial::ParseEmitOp
=================
*/
int idMaterial::ParseEmitOp( idLexer &src, int a, expOpType_t opType, int priority ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMaterial::ParseEmitOp( idLexer &src, int a, expOpType_t opType, int priority )\r\n");
    return retVal;
}


/*
=================
idMaterial::ParseTerm

Returns a register index
=================
*/
int idMaterial::ParseTerm( idLexer &src ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMaterial::ParseTerm( idLexer &src )\r\n");
    return retVal;
}


/*
=================
idMaterial::ParseExpressionPriority

Returns a register index
=================
*/
#define	TOP_PRIORITY 4
int idMaterial::ParseExpressionPriority( idLexer &src, int priority ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMaterial::ParseExpressionPriority( idLexer &src, int priority )\r\n");
    return retVal;
}


/*
=================
idMaterial::ParseExpression

Returns a register index
=================
*/
int idMaterial::ParseExpression( idLexer &src ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMaterial::ParseExpression( idLexer &src )\r\n");
    return retVal;
}



/*
===============
idMaterial::ClearStage
===============
*/
void idMaterial::ClearStage( shaderStage_t *ss ) {
    Sys_Printf("void idMaterial::ClearStage( shaderStage_t *ss )\r\n");
}


/*
===============
idMaterial::NameToSrcBlendMode
===============
*/
int idMaterial::NameToSrcBlendMode( const idStr &name ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMaterial::NameToSrcBlendMode( const idStr &name )\r\n");
    return retVal;
}


/*
===============
idMaterial::NameToDstBlendMode
===============
*/
int idMaterial::NameToDstBlendMode( const idStr &name ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMaterial::NameToDstBlendMode( const idStr &name )\r\n");
    return retVal;
}


/*
================
idMaterial::ParseBlend
================
*/
void idMaterial::ParseBlend( idLexer &src, shaderStage_t *stage ) {
    Sys_Printf("void idMaterial::ParseBlend( idLexer &src, shaderStage_t *stage )\r\n");
}


/*
================
idMaterial::ParseVertexParm

If there is a single value, it will be repeated across all elements
If there are two values, 3 = 0.0, 4 = 1.0
if there are three values, 4 = 1.0
================
*/
void idMaterial::ParseVertexParm( idLexer &src, newShaderStage_t *newStage ) {
    Sys_Printf("void idMaterial::ParseVertexParm( idLexer &src, newShaderStage_t *newStage )\r\n");
}



/*
================
idMaterial::ParseFragmentMap
================
*/
void idMaterial::ParseFragmentMap( idLexer &src, newShaderStage_t *newStage ) {
    Sys_Printf("void idMaterial::ParseFragmentMap( idLexer &src, newShaderStage_t *newStage )\r\n");
}


/*
===============
idMaterial::MultiplyTextureMatrix
===============
*/
void idMaterial::MultiplyTextureMatrix( textureStage_t *ts, int registers[2][3] ) {
    Sys_Printf("void idMaterial::MultiplyTextureMatrix( textureStage_t *ts, int registers[2][3] )\r\n");
}


/*
=================
idMaterial::ParseStage

An open brace has been parsed


{
	if <expression>
	map <imageprogram>
	"nearest" "linear" "clamp" "zeroclamp" "uncompressed" "highquality" "nopicmip"
	scroll, scale, rotate
}

=================
*/
void idMaterial::ParseStage( idLexer &src, const textureRepeat_t trpDefault ) {
    Sys_Printf("void idMaterial::ParseStage( idLexer &src, const textureRepeat_t trpDefault )\r\n");
}


/*
===============
idMaterial::ParseDeform
===============
*/
void idMaterial::ParseDeform( idLexer &src ) {
    Sys_Printf("void idMaterial::ParseDeform( idLexer &src )\r\n");
}



/*
==============
idMaterial::AddImplicitStages

If a material has diffuse or specular stages without any
bump stage, add an implicit _flat bumpmap stage.

If a material has a bump stage but no diffuse or specular
stage, add a _white diffuse stage.

It is valid to have either a diffuse or specular without the other.

It is valid to have a reflection map and a bump map for bumpy reflection
==============
*/
void idMaterial::AddImplicitStages( const textureRepeat_t trpDefault /* = TR_REPEAT  */ ) {
	char	buffer[1024];
	idLexer		newSrc;
	bool hasDiffuse = false;
	bool hasSpecular = false;
	bool hasBump = false;
	bool hasReflection = false;

	for ( int i = 0 ; i < numStages ; i++ ) {
		if ( pd->parseStages[i].lighting == SL_BUMP ) {
			hasBump = true;
		}
		if ( pd->parseStages[i].lighting == SL_DIFFUSE ) {
			hasDiffuse = true;
		}
		if ( pd->parseStages[i].lighting == SL_SPECULAR ) {
			hasSpecular = true;
		}
		if ( pd->parseStages[i].texture.texgen == TG_REFLECT_CUBE ) {
			hasReflection = true;
		}
	}

	// if it doesn't have an interaction at all, don't add anything
	if ( !hasBump && !hasDiffuse && !hasSpecular ) {
		return;
	}

	if ( numStages == MAX_SHADER_STAGES ) {
		return;
	}

	if ( !hasBump ) {
		idStr::snPrintf( buffer, sizeof( buffer ), "blend bumpmap\nmap _flat\n}\n" );
		newSrc.LoadMemory( buffer, strlen(buffer), "bumpmap" );
		newSrc.SetFlags( LEXFL_NOFATALERRORS | LEXFL_NOSTRINGCONCAT | LEXFL_NOSTRINGESCAPECHARS | LEXFL_ALLOWPATHNAMES );
		ParseStage( newSrc, trpDefault );
		newSrc.FreeSource();
	}

	if ( !hasDiffuse && !hasSpecular && !hasReflection ) {
		idStr::snPrintf( buffer, sizeof( buffer ), "blend diffusemap\nmap _white\n}\n" );
		newSrc.LoadMemory( buffer, strlen(buffer), "diffusemap" );
		newSrc.SetFlags( LEXFL_NOFATALERRORS | LEXFL_NOSTRINGCONCAT | LEXFL_NOSTRINGESCAPECHARS | LEXFL_ALLOWPATHNAMES );
		ParseStage( newSrc, trpDefault );
		newSrc.FreeSource();
	}

}

/*
===============
idMaterial::SortInteractionStages

The renderer expects bump, then diffuse, then specular
There can be multiple bump maps, followed by additional
diffuse and specular stages, which allows cross-faded bump mapping.

Ambient stages can be interspersed anywhere, but they are
ignored during interactions, and all the interaction
stages are ignored during ambient drawing.
===============
*/
void idMaterial::SortInteractionStages() {
    Sys_Printf("void idMaterial::SortInteractionStages()\r\n");
}


/*
=================
idMaterial::ParseMaterial

The current text pointer is at the explicit text definition of the
Parse it into the global material variable. Later functions will optimize it.

If there is any error during parsing, defaultShader will be set.
=================
*/
void idMaterial::ParseMaterial( idLexer &src ) {
    Sys_Printf("void idMaterial::ParseMaterial( idLexer &src )\r\n");
}


/*
=========================
idMaterial::SetGui
=========================
*/
void idMaterial::SetGui( const char *_gui ) const {
    Sys_Printf("void idMaterial::SetGui( const char *_gui )\r\n");
}


/*
=========================
idMaterial::Parse

Parses the current material definition and finds all necessary images.
=========================
*/
bool idMaterial::Parse( const char *text, const int textLength ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMaterial::Parse( const char *text, const int textLength )\r\n");
    return retVal;
}


/*
===================
idMaterial::Print
===================
*/
char *opNames[] = {
	"OP_TYPE_ADD",
	"OP_TYPE_SUBTRACT",
	"OP_TYPE_MULTIPLY",
	"OP_TYPE_DIVIDE",
	"OP_TYPE_MOD",
	"OP_TYPE_TABLE",
	"OP_TYPE_GT",
	"OP_TYPE_GE",
	"OP_TYPE_LT",
	"OP_TYPE_LE",
	"OP_TYPE_EQ",
	"OP_TYPE_NE",
	"OP_TYPE_AND",
	"OP_TYPE_OR"
};

void idMaterial::Print() const {
    Sys_Printf("void idMaterial::Print()\r\n");
}


/*
===============
idMaterial::Save
===============
*/
bool idMaterial::Save( const char *fileName ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMaterial::Save( const char *fileName )\r\n");
    return retVal;
}


/*
===============
idMaterial::AddReference
===============
*/
void idMaterial::AddReference() {
    Sys_Printf("void idMaterial::AddReference()\r\n");
}


/*
===============
idMaterial::EvaluateRegisters

Parameters are taken from the localSpace and the renderView,
then all expressions are evaluated, leaving the material registers
set to their apropriate values.
===============
*/
void idMaterial::EvaluateRegisters( float *registers, const float shaderParms[MAX_ENTITY_SHADER_PARMS],
									const viewDef_t *view, idSoundEmitter *soundEmitter ) const {
    Sys_Printf("void idMaterial::EvaluateRegisters( float *registers, const float shaderParms[MAX_ENTITY_SHADER_PARMS],const viewDef_t *view, idSoundEmitter *soundEmitter )\r\n");
}


/*
=============
idMaterial::Texgen
=============
*/
texgen_t idMaterial::Texgen() const {
    texgen_t retVal;
    memset(&retVal, 0, sizeof(texgen_t));
    Sys_Printf("texgen_t idMaterial::Texgen()\r\n");
    return retVal;
}


/*
=============
idMaterial::GetImageWidth
=============
*/
int idMaterial::GetImageWidth( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMaterial::GetImageWidth( void )\r\n");
    return retVal;
}


/*
=============
idMaterial::GetImageHeight
=============
*/
int idMaterial::GetImageHeight( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMaterial::GetImageHeight( void )\r\n");
    return retVal;
}


/*
=============
idMaterial::CinematicLength
=============
*/
int	idMaterial::CinematicLength() const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidMaterial::CinematicLength()\r\n");
    return retVal;
}


/*
=============
idMaterial::UpdateCinematic
=============
*/
void idMaterial::UpdateCinematic( int time ) const {
    Sys_Printf("void idMaterial::UpdateCinematic( int time )\r\n");
}


/*
=============
idMaterial::CloseCinematic
=============
*/
void idMaterial::CloseCinematic( void ) const {
    Sys_Printf("void idMaterial::CloseCinematic( void )\r\n");
}


/*
=============
idMaterial::ResetCinematicTime
=============
*/
void idMaterial::ResetCinematicTime( int time ) const {
    Sys_Printf("void idMaterial::ResetCinematicTime( int time )\r\n");
}


/*
=============
idMaterial::ConstantRegisters
=============
*/
const float *idMaterial::ConstantRegisters() const {
    Sys_Printf("float *idMaterial::ConstantRegisters()\r\n");
    return NULL;
}


/*
==================
idMaterial::CheckForConstantRegisters

As of 5/2/03, about half of the unique materials loaded on typical
maps are constant, but 2/3 of the surface references are.
This is probably an optimization of dubious value.
==================
*/
static int	c_constant, c_variable;
void idMaterial::CheckForConstantRegisters() {
    Sys_Printf("void idMaterial::CheckForConstantRegisters()\r\n");
}


/*
===================
idMaterial::ImageName
===================
*/
const char *idMaterial::ImageName( void ) const {
    Sys_Printf("char *idMaterial::ImageName( void )\r\n");
    return NULL;
}


/*
===================
idMaterial::SetImageClassifications

Just for image resource tracking.
===================
*/
void idMaterial::SetImageClassifications( int tag ) const {
    Sys_Printf("void idMaterial::SetImageClassifications( int tag )\r\n");
}


/*
=================
idMaterial::Size
=================
*/
size_t idMaterial::Size( void ) const {
    size_t retVal;
    memset(&retVal, 0, sizeof(size_t));
    Sys_Printf("size_t idMaterial::Size( void )\r\n");
    return retVal;
}


/*
===================
idMaterial::SetDefaultText
===================
*/
bool idMaterial::SetDefaultText( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMaterial::SetDefaultText( void )\r\n");
    return retVal;
}


/*
===================
idMaterial::DefaultDefinition
===================
*/
const char *idMaterial::DefaultDefinition() const {
    Sys_Printf("char *idMaterial::DefaultDefinition()\r\n");
    return NULL;
}



/*
===================
idMaterial::GetBumpStage
===================
*/
const shaderStage_t *idMaterial::GetBumpStage( void ) const {
    Sys_Printf("shaderStage_t *idMaterial::GetBumpStage( void )\r\n");
    return NULL;
}


/*
===================
idMaterial::ReloadImages
===================
*/
void idMaterial::ReloadImages( bool force ) const
{
    Sys_Printf("void idMaterial::ReloadImages( bool force )\r\n");
}

