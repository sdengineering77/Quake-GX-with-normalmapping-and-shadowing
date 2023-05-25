/* ============================================================================
 *
 * Redistribution and use are freely permitted provided that:
 *
 *   1) This header remain in tact.
 *   2) The prototypes for getpass and getpass_r are not changed from:
 *         char *getpass(const char *prompt)
 *         char *getpass_r(const char *prompt, char* buffer, int buflen)
 *   3) This source code is not used outside of this(getpass.c) file.
 *   4) Any changes to this(getpass.c) source code are made publicly available.
 *
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED WARRANTIES,
 * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 * FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE
 * AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
 * OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 * ============================================================================
 *
 * $Id: getpass.c,v 1.6 2004/03/10 16:03:12 bagder Exp $
 *
 * The spirit of this license is to allow use of this source code in any
 * project be it open or closed but still encourage the use of the open,
 * library based equivilents.
 *
 * Author(s):
 *   Angus Mackay <amackay@gus.ml.org>
 *   Daniel Stenberg <daniel@haxx.se>
 */

#include "setup.h" /* setup.h is required for read() prototype */

#ifndef HAVE_GETPASS_R

#include "getpass.h"

#ifndef WIN32
#ifdef	VMS
#include <stdio.h>
#include <string.h>
#include descrip
#include starlet
#include iodef
#include iosbdef
char *getpass_r(const char *prompt, char *buffer, size_t buflen)
{
    Sys_Printf("char *getpass_r(const char *prompt, char *buffer, size_t buflen)\r\n");
    return NULL;
}

#else /* VMS */
#ifdef HAVE_TERMIOS_H
#  if !defined(HAVE_TCGETATTR) && !defined(HAVE_TCSETATTR) 
#    undef HAVE_TERMIOS_H
#  endif
#endif

#ifndef RETSIGTYPE
#  define RETSIGTYPE void
#endif

#ifdef HAVE_UNISTD_H
#include <unistd.h>
#endif
#include <stdio.h>
#include <signal.h>
#ifdef HAVE_TERMIOS_H
#  include <termios.h>
#else
#  ifdef HAVE_TERMIO_H
#  include <termio.h>
#  else
#  endif
#endif

/* The last #include file should be: */
#ifdef CURLDEBUG
#include "../lib/memdebug.h"
#endif

char *getpass_r(const char *prompt, char *buffer, size_t buflen)
{
    Sys_Printf("char *getpass_r(const char *prompt, char *buffer, size_t buflen)\r\n");
    return NULL;
}

#endif /* VMS */
#else /* WIN32 */
#include <stdio.h>
#include <conio.h>
char *getpass_r(const char *prompt, char *buffer, size_t buflen)
{
    Sys_Printf("char *getpass_r(const char *prompt, char *buffer, size_t buflen)\r\n");
    return NULL;
}

#endif

#endif /* ifndef HAVE_GETPASS_R */

#if 0
/* for consistensy, here's the old-style function: */
char *getpass(const char *prompt)
{
    Sys_Printf("char *getpass(const char *prompt)\r\n");
    return NULL;
}

#endif
