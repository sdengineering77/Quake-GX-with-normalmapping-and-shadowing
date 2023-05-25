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

#include "Model_local.h"
#include "tr_local.h"	// just for R_FreeWorldInteractions and R_CreateWorldInteractions


class idRenderModelManagerLocal : public idRenderModelManager {
public:
							idRenderModelManagerLocal();
	virtual					~idRenderModelManagerLocal() {
    virtual retVal;
    memset(&retVal, 0, sizeof(virtual));
    Sys_Printf("virtual~idRenderModelManagerLocal()\r\n");
    return retVal;
}


	virtual void			Init();
	virtual void			Shutdown();
	virtual idRenderModel *	AllocModel();
	virtual void			FreeModel( idRenderModel *model );
	virtual idRenderModel *	FindModel( const char *modelName );
	virtual idRenderModel *	CheckModel( const char *modelName );
	virtual idRenderModel *	DefaultModel();
	virtual void			AddModel( idRenderModel *model );
	virtual void			RemoveModel( idRenderModel *model );
	virtual void			ReloadModels( bool forceAll = false );
	virtual void			FreeModelVertexCaches();
	virtual void			WritePrecacheCommands( idFile *file );
	virtual void			BeginLevelLoad();
	virtual void			EndLevelLoad();

	virtual	void			PrintMemInfo( MemInfo_t *mi );

private:
	idList<idRenderModel*>	models;
	idHashIndex				hash;
	idRenderModel *			defaultModel;
	idRenderModel *			beamModel;
	idRenderModel *			spriteModel;
	idRenderModel *			trailModel;
	bool					insideLevelLoad;		// don't actually load now

	idRenderModel *			GetModel( const char *modelName, bool createIfNotFound );

	static void				PrintModel_f( const idCmdArgs &args );
	static void				ListModels_f( const idCmdArgs &args );
	static void				ReloadModels_f( const idCmdArgs &args );
	static void				TouchModel_f( const idCmdArgs &args );
};


idRenderModelManagerLocal	localModelManager;
idRenderModelManager *		renderModelManager = &localModelManager;

/*
==============
idRenderModelManagerLocal::idRenderModelManagerLocal
==============
*/
idRenderModelManagerLocal::idRenderModelManagerLocal() {
	defaultModel = NULL;
	beamModel = NULL;
	spriteModel = NULL;
	insideLevelLoad = false;
	trailModel = NULL;
}

/*
==============
idRenderModelManagerLocal::PrintModel_f
==============
*/
void idRenderModelManagerLocal::PrintModel_f( const idCmdArgs &args ) {
    Sys_Printf("void idRenderModelManagerLocal::PrintModel_f( const idCmdArgs &args )\r\n");
}


/*
==============
idRenderModelManagerLocal::ListModels_f
==============
*/
void idRenderModelManagerLocal::ListModels_f( const idCmdArgs &args ) {
    Sys_Printf("void idRenderModelManagerLocal::ListModels_f( const idCmdArgs &args )\r\n");
}


/*
==============
idRenderModelManagerLocal::ReloadModels_f
==============
*/
void idRenderModelManagerLocal::ReloadModels_f( const idCmdArgs &args ) {
    Sys_Printf("void idRenderModelManagerLocal::ReloadModels_f( const idCmdArgs &args )\r\n");
}


/*
==============
idRenderModelManagerLocal::TouchModel_f

Precache a specific model
==============
*/
void idRenderModelManagerLocal::TouchModel_f( const idCmdArgs &args ) {
    Sys_Printf("void idRenderModelManagerLocal::TouchModel_f( const idCmdArgs &args )\r\n");
}


/*
=================
idRenderModelManagerLocal::WritePrecacheCommands
=================
*/
void idRenderModelManagerLocal::WritePrecacheCommands( idFile *f ) {
    Sys_Printf("void idRenderModelManagerLocal::WritePrecacheCommands( idFile *f )\r\n");
}


/*
=================
idRenderModelManagerLocal::Init
=================
*/
void idRenderModelManagerLocal::Init() {
    Sys_Printf("void idRenderModelManagerLocal::Init()\r\n");
}


/*
=================
idRenderModelManagerLocal::Shutdown
=================
*/
void idRenderModelManagerLocal::Shutdown() {
    Sys_Printf("void idRenderModelManagerLocal::Shutdown()\r\n");
}


/*
=================
idRenderModelManagerLocal::GetModel
=================
*/
idRenderModel *idRenderModelManagerLocal::GetModel( const char *modelName, bool createIfNotFound ) {
    Sys_Printf("idRenderModel *idRenderModelManagerLocal::GetModel( const char *modelName, bool createIfNotFound )\r\n");
    return NULL;
}


/*
=================
idRenderModelManagerLocal::AllocModel
=================
*/
idRenderModel *idRenderModelManagerLocal::AllocModel() {
    Sys_Printf("idRenderModel *idRenderModelManagerLocal::AllocModel()\r\n");
    return NULL;
}


/*
=================
idRenderModelManagerLocal::FreeModel
=================
*/
void idRenderModelManagerLocal::FreeModel( idRenderModel *model ) {
    Sys_Printf("void idRenderModelManagerLocal::FreeModel( idRenderModel *model )\r\n");
}


/*
=================
idRenderModelManagerLocal::FindModel
=================
*/
idRenderModel *idRenderModelManagerLocal::FindModel( const char *modelName ) {
    Sys_Printf("idRenderModel *idRenderModelManagerLocal::FindModel( const char *modelName )\r\n");
    return NULL;
}


/*
=================
idRenderModelManagerLocal::CheckModel
=================
*/
idRenderModel *idRenderModelManagerLocal::CheckModel( const char *modelName ) {
    Sys_Printf("idRenderModel *idRenderModelManagerLocal::CheckModel( const char *modelName )\r\n");
    return NULL;
}


/*
=================
idRenderModelManagerLocal::DefaultModel
=================
*/
idRenderModel *idRenderModelManagerLocal::DefaultModel() {
    Sys_Printf("idRenderModel *idRenderModelManagerLocal::DefaultModel()\r\n");
    return NULL;
}


/*
=================
idRenderModelManagerLocal::AddModel
=================
*/
void idRenderModelManagerLocal::AddModel( idRenderModel *model ) {
    Sys_Printf("void idRenderModelManagerLocal::AddModel( idRenderModel *model )\r\n");
}


/*
=================
idRenderModelManagerLocal::RemoveModel
=================
*/
void idRenderModelManagerLocal::RemoveModel( idRenderModel *model ) {
    Sys_Printf("void idRenderModelManagerLocal::RemoveModel( idRenderModel *model )\r\n");
}


/*
=================
idRenderModelManagerLocal::ReloadModels
=================
*/
void idRenderModelManagerLocal::ReloadModels( bool forceAll ) {
    Sys_Printf("void idRenderModelManagerLocal::ReloadModels( bool forceAll )\r\n");
}


/*
=================
idRenderModelManagerLocal::FreeModelVertexCaches
=================
*/
void idRenderModelManagerLocal::FreeModelVertexCaches() {
    Sys_Printf("void idRenderModelManagerLocal::FreeModelVertexCaches()\r\n");
}


/*
=================
idRenderModelManagerLocal::BeginLevelLoad
=================
*/
void idRenderModelManagerLocal::BeginLevelLoad() {
    Sys_Printf("void idRenderModelManagerLocal::BeginLevelLoad()\r\n");
}


/*
=================
idRenderModelManagerLocal::EndLevelLoad
=================
*/
void idRenderModelManagerLocal::EndLevelLoad() {
    Sys_Printf("void idRenderModelManagerLocal::EndLevelLoad()\r\n");
}


/*
=================
idRenderModelManagerLocal::PrintMemInfo
=================
*/
void idRenderModelManagerLocal::PrintMemInfo( MemInfo_t *mi ) {
    Sys_Printf("void idRenderModelManagerLocal::PrintMemInfo( MemInfo_t *mi )\r\n");
}

