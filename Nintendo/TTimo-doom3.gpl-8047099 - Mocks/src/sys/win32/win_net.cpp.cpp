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

#include <iptypes.h>
#include <iphlpapi.h>

#include "win_local.h"

static WSADATA	winsockdata;
static bool	winsockInitialized = false;
static bool usingSocks = false;

idCVar net_ip( "net_ip", "localhost", CVAR_SYSTEM, "local IP address" );
idCVar net_port( "net_port", "0", CVAR_SYSTEM | CVAR_INTEGER, "local IP port number" );
idCVar net_forceLatency( "net_forceLatency", "0", CVAR_SYSTEM | CVAR_INTEGER, "milliseconds latency" );
idCVar net_forceDrop( "net_forceDrop", "0", CVAR_SYSTEM | CVAR_INTEGER, "percentage packet loss" );

idCVar net_socksEnabled( "net_socksEnabled", "0", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_BOOL, "" );
idCVar net_socksServer( "net_socksServer", "", CVAR_SYSTEM | CVAR_ARCHIVE, "" );
idCVar net_socksPort( "net_socksPort", "1080", CVAR_SYSTEM | CVAR_ARCHIVE | CVAR_INTEGER, "" );
idCVar net_socksUsername( "net_socksUsername", "", CVAR_SYSTEM | CVAR_ARCHIVE, "" );
idCVar net_socksPassword( "net_socksPassword", "", CVAR_SYSTEM | CVAR_ARCHIVE, "" );


static struct sockaddr	socksRelayAddr;

static SOCKET	ip_socket;
static SOCKET	socks_socket;
static char		socksBuf[4096];

typedef struct {
	unsigned long ip;
	unsigned long mask;
} net_interface;

#define 		MAX_INTERFACES	32
int				num_interfaces = 0;
net_interface	netint[MAX_INTERFACES];

//=============================================================================


/*
====================
NET_ErrorString
====================
*/
char *NET_ErrorString( void ) {
    Sys_Printf("char *NET_ErrorString( void )\r\n");
    return NULL;
}


/*
====================
Net_NetadrToSockadr
====================
*/
void Net_NetadrToSockadr( const netadr_t *a, struct sockaddr *s ) {
    Sys_Printf("void Net_NetadrToSockadr( const netadr_t *a, struct sockaddr *s )\r\n");
}



/*
====================
Net_SockadrToNetadr
====================
*/
void Net_SockadrToNetadr( struct sockaddr *s, netadr_t *a ) {
    Sys_Printf("void Net_SockadrToNetadr( struct sockaddr *s, netadr_t *a )\r\n");
}


/*
=============
Net_ExtractPort
=============
*/
static bool Net_ExtractPort( const char *src, char *buf, int bufsize, int *port ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Net_ExtractPort( const char *src, char *buf, int bufsize, int *port )\r\n");
    return retVal;
}


/*
=============
Net_StringToSockaddr
=============
*/
static bool Net_StringToSockaddr( const char *s, struct sockaddr *sadr, bool doDNSResolve ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Net_StringToSockaddr( const char *s, struct sockaddr *sadr, bool doDNSResolve )\r\n");
    return retVal;
}


/*
====================
NET_IPSocket
====================
*/
int NET_IPSocket( const char *net_interface, int port, netadr_t *bound_to ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int NET_IPSocket( const char *net_interface, int port, netadr_t *bound_to )\r\n");
    return retVal;
}


/*
====================
NET_OpenSocks
====================
*/
void NET_OpenSocks( int port ) {
    Sys_Printf("void NET_OpenSocks( int port )\r\n");
}


/*
==================
Net_WaitForUDPPacket
==================
*/
bool Net_WaitForUDPPacket( int netSocket, int timeout ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Net_WaitForUDPPacket( int netSocket, int timeout )\r\n");
    return retVal;
}


/*
==================
Net_GetUDPPacket
==================
*/
bool Net_GetUDPPacket( int netSocket, netadr_t &net_from, char *data, int &size, int maxSize ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Net_GetUDPPacket( int netSocket, netadr_t &net_from, char *data, int &size, int maxSize )\r\n");
    return retVal;
}


/*
==================
Net_SendUDPPacket
==================
*/
void Net_SendUDPPacket( int netSocket, int length, const void *data, const netadr_t to ) {
    Sys_Printf("void Net_SendUDPPacket( int netSocket, int length, const void *data, const netadr_t to )\r\n");
}


/*
====================
Sys_InitNetworking
====================
*/
void Sys_InitNetworking( void ) {
    Sys_Printf("void Sys_InitNetworking( void )\r\n");
}



/*
====================
Sys_ShutdownNetworking
====================
*/
void Sys_ShutdownNetworking( void ) {
    Sys_Printf("void Sys_ShutdownNetworking( void )\r\n");
}


/*
=============
Sys_StringToNetAdr
=============
*/
bool Sys_StringToNetAdr( const char *s, netadr_t *a, bool doDNSResolve ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_StringToNetAdr( const char *s, netadr_t *a, bool doDNSResolve )\r\n");
    return retVal;
}


/*
=============
Sys_NetAdrToString
=============
*/
const char *Sys_NetAdrToString( const netadr_t a ) {
    Sys_Printf("char *Sys_NetAdrToString( const netadr_t a )\r\n");
    return NULL;
}


/*
==================
Sys_IsLANAddress
==================
*/
bool Sys_IsLANAddress( const netadr_t adr ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_IsLANAddress( const netadr_t adr )\r\n");
    return retVal;
}


/*
===================
Sys_CompareNetAdrBase

Compares without the port
===================
*/
bool Sys_CompareNetAdrBase( const netadr_t a, const netadr_t b ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_CompareNetAdrBase( const netadr_t a, const netadr_t b )\r\n");
    return retVal;
}


//=============================================================================


#define MAX_UDP_MSG_SIZE	1400

typedef struct udpMsg_s {
	byte				data[MAX_UDP_MSG_SIZE];
	netadr_t			address;
	int					size;
	int					time;
	struct udpMsg_s *	next;
} udpMsg_t;

class idUDPLag {
public:
						idUDPLag( void );
						~idUDPLag( void );

	udpMsg_t *			sendFirst;
	udpMsg_t *			sendLast;
	udpMsg_t *			recieveFirst;
	udpMsg_t *			recieveLast;
	idBlockAlloc<udpMsg_t, 64> udpMsgAllocator;
};

idUDPLag::idUDPLag( void ) {
	sendFirst = sendLast = recieveFirst = recieveLast = NULL;
}

idUDPLag::~idUDPLag( void ) {
	udpMsgAllocator.Shutdown();
}

idUDPLag *udpPorts[65536];

/*
==================
idPort::idPort
==================
*/
idPort::idPort() {
	netSocket = 0;
	memset( &bound_to, 0, sizeof( bound_to ) );
}

/*
==================
idPort::~idPort
==================
*/
idPort::~idPort() {
	Close();
}

/*
==================
InitForPort
==================
*/
bool idPort::InitForPort( int portNumber ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPort::InitForPort( int portNumber )\r\n");
    return retVal;
}


/*
==================
idPort::Close
==================
*/
void idPort::Close() {
    Sys_Printf("void idPort::Close()\r\n");
}


/*
==================
idPort::GetPacket
==================
*/
bool idPort::GetPacket( netadr_t &from, void *data, int &size, int maxSize ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPort::GetPacket( netadr_t &from, void *data, int &size, int maxSize )\r\n");
    return retVal;
}


/*
==================
idPort::GetPacketBlocking
==================
*/
bool idPort::GetPacketBlocking( netadr_t &from, void *data, int &size, int maxSize, int timeout ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPort::GetPacketBlocking( netadr_t &from, void *data, int &size, int maxSize, int timeout )\r\n");
    return retVal;
}


/*
==================
idPort::SendPacket
==================
*/
void idPort::SendPacket( const netadr_t to, const void *data, int size ) {
    Sys_Printf("void idPort::SendPacket( const netadr_t to, const void *data, int size )\r\n");
}



//=============================================================================

/*
==================
idTCP::idTCP
==================
*/
idTCP::idTCP() {
	fd = 0;
	memset( &address, 0, sizeof( address ) );
}

/*
==================
idTCP::~idTCP
==================
*/
idTCP::~idTCP() {
	Close();
}

/*
==================
idTCP::Init
==================
*/
bool idTCP::Init( const char *host, short port ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idTCP::Init( const char *host, short port )\r\n");
    return retVal;
}


/*
==================
idTCP::Close
==================
*/
void idTCP::Close() {
    Sys_Printf("void idTCP::Close()\r\n");
}


/*
==================
idTCP::Read
==================
*/
int idTCP::Read( void *data, int size ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTCP::Read( void *data, int size )\r\n");
    return retVal;
}


/*
==================
idTCP::Write
==================
*/
int idTCP::Write( void *data, int size ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTCP::Write( void *data, int size )\r\n");
    return retVal;
}

