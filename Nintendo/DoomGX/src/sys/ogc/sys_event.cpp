/*
 * sys_event.cpp
 *
 *  Created on: 26 sep. 2012
 *      Author: Danny
 */

#include "../../idlib/precompiled.h"
#include "../sys_local.h"


/*
============================================================================
EVENT LOOP
============================================================================
*/

#define	MAX_QUED_EVENTS		256
#define	MASK_QUED_EVENTS	( MAX_QUED_EVENTS - 1 )

static sysEvent_t eventQue[MAX_QUED_EVENTS];
static int eventHead, eventTail;

/*
================
Sys_QueEvent

ptr should either be null, or point to a block of data that can be freed later
================
*/
void Sys_QueEvent( sysEventType_t type, int value, int value2,
				  int ptrLength, void *ptr ) {
	sysEvent_t *ev;

	ev = &eventQue[eventHead & MASK_QUED_EVENTS];
	if (eventHead - eventTail >= MAX_QUED_EVENTS) {
		common->Printf( "Posix_QueEvent: overflow\n" );
		// we are discarding an event, but don't leak memory
		// TTimo: verbose dropped event types?
		if (ev->evPtr) {
			Mem_Free(ev->evPtr);
			ev->evPtr = NULL;
		}
		eventTail++;
	}

	eventHead++;

	ev->evType = type;
	ev->evValue = value;
	ev->evValue2 = value2;
	ev->evPtrLength = ptrLength;
	ev->evPtr = ptr;

#if 0
	common->Printf( "Event %d: %d %d\n", ev->evType, ev->evValue, ev->evValue2 );
#endif
}

/*
================
Sys_GetEvent
================
*/
sysEvent_t Sys_GetEvent(void) {
Sys_Printf(">>> sysEvent_t Sys_GetEvent()\r\n");
	static sysEvent_t ev;

	// return if we have data
	if (eventHead > eventTail) {
		eventTail++;
		return eventQue[(eventTail - 1) & MASK_QUED_EVENTS];
	}
	// return the empty event with the current time
	memset(&ev, 0, sizeof(ev));
	// DRS: time isn't set...

	return ev;
}

/*
================
Sys_ClearEvents
================
*/
void Sys_ClearEvents( void ) {
	eventHead = eventTail = 0;
}




