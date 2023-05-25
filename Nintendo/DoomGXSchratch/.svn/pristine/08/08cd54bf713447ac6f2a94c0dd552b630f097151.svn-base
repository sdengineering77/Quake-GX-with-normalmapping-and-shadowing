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

#include "AsyncNetwork.h"

#include "../Session_local.h"

const int MIN_RECONNECT_TIME			= 2000;
const int EMPTY_RESEND_TIME				= 500;
const int PING_RESEND_TIME				= 500;
const int NOINPUT_IDLE_TIME				= 30000;

const int HEARTBEAT_MSEC				= 5*60*1000;

// must be kept in sync with authReplyMsg_t
const char* authReplyMsg[] = {
	//	"Waiting for authorization",
	"#str_07204",
	//	"Client unknown to auth",
	"#str_07205",
	//	"Access denied - CD Key in use",
	"#str_07206",
	//	"Auth custom message", // placeholder - we propagate a message from the master
	"#str_07207",
	//	"Authorize Server - Waiting for client"
	"#str_07208"
};

const char* authReplyStr[] = {
	"AUTH_NONE",
	"AUTH_OK",
	"AUTH_WAIT",
	"AUTH_DENY"
};

/*
==================
idAsyncServer::idAsyncServer
==================
*/
idAsyncServer::idAsyncServer( void ) {
	int i;

	active = false;
	realTime = 0;
	serverTime = 0;
	serverId = 0;
	serverDataChecksum = 0;
	localClientNum = -1;
	gameInitId = 0;
	gameFrame = 0;
	gameTime = 0;
	gameTimeResidual = 0;
	memset( challenges, 0, sizeof( challenges ) );
	memset( userCmds, 0, sizeof( userCmds ) );
	for ( i = 0; i < MAX_ASYNC_CLIENTS; i++ ) {
		ClearClient( i );
	}
	serverReloadingEngine = false;
	nextHeartbeatTime = 0;
	nextAsyncStatsTime = 0;
	noRconOutput = true;
	lastAuthTime = 0;

	memset( stats_outrate, 0, sizeof( stats_outrate ) );
	stats_current = 0;
	stats_average_sum = 0;
	stats_max = 0;
	stats_max_index = 0;
}

/*
==================
idAsyncServer::InitPort
==================
*/
bool idAsyncServer::InitPort( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAsyncServer::InitPort( void )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::ClosePort
==================
*/
void idAsyncServer::ClosePort( void ) {
    Sys_Printf("void idAsyncServer::ClosePort( void )\r\n");
}


/*
==================
idAsyncServer::Spawn
==================
*/
void idAsyncServer::Spawn( void ) {
    Sys_Printf("void idAsyncServer::Spawn( void )\r\n");
}


/*
==================
idAsyncServer::Kill
==================
*/
void idAsyncServer::Kill( void ) {
    Sys_Printf("void idAsyncServer::Kill( void )\r\n");
}


/*
==================
idAsyncServer::ExecuteMapChange
==================
*/
void idAsyncServer::ExecuteMapChange( void ) {
    Sys_Printf("void idAsyncServer::ExecuteMapChange( void )\r\n");
}


/*
==================
idAsyncServer::GetPort
==================
*/
int idAsyncServer::GetPort( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncServer::GetPort( void )\r\n");
    return retVal;
}


/*
===============
idAsyncServer::GetBoundAdr
===============
*/
netadr_t idAsyncServer::GetBoundAdr( void ) const {
    netadr_t retVal;
    memset(&retVal, 0, sizeof(netadr_t));
    Sys_Printf("netadr_t idAsyncServer::GetBoundAdr( void )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::GetOutgoingRate
==================
*/
int idAsyncServer::GetOutgoingRate( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncServer::GetOutgoingRate( void )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::GetIncomingRate
==================
*/
int idAsyncServer::GetIncomingRate( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncServer::GetIncomingRate( void )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::IsClientInGame
==================
*/
bool idAsyncServer::IsClientInGame( int clientNum ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAsyncServer::IsClientInGame( int clientNum )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::GetClientPing
==================
*/
int idAsyncServer::GetClientPing( int clientNum ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncServer::GetClientPing( int clientNum )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::GetClientPrediction
==================
*/
int idAsyncServer::GetClientPrediction( int clientNum ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncServer::GetClientPrediction( int clientNum )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::GetClientTimeSinceLastPacket
==================
*/
int idAsyncServer::GetClientTimeSinceLastPacket( int clientNum ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncServer::GetClientTimeSinceLastPacket( int clientNum )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::GetClientTimeSinceLastInput
==================
*/
int idAsyncServer::GetClientTimeSinceLastInput( int clientNum ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncServer::GetClientTimeSinceLastInput( int clientNum )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::GetClientOutgoingRate
==================
*/
int idAsyncServer::GetClientOutgoingRate( int clientNum ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncServer::GetClientOutgoingRate( int clientNum )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::GetClientIncomingRate
==================
*/
int idAsyncServer::GetClientIncomingRate( int clientNum ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncServer::GetClientIncomingRate( int clientNum )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::GetClientOutgoingCompression
==================
*/
float idAsyncServer::GetClientOutgoingCompression( int clientNum ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAsyncServer::GetClientOutgoingCompression( int clientNum )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::GetClientIncomingCompression
==================
*/
float idAsyncServer::GetClientIncomingCompression( int clientNum ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAsyncServer::GetClientIncomingCompression( int clientNum )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::GetClientIncomingPacketLoss
==================
*/
float idAsyncServer::GetClientIncomingPacketLoss( int clientNum ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAsyncServer::GetClientIncomingPacketLoss( int clientNum )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::GetNumClients
==================
*/
int idAsyncServer::GetNumClients( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncServer::GetNumClients( void )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::GetNumIdleClients
==================
*/
int idAsyncServer::GetNumIdleClients( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncServer::GetNumIdleClients( void )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::DuplicateUsercmds
==================
*/
void idAsyncServer::DuplicateUsercmds( int frame, int time ) {
    Sys_Printf("void idAsyncServer::DuplicateUsercmds( int frame, int time )\r\n");
}


/*
==================
idAsyncServer::ClearClient
==================
*/
void idAsyncServer::ClearClient( int clientNum ) {
    Sys_Printf("void idAsyncServer::ClearClient( int clientNum )\r\n");
}


/*
==================
idAsyncServer::InitClient
==================
*/
void idAsyncServer::InitClient( int clientNum, int clientId, int clientRate ) {
    Sys_Printf("void idAsyncServer::InitClient( int clientNum, int clientId, int clientRate )\r\n");
}


/*
==================
idAsyncServer::InitLocalClient
==================
*/
void idAsyncServer::InitLocalClient( int clientNum ) {
    Sys_Printf("void idAsyncServer::InitLocalClient( int clientNum )\r\n");
}


/*
==================
idAsyncServer::BeginLocalClient
==================
*/
void idAsyncServer::BeginLocalClient( void ) {
    Sys_Printf("void idAsyncServer::BeginLocalClient( void )\r\n");
}


/*
==================
idAsyncServer::LocalClientInput
==================
*/
void idAsyncServer::LocalClientInput( void ) {
    Sys_Printf("void idAsyncServer::LocalClientInput( void )\r\n");
}


/*
==================
idAsyncServer::DropClient
==================
*/
void idAsyncServer::DropClient( int clientNum, const char *reason ) {
    Sys_Printf("void idAsyncServer::DropClient( int clientNum, const char *reason )\r\n");
}


/*
==================
idAsyncServer::SendReliableMessage
==================
*/
void idAsyncServer::SendReliableMessage( int clientNum, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncServer::SendReliableMessage( int clientNum, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncServer::CheckClientTimeouts
==================
*/
void idAsyncServer::CheckClientTimeouts( void ) {
    Sys_Printf("void idAsyncServer::CheckClientTimeouts( void )\r\n");
}


/*
==================
idAsyncServer::SendPrintBroadcast
==================
*/
void idAsyncServer::SendPrintBroadcast( const char *string ) {
    Sys_Printf("void idAsyncServer::SendPrintBroadcast( const char *string )\r\n");
}


/*
==================
idAsyncServer::SendPrintToClient
==================
*/
void idAsyncServer::SendPrintToClient( int clientNum, const char *string ) {
    Sys_Printf("void idAsyncServer::SendPrintToClient( int clientNum, const char *string )\r\n");
}


/*
==================
idAsyncServer::SendUserInfoBroadcast
==================
*/
void idAsyncServer::SendUserInfoBroadcast( int userInfoNum, const idDict &info, bool sendToAll ) {
    Sys_Printf("void idAsyncServer::SendUserInfoBroadcast( int userInfoNum, const idDict &info, bool sendToAll )\r\n");
}


/*
==================
idAsyncServer::UpdateUI
if the game modifies userInfo, it will call this through command system
we then need to get the info from the game, and broadcast to clients
( using DeltaDict and our current mapSpawnData as a base )
==================
*/
void idAsyncServer::UpdateUI( int clientNum ) {
    Sys_Printf("void idAsyncServer::UpdateUI( int clientNum )\r\n");
}


/*
==================
idAsyncServer::SendUserInfoToClient
==================
*/
void idAsyncServer::SendUserInfoToClient( int clientNum, int userInfoNum, const idDict &info ) {
    Sys_Printf("void idAsyncServer::SendUserInfoToClient( int clientNum, int userInfoNum, const idDict &info )\r\n");
}


/*
==================
idAsyncServer::SendSyncedCvarsBroadcast
==================
*/
void idAsyncServer::SendSyncedCvarsBroadcast( const idDict &cvars ) {
    Sys_Printf("void idAsyncServer::SendSyncedCvarsBroadcast( const idDict &cvars )\r\n");
}


/*
==================
idAsyncServer::SendSyncedCvarsToClient
==================
*/
void idAsyncServer::SendSyncedCvarsToClient( int clientNum, const idDict &cvars ) {
    Sys_Printf("void idAsyncServer::SendSyncedCvarsToClient( int clientNum, const idDict &cvars )\r\n");
}


/*
==================
idAsyncServer::SendApplySnapshotToClient
==================
*/
void idAsyncServer::SendApplySnapshotToClient( int clientNum, int sequence ) {
    Sys_Printf("void idAsyncServer::SendApplySnapshotToClient( int clientNum, int sequence )\r\n");
}


/*
==================
idAsyncServer::SendEmptyToClient
==================
*/
bool idAsyncServer::SendEmptyToClient( int clientNum, bool force ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAsyncServer::SendEmptyToClient( int clientNum, bool force )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::SendPingToClient
==================
*/
bool idAsyncServer::SendPingToClient( int clientNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAsyncServer::SendPingToClient( int clientNum )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::SendGameInitToClient
==================
*/
void idAsyncServer::SendGameInitToClient( int clientNum ) {
    Sys_Printf("void idAsyncServer::SendGameInitToClient( int clientNum )\r\n");
}


/*
==================
idAsyncServer::SendSnapshotToClient
==================
*/
bool idAsyncServer::SendSnapshotToClient( int clientNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAsyncServer::SendSnapshotToClient( int clientNum )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::ProcessUnreliableClientMessage
==================
*/
void idAsyncServer::ProcessUnreliableClientMessage( int clientNum, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncServer::ProcessUnreliableClientMessage( int clientNum, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncServer::ProcessReliableClientMessages
==================
*/
void idAsyncServer::ProcessReliableClientMessages( int clientNum ) {
    Sys_Printf("void idAsyncServer::ProcessReliableClientMessages( int clientNum )\r\n");
}


/*
==================
idAsyncServer::ProcessAuthMessage
==================
*/
void idAsyncServer::ProcessAuthMessage( const idBitMsg &msg ) {
    Sys_Printf("void idAsyncServer::ProcessAuthMessage( const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncServer::ProcessChallengeMessage
==================
*/
void idAsyncServer::ProcessChallengeMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncServer::ProcessChallengeMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncServer::SendPureServerMessage
==================
*/
bool idAsyncServer::SendPureServerMessage( const netadr_t to, int OS ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAsyncServer::SendPureServerMessage( const netadr_t to, int OS )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::SendReliablePureToClient
==================
*/
bool idAsyncServer::SendReliablePureToClient( int clientNum ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAsyncServer::SendReliablePureToClient( int clientNum )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::ValidateChallenge
==================
*/
int idAsyncServer::ValidateChallenge( const netadr_t from, int challenge, int clientId ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncServer::ValidateChallenge( const netadr_t from, int challenge, int clientId )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::ProcessConnectMessage
==================
*/
void idAsyncServer::ProcessConnectMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncServer::ProcessConnectMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncServer::VerifyChecksumMessage
==================
*/
bool idAsyncServer::VerifyChecksumMessage( int clientNum, const netadr_t *from, const idBitMsg &msg, idStr &reply, int OS ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAsyncServer::VerifyChecksumMessage( int clientNum, const netadr_t *from, const idBitMsg &msg, idStr &reply, int OS )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::ProcessPureMessage
==================
*/
void idAsyncServer::ProcessPureMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncServer::ProcessPureMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncServer::ProcessReliablePure
==================
*/
void idAsyncServer::ProcessReliablePure( int clientNum, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncServer::ProcessReliablePure( int clientNum, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncServer::RemoteConsoleOutput
==================
*/
void idAsyncServer::RemoteConsoleOutput( const char *string ) {
    Sys_Printf("void idAsyncServer::RemoteConsoleOutput( const char *string )\r\n");
}


/*
==================
RConRedirect
==================
*/
void RConRedirect( const char *string ) {
    Sys_Printf("void RConRedirect( const char *string )\r\n");
}


/*
==================
idAsyncServer::ProcessRemoteConsoleMessage
==================
*/
void idAsyncServer::ProcessRemoteConsoleMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncServer::ProcessRemoteConsoleMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncServer::ProcessGetInfoMessage
==================
*/
void idAsyncServer::ProcessGetInfoMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncServer::ProcessGetInfoMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
===============
idAsyncServer::PrintLocalServerInfo
see (client) "getInfo" -> (server) "infoResponse" -> (client)ProcessGetInfoMessage
===============
*/
void idAsyncServer::PrintLocalServerInfo( void ) {
    Sys_Printf("void idAsyncServer::PrintLocalServerInfo( void )\r\n");
}


/*
==================
idAsyncServer::ConnectionlessMessage
==================
*/
bool idAsyncServer::ConnectionlessMessage( const netadr_t from, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAsyncServer::ConnectionlessMessage( const netadr_t from, const idBitMsg &msg )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::ProcessMessage
==================
*/
bool idAsyncServer::ProcessMessage( const netadr_t from, idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAsyncServer::ProcessMessage( const netadr_t from, idBitMsg &msg )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::SendReliableGameMessage
==================
*/
void idAsyncServer::SendReliableGameMessage( int clientNum, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncServer::SendReliableGameMessage( int clientNum, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncServer::LocalClientSendReliableMessageExcluding
==================
*/
void idAsyncServer::SendReliableGameMessageExcluding( int clientNum, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncServer::SendReliableGameMessageExcluding( int clientNum, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncServer::LocalClientSendReliableMessage
==================
*/
void idAsyncServer::LocalClientSendReliableMessage( const idBitMsg &msg ) {
    Sys_Printf("void idAsyncServer::LocalClientSendReliableMessage( const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncServer::ProcessConnectionLessMessages
==================
*/
void idAsyncServer::ProcessConnectionLessMessages( void ) {
    Sys_Printf("void idAsyncServer::ProcessConnectionLessMessages( void )\r\n");
}


/*
==================
idAsyncServer::UpdateTime
==================
*/
int idAsyncServer::UpdateTime( int clamp ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncServer::UpdateTime( int clamp )\r\n");
    return retVal;
}


/*
==================
idAsyncServer::RunFrame
==================
*/
void idAsyncServer::RunFrame( void ) {
    Sys_Printf("void idAsyncServer::RunFrame( void )\r\n");
}


/*
==================
idAsyncServer::PacifierUpdate
==================
*/
void idAsyncServer::PacifierUpdate( void ) {
    Sys_Printf("void idAsyncServer::PacifierUpdate( void )\r\n");
}


/*
==================
idAsyncServer::PrintOOB
==================
*/
void idAsyncServer::PrintOOB( const netadr_t to, int opcode, const char *string ) {
    Sys_Printf("void idAsyncServer::PrintOOB( const netadr_t to, int opcode, const char *string )\r\n");
}


/*
==================
idAsyncServer::MasterHeartbeat
==================
*/
void idAsyncServer::MasterHeartbeat( bool force ) {
    Sys_Printf("void idAsyncServer::MasterHeartbeat( bool force )\r\n");
}


/*
===============
idAsyncServer::SendEnterGameToClient
===============
*/
void idAsyncServer::SendEnterGameToClient( int clientNum ) {
    Sys_Printf("void idAsyncServer::SendEnterGameToClient( int clientNum )\r\n");
}


/*
===============
idAsyncServer::UpdateAsyncStatsAvg
===============
*/
void idAsyncServer::UpdateAsyncStatsAvg( void ) {
    Sys_Printf("void idAsyncServer::UpdateAsyncStatsAvg( void )\r\n");
}


/*
===============
idAsyncServer::GetAsyncStatsAvgMsg
===============
*/
void idAsyncServer::GetAsyncStatsAvgMsg( idStr &msg ) {
    Sys_Printf("void idAsyncServer::GetAsyncStatsAvgMsg( idStr &msg )\r\n");
}


/*
===============
idAsyncServer::ProcessDownloadRequestMessage
===============
*/
void idAsyncServer::ProcessDownloadRequestMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncServer::ProcessDownloadRequestMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}

