/*
 * sys_net.cpp
 *
 *  Created on: 12 sep. 2012
 *      Author: Danny
 *  Copied from posix_net.cpp
 */

#include "../../idlib/precompiled.h"
#include <network.h>
#include <limits.h>

typedef struct {
	unsigned long ip;
	unsigned long mask;
} net_interface;

#define 		MAX_INTERFACES	4
int				num_interfaces = 0;
net_interface	netint[MAX_INTERFACES];

idPort	clientPort, serverPort;
idCVar net_ip( "net_ip", "localhost", CVAR_SYSTEM, "local IP address" );
idCVar net_port( "net_port", "", CVAR_SYSTEM | CVAR_INTEGER, "local IP port number" );


/*
==================
Sys_InitNetworking
==================
*/
void Sys_InitNetworking( void ) {
Sys_Printf(">>> Sys_InitNetworking\r\n");

	char localip[16] = {0};
	char gateway[16] = {0};
	char netmask[16] = {0};

	num_interfaces = 0;

	// DRS this should get 'external ip'
	if_config(localip, netmask, gateway, TRUE);

	netint[ num_interfaces ].ip = inet_addr(localip);
	netint[ num_interfaces ].mask = inet_addr(netmask);

	num_interfaces++;

	// Loopback always 128.0.0.1 unless if_config failed
	netint[ num_interfaces ].ip = inet_addr("127.0.0.1");
	netint[ num_interfaces ].mask = inet_addr("255.0.0.0");

	num_interfaces++;

	for (int i=0; i<num_interfaces; i++) {
		unsigned char* ip = (unsigned char *) &(netint[i].ip);
		unsigned char* ms = (unsigned char *) &(netint[i].mask);
		common->Printf( "ADDR %d.%d.%d.%d\r\n", ip[0], ip[1], ip[2], ip[3]);
		common->Printf( "MASK %d.%d.%d.%d\r\n", ms[0], ms[1], ms[2], ms[3]);
	}
}


/*
==================
Sys_IsLANAddress
==================
*/
bool Sys_IsLANAddress( const netadr_t adr ) {
	int i;
	unsigned long *p_ip;
	unsigned long ip;

#if ID_NOLANADDRESS
	common->Printf( "Sys_IsLANAddress: ID_NOLANADDRESS\n" );
	return false;
#endif

	if ( adr.type == NA_LOOPBACK ) {
		return true;
	}

	if ( adr.type != NA_IP ) {
		return false;
	}

	if ( !num_interfaces ) {
		return false;	// well, if there's no networking, there are no LAN addresses, right
	}

	for ( i = 0; i < num_interfaces; i++ ) {
		p_ip = (unsigned long *)&adr.ip[0];
		ip = ntohl( *p_ip );
		if( ( netint[i].ip & netint[i].mask ) == ( ip & netint[i].mask ) ) {
			return true;
		}
	}

	return false;
}


/*
=============
ExtractPort
=============
*/
static bool ExtractPort( const char *src, char *buf, int bufsize, int *port ) {
	char *p;
	strncpy( buf, src, bufsize );
	p = buf; p += Min( bufsize - 1, (int)strlen( src ) ); *p = '\0';
	p = strchr( buf, ':' );
	if ( !p ) {
		return false;
	}
	*p = '\0';
	*port = strtol( p+1, NULL, 10 );
	if ( ( *port == 0 && errno == EINVAL ) ||
		 ( ( *port == LONG_MIN || *port == LONG_MAX ) && errno == ERANGE ) ) {
		return false;
	}
	return true;
}



/*
=============
StringToSockaddr
=============
*/
static bool StringToSockaddr( const char *s, struct sockaddr_in *sadr, bool doDNSResolve ) {
	struct hostent *h;
	char buf[256];
	int port;

	memset( sadr, 0, sizeof( *sadr ) );
	sadr->sin_family = AF_INET;

	sadr->sin_port = 0;

	if (s[0] >= '0' && s[0] <= '9') {
		if ( !inet_aton( s, &sadr->sin_addr ) ) {
			// check for port
			if ( !ExtractPort( s, buf, sizeof( buf ), &port ) ) {
				return false;
			}
			if ( !inet_aton( buf, &sadr->sin_addr ) ) {
				return false;
			}
			sadr->sin_port = htons( port );
		}
	} else if ( doDNSResolve ) {
		// try to remove the port first, otherwise the DNS gets confused into multiple timeouts
		// failed or not failed, buf is expected to contain the appropriate host to resolve
		if ( ExtractPort( s, buf, sizeof( buf ), &port ) ) {
			sadr->sin_port = htons( port );
		}
		if ( !( h = net_gethostbyname( buf ) ) ) {
			return false;
		}
		*(int *) &sadr->sin_addr =
			*(int *) h->h_addr_list[0];
	}

	return true;
}


/*
=============
SockadrToNetadr
=============
*/
static void SockadrToNetadr(struct sockaddr_in *s, netadr_t * a) {
	unsigned int ip = *(int *)&s->sin_addr;
	*(int *)&a->ip = ip;
	a->port = ntohs( s->sin_port );
	// we store in network order, that loopback test is host order..
	ip = ntohl( ip );
Sys_Printf(">>> SockadrToNetadr %X\r\n", ip);
	if ( ip == 0x80 ) {
		a->type = NA_LOOPBACK;
	} else {
		a->type = NA_IP;
	}
}


/*
=============
Sys_StringToAdr
=============
*/
bool Sys_StringToNetAdr( const char *s, netadr_t * a, bool doDNSResolve ) {
	struct sockaddr_in sadr;

	if ( !StringToSockaddr( s, &sadr, doDNSResolve ) ) {
		return false;
	}

	SockadrToNetadr( &sadr, a );
	return true;
}

/*
=============
NetadrToSockadr
=============
*/
static void NetadrToSockadr( const netadr_t * a, struct sockaddr_in *s ) {
	memset(s, 0, sizeof(*s));

	if ( a->type == NA_BROADCAST ) {
		s->sin_family = AF_INET;

		s->sin_port = htons( (short)a->port );
		*(int *) &s->sin_addr = -1;
	} else if ( a->type == NA_IP || a->type == NA_LOOPBACK ) {
		s->sin_family = AF_INET;

		*(int *) &s->sin_addr = *(int *) &a->ip;
		s->sin_port = htons( (short)a->port );
	}
}


/*
===================
Sys_NetAdrToString
===================
*/
const char *Sys_NetAdrToString( const netadr_t a ) {
	static char s[64];

	if ( a.type == NA_LOOPBACK ) {
		idStr::snPrintf( s, sizeof(s), "localhost" );
	} else if ( a.type == NA_IP ) {
		idStr::snPrintf( s, sizeof(s), "%i.%i.%i.%i:%i",
			a.ip[0], a.ip[1], a.ip[2], a.ip[3], BigShort(a.port) );
	}
	return s;
}


/*
===================
Sys_CompareNetAdrBase

Compares without the port
===================
*/
bool Sys_CompareNetAdrBase( const netadr_t a, const netadr_t b ) {
	if ( a.type != b.type ) {
		return false;
	}

	if ( a.type == NA_LOOPBACK ) {
		return true;
	}

	if ( a.type == NA_IP ) {
		if ( a.ip[0] == b.ip[0] && a.ip[1] == b.ip[1] && a.ip[2] == b.ip[2] && a.ip[3] == b.ip[3] ) {
			return true;
		}
		return false;
	}

	common->Printf( "Sys_CompareNetAdrBase: bad address type\n" );
	return false;
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

	if ( ( newsocket = net_socket( PF_INET, SOCK_DGRAM, IPPROTO_UDP ) ) == -1 ) {
		common->Printf( "ERROR: IPSocket: socket: %s", strerror( errno ) );
		return 0;
	}
	// make it non-blocking
	int on = 1;
	if ( net_ioctl( newsocket, FIONBIO, &on ) == -1 ) {
		common->Printf( "ERROR: IPSocket: ioctl FIONBIO:%s\n",
				   strerror( errno ) );
		return 0;
	}
	// make it broadcast capable
	if ( net_setsockopt( newsocket, SOL_SOCKET, SO_BROADCAST, (char *) &i, sizeof(i) ) == -1 ) {
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

	if ( net_bind( newsocket, (struct sockaddr *)&address, sizeof( address ) ) == -1 ) {
		common->Printf( "ERROR: IPSocket: bind: %s\n", strerror( errno ) );
		net_close( newsocket );
		return 0;
	}

	if ( bound_to ) {
#ifndef DOOMGX
		unsigned int len = sizeof( address );

		if ( (unsigned int)(getsockname( newsocket, (struct sockaddr *)&address, (socklen_t*)&len )) == -1 ) {
			common->Printf( "ERROR: IPSocket: getsockname: %s\n", strerror( errno ) );
			net_close( newsocket );
			return 0;
		}
#endif
		SockadrToNetadr( &address, bound_to );
	}

	return newsocket;
}

//==========================================================


idPort::idPort() {
#ifdef TRACE_CONSTRUCTS
    Sys_DebugPrintf("idPort::idPort() size %d\r\n", sizeof(*this));
#endif

	netSocket = 0;
	memset( &bound_to, 0, sizeof( bound_to ) );
}

idPort::~idPort() {
	Close();
}

void idPort::Close() {
	if ( netSocket ) {
		net_close(netSocket);
		netSocket = 0;
		memset( &bound_to, 0, sizeof( bound_to ) );
	}
}

/*
==================
idPort::GetPacket
==================
*/
bool idPort::GetPacket( netadr_t &net_from, void *data, int &size, int maxSize ) {
	int ret;
	struct sockaddr_in from;
	int fromlen;
Sys_Printf(">>> idPort::GetPacket\r\n");
	if ( !netSocket ) {
		return false;
	}

	fromlen = sizeof( from );
Sys_Printf(">>> idPort::GetPacket net_recvfrom\r\n");
	ret = net_recvfrom( netSocket, data, maxSize, 0, (struct sockaddr *) &from, (socklen_t *) &fromlen );

	if ( ret == -1 ) {
		if (errno == EWOULDBLOCK || errno == ECONNREFUSED) {
			// those commonly happen, don't verbose
			return false;
		}
		common->DPrintf( "idPort::GetPacket recvfrom(): %s\n", strerror( errno ) );
Sys_Printf(">>> idPort::GetPacket recvfrom(): %s\r\n", strerror( errno ));
		return false;
	}

	if ( ret < maxSize ) Sys_Error("idPort::GetPacket ret < size\r\n");

	SockadrToNetadr( &from, &net_from );
	size = ret;
	return true;
}


/*
==================
idPort::GetPacketBlocking
==================
*/
bool idPort::GetPacketBlocking( netadr_t &net_from, void *data, int &size, int maxSize, int timeout ) {
	fd_set				set;
	struct timeval		tv;
	int					ret;
Sys_Printf(">>> idPort::GetPacketBlocking\r\n");

	if ( !netSocket ) {
		return false;
	}

	if ( timeout < 0 ) {
		return GetPacket( net_from, data, size, maxSize );
	}

	FD_ZERO( &set );
	FD_SET( netSocket, &set );

	tv.tv_sec = timeout / 1000;
	tv.tv_usec = ( timeout % 1000 ) * 1000;
Sys_Printf(">>> idPort::GetPacketBlocking net_select\r\n");
	ret = net_select( netSocket+1, &set, NULL, NULL, &tv );
	if ( ret == -1 ) {
		if ( errno == EINTR ) {
			common->DPrintf( "idPort::GetPacketBlocking: select EINTR\n" );
			return false;
		} else {
			common->Error( "idPort::GetPacketBlocking: select failed: %s\n", strerror( errno ) );
		}
	}

	if ( ret == 0 ) {
		// timed out
		return false;
	}
	struct sockaddr_in from;
	int fromlen;
	fromlen = sizeof( from );
Sys_Printf(">>> idPort::GetPacketBlocking net_recvfrom\r\n");
	ret = net_recvfrom( netSocket, data, maxSize, 0, (struct sockaddr *)&from, (socklen_t *)&fromlen );
	if ( ret == -1 ) {
		// there should be no blocking errors once select declares things are good
		common->DPrintf( "idPort::GetPacketBlocking: %s\n", strerror( errno ) );
Sys_Printf(">>> idPort::GetPacketBlocking: %s\r\n", strerror( errno ));
		return false;
	}

	if ( ret < maxSize ) Sys_Error("idPort::GetPacketBlocking ret < size\r\n");

	SockadrToNetadr( &from, &net_from );
	size = ret;
	return true;
}

/*
==================
idPort::SendPacket
==================
*/
void idPort::SendPacket( const netadr_t to, const void *data, int size ) {
	int ret;
	struct sockaddr_in addr;
Sys_Printf(">>> idPort::SendPacket\r\n");

	if ( to.type == NA_BAD ) {
		common->Warning( "idPort::SendPacket: bad address type NA_BAD - ignored" );
Sys_Printf(">>> idPort::SendPacket: bad address type NA_BAD - ignored\r\n");
		return;
	}

	if ( !netSocket ) {
		return;
	}

	NetadrToSockadr( &to, &addr );

Sys_Printf(">>> idPort::SendPacket net_sendto\r\n");
	ret = net_sendto( netSocket, data, size, 0, (struct sockaddr *) &addr, sizeof(addr) );
	if ( ret == -1 ) {
		common->Printf( "idPort::SendPacket ERROR: to %s: %s\n", Sys_NetAdrToString( to ), strerror( errno ) );
Sys_Printf(">>> idPort::SendPacket ERROR: to %s: %s\r\n", Sys_NetAdrToString( to ), strerror( errno ));
	}
}


/*
==================
idPort::InitForPort
==================
*/
bool idPort::InitForPort( int portNumber ) {
Sys_Printf(">>> bool idPort::InitForPort %s %d\r\n", net_ip.GetString(), portNumber);
	netSocket = IPSocket( net_ip.GetString(), portNumber, &bound_to );
	if ( netSocket <= 0 ) {
		netSocket = 0;
		memset( &bound_to, 0, sizeof( bound_to ) );
		return false;
	}
	return true;
}




