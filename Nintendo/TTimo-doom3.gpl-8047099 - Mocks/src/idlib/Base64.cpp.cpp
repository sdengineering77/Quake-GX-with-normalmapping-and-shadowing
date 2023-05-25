
#include "precompiled.h"
#pragma hdrstop

/*
Copyright (c) 1996 Lars Wirzenius.  All rights reserved.

June 14 2003: TTimo <ttimo@idsoftware.com>
	modified + endian bug fixes
	http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=197039

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

1. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.
*/

/*
============
idBase64::Encode
============
*/
static const char sixtet_to_base64[] = 
	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

void idBase64::Encode( const byte *from, int size ) {
    Sys_Printf("void idBase64::Encode( const byte *from, int size )\r\n");
}


/*
============
idBase64::DecodeLength
returns the minimum size in bytes of the target buffer for decoding
4 base64 digits <-> 3 bytes
============
*/
int idBase64::DecodeLength( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBase64::DecodeLength( void )\r\n");
    return retVal;
}


/*
============
idBase64::Decode
============
*/
int idBase64::Decode( byte *to ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idBase64::Decode( byte *to )\r\n");
    return retVal;
}


/*
============
idBase64::Encode
============
*/
void idBase64::Encode( const idStr &src ) {
    Sys_Printf("void idBase64::Encode( const idStr &src )\r\n");
}


/*
============
idBase64::Decode
============
*/
void idBase64::Decode( idStr &dest ) const {
    Sys_Printf("void idBase64::Decode( idStr &dest )\r\n");
}


/*
============
idBase64::Decode
============
*/
void idBase64::Decode( idFile *dest ) const {
    Sys_Printf("void idBase64::Decode( idFile *dest )\r\n");
}


#if 0

void idBase64_TestBase64() {
    Sys_Printf("void idBase64_TestBase64()\r\n");
}


#endif
