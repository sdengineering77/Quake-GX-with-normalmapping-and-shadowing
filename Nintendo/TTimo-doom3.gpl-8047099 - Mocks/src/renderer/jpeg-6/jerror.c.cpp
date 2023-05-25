/*
 * jerror.c
 *
 * Copyright (C) 1991-1994, Thomas G. Lane.
 * This file is part of the Independent JPEG Group's software.
 * For conditions of distribution and use, see the accompanying README file.
 *
 * This file contains simple error-reporting and trace-message routines.
 * These are suitable for Unix-like systems and others where writing to
 * stderr is the right thing to do.  Many applications will want to replace
 * some or all of these routines.
 *
 * These routines are used by both the compression and decompression code.
 */

/* this is not a core library module, so it doesn't define JPEG_INTERNALS */

#include "jinclude.h"
#include "jpeglib.h"
#include "jversion.h"
#include "jerror.h"

extern	jpg_Error( const char *fmt, ... );
extern	jpg_Printf( const char *fmt, ... );

#ifndef EXIT_FAILURE		/* define exit() codes if not provided */
#define EXIT_FAILURE  1
#endif


/*
 * Create the message string table.
 * We do this from the master message list in jerror.h by re-reading
 * jerror.h with a suitable definition for macro JMESSAGE.
 * The message table is made an external symbol just in case any applications
 * want to refer to it directly.
 */

#ifdef NEED_SHORT_EXTERNAL_NAMES
#define jpeg_std_message_table	jMsgTable
#endif

#define JMESSAGE(code,string)	string ,

const char * const jpeg_std_message_table[] = {
#include "jerror.h"
  NULL
};


/*
 * Error exit handler: must not return to caller.
 *
 * Applications may override this if they want to get control back after
 * an error.  Typically one would longjmp somewhere instead of exiting.
 * The setjmp buffer can be made a private field within an expanded error
 * handler object.  Note that the info needed to generate an error message
 * is stored in the error object, so you can generate the message now or
 * later, at your convenience.
 * You should make sure that the JPEG object is cleaned up (with jpeg_abort
 * or jpeg_destroy) at some point.
 */

METHODDEF void
error_exit (j_common_ptr cinfo)
{
    Sys_Printf("voiderror_exit (j_common_ptr cinfo)\r\n");
}



/*
 * Actual output of an error or trace message.
 * Applications may override this method to send JPEG messages somewhere
 * other than stderr.
 */

METHODDEF void
output_message (j_common_ptr cinfo)
{
    Sys_Printf("voidoutput_message (j_common_ptr cinfo)\r\n");
}



/*
 * Decide whether to emit a trace or warning message.
 * msg_level is one of:
 *   -1: recoverable corrupt-data warning, may want to abort.
 *    0: important advisory messages (always display to user).
 *    1: first level of tracing detail.
 *    2,3,...: successively more detailed tracing messages.
 * An application might override this method if it wanted to abort on warnings
 * or change the policy about which messages to display.
 */

METHODDEF void
emit_message (j_common_ptr cinfo, int msg_level)
{
    Sys_Printf("voidemit_message (j_common_ptr cinfo, int msg_level)\r\n");
}



/*
 * Format a message string for the most recent JPEG error or message.
 * The message is stored into buffer, which should be at least JMSG_LENGTH_MAX
 * characters.  Note that no '\n' character is added to the string.
 * Few applications should need to override this method.
 */

METHODDEF void
format_message (j_common_ptr cinfo, char * buffer)
{
    Sys_Printf("voidformat_message (j_common_ptr cinfo, char * buffer)\r\n");
}



/*
 * Reset error state variables at start of a new image.
 * This is called during compression startup to reset trace/error
 * processing to default state, without losing any application-specific
 * method pointers.  An application might possibly want to override
 * this method if it has additional error processing state.
 */

METHODDEF void
reset_error_mgr (j_common_ptr cinfo)
{
    Sys_Printf("voidreset_error_mgr (j_common_ptr cinfo)\r\n");
}



/*
 * Fill in the standard error-handling methods in a jpeg_error_mgr object.
 * Typical call is:
 *	struct jpeg_compress_struct cinfo;
 *	struct jpeg_error_mgr err;
 *
 *	cinfo.err = jpeg_std_error(&err);
 * after which the application may override some of the methods.
 */

GLOBAL struct jpeg_error_mgr *
jpeg_std_error (struct jpeg_error_mgr * err)
{
    Sys_Printf("jpeg_error_mgr *jpeg_std_error (struct jpeg_error_mgr * err)\r\n");
    return NULL;
}

