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
	.loc 1 77 0
	mr 3,29
	li 4,1
	bl GX_LoadLightObj
	.loc 1 80 0
	li 3,1
	bl GX_SetNumChans
	.loc 1 81 0
	li 9,2
	li 5,0
	li 6,0
	li 7,1
	li 8,2
	li 3,0
	li 4,1
	bl GX_SetChanCtrl
	.loc 1 82 0
	mr 4,28
	li 3,4
	stw 23,88(1)
	bl GX_SetChanAmbColor
	.loc 1 83 0
	mr 4,28
	li 3,4
	stw 24,88(1)
	bl GX_SetChanMatColor
	.loc 1 85 0
	lwz 0,8(1)
	lwz 9,12(1)
	.loc 1 86 0
	mr 3,27
	.loc 1 85 0
	lwz 11,16(1)
	stw 0,0(27)
	.loc 1 86 0
	lwz 0,172(1)
	.loc 1 85 0
	stw 9,4(27)
	stw 11,8(27)
	.loc 1 86 0
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
	.loc 1 90 0
.LVL12:
	stwu 1,-872(1)
.LCFI14:
	mflr 0
.LCFI15:
	.loc 1 103 0
	li 4,0
.LVL13:
	li 5,48
	.loc 1 90 0
	stw 14,672(1)
.LCFI16:
	.loc 1 103 0
	addi 14,1,212
	mr 3,14
.LVL14:
	.loc 1 90 0
	stw 22,704(1)
.LCFI17:
	stw 28,728(1)
.LCFI18:
	.loc 1 121 0
	lis 28,.LANCHOR1@ha
	.loc 1 90 0
	stw 29,732(1)
.LCFI19:
	.loc 1 121 0
	la 22,.LANCHOR1@l(28)
	.loc 1 90 0
	stfd 16,744(1)
.LCFI20:
	stfd 17,752(1)
.LCFI21:
	stfd 18,760(1)
.LCFI22:
	stfd 19,768(1)
.LCFI23:
	stfd 20,776(1)
.LCFI24:
	stfd 21,784(1)
.LCFI25:
	stfd 22,792(1)
.LCFI26:
	stfd 23,800(1)
.LCFI27:
	stfd 24,808(1)
.LCFI28:
	stfd 25,816(1)
.LCFI29:
	stfd 26,824(1)
.LCFI30:
	stfd 27,832(1)
.LCFI31:
	stfd 28,840(1)
.LCFI32:
	stfd 29,848(1)
.LCFI33:
	stfd 30,856(1)
.LCFI34:
	stfd 31,864(1)
.LCFI35:
	stw 15,676(1)
.LCFI36:
	stw 16,680(1)
.LCFI37:
	stw 17,684(1)
.LCFI38:
	stw 18,688(1)
.LCFI39:
	stw 19,692(1)
.LCFI40:
	stw 20,696(1)
.LCFI41:
	stw 21,700(1)
.LCFI42:
	stw 23,708(1)
.LCFI43:
	stw 24,712(1)
.LCFI44:
	stw 25,716(1)
.LCFI45:
	stw 26,720(1)
.LCFI46:
	stw 27,724(1)
.LCFI47:
	stw 30,736(1)
.LCFI48:
	stw 0,876(1)
.LCFI49:
	stw 31,740(1)
.LCFI50:
	.loc 1 103 0
	bl memset
	.loc 1 107 0
	lis 9,.LANCHOR0@ha
	li 5,48
	la 30,.LANCHOR0@l(9)
	addi 3,1,260
	mr 4,30
	li 31,0
.LVL15:
	bl memcpy
	.loc 1 113 0
	lwz 0,48(30)
	lwz 9,52(30)
	lwz 11,56(30)
	.loc 1 114 0
	lwz 10,60(30)
	lwz 8,64(30)
	lwz 7,68(30)
	.loc 1 115 0
	lwz 6,72(30)
	lwz 5,76(30)
	lwz 4,80(30)
	.loc 1 113 0
	stw 0,16(1)
	stw 9,20(1)
	stw 11,24(1)
	.loc 1 114 0
	stw 10,28(1)
	stw 8,32(1)
	stw 7,36(1)
	.loc 1 115 0
	stw 6,40(1)
	stw 5,44(1)
	stw 4,48(1)
	.loc 1 118 0
	bl VIDEO_Init
	.loc 1 119 0
	bl WPAD_Init
	.loc 1 121 0
	li 3,0
	bl VIDEO_GetPreferredMode
	.loc 1 124 0
	lis 4,0x4
	.loc 1 121 0
	stw 3,.LANCHOR1@l(28)
	.loc 1 124 0
	li 3,32
	bl memalign
	.loc 1 125 0
	li 4,0
	lis 5,0x4
	.loc 1 124 0
	mr 29,3
.LVL16:
	.loc 1 125 0
	bl memset
	.loc 1 128 0
	lwz 3,.LANCHOR1@l(28)
	bl SYS_AllocateFramebuffer
	stw 3,4(22)
	.loc 1 129 0
	lwz 3,.LANCHOR1@l(28)
	bl SYS_AllocateFramebuffer
	stw 3,8(22)
	.loc 1 132 0
	lwz 3,.LANCHOR1@l(28)
	bl VIDEO_Configure
	.loc 1 133 0
	lwz 3,4(22)
	bl VIDEO_SetNextFramebuffer
	.loc 1 134 0
	bl VIDEO_Flush
	.loc 1 135 0
	bl VIDEO_WaitVSync
	.loc 1 136 0
	lwz 9,.LANCHOR1@l(28)
	lwz 0,0(9)
	andi. 9,0,1
	bne- 0,.L43
.L4:
	.loc 1 141 0
	mr 3,29
	lis 4,0x4
	bl GX_Init
	.loc 1 112 0
	li 0,0
	rlwimi 31,0,24,0,7
	.loc 1 144 0
	addi 23,1,640
	.loc 1 112 0
	rlwimi 31,0,16,8,15
	.loc 1 144 0
	lis 4,0xff
	.loc 1 112 0
	rlwimi 31,0,8,16,23
	li 0,-1
	rlwimi 31,0,0,24,31
	.loc 1 144 0
	ori 4,4,65535
	mr 3,23
	stw 31,640(1)
	bl GX_SetCopyClear
	.loc 1 147 0
	lwz 9,.LANCHOR1@l(28)
	lis 10,0x4330
	lis 31,.LC5@ha
.LVL17:
	lhz 0,4(9)
	lis 25,.LC6@ha
	stw 10,648(1)
	stw 0,652(1)
	lhz 11,6(9)
	lis 9,.LC41@ha
	lfd 3,648(1)
	stw 11,652(1)
	lfs 0,.LC5@l(31)
	lfd 4,648(1)
	fsub 3,3,0
	lfs 1,.LC41@l(9)
	fsub 4,4,0
	lfs 6,.LC6@l(25)
	fmr 2,1
	frsp 3,3
	frsp 4,4
	fmr 5,1
	bl GX_SetViewport
	.loc 1 148 0
	lwz 9,.LANCHOR1@l(28)
	lhz 4,8(9)
	lhz 3,6(9)
	bl GX_GetYScaleFactor
	.loc 1 149 0
	bl GX_SetDispCopyYScale
	.loc 1 150 0
	lwz 9,.LANCHOR1@l(28)
	.loc 1 149 0
	mr 29,3
.LVL18:
	.loc 1 150 0
	li 4,0
	lhz 6,6(9)
	li 3,0
	lhz 5,4(9)
	bl GX_SetScissor
	.loc 1 151 0
	lwz 9,.LANCHOR1@l(28)
	li 3,0
	li 4,0
	lhz 6,6(9)
	lhz 5,4(9)
	bl GX_SetDispCopySrc
	.loc 1 152 0
	lwz 9,.LANCHOR1@l(28)
	rlwinm 4,29,0,0xffff
.LVL19:
	lhz 3,4(9)
	bl GX_SetDispCopyDst
.LVL20:
	.loc 1 153 0
	lwz 4,.LANCHOR1@l(28)
	li 5,1
	lbz 3,25(4)
	addi 6,4,50
	addi 4,4,26
	bl GX_SetCopyFilter
	.loc 1 154 0
	lwz 9,.LANCHOR1@l(28)
	lhz 4,8(9)
	lhz 0,16(9)
	slwi 4,4,1
	lbz 3,24(9)
	xor 4,0,4
	cntlzw 4,4
	srwi 4,4,5
	bl GX_SetFieldMode
	.loc 1 156 0
	lwz 9,.LANCHOR1@l(28)
	lbz 0,25(9)
	cmpwi 7,0,0
	beq- 7,.L6
	.loc 1 157 0
	li 3,2
	li 4,0
	bl GX_SetPixelFmt
.L8:
	.loc 1 161 0
	li 3,2
	.loc 1 182 0
	addi 29,1,76
	.loc 1 161 0
	bl GX_SetCullMode
	.loc 1 162 0
	lwz 3,8(22)
	li 4,1
	.loc 1 183 0
	addi 17,1,116
	.loc 1 162 0
	bl GX_CopyDisp
	.loc 1 163 0
	li 3,0
	bl GX_SetDispCopyGamma
	.loc 1 184 0
	addi 16,1,148
	.loc 1 171 0
	bl GX_ClearVtxDesc
	.loc 1 172 0
	li 3,9
	li 4,1
	.loc 1 185 0
	addi 18,1,180
	.loc 1 172 0
	bl GX_SetVtxDesc
	.loc 1 173 0
	li 3,25
	li 4,1
	.loc 1 189 0
	addi 24,1,308
	.loc 1 173 0
	bl GX_SetVtxDesc
	.loc 1 174 0
	li 3,13
	li 4,1
	.loc 1 199 0
	li 26,1
.LVL21:
	.loc 1 174 0
	bl GX_SetVtxDesc
	.loc 1 176 0
	li 3,0
	li 4,9
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 177 0
	li 3,0
	li 4,25
	li 5,2
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 178 0
	li 7,0
	li 6,4
	li 3,0
	li 4,13
	li 5,1
	bl GX_SetVtxAttrFmt
	.loc 1 199 0
	li 19,1
.LVL22:
	.loc 1 180 0
	bl GX_InvVtxCache
	.loc 1 199 0
	li 20,1
.LVL23:
	.loc 1 181 0
	bl GX_InvalidateTexAll
	.loc 1 182 0
	lis 9,crate_tpl_size@ha
	lwz 5,crate_tpl_size@l(9)
	lis 4,crate_tpl@ha
	la 4,crate_tpl@l(4)
	mr 3,29
	bl TPL_OpenTPLFromMemory
	.loc 1 183 0
	li 4,0
	mr 5,17
	mr 3,29
	bl TPL_GetTexture
	.loc 1 184 0
	li 4,1
	mr 5,16
	mr 3,29
	bl TPL_GetTexture
	.loc 1 185 0
	mr 3,29
	li 4,2
	mr 5,18
	bl TPL_GetTexture
	.loc 1 189 0
	addi 4,1,16
	addi 5,1,28
	addi 6,1,40
	mr 3,24
	.loc 1 196 0
	addi 29,1,500
	.loc 1 189 0
	bl guLookAt
	.loc 1 194 0
	lwz 9,.LANCHOR1@l(28)
	.loc 1 196 0
	lis 11,0x4330
	lfs 13,.LC5@l(31)
	lhz 10,16(9)
	mr 3,29
	lhz 0,14(9)
	lis 9,.LC7@ha
	stw 10,660(1)
.LBB245:
.LBB502:
.LBB506:
	.file 2 "c:/Utils/devkitPro/libogc/include/ogc/gx.h"
	.loc 2 1141 0
	lis 31,0xcc00
.LBE506:
.LBE502:
.LBE245:
	.loc 1 196 0
	stw 0,652(1)
.LBB512:
.LBB510:
.LBB505:
	.loc 2 1141 0
	ori 31,31,32768
.LBE505:
.LBE510:
.LBE512:
	.loc 1 196 0
	stw 11,656(1)
	.loc 1 199 0
	li 21,1
.LVL24:
	.loc 1 196 0
	stw 11,648(1)
	lis 11,.LC9@ha
	lfd 2,656(1)
.LBB513:
.LBB498:
.LBB500:
	.loc 2 1293 0
	lis 15,.LC6@ha
.LBE500:
.LBE498:
.LBE513:
	.loc 1 196 0
	lfd 0,648(1)
	fsub 2,2,13
	lfs 1,.LC7@l(9)
	fsub 0,0,13
	lis 9,.LC8@ha
	lfs 3,.LC8@l(9)
.LBB514:
	.loc 1 227 0
	lis 9,.LC41@ha
.LBE514:
	.loc 1 196 0
	frsp 2,2
	lfs 4,.LC9@l(11)
	frsp 0,0
.LBB515:
	.loc 1 227 0
	lfs 31,.LC41@l(9)
.LBE515:
	.loc 1 199 0
	fmr 26,1
.LVL25:
	.loc 1 196 0
	fdivs 2,0,2
	bl guPerspective
	.loc 1 197 0
	mr 3,29
	li 4,0
	bl GX_LoadProjectionMtx
	.loc 1 199 0
	lwz 11,88(30)
.LBB516:
	.loc 1 216 0
	lis 9,.LC12@ha
.LBE516:
	.loc 1 199 0
	lwz 0,84(30)
.LBB517:
	.loc 1 216 0
	lfs 19,.LC12@l(9)
.LBE517:
	.loc 1 199 0
	lis 9,.LC10@ha
	stw 11,56(1)
	lis 11,.LC11@ha
	lfs 25,.LC10@l(9)
.LVL26:
.LBB518:
	.loc 1 229 0
	lis 9,.LC13@ha
.LBE518:
	.loc 1 199 0
	lfs 27,.LC11@l(11)
.LVL27:
.LBB519:
	.loc 1 411 0
	lis 11,.LC14@ha
	.loc 1 229 0
	lfs 24,.LC13@l(9)
	.loc 1 412 0
	lis 9,.LC15@ha
	.loc 1 411 0
	lfs 23,.LC14@l(11)
	.loc 1 412 0
	lis 11,.LC16@ha
	lfs 22,.LC15@l(9)
.LBB497:
.LBB507:
	.loc 2 1141 0
	lis 9,.LC17@ha
.LBE507:
.LBE497:
	.loc 1 412 0
	lfs 21,.LC16@l(11)
.LBB493:
.LBB495:
	.loc 2 1216 0
	lis 11,.LC18@ha
.LBE495:
.LBE493:
.LBB492:
.LBB504:
	.loc 2 1141 0
	lfs 30,.LC17@l(9)
.LBE504:
.LBE492:
	.loc 1 215 0
	fmr 16,19
.LBB491:
.LBB494:
	.loc 2 1216 0
	lfs 29,.LC18@l(11)
.LBE494:
.LBE491:
.LBB487:
.LBB489:
	lis 9,.LC19@ha
.LBE489:
.LBE487:
	.loc 1 603 0
	lis 11,.LC20@ha
	.loc 1 214 0
	fmr 17,19
	.loc 1 213 0
	fmr 18,19
.LBE519:
	.loc 1 199 0
	lwz 10,92(30)
.LBB520:
.LBB511:
.LBB488:
	.loc 2 1216 0
	lfs 28,.LC19@l(9)
.LBE488:
.LBE511:
	.loc 1 603 0
	lfs 20,.LC20@l(11)
.LBE520:
	.loc 1 199 0
	stw 0,52(1)
	stw 10,60(1)
	b .L9
.L48:
.LBB521:
	.loc 1 229 0
	fmr 27,31
.L31:
	.loc 1 235 0
	li 4,30
	li 5,1
	mr 3,14
	.loc 1 245 0
	addi 29,1,564
	.loc 1 235 0
	bl GX_LoadTexMtxImm
	.loc 1 236 0
	li 5,1
	li 4,33
	addi 3,1,260
	bl GX_LoadTexMtxImm
	.loc 1 245 0
	fmr 1,31
	fmr 2,31
	mr 3,29
	fmr 3,31
	.loc 1 292 0
	li 28,0
	.loc 1 322 0
	li 27,3
	.loc 1 245 0
	bl GX_InitLightPos
	.loc 1 246 0
	li 9,0
	li 0,-1
	mr 3,29
	mr 4,23
	stb 9,642(1)
	stb 0,643(1)
	stb 9,640(1)
	stb 9,641(1)
	bl GX_InitLightColor
	.loc 1 247 0
	mr 3,29
	li 4,128
	bl GX_LoadLightObj
	.loc 1 250 0
	li 3,4
	bl GX_SetNumTexGens
	.loc 1 254 0
	li 3,0
	li 4,1
	li 5,4
	li 6,60
	.loc 1 322 0
	li 29,2
.LVL28:
	.loc 1 254 0
	bl GX_SetTexCoordGen
	.loc 1 256 0
	li 3,1
	li 4,1
	li 5,4
	li 6,30
	bl GX_SetTexCoordGen
	.loc 1 258 0
	li 3,2
	li 4,2
	li 5,13
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 261 0
	li 4,9
	li 5,13
	li 6,60
	li 3,3
	bl GX_SetTexCoordGen
	.loc 1 268 0
	li 3,2
	bl GX_SetCopyClamp
	.loc 1 273 0
	li 3,0
	li 4,10
	li 5,15
	li 6,12
	li 7,10
	bl GX_SetTevColorIn
	.loc 1 274 0
	li 7,0
	li 8,2
	li 3,0
	li 4,14
	li 5,0
	li 6,3
	bl GX_SetTevColorOp
	.loc 1 275 0
	li 6,4
	li 3,0
	li 4,255
	li 5,256
	bl GX_SetTevOrder
	.loc 1 279 0
	li 3,0
	li 4,0
	li 5,0
	bl GX_SetIndTexOrder
	.loc 1 280 0
	li 4,0
	li 5,0
	li 3,0
	bl GX_SetIndTexCoordScale
	.loc 1 286 0
	lwz 0,96(30)
	lwz 11,104(30)
	.loc 1 289 0
	li 3,1
	.loc 1 286 0
	lwz 9,100(30)
	lwz 10,108(30)
	lwz 8,112(30)
	lwz 7,116(30)
	stw 0,92(1)
	stw 11,100(1)
	stw 9,96(1)
	stw 10,104(1)
	stw 8,108(1)
	stw 7,112(1)
	.loc 1 289 0
	bl GX_SetNumIndStages
	.loc 1 290 0
	li 3,1
	addi 4,1,92
	li 5,0
	bl GX_SetIndTexMatrix
	.loc 1 292 0
	li 9,0
	li 10,0
	li 8,0
	li 5,0
	li 6,7
	li 7,1
	li 3,1
	li 4,0
	stw 28,8(1)
	stw 28,12(1)
	bl GX_SetTevIndirect
	.loc 1 311 0
	li 3,1
	li 4,7
	bl GX_SetTevKColorSel
	.loc 1 312 0
	li 3,1
	li 4,15
	li 5,8
	li 6,4
	li 7,14
	bl GX_SetTevColorIn
	.loc 1 313 0
	li 3,1
	li 4,0
	li 5,0
	li 6,0
	li 7,1
	li 8,0
	bl GX_SetTevColorOp
	.loc 1 314 0
	li 3,1
	li 4,2
	li 5,2
	li 6,255
	bl GX_SetTevOrder
	.loc 1 322 0
	cmpwi 7,20,0
	bne- 7,.L44
.L36:
	.loc 1 348 0
	li 0,0
	li 9,0
	li 10,0
	li 8,0
	li 5,0
	li 6,7
	li 7,1
	mr 3,29
	li 4,0
	stw 0,12(1)
	stw 0,8(1)
	bl GX_SetTevIndirect
	.loc 1 360 0
	mr 3,29
	li 4,7
	bl GX_SetTevKColorSel
	.loc 1 361 0
	mr 3,29
	li 4,15
	li 5,14
	li 6,8
	li 7,0
	bl GX_SetTevColorIn
	.loc 1 362 0
	li 7,1
	li 8,0
	mr 3,29
	li 4,0
	li 5,0
	li 6,3
	.loc 1 414 0
	addi 28,1,404
	.loc 1 362 0
	bl GX_SetTevColorOp
	.loc 1 363 0
	li 6,255
	li 5,2
	mr 3,29
	li 4,3
	.loc 1 410 0
	addi 29,1,356
.LVL29:
	.loc 1 363 0
	bl GX_SetTevOrder
.LVL30:
	.loc 1 367 0
	mr 3,27
	bl GX_SetNumTevStages
	.loc 1 371 0
	mr 3,17
	li 4,0
	.loc 1 420 0
	addi 27,1,452
	.loc 1 371 0
	bl GX_LoadTexObj
	.loc 1 372 0
	mr 3,16
	li 4,1
	bl GX_LoadTexObj
	.loc 1 373 0
	li 4,2
	mr 3,18
	bl GX_LoadTexObj
	.loc 1 410 0
	mr 3,29
	bl ps_guMtxIdentity
	.loc 1 411 0
	fmuls 1,26,23
	mr 3,29
	addi 4,1,52
	bl ps_guMtxRotAxisRad
	.loc 1 412 0
	fmr 1,22
	fmr 2,31
	mr 3,29
	fmr 3,21
	mr 4,29
	bl ps_guMtxTransApply
	.loc 1 414 0
	mr 5,28
	mr 4,29
	mr 3,24
	bl ps_guMtxConcat
	.loc 1 418 0
	mr 3,28
	li 4,0
	.loc 1 590 0
	slwi 29,26,2
	.loc 1 418 0
	bl GX_LoadPosMtxImm
	.loc 1 420 0
	mr 4,27
	mr 3,28
	.loc 1 590 0
	add 29,29,22
	.loc 1 420 0
	bl ps_guMtxInverse
	.loc 1 421 0
	mr 3,27
	mr 4,28
	bl ps_guMtxTranspose
	.loc 1 422 0
	li 4,0
	mr 3,28
	bl GX_LoadNrmMtxImm
	.loc 1 423 0
	li 3,0
	bl GX_SetCurrentMtx
	.loc 1 427 0
	li 4,0
	li 5,24
	li 3,128
	bl GX_Begin
.LBB484:
.LBB485:
	.loc 2 1293 0
	lfs 0,.LC6@l(25)
.LBE485:
.LBE484:
.LBB483:
.LBB508:
	.loc 2 1141 0
	stfs 30,0(31)
.LBE508:
.LBE483:
	.loc 1 586 0
	li 3,1
.LBB482:
.LBB503:
	.loc 2 1142 0
	stfs 30,0(31)
.LBE503:
.LBE482:
.LBB481:
.LBB499:
	.loc 2 1293 0
	mr 25,15
.LBE499:
.LBE481:
.LBB480:
.LBB509:
	.loc 2 1143 0
	stfs 30,0(31)
.LBE509:
.LBE480:
.LBB478:
.LBB479:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 30,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE479:
.LBE478:
.LBB477:
.LBB496:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE496:
.LBE477:
.LBB475:
.LBB476:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE476:
.LBE475:
.LBB474:
.LBB486:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE486:
.LBE474:
.LBB472:
.LBB473:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE473:
.LBE472:
.LBB470:
.LBB471:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 30,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE471:
.LBE470:
.LBB468:
.LBB469:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE469:
.LBE468:
.LBB466:
.LBB467:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE467:
.LBE466:
.LBB464:
.LBB465:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE465:
.LBE464:
.LBB462:
.LBB463:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE463:
.LBE462:
.LBB460:
.LBB461:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 30,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE461:
.LBE460:
.LBB458:
.LBB459:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE459:
.LBE458:
.LBB456:
.LBB457:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE457:
.LBE456:
.LBB454:
.LBB455:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE455:
.LBE454:
.LBB452:
.LBB453:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE453:
.LBE452:
.LBB450:
.LBB451:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 30,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE451:
.LBE450:
.LBB448:
.LBB449:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE449:
.LBE448:
.LBB446:
.LBB447:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE447:
.LBE446:
.LBB444:
.LBB445:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE445:
.LBE444:
.LBB442:
.LBB443:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE443:
.LBE442:
.LBB440:
.LBB441:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 0,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE441:
.LBE440:
.LBB439:
.LBB490:
	.loc 2 1216 0
	stfs 28,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE490:
.LBE439:
.LBB437:
.LBB438:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE438:
.LBE437:
.LBB435:
.LBB436:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE436:
.LBE435:
.LBB433:
.LBB434:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE434:
.LBE433:
.LBB431:
.LBB432:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 0,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE432:
.LBE431:
.LBB429:
.LBB430:
	.loc 2 1216 0
	stfs 28,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE430:
.LBE429:
.LBB427:
.LBB428:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE428:
.LBE427:
.LBB425:
.LBB426:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE426:
.LBE425:
.LBB423:
.LBB424:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE424:
.LBE423:
.LBB421:
.LBB422:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 0,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE422:
.LBE421:
.LBB419:
.LBB420:
	.loc 2 1216 0
	stfs 28,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE420:
.LBE419:
.LBB417:
.LBB418:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE418:
.LBE417:
.LBB415:
.LBB416:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE416:
.LBE415:
.LBB413:
.LBB414:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE414:
.LBE413:
.LBB411:
.LBB412:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 0,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE412:
.LBE411:
.LBB409:
.LBB410:
	.loc 2 1216 0
	stfs 28,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE410:
.LBE409:
.LBB407:
.LBB408:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE408:
.LBE407:
.LBB405:
.LBB406:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE406:
.LBE405:
.LBB403:
.LBB404:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE404:
.LBE403:
.LBB401:
.LBB402:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 0,0(31)
.LBE402:
.LBE401:
.LBB399:
.LBB400:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE400:
.LBE399:
.LBB397:
.LBB398:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE398:
.LBE397:
.LBB395:
.LBB396:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE396:
.LBE395:
.LBB393:
.LBB394:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE394:
.LBE393:
.LBB391:
.LBB392:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 0,0(31)
.LBE392:
.LBE391:
.LBB389:
.LBB390:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE390:
.LBE389:
.LBB387:
.LBB388:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE388:
.LBE387:
.LBB385:
.LBB386:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE386:
.LBE385:
.LBB383:
.LBB384:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE384:
.LBE383:
.LBB381:
.LBB382:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 0,0(31)
.LBE382:
.LBE381:
.LBB379:
.LBB380:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE380:
.LBE379:
.LBB377:
.LBB378:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE378:
.LBE377:
.LBB375:
.LBB376:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE376:
.LBE375:
.LBB373:
.LBB374:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE374:
.LBE373:
.LBB371:
.LBB372:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 0,0(31)
.LBE372:
.LBE371:
.LBB369:
.LBB370:
	.loc 2 1216 0
	stfs 29,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE370:
.LBE369:
.LBB367:
.LBB368:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE368:
.LBE367:
.LBB365:
.LBB366:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE366:
.LBE365:
.LBB363:
.LBB364:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE364:
.LBE363:
.LBB361:
.LBB362:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 30,0(31)
.LBE362:
.LBE361:
.LBB359:
.LBB360:
	.loc 2 1216 0
	stfs 28,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE360:
.LBE359:
.LBB357:
.LBB358:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE358:
.LBE357:
.LBB355:
.LBB356:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE356:
.LBE355:
.LBB353:
.LBB354:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE354:
.LBE353:
.LBB351:
.LBB352:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 30,0(31)
.LBE352:
.LBE351:
.LBB349:
.LBB350:
	.loc 2 1216 0
	stfs 28,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE350:
.LBE349:
.LBB347:
.LBB348:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE348:
.LBE347:
.LBB345:
.LBB346:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE346:
.LBE345:
.LBB343:
.LBB344:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE344:
.LBE343:
.LBB341:
.LBB342:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 30,0(31)
.LBE342:
.LBE341:
.LBB339:
.LBB340:
	.loc 2 1216 0
	stfs 28,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE340:
.LBE339:
.LBB337:
.LBB338:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE338:
.LBE337:
.LBB335:
.LBB336:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE336:
.LBE335:
.LBB333:
.LBB334:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE334:
.LBE333:
.LBB331:
.LBB332:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 30,0(31)
.LBE332:
.LBE331:
.LBB329:
.LBB330:
	.loc 2 1216 0
	stfs 28,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE330:
.LBE329:
.LBB327:
.LBB328:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE328:
.LBE327:
.LBB325:
.LBB326:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE326:
.LBE325:
.LBB323:
.LBB324:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE324:
.LBE323:
.LBB321:
.LBB322:
	.loc 2 1216 0
	stfs 30,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE322:
.LBE321:
.LBB319:
.LBB320:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE320:
.LBE319:
.LBB317:
.LBB318:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE318:
.LBE317:
.LBB316:
.LBB501:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE501:
.LBE316:
.LBB314:
.LBB315:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE315:
.LBE314:
.LBB312:
.LBB313:
	.loc 2 1216 0
	stfs 30,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE313:
.LBE312:
.LBB310:
.LBB311:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE311:
.LBE310:
.LBB308:
.LBB309:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE309:
.LBE308:
.LBB306:
.LBB307:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE307:
.LBE306:
.LBB304:
.LBB305:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE305:
.LBE304:
.LBB302:
.LBB303:
	.loc 2 1216 0
	stfs 30,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE303:
.LBE302:
.LBB300:
.LBB301:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE301:
.LBE300:
.LBB298:
.LBB299:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE299:
.LBE298:
.LBB296:
.LBB297:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE297:
.LBE296:
.LBB294:
.LBB295:
	.loc 2 1141 0
	stfs 30,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE295:
.LBE294:
.LBB292:
.LBB293:
	.loc 2 1216 0
	stfs 30,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE293:
.LBE292:
.LBB290:
.LBB291:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 29,0(31)
.LBE291:
.LBE290:
.LBB288:
.LBB289:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE289:
.LBE288:
.LBB286:
.LBB287:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE287:
.LBE286:
.LBB284:
.LBB285:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE285:
.LBE284:
.LBB282:
.LBB283:
	.loc 2 1216 0
	stfs 0,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE283:
.LBE282:
.LBB280:
.LBB281:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 28,0(31)
.LBE281:
.LBE280:
.LBB278:
.LBB279:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE279:
.LBE278:
.LBB276:
.LBB277:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE277:
.LBE276:
.LBB274:
.LBB275:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 0,0(31)
.LBE275:
.LBE274:
.LBB272:
.LBB273:
	.loc 2 1216 0
	stfs 0,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE273:
.LBE272:
.LBB270:
.LBB271:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 28,0(31)
.LBE271:
.LBE270:
.LBB268:
.LBB269:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE269:
.LBE268:
.LBB266:
.LBB267:
	.loc 2 1292 0
	stfs 31,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE267:
.LBE266:
.LBB264:
.LBB265:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 0,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE265:
.LBE264:
.LBB262:
.LBB263:
	.loc 2 1216 0
	stfs 0,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE263:
.LBE262:
.LBB260:
.LBB261:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 28,0(31)
.LBE261:
.LBE260:
.LBB258:
.LBB259:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE259:
.LBE258:
.LBB256:
.LBB257:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 31,0(31)
.LBE257:
.LBE256:
.LBB254:
.LBB255:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 30,0(31)
	.loc 2 1143 0
	stfs 30,0(31)
.LBE255:
.LBE254:
.LBB252:
.LBB253:
	.loc 2 1216 0
	stfs 0,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE253:
.LBE252:
.LBB250:
.LBB251:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 31,0(31)
	.loc 2 1218 0
	stfs 28,0(31)
.LBE251:
.LBE250:
.LBB248:
.LBB249:
	.loc 2 1216 0
	stfs 31,0(31)
	.loc 2 1217 0
	stfs 29,0(31)
	.loc 2 1218 0
	stfs 31,0(31)
.LBE249:
.LBE248:
.LBB246:
.LBB247:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 0,0(31)
.LBE247:
.LBE246:
	.loc 1 586 0
	bl GX_SetAlphaUpdate
	.loc 1 588 0
	li 5,1
	li 4,3
	li 3,1
	bl GX_SetZMode
	.loc 1 589 0
	li 3,1
	bl GX_SetColorUpdate
	.loc 1 590 0
	lwz 3,4(29)
	li 4,1
	bl GX_CopyDisp
	.loc 1 592 0
	bl GX_DrawDone
	.loc 1 594 0
	lwz 3,4(29)
	bl VIDEO_SetNextFramebuffer
	.loc 1 595 0
	cmpwi 7,19,0
	bne- 7,.L45
.L37:
	.loc 1 599 0
	bl VIDEO_Flush
	.loc 1 600 0
	cmpwi 7,21,0
	bne- 7,.L46
.L39:
	.loc 1 603 0
	fsubs 26,26,20
	.loc 1 601 0
	xori 26,26,1
	.loc 1 603 0
	li 19,0
.L9:
	.loc 1 211 0
	bl WPAD_ScanPads
	.loc 1 212 0
	li 3,0
	bl WPAD_ButtonsDown
	andi. 0,3,128
	bne- 0,.L47
	.loc 1 213 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,256
	beq- 0,.L12
	fsubs 25,25,18
.L14:
	.loc 1 224 0
	li 3,1
	bl GX_SetNumChans
	.loc 1 227 0
	fmr 1,27
	fmr 2,31
	li 0,-1
	fmr 3,25
	li 9,0
	addi 3,1,64
	mr 4,24
	mr 5,23
	addi 6,1,664
	addi 7,1,668
	stb 0,640(1)
	stb 0,641(1)
	stb 0,642(1)
	stb 0,643(1)
	stb 9,666(1)
	stb 9,664(1)
	stb 9,665(1)
	stb 0,667(1)
	stb 0,671(1)
	stb 0,668(1)
	stb 0,669(1)
	stb 0,670(1)
	bl setlight
	.loc 1 229 0
	fcmpu 7,27,24
	cror 30,29,30
	beq- 7,.L48
	.loc 1 230 0
	fcmpu 7,27,31
	cror 30,28,30
	bne+ 7,.L31
	fmr 27,24
	b .L31
.L12:
	.loc 1 214 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,512
	beq- 0,.L15
	fadds 25,25,17
	b .L14
.L46:
	.loc 1 600 0
	bl VIDEO_WaitVSync
	b .L39
.L45:
	.loc 1 597 0
	li 3,0
	bl VIDEO_SetBlack
	b .L37
.LVL31:
.L44:
	.loc 1 323 0
	li 9,0
	li 10,1
	li 8,0
	li 3,2
	li 4,0
	li 5,0
	li 6,7
	li 7,1
	stw 28,12(1)
	.loc 1 342 0
	li 29,3
	.loc 1 323 0
	stw 28,8(1)
	bl GX_SetTevIndirect
	.loc 1 340 0
	li 3,2
	li 4,15
	li 5,8
	li 6,4
	li 7,0
	.loc 1 342 0
	li 27,4
	.loc 1 340 0
	bl GX_SetTevColorIn
	.loc 1 341 0
	li 3,2
	li 4,0
	li 5,0
	li 6,0
	li 7,1
	li 8,0
	bl GX_SetTevColorOp
	.loc 1 342 0
	li 3,2
	li 4,3
	li 5,1
	li 6,255
	bl GX_SetTevOrder
	b .L36
.LVL32:
.L47:
	.loc 1 212 0
	li 3,0
	bl exit
.L15:
	.loc 1 215 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,2048
	beq- 0,.L17
	fsubs 27,27,16
	b .L14
.LVL33:
.L6:
.LBE521:
	.loc 1 159 0
	li 3,0
	li 4,0
	bl GX_SetPixelFmt
	b .L8
.LVL34:
.L43:
	.loc 1 136 0
	bl VIDEO_WaitVSync
	b .L4
.LVL35:
.L17:
.LBB522:
	.loc 1 216 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,1024
	beq- 0,.L19
	fadds 27,27,19
	b .L14
.L19:
	.loc 1 217 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,8
	beq- 0,.L21
	li 20,0
	b .L14
.L21:
	.loc 1 218 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,4
	beq- 0,.L23
	li 20,1
	b .L14
.L23:
	.loc 1 219 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,4096
	beq- 0,.L25
	xori 20,20,1
	b .L14
.L25:
	.loc 1 220 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,16
	beq- 0,.L14
	xori 21,21,1
	b .L14
.LBE522:
.LFE64:
	.size	main, .-main
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	C.0.7656, @object
	.size	C.0.7656, 48
C.0.7656:
	.long	1056964608
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1056964608
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1056964608
	.long	0
	.type	C.1.7657, @object
	.size	C.1.7657, 12
C.1.7657:
	.zero	12
	.type	C.2.7658, @object
	.size	C.2.7658, 12
C.2.7658:
	.long	0
	.long	1065353216
	.long	0
	.type	C.3.7659, @object
	.size	C.3.7659, 12
C.3.7659:
	.long	0
	.long	0
	.long	-1082130432
	.type	C.7.7693, @object
	.size	C.7.7693, 12
C.7.7693:
	.long	1065353216
	.long	1065353216
	.long	0
	.type	C.8.7712, @object
	.size	C.8.7712, 24
C.8.7712:
	.long	0
	.long	-1107296256
	.long	0
	.long	0
	.long	0
	.long	-1107296256
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
	.4byte	1090519040
.LC11:
	.4byte	1123024896
.LC12:
	.4byte	1048576000
.LC13:
	.4byte	1135869952
.LC14:
	.4byte	1016003125
.LC15:
	.4byte	-1073741824
.LC16:
	.4byte	-1065353216
.LC17:
	.4byte	-1082130432
.LC18:
	.4byte	1040187392
.LC19:
	.4byte	-1107296256
.LC20:
	.4byte	1041865114
.LC41:
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
	.uleb128 0x368
	.byte	0x4
	.4byte	.LCFI16-.LCFI14
	.byte	0x8e
	.uleb128 0x32
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI18-.LCFI16
	.byte	0x9c
	.uleb128 0x24
	.byte	0x96
	.uleb128 0x2a
	.byte	0x4
	.4byte	.LCFI50-.LCFI18
	.byte	0x9f
	.uleb128 0x21
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9e
	.uleb128 0x22
	.byte	0x9b
	.uleb128 0x25
	.byte	0x9a
	.uleb128 0x26
	.byte	0x99
	.uleb128 0x27
	.byte	0x98
	.uleb128 0x28
	.byte	0x97
	.uleb128 0x29
	.byte	0x95
	.uleb128 0x2b
	.byte	0x94
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x2d
	.byte	0x92
	.uleb128 0x2e
	.byte	0x91
	.uleb128 0x2f
	.byte	0x90
	.uleb128 0x30
	.byte	0x8f
	.uleb128 0x31
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
	.byte	0xb1
	.uleb128 0x1e
	.byte	0xb0
	.uleb128 0x20
	.byte	0x9d
	.uleb128 0x23
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
	.sleb128 872
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
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
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
	.byte	0x6a
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL25-.Ltext0
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
.LLST17:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x6d
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
	.4byte	.LVL27-.Ltext0
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
.LLST21:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:/Utils/devkitPro/libogc/include/gctypes.h"
	.file 4 "c:/Utils/devkitPro/libogc/include/ogc/gx_struct.h"
	.file 5 "c:/Utils/devkitPro/libogc/include/ogc/gu.h"
	.file 6 "c:/Utils/devkitPro/libogc/include/ogc/tpl.h"
	.file 7 "c:/Utils/devkitPro/examples/gamecube/graphics/gx/neheGX/lesson7/build/crate_tpl.h"
	.section	.debug_info
	.4byte	0x17b7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x1
	.4byte	.LASF88
	.4byte	.LASF89
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
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x470
	.byte	0x3
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST10
	.4byte	0x171d
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x1
	.byte	0x59
	.4byte	0x4d
	.4byte	.LLST11
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0x1
	.byte	0x59
	.4byte	0xbd
	.4byte	.LLST12
	.uleb128 0x19
	.4byte	.LASF74
	.byte	0x1
	.byte	0x5b
	.4byte	0xb2
	.uleb128 0x1a
	.string	"zt"
	.byte	0x1
	.byte	0x5b
	.4byte	0xb2
	.4byte	.LLST13
	.uleb128 0x15
	.4byte	.LASF16
	.byte	0x1
	.byte	0x5c
	.4byte	0xa7
	.4byte	.LLST14
	.uleb128 0x1a
	.string	"fb"
	.byte	0x1
	.byte	0x5d
	.4byte	0xa7
	.4byte	.LLST15
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x1
	.byte	0x5e
	.4byte	0xb2
	.4byte	.LLST16
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x1
	.byte	0x5f
	.4byte	0xa7
	.4byte	.LLST17
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0x60
	.4byte	0x2c5
	.byte	0x3
	.byte	0x91
	.sleb128 -756
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0x61
	.4byte	0x2c5
	.byte	0x3
	.byte	0x91
	.sleb128 -724
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.byte	0x62
	.4byte	0x2c5
	.byte	0x3
	.byte	0x91
	.sleb128 -692
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x1
	.byte	0x64
	.4byte	0x202
	.byte	0x3
	.byte	0x91
	.sleb128 -660
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x1
	.byte	0x68
	.4byte	0x202
	.byte	0x3
	.byte	0x91
	.sleb128 -612
	.uleb128 0x14
	.4byte	.LASF43
	.byte	0x1
	.byte	0x6c
	.4byte	0x202
	.byte	0x3
	.byte	0x91
	.sleb128 -564
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0x6d
	.4byte	0x202
	.byte	0x3
	.byte	0x91
	.sleb128 -516
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.byte	0x6d
	.4byte	0x202
	.byte	0x3
	.byte	0x91
	.sleb128 -468
	.uleb128 0x1b
	.string	"mvi"
	.byte	0x1
	.byte	0x6d
	.4byte	0x202
	.byte	0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.byte	0x6e
	.4byte	0x239
	.byte	0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x1
	.byte	0x6f
	.4byte	0x3d
	.4byte	.LLST18
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x1
	.byte	0x70
	.4byte	0x29c
	.4byte	.LLST19
	.uleb128 0x1b
	.string	"cam"
	.byte	0x1
	.byte	0x71
	.4byte	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x1b
	.string	"up"
	.byte	0x1
	.byte	0x72
	.4byte	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -844
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x1
	.byte	0x73
	.4byte	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -832
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x1
	.byte	0x74
	.4byte	0x35a
	.byte	0x3
	.byte	0x91
	.sleb128 -796
	.uleb128 0x1c
	.string	"w"
	.byte	0x1
	.byte	0xc2
	.4byte	0xb2
	.uleb128 0x1c
	.string	"h"
	.byte	0x1
	.byte	0xc3
	.4byte	0xb2
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x1
	.byte	0xc7
	.4byte	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -820
	.uleb128 0x1a
	.string	"dir"
	.byte	0x1
	.byte	0xca
	.4byte	0xb2
	.4byte	.LLST20
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.byte	0xcd
	.4byte	0x92
	.4byte	.LLST21
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x1
	.byte	0xce
	.4byte	0x92
	.4byte	.LLST22
	.uleb128 0x19
	.4byte	.LASF78
	.byte	0x1
	.byte	0xd0
	.4byte	0xb2
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0xe3
	.4byte	0x1f7
	.byte	0x3
	.byte	0x91
	.sleb128 -808
	.uleb128 0x14
	.4byte	.LASF79
	.byte	0x1
	.byte	0xf4
	.4byte	0x2fe
	.byte	0x3
	.byte	0x91
	.sleb128 -308
	.uleb128 0x1e
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x10d
	.4byte	0x92
	.4byte	.LLST23
	.uleb128 0x1f
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x11b
	.4byte	0x171d
	.byte	0x3
	.byte	0x91
	.sleb128 -780
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB246
	.4byte	.LBE246
	.byte	0x1
	.2byte	0x247
	.4byte	0x6ea
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB248
	.4byte	.LBE248
	.byte	0x1
	.2byte	0x246
	.4byte	0x70e
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB250
	.4byte	.LBE250
	.byte	0x1
	.2byte	0x245
	.4byte	0x732
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB252
	.4byte	.LBE252
	.byte	0x1
	.2byte	0x244
	.4byte	0x756
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB254
	.4byte	.LBE254
	.byte	0x1
	.2byte	0x243
	.4byte	0x77a
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB256
	.4byte	.LBE256
	.byte	0x1
	.2byte	0x241
	.4byte	0x799
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB258
	.4byte	.LBE258
	.byte	0x1
	.2byte	0x240
	.4byte	0x7bd
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB260
	.4byte	.LBE260
	.byte	0x1
	.2byte	0x23f
	.4byte	0x7e1
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB262
	.4byte	.LBE262
	.byte	0x1
	.2byte	0x23e
	.4byte	0x805
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB264
	.4byte	.LBE264
	.byte	0x1
	.2byte	0x23d
	.4byte	0x829
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB266
	.4byte	.LBE266
	.byte	0x1
	.2byte	0x23b
	.4byte	0x848
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB268
	.4byte	.LBE268
	.byte	0x1
	.2byte	0x23a
	.4byte	0x86c
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB270
	.4byte	.LBE270
	.byte	0x1
	.2byte	0x239
	.4byte	0x890
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB272
	.4byte	.LBE272
	.byte	0x1
	.2byte	0x238
	.4byte	0x8b4
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB274
	.4byte	.LBE274
	.byte	0x1
	.2byte	0x237
	.4byte	0x8d8
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB276
	.4byte	.LBE276
	.byte	0x1
	.2byte	0x235
	.4byte	0x8f7
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB278
	.4byte	.LBE278
	.byte	0x1
	.2byte	0x234
	.4byte	0x91b
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB280
	.4byte	.LBE280
	.byte	0x1
	.2byte	0x233
	.4byte	0x93f
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB282
	.4byte	.LBE282
	.byte	0x1
	.2byte	0x232
	.4byte	0x963
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB284
	.4byte	.LBE284
	.byte	0x1
	.2byte	0x231
	.4byte	0x987
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB286
	.4byte	.LBE286
	.byte	0x1
	.2byte	0x22e
	.4byte	0x9a6
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB288
	.4byte	.LBE288
	.byte	0x1
	.2byte	0x22d
	.4byte	0x9ca
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB290
	.4byte	.LBE290
	.byte	0x1
	.2byte	0x22c
	.4byte	0x9ee
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB292
	.4byte	.LBE292
	.byte	0x1
	.2byte	0x22b
	.4byte	0xa12
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB294
	.4byte	.LBE294
	.byte	0x1
	.2byte	0x22a
	.4byte	0xa36
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB296
	.4byte	.LBE296
	.byte	0x1
	.2byte	0x228
	.4byte	0xa55
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB298
	.4byte	.LBE298
	.byte	0x1
	.2byte	0x227
	.4byte	0xa79
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB300
	.4byte	.LBE300
	.byte	0x1
	.2byte	0x226
	.4byte	0xa9d
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB302
	.4byte	.LBE302
	.byte	0x1
	.2byte	0x225
	.4byte	0xac1
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB304
	.4byte	.LBE304
	.byte	0x1
	.2byte	0x224
	.4byte	0xae5
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB306
	.4byte	.LBE306
	.byte	0x1
	.2byte	0x222
	.4byte	0xb04
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB308
	.4byte	.LBE308
	.byte	0x1
	.2byte	0x221
	.4byte	0xb28
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB310
	.4byte	.LBE310
	.byte	0x1
	.2byte	0x220
	.4byte	0xb4c
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB312
	.4byte	.LBE312
	.byte	0x1
	.2byte	0x21f
	.4byte	0xb70
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB314
	.4byte	.LBE314
	.byte	0x1
	.2byte	0x21e
	.4byte	0xb94
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB317
	.4byte	.LBE317
	.byte	0x1
	.2byte	0x21b
	.4byte	0xbb8
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB319
	.4byte	.LBE319
	.byte	0x1
	.2byte	0x21a
	.4byte	0xbdc
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB321
	.4byte	.LBE321
	.byte	0x1
	.2byte	0x219
	.4byte	0xc00
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB323
	.4byte	.LBE323
	.byte	0x1
	.2byte	0x218
	.4byte	0xc24
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB325
	.4byte	.LBE325
	.byte	0x1
	.2byte	0x215
	.4byte	0xc43
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB327
	.4byte	.LBE327
	.byte	0x1
	.2byte	0x214
	.4byte	0xc67
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB329
	.4byte	.LBE329
	.byte	0x1
	.2byte	0x213
	.4byte	0xc8b
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB331
	.4byte	.LBE331
	.byte	0x1
	.2byte	0x212
	.4byte	0xcaf
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB333
	.4byte	.LBE333
	.byte	0x1
	.2byte	0x211
	.4byte	0xcd3
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB335
	.4byte	.LBE335
	.byte	0x1
	.2byte	0x20f
	.4byte	0xcf2
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB337
	.4byte	.LBE337
	.byte	0x1
	.2byte	0x20e
	.4byte	0xd16
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB339
	.4byte	.LBE339
	.byte	0x1
	.2byte	0x20d
	.4byte	0xd3a
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB341
	.4byte	.LBE341
	.byte	0x1
	.2byte	0x20c
	.4byte	0xd5e
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB343
	.4byte	.LBE343
	.byte	0x1
	.2byte	0x20b
	.4byte	0xd82
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB345
	.4byte	.LBE345
	.byte	0x1
	.2byte	0x209
	.4byte	0xda1
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB347
	.4byte	.LBE347
	.byte	0x1
	.2byte	0x208
	.4byte	0xdc5
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB349
	.4byte	.LBE349
	.byte	0x1
	.2byte	0x207
	.4byte	0xde9
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB351
	.4byte	.LBE351
	.byte	0x1
	.2byte	0x206
	.4byte	0xe0d
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB353
	.4byte	.LBE353
	.byte	0x1
	.2byte	0x205
	.4byte	0xe31
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB355
	.4byte	.LBE355
	.byte	0x1
	.2byte	0x203
	.4byte	0xe50
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB357
	.4byte	.LBE357
	.byte	0x1
	.2byte	0x202
	.4byte	0xe74
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB359
	.4byte	.LBE359
	.byte	0x1
	.2byte	0x201
	.4byte	0xe98
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB361
	.4byte	.LBE361
	.byte	0x1
	.2byte	0x200
	.4byte	0xebc
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB363
	.4byte	.LBE363
	.byte	0x1
	.2byte	0x1ff
	.4byte	0xee0
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB365
	.4byte	.LBE365
	.byte	0x1
	.2byte	0x1fc
	.4byte	0xeff
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB367
	.4byte	.LBE367
	.byte	0x1
	.2byte	0x1fb
	.4byte	0xf23
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB369
	.4byte	.LBE369
	.byte	0x1
	.2byte	0x1fa
	.4byte	0xf47
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB371
	.4byte	.LBE371
	.byte	0x1
	.2byte	0x1f9
	.4byte	0xf6b
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB373
	.4byte	.LBE373
	.byte	0x1
	.2byte	0x1f8
	.4byte	0xf8f
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB375
	.4byte	.LBE375
	.byte	0x1
	.2byte	0x1f6
	.4byte	0xfae
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB377
	.4byte	.LBE377
	.byte	0x1
	.2byte	0x1f5
	.4byte	0xfd2
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB379
	.4byte	.LBE379
	.byte	0x1
	.2byte	0x1f4
	.4byte	0xff6
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB381
	.4byte	.LBE381
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x101a
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB383
	.4byte	.LBE383
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x103e
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB385
	.4byte	.LBE385
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x105d
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB387
	.4byte	.LBE387
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x1081
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB389
	.4byte	.LBE389
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x10a5
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB391
	.4byte	.LBE391
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x10c9
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB393
	.4byte	.LBE393
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x10ed
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB395
	.4byte	.LBE395
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x110c
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB397
	.4byte	.LBE397
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x1130
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB399
	.4byte	.LBE399
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x1154
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB401
	.4byte	.LBE401
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x1178
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB403
	.4byte	.LBE403
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x119c
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB405
	.4byte	.LBE405
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x11bb
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB407
	.4byte	.LBE407
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x11df
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB409
	.4byte	.LBE409
	.byte	0x1
	.2byte	0x1db
	.4byte	0x1203
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB411
	.4byte	.LBE411
	.byte	0x1
	.2byte	0x1da
	.4byte	0x1227
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB413
	.4byte	.LBE413
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x124b
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB415
	.4byte	.LBE415
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x126a
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB417
	.4byte	.LBE417
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x128e
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB419
	.4byte	.LBE419
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x12b2
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB421
	.4byte	.LBE421
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x12d6
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB423
	.4byte	.LBE423
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x12fa
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB425
	.4byte	.LBE425
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x1319
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB427
	.4byte	.LBE427
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x133d
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB429
	.4byte	.LBE429
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x1361
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB431
	.4byte	.LBE431
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x1385
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB433
	.4byte	.LBE433
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x13a9
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB435
	.4byte	.LBE435
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x13c8
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB437
	.4byte	.LBE437
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x13ec
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB440
	.4byte	.LBE440
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x1410
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB442
	.4byte	.LBE442
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x1434
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB444
	.4byte	.LBE444
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x1453
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB446
	.4byte	.LBE446
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x1477
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB448
	.4byte	.LBE448
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x149b
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB450
	.4byte	.LBE450
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x14bf
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB452
	.4byte	.LBE452
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x14e3
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB454
	.4byte	.LBE454
	.byte	0x1
	.2byte	0x1be
	.4byte	0x1502
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB456
	.4byte	.LBE456
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x1526
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB458
	.4byte	.LBE458
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x154a
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB460
	.4byte	.LBE460
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x156e
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB462
	.4byte	.LBE462
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x1592
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x485
	.4byte	.LBB464
	.4byte	.LBE464
	.byte	0x1
	.2byte	0x1b8
	.4byte	0x15b1
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB466
	.4byte	.LBE466
	.byte	0x1
	.2byte	0x1b7
	.4byte	0x15d5
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB468
	.4byte	.LBE468
	.byte	0x1
	.2byte	0x1b6
	.4byte	0x15f9
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB470
	.4byte	.LBE470
	.byte	0x1
	.2byte	0x1b5
	.4byte	0x161d
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x428
	.4byte	.LBB472
	.4byte	.LBE472
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x1641
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB475
	.4byte	.LBE475
	.byte	0x1
	.2byte	0x1b1
	.4byte	0x1665
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x20
	.4byte	0x455
	.4byte	.LBB478
	.4byte	.LBE478
	.byte	0x1
	.2byte	0x1af
	.4byte	0x1689
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x22
	.4byte	0x485
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x16a4
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x22
	.4byte	0x455
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x16c4
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x22
	.4byte	0x455
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x1b0
	.4byte	0x16e4
	.uleb128 0x21
	.4byte	0x479
	.uleb128 0x21
	.4byte	0x46e
	.uleb128 0x21
	.4byte	0x463
	.byte	0x0
	.uleb128 0x22
	.4byte	0x485
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0x21c
	.4byte	0x16ff
	.uleb128 0x21
	.4byte	0x49d
	.uleb128 0x21
	.4byte	0x493
	.byte	0x0
	.uleb128 0x23
	.4byte	0x428
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.2byte	0x1ae
	.uleb128 0x21
	.4byte	0x44a
	.uleb128 0x21
	.4byte	0x440
	.uleb128 0x21
	.4byte	0x436
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0xb2
	.4byte	0x1733
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x1
	.byte	0x31
	.4byte	0x1744
	.byte	0x5
	.byte	0x3
	.4byte	rmode
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1bb
	.uleb128 0x8
	.4byte	0x3d
	.4byte	0x175a
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0x0
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x1
	.byte	0x32
	.4byte	0x174a
	.byte	0x5
	.byte	0x3
	.4byte	frameBuffer
	.uleb128 0x8
	.4byte	0x29c
	.4byte	0x177b
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x1
	.byte	0x35
	.4byte	0x1786
	.uleb128 0x24
	.4byte	0x176b
	.uleb128 0x8
	.4byte	0x92
	.4byte	0x1796
	.uleb128 0x25
	.byte	0x0
	.uleb128 0x26
	.4byte	.LASF85
	.byte	0x7
	.byte	0x2
	.4byte	0x17a3
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.4byte	0x178b
	.uleb128 0x26
	.4byte	.LASF86
	.byte	0x7
	.byte	0x3
	.4byte	0x17b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
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
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.4byte	0x17bb
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
	.4byte	.LBB522-.Ltext0
	.4byte	.LBE522-.Ltext0
	.4byte	.LBB521-.Ltext0
	.4byte	.LBE521-.Ltext0
	.4byte	.LBB520-.Ltext0
	.4byte	.LBE520-.Ltext0
	.4byte	.LBB519-.Ltext0
	.4byte	.LBE519-.Ltext0
	.4byte	.LBB518-.Ltext0
	.4byte	.LBE518-.Ltext0
	.4byte	.LBB517-.Ltext0
	.4byte	.LBE517-.Ltext0
	.4byte	.LBB516-.Ltext0
	.4byte	.LBE516-.Ltext0
	.4byte	.LBB515-.Ltext0
	.4byte	.LBE515-.Ltext0
	.4byte	.LBB514-.Ltext0
	.4byte	.LBE514-.Ltext0
	.4byte	.LBB513-.Ltext0
	.4byte	.LBE513-.Ltext0
	.4byte	.LBB512-.Ltext0
	.4byte	.LBE512-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB484-.Ltext0
	.4byte	.LBE484-.Ltext0
	.4byte	.LBB474-.Ltext0
	.4byte	.LBE474-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB487-.Ltext0
	.4byte	.LBE487-.Ltext0
	.4byte	.LBB439-.Ltext0
	.4byte	.LBE439-.Ltext0
	.4byte	.LBB511-.Ltext0
	.4byte	.LBE511-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB493-.Ltext0
	.4byte	.LBE493-.Ltext0
	.4byte	.LBB477-.Ltext0
	.4byte	.LBE477-.Ltext0
	.4byte	.LBB491-.Ltext0
	.4byte	.LBE491-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB498-.Ltext0
	.4byte	.LBE498-.Ltext0
	.4byte	.LBB316-.Ltext0
	.4byte	.LBE316-.Ltext0
	.4byte	.LBB481-.Ltext0
	.4byte	.LBE481-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB502-.Ltext0
	.4byte	.LBE502-.Ltext0
	.4byte	.LBB480-.Ltext0
	.4byte	.LBE480-.Ltext0
	.4byte	.LBB482-.Ltext0
	.4byte	.LBE482-.Ltext0
	.4byte	.LBB483-.Ltext0
	.4byte	.LBE483-.Ltext0
	.4byte	.LBB492-.Ltext0
	.4byte	.LBE492-.Ltext0
	.4byte	.LBB497-.Ltext0
	.4byte	.LBE497-.Ltext0
	.4byte	.LBB510-.Ltext0
	.4byte	.LBE510-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF86:
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
.LASF90:
	.string	"GX_End"
.LASF82:
	.string	"rmode"
.LASF80:
	.string	"tevstage"
.LASF49:
	.string	"lpos"
.LASF69:
	.string	"perspective"
.LASF39:
	.string	"ntextures"
.LASF85:
	.string	"crate_tpl"
.LASF20:
	.string	"viHeight"
.LASF76:
	.string	"mode"
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
.LASF84:
	.string	"litcolors"
.LASF29:
	.string	"Mtx44"
.LASF87:
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
.LASF88:
	.string	"c:/Utils/devkitPro/examples/gamecube/graphics/gx/neheGX/lesson7/source/lesson7.c"
.LASF37:
	.string	"_tplfile"
.LASF52:
	.string	"lobj"
.LASF41:
	.string	"tpl_file"
.LASF83:
	.string	"frameBuffer"
.LASF70:
	.string	"gpfifo"
.LASF12:
	.string	"long double"
.LASF28:
	.string	"Vector"
.LASF74:
	.string	"yscale"
.LASF1:
	.string	"unsigned char"
.LASF77:
	.string	"vsync"
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
.LASF81:
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
.LASF79:
	.string	"camlightobj"
.LASF66:
	.string	"halfMtx"
.LASF31:
	.string	"GXColor"
.LASF24:
	.string	"vfilter"
.LASF34:
	.string	"_gx_litobj"
.LASF75:
	.string	"cubeAxis"
.LASF57:
	.string	"main"
.LASF40:
	.string	"texdesc"
.LASF42:
	.string	"TPLFile"
.LASF2:
	.string	"short unsigned int"
.LASF73:
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
.LASF78:
	.string	"poss"
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
.LASF67:
	.string	"model"
.LASF89:
	.string	"c:\\\\Utils\\\\devkitPro\\\\examples\\\\gamecube\\\\graphics\\\\gx\\\\neheGX\\\\lesson7\\\\build"
.LASF21:
	.string	"xfbMode"
.LASF72:
	.string	"look"
.LASF47:
	.string	"ambcol"
.LASF4:
	.string	"short int"
.LASF15:
	.string	"efbHeight"
.LASF71:
	.string	"background"
.LASF61:
	.string	"first_frame"
.LASF30:
	.string	"_gx_color"
.LASF50:
	.string	"_theta"
.LASF68:
	.string	"modelview"
.LASF13:
	.string	"viTVMode"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
