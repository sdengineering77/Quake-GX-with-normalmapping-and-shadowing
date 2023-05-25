#include <gccore.h>
#include <wiiuse/wpad.h>

#include <fat.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>


static void *xfb = NULL;
static GXRModeObj *rmode = NULL;

float cubedata[][5] = {
	// voor
	{-1.0f,-1.0f, 1.0f, 0.0f,0.0f},
	{-1.0f,1.0f,1.0f, 0.0f,1.0f},
	{1.0f,1.0f,1.0f, 1.0f,1.0f},
	{1.0f,-1.0f,1.0f, 1.0f,0.0f}
};

//---------------------------------------------------------------------------------
int main(int argc, char **argv) {
//---------------------------------------------------------------------------------

	// Initialise the video system
	VIDEO_Init();
	
	// This function initialises the attached controllers
	WPAD_Init();
	
	// Obtain the preferred video mode from the system
	// This will correspond to the settings in the Wii menu
	rmode = VIDEO_GetPreferredMode(NULL);

	// Allocate memory for the display in the uncached region
	xfb = MEM_K0_TO_K1(SYS_AllocateFramebuffer(rmode));
	
	// Initialise the console, required for printf
	console_init(xfb,20,20,rmode->fbWidth,rmode->xfbHeight,rmode->fbWidth*VI_DISPLAY_PIX_SZ);
	
	// Set up the video registers with the chosen mode
	VIDEO_Configure(rmode);
	
	// Tell the video hardware where our display memory is
	VIDEO_SetNextFramebuffer(xfb);
	
	// Make the display visible
	VIDEO_SetBlack(FALSE);

	// Flush the video register changes to the hardware
	VIDEO_Flush();

	// Wait for Video setup to complete
	VIDEO_WaitVSync();
	if(rmode->viTVMode&VI_NON_INTERLACE) VIDEO_WaitVSync();


	// The console understands VT terminal escape codes
	// This positions the cursor on row 2, column 0
	// we can use variables for this with format codes too
	// e.g. printf ("\x1b[%d;%dH", row, column );
	printf("\x1b[2;0H");

	int i;
	Vector va[8];
	Vector *pva = &va[0];

	for(i=0; i<4;i++) {
		printf("%02d va %p - &va[] %p \n", i, va, &va[i]);
		printf("%02d pva %p - &pva[] %p \n", i, pva, &pva[i]);
	}

	int numverts = sizeof(cubedata)/sizeof(float[5]);
	printf("num vertices %d\n", numverts);
	//float *vertices = &cubedata[0];
	typeof (float[5]) *vertices = &cubedata[0];
	//printf("cubedata %p - &cubedata[0] %p - cubedata[0] %p \n vertices %p - &vertices[0] %p - vertices[0] %p - *vertices[0] %p\n", cubedata, &cubedata[0], cubedata[0], vertices, &vertices[0], vertices[0], *vertices[0]);
	for(i=0; i<numverts;i++) {
		printf("%02d cubedata %p - &cubedata[] %p - cubedata[] %p float: %f\n", i, cubedata, &cubedata[i], cubedata[i], *cubedata[i]);
	}
	for(i=0; i<numverts;i++) {
	printf("%02d vertices %p - &vertices[] %p - vertices[] %p\n", i, vertices, &vertices[i], vertices[i]);
	}
//	printf("vertices %p - &vertices[0] %p - vertices[0] %p\n", vertices, &vertices[0], vertices[0]);

	while(1) {

		// Call WPAD_ScanPads each loop, this reads the latest controller states
		WPAD_ScanPads();

		// WPAD_ButtonsDown tells us which buttons were pressed in this loop
		// this is a "one shot" state which will not fire again until the button has been released
		u32 pressed = WPAD_ButtonsDown(0);

		// We return to the launcher application via exit
		if ( pressed & WPAD_BUTTON_HOME ) exit(0);

		// Wait for the next frame
		VIDEO_WaitVSync();
	}

	return 0;
}
