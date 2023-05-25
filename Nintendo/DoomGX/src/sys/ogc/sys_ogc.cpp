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
#include "../../idlib/precompiled.h"
#include "../sys_local.h"
#include "../../renderer/tr_local.h" // for glimpParms_t
#include "gx_vid.h"
//#include "mockups.h"
#pragma hdrstop


#include <ogcsys.h>
#include <ogc/lwp.h>
#include <ogc/lwp_threadq.h>
#include <ogc/lwp_watchdog.h>
#include <ogc/usbstorage.h>
#include <ogc/disc_io.h>
#include <wiiuse/wpad.h>

#include <fat.h>
#include <unistd.h>
#include <network.h>

#include <malloc.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <fnmatch.h>
#include <errno.h>
#include <sys/time.h>
#include <pwd.h>

#include <exception>

using namespace std;

typedef struct {
	const char* name;
	const DISC_INTERFACE* (*getInterface)(void);
} INTERFACE_ID;
extern const INTERFACE_ID _FAT_disc_interfaces[];
extern const DISC_INTERFACE __io_usb2storage;
void USB2Enable(bool enable);

#define WIFILOGGING
#define	MAX_OSPATH			256

static	int		frameNum;

// constants
static const int 		stacksize = 1 * 1024 * 1024;
//static const 			size_t	heap_size	= 24 * 1024 * 1024;
static const int 		MAX_CHARS_SYSPRINTF = 4096;


// locals
static int			arena1Size;
static int			arena2Size;
static lwp_t 		thread;
static void 		*stack;

static int 			local_argc;
static char 		**local_argv;

// shared

/*
 * ===================================================
 * REMOTE LOGGING
 * ===================================================
 */
s32 sock, csock, initialized = 0;
struct sockaddr_in client;
struct sockaddr_in server;


void Sys_AcceptLogTerminal(void) {

	if (initialized) {
		return;
	}
	u32 clientlen = sizeof(client);

	char localip[16] = {0};
	char gateway[16] = {0};
	char netmask[16] = {0};


	// Configure the network interface
	if_config ( localip, netmask, gateway, TRUE);
//	printf ("network configured, ip: %s, gw: %s, mask %s\n", localip, gateway, netmask);


//	printf("net_socket");
	sock = net_socket (AF_INET, SOCK_STREAM, IPPROTO_IP);
	int val = 1, sndbuf = 4;
	net_setsockopt(sock, IPPROTO_TCP, TCP_NODELAY, (void *) &val, sizeof(int));
	net_setsockopt(sock, SOL_SOCKET, SO_SNDBUF, (void *) &sndbuf, sizeof(int));

	memset (&server, 0, sizeof (server));
	memset (&client, 0, sizeof (client));

	server.sin_family = AF_INET;
	server.sin_port = htons (80);
	server.sin_addr.s_addr = INADDR_ANY;
//	printf("binding socket");
	net_bind (sock, (struct sockaddr *) &server, sizeof (server));
//	printf("listen");
	net_listen( sock, 5);

//	printf("\n\nwaiting to accept. Please connect to port 80... ");
	csock = net_accept (sock, (struct sockaddr *) &client, &clientlen);

//	printf("accepted\n");

	if ( csock < 0 ) {
//		printf("Error connecting socket %d!\n", csock);
	}
	initialized = 1;
}


void Sys_CloseLogTerminal(void) {
	net_close(csock);
	net_close(sock);
}



void Sys_WriteSocket(char *text) {
	if (!initialized) {
		return;//Sys_AcceptLogTerminal();
	}
//if (strstr(text, "Allocated") != NULL ||
//	strstr(text, "Freed") != NULL ||
//	strstr(text, "Arena") != NULL ||
//	strstr(text, "Allocate16")
//	) {
//	return;
//}

	net_send(csock, text, strlen(text), 0);
	net_send(csock, "\r", 1, 0);
//	printf(text);
}

/*
 * =======================================================
 * Sys_Backtrace
 * =======================================================
 */
int Sys_Backtrace (void **buffer, int size) {
	int depth;
	u32 stackptr, lr, *addr;
	// get link register
	asm volatile ("mflr %0" : "=r"(lr));
	// link register is assigned to depth[0]
	buffer[0] = (void *) (lr - 4);
	// get stackpointer
	asm volatile ("stw %%sp, 0(%0)" : : "b"((u32) &stackptr));
	// assign stack ptr to address
	addr = (u32 *) stackptr;
	// get the frames
	if (*addr) {
		// skip first two frames because this function
		// does create a stackframe but doesn't set lr on
		// the previous one.
		addr = (u32 *) *addr;
		if (*addr) {
			addr = (u32 *) *addr;
		}
	}
	for (depth=1; (depth<size && *addr); ++depth) {
		u32 * next = (u32 *) *addr;
		buffer[depth] = (void *) (*(addr+1) - 4);
		addr = next;
	}

	return depth;
}

#define BACKTRACE_DEPTH	12
void Sys_PrintBacktrace(void) {
	void * stack[BACKTRACE_DEPTH];
	char dump[1024];
	dump[0] = '\0';
	int depth = Sys_Backtrace(stack, BACKTRACE_DEPTH);
	for (int i = 0; i<depth; i++) {
		sprintf(&dump[strlen(dump)], "[%02d:%p] ", i, stack[i]);
	}
	Sys_Printf(">>> BACKTRACE %s\r\n", dump);
}

/*
 * =======================================================
 * Sys_WaitPress
 * =======================================================
 */
void Sys_WaitPress(void) {
	int cnt = 500;
	while (1) {
		u32 gcpress = 0, wmpress = 0;
		PAD_ScanPads();
		WPAD_ScanPads();

		gcpress = PAD_ButtonsDown(0) | PAD_ButtonsDown(1) | PAD_ButtonsDown(2) | PAD_ButtonsDown(3);
		wmpress = WPAD_ButtonsDown(0) | WPAD_ButtonsDown(1) | WPAD_ButtonsDown(2) | WPAD_ButtonsDown(3);
		if (cnt++ > 500)  {
			Sys_Printf ("Press button %d %d \n", gcpress, wmpress);
			cnt = 0;
		}
		if (gcpress != 0 || wmpress != 0) break;
		VIDEO_WaitVSync();
	}
}

void *Sys_AllocStaticArena2(int size) {
	u32 level;
	char *start;
	_CPU_ISR_Disable(level);

	//start = (char *) ((((u32) SYS_GetArena2Hi()) - size));//&0xffffffe0);
	start = (char *) (((u32) SYS_GetArena2Lo() + 31)&0xffffffe0);
	//SYS_SetArena2Hi(start);
	SYS_SetArena2Lo(start+size);

	_CPU_ISR_Restore(level);
	Sys_Printf("Allocated Static arena 2 start %p end %p size %d\r\n", start, (char *) (start+size), size);
	return (void *) start;
}


void Sys_InitScanTable( void ) {
	Sys_Printf( "TODO: Sys_InitScanTable\r\n" );
}


void	Sys_FlushCacheMemory( void *base, int bytes ) {
}

void Sys_SetFatalError( const char *error ) {
	Sys_Printf("FatalError: %s\r\n", error);
}

void Sys_Quit( void ) {
	Sys_WaitPress();
	exit( 0 );
}

char *Sys_GetClipboardData( void ) {
	return NULL;
}

void Sys_SetClipboardData( const char *string ) {
}

void Sys_GenerateEvents( void ) {
}

void Sys_Init( void ) {
}

/*
================
Sys_AlreadyRunning
return true if there is a copy of D3 running already
================
*/
bool Sys_AlreadyRunning( void ) {
	return false;
}

/*
================
Sys_ShowConsole
================
*/
void Sys_ShowConsole( int visLevel, bool quitOnClose ) { }

/*
===============
Sys_GetConsoleKey
===============
*/
unsigned char Sys_GetConsoleKey( bool shifted ) {
	return shifted ? '~' : '`';
}



//==========================================================

double	idTimer::base;

void idTimer::InitBaseClockTicks( void ) const {
}

//==========================================================

void _glTexImage2D(GLenum target, GLint level, GLint internalformat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels) {
}


void Sys_InitInput( void ) {
}

void Sys_ShutdownInput( void ) {
}

void Sys_Shutdown( void ) {
	Sys_Quit();
}

// DRS TODO clean up this stuff
static ir_t wmpos;
//static float wmposx = 0, wmposy = 0;
static float deltax, deltay;
static float wmhistposx[4], wmhistposy[4];
static s32 wmbuttonstate = 0;
static int numbuttonevents = 0, currwmhistpos = 0;
static bool buttonevents[8];

/*
===============
Sys_MapCharForKey
===============
*/
unsigned char Sys_MapCharForKey( int key ) {
	// DRS TODO:
	return (unsigned char)key;
}

// DRS TODO: event handling must be moved to sys_event
void Sys_QueEvent( sysEventType_t type, int value, int value2,
				  int ptrLength, void *ptr );

int Sys_PollMouseInputEvents( void ) {
	float wmposx = 0, wmposy = 0;
	int i, mposx = 0, mposy = 0, button = 0;
	bool down;

	WPAD_IR(WPAD_CHAN_0, &wmpos);
	WPAD_ScanPads();
	s32 pad = WPAD_ButtonsDown(0);

	usercmdGen->MouseState(&mposx, &mposy, &button, &down);
	wmhistposx[currwmhistpos] = wmpos.x;
	wmhistposy[currwmhistpos] = wmpos.y;
	currwmhistpos = (currwmhistpos+1)&0x00000003;
	for (i=0; i<4; i++) {
		wmposx += 0.25 * wmhistposx[i];
		wmposy += 0.25 * wmhistposy[i];
	}

	deltax = wmposx - mposx;
	deltay = wmposy - mposy;

	Sys_Printf(">>> pointer x %f y %f %d %d delta %f %f\r\n", wmposx, wmposy, mposx, mposy, deltax, deltay);

	if ((wmbuttonstate & WPAD_BUTTON_A) && !(pad & WPAD_BUTTON_A)) {
		// released
		Sys_QueEvent(SE_KEY, K_MOUSE1, false, 0, NULL);
		buttonevents[numbuttonevents++] = false;
	} else if ((pad & WPAD_BUTTON_A) && !(wmbuttonstate & WPAD_BUTTON_A)) {
		// pressed
		Sys_QueEvent(SE_KEY, K_MOUSE1, true, 0, NULL);
		buttonevents[numbuttonevents++] = true;
	}

	if ((wmbuttonstate & WPAD_BUTTON_B) && !(pad & WPAD_BUTTON_B)) {
		// released
		Sys_QueEvent(SE_KEY, K_MOUSE2, false, 0, NULL);
		buttonevents[numbuttonevents++] = false;
	} else if ((pad & WPAD_BUTTON_B) && !(wmbuttonstate & WPAD_BUTTON_B)) {
		// pressed
		Sys_QueEvent(SE_KEY, K_MOUSE2, true, 0, NULL);
		buttonevents[numbuttonevents++] = true;
	}

	wmbuttonstate = pad;

	// mouse events must be added to event queue as well, otherwise nothing happens in gui
	// IMO, design could be better; events should be polled and directed to the 'subscribed'
	// components, such as player and gui
	Sys_QueEvent(SE_MOUSE, deltax, deltay, 0, NULL);

	return 2 + numbuttonevents;
}

void Sys_EndMouseInputEvents( void ) {
	numbuttonevents = 0;
}

int Sys_ReturnMouseInputEvent( const int n, int &action, int &value ) {
//action >= M_ACTION1 && action <= M_ACTION8 ) {
	switch(n) {
	case 0:
		action = M_DELTAX;
		value = deltax;
		return 1;
	case 1:
		action = M_DELTAY;
		value = deltay;
		return 1;
	default:
		if (n >= numbuttonevents + 2) {
			action = M_ACTION1 + n - 2;
			value = buttonevents[n-2];
			return 1;
		}
	}
	return 0;
}

int Sys_PollKeyboardInputEvents( void ) { return 0; }

void Sys_EndKeyboardInputEvents( void ) { }

int Sys_ReturnKeyboardInputEvent( const int n, int &action, bool &state ) { return 0; }

void idSysLocal::OpenURL( const char *url, bool quit ) {}

void idSysLocal::StartProcess( const char *exeName, bool quit ) {}

void	Sys_Mkdir( const char *path ) {
	mkdir(path, 0777);

}

/*
==============
Sys_EXEPath
==============
*/
static const char *GAMEROOT = "/apps/DoomGX";
static const char *SAVEPATH = "/apps/DoomGX/savedir";

const char *Sys_EXEPath( void ) {
	return GAMEROOT;
}

const char *Sys_DefaultCDPath(void) {
	return "";
}

const char *Sys_DefaultBasePath(void) {
	return GAMEROOT;
}


const char *Sys_DefaultSavePath(void) {
	return SAVEPATH;
}

int Sys_ListFiles( const char *directory, const char *extension, idStrList &list )
{
	struct dirent *d;
	DIR		*fdir;
	bool 	dironly = false;
	char	search[MAX_OSPATH];
	struct stat st;

	list.Clear();

	if ( !extension)
		extension = "";

	if ( extension[0] == '/' && extension[1] == 0 ) {
		extension = "";
		dironly = true;
	}

	// search
	if ((fdir = opendir(directory)) == NULL) {
		return 0;
	}

	while ((d = readdir(fdir)) != NULL) {
		idStr::snPrintf( search, sizeof(search), "%s/%s", directory, d->d_name );
		if (stat(search, &st) == -1)
			continue;
		if (!dironly) {
		    idStr look(search);
		    idStr ext;
		    look.ExtractFileExtension( ext );
		    if ( extension && extension[0] && ext.Icmp( &extension[1] ) != 0 ) {
			continue;
		    }
		}
		if ((dironly && !(st.st_mode & S_IFDIR)) ||
			(!dironly && (st.st_mode & S_IFDIR)))
			continue;
		// DRS in ogc, dirent is reused. So make copy and hope caller takes
		// care to call idList::DeleteContents()
		char *name = (char *) new char[(sizeof(d->d_name))];
		strncpy(name, d->d_name, sizeof(d->d_name));
		list.Append( name );
	}

	closedir(fdir);

	return list.Num();
}

long Sys_FileTimeStamp(FILE * fp) {
	struct stat st;
	fstat(fileno(fp), &st);
	return st.st_mtime;
}

void	Sys_GrabMouseCursor( bool grabIt ) {
}


void Sys_DoPreferences( void ) {
}



/*
================
Sys_GetVideoRam
returns in megabytes
================
*/
int Sys_GetVideoRam( void ) {
	return 1;
}

/*
================
Sys_GetSystemRam
returns in megabytes
================
*/
int Sys_GetSystemRam( void ) {

	return arena2Size / (1024 * 1024);
}

/*
===============
Sys_GetProcessorId
===============
*/
cpuid_t Sys_GetProcessorId( void ) {
	return CPUID_GENERIC;
}

void Sys_Error( const char *error, ... ) {
	va_list         argptr;
	char msg[MAX_CHARS_SYSPRINTF];
	void * stack[8];

	va_start (argptr,error);
	vsnprintf (msg, MAX_CHARS_SYSPRINTF-1, error, argptr); // DRS doesn't work with direct vprintf in Dolphin emu
	va_end (argptr);
	Sys_Printf(msg);

	msg[0] = '\0';
	int depth = Sys_Backtrace(stack, 8);
	for (int i = 0; i<depth; i++) {
		sprintf(&msg[strlen(msg)], "[%02d:%p] ", i, stack[i]);
	}
	Sys_Printf(">>> BACKTRACE %s\r\n", msg);

	Sys_Quit();
}


/*
 * =======================================================
 * Sys_Printf
 * =======================================================
 */
void Sys_DebugPrintf(char const *fmt, ...) {
	va_list         argptr;
	char msg[MAX_CHARS_SYSPRINTF];

	va_start (argptr,fmt);
	vsnprintf (msg, MAX_CHARS_SYSPRINTF-1, fmt, argptr); // DRS doesn't work with direct vprintf in Dolphin emu
	va_end (argptr);

	Sys_Printf(msg);
	unsigned int size = ((unsigned int)SYS_GetArena1Hi() - (unsigned int)SYS_GetArena1Lo());
	Sys_Printf("Arena 1 free: %dkB\r\n", size/1024);


}

void Sys_Printf (char const *fmt, ...) {

	va_list         argptr;
	char msg[MAX_CHARS_SYSPRINTF];

	va_start (argptr,fmt);
	vsnprintf (msg, MAX_CHARS_SYSPRINTF-1, fmt, argptr); // DRS doesn't work with direct vprintf in Dolphin emu
	msg[MAX_CHARS_SYSPRINTF-1] = '\0';

#ifdef WIFILOGGING
	Sys_WriteSocket(msg);
#else
	printf(msg);
#endif

	va_end (argptr);
}


static void runCommonFrame(void) {
	common->Frame();
}

static void runCommonAsync(void) {
	common->Async();

}

void callConstructors(void) {
/*	networkSystem = new idNetworkSystem();
	cmdSystem = new idCmdSystemLocal();
	common = new idCommonLocal();
	console = new idConsoleLocal();
	cvarSystem = new idCVarSystemLocal();
	declManager = new idDeclManagerLocal();
	fileSystem = new idFileSystemLocal();
	createNewSession();
	createNewUsercmdGen();
	createNewIdGameLocal();
*/
}


static void *SYS_LaunchDoom(void *) {
	int 	argc = local_argc;
	const char 	**argv = (const char **) local_argv;
	u32 gcpress = 0, wmpress = 0;

	arena1Size = ((unsigned int)SYS_GetArena1Hi() - (unsigned int)SYS_GetArena1Lo());
	arena2Size = ((unsigned int)SYS_GetArena2Hi() - (unsigned int)SYS_GetArena2Lo());
	Sys_Printf("Arena 1 free: %dkB Arena 2 free: %dkB\r\n", arena1Size/1024, arena2Size/1024);

	try {
		if ( argc > 1 ) {
			Sys_Printf("common->Init( argc-1, &argv[1], NULL )\r\n");
			common->Init( argc-1, &argv[1], NULL );
		} else {
			Sys_Printf("common->Init( 0, NULL, NULL )\r\n");
			common->Init( 0, NULL, NULL );
		}

		while( 1 ) {
			u32 wpad;
			// DRS TODO: do in threads, see linux/posix
			Sys_Printf("===========================================================\r\n");
			runCommonAsync();

			runCommonFrame();
			frameNum++;

			PAD_ScanPads();
			WPAD_ScanPads();
			WPAD_Probe(WPAD_CHAN_0, &wpad);

			gcpress = PAD_ButtonsDown(0) | PAD_ButtonsDown(1) | PAD_ButtonsDown(2) | PAD_ButtonsDown(3);
			wmpress = WPAD_ButtonsDown(0) | WPAD_ButtonsDown(1) | WPAD_ButtonsDown(2) | WPAD_ButtonsDown(3);
			if (gcpress != 0 || (wmpress & WPAD_BUTTON_2)) break;
			VIDEO_WaitVSync();
		}
	} catch(const exception &e) {
		Sys_Printf("%s\r\n", e.what());
	}
	Sys_Printf(">>> END single loop\r\n");
	printf(">>> just a test\n");
	Sys_WaitPress();
	// DRS TODO: when threads run, have launcher join them
	// need to figure out how to quit everything
	return NULL;
}


/*
 * =================================================
 * Main
 * =================================================
 */
void Sys_InitThreading(void);

dword testThread(void *parms) {
	Sys_Printf("=================================\r\n");
	Sys_Printf("Thread is gestart\r\n");
	Sys_Printf("=================================\r\n");
	return 0;
}


int main(int argc, char* argv[]) {
	u32 version = IOS_GetVersion();

	if(version != 58) {
		IOS_ReloadIOS(58);
	}
	version = IOS_GetVersion();
#ifdef WIFILOGGING
	Sys_AcceptLogTerminal();
#endif

	// DRS TODO: move to better place
	Vid_Init();

	stack = memalign(32, stacksize);

	local_argc = argc;
	local_argv = argv;

	// not sure this can be done in LWP...
	VIDEO_WaitVSync();
	PAD_Init();
	WPAD_Init();
	WPAD_SetDataFormat(WPAD_CHAN_ALL, WPAD_FMT_BTNS_ACC_IR);
	WPAD_SetVRes(WPAD_CHAN_ALL, 640, 480);
	VIDEO_WaitVSync();

Sys_Printf(">>> Using IOS %d\r\n", version);

#if 0
Sys_Printf(">>> Stack allocated at %p %p\r\n", stack, (void *) ((u32)stack + stacksize));
{Sys_DebugPrintf(">>> main TEST NEW...===============================================================\r\n");
Sys_WaitPress();
myTestNode_t *testnode, *prevnode, firstnode;
prevnode = &firstnode;
for (int testcnt = 0; testcnt < 256; testcnt++) {
	testnode = new myTestNode_t;
Sys_Printf("alloc %p\r\n", testnode);
	testnode->symbol = testcnt;
	prevnode->next = testnode;
}
Sys_DebugPrintf(">>> END TEST NEW... %d ===============================================================\r\n", prevnode->next->symbol);
}
#endif

	// cannot be done in LWP?
//	Sys_Printf("!!!!! __io_usb2storage.startup: %d\r\n", __io_usb2storage.startup());
//	Sys_Printf("!!!!! __io_usb2storage.isInserted: %d\r\n", __io_usb2storage.isInserted());
	Sys_Printf("!!!!! __io_usbstorage.startup: %d\r\n", __io_usbstorage.startup());
	Sys_Printf("!!!!! __io_usbstorage.isInserted: %d\r\n", __io_usbstorage.isInserted());

	USB2Enable(false);
	if (fatMount("usb", &__io_usb2storage, 0, 8, 32)) {
		Sys_Printf("if:	usb2 mounted\r\n");
	}

bool hasFS = false;
for (int i = 0; _FAT_disc_interfaces[i].name; i++) {
	Sys_Printf("if:	%s %p\r\n", _FAT_disc_interfaces[i].name, _FAT_disc_interfaces[i].getInterface);
	if (_FAT_disc_interfaces[i].getInterface) {
		if (fatMount(_FAT_disc_interfaces[i].name, _FAT_disc_interfaces[i].getInterface(), 0, 8, 32)) {
			Sys_Printf("if:	%s %p mounted\r\n", _FAT_disc_interfaces[i].name, _FAT_disc_interfaces[i].getInterface);
			hasFS = true;
		}
	}
}
//if (!fatMountSimple("usb", &__io_usbstorage)) {
//	Sys_Error("fatInitDefault failure\n");
//}
	if (!hasFS) {
		Sys_Error("fatInit failure\n");
	}

	if (!fatInitDefault()) {
		Sys_Error("fatInitDefault failure\n");
	}

	// mutices
	Sys_InitThreading();

//	xthreadInfo	threadInfo;
//	Sys_CreateThread((xthread_t) testThread, NULL, THREAD_NORMAL, threadInfo, "Test", g_threads, &g_thread_count);

	// Start the main thread.
	LWP_CreateThread(&thread, &SYS_LaunchDoom, 0, stack, stacksize, LWP_PRIO_HIGHEST);

	//quakeMain(NULL);
	// Wait for it to finish.
	void* result;
	LWP_JoinThread(thread, &result);

	return 0;
}

