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

#include "qe3.h"
#include "Radiant.h"

/*

  QERadiant Undo/Redo


basic setup:

<-g_undolist---------g_lastundo> <---map data---> <-g_lastredo---------g_redolist->


  undo/redo on the world_entity is special, only the epair changes are remembered
  and the world entity never gets deleted.

  FIXME: maybe reset the Undo system at map load
		 maybe also reset the entityId at map load
*/

typedef struct undo_s
{
	double time;				//time operation was performed
	int id;						//every undo has an unique id
	int done;					//true when undo is build
	char *operation;			//name of the operation
	brush_t brushlist;			//deleted brushes
	entity_t entitylist;		//deleted entities
	struct undo_s *prev, *next;	//next and prev undo in list
} undo_t;

undo_t *g_undolist;						//first undo in the list
undo_t *g_lastundo;						//last undo in the list
undo_t *g_redolist;						//first redo in the list
undo_t *g_lastredo;						//last undo in list
int g_undoMaxSize = 64;					//maximum number of undos
int g_undoSize = 0;						//number of undos in the list
int g_undoMaxMemorySize = 2*1024*1024;	//maximum undo memory (default 2 MB)
int g_undoMemorySize = 0;				//memory size of undo buffer
int g_undoId = 1;						//current undo ID (zero is invalid id)
int g_redoId = 1;						//current redo ID (zero is invalid id)


/*
=============
Undo_MemorySize
=============
*/
int Undo_MemorySize(void)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Undo_MemorySize(void)\r\n");
    return retVal;
}


/*
=============
Undo_ClearRedo
=============
*/
void Undo_ClearRedo(void)
{
    Sys_Printf("void Undo_ClearRedo(void)\r\n");
}


/*
=============
Undo_Clear

  Clears the undo buffer.
=============
*/
void Undo_Clear(void)
{
    Sys_Printf("void Undo_Clear(void)\r\n");
}


/*
=============
Undo_SetMaxSize
=============
*/
void Undo_SetMaxSize(int size)
{
    Sys_Printf("void Undo_SetMaxSize(int size)\r\n");
}


/*
=============
Undo_GetMaxSize
=============
*/
int Undo_GetMaxSize(void)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Undo_GetMaxSize(void)\r\n");
    return retVal;
}


/*
=============
Undo_SetMaxMemorySize
=============
*/
void Undo_SetMaxMemorySize(int size)
{
    Sys_Printf("void Undo_SetMaxMemorySize(int size)\r\n");
}


/*
=============
Undo_GetMaxMemorySize
=============
*/
int Undo_GetMaxMemorySize(void)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Undo_GetMaxMemorySize(void)\r\n");
    return retVal;
}


/*
=============
Undo_FreeFirstUndo
=============
*/
void Undo_FreeFirstUndo(void)
{
    Sys_Printf("void Undo_FreeFirstUndo(void)\r\n");
}


/*
=============
Undo_GeneralStart
=============
*/
void Undo_GeneralStart(char *operation)
{
    Sys_Printf("void Undo_GeneralStart(char *operation)\r\n");
}


/*
=============
Undo_BrushInUndo
=============
*/
int Undo_BrushInUndo(undo_t *undo, brush_t *brush)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Undo_BrushInUndo(undo_t *undo, brush_t *brush)\r\n");
    return retVal;
}


/*
=============
Undo_EntityInUndo
=============
*/
int Undo_EntityInUndo(undo_t *undo, entity_t *ent)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Undo_EntityInUndo(undo_t *undo, entity_t *ent)\r\n");
    return retVal;
}


/*
=============
Undo_Start
=============
*/
void Undo_Start(char *operation)
{
    Sys_Printf("void Undo_Start(char *operation)\r\n");
}


/*
=============
Undo_AddBrush
=============
*/
void Undo_AddBrush(brush_t *pBrush)
{
    Sys_Printf("void Undo_AddBrush(brush_t *pBrush)\r\n");
}


/*
=============
Undo_AddBrushList
=============
*/
void Undo_AddBrushList(brush_t *brushlist)
{
    Sys_Printf("void Undo_AddBrushList(brush_t *brushlist)\r\n");
}


/*
=============
Undo_EndBrush
=============
*/
void Undo_EndBrush(brush_t *pBrush)
{
    Sys_Printf("void Undo_EndBrush(brush_t *pBrush)\r\n");
}


/*
=============
Undo_EndBrushList
=============
*/
void Undo_EndBrushList(brush_t *brushlist)
{
    Sys_Printf("void Undo_EndBrushList(brush_t *brushlist)\r\n");
}


/*
=============
Undo_AddEntity
=============
*/
void Undo_AddEntity(entity_t *entity)
{
    Sys_Printf("void Undo_AddEntity(entity_t *entity)\r\n");
}


/*
=============
Undo_EndEntity
=============
*/
void Undo_EndEntity(entity_t *entity)
{
    Sys_Printf("void Undo_EndEntity(entity_t *entity)\r\n");
}


/*
=============
Undo_End
=============
*/
void Undo_End(void)
{
    Sys_Printf("void Undo_End(void)\r\n");
}


/*
=============
Undo_Undo
=============
*/
void Undo_Undo(void)
{
    Sys_Printf("void Undo_Undo(void)\r\n");
}


/*
=============
Undo_Redo
=============
*/
void Undo_Redo(void)
{
    Sys_Printf("void Undo_Redo(void)\r\n");
}


/*
=============
Undo_RedoAvailable
=============
*/
int Undo_RedoAvailable(void)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Undo_RedoAvailable(void)\r\n");
    return retVal;
}


/*
=============
Undo_UndoAvailable
=============
*/
int Undo_UndoAvailable(void)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int Undo_UndoAvailable(void)\r\n");
    return retVal;
}

