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

#include "precompiled.h"
#pragma hdrstop

#if !defined( ID_REDIRECT_NEWDELETE ) && !defined( MACOS_X )
	#define USE_STRING_DATA_ALLOCATOR
#endif

#ifdef USE_STRING_DATA_ALLOCATOR
static idDynamicBlockAlloc<char, 1<<18, 128>	stringDataAllocator;
#endif

idVec4	g_color_table[16] =
{
	idVec4(0.0f, 0.0f, 0.0f, 1.0f),
	idVec4(1.0f, 0.0f, 0.0f, 1.0f), // S_COLOR_RED
	idVec4(0.0f, 1.0f, 0.0f, 1.0f), // S_COLOR_GREEN
	idVec4(1.0f, 1.0f, 0.0f, 1.0f), // S_COLOR_YELLOW
	idVec4(0.0f, 0.0f, 1.0f, 1.0f), // S_COLOR_BLUE
	idVec4(0.0f, 1.0f, 1.0f, 1.0f), // S_COLOR_CYAN
	idVec4(1.0f, 0.0f, 1.0f, 1.0f), // S_COLOR_MAGENTA
	idVec4(1.0f, 1.0f, 1.0f, 1.0f), // S_COLOR_WHITE
	idVec4(0.5f, 0.5f, 0.5f, 1.0f), // S_COLOR_GRAY
	idVec4(0.0f, 0.0f, 0.0f, 1.0f), // S_COLOR_BLACK
	idVec4(0.0f, 0.0f, 0.0f, 1.0f),
	idVec4(0.0f, 0.0f, 0.0f, 1.0f),
	idVec4(0.0f, 0.0f, 0.0f, 1.0f),
	idVec4(0.0f, 0.0f, 0.0f, 1.0f),
	idVec4(0.0f, 0.0f, 0.0f, 1.0f),
	idVec4(0.0f, 0.0f, 0.0f, 1.0f),
};

const char *units[2][4] =
{
	{ "B", "KB", "MB", "GB" },
	{ "B/s", "KB/s", "MB/s", "GB/s" }
};

/*
============
idStr::ColorForIndex
============
*/
idVec4 & idStr::ColorForIndex( int i ) {
	return g_color_table[ i & 15 ];
}

/*
============
idStr::ReAllocate
============
*/
void idStr::ReAllocate( int amount, bool keepold ) {
    Sys_Printf("void idStr::ReAllocate( int amount, bool keepold )\r\n");
}


/*
============
idStr::FreeData
============
*/
void idStr::FreeData( void ) {
    Sys_Printf("void idStr::FreeData( void )\r\n");
}


/*
============
idStr::operator=
============
*/
void idStr::operator=( const char *text ) {
	int l;
	int diff;
	int i;

	if ( !text ) {
		// safe behaviour if NULL
		EnsureAlloced( 1, false );
		data[ 0 ] = '\0';
		len = 0;
		return;
	}

	if ( text == data ) {
		return; // copying same thing
	}

	// check if we're aliasing
	if ( text >= data && text <= data + len ) {
		diff = text - data;

		assert( strlen( text ) < (unsigned)len );

		for ( i = 0; text[ i ]; i++ ) {
			data[ i ] = text[ i ];
		}

		data[ i ] = '\0';

		len -= diff;

		return;
	}

	l = strlen( text );
	EnsureAlloced( l + 1, false );
	strcpy( data, text );
	len = l;
}

/*
============
idStr::FindChar

returns -1 if not found otherwise the index of the char
============
*/
int idStr::FindChar( const char *str, const char c, int start, int end ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::FindChar( const char *str, const char c, int start, int end )\r\n");
    return retVal;
}


/*
============
idStr::FindText

returns -1 if not found otherwise the index of the text
============
*/
int idStr::FindText( const char *str, const char *text, bool casesensitive, int start, int end ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::FindText( const char *str, const char *text, bool casesensitive, int start, int end )\r\n");
    return retVal;
}


/*
============
idStr::Filter

Returns true if the string conforms the given filter.
Several metacharacter may be used in the filter.

*          match any string of zero or more characters
?          match any single character
[abc...]   match any of the enclosed characters; a hyphen can
           be used to specify a range (e.g. a-z, A-Z, 0-9)

============
*/
bool idStr::Filter( const char *filter, const char *name, bool casesensitive ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idStr::Filter( const char *filter, const char *name, bool casesensitive )\r\n");
    return retVal;
}


/*
=============
idStr::StripMediaName

  makes the string lower case, replaces backslashes with forward slashes, and removes extension
=============
*/
void idStr::StripMediaName( const char *name, idStr &mediaName ) {
    Sys_Printf("void idStr::StripMediaName( const char *name, idStr &mediaName )\r\n");
}


/*
=============
idStr::CheckExtension
=============
*/
bool idStr::CheckExtension( const char *name, const char *ext ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idStr::CheckExtension( const char *name, const char *ext )\r\n");
    return retVal;
}


/*
=============
idStr::FloatArrayToString
=============
*/
const char *idStr::FloatArrayToString( const float *array, const int length, const int precision ) {
    Sys_Printf("char *idStr::FloatArrayToString( const float *array, const int length, const int precision )\r\n");
    return NULL;
}


/*
============
idStr::Last

returns -1 if not found otherwise the index of the char
============
*/
int idStr::Last( const char c ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::Last( const char c )\r\n");
    return retVal;
}


/*
============
idStr::StripLeading
============
*/
void idStr::StripLeading( const char c ) {
    Sys_Printf("void idStr::StripLeading( const char c )\r\n");
}


/*
============
idStr::StripLeading
============
*/
void idStr::StripLeading( const char *string ) {
    Sys_Printf("void idStr::StripLeading( const char *string )\r\n");
}


/*
============
idStr::StripLeadingOnce
============
*/
bool idStr::StripLeadingOnce( const char *string ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idStr::StripLeadingOnce( const char *string )\r\n");
    return retVal;
}


/*
============
idStr::StripTrailing
============
*/
void idStr::StripTrailing( const char c ) {
    Sys_Printf("void idStr::StripTrailing( const char c )\r\n");
}


/*
============
idStr::StripLeading
============
*/
void idStr::StripTrailing( const char *string ) {
    Sys_Printf("void idStr::StripTrailing( const char *string )\r\n");
}


/*
============
idStr::StripTrailingOnce
============
*/
bool idStr::StripTrailingOnce( const char *string ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idStr::StripTrailingOnce( const char *string )\r\n");
    return retVal;
}


/*
============
idStr::Replace
============
*/
void idStr::Replace( const char *old, const char *nw ) {
    Sys_Printf("void idStr::Replace( const char *old, const char *nw )\r\n");
}


/*
============
idStr::Mid
============
*/
const char *idStr::Mid( int start, int len, idStr &result ) const {
    Sys_Printf("char *idStr::Mid( int start, int len, idStr &result )\r\n");
    return NULL;
}


/*
============
idStr::Mid
============
*/
idStr idStr::Mid( int start, int len ) const {
    idStr retVal;
    memset(&retVal, 0, sizeof(idStr));
    Sys_Printf("idStr idStr::Mid( int start, int len )\r\n");
    return retVal;
}


/*
============
idStr::StripTrailingWhitespace
============
*/
void idStr::StripTrailingWhitespace( void ) {
    Sys_Printf("void idStr::StripTrailingWhitespace( void )\r\n");
}


/*
============
idStr::StripQuotes

Removes the quotes from the beginning and end of the string
============
*/
idStr& idStr::StripQuotes ( void )
{
	if ( data[0] != '\"' )
	{
		return *this;
	}
	
	// Remove the trailing quote first
	if ( data[len-1] == '\"' )
	{
		data[len-1] = '\0';
		len--;
	}

	// Strip the leading quote now
	len--;	
	memmove( &data[ 0 ], &data[ 1 ], len );
	data[len] = '\0';
	
	return *this;
}

/*
=====================================================================

  filename methods

=====================================================================
*/

/*
============
idStr::FileNameHash
============
*/
int idStr::FileNameHash( void ) const {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::FileNameHash( void )\r\n");
    return retVal;
}


/*
============
idStr::BackSlashesToSlashes
============
*/
idStr &idStr::BackSlashesToSlashes( void ) {
	int i;

	for ( i = 0; i < len; i++ ) {
		if ( data[ i ] == '\\' ) {
			data[ i ] = '/';
		}
	}
	return *this;
}

/*
============
idStr::SetFileExtension
============
*/
idStr &idStr::SetFileExtension( const char *extension ) {
	StripFileExtension();
	if ( *extension != '.' ) {
		Append( '.' );
	}
	Append( extension );
	return *this;
}

/*
============
idStr::StripFileExtension
============
*/
idStr &idStr::StripFileExtension( void ) {
	int i;

	for ( i = len-1; i >= 0; i-- ) {
		if ( data[i] == '.' ) {
			data[i] = '\0';
			len = i;
			break;
		}
	}
	return *this;
}

/*
============
idStr::StripAbsoluteFileExtension
============
*/
idStr &idStr::StripAbsoluteFileExtension( void ) {
	int i;

	for ( i = 0; i < len; i++ ) {
		if ( data[i] == '.' ) {
			data[i] = '\0';
			len = i;
			break;
		}
	}

	return *this;
}

/*
==================
idStr::DefaultFileExtension
==================
*/
idStr &idStr::DefaultFileExtension( const char *extension ) {
	int i;

	// do nothing if the string already has an extension
	for ( i = len-1; i >= 0; i-- ) {
		if ( data[i] == '.' ) {
			return *this;
		}
	}
	if ( *extension != '.' ) {
		Append( '.' );
	}
	Append( extension );
	return *this;
}

/*
==================
idStr::DefaultPath
==================
*/
idStr &idStr::DefaultPath( const char *basepath ) {
	if ( ( ( *this )[ 0 ] == '/' ) || ( ( *this )[ 0 ] == '\\' ) ) {
		// absolute path location
		return *this;
	}

	*this = basepath + *this;
	return *this;
}

/*
====================
idStr::AppendPath
====================
*/
void idStr::AppendPath( const char *text ) {
    Sys_Printf("void idStr::AppendPath( const char *text )\r\n");
}


/*
==================
idStr::StripFilename
==================
*/
idStr &idStr::StripFilename( void ) {
	int pos;

	pos = Length() - 1;
	while( ( pos > 0 ) && ( ( *this )[ pos ] != '/' ) && ( ( *this )[ pos ] != '\\' ) ) {
		pos--;
	}

	if ( pos < 0 ) {
		pos = 0;
	}

	CapLength( pos );
	return *this;
}

/*
==================
idStr::StripPath
==================
*/
idStr &idStr::StripPath( void ) {
	int pos;

	pos = Length();
	while( ( pos > 0 ) && ( ( *this )[ pos - 1 ] != '/' ) && ( ( *this )[ pos - 1 ] != '\\' ) ) {
		pos--;
	}

	*this = Right( Length() - pos );
	return *this;
}

/*
====================
idStr::ExtractFilePath
====================
*/
void idStr::ExtractFilePath( idStr &dest ) const {
    Sys_Printf("void idStr::ExtractFilePath( idStr &dest )\r\n");
}


/*
====================
idStr::ExtractFileName
====================
*/
void idStr::ExtractFileName( idStr &dest ) const {
    Sys_Printf("void idStr::ExtractFileName( idStr &dest )\r\n");
}


/*
====================
idStr::ExtractFileBase
====================
*/
void idStr::ExtractFileBase( idStr &dest ) const {
    Sys_Printf("void idStr::ExtractFileBase( idStr &dest )\r\n");
}


/*
====================
idStr::ExtractFileExtension
====================
*/
void idStr::ExtractFileExtension( idStr &dest ) const {
    Sys_Printf("void idStr::ExtractFileExtension( idStr &dest )\r\n");
}



/*
=====================================================================

  char * methods to replace library functions

=====================================================================
*/

/*
============
idStr::IsNumeric

Checks a string to see if it contains only numerical values.
============
*/
bool idStr::IsNumeric( const char *s ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idStr::IsNumeric( const char *s )\r\n");
    return retVal;
}


/*
============
idStr::HasLower

Checks if a string has any lowercase chars
============
*/
bool idStr::HasLower( const char *s ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idStr::HasLower( const char *s )\r\n");
    return retVal;
}


/*
============
idStr::HasUpper
	
Checks if a string has any uppercase chars
============
*/
bool idStr::HasUpper( const char *s ) {
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool idStr::HasUpper( const char *s )\r\n");
    return retVal;
}


/*
================
idStr::Cmp
================
*/
int idStr::Cmp( const char *s1, const char *s2 ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::Cmp( const char *s1, const char *s2 )\r\n");
    return retVal;
}


/*
================
idStr::Cmpn
================
*/
int idStr::Cmpn( const char *s1, const char *s2, int n ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::Cmpn( const char *s1, const char *s2, int n )\r\n");
    return retVal;
}


/*
================
idStr::Icmp
================
*/
int idStr::Icmp( const char *s1, const char *s2 ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::Icmp( const char *s1, const char *s2 )\r\n");
    return retVal;
}


/*
================
idStr::Icmpn
================
*/
int idStr::Icmpn( const char *s1, const char *s2, int n ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::Icmpn( const char *s1, const char *s2, int n )\r\n");
    return retVal;
}


/*
================
idStr::Icmp
================
*/
int idStr::IcmpNoColor( const char *s1, const char *s2 ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::IcmpNoColor( const char *s1, const char *s2 )\r\n");
    return retVal;
}


/*
================
idStr::IcmpPath
================
*/
int idStr::IcmpPath( const char *s1, const char *s2 ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::IcmpPath( const char *s1, const char *s2 )\r\n");
    return retVal;
}


/*
================
idStr::IcmpnPath
================
*/
int idStr::IcmpnPath( const char *s1, const char *s2, int n ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::IcmpnPath( const char *s1, const char *s2, int n )\r\n");
    return retVal;
}


/*
=============
idStr::Copynz
 
Safe strncpy that ensures a trailing zero
=============
*/
void idStr::Copynz( char *dest, const char *src, int destsize ) {
    Sys_Printf("void idStr::Copynz( char *dest, const char *src, int destsize )\r\n");
}


/*
================
idStr::Append

  never goes past bounds or leaves without a terminating 0
================
*/
void idStr::Append( char *dest, int size, const char *src ) {
    Sys_Printf("void idStr::Append( char *dest, int size, const char *src )\r\n");
}


/*
================
idStr::LengthWithoutColors
================
*/
int idStr::LengthWithoutColors( const char *s ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::LengthWithoutColors( const char *s )\r\n");
    return retVal;
}


/*
================
idStr::RemoveColors
================
*/
char *idStr::RemoveColors( char *string ) {
    Sys_Printf("char *idStr::RemoveColors( char *string )\r\n");
    return NULL;
}


/*
================
idStr::snPrintf
================
*/
int idStr::snPrintf( char *dest, int size, const char *fmt, ...) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::snPrintf( char *dest, int size, const char *fmt, ...)\r\n");
    return retVal;
}


/*
============
idStr::vsnPrintf

vsnprintf portability:

C99 standard: vsnprintf returns the number of characters (excluding the trailing
'\0') which would have been written to the final string if enough space had been available
snprintf and vsnprintf do not write more than size bytes (including the trailing '\0')

win32: _vsnprintf returns the number of characters written, not including the terminating null character,
or a negative value if an output error occurs. If the number of characters to write exceeds count, then count 
characters are written and -1 is returned and no trailing '\0' is added.

idStr::vsnPrintf: always appends a trailing '\0', returns number of characters written (not including terminal \0)
or returns -1 on failure or if the buffer would be overflowed.
============
*/
int idStr::vsnPrintf( char *dest, int size, const char *fmt, va_list argptr ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::vsnPrintf( char *dest, int size, const char *fmt, va_list argptr )\r\n");
    return retVal;
}


/*
============
sprintf

Sets the value of the string using a printf interface.
============
*/
int sprintf( idStr &string, const char *fmt, ... ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int sprintf( idStr &string, const char *fmt, ... )\r\n");
    return retVal;
}


/*
============
vsprintf

Sets the value of the string using a vprintf interface.
============
*/
int vsprintf( idStr &string, const char *fmt, va_list argptr ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int vsprintf( idStr &string, const char *fmt, va_list argptr )\r\n");
    return retVal;
}


/*
============
va

does a varargs printf into a temp buffer
NOTE: not thread safe
============
*/
char *va( const char *fmt, ... ) {
    Sys_Printf("char *va( const char *fmt, ... )\r\n");
    return NULL;
}




/*
============
idStr::BestUnit
============
*/
int idStr::BestUnit( const char *format, float value, Measure_t measure ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int idStr::BestUnit( const char *format, float value, Measure_t measure )\r\n");
    return retVal;
}


/*
============
idStr::SetUnit
============
*/
void idStr::SetUnit( const char *format, float value, int unit, Measure_t measure ) {
    Sys_Printf("void idStr::SetUnit( const char *format, float value, int unit, Measure_t measure )\r\n");
}


/*
================
idStr::InitMemory
================
*/
void idStr::InitMemory( void ) {
    Sys_Printf("void idStr::InitMemory( void )\r\n");
}


/*
================
idStr::ShutdownMemory
================
*/
void idStr::ShutdownMemory( void ) {
    Sys_Printf("void idStr::ShutdownMemory( void )\r\n");
}


/*
================
idStr::PurgeMemory
================
*/
void idStr::PurgeMemory( void ) {
    Sys_Printf("void idStr::PurgeMemory( void )\r\n");
}


/*
================
idStr::ShowMemoryUsage_f
================
*/
void idStr::ShowMemoryUsage_f( const idCmdArgs &args ) {
    Sys_Printf("void idStr::ShowMemoryUsage_f( const idCmdArgs &args )\r\n");
}


/*
================
idStr::FormatNumber
================
*/
struct formatList_t {
	int			gran;
	int			count;
};

// elements of list need to decend in size
formatList_t formatList[] = {
	{ 1000000000, 0 },
	{ 1000000, 0 },
	{ 1000, 0 }
};

int numFormatList = sizeof(formatList) / sizeof( formatList[0] );


idStr idStr::FormatNumber( int number ) {
    idStr retVal;
    memset(&retVal, 0, sizeof(idStr));
    Sys_Printf("idStr idStr::FormatNumber( int number )\r\n");
    return retVal;
}


