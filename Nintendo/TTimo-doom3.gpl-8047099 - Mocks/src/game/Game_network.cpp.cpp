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

#include "Game_local.h"

/*
===============================================================================

	Client running game code:
	- entity events don't work and should not be issued
	- entities should never be spawned outside idGameLocal::ClientReadSnapshot

===============================================================================
*/

// adds tags to the network protocol to detect when things go bad ( internal consistency )
// NOTE: this changes the network protocol
#ifndef ASYNC_WRITE_TAGS
	#define ASYNC_WRITE_TAGS 0
#endif

idCVar net_clientShowSnapshot( "net_clientShowSnapshot", "0", CVAR_GAME | CVAR_INTEGER, "", 0, 3, idCmdSystem::ArgCompletion_Integer<0,3> );
idCVar net_clientShowSnapshotRadius( "net_clientShowSnapshotRadius", "128", CVAR_GAME | CVAR_FLOAT, "" );
idCVar net_clientSmoothing( "net_clientSmoothing", "0.8", CVAR_GAME | CVAR_FLOAT, "smooth other clients angles and position.", 0.0f, 0.95f );
idCVar net_clientSelfSmoothing( "net_clientSelfSmoothing", "0.6", CVAR_GAME | CVAR_FLOAT, "smooth self position if network causes prediction error.", 0.0f, 0.95f );
idCVar net_clientMaxPrediction( "net_clientMaxPrediction", "1000", CVAR_SYSTEM | CVAR_INTEGER | CVAR_NOCHEAT, "maximum number of milliseconds a client can predict ahead of server." );
idCVar net_clientLagOMeter( "net_clientLagOMeter", "1", CVAR_GAME | CVAR_BOOL | CVAR_NOCHEAT | CVAR_ARCHIVE, "draw prediction graph" );

/*
================
idGameLocal::InitAsyncNetwork
================
*/
void idGameLocal::InitAsyncNetwork( void ) {
    Sys_Printf("void idGameLocal::InitAsyncNetwork( void )\r\n");
}


/*
================
idGameLocal::ShutdownAsyncNetwork
================
*/
void idGameLocal::ShutdownAsyncNetwork( void ) {
    Sys_Printf("void idGameLocal::ShutdownAsyncNetwork( void )\r\n");
}


/*
================
idGameLocal::InitLocalClient
================
*/
void idGameLocal::InitLocalClient( int clientNum ) {
    Sys_Printf("void idGameLocal::InitLocalClient( int clientNum )\r\n");
}


/*
================
idGameLocal::InitClientDeclRemap
================
*/
void idGameLocal::InitClientDeclRemap( int clientNum ) {
    Sys_Printf("void idGameLocal::InitClientDeclRemap( int clientNum )\r\n");
}


/*
================
idGameLocal::ServerSendDeclRemapToClient
================
*/
void idGameLocal::ServerSendDeclRemapToClient( int clientNum, declType_t type, int index ) {
    Sys_Printf("void idGameLocal::ServerSendDeclRemapToClient( int clientNum, declType_t type, int index )\r\n");
}


/*
================
idGameLocal::ServerRemapDecl
================
*/
int idGameLocal::ServerRemapDecl( int clientNum, declType_t type, int index ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idGameLocal::ServerRemapDecl( int clientNum, declType_t type, int index )\r\n");
    return retVal;
}


/*
================
idGameLocal::ClientRemapDecl
================
*/
int idGameLocal::ClientRemapDecl( declType_t type, int index ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idGameLocal::ClientRemapDecl( declType_t type, int index )\r\n");
    return retVal;
}


/*
================
idGameLocal::ServerAllowClient
================
*/
allowReply_t idGameLocal::ServerAllowClient( int numClients, const char *IP, const char *guid, const char *password, char reason[ MAX_STRING_CHARS ] ) {
    allowReply_t retVal;
    memset(&retVal, 0, sizeof(allowReply_t));
    Sys_Printf("allowReply_t idGameLocal::ServerAllowClient( int numClients, const char *IP, const char *guid, const char *password, char reason[ MAX_STRING_CHARS ] )\r\n");
    return retVal;
}


/*
================
idGameLocal::ServerClientConnect
================
*/
void idGameLocal::ServerClientConnect( int clientNum, const char *guid ) {
    Sys_Printf("void idGameLocal::ServerClientConnect( int clientNum, const char *guid )\r\n");
}


/*
================
idGameLocal::ServerClientBegin
================
*/
void idGameLocal::ServerClientBegin( int clientNum ) {
    Sys_Printf("void idGameLocal::ServerClientBegin( int clientNum )\r\n");
}


/*
================
idGameLocal::ServerClientDisconnect
================
*/
void idGameLocal::ServerClientDisconnect( int clientNum ) {
    Sys_Printf("void idGameLocal::ServerClientDisconnect( int clientNum )\r\n");
}


/*
================
idGameLocal::ServerWriteInitialReliableMessages

  Send reliable messages to initialize the client game up to a certain initial state.
================
*/
void idGameLocal::ServerWriteInitialReliableMessages( int clientNum ) {
    Sys_Printf("void idGameLocal::ServerWriteInitialReliableMessages( int clientNum )\r\n");
}


/*
================
idGameLocal::SaveEntityNetworkEvent
================
*/
void idGameLocal::SaveEntityNetworkEvent( const idEntity *ent, int eventId, const idBitMsg *msg ) {
    Sys_Printf("void idGameLocal::SaveEntityNetworkEvent( const idEntity *ent, int eventId, const idBitMsg *msg )\r\n");
}


/*
================
idGameLocal::FreeSnapshotsOlderThanSequence
================
*/
void idGameLocal::FreeSnapshotsOlderThanSequence( int clientNum, int sequence ) {
    Sys_Printf("void idGameLocal::FreeSnapshotsOlderThanSequence( int clientNum, int sequence )\r\n");
}


/*
================
idGameLocal::ApplySnapshot
================
*/
bool idGameLocal::ApplySnapshot( int clientNum, int sequence ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::ApplySnapshot( int clientNum, int sequence )\r\n");
    return retVal;
}


/*
================
idGameLocal::WriteGameStateToSnapshot
================
*/
void idGameLocal::WriteGameStateToSnapshot( idBitMsgDelta &msg ) const {
    Sys_Printf("void idGameLocal::WriteGameStateToSnapshot( idBitMsgDelta &msg )\r\n");
}


/*
================
idGameLocal::ReadGameStateFromSnapshot
================
*/
void idGameLocal::ReadGameStateFromSnapshot( const idBitMsgDelta &msg ) {
    Sys_Printf("void idGameLocal::ReadGameStateFromSnapshot( const idBitMsgDelta &msg )\r\n");
}


/*
================
idGameLocal::ServerWriteSnapshot

  Write a snapshot of the current game state for the given client.
================
*/
void idGameLocal::ServerWriteSnapshot( int clientNum, int sequence, idBitMsg &msg, byte *clientInPVS, int numPVSClients ) {
    Sys_Printf("void idGameLocal::ServerWriteSnapshot( int clientNum, int sequence, idBitMsg &msg, byte *clientInPVS, int numPVSClients )\r\n");
}


/*
================
idGameLocal::ServerApplySnapshot
================
*/
bool idGameLocal::ServerApplySnapshot( int clientNum, int sequence ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::ServerApplySnapshot( int clientNum, int sequence )\r\n");
    return retVal;
}


/*
================
idGameLocal::NetworkEventWarning
================
*/
void idGameLocal::NetworkEventWarning( const entityNetEvent_t *event, const char *fmt, ... ) {
    Sys_Printf("void idGameLocal::NetworkEventWarning( const entityNetEvent_t *event, const char *fmt, ... )\r\n");
}


/*
================
idGameLocal::ServerProcessEntityNetworkEventQueue
================
*/
void idGameLocal::ServerProcessEntityNetworkEventQueue( void ) {
    Sys_Printf("void idGameLocal::ServerProcessEntityNetworkEventQueue( void )\r\n");
}


/*
================
idGameLocal::ServerSendChatMessage
================
*/
void idGameLocal::ServerSendChatMessage( int to, const char *name, const char *text ) {
    Sys_Printf("void idGameLocal::ServerSendChatMessage( int to, const char *name, const char *text )\r\n");
}


/*
================
idGameLocal::ServerProcessReliableMessage
================
*/
void idGameLocal::ServerProcessReliableMessage( int clientNum, const idBitMsg &msg ) {
    Sys_Printf("void idGameLocal::ServerProcessReliableMessage( int clientNum, const idBitMsg &msg )\r\n");
}


/*
================
idGameLocal::ClientShowSnapshot
================
*/
void idGameLocal::ClientShowSnapshot( int clientNum ) const {
    Sys_Printf("void idGameLocal::ClientShowSnapshot( int clientNum )\r\n");
}


/*
================
idGameLocal::UpdateLagometer
================
*/
void idGameLocal::UpdateLagometer( int aheadOfServer, int dupeUsercmds ) {
    Sys_Printf("void idGameLocal::UpdateLagometer( int aheadOfServer, int dupeUsercmds )\r\n");
}


/*
================
idGameLocal::ClientReadSnapshot
================
*/
void idGameLocal::ClientReadSnapshot( int clientNum, int sequence, const int gameFrame, const int gameTime, const int dupeUsercmds, const int aheadOfServer, const idBitMsg &msg ) {
    Sys_Printf("void idGameLocal::ClientReadSnapshot( int clientNum, int sequence, const int gameFrame, const int gameTime, const int dupeUsercmds, const int aheadOfServer, const idBitMsg &msg )\r\n");
}


/*
================
idGameLocal::ClientApplySnapshot
================
*/
bool idGameLocal::ClientApplySnapshot( int clientNum, int sequence ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::ClientApplySnapshot( int clientNum, int sequence )\r\n");
    return retVal;
}


/*
================
idGameLocal::ClientProcessEntityNetworkEventQueue
================
*/
void idGameLocal::ClientProcessEntityNetworkEventQueue( void ) {
    Sys_Printf("void idGameLocal::ClientProcessEntityNetworkEventQueue( void )\r\n");
}


/*
================
idGameLocal::ClientProcessReliableMessage
================
*/
void idGameLocal::ClientProcessReliableMessage( int clientNum, const idBitMsg &msg ) {
    Sys_Printf("void idGameLocal::ClientProcessReliableMessage( int clientNum, const idBitMsg &msg )\r\n");
}


/*
================
idGameLocal::ClientPrediction
================
*/
gameReturn_t idGameLocal::ClientPrediction( int clientNum, const usercmd_t *clientCmds, bool lastPredictFrame ) {
    gameReturn_t retVal;
    memset(&retVal, 0, sizeof(gameReturn_t));
    Sys_Printf("gameReturn_t idGameLocal::ClientPrediction( int clientNum, const usercmd_t *clientCmds, bool lastPredictFrame )\r\n");
    return retVal;
}


/*
===============
idGameLocal::Tokenize
===============
*/
void idGameLocal::Tokenize( idStrList &out, const char *in ) {
    Sys_Printf("void idGameLocal::Tokenize( idStrList &out, const char *in )\r\n");
}


/*
===============
idGameLocal::DownloadRequest
===============
*/
bool idGameLocal::DownloadRequest( const char *IP, const char *guid, const char *paks, char urls[ MAX_STRING_CHARS ] ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idGameLocal::DownloadRequest( const char *IP, const char *guid, const char *paks, char urls[ MAX_STRING_CHARS ] )\r\n");
    return retVal;
}


/*
===============
idEventQueue::Alloc
===============
*/
entityNetEvent_t* idEventQueue::Alloc() {
    Sys_Printf("entityNetEvent_t* idEventQueue::Alloc()\r\n");
    return NULL;
}


/*
===============
idEventQueue::Free
===============
*/
void idEventQueue::Free( entityNetEvent_t *event ) {
    Sys_Printf("void idEventQueue::Free( entityNetEvent_t *event )\r\n");
}


/*
===============
idEventQueue::Shutdown
===============
*/
void idEventQueue::Shutdown() {
    Sys_Printf("void idEventQueue::Shutdown()\r\n");
}


/*
===============
idEventQueue::Init
===============
*/
void idEventQueue::Init( void ) {
    Sys_Printf("void idEventQueue::Init( void )\r\n");
}


/*
===============
idEventQueue::Dequeue
===============
*/
entityNetEvent_t* idEventQueue::Dequeue( void ) {
    Sys_Printf("entityNetEvent_t* idEventQueue::Dequeue( void )\r\n");
    return NULL;
}


/*
===============
idEventQueue::RemoveLast
===============
*/
entityNetEvent_t* idEventQueue::RemoveLast( void ) {
    Sys_Printf("entityNetEvent_t* idEventQueue::RemoveLast( void )\r\n");
    return NULL;
}


/*
===============
idEventQueue::Enqueue
===============
*/
void idEventQueue::Enqueue( entityNetEvent_t *event, outOfOrderBehaviour_t behaviour ) {
    Sys_Printf("void idEventQueue::Enqueue( entityNetEvent_t *event, outOfOrderBehaviour_t behaviour )\r\n");
}

