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

#include "Maya5.0/maya.h"
//#include "Maya6.0/maya.h"			// must also change include directory in project from "MayaImport\Maya4.5\include" to "MayaImport\Maya6.0\include" (requires MSDev 7.1)
#include "exporter.h"
#include "maya_main.h"

idStr	errorMessage;
bool	initialized = false;

#define DEFAULT_ANIM_EPSILON	0.125f
#define DEFAULT_QUAT_EPSILON	( 1.0f / 8192.0f )

#define SLOP_VERTEX				0.01f			// merge xyz coordinates this far apart
#define	SLOP_TEXCOORD			0.001f			// merge texture coordinates this far apart

const char *componentNames[ 6 ] = { "Tx", "Ty", "Tz", "Qx", "Qy", "Qz" };

idSys *			sys = NULL;
idCommon *		common = NULL;
idCVarSystem *	cvarSystem = NULL;

idCVar *		idCVar::staticVars = NULL;

/*
=================
MayaError
=================
*/
void MayaError( const char *fmt, ... ) {
    Sys_Printf("void MayaError( const char *fmt, ... )\r\n");
}


/*
=================
FS_WriteFloatString
=================
*/
#define	MAX_PRINT_MSG	4096
static int WriteFloatString( FILE *file, const char *fmt, ... ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int WriteFloatString( FILE *file, const char *fmt, ... )\r\n");
    return retVal;
}


/*
================
OSPathToRelativePath

takes a full OS path, as might be found in data from a media creation
program, and converts it to a qpath by stripping off directories

Returns false if the osPath tree doesn't match any of the existing
search paths.
================
*/
bool OSPathToRelativePath( const char *osPath, idStr &qpath, const char *game ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool OSPathToRelativePath( const char *osPath, idStr &qpath, const char *game )\r\n");
    return retVal;
}


/*
===============
ConvertFromIdSpace
===============
*/
idMat3 ConvertFromIdSpace( const idMat3 &idmat ) {
    idMat3 retVal;
    memset(&retVal, 0, sizeof(idMat3));
    Sys_Printf("idMat3 ConvertFromIdSpace( const idMat3 &idmat )\r\n");
    return retVal;
}


/*
===============
ConvertFromIdSpace
===============
*/
idVec3 ConvertFromIdSpace( const idVec3 &idpos ) {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 ConvertFromIdSpace( const idVec3 &idpos )\r\n");
    return retVal;
}


/*
===============
ConvertToIdSpace
===============
*/
idMat3 ConvertToIdSpace( const idMat3 &mat ) {
    idMat3 retVal;
    memset(&retVal, 0, sizeof(idMat3));
    Sys_Printf("idMat3 ConvertToIdSpace( const idMat3 &mat )\r\n");
    return retVal;
}


/*
===============
ConvertToIdSpace
===============
*/
idVec3 ConvertToIdSpace( const idVec3 &pos ) {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 ConvertToIdSpace( const idVec3 &pos )\r\n");
    return retVal;
}


/*
===============
idVec
===============
*/
idVec3 idVec( const MFloatPoint &point ) {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idVec( const MFloatPoint &point )\r\n");
    return retVal;
}


/*
===============
idVec
===============
*/
idVec3 idVec( const MMatrix &matrix ) {
    idVec3 retVal;
    memset(&retVal, 0, sizeof(idVec3));
    Sys_Printf("idVec3 idVec( const MMatrix &matrix )\r\n");
    return retVal;
}


/*
===============
idMat
===============
*/
idMat3 idMat( const MMatrix &matrix ) {
    idMat3 retVal;
    memset(&retVal, 0, sizeof(idMat3));
    Sys_Printf("idMat3 idMat( const MMatrix &matrix )\r\n");
    return retVal;
}


/*
===============
GetParent
===============
*/
MFnDagNode *GetParent( MFnDagNode *joint ) {
    Sys_Printf("MFnDagNode *GetParent( MFnDagNode *joint )\r\n");
    return NULL;
}


/*
==============================================================================================

	idTokenizer

==============================================================================================
*/

/*
====================
idTokenizer::SetTokens
====================
*/
int idTokenizer::SetTokens( const char *buffer ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTokenizer::SetTokens( const char *buffer )\r\n");
    return retVal;
}


/*
====================
idTokenizer::NextToken
====================
*/
const char *idTokenizer::NextToken( const char *errorstring ) {
    Sys_Printf("char *idTokenizer::NextToken( const char *errorstring )\r\n");
    return NULL;
}


/*
==============================================================================================

	idExportOptions

==============================================================================================
*/

/*
====================
idExportOptions::Reset
====================
*/
void idExportOptions::Reset( const char *commandline ) {
    Sys_Printf("void idExportOptions::Reset( const char *commandline )\r\n");
}


/*
====================
idExportOptions::idExportOptions
====================
*/
idExportOptions::idExportOptions( const char *commandline, const char *ospath ) {
	idStr		token;
	idNamePair	joints;
	int			i;
	idAnimGroup	*group;
	idStr		sourceDir;
	idStr		destDir;

	Reset( commandline );

	token = tokens.NextToken( "Missing export command" );
	if ( token == "mesh" ) {
		type = WRITE_MESH;
	} else if ( token == "anim" ) {
		type = WRITE_ANIM;
	} else if ( token == "camera" ) {
		type = WRITE_CAMERA;
	} else {
		MayaError( "Unknown export command '%s'", token.c_str() );
	}

	src = tokens.NextToken( "Missing source filename" );
	dest = src;

	for( token = tokens.NextToken(); token != ""; token = tokens.NextToken() ) {
		if ( token == "-force" ) {
			// skip
		} else if ( token == "-game" ) {
			// parse game name
			game = tokens.NextToken( "Expecting game name after -game" );

		} else if ( token == "-rename" ) {
			// parse joint to rename
			joints.from = tokens.NextToken( "Missing joint name for -rename.  Usage: -rename [joint name] [new name]" );
			joints.to	= tokens.NextToken( "Missing new name for -rename.  Usage: -rename [joint name] [new name]" );
			renamejoints.Append( joints );

		} else if ( token == "-prefix" ) {
			prefix = tokens.NextToken( "Missing name for -prefix.  Usage: -prefix [joint prefix]" );

		} else if ( token == "-parent" ) {
			// parse joint to reparent
			joints.from = tokens.NextToken( "Missing joint name for -parent.  Usage: -parent [joint name] [new parent]" );
			joints.to	= tokens.NextToken( "Missing new parent for -parent.  Usage: -parent [joint name] [new parent]" );
			remapjoints.Append( joints );

		} else if ( !token.Icmp( "-sourcedir" ) ) {
			// parse source directory
			sourceDir = tokens.NextToken( "Missing filename for -sourcedir.  Usage: -sourcedir [directory]" );

		} else if ( !token.Icmp( "-destdir" ) ) {
			// parse destination directory
			destDir = tokens.NextToken( "Missing filename for -destdir.  Usage: -destdir [directory]" );

		} else if ( token == "-dest" ) {
			// parse destination filename
			dest = tokens.NextToken( "Missing filename for -dest.  Usage: -dest [filename]" );

		} else if ( token == "-range" ) {
			// parse frame range to export
			token		= tokens.NextToken( "Missing start frame for -range.  Usage: -range [start frame] [end frame]" );
			startframe	= atoi( token );
			token		= tokens.NextToken( "Missing end frame for -range.  Usage: -range [start frame] [end frame]" );
			endframe	= atoi( token );

			if ( startframe > endframe ) {
				MayaError( "Start frame is greater than end frame." );
			}

		} else if ( !token.Icmp( "-cycleStart" ) ) {
			// parse start frame of cycle
			token		= tokens.NextToken( "Missing cycle start frame for -cycleStart.  Usage: -cycleStart [first frame of cycle]" );
			cycleStart	= atoi( token );

		} else if ( token == "-scale" ) {
			// parse scale
			token	= tokens.NextToken( "Missing scale amount for -scale.  Usage: -scale [scale amount]" );
			scale	= atof( token );

		} else if ( token == "-align" ) {
			// parse align joint
			align = tokens.NextToken( "Missing joint name for -align.  Usage: -align [joint name]" );

		} else if ( token == "-rotate" ) {
			// parse angle rotation
			token	= tokens.NextToken( "Missing value for -rotate.  Usage: -rotate [yaw]" );
			rotate	= -atof( token );

		} else if ( token == "-nomesh" ) {
			ignoreMeshes = true;

		} else if ( token == "-clearorigin" ) {
			clearOrigin = true;
			clearOriginAxis = true;

		} else if ( token == "-clearoriginaxis" ) {
			clearOriginAxis = true;

		} else if ( token == "-ignorescale" ) {
			ignoreScale = true;

		} else if ( token == "-xyzprecision" ) {
			// parse quaternion precision
			token = tokens.NextToken( "Missing value for -xyzprecision.  Usage: -xyzprecision [precision]" );
			xyzPrecision = atof( token );
			if ( xyzPrecision < 0.0f ) {
				MayaError( "Invalid value for -xyzprecision.  Must be >= 0" );
			}

		} else if ( token == "-quatprecision" ) {
			// parse quaternion precision
			token = tokens.NextToken( "Missing value for -quatprecision.  Usage: -quatprecision [precision]" );
			quatPrecision = atof( token );
			if ( quatPrecision < 0.0f ) {
				MayaError( "Invalid value for -quatprecision.  Must be >= 0" );
			}
		
		} else if ( token == "-jointthreshold" ) {
			// parse joint threshold
			token			= tokens.NextToken( "Missing weight for -jointthreshold.  Usage: -jointthreshold [minimum joint weight]" );
			jointThreshold	= atof( token );

		} else if ( token == "-skipmesh" ) {
			token = tokens.NextToken( "Missing name for -skipmesh.  Usage: -skipmesh [name of mesh to skip]" );
			skipmeshes.AddUnique( token );

		} else if ( token == "-keepmesh" ) {
			token = tokens.NextToken( "Missing name for -keepmesh.  Usage: -keepmesh [name of mesh to keep]" );
			keepmeshes.AddUnique( token );

		} else if ( token == "-jointgroup" ) {
			token	= tokens.NextToken( "Missing name for -jointgroup.  Usage: -jointgroup [group name] [joint1] [joint2]...[joint n]" );
			group = groups.Ptr();
			for( i = 0; i < groups.Num(); i++, group++ ) {
				if ( group->name == token ) {
					break;
				}
			}

			if ( i >= groups.Num() ) {
				// create a new group
				group = &groups.Alloc();
				group->name = token;
			}

			while( tokens.TokenAvailable() ) {
				token = tokens.NextToken();
				if ( token[ 0 ] == '-' ) {
					tokens.UnGetToken();
					break;
				}

				group->joints.AddUnique( token );
			}
		} else if ( token == "-group" ) {
			// add the list of groups to export (these don't affect the hierarchy)
			while( tokens.TokenAvailable() ) {
				token = tokens.NextToken();
				if ( token[ 0 ] == '-' ) {
					tokens.UnGetToken();
					break;
				}

				group = groups.Ptr();
				for( i = 0; i < groups.Num(); i++, group++ ) {
					if ( group->name == token ) {
						break;
					}
				}

				if ( i >= groups.Num() ) {
					MayaError( "Unknown group '%s'", token.c_str() );
				}

				exportgroups.AddUnique( group );
			}
		} else if ( token == "-keep" ) {
			// add joints that are kept whether they're used by a mesh or not
			while( tokens.TokenAvailable() ) {
				token = tokens.NextToken();
				if ( token[ 0 ] == '-' ) {
					tokens.UnGetToken();
					break;
				}
				keepjoints.AddUnique( token );
			}
		} else {
			MayaError( "Unknown option '%s'", token.c_str() );
		}
	}

	token = src;
	src = ospath;
	src.BackSlashesToSlashes();
	src.AppendPath( sourceDir );
	src.AppendPath( token );

	token = dest;
	dest = ospath;
	dest.BackSlashesToSlashes();
	dest.AppendPath( destDir );
	dest.AppendPath( token );

	// Maya only accepts unix style path separators
	src.BackSlashesToSlashes();
	dest.BackSlashesToSlashes();

	if ( skipmeshes.Num() && keepmeshes.Num() ) {
		MayaError( "Can't use -keepmesh and -skipmesh together." );
	}
}

/*
====================
idExportOptions::jointInExportGroup
====================
*/
bool idExportOptions::jointInExportGroup( const char *jointname ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idExportOptions::jointInExportGroup( const char *jointname )\r\n");
    return retVal;
}


/*
==============================================================================

idExportJoint

==============================================================================
*/

idExportJoint::idExportJoint() {
	index				= 0;
	exportNum			= 0;

	mayaNode.SetOwner( this );
	exportNode.SetOwner( this );

	dagnode				= NULL;
						
	t					= vec3_zero;
	wm					= mat3_default;
	bindpos				= vec3_zero;
	bindmat				= mat3_default;
	keep				= false;
	scale				= 1.0f;
	invscale			= 1.0f;
	animBits			= 0;
	firstComponent		= 0;
	baseFrame.q.Set( 0.0f, 0.0f, 0.0f );
	baseFrame.t.Zero();
}

idExportJoint &idExportJoint::operator=( const idExportJoint &other ) {
	name		= other.name;
	realname	= other.realname;
	longname	= other.longname;
	index		= other.index;
	exportNum	= other.exportNum;
	keep		= other.keep;
	
	scale		= other.scale;
	invscale	= other.invscale;
	
	dagnode		= other.dagnode;

	mayaNode	= other.mayaNode;
	exportNode	= other.exportNode;
	
	t			= other.t;
	idt			= other.idt;
	wm			= other.wm;
	idwm		= other.idwm;
	bindpos		= other.bindpos;
	bindmat		= other.bindmat;

	animBits	= other.animBits;
	firstComponent = other.firstComponent;
	baseFrame	= other.baseFrame;

	mayaNode.SetOwner( this );
	exportNode.SetOwner( this );

	return *this;
}

/*
==============================================================================

idExportMesh

==============================================================================
*/

void idExportMesh::ShareVerts( void ) {
    Sys_Printf("void idExportMesh::ShareVerts( void )\r\n");
}


void idExportMesh::Merge( idExportMesh *mesh ) {
    Sys_Printf("void idExportMesh::Merge( idExportMesh *mesh )\r\n");
}


void idExportMesh::GetBounds( idBounds &bounds ) const {
    Sys_Printf("void idExportMesh::GetBounds( idBounds &bounds )\r\n");
}


/*
==============================================================================

idExportModel

==============================================================================
*/

/*
====================
idExportModel::idExportModel
====================
*/
ID_INLINE idExportModel::idExportModel() {
    ID_INLINE retVal;
    memset(&retVal, 0, sizeof(ID_INLINE));
    Sys_Printf("ID_INLINE idExportModel::idExportModel()\r\n");
    return retVal;
}


/*
====================
idExportModel::~idExportModel
====================
*/
ID_INLINE idExportModel::~idExportModel() {
    ID_INLINE retVal;
    memset(&retVal, 0, sizeof(ID_INLINE));
    Sys_Printf("ID_INLINE idExportModel::~idExportModel()\r\n");
    return retVal;
}


idExportJoint *idExportModel::FindJointReal( const char *name ) {
    Sys_Printf("idExportJoint *idExportModel::FindJointReal( const char *name )\r\n");
    return NULL;
}


idExportJoint *idExportModel::FindJoint( const char *name ) {
    Sys_Printf("idExportJoint *idExportModel::FindJoint( const char *name )\r\n");
    return NULL;
}


bool idExportModel::WriteMesh( const char *filename, idExportOptions &options ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idExportModel::WriteMesh( const char *filename, idExportOptions &options )\r\n");
    return retVal;
}


bool idExportModel::WriteAnim( const char *filename, idExportOptions &options ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idExportModel::WriteAnim( const char *filename, idExportOptions &options )\r\n");
    return retVal;
}


bool idExportModel::WriteCamera( const char *filename, idExportOptions &options ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idExportModel::WriteCamera( const char *filename, idExportOptions &options )\r\n");
    return retVal;
}


/*
==============================================================================

Maya

==============================================================================
*/

/*
===============
idMayaExport::~idMayaExport

===============
*/
idMayaExport::~idMayaExport() {
	FreeDagNodes();

	// free up the file in Maya
	MFileIO::newFile( true );
}

/*
===============
idMayaExport::TimeForFrame
===============
*/
float idMayaExport::TimeForFrame( int num ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idMayaExport::TimeForFrame( int num )\r\n");
    return retVal;
}


/*
===============
idMayaExport::GetMayaFrameNum
===============
*/
int idMayaExport::GetMayaFrameNum( int num ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMayaExport::GetMayaFrameNum( int num )\r\n");
    return retVal;
}


/*
===============
idMayaExport::SetFrame
===============
*/
void idMayaExport::SetFrame( int num ) {
    Sys_Printf("void idMayaExport::SetFrame( int num )\r\n");
}


/*
===============
idMayaExport::PruneJoints
===============
*/
void idMayaExport::PruneJoints( idStrList &keepjoints, idStr &prefix ) {
    Sys_Printf("void idMayaExport::PruneJoints( idStrList &keepjoints, idStr &prefix )\r\n");
}


/*
===============
idMayaExport::FreeDagNodes
===============
*/
void idMayaExport::FreeDagNodes( void ) {
    Sys_Printf("void idMayaExport::FreeDagNodes( void )\r\n");
}


/*
===============
idMayaExport::GetBindPose
===============
*/
void idMayaExport::GetBindPose( MObject &jointNode, idExportJoint *joint, float scale ) {
    Sys_Printf("void idMayaExport::GetBindPose( MObject &jointNode, idExportJoint *joint, float scale )\r\n");
}


/*
===============
idMayaExport::GetLocalTransform
===============
*/
void idMayaExport::GetLocalTransform( idExportJoint *joint, idVec3 &pos, idMat3 &mat ) {
    Sys_Printf("void idMayaExport::GetLocalTransform( idExportJoint *joint, idVec3 &pos, idMat3 &mat )\r\n");
}


/*
===============
idMayaExport::GetWorldTransform
===============
*/
void idMayaExport::GetWorldTransform( idExportJoint *joint, idVec3 &pos, idMat3 &mat, float scale ) {
    Sys_Printf("void idMayaExport::GetWorldTransform( idExportJoint *joint, idVec3 &pos, idMat3 &mat, float scale )\r\n");
}


/*
===============
idMayaExport::CreateJoints
===============
*/
void idMayaExport::CreateJoints( float scale ) {
    Sys_Printf("void idMayaExport::CreateJoints( float scale )\r\n");
}


/*
===============
idMayaExport::RenameJoints
===============
*/
void idMayaExport::RenameJoints( idList<idNamePair> &renamejoints, idStr &prefix ) {
    Sys_Printf("void idMayaExport::RenameJoints( idList<idNamePair> &renamejoints, idStr &prefix )\r\n");
}


/*
===============
idMayaExport::RemapParents
===============
*/
bool idMayaExport::RemapParents( idList<idNamePair> &remapjoints ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMayaExport::RemapParents( idList<idNamePair> &remapjoints )\r\n");
    return retVal;
}


/*
===============
idMayaExport::FindShader

Find the shading node for the given shading group set node.
===============
*/
MObject idMayaExport::FindShader( MObject& setNode ) {
    MObject retVal;
    memset(&retVal, 0, sizeof(MObject));
    Sys_Printf("MObject idMayaExport::FindShader( MObject& setNode )\r\n");
    return retVal;
}


/*
===============
idMayaExport::GetTextureForMesh

Find the texture files that apply to the color of each polygon of
a selected shape if the shape has its polygons organized into sets.
===============
*/
void idMayaExport::GetTextureForMesh( idExportMesh *mesh, MFnDagNode &dagNode ) {
    Sys_Printf("void idMayaExport::GetTextureForMesh( idExportMesh *mesh, MFnDagNode &dagNode )\r\n");
}


/*
===============
idMayaExport::CopyMesh
===============
*/
idExportMesh *idMayaExport::CopyMesh( MFnSkinCluster &skinCluster, float scale ) {
    Sys_Printf("idExportMesh *idMayaExport::CopyMesh( MFnSkinCluster &skinCluster, float scale )\r\n");
    return NULL;
}


/*
===============
idMayaExport::CreateMesh
===============
*/
void idMayaExport::CreateMesh( float scale ) {
    Sys_Printf("void idMayaExport::CreateMesh( float scale )\r\n");
}


/*
===============
idMayaExport::CombineMeshes

combine surfaces with the same shader.
===============
*/
void idMayaExport::CombineMeshes( void ) {
    Sys_Printf("void idMayaExport::CombineMeshes( void )\r\n");
}


/*
===============
idMayaExport::GetAlignment
===============
*/
void idMayaExport::GetAlignment( idStr &alignName, idMat3 &align, float rotate, int startframe ) {
    Sys_Printf("void idMayaExport::GetAlignment( idStr &alignName, idMat3 &align, float rotate, int startframe )\r\n");
}


/*
===============
idMayaExport::GetObjectType

return the type of the object
===============
*/
const char *idMayaExport::GetObjectType( MObject object ) {
    Sys_Printf("char *idMayaExport::GetObjectType( MObject object )\r\n");
    return NULL;
}


/*
===============
idMayaExport::GetCameraFov
===============
*/
float idMayaExport::GetCameraFov( idExportJoint *joint ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idMayaExport::GetCameraFov( idExportJoint *joint )\r\n");
    return retVal;
}


/*
===============
idMayaExport::GetCameraFrame
===============
*/
void idMayaExport::GetCameraFrame( idExportJoint *camera, idMat3 &align, cameraFrame_t *cam ) {
    Sys_Printf("void idMayaExport::GetCameraFrame( idExportJoint *camera, idMat3 &align, cameraFrame_t *cam )\r\n");
}


/*
===============
idMayaExport::CreateCameraAnim
===============
*/
void idMayaExport::CreateCameraAnim( idMat3 &align ) {
    Sys_Printf("void idMayaExport::CreateCameraAnim( idMat3 &align )\r\n");
}


/*
===============
idMayaExport::GetDefaultPose
===============
*/
void idMayaExport::GetDefaultPose( idMat3 &align ) {
    Sys_Printf("void idMayaExport::GetDefaultPose( idMat3 &align )\r\n");
}


/*
===============
idMayaExport::CreateAnimation
===============
*/
void idMayaExport::CreateAnimation( idMat3 &align ) {
    Sys_Printf("void idMayaExport::CreateAnimation( idMat3 &align )\r\n");
}


/*
===============
idMayaExport::ConvertModel
===============
*/
void idMayaExport::ConvertModel( void ) {
    Sys_Printf("void idMayaExport::ConvertModel( void )\r\n");
}


/*
===============
idMayaExport::ConvertToMD3
===============
*/
void idMayaExport::ConvertToMD3( void ) {
    Sys_Printf("void idMayaExport::ConvertToMD3( void )\r\n");
}


/*
==============================================================================

dll setup

==============================================================================
*/

/*
===============
Maya_Shutdown
===============
*/
void Maya_Shutdown( void ) {
    Sys_Printf("void Maya_Shutdown( void )\r\n");
}


/*
===============
Maya_ConvertModel
===============
*/
const char *Maya_ConvertModel( const char *ospath, const char *commandline ) {
    Sys_Printf("char *Maya_ConvertModel( const char *ospath, const char *commandline )\r\n");
    return NULL;
}


/*
===============
dllEntry
===============
*/
bool dllEntry( int version, idCommon *common, idSys *sys ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool dllEntry( int version, idCommon *common, idSys *sys )\r\n");
    return retVal;
}


// Force type checking on the interface functions to help ensure that they match the ones in the .exe
const exporterDLLEntry_t	ValidateEntry = &dllEntry;
const exporterInterface_t	ValidateConvert = &Maya_ConvertModel;
const exporterShutdown_t	ValidateShutdown = &Maya_Shutdown;
