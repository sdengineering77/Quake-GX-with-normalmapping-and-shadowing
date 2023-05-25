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
#include "../../../idlib/precompiled.h"
#pragma hdrstop

#include "roq.h"
#include "codec.h"

roq		*theRoQ;				// current roq file

roq::roq( void )
{
    file retVal;
    memset(&retVal, 0, sizeof(file));
    Sys_Printf("fileroq::roq( void )\r\n");
    return retVal;
}


roq::~roq( void )
{
	if (image) delete image;
	if (encoder) delete encoder;
	return;
}

void roq::EncodeQuietly( bool which )
{
    Sys_Printf("void roq::EncodeQuietly( bool which )\r\n");
}


bool roq::IsQuiet( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roq::IsQuiet( void )\r\n");
    return retVal;
}


bool roq::IsLastFrame( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roq::IsLastFrame( void )\r\n");
    return retVal;
}


bool roq::Scaleable( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roq::Scaleable( void )\r\n");
    return retVal;
}


bool roq::ParamNoAlpha( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roq::ParamNoAlpha( void )\r\n");
    return retVal;
}


bool roq::MakingVideo( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roq::MakingVideo( void )\r\n");
    return retVal;
}


bool roq::SearchType( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roq::SearchType( void )\r\n");
    return retVal;
}


bool roq::HasSound( void )
{
    bool retVal;
    memset(&retVal, 0, sizeof(bool));
    Sys_Printf("bool roq::HasSound( void )\r\n");
    return retVal;
}


int roq::PreviousFrameSize( void )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int roq::PreviousFrameSize( void )\r\n");
    return retVal;
}


int roq::FirstFrameSize( void )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int roq::FirstFrameSize( void )\r\n");
    return retVal;
}


int roq::NormalFrameSize( void )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int roq::NormalFrameSize( void )\r\n");
    return retVal;
}


const char * roq::CurrentFilename( void )
{
    Sys_Printf("char * roq::CurrentFilename( void )\r\n");
    return NULL;
}


void roq::EncodeStream( const char *paramInputFile )
{
    Sys_Printf("void roq::EncodeStream( const char *paramInputFile )\r\n");
}


void roq::Write16Word( word *aWord, idFile *stream )
{
    Sys_Printf("void roq::Write16Word( word *aWord, idFile *stream )\r\n");
}


void roq::Write32Word( unsigned int *aWord, idFile *stream )
{
    Sys_Printf("void roq::Write32Word( unsigned int *aWord, idFile *stream )\r\n");
}


int roq::SizeFile( idFile *ftosize )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int roq::SizeFile( idFile *ftosize )\r\n");
    return retVal;
}


/* Expanded data destination object for stdio output */

typedef struct {
  struct jpeg_destination_mgr pub; /* public fields */

  byte* outfile;		/* target stream */
  int	size;
} my_destination_mgr;

typedef my_destination_mgr * my_dest_ptr;


/*
 * Initialize destination --- called by jpeg_start_compress
 * before any data is actually written.
 */

void roq::JPEGInitDestination (j_compress_ptr cinfo) {
    Sys_Printf("void roq::JPEGInitDestination (j_compress_ptr cinfo)\r\n");
}



/*
 * Empty the output buffer --- called whenever buffer fills up.
 *
 * In typical applications, this should write the entire output buffer
 * (ignoring the current state of next_output_byte & free_in_buffer),
 * reset the pointer & count to the start of the buffer, and return true
 * indicating that the buffer has been dumped.
 *
 * In applications that need to be able to suspend compression due to output
 * overrun, a FALSE return indicates that the buffer cannot be emptied now.
 * In this situation, the compressor will return to its caller (possibly with
 * an indication that it has not accepted all the supplied scanlines).  The
 * application should resume compression after it has made more room in the
 * output buffer.  Note that there are substantial restrictions on the use of
 * suspension --- see the documentation.
 *
 * When suspending, the compressor will back up to a convenient restart point
 * (typically the start of the current MCU). next_output_byte & free_in_buffer
 * indicate where the restart point will be if the current call returns FALSE.
 * Data beyond this point will be regenerated after resumption, so do not
 * write it out when emptying the buffer externally.
 */

boolean roq::JPEGEmptyOutputBuffer (j_compress_ptr cinfo) {
    boolean retVal;
    memset(&retVal, 0, sizeof(boolean));
    Sys_Printf("boolean roq::JPEGEmptyOutputBuffer (j_compress_ptr cinfo)\r\n");
    return retVal;
}



/*
 * Compression initialization.
 * Before calling this, all parameters and a data destination must be set up.
 *
 * We require a write_all_tables parameter as a failsafe check when writing
 * multiple datastreams from the same compression object.  Since prior runs
 * will have left all the tables marked sent_table=true, a subsequent run
 * would emit an abbreviated stream (no tables) by default.  This may be what
 * is wanted, but for safety's sake it should not be the default behavior:
 * programmers should have to make a deliberate choice to emit abbreviated
 * images.  Therefore the documentation and examples should encourage people
 * to pass write_all_tables=true; then it will take active thought to do the
 * wrong thing.
 */

void roq::JPEGStartCompress (j_compress_ptr cinfo, bool write_all_tables) {
    Sys_Printf("void roq::JPEGStartCompress (j_compress_ptr cinfo, bool write_all_tables)\r\n");
}



/*
 * Write some scanlines of data to the JPEG compressor.
 *
 * The return value will be the number of lines actually written.
 * This should be less than the supplied num_lines only in case that
 * the data destination module has requested suspension of the compressor,
 * or if more than image_height scanlines are passed in.
 *
 * Note: we warn about excess calls to jpeg_write_scanlines() since
 * this likely signals an application programmer error.  However,
 * excess scanlines passed in the last valid call are *silently* ignored,
 * so that the application need not adjust num_lines for end-of-image
 * when using a multiple-scanline buffer.
 */

JDIMENSION roq::JPEGWriteScanlines (j_compress_ptr cinfo, JSAMPARRAY scanlines, JDIMENSION num_lines) {
    JDIMENSION retVal;
    memset(&retVal, 0, sizeof(JDIMENSION));
    Sys_Printf("JDIMENSION roq::JPEGWriteScanlines (j_compress_ptr cinfo, JSAMPARRAY scanlines, JDIMENSION num_lines)\r\n");
    return retVal;
}


/*
 * Terminate destination --- called by jpeg_finish_compress
 * after all data has been written.  Usually needs to flush buffer.
 *
 * NB: *not* called by jpeg_abort or jpeg_destroy; surrounding
 * application must deal with any cleanup that should happen even
 * for error exit.
 */

static int hackSize;

void roq::JPEGTermDestination (j_compress_ptr cinfo) {
    Sys_Printf("void roq::JPEGTermDestination (j_compress_ptr cinfo)\r\n");
}



/*
 * Prepare for output to a stdio stream.
 * The caller must have already opened the stream, and is responsible
 * for closing it after finishing compression.
 */

void roq::JPEGDest (j_compress_ptr cinfo, byte* outfile, int size) {
    Sys_Printf("void roq::JPEGDest (j_compress_ptr cinfo, byte* outfile, int size)\r\n");
}


void roq::WriteLossless( void ) {
    Sys_Printf("void roq::WriteLossless( void )\r\n");
}


void roq::InitRoQFile( const char *RoQFilename )
{
    Sys_Printf("void roq::InitRoQFile( const char *RoQFilename )\r\n");
}


void roq::InitRoQPatterns( void )
{
    Sys_Printf("void roq::InitRoQPatterns( void )\r\n");
}


void roq::CloseRoQFile( void )
{
    Sys_Printf("void roq::CloseRoQFile( void )\r\n");
}


void roq::WriteHangFrame( void )
{
    Sys_Printf("void roq::WriteHangFrame( void )\r\n");
}


void roq::WriteCodeBookToStream( byte *codebook, int csize, word cflags )
{
    Sys_Printf("void roq::WriteCodeBookToStream( byte *codebook, int csize, word cflags )\r\n");
}


void roq::WriteCodeBook( byte *codebook )
{
    Sys_Printf("void roq::WriteCodeBook( byte *codebook )\r\n");
}


void roq::WriteFrame( quadcel *pquad )
{
    Sys_Printf("void roq::WriteFrame( quadcel *pquad )\r\n");
}


//
// load a frame, create a window (if neccesary) and display the frame
//
void roq::LoadAndDisplayImage( const char * filename )
{
    Sys_Printf("void roq::LoadAndDisplayImage( const char * filename )\r\n");
}


void roq::MarkQuadx( int xat, int yat, int size, float cerror, int choice ) {
    Sys_Printf("void roq::MarkQuadx( int xat, int yat, int size, float cerror, int choice )\r\n");
}


NSBitmapImageRep* roq::CurrentImage( void )
{
    Sys_Printf("NSBitmapImageRep* roq::CurrentImage( void )\r\n");
    return NULL;
}


int roq::NumberOfFrames( void ) {
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int roq::NumberOfFrames( void )\r\n");
    return retVal;
}


void RoQFileEncode_f( const idCmdArgs &args ) {
    Sys_Printf("void RoQFileEncode_f( const idCmdArgs &args )\r\n");
}

