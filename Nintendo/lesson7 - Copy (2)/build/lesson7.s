	.file	"lesson7.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl setlight
	.type	setlight, @function
setlight:
.LFB63:
	.file 1 "c:/Utils/devkitPro/examples/gamecube/graphics/gx/neheGX/lesson7/source/lesson7.c"
	.loc 1 62 0
.LVL0:
	stwu 1,-168(1)
.LCFI0:
	.loc 1 67 0
	lis 9,.LC0@ha
	lfd 13,.LC0@l(9)
	lis 9,.LC2@ha
	.loc 1 62 0
	stfd 30,152(1)
.LCFI1:
	.loc 1 68 0
	fmr 30,2
	.loc 1 62 0
	stfd 31,160(1)
.LCFI2:
	.loc 1 67 0
	fmr 31,1
	lfs 0,.LC2@l(9)
	.loc 1 62 0
	mflr 0
.LCFI3:
	.loc 1 68 0
	fmul 30,30,13
	.loc 1 62 0
	stfd 28,136(1)
.LCFI4:
	stfd 29,144(1)
.LCFI5:
	.loc 1 67 0
	fmul 31,31,13
	.loc 1 62 0
	stw 0,172(1)
.LCFI6:
	stw 26,112(1)
.LCFI7:
	mr 26,4
	.loc 1 68 0
	fdiv 30,30,0
	.loc 1 62 0
	stw 27,116(1)
.LCFI8:
	stw 28,120(1)
.LCFI9:
	mr 27,3
	stw 29,124(1)
.LCFI10:
	.loc 1 75 0
	addi 29,1,20
	.loc 1 62 0
	stw 23,100(1)
.LCFI11:
	.loc 1 76 0
	addi 28,1,88
	.loc 1 62 0
	stw 24,104(1)
.LCFI12:
	stw 25,108(1)
.LCFI13:
	.loc 1 62 0
	lwz 23,0(6)
	lwz 24,0(7)
	lwz 25,0(5)
	.loc 1 67 0
	fdiv 31,31,0
	.loc 1 68 0
	frsp 30,30
.LVL1:
	.loc 1 62 0
	fmr 28,3
	.loc 1 67 0
	frsp 31,31
.LVL2:
	.loc 1 69 0
	fmr 1,30
.LVL3:
	bl cosf
.LVL4:
	fmuls 29,1,28
	fmr 1,31
	bl sinf
	fmuls 0,29,1
	.loc 1 70 0
	fmr 1,30
	.loc 1 69 0
	stfs 0,8(1)
	.loc 1 70 0
	bl sinf
	fmuls 0,1,28
	.loc 1 71 0
	fmr 1,31
	.loc 1 70 0
	stfs 0,12(1)
	.loc 1 71 0
	bl cosf
	.loc 1 73 0
	addi 4,1,8
	.loc 1 71 0
	fmuls 29,29,1
	.loc 1 73 0
	mr 5,4
	mr 3,26
	.loc 1 71 0
	stfs 29,16(1)
	.loc 1 73 0
	bl ps_guVecMultiply
	.loc 1 75 0
	lfs 1,8(1)
	mr 3,29
	lfs 2,12(1)
	lfs 3,16(1)
	bl GX_InitLightPos
	.loc 1 76 0
	mr 4,28
	mr 3,29
	stw 25,88(1)
	bl GX_InitLightColor
	.loc 1 80 0
	mr 3,29
	li 4,1
	bl GX_LoadLightObj
	.loc 1 83 0
	li 3,1
	bl GX_SetNumChans
	.loc 1 84 0
	li 9,2
	li 5,0
	li 6,0
	li 7,1
	li 8,2
	li 3,0
	li 4,1
	bl GX_SetChanCtrl
	.loc 1 85 0
	mr 4,28
	li 3,4
	stw 23,88(1)
	bl GX_SetChanAmbColor
	.loc 1 86 0
	mr 4,28
	li 3,4
	stw 24,88(1)
	bl GX_SetChanMatColor
	.loc 1 88 0
	lwz 0,8(1)
	lwz 9,12(1)
	.loc 1 89 0
	mr 3,27
	.loc 1 88 0
	lwz 11,16(1)
	stw 0,0(27)
	.loc 1 89 0
	lwz 0,172(1)
	.loc 1 88 0
	stw 9,4(27)
	stw 11,8(27)
	.loc 1 89 0
	mtlr 0
	lwz 23,100(1)
.LVL5:
	lwz 24,104(1)
.LVL6:
	lwz 25,108(1)
.LVL7:
	lwz 26,112(1)
.LVL8:
	lwz 27,116(1)
	lwz 28,120(1)
	lwz 29,124(1)
	lfd 28,136(1)
.LVL9:
	lfd 29,144(1)
	lfd 30,152(1)
.LVL10:
	lfd 31,160(1)
.LVL11:
	addi 1,1,168
	blr
.LFE63:
	.size	setlight, .-setlight
	.align 2
	.globl main
	.type	main, @function
main:
.LFB64:
	.loc 1 93 0
.LVL12:
	stwu 1,-808(1)
.LCFI14:
	mflr 0
.LCFI15:
	.loc 1 106 0
	li 5,48
	li 4,0
.LVL13:
	addi 3,1,212
.LVL14:
	.loc 1 93 0
	stw 20,648(1)
.LCFI16:
	stw 26,672(1)
.LCFI17:
	stw 28,680(1)
.LCFI18:
	.loc 1 124 0
	lis 28,.LANCHOR1@ha
	.loc 1 93 0
	stw 30,688(1)
.LCFI19:
	.loc 1 124 0
	la 20,.LANCHOR1@l(28)
	.loc 1 93 0
	stw 31,692(1)
.LCFI20:
	li 31,0
.LVL15:
	stfd 18,696(1)
.LCFI21:
	stfd 19,704(1)
.LCFI22:
	stfd 20,712(1)
.LCFI23:
	stfd 21,720(1)
.LCFI24:
	stfd 22,728(1)
.LCFI25:
	stfd 23,736(1)
.LCFI26:
	stfd 24,744(1)
.LCFI27:
	stfd 25,752(1)
.LCFI28:
	stfd 26,760(1)
.LCFI29:
	stfd 27,768(1)
.LCFI30:
	stfd 28,776(1)
.LCFI31:
	stfd 29,784(1)
.LCFI32:
	stfd 30,792(1)
.LCFI33:
	stfd 31,800(1)
.LCFI34:
	stw 14,624(1)
.LCFI35:
	stw 15,628(1)
.LCFI36:
	stw 16,632(1)
.LCFI37:
	stw 17,636(1)
.LCFI38:
	stw 18,640(1)
.LCFI39:
	stw 19,644(1)
.LCFI40:
	stw 21,652(1)
.LCFI41:
	stw 22,656(1)
.LCFI42:
	stw 23,660(1)
.LCFI43:
	stw 24,664(1)
.LCFI44:
	stw 25,668(1)
.LCFI45:
	stw 27,676(1)
.LCFI46:
	stw 29,684(1)
.LCFI47:
	stw 0,812(1)
.LCFI48:
	.loc 1 106 0
	bl memset
	.loc 1 116 0
	lis 9,.LANCHOR0@ha
	la 26,.LANCHOR0@l(9)
	lwz 0,.LANCHOR0@l(9)
	lwz 11,4(26)
	lwz 9,8(26)
	.loc 1 117 0
	lwz 10,12(26)
	lwz 8,16(26)
	lwz 7,20(26)
	.loc 1 118 0
	lwz 6,24(26)
	lwz 5,28(26)
	lwz 4,32(26)
	.loc 1 116 0
	stw 0,16(1)
	stw 9,24(1)
	stw 11,20(1)
	.loc 1 117 0
	stw 10,28(1)
	stw 8,32(1)
	stw 7,36(1)
	.loc 1 118 0
	stw 6,40(1)
	stw 5,44(1)
	stw 4,48(1)
	.loc 1 121 0
	bl VIDEO_Init
	.loc 1 122 0
	bl WPAD_Init
	.loc 1 124 0
	li 3,0
	bl VIDEO_GetPreferredMode
	.loc 1 127 0
	lis 4,0x4
	.loc 1 124 0
	stw 3,.LANCHOR1@l(28)
	.loc 1 127 0
	li 3,32
	bl memalign
	.loc 1 128 0
	li 4,0
	lis 5,0x4
	.loc 1 127 0
	mr 30,3
.LVL16:
	.loc 1 128 0
	bl memset
	.loc 1 131 0
	lwz 3,.LANCHOR1@l(28)
	bl SYS_AllocateFramebuffer
	stw 3,4(20)
	.loc 1 132 0
	lwz 3,.LANCHOR1@l(28)
	bl SYS_AllocateFramebuffer
	stw 3,8(20)
	.loc 1 135 0
	lwz 3,.LANCHOR1@l(28)
	bl VIDEO_Configure
	.loc 1 136 0
	lwz 3,4(20)
	bl VIDEO_SetNextFramebuffer
	.loc 1 137 0
	bl VIDEO_Flush
	.loc 1 138 0
	bl VIDEO_WaitVSync
	.loc 1 139 0
	lwz 9,.LANCHOR1@l(28)
	lwz 0,0(9)
	andi. 9,0,1
	bne- 0,.L31
.L4:
	.loc 1 144 0
	lis 4,0x4
	mr 3,30
	bl GX_Init
	.loc 1 115 0
	li 0,0
	rlwimi 31,0,24,0,7
	.loc 1 147 0
	addi 21,1,592
	.loc 1 115 0
	rlwimi 31,0,16,8,15
	.loc 1 147 0
	lis 4,0xff
	.loc 1 115 0
	rlwimi 31,0,8,16,23
	li 0,-1
	rlwimi 31,0,0,24,31
	.loc 1 147 0
	ori 4,4,65535
	mr 3,21
	stw 31,592(1)
	bl GX_SetCopyClear
	.loc 1 150 0
	lwz 9,.LANCHOR1@l(28)
	lis 10,0x4330
	lis 31,.LC5@ha
.LVL17:
	lhz 0,4(9)
	lis 25,.LC6@ha
	stw 10,600(1)
	stw 0,604(1)
	lhz 11,6(9)
	lis 9,.LC37@ha
	lfd 3,600(1)
	stw 11,604(1)
	lfs 0,.LC5@l(31)
	lfd 4,600(1)
	fsub 3,3,0
	lfs 1,.LC37@l(9)
	fsub 4,4,0
	lfs 6,.LC6@l(25)
	fmr 2,1
	frsp 3,3
	frsp 4,4
	fmr 5,1
	bl GX_SetViewport
	.loc 1 151 0
	lwz 9,.LANCHOR1@l(28)
	lhz 4,8(9)
	lhz 3,6(9)
	bl GX_GetYScaleFactor
	.loc 1 152 0
	bl GX_SetDispCopyYScale
	.loc 1 153 0
	lwz 9,.LANCHOR1@l(28)
	.loc 1 152 0
	mr 29,3
.LVL18:
	.loc 1 153 0
	li 4,0
	lhz 6,6(9)
	li 3,0
	lhz 5,4(9)
	bl GX_SetScissor
	.loc 1 154 0
	lwz 9,.LANCHOR1@l(28)
	li 3,0
	li 4,0
	lhz 6,6(9)
	lhz 5,4(9)
	bl GX_SetDispCopySrc
	.loc 1 155 0
	lwz 9,.LANCHOR1@l(28)
	rlwinm 4,29,0,0xffff
.LVL19:
	lhz 3,4(9)
	bl GX_SetDispCopyDst
.LVL20:
	.loc 1 156 0
	lwz 4,.LANCHOR1@l(28)
	li 5,1
	lbz 3,25(4)
	addi 6,4,50
	addi 4,4,26
	bl GX_SetCopyFilter
	.loc 1 157 0
	lwz 9,.LANCHOR1@l(28)
	lhz 4,8(9)
	lhz 0,16(9)
	slwi 4,4,1
	lbz 3,24(9)
	xor 4,0,4
	cntlzw 4,4
	srwi 4,4,5
	bl GX_SetFieldMode
	.loc 1 159 0
	lwz 9,.LANCHOR1@l(28)
	lbz 0,25(9)
	cmpwi 7,0,0
	beq- 7,.L6
	.loc 1 160 0
	li 3,2
	li 4,0
	bl GX_SetPixelFmt
.L8:
	.loc 1 164 0
	li 3,2
	.loc 1 185 0
	addi 29,1,76
	.loc 1 164 0
	bl GX_SetCullMode
	.loc 1 165 0
	lwz 3,8(20)
	li 4,1
	.loc 1 186 0
	addi 17,1,116
	.loc 1 165 0
	bl GX_CopyDisp
	.loc 1 166 0
	li 3,0
	bl GX_SetDispCopyGamma
	.loc 1 187 0
	addi 16,1,148
	.loc 1 174 0
	bl GX_ClearVtxDesc
	.loc 1 175 0
	li 3,9
	li 4,1
	.loc 1 188 0
	addi 15,1,180
	.loc 1 175 0
	bl GX_SetVtxDesc
	.loc 1 176 0
	li 3,25
	li 4,1
	.loc 1 192 0
	addi 22,1,260
	.loc 1 176 0
	bl GX_SetVtxDesc
	.loc 1 177 0
	li 3,13
	li 4,1
	lis 19,.LC12@ha
	bl GX_SetVtxDesc
	.loc 1 179 0
	li 3,0
	li 4,9
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 180 0
	li 3,0
	li 4,25
	li 5,2
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 181 0
	li 7,0
	li 6,4
	li 3,0
	li 4,13
	li 5,1
	bl GX_SetVtxAttrFmt
	.loc 1 202 0
	li 24,1
.LVL21:
	.loc 1 183 0
	bl GX_InvVtxCache
	.loc 1 202 0
	li 18,1
.LVL22:
	.loc 1 184 0
	bl GX_InvalidateTexAll
	.loc 1 185 0
	lis 9,crate_tpl_size@ha
	lwz 5,crate_tpl_size@l(9)
	lis 4,crate_tpl@ha
	la 4,crate_tpl@l(4)
	mr 3,29
	bl TPL_OpenTPLFromMemory
	.loc 1 186 0
	li 4,0
	mr 5,17
	mr 3,29
	bl TPL_GetTexture
	.loc 1 187 0
	li 4,1
	mr 5,16
	mr 3,29
	bl TPL_GetTexture
	.loc 1 188 0
	mr 3,29
	li 4,2
	mr 5,15
	bl TPL_GetTexture
	.loc 1 192 0
	addi 4,1,16
	addi 5,1,28
	addi 6,1,40
	mr 3,22
	.loc 1 199 0
	addi 29,1,452
	.loc 1 192 0
	bl guLookAt
	.loc 1 197 0
	lwz 9,.LANCHOR1@l(28)
	.loc 1 199 0
	lis 11,0x4330
	lfs 13,.LC5@l(31)
	lhz 0,14(9)
	mr 3,29
	lhz 10,16(9)
	lis 9,.LC7@ha
	stw 0,604(1)
.LBB245:
.LBB496:
.LBB499:
	.file 2 "c:/Utils/devkitPro/libogc/include/ogc/gx.h"
	.loc 2 1141 0
	lis 31,0xcc00
.LBE499:
.LBE496:
.LBE245:
	.loc 1 199 0
	stw 10,612(1)
.LBB504:
.LBB502:
.LBB498:
	.loc 2 1141 0
	ori 31,31,32768
.LBE498:
.LBE502:
.LBE504:
	.loc 1 199 0
	stw 11,608(1)
.LBB505:
	.loc 1 221 0
	addi 14,1,64
.LBE505:
	.loc 1 199 0
	stw 11,600(1)
	lis 11,.LC9@ha
	lfd 2,608(1)
.LBB506:
	.loc 1 240 0
	addi 23,1,516
.LBE506:
	.loc 1 199 0
	lfd 0,600(1)
	fsub 2,2,13
	lfs 1,.LC7@l(9)
	fsub 0,0,13
	lis 9,.LC8@ha
	lfs 3,.LC8@l(9)
.LBB507:
	.loc 1 221 0
	lis 9,.LC37@ha
.LBE507:
	.loc 1 199 0
	frsp 2,2
	lfs 4,.LC9@l(11)
	frsp 0,0
.LBB508:
	.loc 1 221 0
	lfs 31,.LC37@l(9)
.LBE508:
	.loc 1 202 0
	fmr 27,1
.LVL23:
	.loc 1 199 0
	fdivs 2,0,2
	bl guPerspective
	.loc 1 200 0
	mr 3,29
	li 4,0
	bl GX_LoadProjectionMtx
	.loc 1 202 0
	lwz 9,40(26)
	lwz 11,44(26)
	stw 9,56(1)
	lis 9,.LC10@ha
	stw 11,60(1)
	lis 11,.LC11@ha
.LBB509:
	.loc 1 215 0
	lfs 21,.LC12@l(19)
.LBE509:
	.loc 1 202 0
	lfs 26,.LC10@l(9)
.LVL24:
.LBB510:
	.loc 1 223 0
	lis 9,.LC13@ha
.LBE510:
	.loc 1 202 0
	lfs 28,.LC11@l(11)
.LVL25:
.LBB511:
	.loc 1 327 0
	lis 11,.LC14@ha
	.loc 1 223 0
	lfs 25,.LC13@l(9)
	.loc 1 328 0
	lis 9,.LC15@ha
	.loc 1 327 0
	lfs 24,.LC14@l(11)
.LBB495:
.LBB500:
	.loc 2 1141 0
	lis 11,.LC16@ha
.LBE500:
.LBE495:
	.loc 1 328 0
	lfs 23,.LC15@l(9)
	.loc 1 214 0
	fmr 18,21
.LBB494:
.LBB497:
	.loc 2 1141 0
	lfs 30,.LC16@l(11)
.LBE497:
.LBE494:
.LBB490:
.LBB492:
	.loc 2 1216 0
	lis 9,.LC17@ha
.LBE492:
.LBE490:
	.loc 1 519 0
	lis 11,.LC18@ha
	.loc 1 213 0
	fmr 19,21
	.loc 1 212 0
	fmr 20,21
.LBE511:
	.loc 1 202 0
	lwz 0,36(26)
.LBB512:
.LBB503:
.LBB491:
	.loc 2 1216 0
	lfs 29,.LC17@l(9)
.LBE491:
.LBE503:
	.loc 1 519 0
	lfs 22,.LC18@l(11)
.LBE512:
	.loc 1 202 0
	stw 0,52(1)
	b .L9
.LVL26:
.L34:
.LBB513:
	.loc 1 223 0
	fmr 28,31
.L23:
	.loc 1 226 0
	li 5,1
	li 4,30
	addi 3,1,212
	.loc 1 280 0
	li 29,0
	.loc 1 226 0
	bl GX_LoadTexMtxImm
	.loc 1 240 0
	lfs 2,68(1)
	lfs 3,72(1)
	mr 3,23
	lfs 1,64(1)
	.loc 1 330 0
	addi 28,1,356
	.loc 1 336 0
	addi 27,1,404
	.loc 1 240 0
	bl GX_InitLightPos
	.loc 1 241 0
	li 0,-1
	mr 4,21
	mr 3,23
	stb 0,595(1)
	stb 0,592(1)
	stb 0,593(1)
	stb 0,594(1)
	bl GX_InitLightColor
	.loc 1 242 0
	li 4,128
	mr 3,23
	bl GX_LoadLightObj
	.loc 1 246 0
	li 3,4
	bl GX_SetNumTexGens
	.loc 1 250 0
	li 3,0
	li 4,1
	li 5,4
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 252 0
	li 3,1
	li 4,1
	li 5,4
	li 6,30
	bl GX_SetTexCoordGen
	.loc 1 254 0
	li 3,2
	li 4,2
	li 5,13
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 256 0
	li 6,60
	li 4,9
	li 5,14
	li 3,3
	bl GX_SetTexCoordGen
	.loc 1 262 0
	li 3,2
	bl GX_SetNumTevStages
	.loc 1 265 0
	li 3,0
	li 4,0
	li 5,0
	bl GX_SetIndTexOrder
	.loc 1 266 0
	li 4,0
	li 5,0
	li 3,0
	bl GX_SetIndTexCoordScale
	.loc 1 274 0
	lwz 0,48(26)
	lwz 11,56(26)
	.loc 1 277 0
	li 3,1
	.loc 1 274 0
	lwz 9,52(26)
	lwz 10,60(26)
	lwz 8,64(26)
	lwz 7,68(26)
	stw 0,92(1)
	stw 11,100(1)
	stw 9,96(1)
	stw 10,104(1)
	stw 8,108(1)
	stw 7,112(1)
	.loc 1 277 0
	bl GX_SetNumIndStages
	.loc 1 278 0
	li 3,1
	addi 4,1,92
	li 5,0
	bl GX_SetIndTexMatrix
	.loc 1 280 0
	li 9,0
	li 10,0
	li 8,0
	li 3,0
	li 4,0
	li 5,0
	li 6,7
	li 7,1
	stw 29,8(1)
	stw 29,12(1)
	bl GX_SetTevIndirect
	.loc 1 298 0
	li 3,0
	li 4,10
	li 5,15
	li 6,8
	li 7,15
	bl GX_SetTevColorIn
	.loc 1 299 0
	li 7,0
	li 8,0
	li 3,0
	li 4,14
	li 5,0
	li 6,3
	bl GX_SetTevColorOp
	.loc 1 300 0
	li 3,0
	li 4,3
	li 5,2
	li 6,4
	bl GX_SetTevOrder
	.loc 1 304 0
	li 9,0
	li 10,0
	li 8,0
	li 3,1
	li 4,0
	li 5,0
	li 6,7
	li 7,1
	stw 29,12(1)
	stw 29,8(1)
	bl GX_SetTevIndirect
	.loc 1 316 0
	li 3,1
	li 4,15
	li 5,13
	li 6,8
	li 7,0
	.loc 1 326 0
	addi 29,1,308
	.loc 1 316 0
	bl GX_SetTevColorIn
	.loc 1 317 0
	li 7,0
	li 8,0
	li 3,1
	li 4,0
	li 5,0
	li 6,3
	bl GX_SetTevColorOp
	.loc 1 318 0
	li 6,255
	li 5,1
	li 4,1
	li 3,1
	bl GX_SetTevOrder
	.loc 1 321 0
	mr 3,17
	li 4,0
	bl GX_LoadTexObj
	.loc 1 322 0
	mr 3,16
	li 4,1
	bl GX_LoadTexObj
	.loc 1 323 0
	li 4,2
	mr 3,15
	bl GX_LoadTexObj
	.loc 1 326 0
	mr 3,29
	bl ps_guMtxIdentity
	.loc 1 327 0
	fmuls 1,27,24
	mr 3,29
	addi 4,1,52
	bl ps_guMtxRotAxisRad
	.loc 1 328 0
	fmr 1,31
	fmr 2,31
	mr 3,29
	fmr 3,23
	mr 4,29
	bl ps_guMtxTransApply
	.loc 1 330 0
	mr 5,28
	mr 4,29
	mr 3,22
	bl ps_guMtxConcat
	.loc 1 334 0
	mr 3,28
	li 4,0
	.loc 1 506 0
	slwi 29,24,2
	.loc 1 334 0
	bl GX_LoadPosMtxImm
	.loc 1 336 0
	mr 4,27
	mr 3,28
	.loc 1 506 0
	add 29,29,20
	.loc 1 336 0
	bl ps_guMtxInverse
	.loc 1 337 0
	mr 3,27
	mr 4,28
	bl ps_guMtxTranspose
	.loc 1 338 0
	li 4,0
	mr 3,28
	bl GX_LoadNrmMtxImm
	.loc 1 339 0
	li 3,0
	bl GX_SetCurrentMtx
	.loc 1 343 0
	li 4,0
	li 5,24
	li 3,128
	bl GX_Begin
.LBB487:
.LBB488:
	.loc 2 1293 0
	lfs 0,.LC6@l(25)
.LBE488:
.LBE487:
.LBB484:
.LBB485:
	.loc 2 1216 0
	lfs 13,.LC12@l(30)
.LBE485:
.LBE484:
	.loc 1 502 0
	li 3,1
.LBB483:
.LBB501:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE501:
.LBE483:
.LBB481:
.LBB482:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 30,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE482:
.LBE481:
.LBB480:
.LBB486:
	.loc 2 1216 0
	stfs 13,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE486:
.LBE480:
.LBB478:
.LBB479:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 13,0(31)
.LBE479:
.LBE478:
.LBB477:
.LBB489:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE489:
.LBE477:
.LBB475:
.LBB476:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE476:
.LBE475:
.LBB473:
.LBB474:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 30,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE474:
.LBE473:
.LBB471:
.LBB472:
	.loc 2 1216 0
	stfs 13,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE472:
.LBE471:
.LBB469:
.LBB470:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 13,0(31)
.LBE470:
.LBE469:
.LBB467:
.LBB468:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE468:
.LBE467:
.LBB465:
.LBB466:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE466:
.LBE465:
.LBB463:
.LBB464:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 30,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE464:
.LBE463:
.LBB461:
.LBB462:
	.loc 2 1216 0
	stfs 13,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE462:
.LBE461:
.LBB459:
.LBB460:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 13,0(31)
.LBE460:
.LBE459:
.LBB457:
.LBB458:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE458:
.LBE457:
.LBB455:
.LBB456:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE456:
.LBE455:
.LBB453:
.LBB454:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 30,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE454:
.LBE453:
.LBB451:
.LBB452:
	.loc 2 1216 0
	stfs 13,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE452:
.LBE451:
.LBB449:
.LBB450:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 13,0(31)
.LBE450:
.LBE449:
.LBB447:
.LBB448:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE448:
.LBE447:
.LBB445:
.LBB446:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE446:
.LBE445:
.LBB443:
.LBB444:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 0,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE444:
.LBE443:
.LBB442:
.LBB493:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE493:
.LBE442:
.LBB440:
.LBB441:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 13,0(31)
.LBE441:
.LBE440:
.LBB438:
.LBB439:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE439:
.LBE438:
.LBB436:
.LBB437:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE437:
.LBE436:
.LBB434:
.LBB435:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 0,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE435:
.LBE434:
.LBB432:
.LBB433:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE433:
.LBE432:
.LBB430:
.LBB431:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 13,0(31)
.LBE431:
.LBE430:
.LBB428:
.LBB429:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE429:
.LBE428:
.LBB426:
.LBB427:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE427:
.LBE426:
.LBB424:
.LBB425:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 0,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE425:
.LBE424:
.LBB422:
.LBB423:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE423:
.LBE422:
.LBB420:
.LBB421:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 13,0(31)
.LBE421:
.LBE420:
.LBB418:
.LBB419:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE419:
.LBE418:
.LBB416:
.LBB417:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE417:
.LBE416:
.LBB414:
.LBB415:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 0,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE415:
.LBE414:
.LBB412:
.LBB413:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE413:
.LBE412:
.LBB410:
.LBB411:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 13,0(31)
.LBE411:
.LBE410:
.LBB408:
.LBB409:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE409:
.LBE408:
.LBB406:
.LBB407:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE407:
.LBE406:
.LBB404:
.LBB405:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 0,0(31)
.LBE405:
.LBE404:
.LBB402:
.LBB403:
	.loc 2 1216 0
	stfs 13,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE403:
.LBE402:
.LBB400:
.LBB401:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE401:
.LBE400:
.LBB398:
.LBB399:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE399:
.LBE398:
.LBB396:
.LBB397:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE397:
.LBE396:
.LBB394:
.LBB395:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 0,0(31)
.LBE395:
.LBE394:
.LBB392:
.LBB393:
	.loc 2 1216 0
	stfs 13,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE393:
.LBE392:
.LBB390:
.LBB391:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE391:
.LBE390:
.LBB388:
.LBB389:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE389:
.LBE388:
.LBB386:
.LBB387:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE387:
.LBE386:
.LBB384:
.LBB385:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 0,0(31)
.LBE385:
.LBE384:
.LBB382:
.LBB383:
	.loc 2 1216 0
	stfs 13,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE383:
.LBE382:
.LBB380:
.LBB381:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE381:
.LBE380:
.LBB378:
.LBB379:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE379:
.LBE378:
.LBB376:
.LBB377:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE377:
.LBE376:
.LBB374:
.LBB375:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 0,0(31)
.LBE375:
.LBE374:
.LBB372:
.LBB373:
	.loc 2 1216 0
	stfs 13,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE373:
.LBE372:
.LBB370:
.LBB371:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE371:
.LBE370:
.LBB368:
.LBB369:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE369:
.LBE368:
.LBB366:
.LBB367:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE367:
.LBE366:
.LBB364:
.LBB365:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 30,0(31)
.LBE365:
.LBE364:
.LBB362:
.LBB363:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE363:
.LBE362:
.LBB360:
.LBB361:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE361:
.LBE360:
.LBB358:
.LBB359:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE359:
.LBE358:
.LBB356:
.LBB357:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE357:
.LBE356:
.LBB354:
.LBB355:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 30,0(31)
.LBE355:
.LBE354:
.LBB352:
.LBB353:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE353:
.LBE352:
.LBB350:
.LBB351:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE351:
.LBE350:
.LBB348:
.LBB349:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE349:
.LBE348:
.LBB345:
.LBB346:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE346:
.LBE345:
.LBB343:
.LBB344:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 30,0(31)
.LBE344:
.LBE343:
.LBB341:
.LBB342:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE342:
.LBE341:
.LBB339:
.LBB340:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE340:
.LBE339:
.LBB337:
.LBB338:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE338:
.LBE337:
.LBB335:
.LBB336:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE336:
.LBE335:
.LBB333:
.LBB334:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 30,0(31)
.LBE334:
.LBE333:
.LBB331:
.LBB332:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE332:
.LBE331:
.LBB329:
.LBB330:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE330:
.LBE329:
.LBB327:
.LBB328:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE328:
.LBE327:
.LBB325:
.LBB326:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE326:
.LBE325:
.LBB323:
.LBB324:
	.loc 2 1216 0
	stfs 30,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE324:
.LBE323:
.LBB321:
.LBB322:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 13,0(31)
.LBE322:
.LBE321:
.LBB319:
.LBB320:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE320:
.LBE319:
.LBB317:
.LBB318:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE318:
.LBE317:
.LBB315:
.LBB316:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE316:
.LBE315:
.LBB313:
.LBB314:
	.loc 2 1216 0
	stfs 30,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE314:
.LBE313:
.LBB311:
.LBB312:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 13,0(31)
.LBE312:
.LBE311:
.LBB309:
.LBB310:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE310:
.LBE309:
.LBB307:
.LBB308:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE308:
.LBE307:
.LBB305:
.LBB306:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE306:
.LBE305:
.LBB303:
.LBB304:
	.loc 2 1216 0
	stfs 30,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE304:
.LBE303:
.LBB301:
.LBB302:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 13,0(31)
.LBE302:
.LBE301:
.LBB299:
.LBB300:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE300:
.LBE299:
.LBB297:
.LBB298:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE298:
.LBE297:
.LBB295:
.LBB296:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE296:
.LBE295:
.LBB293:
.LBB294:
	.loc 2 1216 0
	stfs 30,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE294:
.LBE293:
.LBB291:
.LBB292:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 13,0(31)
.LBE292:
.LBE291:
.LBB289:
.LBB290:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE290:
.LBE289:
.LBB287:
.LBB288:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE288:
.LBE287:
.LBB285:
.LBB286:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE286:
.LBE285:
.LBB283:
.LBB284:
	.loc 2 1216 0
	stfs 0,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE284:
.LBE283:
.LBB281:
.LBB282:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE282:
.LBE281:
.LBB279:
.LBB280:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE280:
.LBE279:
.LBB277:
.LBB278:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE278:
.LBE277:
.LBB275:
.LBB276:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE276:
.LBE275:
.LBB273:
.LBB274:
	.loc 2 1216 0
	stfs 0,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE274:
.LBE273:
.LBB271:
.LBB272:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE272:
.LBE271:
.LBB269:
.LBB270:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE270:
.LBE269:
.LBB267:
.LBB268:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE268:
.LBE267:
.LBB265:
.LBB266:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE266:
.LBE265:
.LBB263:
.LBB264:
	.loc 2 1216 0
	stfs 0,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE264:
.LBE263:
.LBB261:
.LBB262:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE262:
.LBE261:
.LBB259:
.LBB260:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE260:
.LBE259:
.LBB257:
.LBB258:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE258:
.LBE257:
.LBB255:
.LBB256:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE256:
.LBE255:
.LBB253:
.LBB254:
	.loc 2 1216 0
	stfs 0,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE254:
.LBE253:
.LBB251:
.LBB252:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE252:
.LBE251:
.LBB249:
.LBB250:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 13,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE250:
.LBE249:
.LBB247:
.LBB248:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE248:
.LBE247:
	.loc 1 502 0
	bl GX_SetAlphaUpdate
	.loc 1 504 0
	li 5,1
	li 4,3
	li 3,1
	bl GX_SetZMode
	.loc 1 505 0
	li 3,1
	bl GX_SetColorUpdate
	.loc 1 506 0
	lwz 3,4(29)
	li 4,1
	bl GX_CopyDisp
	.loc 1 508 0
	bl GX_DrawDone
	.loc 1 510 0
	lwz 3,4(29)
.LBB246:
.LBB347:
	.loc 2 1142 0
	lis 9,.LC6@ha
	mr 25,9
.LBE347:
.LBE246:
	.loc 1 510 0
	bl VIDEO_SetNextFramebuffer
	.loc 1 511 0
	cmpwi 7,18,0
	bne- 7,.L32
.L26:
	.loc 1 519 0
	fsubs 27,27,22
	.loc 1 515 0
	bl VIDEO_Flush
	.loc 1 517 0
	xori 24,24,1
	.loc 1 516 0
	bl VIDEO_WaitVSync
	.loc 1 519 0
	li 18,0
.LVL27:
.L9:
	.loc 1 210 0
	bl WPAD_ScanPads
	.loc 1 211 0
	li 3,0
	bl WPAD_ButtonsDown
	andi. 0,3,128
	bne- 0,.L33
	.loc 1 212 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,256
	beq- 0,.L12
	fsubs 26,26,20
	mr 30,19
.LVL28:
.L14:
	.loc 1 218 0
	li 3,1
	bl GX_SetNumChans
	.loc 1 221 0
	fmr 1,28
	fmr 2,31
	li 0,-1
	fmr 3,26
	li 9,0
	mr 3,14
	mr 4,22
	mr 5,21
	addi 6,1,616
	addi 7,1,620
	stb 0,592(1)
	stb 0,593(1)
	stb 0,594(1)
	stb 0,595(1)
	stb 9,618(1)
	stb 9,616(1)
	stb 9,617(1)
	stb 0,619(1)
	stb 0,623(1)
	stb 0,620(1)
	stb 0,621(1)
	stb 0,622(1)
	bl setlight
	.loc 1 223 0
	fcmpu 7,28,25
	cror 30,29,30
	beq- 7,.L34
	.loc 1 224 0
	fcmpu 7,28,31
	cror 30,28,30
	bne+ 7,.L23
	fmr 28,25
	b .L23
.LVL29:
.L12:
	.loc 1 213 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,512
	beq- 0,.L15
	fadds 26,26,19
	mr 30,19
.LVL30:
	b .L14
.L32:
	.loc 1 513 0
	li 3,0
	bl VIDEO_SetBlack
	b .L26
.LVL31:
.L33:
	.loc 1 211 0
	li 3,0
	bl exit
.L15:
	.loc 1 214 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,2048
	beq- 0,.L17
	fsubs 28,28,18
	mr 30,19
.LVL32:
	b .L14
.LVL33:
.L6:
.LBE513:
	.loc 1 162 0
	li 3,0
	li 4,0
	bl GX_SetPixelFmt
	b .L8
.LVL34:
.L31:
	.loc 1 139 0
	bl VIDEO_WaitVSync
	b .L4
.LVL35:
.L17:
.LBB514:
	.loc 1 215 0
	li 3,0
	mr 30,19
.LVL36:
	bl WPAD_ButtonsHeld
	andi. 0,3,1024
	beq- 0,.L14
	fadds 28,28,21
	b .L14
.LBE514:
.LFE64:
	.size	main, .-main
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	C.0.7652, @object
	.size	C.0.7652, 12
C.0.7652:
	.zero	12
	.type	C.1.7653, @object
	.size	C.1.7653, 12
C.1.7653:
	.long	0
	.long	1065353216
	.long	0
	.type	C.2.7654, @object
	.size	C.2.7654, 12
C.2.7654:
	.long	0
	.long	0
	.long	-1082130432
	.type	C.6.7688, @object
	.size	C.6.7688, 12
C.6.7688:
	.long	0
	.long	1065353216
	.long	0
	.type	C.7.7702, @object
	.size	C.7.7702, 24
C.7.7702:
	.long	0
	.long	-1090519040
	.long	0
	.long	0
	.long	0
	.long	-1090519040
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.4byte	1127481344
.LC5:
	.4byte	1501560832
.LC6:
	.4byte	1065353216
.LC7:
	.4byte	1110704128
.LC8:
	.4byte	1036831949
.LC9:
	.4byte	1133903872
.LC10:
	.4byte	1082130432
.LC11:
	.4byte	1114636288
.LC12:
	.4byte	1048576000
.LC13:
	.4byte	1135869952
.LC14:
	.4byte	1016003125
.LC15:
	.4byte	-1063256064
.LC16:
	.4byte	-1082130432
.LC17:
	.4byte	-1098907648
.LC18:
	.4byte	1041865114
.LC37:
	.4byte	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC0:
	.4byte	1074340347
	.4byte	1413754136
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	rmode, @object
	.size	rmode, 4
rmode:
	.zero	4
	.type	frameBuffer, @object
	.size	frameBuffer, 8
frameBuffer:
	.zero	8
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x41
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.align 2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI0-.LFB63
	.byte	0xe
	.uleb128 0xa8
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI7-.LCFI2
	.byte	0x9a
	.uleb128 0xe
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI9-.LCFI7
	.byte	0x9c
	.uleb128 0xc
	.byte	0x9b
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0x9d
	.uleb128 0xb
	.byte	0x4
	.4byte	.LCFI13-.LCFI10
	.byte	0x99
	.uleb128 0xf
	.byte	0x98
	.uleb128 0x10
	.byte	0x97
	.uleb128 0x11
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI14-.LFB64
	.byte	0xe
	.uleb128 0x328
	.byte	0x4
	.4byte	.LCFI18-.LCFI14
	.byte	0x9c
	.uleb128 0x20
	.byte	0x9a
	.uleb128 0x22
	.byte	0x94
	.uleb128 0x28
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI20-.LCFI18
	.byte	0x9f
	.uleb128 0x1d
	.byte	0x9e
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI48-.LCFI20
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9d
	.uleb128 0x1f
	.byte	0x9b
	.uleb128 0x21
	.byte	0x99
	.uleb128 0x23
	.byte	0x98
	.uleb128 0x24
	.byte	0x97
	.uleb128 0x25
	.byte	0x96
	.uleb128 0x26
	.byte	0x95
	.uleb128 0x27
	.byte	0x93
	.uleb128 0x29
	.byte	0x92
	.uleb128 0x2a
	.byte	0x91
	.uleb128 0x2b
	.byte	0x90
	.uleb128 0x2c
	.byte	0x8f
	.uleb128 0x2d
	.byte	0x8e
	.uleb128 0x2e
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0xba
	.uleb128 0xc
	.byte	0xb9
	.uleb128 0xe
	.byte	0xb8
	.uleb128 0x10
	.byte	0xb7
	.uleb128 0x12
	.byte	0xb6
	.uleb128 0x14
	.byte	0xb5
	.uleb128 0x16
	.byte	0xb4
	.uleb128 0x18
	.byte	0xb3
	.uleb128 0x1a
	.byte	0xb2
	.uleb128 0x1c
	.align 2
.LEFDE2:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB63-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI0-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 168
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL5-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB64-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 808
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:/Utils/devkitPro/libogc/include/gctypes.h"
	.file 4 "c:/Utils/devkitPro/libogc/include/ogc/gx_struct.h"
	.file 5 "c:/Utils/devkitPro/libogc/include/ogc/gu.h"
	.file 6 "c:/Utils/devkitPro/libogc/include/ogc/tpl.h"
	.file 7 "c:/Utils/devkitPro/examples/gamecube/graphics/gx/neheGX/lesson7/build/crate_tpl.h"
	.section	.debug_info
	.4byte	0x177a
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x1
	.4byte	.LASF84
	.4byte	.LASF85
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x7
	.string	"u8"
	.byte	0x3
	.byte	0xf
	.4byte	0x2f
	.uleb128 0x7
	.string	"u16"
	.byte	0x3
	.byte	0x10
	.4byte	0x36
	.uleb128 0x7
	.string	"u32"
	.byte	0x3
	.byte	0x11
	.4byte	0x25
	.uleb128 0x7
	.string	"f32"
	.byte	0x3
	.byte	0x29
	.4byte	0x84
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.uleb128 0x8
	.4byte	0xa7
	.4byte	0xd3
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x3c
	.byte	0x4
	.byte	0x3a
	.4byte	0x195
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x4
	.byte	0x3b
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3c
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3d
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3e
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3f
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0x40
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0x41
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x4
	.byte	0x42
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0x43
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x44
	.4byte	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"aa"
	.byte	0x4
	.byte	0x45
	.4byte	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x46
	.4byte	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0x47
	.4byte	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0x0
	.uleb128 0x8
	.4byte	0x92
	.4byte	0x1ab
	.uleb128 0x9
	.4byte	0x2c
	.byte	0xb
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0x0
	.uleb128 0x8
	.4byte	0x92
	.4byte	0x1bb
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x6
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x4
	.byte	0x48
	.4byte	0xd3
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0xc
	.byte	0x5
	.byte	0x27
	.4byte	0x1f7
	.uleb128 0xc
	.string	"x"
	.byte	0x5
	.byte	0x28
	.4byte	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"y"
	.byte	0x5
	.byte	0x28
	.4byte	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"z"
	.byte	0x5
	.byte	0x28
	.4byte	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x5
	.byte	0x29
	.4byte	0x1c6
	.uleb128 0x7
	.string	"Mtx"
	.byte	0x5
	.byte	0x2f
	.4byte	0x20d
	.uleb128 0x8
	.4byte	0xb2
	.4byte	0x223
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x3
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x229
	.uleb128 0x8
	.4byte	0xb2
	.4byte	0x239
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x3
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x5
	.byte	0x35
	.4byte	0x244
	.uleb128 0x8
	.4byte	0xb2
	.4byte	0x25a
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x3
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x3
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x4
	.byte	0x2
	.2byte	0x3b8
	.4byte	0x29c
	.uleb128 0xf
	.string	"r"
	.byte	0x2
	.2byte	0x3b9
	.4byte	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xf
	.string	"g"
	.byte	0x2
	.2byte	0x3ba
	.4byte	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xf
	.string	"b"
	.byte	0x2
	.2byte	0x3bb
	.4byte	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"a"
	.byte	0x2
	.2byte	0x3bc
	.4byte	0x92
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x3bd
	.4byte	0x25a
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x20
	.byte	0x2
	.2byte	0x3c6
	.4byte	0x2c5
	.uleb128 0xf
	.string	"val"
	.byte	0x2
	.2byte	0x3c7
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x3c8
	.4byte	0x2a8
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x40
	.byte	0x2
	.2byte	0x3d6
	.4byte	0x2ee
	.uleb128 0xf
	.string	"val"
	.byte	0x2
	.2byte	0x3d7
	.4byte	0x2ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0xa7
	.4byte	0x2fe
	.uleb128 0x9
	.4byte	0x2c
	.byte	0xf
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x2
	.2byte	0x3d8
	.4byte	0x2d1
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x6
	.byte	0xa
	.4byte	0x3d
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x10
	.byte	0x6
	.byte	0xd
	.4byte	0x35a
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0xe
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0xf
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x10
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x11
	.4byte	0x30a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x6
	.byte	0x12
	.4byte	0x315
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF56
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.4byte	0x1f7
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LLST0
	.4byte	0x428
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x1
	.byte	0x3d
	.4byte	0x223
	.4byte	.LLST1
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0x3d
	.4byte	0xb2
	.4byte	.LLST2
	.uleb128 0x13
	.string	"phi"
	.byte	0x1
	.byte	0x3d
	.4byte	0xb2
	.4byte	.LLST3
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x3d
	.4byte	0xb2
	.4byte	.LLST4
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x1
	.byte	0x3d
	.4byte	0x29c
	.4byte	.LLST5
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x1
	.byte	0x3d
	.4byte	0x29c
	.4byte	.LLST6
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x1
	.byte	0x3d
	.4byte	0x29c
	.4byte	.LLST7
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x3f
	.4byte	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x1
	.byte	0x40
	.4byte	0xb2
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0x1
	.byte	0x40
	.4byte	0xb2
	.4byte	.LLST9
	.uleb128 0x14
	.4byte	.LASF52
	.byte	0x1
	.byte	0x41
	.4byte	0x2fe
	.byte	0x3
	.byte	0x91
	.sleb128 -148
	.byte	0x0
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x2
	.2byte	0x474
	.byte	0x1
	.byte	0x3
	.4byte	0x455
	.uleb128 0x17
	.string	"x"
	.byte	0x2
	.2byte	0x473
	.4byte	0xb2
	.uleb128 0x17
	.string	"y"
	.byte	0x2
	.2byte	0x473
	.4byte	0xb2
	.uleb128 0x17
	.string	"z"
	.byte	0x2
	.2byte	0x473
	.4byte	0xb2
	.byte	0x0
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x2
	.2byte	0x4bf
	.byte	0x1
	.byte	0x3
	.4byte	0x485
	.uleb128 0x17
	.string	"nx"
	.byte	0x2
	.2byte	0x4be
	.4byte	0xb2
	.uleb128 0x17
	.string	"ny"
	.byte	0x2
	.2byte	0x4be
	.4byte	0xb2
	.uleb128 0x17
	.string	"nz"
	.byte	0x2
	.2byte	0x4be
	.4byte	0xb2
	.byte	0x0
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x2
	.2byte	0x50b
	.byte	0x1
	.byte	0x3
	.4byte	0x4a8
	.uleb128 0x17
	.string	"s"
	.byte	0x2
	.2byte	0x50a
	.4byte	0xb2
	.uleb128 0x17
	.string	"t"
	.byte	0x2
	.2byte	0x50a
	.4byte	0xb2
	.byte	0x0
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x470
	.byte	0x3
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST10
	.4byte	0x16e0
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x1
	.byte	0x5c
	.4byte	0x4d
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0x5c
	.4byte	0xbd
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LASF73
	.byte	0x1
	.byte	0x5e
	.4byte	0xb2
	.uleb128 0x1a
	.string	"zt"
	.byte	0x1
	.byte	0x5e
	.4byte	0xb2
	.4byte	.LLST13
	.uleb128 0x15
	.4byte	.LASF16
	.byte	0x1
	.byte	0x5f
	.4byte	0xa7
	.4byte	.LLST14
	.uleb128 0x1a
	.string	"fb"
	.byte	0x1
	.byte	0x60
	.4byte	0xa7
	.4byte	.LLST15
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x1
	.byte	0x61
	.4byte	0xb2
	.4byte	.LLST16
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x1
	.byte	0x62
	.4byte	0xa7
	.4byte	.LLST17
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0x63
	.4byte	0x2c5
	.byte	0x3
	.byte	0x91
	.sleb128 -692
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0x64
	.4byte	0x2c5
	.byte	0x3
	.byte	0x91
	.sleb128 -660
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.byte	0x65
	.4byte	0x2c5
	.byte	0x3
	.byte	0x91
	.sleb128 -628
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x1
	.byte	0x67
	.4byte	0x202
	.byte	0x3
	.byte	0x91
	.sleb128 -596
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x1
	.byte	0x6f
	.4byte	0x202
	.byte	0x3
	.byte	0x91
	.sleb128 -548
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x1
	.byte	0x70
	.4byte	0x202
	.byte	0x3
	.byte	0x91
	.sleb128 -500
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0x70
	.4byte	0x202
	.byte	0x3
	.byte	0x91
	.sleb128 -452
	.uleb128 0x1b
	.string	"mvi"
	.byte	0x1
	.byte	0x70
	.4byte	0x202
	.byte	0x3
	.byte	0x91
	.sleb128 -404
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.byte	0x71
	.4byte	0x239
	.byte	0x3
	.byte	0x91
	.sleb128 -356
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x1
	.byte	0x72
	.4byte	0x3d
	.4byte	.LLST18
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.byte	0x73
	.4byte	0x29c
	.4byte	.LLST19
	.uleb128 0x1b
	.string	"cam"
	.byte	0x1
	.byte	0x74
	.4byte	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -792
	.uleb128 0x1b
	.string	"up"
	.byte	0x1
	.byte	0x75
	.4byte	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -780
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x1
	.byte	0x76
	.4byte	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -768
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x1
	.byte	0x77
	.4byte	0x35a
	.byte	0x3
	.byte	0x91
	.sleb128 -732
	.uleb128 0x1c
	.string	"w"
	.byte	0x1
	.byte	0xc5
	.4byte	0xb2
	.uleb128 0x1c
	.string	"h"
	.byte	0x1
	.byte	0xc6
	.4byte	0xb2
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x1
	.byte	0xca
	.4byte	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0x1a
	.string	"dir"
	.byte	0x1
	.byte	0xcd
	.4byte	0xb2
	.4byte	.LLST20
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0xdd
	.4byte	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -744
	.uleb128 0x19
	.4byte	.LASF75
	.byte	0x1
	.byte	0xe8
	.4byte	0x1f7
	.uleb128 0x14
	.4byte	.LASF76
	.byte	0x1
	.byte	0xe9
	.4byte	0x2fe
	.byte	0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x1e
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x10d
	.4byte	0x16e0
	.byte	0x3
	.byte	0x91
	.sleb128 -716
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB247
	.4byte	.LBE247
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x6ad
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB249
	.4byte	.LBE249
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x6d1
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB251
	.4byte	.LBE251
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x6f5
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB253
	.4byte	.LBE253
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x719
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB255
	.4byte	.LBE255
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x73d
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB257
	.4byte	.LBE257
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x75c
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB259
	.4byte	.LBE259
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x780
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB261
	.4byte	.LBE261
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x7a4
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB263
	.4byte	.LBE263
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x7c8
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB265
	.4byte	.LBE265
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x7ec
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB267
	.4byte	.LBE267
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x80b
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB269
	.4byte	.LBE269
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x82f
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB271
	.4byte	.LBE271
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x853
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB273
	.4byte	.LBE273
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x877
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB275
	.4byte	.LBE275
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x89b
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB277
	.4byte	.LBE277
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x8ba
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB279
	.4byte	.LBE279
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x8de
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB281
	.4byte	.LBE281
	.byte	0x1
	.2byte	0x1df
	.4byte	0x902
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB283
	.4byte	.LBE283
	.byte	0x1
	.2byte	0x1de
	.4byte	0x926
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB285
	.4byte	.LBE285
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x94a
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB287
	.4byte	.LBE287
	.byte	0x1
	.2byte	0x1da
	.4byte	0x969
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB289
	.4byte	.LBE289
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x98d
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB291
	.4byte	.LBE291
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x9b1
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB293
	.4byte	.LBE293
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x9d5
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB295
	.4byte	.LBE295
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x9f9
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB297
	.4byte	.LBE297
	.byte	0x1
	.2byte	0x1d4
	.4byte	0xa18
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB299
	.4byte	.LBE299
	.byte	0x1
	.2byte	0x1d3
	.4byte	0xa3c
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB301
	.4byte	.LBE301
	.byte	0x1
	.2byte	0x1d2
	.4byte	0xa60
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB303
	.4byte	.LBE303
	.byte	0x1
	.2byte	0x1d1
	.4byte	0xa84
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB305
	.4byte	.LBE305
	.byte	0x1
	.2byte	0x1d0
	.4byte	0xaa8
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB307
	.4byte	.LBE307
	.byte	0x1
	.2byte	0x1ce
	.4byte	0xac7
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB309
	.4byte	.LBE309
	.byte	0x1
	.2byte	0x1cd
	.4byte	0xaeb
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB311
	.4byte	.LBE311
	.byte	0x1
	.2byte	0x1cc
	.4byte	0xb0f
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB313
	.4byte	.LBE313
	.byte	0x1
	.2byte	0x1cb
	.4byte	0xb33
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB315
	.4byte	.LBE315
	.byte	0x1
	.2byte	0x1ca
	.4byte	0xb57
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB317
	.4byte	.LBE317
	.byte	0x1
	.2byte	0x1c8
	.4byte	0xb76
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB319
	.4byte	.LBE319
	.byte	0x1
	.2byte	0x1c7
	.4byte	0xb9a
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB321
	.4byte	.LBE321
	.byte	0x1
	.2byte	0x1c6
	.4byte	0xbbe
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB323
	.4byte	.LBE323
	.byte	0x1
	.2byte	0x1c5
	.4byte	0xbe2
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB325
	.4byte	.LBE325
	.byte	0x1
	.2byte	0x1c4
	.4byte	0xc06
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB327
	.4byte	.LBE327
	.byte	0x1
	.2byte	0x1c1
	.4byte	0xc25
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB329
	.4byte	.LBE329
	.byte	0x1
	.2byte	0x1c0
	.4byte	0xc49
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB331
	.4byte	.LBE331
	.byte	0x1
	.2byte	0x1bf
	.4byte	0xc6d
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB333
	.4byte	.LBE333
	.byte	0x1
	.2byte	0x1be
	.4byte	0xc91
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB335
	.4byte	.LBE335
	.byte	0x1
	.2byte	0x1bd
	.4byte	0xcb5
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB337
	.4byte	.LBE337
	.byte	0x1
	.2byte	0x1bb
	.4byte	0xcd4
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB339
	.4byte	.LBE339
	.byte	0x1
	.2byte	0x1ba
	.4byte	0xcf8
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB341
	.4byte	.LBE341
	.byte	0x1
	.2byte	0x1b9
	.4byte	0xd1c
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB343
	.4byte	.LBE343
	.byte	0x1
	.2byte	0x1b8
	.4byte	0xd40
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x21
	.4byte	0x428
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.2byte	0x1b7
	.4byte	0xd60
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB348
	.4byte	.LBE348
	.byte	0x1
	.2byte	0x1b5
	.4byte	0xd7f
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB350
	.4byte	.LBE350
	.byte	0x1
	.2byte	0x1b4
	.4byte	0xda3
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB352
	.4byte	.LBE352
	.byte	0x1
	.2byte	0x1b3
	.4byte	0xdc7
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB354
	.4byte	.LBE354
	.byte	0x1
	.2byte	0x1b2
	.4byte	0xdeb
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB356
	.4byte	.LBE356
	.byte	0x1
	.2byte	0x1b1
	.4byte	0xe0f
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB358
	.4byte	.LBE358
	.byte	0x1
	.2byte	0x1af
	.4byte	0xe2e
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB360
	.4byte	.LBE360
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xe52
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB362
	.4byte	.LBE362
	.byte	0x1
	.2byte	0x1ad
	.4byte	0xe76
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB364
	.4byte	.LBE364
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xe9a
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB366
	.4byte	.LBE366
	.byte	0x1
	.2byte	0x1ab
	.4byte	0xebe
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB368
	.4byte	.LBE368
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xedd
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB370
	.4byte	.LBE370
	.byte	0x1
	.2byte	0x1a7
	.4byte	0xf01
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB372
	.4byte	.LBE372
	.byte	0x1
	.2byte	0x1a6
	.4byte	0xf25
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB374
	.4byte	.LBE374
	.byte	0x1
	.2byte	0x1a5
	.4byte	0xf49
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB376
	.4byte	.LBE376
	.byte	0x1
	.2byte	0x1a4
	.4byte	0xf6d
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB378
	.4byte	.LBE378
	.byte	0x1
	.2byte	0x1a2
	.4byte	0xf8c
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB380
	.4byte	.LBE380
	.byte	0x1
	.2byte	0x1a1
	.4byte	0xfb0
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB382
	.4byte	.LBE382
	.byte	0x1
	.2byte	0x1a0
	.4byte	0xfd4
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB384
	.4byte	.LBE384
	.byte	0x1
	.2byte	0x19f
	.4byte	0xff8
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB386
	.4byte	.LBE386
	.byte	0x1
	.2byte	0x19e
	.4byte	0x101c
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB388
	.4byte	.LBE388
	.byte	0x1
	.2byte	0x19c
	.4byte	0x103b
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB390
	.4byte	.LBE390
	.byte	0x1
	.2byte	0x19b
	.4byte	0x105f
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB392
	.4byte	.LBE392
	.byte	0x1
	.2byte	0x19a
	.4byte	0x1083
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB394
	.4byte	.LBE394
	.byte	0x1
	.2byte	0x199
	.4byte	0x10a7
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB396
	.4byte	.LBE396
	.byte	0x1
	.2byte	0x198
	.4byte	0x10cb
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB398
	.4byte	.LBE398
	.byte	0x1
	.2byte	0x196
	.4byte	0x10ea
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB400
	.4byte	.LBE400
	.byte	0x1
	.2byte	0x195
	.4byte	0x110e
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB402
	.4byte	.LBE402
	.byte	0x1
	.2byte	0x194
	.4byte	0x1132
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB404
	.4byte	.LBE404
	.byte	0x1
	.2byte	0x193
	.4byte	0x1156
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB406
	.4byte	.LBE406
	.byte	0x1
	.2byte	0x192
	.4byte	0x117a
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB408
	.4byte	.LBE408
	.byte	0x1
	.2byte	0x189
	.4byte	0x1199
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB410
	.4byte	.LBE410
	.byte	0x1
	.2byte	0x188
	.4byte	0x11bd
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB412
	.4byte	.LBE412
	.byte	0x1
	.2byte	0x187
	.4byte	0x11e1
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB414
	.4byte	.LBE414
	.byte	0x1
	.2byte	0x186
	.4byte	0x1205
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB416
	.4byte	.LBE416
	.byte	0x1
	.2byte	0x185
	.4byte	0x1229
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB418
	.4byte	.LBE418
	.byte	0x1
	.2byte	0x183
	.4byte	0x1248
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB420
	.4byte	.LBE420
	.byte	0x1
	.2byte	0x182
	.4byte	0x126c
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB422
	.4byte	.LBE422
	.byte	0x1
	.2byte	0x181
	.4byte	0x1290
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB424
	.4byte	.LBE424
	.byte	0x1
	.2byte	0x180
	.4byte	0x12b4
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB426
	.4byte	.LBE426
	.byte	0x1
	.2byte	0x17f
	.4byte	0x12d8
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB428
	.4byte	.LBE428
	.byte	0x1
	.2byte	0x17d
	.4byte	0x12f7
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB430
	.4byte	.LBE430
	.byte	0x1
	.2byte	0x17c
	.4byte	0x131b
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB432
	.4byte	.LBE432
	.byte	0x1
	.2byte	0x17b
	.4byte	0x133f
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB434
	.4byte	.LBE434
	.byte	0x1
	.2byte	0x17a
	.4byte	0x1363
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB436
	.4byte	.LBE436
	.byte	0x1
	.2byte	0x179
	.4byte	0x1387
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB438
	.4byte	.LBE438
	.byte	0x1
	.2byte	0x177
	.4byte	0x13a6
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB440
	.4byte	.LBE440
	.byte	0x1
	.2byte	0x176
	.4byte	0x13ca
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB443
	.4byte	.LBE443
	.byte	0x1
	.2byte	0x174
	.4byte	0x13ee
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB445
	.4byte	.LBE445
	.byte	0x1
	.2byte	0x173
	.4byte	0x1412
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB447
	.4byte	.LBE447
	.byte	0x1
	.2byte	0x170
	.4byte	0x1431
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB449
	.4byte	.LBE449
	.byte	0x1
	.2byte	0x16f
	.4byte	0x1455
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB451
	.4byte	.LBE451
	.byte	0x1
	.2byte	0x16e
	.4byte	0x1479
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB453
	.4byte	.LBE453
	.byte	0x1
	.2byte	0x16d
	.4byte	0x149d
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB455
	.4byte	.LBE455
	.byte	0x1
	.2byte	0x16c
	.4byte	0x14c1
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB457
	.4byte	.LBE457
	.byte	0x1
	.2byte	0x16a
	.4byte	0x14e0
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB459
	.4byte	.LBE459
	.byte	0x1
	.2byte	0x169
	.4byte	0x1504
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB461
	.4byte	.LBE461
	.byte	0x1
	.2byte	0x168
	.4byte	0x1528
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB463
	.4byte	.LBE463
	.byte	0x1
	.2byte	0x167
	.4byte	0x154c
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB465
	.4byte	.LBE465
	.byte	0x1
	.2byte	0x166
	.4byte	0x1570
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x485
	.4byte	.LBB467
	.4byte	.LBE467
	.byte	0x1
	.2byte	0x164
	.4byte	0x158f
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB469
	.4byte	.LBE469
	.byte	0x1
	.2byte	0x163
	.4byte	0x15b3
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB471
	.4byte	.LBE471
	.byte	0x1
	.2byte	0x162
	.4byte	0x15d7
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB473
	.4byte	.LBE473
	.byte	0x1
	.2byte	0x161
	.4byte	0x15fb
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x428
	.4byte	.LBB475
	.4byte	.LBE475
	.byte	0x1
	.2byte	0x160
	.4byte	0x161f
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB478
	.4byte	.LBE478
	.byte	0x1
	.2byte	0x15d
	.4byte	0x1643
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x1f
	.4byte	0x455
	.4byte	.LBB481
	.4byte	.LBE481
	.byte	0x1
	.2byte	0x15b
	.4byte	0x1667
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x21
	.4byte	0x455
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x15c
	.4byte	0x1687
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x21
	.4byte	0x485
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x1
	.2byte	0x15e
	.4byte	0x16a2
	.uleb128 0x20
	.4byte	0x49d
	.uleb128 0x20
	.4byte	0x493
	.byte	0x0
	.uleb128 0x21
	.4byte	0x455
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.2byte	0x175
	.4byte	0x16c2
	.uleb128 0x20
	.4byte	0x479
	.uleb128 0x20
	.4byte	0x46e
	.uleb128 0x20
	.4byte	0x463
	.byte	0x0
	.uleb128 0x22
	.4byte	0x428
	.4byte	.Ldebug_ranges0+0xd0
	.byte	0x1
	.2byte	0x15a
	.uleb128 0x20
	.4byte	0x44a
	.uleb128 0x20
	.4byte	0x440
	.uleb128 0x20
	.4byte	0x436
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0xb2
	.4byte	0x16f6
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x1
	.byte	0x31
	.4byte	0x1707
	.byte	0x5
	.byte	0x3
	.4byte	rmode
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1bb
	.uleb128 0x8
	.4byte	0x3d
	.4byte	0x171d
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0x0
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x1
	.byte	0x32
	.4byte	0x170d
	.byte	0x5
	.byte	0x3
	.4byte	frameBuffer
	.uleb128 0x8
	.4byte	0x29c
	.4byte	0x173e
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF80
	.byte	0x1
	.byte	0x35
	.4byte	0x1749
	.uleb128 0x23
	.4byte	0x172e
	.uleb128 0x8
	.4byte	0x92
	.4byte	0x1759
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x25
	.4byte	.LASF81
	.byte	0x7
	.byte	0x2
	.4byte	0x1766
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0x174e
	.uleb128 0x25
	.4byte	.LASF82
	.byte	0x7
	.byte	0x3
	.4byte	0x1778
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.4byte	0xa7
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x177e
	.4byte	0x365
	.string	"setlight"
	.4byte	0x4b1
	.string	"main"
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB245-.Ltext0
	.4byte	.LBE245-.Ltext0
	.4byte	.LBB514-.Ltext0
	.4byte	.LBE514-.Ltext0
	.4byte	.LBB513-.Ltext0
	.4byte	.LBE513-.Ltext0
	.4byte	.LBB512-.Ltext0
	.4byte	.LBE512-.Ltext0
	.4byte	.LBB511-.Ltext0
	.4byte	.LBE511-.Ltext0
	.4byte	.LBB510-.Ltext0
	.4byte	.LBE510-.Ltext0
	.4byte	.LBB509-.Ltext0
	.4byte	.LBE509-.Ltext0
	.4byte	.LBB508-.Ltext0
	.4byte	.LBE508-.Ltext0
	.4byte	.LBB507-.Ltext0
	.4byte	.LBE507-.Ltext0
	.4byte	.LBB506-.Ltext0
	.4byte	.LBE506-.Ltext0
	.4byte	.LBB505-.Ltext0
	.4byte	.LBE505-.Ltext0
	.4byte	.LBB504-.Ltext0
	.4byte	.LBE504-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB345-.Ltext0
	.4byte	.LBE345-.Ltext0
	.4byte	.LBB246-.Ltext0
	.4byte	.LBE246-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB484-.Ltext0
	.4byte	.LBE484-.Ltext0
	.4byte	.LBB480-.Ltext0
	.4byte	.LBE480-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB487-.Ltext0
	.4byte	.LBE487-.Ltext0
	.4byte	.LBB477-.Ltext0
	.4byte	.LBE477-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB490-.Ltext0
	.4byte	.LBE490-.Ltext0
	.4byte	.LBB442-.Ltext0
	.4byte	.LBE442-.Ltext0
	.4byte	.LBB503-.Ltext0
	.4byte	.LBE503-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB496-.Ltext0
	.4byte	.LBE496-.Ltext0
	.4byte	.LBB483-.Ltext0
	.4byte	.LBE483-.Ltext0
	.4byte	.LBB494-.Ltext0
	.4byte	.LBE494-.Ltext0
	.4byte	.LBB495-.Ltext0
	.4byte	.LBE495-.Ltext0
	.4byte	.LBB502-.Ltext0
	.4byte	.LBE502-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF82:
	.string	"crate_tpl_size"
.LASF11:
	.string	"float"
.LASF43:
	.string	"view"
.LASF46:
	.string	"litcol"
.LASF56:
	.string	"setlight"
.LASF27:
	.string	"_vecf"
.LASF86:
	.string	"GX_End"
.LASF78:
	.string	"rmode"
.LASF4:
	.string	"short int"
.LASF49:
	.string	"lpos"
.LASF68:
	.string	"perspective"
.LASF39:
	.string	"ntextures"
.LASF81:
	.string	"crate_tpl"
.LASF20:
	.string	"viHeight"
.LASF33:
	.string	"GXTexObj"
.LASF48:
	.string	"matcol"
.LASF35:
	.string	"GXLightObj"
.LASF18:
	.string	"viYOrigin"
.LASF25:
	.string	"GXRModeObj"
.LASF80:
	.string	"litcolors"
.LASF29:
	.string	"Mtx44"
.LASF83:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF17:
	.string	"viXOrigin"
.LASF5:
	.string	"long long int"
.LASF19:
	.string	"viWidth"
.LASF64:
	.string	"reflectionlight_tex"
.LASF8:
	.string	"char"
.LASF9:
	.string	"long int"
.LASF84:
	.string	"c:/Utils/devkitPro/examples/gamecube/graphics/gx/neheGX/lesson7/source/lesson7.c"
.LASF37:
	.string	"_tplfile"
.LASF52:
	.string	"lobj"
.LASF41:
	.string	"tpl_file"
.LASF79:
	.string	"frameBuffer"
.LASF69:
	.string	"gpfifo"
.LASF12:
	.string	"long double"
.LASF28:
	.string	"Vector"
.LASF73:
	.string	"yscale"
.LASF1:
	.string	"unsigned char"
.LASF58:
	.string	"argc"
.LASF51:
	.string	"_phi"
.LASF54:
	.string	"GX_Normal3f32"
.LASF22:
	.string	"field_rendering"
.LASF3:
	.string	"signed char"
.LASF77:
	.string	"offset_mtx"
.LASF6:
	.string	"long long unsigned int"
.LASF38:
	.string	"type"
.LASF0:
	.string	"unsigned int"
.LASF60:
	.string	"rquad"
.LASF63:
	.string	"light_tex"
.LASF59:
	.string	"argv"
.LASF16:
	.string	"xfbHeight"
.LASF45:
	.string	"dist"
.LASF23:
	.string	"sample_pattern"
.LASF76:
	.string	"camlightobj"
.LASF2:
	.string	"short unsigned int"
.LASF31:
	.string	"GXColor"
.LASF24:
	.string	"vfilter"
.LASF34:
	.string	"_gx_litobj"
.LASF74:
	.string	"cubeAxis"
.LASF57:
	.string	"main"
.LASF40:
	.string	"texdesc"
.LASF42:
	.string	"TPLFile"
.LASF72:
	.string	"crateTPL"
.LASF32:
	.string	"_gx_texobj"
.LASF36:
	.string	"FHANDLE"
.LASF14:
	.string	"fbWidth"
.LASF26:
	.string	"_gx_rmodeobj"
.LASF7:
	.string	"long unsigned int"
.LASF10:
	.string	"double"
.LASF55:
	.string	"GX_TexCoord2f32"
.LASF53:
	.string	"GX_Position3f32"
.LASF65:
	.string	"nullMtx"
.LASF62:
	.string	"texture"
.LASF44:
	.string	"theta"
.LASF66:
	.string	"model"
.LASF85:
	.string	"c:\\\\Utils\\\\devkitPro\\\\examples\\\\gamecube\\\\graphics\\\\gx\\\\neheGX\\\\lesson7\\\\build"
.LASF21:
	.string	"xfbMode"
.LASF71:
	.string	"look"
.LASF47:
	.string	"ambcol"
.LASF15:
	.string	"efbHeight"
.LASF70:
	.string	"background"
.LASF61:
	.string	"first_frame"
.LASF30:
	.string	"_gx_color"
.LASF50:
	.string	"_theta"
.LASF67:
	.string	"modelview"
.LASF13:
	.string	"viTVMode"
.LASF75:
	.string	"camlightpos"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
