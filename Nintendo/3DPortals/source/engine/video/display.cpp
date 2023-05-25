#include "display.h"


Display::Display(int renderWidth, int renderHeight) {
	this->renderWidth = renderWidth;
	this->renderHeight = renderHeight;

	this->rmode = NULL;
	this->frameBuffer[0] = NULL;
	this->frameBuffer[1] = NULL;
	this->currBuffer = 0;
	
	this->init();
}

Display::~Display() {
}
		
void 		Display::init() {
	void *gpfifo = NULL;

	VIDEO_Init();

	// allocate the fifo buffer
	gpfifo = memalign(32,DEFAULT_FIFO_SIZE);
	memset(gpfifo,0,DEFAULT_FIFO_SIZE);

	// configure video
	this->rmode = VIDEO_GetPreferredMode(NULL);
	VIDEO_Configure(this->rmode);

	// allocate 2 framebuffers for double buffering
	// TODO: test if faster using MEM_K0_TO_K1
	this->frameBuffer[0] = SYS_AllocateFramebuffer(this->rmode);
	this->frameBuffer[1] = SYS_AllocateFramebuffer(this->rmode);

	VIDEO_SetNextFramebuffer(this->frameBuffer[this->currBuffer]);
	VIDEO_Flush();
	VIDEO_WaitVSync();
	if(rmode->viTVMode&VI_NON_INTERLACE) VIDEO_WaitVSync();

	this->currBuffer ^= 1;

	// init GPU
	GX_Init(gpfifo, DEFAULT_FIFO_SIZE);
 
	// clears the bg to color and clears the z buffer
	GXColor background = {0, 0, 0, 0xFF};
	GX_SetCopyClear(background, 0x00ffffff);
 
	// other gx setup
	GX_SetViewport(0, 0, this->rmode->fbWidth, this->rmode->efbHeight, 0, 1);
	float yscale = GX_GetYScaleFactor(this->rmode->efbHeight, this->rmode->xfbHeight);
	int xfbHeight = GX_SetDispCopyYScale(yscale);
	GX_SetScissor(0, 0, this->rmode->fbWidth, this->rmode->efbHeight);
	GX_SetDispCopySrc(0, 0, this->rmode->fbWidth, this->rmode->efbHeight);
	GX_SetDispCopyDst(this->rmode->fbWidth, xfbHeight);
	GX_SetCopyFilter(this->rmode->aa, this->rmode->sample_pattern, GX_TRUE, this->rmode->vfilter);
	GX_SetFieldMode(this->rmode->field_rendering, ((this->rmode->viHeight==2*this->rmode->xfbHeight)?GX_ENABLE:GX_DISABLE));

	if (rmode->aa)
        GX_SetPixelFmt(GX_PF_RGB565_Z16, GX_ZC_LINEAR);
    else
        GX_SetPixelFmt(GX_PF_RGBA6_Z24, GX_ZC_LINEAR);

	GX_SetCullMode(GX_CULL_BACK);
	GX_CopyDisp(this->frameBuffer[this->currBuffer], GX_TRUE);
	GX_SetDispCopyGamma(GX_GM_1_0);
	
	// charset setup
	Charset *c = new Charset8x8();
	this->console = new Console(80, 50, this->rmode->fbWidth, this->rmode->efbHeight, c);
	

}

void Display::newFrame() {
	GX_CopyDisp(this->frameBuffer[this->currBuffer],GX_TRUE);

	VIDEO_SetNextFramebuffer(this->frameBuffer[this->currBuffer]);
	//if(first_frame) {
	//	first_frame = 0;
	//	VIDEO_SetBlack(FALSE);
	//}
	VIDEO_Flush();
	VIDEO_WaitVSync();
	this->currBuffer ^= 1;

}

Console 	*Display::getConsole() {
	return this->console;
}
//Renderer *Display::getRenderer();
