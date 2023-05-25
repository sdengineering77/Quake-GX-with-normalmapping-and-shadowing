
#include "../precompiled.h"
#pragma hdrstop

/*
   MD5 Message Digest Algorithm. (RFC1321)
*/

/*

This code implements the MD5 message-digest algorithm.
The algorithm is due to Ron Rivest.  This code was
written by Colin Plumb in 1993, no copyright is claimed.
This code is in the public domain; do with it what you wish.

Equivalent code is available from RSA Data Security, Inc.
This code has been tested against that, and is equivalent,
except that you don't need to include two pages of legalese
with every copy.

To compute the message digest of a chunk of bytes, declare an
MD5Context structure, pass it to MD5Init, call MD5Update as
needed on buffers full of bytes, and then call MD5Final, which
will fill a supplied 16-byte array with the digest.

*/

/* MD5 context. */
typedef struct
{
	unsigned int	state[4];
    unsigned int	bits[2];
    unsigned char	in[64];
} MD5_CTX;

/* The four core functions - F1 is optimized somewhat */
/* #define F1(x, y, z) (x & y | ~x & z) */
#define F1(x, y, z) (z ^ (x & (y ^ z)))
#define F2(x, y, z) F1(z, x, y)
#define F3(x, y, z) (x ^ y ^ z)
#define F4(x, y, z) (y ^ (x | ~z))

/* This is the central step in the MD5 algorithm. */
#define MD5STEP(f, w, x, y, z, data, s) ( w += f(x, y, z) + data,  w = w<<s | w>>(32-s),  w += x )

/*
=================
MD5_Transform

The core of the MD5 algorithm, this alters an existing MD5 hash to
reflect the addition of 16 longwords of new data.  MD5Update blocks
the data and converts bytes into longwords for this routine.
=================
*/
void MD5_Transform( unsigned int state[4], unsigned int in[16] ) {
    Sys_Printf("void MD5_Transform( unsigned int state[4], unsigned int in[16] )\r\n");
}


/*
==================
MD5_Init

MD5 initialization. Begins an MD5 operation, writing a new context.
==================
*/
void MD5_Init( MD5_CTX *ctx ) {
    Sys_Printf("void MD5_Init( MD5_CTX *ctx )\r\n");
}


/*
===================
MD5_Update

MD5 block update operation. Continues an MD5 message-digest operation,
processing another message block, and updating the context.
===================
*/
void MD5_Update( MD5_CTX *ctx, unsigned char const *buf, unsigned int len ) {
    Sys_Printf("void MD5_Update( MD5_CTX *ctx, unsigned char const *buf, unsigned int len )\r\n");
}


/*
===============
MD5_Final

MD5 finalization. Ends an MD5 message-digest operation,
writing the message digest and zeroizing the context.
===============
*/
void MD5_Final( MD5_CTX *ctx, unsigned char digest[16] ) {
    Sys_Printf("void MD5_Final( MD5_CTX *ctx, unsigned char digest[16] )\r\n");
}


/*
===============
MD5_BlockChecksum
===============
*/
unsigned long MD5_BlockChecksum( const void *data, int length ) {
    long retVal;
    memset(&retVal, 0, sizeof(long));
    Sys_Printf("long MD5_BlockChecksum( const void *data, int length )\r\n");
    return retVal;
}

