
#include "../precompiled.h"
#pragma hdrstop

/*
   RSA Data Security, Inc., MD4 message-digest algorithm. (RFC1320)
*/

/*

Copyright (C) 1991-2, RSA Data Security, Inc. Created 1991. All
rights reserved.

License to copy and use this software is granted provided that it
is identified as the "RSA Data Security, Inc. MD4 Message-Digest
Algorithm" in all material mentioning or referencing this software
or this function.

License is also granted to make and use derivative works provided
that such works are identified as "derived from the RSA Data
Security, Inc. MD4 Message-Digest Algorithm" in all material
mentioning or referencing the derived work.

RSA Data Security, Inc. makes no representations concerning either
the merchantability of this software or the suitability of this
software for any particular purpose. It is provided "as is"
without express or implied warranty of any kind.

These notices must be retained in any copies of any part of this
documentation and/or software.

*/

/* POINTER defines a generic pointer type */
typedef unsigned char *POINTER;

/* UINT2 defines a two byte word */
typedef unsigned short int UINT2;

/* UINT4 defines a four byte word */
typedef unsigned long int UINT4;

/* MD4 context. */
typedef struct {
	UINT4 state[4];				/* state (ABCD) */
	UINT4 count[2];				/* number of bits, modulo 2^64 (lsb first) */
	unsigned char buffer[64]; 	/* input buffer */
} MD4_CTX;

/* Constants for MD4Transform routine.  */
#define S11 3
#define S12 7
#define S13 11
#define S14 19
#define S21 3
#define S22 5
#define S23 9
#define S24 13
#define S31 3
#define S32 9
#define S33 11
#define S34 15

static unsigned char PADDING[64] = {
0x80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

/* F, G and H are basic MD4 functions. */
#define F(x, y, z) (((x) & (y)) | ((~x) & (z)))
#define G(x, y, z) (((x) & (y)) | ((x) & (z)) | ((y) & (z)))
#define H(x, y, z) ((x) ^ (y) ^ (z))

/* ROTATE_LEFT rotates x left n bits. */
#define ROTATE_LEFT(x, n) (((x) << (n)) | ((x) >> (32-(n))))

/* FF, GG and HH are transformations for rounds 1, 2 and 3 */
/* Rotation is separate from addition to prevent recomputation */
#define FF(a, b, c, d, x, s) {(a) += F ((b), (c), (d)) + (x); (a) = ROTATE_LEFT ((a), (s));}

#define GG(a, b, c, d, x, s) {(a) += G ((b), (c), (d)) + (x) + (UINT4)0x5a827999; (a) = ROTATE_LEFT ((a), (s));}

#define HH(a, b, c, d, x, s) {(a) += H ((b), (c), (d)) + (x) + (UINT4)0x6ed9eba1; (a) = ROTATE_LEFT ((a), (s));}

/* Encodes input (UINT4) into output (unsigned char). Assumes len is a multiple of 4. */
static void Encode( unsigned char *output, UINT4 *input, unsigned int len ) {
    Sys_Printf("void Encode( unsigned char *output, UINT4 *input, unsigned int len )\r\n");
}


/* Decodes input (unsigned char) into output (UINT4). Assumes len is a multiple of 4. */
static void Decode( UINT4 *output, const unsigned char *input, unsigned int len ) {
    Sys_Printf("void Decode( UINT4 *output, const unsigned char *input, unsigned int len )\r\n");
}


/* MD4 basic transformation. Transforms state based on block. */
static void MD4_Transform( UINT4 state[4], const unsigned char block[64] ) {
    Sys_Printf("void MD4_Transform( UINT4 state[4], const unsigned char block[64] )\r\n");
}


/* MD4 initialization. Begins an MD4 operation, writing a new context. */
void MD4_Init( MD4_CTX *context ) {
    Sys_Printf("void MD4_Init( MD4_CTX *context )\r\n");
}


/* MD4 block update operation. Continues an MD4 message-digest operation, processing another message block, and updating the context. */
void MD4_Update( MD4_CTX *context, const unsigned char *input, unsigned int inputLen ) {
    Sys_Printf("void MD4_Update( MD4_CTX *context, const unsigned char *input, unsigned int inputLen )\r\n");
}


/* MD4 finalization. Ends an MD4 message-digest operation, writing the message digest and zeroizing the context. */
void MD4_Final( MD4_CTX *context, unsigned char digest[16] ) {
    Sys_Printf("void MD4_Final( MD4_CTX *context, unsigned char digest[16] )\r\n");
}


/*
===============
MD4_BlockChecksum
===============
*/
unsigned long MD4_BlockChecksum( const void *data, int length ) {
    long retVal;
    memset(&retVal, 0, sizeof(long));
    Sys_Printf("long MD4_BlockChecksum( const void *data, int length )\r\n");
    return retVal;
}

