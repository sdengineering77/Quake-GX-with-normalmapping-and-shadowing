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

const int SETUP_CONNECTION_RESEND_TIME	= 1000;
const int EMPTY_RESEND_TIME				= 500;
const int PREDICTION_FAST_ADJUST		= 4;


/*
==================
idAsyncClient::idAsyncClient
==================
*/
idAsyncClient::idAsyncClient( void ) {
	guiNetMenu = NULL;
	updateState = UPDATE_NONE;
	Clear();
}

/*
==================
idAsyncClient::Clear
==================
*/
void idAsyncClient::Clear( void ) {
    Sys_Printf("void idAsyncClient::Clear( void )\r\n");
}


/*
==================
idAsyncClient::Shutdown
==================
*/
void idAsyncClient::Shutdown( void ) {
    Sys_Printf("void idAsyncClient::Shutdown( void )\r\n");
}


/*
==================
idAsyncClient::InitPort
==================
*/
bool idAsyncClient::InitPort( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAsyncClient::InitPort( void )\r\n");
    return retVal;
}


/*
==================
idAsyncClient::ClosePort
==================
*/
void idAsyncClient::ClosePort( void ) {
    Sys_Printf("void idAsyncClient::ClosePort( void )\r\n");
}


/*
==================
idAsyncClient::ClearPendingPackets
==================
*/
void idAsyncClient::ClearPendingPackets( void ) {
    Sys_Printf("void idAsyncClient::ClearPendingPackets( void )\r\n");
}


/*
==================
idAsyncClient::HandleGuiCommandInternal
==================
*/
const char* idAsyncClient::HandleGuiCommandInternal( const char *cmd ) {
    Sys_Printf("char* idAsyncClient::HandleGuiCommandInternal( const char *cmd )\r\n");
    return NULL;
}


/*
==================
idAsyncClient::HandleGuiCommand
==================
*/
const char* idAsyncClient::HandleGuiCommand( const char *cmd ) {
    Sys_Printf("char* idAsyncClient::HandleGuiCommand( const char *cmd )\r\n");
    return NULL;
}


/*
==================
idAsyncClient::ConnectToServer
==================
*/
void idAsyncClient::ConnectToServer( const netadr_t adr ) {
    Sys_Printf("void idAsyncClient::ConnectToServer( const netadr_t adr )\r\n");
}


/*
==================
idAsyncClient::Reconnect
==================
*/
void idAsyncClient::Reconnect( void ) {
    Sys_Printf("void idAsyncClient::Reconnect( void )\r\n");
}


/*
==================
idAsyncClient::ConnectToServer
==================
*/
void idAsyncClient::ConnectToServer( const char *address ) {
    Sys_Printf("void idAsyncClient::ConnectToServer( const char *address )\r\n");
}


/*
==================
idAsyncClient::DisconnectFromServer
==================
*/
void idAsyncClient::DisconnectFromServer( void ) {
    Sys_Printf("void idAsyncClient::DisconnectFromServer( void )\r\n");
}


/*
==================
idAsyncClient::GetServerInfo
==================
*/
void idAsyncClient::GetServerInfo( const netadr_t adr ) {
    Sys_Printf("void idAsyncClient::GetServerInfo( const netadr_t adr )\r\n");
}


/*
==================
idAsyncClient::GetServerInfo
==================
*/
void idAsyncClient::GetServerInfo( const char *address ) {
    Sys_Printf("void idAsyncClient::GetServerInfo( const char *address )\r\n");
}


/*
==================
idAsyncClient::GetLANServers
==================
*/
void idAsyncClient::GetLANServers( void ) {
    Sys_Printf("void idAsyncClient::GetLANServers( void )\r\n");
}


/*
==================
idAsyncClient::GetNETServers
==================
*/
void idAsyncClient::GetNETServers( void ) {
    Sys_Printf("void idAsyncClient::GetNETServers( void )\r\n");
}


/*
==================
idAsyncClient::ListServers
==================
*/
void idAsyncClient::ListServers( void ) {
    Sys_Printf("void idAsyncClient::ListServers( void )\r\n");
}


/*
==================
idAsyncClient::ClearServers
==================
*/
void idAsyncClient::ClearServers( void ) {
    Sys_Printf("void idAsyncClient::ClearServers( void )\r\n");
}


/*
==================
idAsyncClient::RemoteConsole
==================
*/
void idAsyncClient::RemoteConsole( const char *command ) {
    Sys_Printf("void idAsyncClient::RemoteConsole( const char *command )\r\n");
}


/*
==================
idAsyncClient::GetPrediction
==================
*/
int idAsyncClient::GetPrediction( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncClient::GetPrediction( void )\r\n");
    return retVal;
}


/*
==================
idAsyncClient::GetTimeSinceLastPacket
==================
*/
int idAsyncClient::GetTimeSinceLastPacket( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncClient::GetTimeSinceLastPacket( void )\r\n");
    return retVal;
}


/*
==================
idAsyncClient::GetOutgoingRate
==================
*/
int idAsyncClient::GetOutgoingRate( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncClient::GetOutgoingRate( void )\r\n");
    return retVal;
}


/*
==================
idAsyncClient::GetIncomingRate
==================
*/
int idAsyncClient::GetIncomingRate( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncClient::GetIncomingRate( void )\r\n");
    return retVal;
}


/*
==================
idAsyncClient::GetOutgoingCompression
==================
*/
float idAsyncClient::GetOutgoingCompression( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAsyncClient::GetOutgoingCompression( void )\r\n");
    return retVal;
}


/*
==================
idAsyncClient::GetIncomingCompression
==================
*/
float idAsyncClient::GetIncomingCompression( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAsyncClient::GetIncomingCompression( void )\r\n");
    return retVal;
}


/*
==================
idAsyncClient::GetIncomingPacketLoss
==================
*/
float idAsyncClient::GetIncomingPacketLoss( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idAsyncClient::GetIncomingPacketLoss( void )\r\n");
    return retVal;
}


/*
==================
idAsyncClient::DuplicateUsercmds
==================
*/
void idAsyncClient::DuplicateUsercmds( int frame, int time ) {
    Sys_Printf("void idAsyncClient::DuplicateUsercmds( int frame, int time )\r\n");
}


/*
==================
idAsyncClient::SendUserInfoToServer
==================
*/
void idAsyncClient::SendUserInfoToServer( void ) {
    Sys_Printf("void idAsyncClient::SendUserInfoToServer( void )\r\n");
}


/*
==================
idAsyncClient::SendEmptyToServer
==================
*/
void idAsyncClient::SendEmptyToServer( bool force, bool mapLoad ) {
    Sys_Printf("void idAsyncClient::SendEmptyToServer( bool force, bool mapLoad )\r\n");
}


/*
==================
idAsyncClient::SendPingResponseToServer
==================
*/
void idAsyncClient::SendPingResponseToServer( int time ) {
    Sys_Printf("void idAsyncClient::SendPingResponseToServer( int time )\r\n");
}


/*
==================
idAsyncClient::SendUsercmdsToServer
==================
*/
void idAsyncClient::SendUsercmdsToServer( void ) {
    Sys_Printf("void idAsyncClient::SendUsercmdsToServer( void )\r\n");
}


/*
==================
idAsyncClient::InitGame
==================
*/
void idAsyncClient::InitGame( int serverGameInitId, int serverGameFrame, int serverGameTime, const idDict &serverSI ) {
    Sys_Printf("void idAsyncClient::InitGame( int serverGameInitId, int serverGameFrame, int serverGameTime, const idDict &serverSI )\r\n");
}


/*
==================
idAsyncClient::ProcessUnreliableServerMessage
==================
*/
void idAsyncClient::ProcessUnreliableServerMessage( const idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::ProcessUnreliableServerMessage( const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncClient::ProcessReliableMessagePure
==================
*/
void idAsyncClient::ProcessReliableMessagePure( const idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::ProcessReliableMessagePure( const idBitMsg &msg )\r\n");
}


/*
===============
idAsyncClient::ReadLocalizedServerString
===============
*/
void idAsyncClient::ReadLocalizedServerString( const idBitMsg &msg, char *out, int maxLen ) {
    Sys_Printf("void idAsyncClient::ReadLocalizedServerString( const idBitMsg &msg, char *out, int maxLen )\r\n");
}


/*
==================
idAsyncClient::ProcessReliableServerMessages
==================
*/
void idAsyncClient::ProcessReliableServerMessages( void ) {
    Sys_Printf("void idAsyncClient::ProcessReliableServerMessages( void )\r\n");
}


/*
==================
idAsyncClient::ProcessChallengeResponseMessage
==================
*/
void idAsyncClient::ProcessChallengeResponseMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::ProcessChallengeResponseMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncClient::ProcessConnectResponseMessage
==================
*/
void idAsyncClient::ProcessConnectResponseMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::ProcessConnectResponseMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncClient::ProcessDisconnectMessage
==================
*/
void idAsyncClient::ProcessDisconnectMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::ProcessDisconnectMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncClient::ProcessInfoResponseMessage
==================
*/
void idAsyncClient::ProcessInfoResponseMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::ProcessInfoResponseMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncClient::ProcessPrintMessage
==================
*/
void idAsyncClient::ProcessPrintMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::ProcessPrintMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncClient::ProcessServersListMessage
==================
*/
void idAsyncClient::ProcessServersListMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::ProcessServersListMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncClient::ProcessAuthKeyMessage
==================
*/
void idAsyncClient::ProcessAuthKeyMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::ProcessAuthKeyMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncClient::ProcessVersionMessage
==================
*/
void idAsyncClient::ProcessVersionMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::ProcessVersionMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncClient::ValidatePureServerChecksums
==================
*/
bool idAsyncClient::ValidatePureServerChecksums( const netadr_t from, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAsyncClient::ValidatePureServerChecksums( const netadr_t from, const idBitMsg &msg )\r\n");
    return retVal;
}


/*
==================
idAsyncClient::ProcessPureMessage
==================
*/
void idAsyncClient::ProcessPureMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::ProcessPureMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncClient::ConnectionlessMessage
==================
*/
void idAsyncClient::ConnectionlessMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::ConnectionlessMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
=================
idAsyncClient::ProcessMessage
=================
*/
void idAsyncClient::ProcessMessage( const netadr_t from, idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::ProcessMessage( const netadr_t from, idBitMsg &msg )\r\n");
}


/*
==================
idAsyncClient::SetupConnection
==================
*/
void idAsyncClient::SetupConnection( void ) {
    Sys_Printf("void idAsyncClient::SetupConnection( void )\r\n");
}


/*
==================
idAsyncClient::SendReliableGameMessage
==================
*/
void idAsyncClient::SendReliableGameMessage( const idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::SendReliableGameMessage( const idBitMsg &msg )\r\n");
}


/*
==================
idAsyncClient::Idle
==================
*/
void idAsyncClient::Idle( void ) {
    Sys_Printf("void idAsyncClient::Idle( void )\r\n");
}


/*
==================
idAsyncClient::UpdateTime
==================
*/
int idAsyncClient::UpdateTime( int clamp ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncClient::UpdateTime( int clamp )\r\n");
    return retVal;
}


/*
==================
idAsyncClient::RunFrame
==================
*/
void idAsyncClient::RunFrame( void ) {
    Sys_Printf("void idAsyncClient::RunFrame( void )\r\n");
}


/*
==================
idAsyncClient::PacifierUpdate
==================
*/
void idAsyncClient::PacifierUpdate( void ) {
    Sys_Printf("void idAsyncClient::PacifierUpdate( void )\r\n");
}


/*
==================
idAsyncClient::SendVersionCheck
==================
*/
void idAsyncClient::SendVersionCheck( bool fromMenu ) {
    Sys_Printf("void idAsyncClient::SendVersionCheck( bool fromMenu )\r\n");
}


/*
==================
idAsyncClient::SendVersionDLUpdate

sending those packets is not strictly necessary. just a way to tell the update server
about what is going on. allows the update server to have a more precise view of the overall
network load for the updates
==================
*/
void idAsyncClient::SendVersionDLUpdate( int state ) {
    Sys_Printf("void idAsyncClient::SendVersionDLUpdate( int state )\r\n");
}


/*
==================
idAsyncClient::HandleDownloads
==================
*/
void idAsyncClient::HandleDownloads( void ) {
    Sys_Printf("void idAsyncClient::HandleDownloads( void )\r\n");
}


/*
===============
idAsyncClient::SendAuthCheck
===============
*/
bool idAsyncClient::SendAuthCheck( const char *cdkey, const char *xpkey ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAsyncClient::SendAuthCheck( const char *cdkey, const char *xpkey )\r\n");
    return retVal;
}


/*
===============
idAsyncClient::CheckTimeout
===============
*/
bool idAsyncClient::CheckTimeout( void ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idAsyncClient::CheckTimeout( void )\r\n");
    return retVal;
}


/*
===============
idAsyncClient::ProcessDownloadInfoMessage
===============
*/
void idAsyncClient::ProcessDownloadInfoMessage( const netadr_t from, const idBitMsg &msg ) {
    Sys_Printf("void idAsyncClient::ProcessDownloadInfoMessage( const netadr_t from, const idBitMsg &msg )\r\n");
}


/*
===============
idAsyncClient::GetDownloadRequest
===============
*/
int idAsyncClient::GetDownloadRequest( const int checksums[ MAX_PURE_PAKS ], int count, int gamePakChecksum ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idAsyncClient::GetDownloadRequest( const int checksums[ MAX_PURE_PAKS ], int count, int gamePakChecksum )\r\n");
    return retVal;
}

