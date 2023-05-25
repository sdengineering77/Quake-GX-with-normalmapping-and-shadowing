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

#include "../idlib/precompiled.h"
#pragma hdrstop

/*
============
idCmdArgs::operator=
============
*/
void idCmdArgs::operator=( const idCmdArgs &args ) {
	int i;

	argc = args.argc;
	memcpy( tokenized, args.tokenized, MAX_COMMAND_STRING );
	for ( i = 0; i < argc; i++ ) {
		argv[ i ] = tokenized + ( args.argv[ i ] - args.tokenized );
	}
}

/*
============
idCmdArgs::Args
============
*/
const char *idCmdArgs::Args(  int start, int end, bool escapeArgs ) const {
    Sys_Printf("char *idCmdArgs::Args(  int start, int end, bool escapeArgs )\r\n");
    return NULL;
}


/*
============
idCmdArgs::TokenizeString

Parses the given string into command line tokens.
The text is copied to a separate buffer and 0 characters
are inserted in the appropriate place. The argv array
will point into this temporary buffer.
============
*/
void idCmdArgs::TokenizeString( const char *text, bool keepAsStrings ) {
    Sys_Printf("void idCmdArgs::TokenizeString( const char *text, bool keepAsStrings )\r\n");
}


/*
============
idCmdArgs::AppendArg
============
*/
void idCmdArgs::AppendArg( const char *text ) {
    Sys_Printf("void idCmdArgs::AppendArg( const char *text )\r\n");
}


/*
============
idCmdArgs::GetArgs
============
*/
const char **idCmdArgs::GetArgs( int *_argc ) {
    Sys_Printf("char **idCmdArgs::GetArgs( int *_argc )\r\n");
    return NULL;
}


