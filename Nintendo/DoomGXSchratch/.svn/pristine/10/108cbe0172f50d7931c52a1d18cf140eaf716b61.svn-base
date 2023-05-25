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

#include "MsgChannel.h"

/*

packet header
-------------
2 bytes		id
4 bytes		outgoing sequence. high bit will be set if this is a fragmented message.
2 bytes		optional fragment start byte if fragment bit is set.
2 bytes		optional fragment length if fragment bit is set. if < FRAGMENT_SIZE, this is the last fragment.

If the id is -1, the packet should be handled as an out-of-band
message instead of as part of the message channel.

All fragments will have the same sequence numbers.

*/


#define	MAX_PACKETLEN			1400		// max size of a network packet
#define	FRAGMENT_SIZE			(MAX_PACKETLEN - 100)
#define	FRAGMENT_BIT			(1<<31)

idCVar net_channelShowPackets( "net_channelShowPackets", "0", CVAR_SYSTEM | CVAR_BOOL, "show all packets" );
idCVar net_channelShowDrop( "net_channelShowDrop", "0", CVAR_SYSTEM | CVAR_BOOL, "show dropped packets" );

/*
===============
idMsgQueue::idMsgQueue
===============
*/
idMsgQueue::idMsgQueue( void ) {
	Init( 0 );
}

/*
===============
idMsgQueue::Init
===============
*/
void idMsgQueue::Init( int sequence ) {
    Sys_Printf("void idMsgQueue::Init( int sequence )\r\n");
}


/*
===============
idMsgQueue::Add
===============
*/
bool idMsgQueue::Add( const byte *data, const int size ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMsgQueue::Add( const byte *data, const int size )\r\n");
    return retVal;
}


/*
===============
idMsgQueue::Get
===============
*/
bool idMsgQueue::Get( byte *data, int &size ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMsgQueue::Get( byte *data, int &size )\r\n");
    return retVal;
}


/*
===============
idMsgQueue::GetTotalSize
===============
*/
int idMsgQueue::GetTotalSize( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMsgQueue::GetTotalSize( void )\r\n");
    return retVal;
}


/*
===============
idMsgQueue::GetSpaceLeft
===============
*/
int idMsgQueue::GetSpaceLeft( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMsgQueue::GetSpaceLeft( void )\r\n");
    return retVal;
}


/*
===============
idMsgQueue::CopyToBuffer
===============
*/
void idMsgQueue::CopyToBuffer( byte *buf ) const {
    Sys_Printf("void idMsgQueue::CopyToBuffer( byte *buf )\r\n");
}


/*
===============
idMsgQueue::WriteByte
===============
*/
void idMsgQueue::WriteByte( byte b ) {
    Sys_Printf("void idMsgQueue::WriteByte( byte b )\r\n");
}


/*
===============
idMsgQueue::ReadByte
===============
*/
byte idMsgQueue::ReadByte( void ) {
    byte retVal;
    memset(&retVal, 0, sizeof(byte));
    Sys_Printf("byte idMsgQueue::ReadByte( void )\r\n");
    return retVal;
}


/*
===============
idMsgQueue::WriteShort
===============
*/
void idMsgQueue::WriteShort( int s ) {
    Sys_Printf("void idMsgQueue::WriteShort( int s )\r\n");
}


/*
===============
idMsgQueue::ReadShort
===============
*/
int idMsgQueue::ReadShort( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMsgQueue::ReadShort( void )\r\n");
    return retVal;
}


/*
===============
idMsgQueue::WriteLong
===============
*/
void idMsgQueue::WriteLong( int l ) {
    Sys_Printf("void idMsgQueue::WriteLong( int l )\r\n");
}


/*
===============
idMsgQueue::ReadLong
===============
*/
int idMsgQueue::ReadLong( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMsgQueue::ReadLong( void )\r\n");
    return retVal;
}


/*
===============
idMsgQueue::WriteData
===============
*/
void idMsgQueue::WriteData( const byte *data, const int size ) {
    Sys_Printf("void idMsgQueue::WriteData( const byte *data, const int size )\r\n");
}


/*
===============
idMsgQueue::ReadData
===============
*/
void idMsgQueue::ReadData( byte *data, const int size ) {
    Sys_Printf("void idMsgQueue::ReadData( byte *data, const int size )\r\n");
}



/*
===============
idMsgChannel::idMsgChannel
===============
*/
idMsgChannel::idMsgChannel() {
	id = -1;
}

/*
==============
idMsgChannel::Init

  Opens a channel to a remote system.
==============
*/
void idMsgChannel::Init( const netadr_t adr, const int id ) {
    Sys_Printf("void idMsgChannel::Init( const netadr_t adr, const int id )\r\n");
}


/*
===============
idMsgChannel::Shutdown
================
*/
void idMsgChannel::Shutdown( void ) {
    Sys_Printf("void idMsgChannel::Shutdown( void )\r\n");
}


/*
=================
idMsgChannel::ResetRate
=================
*/
void idMsgChannel::ResetRate( void ) {
    Sys_Printf("void idMsgChannel::ResetRate( void )\r\n");
}


/*
=================
idMsgChannel::ReadyToSend
=================
*/
bool idMsgChannel::ReadyToSend( const int time ) const {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMsgChannel::ReadyToSend( const int time )\r\n");
    return retVal;
}


/*
===============
idMsgChannel::WriteMessageData
================
*/
void idMsgChannel::WriteMessageData( idBitMsg &out, const idBitMsg &msg ) {
    Sys_Printf("void idMsgChannel::WriteMessageData( idBitMsg &out, const idBitMsg &msg )\r\n");
}


/*
===============
idMsgChannel::ReadMessageData
================
*/
bool idMsgChannel::ReadMessageData( idBitMsg &out, const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMsgChannel::ReadMessageData( idBitMsg &out, const idBitMsg &msg )\r\n");
    return retVal;
}


/*
=================
idMsgChannel::SendNextFragment

  Sends one fragment of the current message.
=================
*/
void idMsgChannel::SendNextFragment( idPort &port, const int time ) {
    Sys_Printf("void idMsgChannel::SendNextFragment( idPort &port, const int time )\r\n");
}


/*
===============
idMsgChannel::SendMessage

  Sends a message to a connection, fragmenting if necessary
  A 0 length will still generate a packet.
================
*/
int idMsgChannel::SendMessage( idPort &port, const int time, const idBitMsg &msg ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idMsgChannel::SendMessage( idPort &port, const int time, const idBitMsg &msg )\r\n");
    return retVal;
}


/*
=================
idMsgChannel::Process

  Returns false if the message should not be processed due to being out of order or a fragment.

  msg must be large enough to hold MAX_MESSAGE_SIZE, because if this is the final
  fragment of a multi-part message, the entire thing will be copied out.
=================
*/
bool idMsgChannel::Process( const netadr_t from, int time, idBitMsg &msg, int &sequence ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMsgChannel::Process( const netadr_t from, int time, idBitMsg &msg, int &sequence )\r\n");
    return retVal;
}


/*
=================
idMsgChannel::SendReliableMessage
=================
*/
bool idMsgChannel::SendReliableMessage( const idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMsgChannel::SendReliableMessage( const idBitMsg &msg )\r\n");
    return retVal;
}


/*
=================
idMsgChannel::GetReliableMessage
=================
*/
bool idMsgChannel::GetReliableMessage( idBitMsg &msg ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idMsgChannel::GetReliableMessage( idBitMsg &msg )\r\n");
    return retVal;
}


/*
===============
idMsgChannel::ClearReliableMessages
================
*/
void idMsgChannel::ClearReliableMessages( void ) {
    Sys_Printf("void idMsgChannel::ClearReliableMessages( void )\r\n");
}


/*
=================
idMsgChannel::UpdateOutgoingRate
=================
*/
void idMsgChannel::UpdateOutgoingRate( const int time, const int size ) {
    Sys_Printf("void idMsgChannel::UpdateOutgoingRate( const int time, const int size )\r\n");
}


/*
=================
idMsgChannel::UpdateIncomingRate
=================
*/
void idMsgChannel::UpdateIncomingRate( const int time, const int size ) {
    Sys_Printf("void idMsgChannel::UpdateIncomingRate( const int time, const int size )\r\n");
}


/*
=================
idMsgChannel::UpdatePacketLoss
=================
*/
void idMsgChannel::UpdatePacketLoss( const int time, const int numReceived, const int numDropped ) {
    Sys_Printf("void idMsgChannel::UpdatePacketLoss( const int time, const int numReceived, const int numDropped )\r\n");
}


/*
=================
idMsgChannel::GetIncomingPacketLoss
=================
*/
float idMsgChannel::GetIncomingPacketLoss( void ) const {
    float retVal;
    memset(&retVal, 0, sizeof(float));
    Sys_Printf("float idMsgChannel::GetIncomingPacketLoss( void )\r\n");
    return retVal;
}

