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

#include "TypeInfo.h"

/*
==================
Cmd_GetFloatArg
==================
*/
float Cmd_GetFloatArg( const idCmdArgs &args, int &argNum ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float Cmd_GetFloatArg( const idCmdArgs &args, int &argNum )\r\n");
    return retVal;
}


/*
===================
Cmd_EntityList_f
===================
*/
void Cmd_EntityList_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_EntityList_f( const idCmdArgs &args )\r\n");
}


/*
===================
Cmd_ActiveEntityList_f
===================
*/
void Cmd_ActiveEntityList_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_ActiveEntityList_f( const idCmdArgs &args )\r\n");
}


/*
===================
Cmd_ListSpawnArgs_f
===================
*/
void Cmd_ListSpawnArgs_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_ListSpawnArgs_f( const idCmdArgs &args )\r\n");
}


/*
===================
Cmd_ReloadScript_f
===================
*/
void Cmd_ReloadScript_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_ReloadScript_f( const idCmdArgs &args )\r\n");
}


/*
===================
Cmd_Script_f
===================
*/
void Cmd_Script_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_Script_f( const idCmdArgs &args )\r\n");
}


/*
==================
KillEntities

Kills all the entities of the given class in a level.
==================
*/
void KillEntities( const idCmdArgs &args, const idTypeInfo &superClass ) {
    Sys_Printf("void KillEntities( const idCmdArgs &args, const idTypeInfo &superClass )\r\n");
}


/*
==================
Cmd_KillMonsters_f

Kills all the monsters in a level.
==================
*/
void Cmd_KillMonsters_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_KillMonsters_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_KillMovables_f

Kills all the moveables in a level.
==================
*/
void Cmd_KillMovables_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_KillMovables_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_KillRagdolls_f

Kills all the ragdolls in a level.
==================
*/
void Cmd_KillRagdolls_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_KillRagdolls_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_Give_f

Give items to a client
==================
*/
void Cmd_Give_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_Give_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_CenterView_f

Centers the players pitch
==================
*/
void Cmd_CenterView_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_CenterView_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_God_f

Sets client to godmode

argv(0) god
==================
*/
void Cmd_God_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_God_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_Notarget_f

Sets client to notarget

argv(0) notarget
==================
*/
void Cmd_Notarget_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_Notarget_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_Noclip_f

argv(0) noclip
==================
*/
void Cmd_Noclip_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_Noclip_f( const idCmdArgs &args )\r\n");
}


/*
=================
Cmd_Kill_f
=================
*/
void Cmd_Kill_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_Kill_f( const idCmdArgs &args )\r\n");
}


/*
=================
Cmd_PlayerModel_f
=================
*/
void Cmd_PlayerModel_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_PlayerModel_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_Say
==================
*/
static void Cmd_Say( bool team, const idCmdArgs &args ) {
    Sys_Printf("void Cmd_Say( bool team, const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_Say_f
==================
*/
static void Cmd_Say_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_Say_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_SayTeam_f
==================
*/
static void Cmd_SayTeam_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_SayTeam_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_AddChatLine_f
==================
*/
static void Cmd_AddChatLine_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_AddChatLine_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_Kick_f
==================
*/
static void Cmd_Kick_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_Kick_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_GetViewpos_f
==================
*/
void Cmd_GetViewpos_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_GetViewpos_f( const idCmdArgs &args )\r\n");
}


/*
=================
Cmd_SetViewpos_f
=================
*/
void Cmd_SetViewpos_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_SetViewpos_f( const idCmdArgs &args )\r\n");
}


/*
=================
Cmd_Teleport_f
=================
*/
void Cmd_Teleport_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_Teleport_f( const idCmdArgs &args )\r\n");
}


/*
=================
Cmd_Trigger_f
=================
*/
void Cmd_Trigger_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_Trigger_f( const idCmdArgs &args )\r\n");
}


/*
===================
Cmd_Spawn_f
===================
*/
void Cmd_Spawn_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_Spawn_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_Damage_f

Damages the specified entity
==================
*/
void Cmd_Damage_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_Damage_f( const idCmdArgs &args )\r\n");
}



/*
==================
Cmd_Remove_f

Removes the specified entity
==================
*/
void Cmd_Remove_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_Remove_f( const idCmdArgs &args )\r\n");
}


/*
===================
Cmd_TestLight_f
===================
*/
void Cmd_TestLight_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_TestLight_f( const idCmdArgs &args )\r\n");
}


/*
===================
Cmd_TestPointLight_f
===================
*/
void Cmd_TestPointLight_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_TestPointLight_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_PopLight_f
==================
*/
void Cmd_PopLight_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_PopLight_f( const idCmdArgs &args )\r\n");
}


/*
====================
Cmd_ClearLights_f
====================
*/
void Cmd_ClearLights_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_ClearLights_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_TestFx_f
==================
*/
void Cmd_TestFx_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_TestFx_f( const idCmdArgs &args )\r\n");
}


#define MAX_DEBUGLINES	128

typedef struct {
	bool used;
	idVec3 start, end;
	int color;
	bool blink;
	bool arrow;
} gameDebugLine_t;

gameDebugLine_t debugLines[MAX_DEBUGLINES];

/*
==================
Cmd_AddDebugLine_f
==================
*/
static void Cmd_AddDebugLine_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_AddDebugLine_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_RemoveDebugLine_f
==================
*/
static void Cmd_RemoveDebugLine_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_RemoveDebugLine_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_BlinkDebugLine_f
==================
*/
static void Cmd_BlinkDebugLine_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_BlinkDebugLine_f( const idCmdArgs &args )\r\n");
}


/*
==================
PrintFloat
==================
*/
static void PrintFloat( float f ) {
    Sys_Printf("void PrintFloat( float f )\r\n");
}


/*
==================
Cmd_ListDebugLines_f
==================
*/
static void Cmd_ListDebugLines_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_ListDebugLines_f( const idCmdArgs &args )\r\n");
}


/*
==================
D_DrawDebugLines
==================
*/
void D_DrawDebugLines( void ) {
    Sys_Printf("void D_DrawDebugLines( void )\r\n");
}


/*
==================
Cmd_ListCollisionModels_f
==================
*/
static void Cmd_ListCollisionModels_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_ListCollisionModels_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_CollisionModelInfo_f
==================
*/
static void Cmd_CollisionModelInfo_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_CollisionModelInfo_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_ExportModels_f
==================
*/
static void Cmd_ExportModels_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_ExportModels_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_ReexportModels_f
==================
*/
static void Cmd_ReexportModels_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_ReexportModels_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_ReloadAnims_f
==================
*/
static void Cmd_ReloadAnims_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_ReloadAnims_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_ListAnims_f
==================
*/
static void Cmd_ListAnims_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_ListAnims_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_AASStats_f
==================
*/
static void Cmd_AASStats_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_AASStats_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_TestDamage_f
==================
*/
static void Cmd_TestDamage_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_TestDamage_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_TestBoneFx_f
==================
*/
static void Cmd_TestBoneFx_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_TestBoneFx_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_TestDamage_f
==================
*/
static void Cmd_TestDeath_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_TestDeath_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_WeaponSplat_f
==================
*/
static void Cmd_WeaponSplat_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_WeaponSplat_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_SaveSelected_f
==================
*/
static void Cmd_SaveSelected_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_SaveSelected_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_DeleteSelected_f
==================
*/
static void Cmd_DeleteSelected_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_DeleteSelected_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_SaveMoveables_f
==================
*/
static void Cmd_SaveMoveables_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_SaveMoveables_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_SaveRagdolls_f
==================
*/
static void Cmd_SaveRagdolls_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_SaveRagdolls_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_BindRagdoll_f
==================
*/
static void Cmd_BindRagdoll_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_BindRagdoll_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_UnbindRagdoll_f
==================
*/
static void Cmd_UnbindRagdoll_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_UnbindRagdoll_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_GameError_f
==================
*/
static void Cmd_GameError_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_GameError_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_SaveLights_f
==================
*/
static void Cmd_SaveLights_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_SaveLights_f( const idCmdArgs &args )\r\n");
}



/*
==================
Cmd_SaveParticles_f
==================
*/
static void Cmd_SaveParticles_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_SaveParticles_f( const idCmdArgs &args )\r\n");
}



/*
==================
Cmd_DisasmScript_f
==================
*/
static void Cmd_DisasmScript_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_DisasmScript_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_TestSave_f
==================
*/
static void Cmd_TestSave_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_TestSave_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_RecordViewNotes_f
==================
*/
static void Cmd_RecordViewNotes_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_RecordViewNotes_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_CloseViewNotes_f
==================
*/
static void Cmd_CloseViewNotes_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_CloseViewNotes_f( const idCmdArgs &args )\r\n");
}


/*
==================
Cmd_ShowViewNotes_f
==================
*/
static void Cmd_ShowViewNotes_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_ShowViewNotes_f( const idCmdArgs &args )\r\n");
}


/*
=================
FindEntityGUIs

helper function for Cmd_NextGUI_f.  Checks the passed entity to determine if it
has any valid gui surfaces.
=================
*/
bool FindEntityGUIs( idEntity *ent, const modelSurface_t ** surfaces,  int maxSurfs, int &guiSurfaces ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool FindEntityGUIs( idEntity *ent, const modelSurface_t ** surfaces, int maxSurfs, int &guiSurfaces )\r\n");
    return retVal;
}


/*
=================
Cmd_NextGUI_f
=================
*/
void Cmd_NextGUI_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_NextGUI_f( const idCmdArgs &args )\r\n");
}


static void ArgCompletion_DefFile( const idCmdArgs &args, void(*callback)( const char *s ) ) {
	cmdSystem->ArgCompletion_FolderExtension( args, callback, "def/", true, ".def", NULL );
}

/*
===============
Cmd_TestId_f
outputs a string from the string table for the specified id
===============
*/
void Cmd_TestId_f( const idCmdArgs &args ) {
    Sys_Printf("void Cmd_TestId_f( const idCmdArgs &args )\r\n");
}


/*
=================
idGameLocal::InitConsoleCommands

Let the system know about all of our commands
so it can perform tab completion
=================
*/
void idGameLocal::InitConsoleCommands( void ) {
    Sys_Printf("void idGameLocal::InitConsoleCommands( void )\r\n");
}


/*
=================
idGameLocal::ShutdownConsoleCommands
=================
*/
void idGameLocal::ShutdownConsoleCommands( void ) {
    Sys_Printf("void idGameLocal::ShutdownConsoleCommands( void )\r\n");
}

