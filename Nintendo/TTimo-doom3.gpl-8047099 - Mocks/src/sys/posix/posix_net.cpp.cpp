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
#include <signal.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <sys/param.h>
#include <sys/ioctl.h>
#include <sys/uio.h>
#include <errno.h>
#include <sys/select.h>
#include <net/if.h>
#if MACOS_X
#include <ifaddrs.h>
#endif

#include "../../idlib/precompiled.h"

idPort clientPort, serverPort;

idCVar net_ip( "net_ip", "localhost", CVAR_SYSTEM, "local IP address" );
idCVar net_port( "net_port", "", CVAR_SYSTEM | CVAR_INTEGER, "local IP port number" );

typedef struct {
	unsigned long ip;
	unsigned long mask;
} net_interface;

#define 		MAX_INTERFACES	32
int				num_interfaces = 0;
net_interface	netint[MAX_INTERFACES];

/*
=============
NetadrToSockadr
=============
*/
static void NetadrToSockadr( const netadr_t * a, struct sockaddr_in *s ) {
    Sys_Printf("void NetadrToSockadr( const netadr_t * a, struct sockaddr_in *s )\r\n");
}


/*
=============
SockadrToNetadr
=============
*/
static void SockadrToNetadr(struct sockaddr_in *s, netadr_t * a) {
    Sys_Printf("void SockadrToNetadr(struct sockaddr_in *s, netadr_t * a)\r\n");
}


/*
=============
ExtractPort
=============
*/
static bool ExtractPort( const char *src, char *buf, int bufsize, int *port ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool ExtractPort( const char *src, char *buf, int bufsize, int *port )\r\n");
    return retVal;
}


/*
=============
StringToSockaddr
=============
*/
static bool StringToSockaddr( const char *s, struct sockaddr_in *sadr, bool doDNSResolve ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool StringToSockaddr( const char *s, struct sockaddr_in *sadr, bool doDNSResolve )\r\n");
    return retVal;
}


/*
=============
Sys_StringToAdr
=============
*/
bool Sys_StringToNetAdr( const char *s, netadr_t * a, bool doDNSResolve ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool Sys_StringToNetAdr( const char *s, netadr_t * a, bool doDNSResolve )\r\n");
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


/*
====================
NET_InitNetworking
====================
*/
void Sys_InitNetworking(void)
{
    Sys_Printf("void Sys_InitNetworking(void)\r\n");
}


/*
====================
IPSocket
====================
*/
static int IPSocket( const char *net_interface, int port, netadr_t *bound_to = NULL ) {
	int newsocket;
	struct sockaddr_in address;
	int i = 1;

	if ( net_interface ) {
		common->Printf( "Opening IP socket: %s:%i\n", net_interface, port );
	} else {
		common->Printf( "Opening IP socket: localhost:%i\n", port );
	}

	if ( ( newsocket = socket( PF_INET, SOCK_DGRAM, IPPROTO_UDP ) ) == -1 ) {
		common->Printf( "ERROR: IPSocket: socket: %s", strerror( errno ) );
		return 0;
	}
	// make it non-blocking
	int on = 1;
	if ( ioctl( newsocket, FIONBIO, &on ) == -1 ) {
		common->Printf( "ERROR: IPSocket: ioctl FIONBIO:%s\n",
				   strerror( errno ) );
		return 0;
	}
	// make it broadcast capable
	if ( setsockopt( newsocket, SOL_SOCKET, SO_BROADCAST, (char *) &i, sizeof(i) ) == -1 ) {
		common->Printf( "ERROR: IPSocket: setsockopt SO_BROADCAST:%s\n", strerror( errno ) );
		return 0;
	}

	if ( !net_interface || !net_interface[ 0 ]
		|| !idStr::Icmp( net_interface, "localhost" ) ) {
		address.sin_addr.s_addr = INADDR_ANY;
	} else {
		StringToSockaddr( net_interface, &address, true );
	}

	if ( port == PORT_ANY ) {
		address.sin_port = 0;
	} else {
		address.sin_port = htons((short) port);
	}

	address.sin_family = AF_INET;

	if ( bind( newsocket, (const struct sockaddr *)&address, sizeof( address ) ) == -1 ) {
		common->Printf( "ERROR: IPSocket: bind: %s\n", strerror( errno ) );
		close( newsocket );
		return 0;
	}

	if ( bound_to ) {
		unsigned int len = sizeof( address );
		if ( (unsigned int)(getsockname( newsocket, (struct sockaddr *)&address, (socklen_t*)&len )) == -1 ) {
			common->Printf( "ERROR: IPSocket: getsockname: %s\n", strerror( errno ) );
			close( newsocket );
			return 0;
		}
		SockadrToNetadr( &address, bound_to );
	}

	return newsocket;
}

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
bool idPort::GetPacket( netadr_t &net_from, void *data, int &size, int maxSize ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPort::GetPacket( netadr_t &net_from, void *data, int &size, int maxSize )\r\n");
    return retVal;
}


/*
==================
idPort::GetPacketBlocking
==================
*/
bool idPort::GetPacketBlocking( netadr_t &net_from, void *data, int &size, int maxSize, int timeout ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPort::GetPacketBlocking( netadr_t &net_from, void *data, int &size, int maxSize, int timeout )\r\n");
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


/*
==================
idPort::InitForPort
==================
*/
bool idPort::InitForPort( int portNumber ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idPort::InitForPort( int portNumber )\r\n");
    return retVal;
}


//=============================================================================

/*
==================
idTCP::idTCP
==================
*/
idTCP::idTCP() {
	fd = 0;
	memset(&address, 0, sizeof(address));
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
int idTCP::Read(void *data, int size) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idTCP::Read(void *data, int size)\r\n");
    return retVal;
}


/*
==================
idTCP::Write
==================
*/

static void got_SIGPIPE( int signum ) {
    Sys_Printf("void got_SIGPIPE( int signum )\r\n");
}


int	idTCP::Write(void *data, int size) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("intidTCP::Write(void *data, int size)\r\n");
    return retVal;
}

