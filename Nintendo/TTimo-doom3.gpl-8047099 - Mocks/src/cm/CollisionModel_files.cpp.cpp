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

/*
===============================================================================

	Trace model vs. polygonal model collision detection.

===============================================================================
*/

#include "../idlib/precompiled.h"
#pragma hdrstop

#include "CollisionModel_local.h"

#define CM_FILE_EXT			"cm"
#define CM_FILEID			"CM"
#define CM_FILEVERSION		"1.00"


/*
===============================================================================

Writing of collision model file

===============================================================================
*/

void CM_GetNodeBounds( idBounds *bounds, cm_node_t *node );
int CM_GetNodeContents( cm_node_t *node );


/*
================
idCollisionModelManagerLocal::WriteNodes
================
*/
void idCollisionModelManagerLocal::WriteNodes( idFile *fp, cm_node_t *node ) {
    Sys_Printf("void idCollisionModelManagerLocal::WriteNodes( idFile *fp, cm_node_t *node )\r\n");
}


/*
================
idCollisionModelManagerLocal::CountPolygonMemory
================
*/
int idCollisionModelManagerLocal::CountPolygonMemory( cm_node_t *node ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::CountPolygonMemory( cm_node_t *node )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::WritePolygons
================
*/
void idCollisionModelManagerLocal::WritePolygons( idFile *fp, cm_node_t *node ) {
    Sys_Printf("void idCollisionModelManagerLocal::WritePolygons( idFile *fp, cm_node_t *node )\r\n");
}


/*
================
idCollisionModelManagerLocal::CountBrushMemory
================
*/
int idCollisionModelManagerLocal::CountBrushMemory( cm_node_t *node ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idCollisionModelManagerLocal::CountBrushMemory( cm_node_t *node )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::WriteBrushes
================
*/
void idCollisionModelManagerLocal::WriteBrushes( idFile *fp, cm_node_t *node ) {
    Sys_Printf("void idCollisionModelManagerLocal::WriteBrushes( idFile *fp, cm_node_t *node )\r\n");
}


/*
================
idCollisionModelManagerLocal::WriteCollisionModel
================
*/
void idCollisionModelManagerLocal::WriteCollisionModel( idFile *fp, cm_model_t *model ) {
    Sys_Printf("void idCollisionModelManagerLocal::WriteCollisionModel( idFile *fp, cm_model_t *model )\r\n");
}


/*
================
idCollisionModelManagerLocal::WriteCollisionModelsToFile
================
*/
void idCollisionModelManagerLocal::WriteCollisionModelsToFile( const char *filename, int firstModel, int lastModel, unsigned int mapFileCRC ) {
    Sys_Printf("void idCollisionModelManagerLocal::WriteCollisionModelsToFile( const char *filename, int firstModel, int lastModel, unsigned int mapFileCRC )\r\n");
}


/*
================
idCollisionModelManagerLocal::WriteCollisionModelForMapEntity
================
*/
bool idCollisionModelManagerLocal::WriteCollisionModelForMapEntity( const idMapEntity *mapEnt, const char *filename, const bool testTraceModel ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::WriteCollisionModelForMapEntity( const idMapEntity *mapEnt, const char *filename, const bool testTraceModel )\r\n");
    return retVal;
}



/*
===============================================================================

Loading of collision model file

===============================================================================
*/

/*
================
idCollisionModelManagerLocal::ParseVertices
================
*/
void idCollisionModelManagerLocal::ParseVertices( idLexer *src, cm_model_t *model ) {
    Sys_Printf("void idCollisionModelManagerLocal::ParseVertices( idLexer *src, cm_model_t *model )\r\n");
}


/*
================
idCollisionModelManagerLocal::ParseEdges
================
*/
void idCollisionModelManagerLocal::ParseEdges( idLexer *src, cm_model_t *model ) {
    Sys_Printf("void idCollisionModelManagerLocal::ParseEdges( idLexer *src, cm_model_t *model )\r\n");
}


/*
================
idCollisionModelManagerLocal::ParseNodes
================
*/
cm_node_t *idCollisionModelManagerLocal::ParseNodes( idLexer *src, cm_model_t *model, cm_node_t *parent ) {
    Sys_Printf("cm_node_t *idCollisionModelManagerLocal::ParseNodes( idLexer *src, cm_model_t *model, cm_node_t *parent )\r\n");
    return NULL;
}


/*
================
idCollisionModelManagerLocal::ParsePolygons
================
*/
void idCollisionModelManagerLocal::ParsePolygons( idLexer *src, cm_model_t *model ) {
    Sys_Printf("void idCollisionModelManagerLocal::ParsePolygons( idLexer *src, cm_model_t *model )\r\n");
}


/*
================
idCollisionModelManagerLocal::ParseBrushes
================
*/
void idCollisionModelManagerLocal::ParseBrushes( idLexer *src, cm_model_t *model ) {
    Sys_Printf("void idCollisionModelManagerLocal::ParseBrushes( idLexer *src, cm_model_t *model )\r\n");
}


/*
================
idCollisionModelManagerLocal::ParseCollisionModel
================
*/
bool idCollisionModelManagerLocal::ParseCollisionModel( idLexer *src ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::ParseCollisionModel( idLexer *src )\r\n");
    return retVal;
}


/*
================
idCollisionModelManagerLocal::LoadCollisionModelFile
================
*/
bool idCollisionModelManagerLocal::LoadCollisionModelFile( const char *name, unsigned int mapFileCRC ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idCollisionModelManagerLocal::LoadCollisionModelFile( const char *name, unsigned int mapFileCRC )\r\n");
    return retVal;
}

