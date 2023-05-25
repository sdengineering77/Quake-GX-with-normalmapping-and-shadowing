/*
 * main.cpp
 *
 *  Created on: 8 aug. 2012
 *      Author: Danny
 */
//#include <GL/glut.h>

#include <gccore.h>
#include <ogc/lwp.h>
#include <ogc/lwp_threadq.h>
#include <ogc/mutex.h>
#include <ogc/lwp_watchdog.h>
#include <wiiuse/wpad.h>
#include <ogcsys.h>

#include <fat.h>
#include <unistd.h>
#include <network.h>

#include <malloc.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <dirent.h>
#include <fnmatch.h>
#include <errno.h>
#include <sys/time.h>

#include "main.h"

//#define WIFILOGGING
#define	MAX_OSPATH			256

static	int		frameNum;

// constants
static const double 	TB_TIMERCLOCK_SEC_INV  = ((double)1)/((double)TB_TIMER_CLOCK*1000);
static const int 		stacksize = 2 * 1024 * 1024;
static const 			size_t	heap_size	= 24 * 1024 * 1024;
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
	sock = net_socket (AF_INET, SOCK_STREAM, IPPROTO_IP);

	memset (&server, 0, sizeof (server));
	memset (&client, 0, sizeof (client));

	server.sin_family = AF_INET;
	server.sin_port = htons (80);
	server.sin_addr.s_addr = INADDR_ANY;
	net_bind (sock, (struct sockaddr *) &server, sizeof (server));
	net_listen( sock, 5);

	csock = net_accept (sock, (struct sockaddr *) &client, &clientlen);


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
	net_send(csock, text, strlen(text), 0);
	net_send(csock, "\r", 1, 0);
}

void Sys_Quit( void ) {
	exit( 0 );
}


/*
 * =======================================================
 * Sys_Printf
 * =======================================================
 */
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

void Sys_Error( const char *error, ... ) {
	va_list         argptr;
	char msg[MAX_CHARS_SYSPRINTF];

	va_start (argptr,error);
	vsnprintf (msg, MAX_CHARS_SYSPRINTF-1, error, argptr); // DRS doesn't work with direct vprintf in Dolphin emu
	va_end (argptr);
	Sys_Printf(msg);
	Sys_Quit();
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

int Sys_Milliseconds( void ) {
	long long time = gettime();
	double dtime = ((double)time) * TB_TIMERCLOCK_SEC_INV;
	return dtime;
}

double Sys_GetClockTicks( void ) {
	long long time = gettime();
	double dtime = 12 * (double)time;
	return dtime;
}

double Sys_ClockTicksPerSecond( void ) {
	return TB_TIMER_CLOCK*12000;
}

void Sys_SetFatalError( const char *error ) {
	Sys_Printf("FatalError: %s\r\n", error);
}


static void *SYS_LaunchDoom(void *) {
	int 	argc = local_argc;
	const char 	**argv = (const char **) local_argv;

//VIDEO_WaitVSync();
	arena1Size = ((unsigned int)SYS_GetArena1Hi() - (unsigned int)SYS_GetArena1Lo());
	arena2Size = ((unsigned int)SYS_GetArena2Hi() - (unsigned int)SYS_GetArena2Lo());
	Sys_Printf("Arena 1 free: %dkB Arena 2 free: %dkB\r\n", arena1Size/1024, arena2Size/1024);

//VIDEO_WaitVSync();
	Sys_Printf(">>> CALL CONSTRUCTORS!!!=============\r\n");
//	callConstructors();

	Sys_Printf(">>> END CALL CONSTRUCTORS!!!=============\r\n");
	if ( argc > 1 ) {
		Sys_Printf("common->Init( argc-1, &argv[1], NULL )\r\n");
//		common->Init( argc-1, &argv[1], NULL );
	} else {
		Sys_Printf("common->Init( 0, NULL, NULL )\r\n");
//		common->Init( 0, NULL, NULL );
	}
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

	//while( 1 ) {
		// DRS TODO: do in threads, see linux/posix
//		runCommonAsync();

//		runCommonFrame();
		frameNum++;
	//}
	Sys_Printf(">>> END single loop\r\n");
	// DRS TODO: when threads run, have launcher join them
	// need to figure out how to quit everything
	return NULL;
}


/*
 * =================================================
 * Main
 * =================================================
 */
/*
int main(int argc, char* argv[]) {
	// DRS TODO: move to better place
	VIDEO_Init();
//	glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH); // We may need the console, and also need a VSync
	stack = malloc(stacksize);
#ifdef WIFILOGGING
	Sys_AcceptLogTerminal();
#endif



	local_argc = argc;
	local_argv = argv;

	// not sure this can be done in LWP...
//	VIDEO_WaitVSync();
	PAD_Init();
	WPAD_Init();
//	VIDEO_WaitVSync();


Sys_Printf(">>> Stack allocated at %p %p\r\n", stack, (void *) ((u32)stack + stacksize));
{Sys_DebugPrintf(">>> nieuwe main TEST NEW...===============================================================\r\n");
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


	// cannot be done in LWP?
	if (!fatInitDefault()) {
		Sys_Error("fatInitDefault failure\n");
	}
//Sys_WaitPress();
	// Start the main thread.
	LWP_CreateThread(&thread, &SYS_LaunchDoom, 0, stack, stacksize, 64);
	//quakeMain(NULL);
	// Wait for it to finish.
	void* result;
	LWP_JoinThread(thread, &result);

	return 0;
}
*/
