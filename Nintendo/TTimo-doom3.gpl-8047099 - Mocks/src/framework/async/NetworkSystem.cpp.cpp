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

#include "NetworkSystem.h"

idNetworkSystem		networkSystemLocal;
idNetworkSystem *	networkSystem = &networkSystemLocal;


/*
==================
idNetworkSystem::ServerSendReliableMessage
==================
*/
void idNetworkSystem::ServerSendReliableMessage( int clientNum, const idBitMsg &msg ) {
    Sys_Printf("void idNetworkSystem::ServerSendReliableMessage( int clientNum, const idBitMsg &msg )\r\n");
}


/*
==================
idNetworkSystem::ServerSendReliableMessageExcluding
==================
*/
void idNetworkSystem::ServerSendReliableMessageExcluding( int clientNum, const idBitMsg &msg ) {
    Sys_Printf("void idNetworkSystem::ServerSendReliableMessageExcluding( int clientNum, const idBitMsg &msg )\r\n");
}


/*
==================
idNetworkSystem::ServerGetClientPing
==================
*/
int idNetworkSystem::ServerGetClientPing( int clientNum ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idNetworkSystem::ServerGetClientPing( int clientNum )\r\n");
    return retVal;
}


/*
==================
idNetworkSystem::ServerGetClientPrediction
==================
*/
int idNetworkSystem::ServerGetClientPrediction( int clientNum ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idNetworkSystem::ServerGetClientPrediction( int clientNum )\r\n");
    return retVal;
}


/*
==================
idNetworkSystem::ServerGetClientTimeSinceLastPacket
==================
*/
int idNetworkSystem::ServerGetClientTimeSinceLastPacket( int clientNum ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idNetworkSystem::ServerGetClientTimeSinceLastPacket( int clientNum )\r\n");
    return retVal;
}


/*
==================
idNetworkSystem::ServerGetClientTimeSinceLastInput
==================
*/
int idNetworkSystem::ServerGetClientTimeSinceLastInput( int clientNum ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idNetworkSystem::ServerGetClientTimeSinceLastInput( int clientNum )\r\n");
    return retVal;
}


/*
==================
idNetworkSystem::ServerGetClientOutgoingRate
==================
*/
int idNetworkSystem::ServerGetClientOutgoingRate( int clientNum ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idNetworkSystem::ServerGetClientOutgoingRate( int clientNum )\r\n");
    return retVal;
}


/*
==================
idNetworkSystem::ServerGetClientIncomingRate
==================
*/
int idNetworkSystem::ServerGetClientIncomingRate( int clientNum ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idNetworkSystem::ServerGetClientIncomingRate( int clientNum )\r\n");
    return retVal;
}


/*
==================
idNetworkSystem::ServerGetClientIncomingPacketLoss
==================
*/
float idNetworkSystem::ServerGetClientIncomingPacketLoss( int clientNum ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idNetworkSystem::ServerGetClientIncomingPacketLoss( int clientNum )\r\n");
    return retVal;
}


/*
==================
idNetworkSystem::ClientSendReliableMessage
==================
*/
void idNetworkSystem::ClientSendReliableMessage( const idBitMsg &msg ) {
    Sys_Printf("void idNetworkSystem::ClientSendReliableMessage( const idBitMsg &msg )\r\n");
}


/*
==================
idNetworkSystem::ClientGetPrediction
==================
*/
int idNetworkSystem::ClientGetPrediction( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idNetworkSystem::ClientGetPrediction( void )\r\n");
    return retVal;
}


/*
==================
idNetworkSystem::ClientGetTimeSinceLastPacket
==================
*/
int idNetworkSystem::ClientGetTimeSinceLastPacket( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idNetworkSystem::ClientGetTimeSinceLastPacket( void )\r\n");
    return retVal;
}


/*
==================
idNetworkSystem::ClientGetOutgoingRate
==================
*/
int idNetworkSystem::ClientGetOutgoingRate( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idNetworkSystem::ClientGetOutgoingRate( void )\r\n");
    return retVal;
}


/*
==================
idNetworkSystem::ClientGetIncomingRate
==================
*/
int idNetworkSystem::ClientGetIncomingRate( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idNetworkSystem::ClientGetIncomingRate( void )\r\n");
    return retVal;
}


/*
==================
idNetworkSystem::ClientGetIncomingPacketLoss
==================
*/
float idNetworkSystem::ClientGetIncomingPacketLoss( void ) {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idNetworkSystem::ClientGetIncomingPacketLoss( void )\r\n");
    return retVal;
}

