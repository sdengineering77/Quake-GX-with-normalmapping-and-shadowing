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

//#include <windows.h>
//#include <GL/gl.h>
#include "cg_explicit.h"

PFNCGCREATECONTEXTPROC cgCreateContext;
PFNCGDESTROYCONTEXTPROC cgDestroyContext;
PFNCGISCONTEXTPROC cgIsContext;
PFNCGGETLASTLISTINGPROC cgGetLastListing;
PFNCGCREATEPROGRAMPROC cgCreateProgram;
PFNCGCREATEPROGRAMFROMFILEPROC cgCreateProgramFromFile;
PFNCGCOPYPROGRAMPROC cgCopyProgram;
PFNCGDESTROYPROGRAMPROC cgDestroyProgram;
PFNCGGETFIRSTPROGRAMPROC cgGetFirstProgram;
PFNCGGETNEXTPROGRAMPROC cgGetNextProgram;
PFNCGGETPROGRAMCONTEXTPROC cgGetProgramContext;
PFNCGISPROGRAMPROC cgIsProgram;
PFNCGCOMPILEPROGRAMPROC cgCompileProgram;
PFNCGISPROGRAMCOMPILEDPROC cgIsProgramCompiled;
PFNCGGETPROGRAMSTRINGPROC cgGetProgramString;
PFNCGGETPROGRAMPROFILEPROC cgGetProgramProfile;
PFNCGGETNAMEDPARAMETERPROC cgGetNamedParameter;
PFNCGGETFIRSTPARAMETERPROC cgGetFirstParameter;
PFNCGGETNEXTPARAMETERPROC cgGetNextParameter;
PFNCGGETFIRSTLEAFPARAMETERPROC cgGetFirstLeafParameter;
PFNCGGETNEXTLEAFPARAMETERPROC cgGetNextLeafParameter;
PFNCGGETFIRSTSTRUCTPARAMETERPROC cgGetFirstStructParameter;
PFNCGGETFIRSTDEPENDENTPARAMETERPROC cgGetFirstDependentParameter;
PFNCGGETARRAYPARAMETERPROC cgGetArrayParameter;
PFNCGGETARRAYDIMENSIONPROC cgGetArrayDimension;
PFNCGGETARRAYSIZEPROC cgGetArraySize;
PFNCGGETPARAMETERPROGRAMPROC cgGetParameterProgram;
PFNCGISPARAMETERPROC cgIsParameter;
PFNCGGETPARAMETERNAMEPROC cgGetParameterName;
PFNCGGETPARAMETERTYPEPROC cgGetParameterType;
PFNCGGETPARAMETERSEMANTICPROC cgGetParameterSemantic;
PFNCGGETPARAMETERRESOURCEPROC cgGetParameterResource;
PFNCGGETPARAMETERBASERESOURCEPROC cgGetParameterBaseResource;
PFNCGGETPARAMETERRESOURCEINDEXPROC cgGetParameterResourceIndex;
PFNCGGETPARAMETERVARIABILITYPROC cgGetParameterVariability;
PFNCGGETPARAMETERDIRECTIONPROC cgGetParameterDirection;
PFNCGISPARAMETERREFERENCEDPROC cgIsParameterReferenced;
PFNCGGETPARAMETERVALUESPROC cgGetParameterValues;
PFNCGGETTYPESTRINGPROC cgGetTypeString;
PFNCGGETTYPEPROC cgGetType;
PFNCGGETRESOURCESTRINGPROC cgGetResourceString;
PFNCGGETRESOURCEPROC cgGetResource;
PFNCGGETPROFILESTRINGPROC cgGetProfileString;
PFNCGGETPROFILEPROC cgGetProfile;
PFNCGGETERRORPROC cgGetError;
PFNCGGETERRORSTRINGPROC cgGetErrorString;
PFNCGSETERRORCALLBACKPROC cgSetErrorCallback;
PFNCGGETERRORCALLBACKPROC cgGetErrorCallback;
PFNCGGLISPROFILESUPPORTEDPROC cgGLIsProfileSupported;
PFNCGGLENABLEPROFILEPROC cgGLEnableProfile;
PFNCGGLDISABLEPROFILEPROC cgGLDisableProfile;
PFNCGGLGETLATESTPROFILEPROC cgGLGetLatestProfile;
PFNCGGLSETOPTIMALOPTIONSPROC cgGLSetOptimalOptions;
PFNCGGLLOADPROGRAMPROC cgGLLoadProgram;
PFNCGGLBINDPROGRAMPROC cgGLBindProgram;
PFNCGGLSETPARAMETER1FPROC cgGLSetParameter1f;
PFNCGGLSETPARAMETER2FPROC cgGLSetParameter2f;
PFNCGGLSETPARAMETER3FPROC cgGLSetParameter3f;
PFNCGGLSETPARAMETER4FPROC cgGLSetParameter4f;
PFNCGGLSETPARAMETER1FVPROC cgGLSetParameter1fv;
PFNCGGLSETPARAMETER2FVPROC cgGLSetParameter2fv;
PFNCGGLSETPARAMETER3FVPROC cgGLSetParameter3fv;
PFNCGGLSETPARAMETER4FVPROC cgGLSetParameter4fv;
PFNCGGLSETPARAMETER1DPROC cgGLSetParameter1d;
PFNCGGLSETPARAMETER2DPROC cgGLSetParameter2d;
PFNCGGLSETPARAMETER3DPROC cgGLSetParameter3d;
PFNCGGLSETPARAMETER4DPROC cgGLSetParameter4d;
PFNCGGLSETPARAMETER1DVPROC cgGLSetParameter1dv;
PFNCGGLSETPARAMETER2DVPROC cgGLSetParameter2dv;
PFNCGGLSETPARAMETER3DVPROC cgGLSetParameter3dv;
PFNCGGLSETPARAMETER4DVPROC cgGLSetParameter4dv;
PFNCGGLGETPARAMETER1FPROC cgGLGetParameter1f;
PFNCGGLGETPARAMETER2FPROC cgGLGetParameter2f;
PFNCGGLGETPARAMETER3FPROC cgGLGetParameter3f;
PFNCGGLGETPARAMETER4FPROC cgGLGetParameter4f;
PFNCGGLGETPARAMETER1DPROC cgGLGetParameter1d;
PFNCGGLGETPARAMETER2DPROC cgGLGetParameter2d;
PFNCGGLGETPARAMETER3DPROC cgGLGetParameter3d;
PFNCGGLGETPARAMETER4DPROC cgGLGetParameter4d;
PFNCGGLSETPARAMETERARRAY1FPROC cgGLSetParameterArray1f;
PFNCGGLSETPARAMETERARRAY2FPROC cgGLSetParameterArray2f;
PFNCGGLSETPARAMETERARRAY3FPROC cgGLSetParameterArray3f;
PFNCGGLSETPARAMETERARRAY4FPROC cgGLSetParameterArray4f;
PFNCGGLSETPARAMETERARRAY1DPROC cgGLSetParameterArray1d;
PFNCGGLSETPARAMETERARRAY2DPROC cgGLSetParameterArray2d;
PFNCGGLSETPARAMETERARRAY3DPROC cgGLSetParameterArray3d;
PFNCGGLSETPARAMETERARRAY4DPROC cgGLSetParameterArray4d;
PFNCGGLGETPARAMETERARRAY1FPROC cgGLGetParameterArray1f;
PFNCGGLGETPARAMETERARRAY2FPROC cgGLGetParameterArray2f;
PFNCGGLGETPARAMETERARRAY3FPROC cgGLGetParameterArray3f;
PFNCGGLGETPARAMETERARRAY4FPROC cgGLGetParameterArray4f;
PFNCGGLGETPARAMETERARRAY1DPROC cgGLGetParameterArray1d;
PFNCGGLGETPARAMETERARRAY2DPROC cgGLGetParameterArray2d;
PFNCGGLGETPARAMETERARRAY3DPROC cgGLGetParameterArray3d;
PFNCGGLGETPARAMETERARRAY4DPROC cgGLGetParameterArray4d;
PFNCGGLSETPARAMETERPOINTERPROC cgGLSetParameterPointer;
PFNCGGLENABLECLIENTSTATEPROC cgGLEnableClientState;
PFNCGGLDISABLECLIENTSTATEPROC cgGLDisableClientState;
PFNCGGLSETMATRIXPARAMETERDRPROC cgGLSetMatrixParameterdr;
PFNCGGLSETMATRIXPARAMETERFRPROC cgGLSetMatrixParameterfr;
PFNCGGLSETMATRIXPARAMETERDCPROC cgGLSetMatrixParameterdc;
PFNCGGLSETMATRIXPARAMETERFCPROC cgGLSetMatrixParameterfc;
PFNCGGLGETMATRIXPARAMETERDRPROC cgGLGetMatrixParameterdr;
PFNCGGLGETMATRIXPARAMETERFRPROC cgGLGetMatrixParameterfr;
PFNCGGLGETMATRIXPARAMETERDCPROC cgGLGetMatrixParameterdc;
PFNCGGLGETMATRIXPARAMETERFCPROC cgGLGetMatrixParameterfc;
PFNCGGLSETSTATEMATRIXPARAMETERPROC cgGLSetStateMatrixParameter;
PFNCGGLSETMATRIXPARAMETERARRAYFCPROC cgGLSetMatrixParameterArrayfc;
PFNCGGLSETMATRIXPARAMETERARRAYFRPROC cgGLSetMatrixParameterArrayfr;
PFNCGGLSETMATRIXPARAMETERARRAYDCPROC cgGLSetMatrixParameterArraydc;
PFNCGGLSETMATRIXPARAMETERARRAYDRPROC cgGLSetMatrixParameterArraydr;
PFNCGGLGETMATRIXPARAMETERARRAYFCPROC cgGLGetMatrixParameterArrayfc;
PFNCGGLGETMATRIXPARAMETERARRAYFRPROC cgGLGetMatrixParameterArrayfr;
PFNCGGLGETMATRIXPARAMETERARRAYDCPROC cgGLGetMatrixParameterArraydc;
PFNCGGLGETMATRIXPARAMETERARRAYDRPROC cgGLGetMatrixParameterArraydr;
PFNCGGLSETTEXTUREPARAMETERPROC cgGLSetTextureParameter;
PFNCGGLGETTEXTUREPARAMETERPROC cgGLGetTextureParameter;
PFNCGGLENABLETEXTUREPARAMETERPROC cgGLEnableTextureParameter;
PFNCGGLDISABLETEXTUREPARAMETERPROC cgGLDisableTextureParameter;
PFNCGGLGETTEXTUREENUMPROC cgGLGetTextureEnum;

#ifndef _WIN32
bool init_explicit_Cg()
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool init_explicit_Cg()\r\n");
    return retVal;
}

#else
bool init_explicit_Cg()
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool init_explicit_Cg()\r\n");
    return retVal;
}

#endif
