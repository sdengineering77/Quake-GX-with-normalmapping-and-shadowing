/***************************************************************************
 *                                  _   _ ____  _
 *  Project                     ___| | | |  _ \| |
 *                             / __| | | | |_) | |
 *                            | (__| |_| |  _ <| |___
 *                             \___|\___/|_| \_\_____|
 *
 * Copyright (C) 1998 - 2004, Daniel Stenberg, <daniel@haxx.se>, et al.
 *
 * This software is licensed as described in the file COPYING, which
 * you should have received as part of this distribution. The terms
 * are also available at http://curl.haxx.se/docs/copyright.html.
 *
 * You may opt to use, copy, modify, merge, publish, distribute and/or sell
 * copies of the Software, and permit persons to whom the Software is
 * furnished to do so, under the terms of the COPYING file.
 *
 * This software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY
 * KIND, either express or implied.
 *
 * $Id: nwlib.c,v 1.2 2004/03/17 13:36:45 bagder Exp $
 ***************************************************************************/

#include <errno.h>
#include <string.h>
#include <stdlib.h>
#include <library.h>
#include <netware.h>
#include <screen.h>
#include <nks/thread.h>
#include <nks/synch.h>


typedef struct
{
    int     _errno;
    void    *twentybytes;
} libthreaddata_t;

typedef struct
{
    int         x;
    int         y;
    int         z;
    void        *tenbytes;
    NXKey_t     perthreadkey;   /* if -1, no key obtained... */
    NXMutex_t   *lock;
} libdata_t;

int         gLibId      = -1;
void        *gLibHandle = (void *) NULL;
rtag_t      gAllocTag   = (rtag_t) NULL;
NXMutex_t   *gLibLock   = (NXMutex_t *) NULL;

/* internal library function prototypes... */
int     DisposeLibraryData ( void * );
void    DisposeThreadData ( void * );
int     GetOrSetUpData ( int id, libdata_t **data, libthreaddata_t **threaddata );


int _NonAppStart
(
    void        *NLMHandle,
    void        *errorScreen,
    const char  *cmdLine,
    const char  *loadDirPath,
    size_t      uninitializedDataLength,
    void        *NLMFileHandle,
    int         (*readRoutineP)( int conn, void *fileHandle, size_t offset,
                                size_t nbytes, size_t *bytesRead, void *buffer ),
    size_t      customDataOffset,
    size_t      customDataSize,
    int         messageCount,
    const char  **messages
)
{
    NX_LOCK_INFO_ALLOC(liblock, "Per-Application Data Lock", 0);

#ifndef __GNUC__
#pragma unused(cmdLine)
#pragma unused(loadDirPath)
#pragma unused(uninitializedDataLength)
#pragma unused(NLMFileHandle)
#pragma unused(readRoutineP)
#pragma unused(customDataOffset)
#pragma unused(customDataSize)
#pragma unused(messageCount)
#pragma unused(messages)
#endif

/*
** Here we process our command line, post errors (to the error screen),
** perform initializations and anything else we need to do before being able
** to accept calls into us. If we succeed, we return non-zero and the NetWare
** Loader will leave us up, otherwise we fail to load and get dumped.
*/
    gAllocTag = AllocateResourceTag(NLMHandle,
                                "<library-name> memory allocations", AllocSignature);

    if (!gAllocTag)
    {
        OutputToScreen(errorScreen, "Unable to allocate resource tag for "
                                            "library memory allocations.\n");
        return -1;
    }

    gLibId = register_library(DisposeLibraryData);

    if (gLibId < -1)
    {
        OutputToScreen(errorScreen, "Unable to register library with kernel.\n");
        return -1;
    }

    gLibHandle = NLMHandle;

    gLibLock = NXMutexAlloc(0, 0, &liblock);

    if (!gLibLock)
    {
        OutputToScreen(errorScreen, "Unable to allocate library data lock.\n");
        return -1;
    }

    return 0;
}

/*
** Here we clean up any resources we allocated. Resource tags is a big part
** of what we created, but NetWare doesn't ask us to free those.
*/
void _NonAppStop( void )
{
    Sys_Printf("void _NonAppStop( void )\r\n");
}


/*
** This function cannot be the first in the file for if the file is linked
** first, then the check-unload function's offset will be nlmname.nlm+0
** which is how to tell that there isn't one. When the check function is
** first in the linked objects, it is ambiguous. For this reason, we will
** put it inside this file after the stop function.
**
** Here we check to see if it's alright to ourselves to be unloaded. If not,
** we return a non-zero value. Right now, there isn't any reason not to allow
** it.
*/
int  _NonAppCheckUnload( void )
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int  _NonAppCheckUnload( void )\r\n");
    return retVal;
}


int GetOrSetUpData
(
    int                 id,
    libdata_t           **appData,
    libthreaddata_t **threadData
)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int GetOrSetUpData(    int                 id, libdata_t           **appData, libthreaddata_t **threadData)\r\n");
    return retVal;
}


int DisposeLibraryData
(
    void    *data
)
{
    int retVal;
    memset(&retVal, 0, sizeof(int));
    Sys_Printf("int DisposeLibraryData(    void    *data)\r\n");
    return retVal;
}


void DisposeThreadData
(
    void    *data
)
{
    Sys_Printf("void DisposeThreadData(    void    *data)\r\n");
}



