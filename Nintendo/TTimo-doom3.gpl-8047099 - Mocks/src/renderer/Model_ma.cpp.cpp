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

#include "Model_ma.h"

/*
======================================================================

	Parses Maya ASCII files.

======================================================================
*/
	

#define MA_VERBOSE( x ) { if ( maGlobal.verbose ) { common->Printf x ; } }

// working variables used during parsing
typedef struct {
	bool			verbose;
	maModel_t		*model;
	maObject_t		*currentObject;
} ma_t;

static ma_t maGlobal;


void MA_ParseNodeHeader(idParser& parser, maNodeHeader_t* header) {
    Sys_Printf("void MA_ParseNodeHeader(idParser& parser, maNodeHeader_t* header)\r\n");
}


bool MA_ParseHeaderIndex(maAttribHeader_t* header, int& minIndex, int& maxIndex, const char* headerType, const char* skipString) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MA_ParseHeaderIndex(maAttribHeader_t* header, int& minIndex, int& maxIndex, const char* headerType, const char* skipString)\r\n");
    return retVal;
}


bool MA_ParseAttribHeader(idParser &parser, maAttribHeader_t* header) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MA_ParseAttribHeader(idParser &parser, maAttribHeader_t* header)\r\n");
    return retVal;
}


bool MA_ReadVec3(idParser& parser, idVec3& vec) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MA_ReadVec3(idParser& parser, idVec3& vec)\r\n");
    return retVal;
}


bool IsNodeComplete(idToken& token) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool IsNodeComplete(idToken& token)\r\n");
    return retVal;
}


bool MA_ParseTransform(idParser& parser) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MA_ParseTransform(idParser& parser)\r\n");
    return retVal;
}


bool MA_ParseVertex(idParser& parser, maAttribHeader_t* header) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MA_ParseVertex(idParser& parser, maAttribHeader_t* header)\r\n");
    return retVal;
}


bool MA_ParseVertexTransforms(idParser& parser, maAttribHeader_t* header) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MA_ParseVertexTransforms(idParser& parser, maAttribHeader_t* header)\r\n");
    return retVal;
}


bool MA_ParseEdge(idParser& parser, maAttribHeader_t* header) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MA_ParseEdge(idParser& parser, maAttribHeader_t* header)\r\n");
    return retVal;
}


bool MA_ParseNormal(idParser& parser, maAttribHeader_t* header) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MA_ParseNormal(idParser& parser, maAttribHeader_t* header)\r\n");
    return retVal;
}




bool MA_ParseFace(idParser& parser, maAttribHeader_t* header) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MA_ParseFace(idParser& parser, maAttribHeader_t* header)\r\n");
    return retVal;
}


bool MA_ParseColor(idParser& parser, maAttribHeader_t* header) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MA_ParseColor(idParser& parser, maAttribHeader_t* header)\r\n");
    return retVal;
}


bool MA_ParseTVert(idParser& parser, maAttribHeader_t* header) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MA_ParseTVert(idParser& parser, maAttribHeader_t* header)\r\n");
    return retVal;
}




/*
*	Quick check to see if the vert participates in a shared normal
*/
bool MA_QuickIsVertShared(int faceIndex, int vertIndex) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MA_QuickIsVertShared(int faceIndex, int vertIndex)\r\n");
    return retVal;
}


void MA_GetSharedFace(int faceIndex, int vertIndex, int& sharedFace, int& sharedVert) {
    Sys_Printf("void MA_GetSharedFace(int faceIndex, int vertIndex, int& sharedFace, int& sharedVert)\r\n");
}


void MA_ParseMesh(idParser& parser) {
    Sys_Printf("void MA_ParseMesh(idParser& parser)\r\n");
}


void MA_ParseFileNode(idParser& parser) {
    Sys_Printf("void MA_ParseFileNode(idParser& parser)\r\n");
}


void MA_ParseMaterialNode(idParser& parser) {
    Sys_Printf("void MA_ParseMaterialNode(idParser& parser)\r\n");
}


void MA_ParseCreateNode(idParser& parser) {
    Sys_Printf("void MA_ParseCreateNode(idParser& parser)\r\n");
}



int MA_AddMaterial(const char* materialName) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int MA_AddMaterial(const char* materialName)\r\n");
    return retVal;
}


bool MA_ParseConnectAttr(idParser& parser) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool MA_ParseConnectAttr(idParser& parser)\r\n");
    return retVal;
}



void MA_BuildScale(idMat4& mat, float x, float y, float z) {
    Sys_Printf("void MA_BuildScale(idMat4& mat, float x, float y, float z)\r\n");
}


void MA_BuildAxisRotation(idMat4& mat, float ang, int axis) {
    Sys_Printf("void MA_BuildAxisRotation(idMat4& mat, float ang, int axis)\r\n");
}


void MA_ApplyTransformation(maModel_t *model) {
    Sys_Printf("void MA_ApplyTransformation(maModel_t *model)\r\n");
}


/*
=================
MA_Parse
=================
*/
maModel_t *MA_Parse( const char *buffer, const char* filename, bool verbose ) {
    Sys_Printf("maModel_t *MA_Parse( const char *buffer, const char* filename, bool verbose )\r\n");
    return NULL;
}


/*
=================
MA_Load
=================
*/
maModel_t *MA_Load( const char *fileName ) {
    Sys_Printf("maModel_t *MA_Load( const char *fileName )\r\n");
    return NULL;
}


/*
=================
MA_Free
=================
*/
void MA_Free( maModel_t *ma ) {
    Sys_Printf("void MA_Free( maModel_t *ma )\r\n");
}

