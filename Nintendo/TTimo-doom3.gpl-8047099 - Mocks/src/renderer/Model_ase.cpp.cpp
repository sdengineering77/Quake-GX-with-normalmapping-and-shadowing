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

#include "Model_ase.h"

/*
======================================================================

	Parses 3D Studio Max ASCII export files.
	The goal is to parse the information into memory exactly as it is
	represented in the file.  Users of the data will then move it
	into a form that is more convenient for them.

======================================================================
*/
	

#define VERBOSE( x ) { if ( ase.verbose ) { common->Printf x ; } }

// working variables used during parsing
typedef struct {
	const char	*buffer;
	const char	*curpos;
	int			len;
	char		token[1024];

	bool	verbose;

	aseModel_t	*model;
	aseObject_t	*currentObject;
	aseMesh_t	*currentMesh;
	aseMaterial_t	*currentMaterial;
	int			currentFace;
	int			currentVertex;
} ase_t;

static ase_t ase;


static aseMesh_t *ASE_GetCurrentMesh( void )
{
    Sys_Printf("aseMesh_t *ASE_GetCurrentMesh( void )\r\n");
    return NULL;
}


static int CharIsTokenDelimiter( int ch )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int CharIsTokenDelimiter( int ch )\r\n");
    return retVal;
}


static int ASE_GetToken( bool restOfLine )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int ASE_GetToken( bool restOfLine )\r\n");
    return retVal;
}


static void ASE_ParseBracedBlock( void (*parser)( const char *token ) )
{
	int indent = 0;

	while ( ASE_GetToken( false ) )
	{
		if ( !strcmp( ase.token, "{" ) )
		{
			indent++;
		}
		else if ( !strcmp( ase.token, "}" ) )
		{
			--indent;
			if ( indent == 0 )
				break;
			else if ( indent < 0 )
				common->Error( "Unexpected '}'" );
		}
		else
		{
			if ( parser )
				parser( ase.token );
		}
	}
}

static void ASE_SkipEnclosingBraces( void )
{
    Sys_Printf("void ASE_SkipEnclosingBraces( void )\r\n");
}


static void ASE_SkipRestOfLine( void )
{
    Sys_Printf("void ASE_SkipRestOfLine( void )\r\n");
}


static void ASE_KeyMAP_DIFFUSE( const char *token )
{
    Sys_Printf("void ASE_KeyMAP_DIFFUSE( const char *token )\r\n");
}


static void ASE_KeyMATERIAL( const char *token )
{
    Sys_Printf("void ASE_KeyMATERIAL( const char *token )\r\n");
}


static void ASE_KeyMATERIAL_LIST( const char *token )
{
    Sys_Printf("void ASE_KeyMATERIAL_LIST( const char *token )\r\n");
}


static void ASE_KeyNODE_TM( const char *token )
{
    Sys_Printf("void ASE_KeyNODE_TM( const char *token )\r\n");
}


static void ASE_KeyMESH_VERTEX_LIST( const char *token )
{
    Sys_Printf("void ASE_KeyMESH_VERTEX_LIST( const char *token )\r\n");
}


static void ASE_KeyMESH_FACE_LIST( const char *token )
{
    Sys_Printf("void ASE_KeyMESH_FACE_LIST( const char *token )\r\n");
}


static void ASE_KeyTFACE_LIST( const char *token )
{
    Sys_Printf("void ASE_KeyTFACE_LIST( const char *token )\r\n");
}


static void ASE_KeyCFACE_LIST( const char *token )
{
    Sys_Printf("void ASE_KeyCFACE_LIST( const char *token )\r\n");
}


static void ASE_KeyMESH_TVERTLIST( const char *token )
{
    Sys_Printf("void ASE_KeyMESH_TVERTLIST( const char *token )\r\n");
}


static void ASE_KeyMESH_CVERTLIST( const char *token )
{
    Sys_Printf("void ASE_KeyMESH_CVERTLIST( const char *token )\r\n");
}


static void ASE_KeyMESH_NORMALS( const char *token )
{
    Sys_Printf("void ASE_KeyMESH_NORMALS( const char *token )\r\n");
}


static void ASE_KeyMESH( const char *token )
{
    Sys_Printf("void ASE_KeyMESH( const char *token )\r\n");
}


static void ASE_KeyMESH_ANIMATION( const char *token )
{
    Sys_Printf("void ASE_KeyMESH_ANIMATION( const char *token )\r\n");
}


static void ASE_KeyGEOMOBJECT( const char *token )
{
    Sys_Printf("void ASE_KeyGEOMOBJECT( const char *token )\r\n");
}


void ASE_ParseGeomObject( void ) {
    Sys_Printf("void ASE_ParseGeomObject( void )\r\n");
}


static void ASE_KeyGROUP( const char *token )
{
    Sys_Printf("void ASE_KeyGROUP( const char *token )\r\n");
}


/*
=================
ASE_Parse
=================
*/
aseModel_t *ASE_Parse( const char *buffer, bool verbose ) {
    Sys_Printf("aseModel_t *ASE_Parse( const char *buffer, bool verbose )\r\n");
    return NULL;
}


/*
=================
ASE_Load
=================
*/
aseModel_t *ASE_Load( const char *fileName ) {
    Sys_Printf("aseModel_t *ASE_Load( const char *fileName )\r\n");
    return NULL;
}


/*
=================
ASE_Free
=================
*/
void ASE_Free( aseModel_t *ase ) {
    Sys_Printf("void ASE_Free( aseModel_t *ase )\r\n");
}

