/*
 * sys_time.cpp
 *
 *  Created on: 19 aug. 2012
 *      Author: Danny
 */
#include <ogcsys.h>
#include <ogc/lwp_watchdog.h>
#include <sys/time.h>

static const double 	TB_TIMERCLOCK_SEC_INV  = ((double)1)/((double)TB_TIMER_CLOCK*1000);


int Sys_Milliseconds( void ) {
	long long time = gettime();
	double dtime = ((double)time) * TB_TIMERCLOCK_SEC_INV * 1000;
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
