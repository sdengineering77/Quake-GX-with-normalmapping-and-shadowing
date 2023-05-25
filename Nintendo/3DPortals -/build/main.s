	.file	"main.cpp"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	".text"
.Ltext0:
	.align 2
	.globl _Z8setlightPA4_ffff9_gx_colorS1_S1_
	.type	_Z8setlightPA4_ffff9_gx_colorS1_S1_, @function
_Z8setlightPA4_ffff9_gx_colorS1_S1_:
.LFB63:
	.file 1 "d:/data/nintendo/3dportals/source/main.cpp"
	.loc 1 45 0
.LVL0:
	stwu 1,-224(1)
.LCFI0:
.LBB2:
	.loc 1 53 0
	lis 9,.LC0@ha
	lfd 13,.LC0@l(9)
	lis 9,.LC2@ha
.LBE2:
	.loc 1 45 0
	stfd 31,216(1)
.LCFI1:
.LBB3:
	.loc 1 54 0
	fmr 31,2
.LBE3:
	.loc 1 45 0
	stfd 30,208(1)
.LCFI2:
.LBB4:
	.loc 1 53 0
	fmr 30,1
	lfs 0,.LC2@l(9)
.LBE4:
	.loc 1 45 0
	mflr 0
.LCFI3:
.LBB5:
	.loc 1 54 0
	fmul 31,31,13
.LBE5:
	.loc 1 45 0
	stfd 27,184(1)
.LCFI4:
	stfd 28,192(1)
.LCFI5:
.LBB6:
	.loc 1 63 0
	lis 9,.LC11@ha
	.loc 1 53 0
	fmul 30,30,13
.LBE6:
	.loc 1 45 0
	stw 0,228(1)
.LCFI6:
	stfd 29,200(1)
.LCFI7:
.LBB7:
	.loc 1 54 0
	fdiv 31,31,0
.LBE7:
	.loc 1 45 0
	stw 25,156(1)
.LCFI8:
	stw 26,160(1)
.LCFI9:
	mr 26,4
	stw 27,164(1)
.LCFI10:
.LBB8:
	.loc 1 62 0
	addi 25,1,136
.LBE8:
	.loc 1 45 0
	stw 28,168(1)
.LCFI11:
.LBB9:
	.loc 1 61 0
	addi 28,1,68
.LBE9:
	.loc 1 45 0
	stw 29,172(1)
.LCFI12:
	mr 29,3
	stw 22,144(1)
.LCFI13:
.LBB10:
	.loc 1 72 0
	addi 27,1,20
.LBE10:
	.loc 1 45 0
	stw 23,148(1)
.LCFI14:
	stw 24,152(1)
.LCFI15:
.LBB11:
	.loc 1 63 0
	lfs 27,.LC11@l(9)
.LBE11:
	.loc 1 45 0
	lwz 23,0(6)
	lwz 22,0(7)
	lwz 24,0(5)
.LBB12:
	.loc 1 53 0
	fdiv 30,30,0
	.loc 1 54 0
	frsp 31,31
.LVL1:
.LBE12:
	.loc 1 45 0
	fmr 28,3
.LBB13:
	.loc 1 53 0
	frsp 30,30
.LVL2:
	.loc 1 55 0
	fmr 1,31
.LVL3:
	bl cosf
.LVL4:
	fmuls 29,1,28
	fmr 1,30
	bl sinf
	fmuls 29,29,1
	.loc 1 56 0
	fmr 1,31
	.loc 1 55 0
	stfs 29,0(29)
	.loc 1 56 0
	bl sinf
	fmuls 0,1,28
	.loc 1 57 0
	fmr 1,31
	.loc 1 56 0
	stfs 0,4(29)
	.loc 1 57 0
	bl cosf
	fmuls 31,1,28
.LVL5:
	fmr 1,30
	bl cosf
	.loc 1 59 0
	mr 5,29
	.loc 1 57 0
	fmuls 31,31,1
	.loc 1 59 0
	mr 4,29
	mr 3,26
	.loc 1 57 0
	stfs 31,8(29)
	.loc 1 59 0
	bl ps_guVecMultiply
	.loc 1 61 0
	lfs 1,0(29)
	lfs 2,4(29)
	mr 3,28
	lfs 3,8(29)
	bl GX_InitLightPos
	.loc 1 62 0
	mr 4,25
	mr 3,28
	stw 24,136(1)
	bl GX_InitLightColor
	.loc 1 63 0
	lis 9,.LC3@ha
	lfs 31,.LC3@l(9)
	fmr 1,27
	fmr 2,27
	mr 3,28
	fmr 3,31
	bl GX_InitLightDir
	.loc 1 65 0
	fmr 1,31
	fmr 2,27
	mr 3,28
	fmr 3,27
	bl GX_InitLightAttnA
	.loc 1 67 0
	fmr 2,27
	fmr 3,27
	lis 9,.LC4@ha
	lfs 1,.LC4@l(9)
	mr 3,28
	bl GX_InitLightAttnK
	.loc 1 68 0
	mr 3,28
	li 4,2
	bl GX_LoadLightObj
	.loc 1 71 0
	lis 9,.LANCHOR0@ha
	la 11,.LANCHOR0@l(9)
	lwz 10,.LANCHOR0@l(9)
	lwz 8,8(11)
	.loc 1 72 0
	mr 3,27
	.loc 1 71 0
	lwz 0,4(11)
	stw 10,8(1)
	stw 0,12(1)
	stw 8,16(1)
	.loc 1 72 0
	bl ps_guMtxIdentity
	.loc 1 73 0
	lis 9,.LC5@ha
	mr 3,27
	lfs 1,.LC5@l(9)
	addi 4,1,8
	bl ps_guMtxRotAxisRad
	.loc 1 75 0
	mr 5,29
	mr 4,29
	mr 3,27
	bl ps_guVecMultiply
	.loc 1 76 0
	lfs 1,0(29)
	lfs 2,4(29)
	mr 3,28
	lfs 3,8(29)
	bl GX_InitLightPos
	.loc 1 77 0
	mr 3,28
	li 4,4
	bl GX_LoadLightObj
	.loc 1 79 0
	mr 5,29
	mr 4,29
	mr 3,27
	bl ps_guVecMultiply
	.loc 1 80 0
	lfs 1,0(29)
	lfs 2,4(29)
	mr 3,28
	lfs 3,8(29)
	bl GX_InitLightPos
	.loc 1 81 0
	mr 3,28
	li 4,8
	bl GX_LoadLightObj
	.loc 1 83 0
	mr 5,29
	mr 4,29
	mr 3,27
	bl ps_guVecMultiply
	.loc 1 84 0
	lfs 1,0(29)
	lfs 2,4(29)
	mr 3,28
	lfs 3,8(29)
	bl GX_InitLightPos
	.loc 1 85 0
	mr 3,28
	li 4,16
	bl GX_LoadLightObj
	.loc 1 89 0
	li 3,2
	bl GX_SetNumChans
	.loc 1 90 0
	li 3,2
	li 4,1
	li 5,0
	li 6,0
	li 7,4
	li 8,1
	li 9,1
	bl GX_SetChanCtrl
	.loc 1 91 0
	li 5,0
	li 6,0
	li 7,8
	li 8,1
	li 9,1
	li 3,0
	li 4,1
	bl GX_SetChanCtrl
	.loc 1 92 0
	mr 4,25
	li 3,4
	stw 23,136(1)
	bl GX_SetChanAmbColor
	.loc 1 93 0
	mr 4,25
	li 3,4
	stw 22,136(1)
	bl GX_SetChanMatColor
	.loc 1 95 0
	li 3,3
	li 4,1
	li 5,0
	li 6,0
	li 7,2
	li 8,1
	li 9,1
	bl GX_SetChanCtrl
	.loc 1 96 0
	li 5,0
	li 6,0
	li 7,2
	li 8,1
	li 9,1
	li 3,1
	li 4,1
	bl GX_SetChanCtrl
	.loc 1 97 0
	mr 4,25
	li 3,5
	stw 23,136(1)
	bl GX_SetChanAmbColor
	.loc 1 98 0
	mr 4,25
	li 3,5
	stw 22,136(1)
	bl GX_SetChanMatColor
.LBE13:
	.loc 1 101 0
	lwz 0,228(1)
	mr 3,29
	lwz 22,144(1)
.LVL6:
	lwz 23,148(1)
.LVL7:
	mtlr 0
	lwz 24,152(1)
.LVL8:
	lwz 25,156(1)
	lwz 26,160(1)
.LVL9:
	lwz 27,164(1)
	lwz 28,168(1)
	lwz 29,172(1)
	lfd 27,184(1)
	lfd 28,192(1)
.LVL10:
	lfd 29,200(1)
	lfd 30,208(1)
.LVL11:
	lfd 31,216(1)
	addi 1,1,224
	blr
.LFE63:
	.size	_Z8setlightPA4_ffff9_gx_colorS1_S1_, .-_Z8setlightPA4_ffff9_gx_colorS1_S1_
	.globl __gxx_personality_v0
	.align 2
	.globl main
	.type	main, @function
main:
.LFB64:
	.loc 1 104 0
.LVL12:
	stwu 1,-944(1)
.LCFI16:
	mflr 0
.LCFI17:
.LBB258:
	.loc 1 119 0
	li 4,0
.LVL13:
	li 5,48
	addi 3,1,260
.LVL14:
.LBE258:
	.loc 1 104 0
	stw 23,764(1)
.LCFI18:
	stfd 14,800(1)
.LCFI19:
	stfd 15,808(1)
.LCFI20:
	stfd 16,816(1)
.LCFI21:
	stfd 17,824(1)
.LCFI22:
	stfd 18,832(1)
.LCFI23:
	stfd 19,840(1)
.LCFI24:
	stfd 20,848(1)
.LCFI25:
	stfd 21,856(1)
.LCFI26:
	stfd 22,864(1)
.LCFI27:
	stfd 23,872(1)
.LCFI28:
	stfd 24,880(1)
.LCFI29:
	stfd 25,888(1)
.LCFI30:
	stfd 26,896(1)
.LCFI31:
	stfd 27,904(1)
.LCFI32:
	stfd 28,912(1)
.LCFI33:
	stfd 29,920(1)
.LCFI34:
	stfd 30,928(1)
.LCFI35:
	stfd 31,936(1)
.LCFI36:
	stw 14,728(1)
.LCFI37:
	stw 15,732(1)
.LCFI38:
	stw 16,736(1)
.LCFI39:
	stw 17,740(1)
.LCFI40:
	stw 18,744(1)
.LCFI41:
	stw 19,748(1)
.LCFI42:
	stw 20,752(1)
.LCFI43:
	stw 21,756(1)
.LCFI44:
	stw 22,760(1)
.LCFI45:
	stw 24,768(1)
.LCFI46:
	stw 25,772(1)
.LCFI47:
	stw 26,776(1)
.LCFI48:
	stw 27,780(1)
.LCFI49:
	stw 28,784(1)
.LCFI50:
	stw 0,948(1)
.LCFI51:
	stw 29,788(1)
.LCFI52:
	stw 30,792(1)
.LCFI53:
.LBB527:
	.loc 1 137 0
	lis 30,.LANCHOR1@ha
.LBE527:
	.loc 1 104 0
	stw 31,796(1)
.LCFI54:
.LBB528:
	.loc 1 119 0
	bl memset
	.loc 1 123 0
	lis 9,.LANCHOR0@ha
	li 5,48
	la 23,.LANCHOR0@l(9)
	addi 3,1,308
	addi 4,23,12
	li 31,0
.LVL15:
	bl memcpy
	.loc 1 129 0
	lwz 0,60(23)
	lwz 11,68(23)
	.loc 1 130 0
	lwz 10,72(23)
	lwz 8,76(23)
	lwz 7,80(23)
	.loc 1 131 0
	lwz 6,84(23)
	.loc 1 129 0
	lwz 9,64(23)
	.loc 1 131 0
	lwz 5,88(23)
	lwz 4,92(23)
	.loc 1 129 0
	stw 0,16(1)
	stw 11,24(1)
	.loc 1 130 0
	stw 10,28(1)
	stw 8,32(1)
	stw 7,36(1)
	.loc 1 131 0
	stw 6,40(1)
	.loc 1 129 0
	stw 9,20(1)
	.loc 1 131 0
	stw 5,44(1)
	stw 4,48(1)
	.loc 1 134 0
	bl VIDEO_Init
	.loc 1 135 0
	bl WPAD_Init
	.loc 1 137 0
	li 3,0
	bl VIDEO_GetPreferredMode
	.loc 1 140 0
	lis 4,0x4
	.loc 1 137 0
	stw 3,.LANCHOR1@l(30)
	.loc 1 140 0
	li 3,32
	bl memalign
	.loc 1 141 0
	li 4,0
	lis 5,0x4
	.loc 1 140 0
	mr 29,3
.LVL16:
	.loc 1 141 0
	bl memset
	.loc 1 144 0
	lwz 3,.LANCHOR1@l(30)
	bl SYS_AllocateFramebuffer
	la 9,.LANCHOR1@l(30)
	stw 3,4(9)
	.loc 1 145 0
	lwz 3,.LANCHOR1@l(30)
	bl SYS_AllocateFramebuffer
	la 9,.LANCHOR1@l(30)
	stw 3,8(9)
	.loc 1 148 0
	lwz 3,.LANCHOR1@l(30)
	bl VIDEO_Configure
	.loc 1 149 0
	la 9,.LANCHOR1@l(30)
	lwz 3,4(9)
	bl VIDEO_SetNextFramebuffer
	.loc 1 150 0
	bl VIDEO_Flush
	.loc 1 151 0
	bl VIDEO_WaitVSync
	.loc 1 152 0
	lwz 9,.LANCHOR1@l(30)
	lwz 0,0(9)
	andi. 9,0,1
	bne- 0,.L61
.L4:
	.loc 1 157 0
	mr 3,29
	lis 4,0x4
	bl GX_Init
	.loc 1 128 0
	li 0,0
	rlwimi 31,0,24,0,7
	.loc 1 160 0
	lis 4,0xff
	.loc 1 128 0
	rlwimi 31,0,16,8,15
	.loc 1 160 0
	ori 4,4,65535
	.loc 1 128 0
	rlwimi 31,0,8,16,23
	li 0,-1
	rlwimi 31,0,0,24,31
	.loc 1 160 0
	addi 3,1,688
	stw 31,688(1)
	bl GX_SetCopyClear
	.loc 1 163 0
	lwz 9,.LANCHOR1@l(30)
	lis 10,0x4330
	stw 10,696(1)
	lis 31,.LC13@ha
.LVL17:
	lhz 0,4(9)
	lis 21,.LC3@ha
	lhz 11,6(9)
	lis 9,.LC11@ha
	stw 0,700(1)
	lfs 0,.LC13@l(31)
	lfd 3,696(1)
	stw 11,700(1)
	fsub 3,3,0
	lfs 1,.LC11@l(9)
	lfd 4,696(1)
	fmr 2,1
	lfs 6,.LC3@l(21)
	fsub 4,4,0
	frsp 3,3
	fmr 5,1
	frsp 4,4
	bl GX_SetViewport
	.loc 1 164 0
	lwz 9,.LANCHOR1@l(30)
	lhz 4,8(9)
	lhz 3,6(9)
	bl GX_GetYScaleFactor
	.loc 1 165 0
	bl GX_SetDispCopyYScale
	.loc 1 166 0
	lwz 9,.LANCHOR1@l(30)
	.loc 1 165 0
	mr 29,3
.LVL18:
	.loc 1 166 0
	li 4,0
	lhz 6,6(9)
	li 3,0
	lhz 5,4(9)
	bl GX_SetScissor
	.loc 1 167 0
	lwz 9,.LANCHOR1@l(30)
	li 3,0
	li 4,0
	lhz 6,6(9)
	lhz 5,4(9)
	bl GX_SetDispCopySrc
	.loc 1 168 0
	lwz 9,.LANCHOR1@l(30)
	rlwinm 4,29,0,0xffff
.LVL19:
	lhz 3,4(9)
	bl GX_SetDispCopyDst
.LVL20:
	.loc 1 169 0
	lwz 4,.LANCHOR1@l(30)
	li 3,1
	li 5,1
	addi 6,4,50
	addi 4,4,26
	bl GX_SetCopyFilter
	.loc 1 170 0
	lwz 9,.LANCHOR1@l(30)
	lhz 4,8(9)
	lhz 0,16(9)
	slwi 4,4,1
	lbz 3,24(9)
	xor 4,0,4
	cntlzw 4,4
	srwi 4,4,5
	bl GX_SetFieldMode
	.loc 1 172 0
	lwz 9,.LANCHOR1@l(30)
	lbz 0,25(9)
	cmpwi 7,0,0
	beq- 7,.L6
	.loc 1 173 0
	li 3,2
	li 4,0
	bl GX_SetPixelFmt
.L8:
	.loc 1 177 0
	li 3,2
	.loc 1 204 0
	addi 29,1,88
	.loc 1 177 0
	bl GX_SetCullMode
	.loc 1 178 0
	lis 9,.LANCHOR1@ha
	la 9,.LANCHOR1@l(9)
	li 4,1
	lwz 3,8(9)
	.loc 1 239 0
	li 18,1
.LVL21:
	li 19,1
.LVL22:
	li 17,1
.LVL23:
	.loc 1 178 0
	bl GX_CopyDisp
	.loc 1 179 0
	li 3,0
	bl GX_SetDispCopyGamma
	.loc 1 239 0
	li 24,0
.LVL24:
	.loc 1 187 0
	bl GX_ClearVtxDesc
	.loc 1 188 0
	li 3,9
	li 4,1
	lis 16,.LC26@ha
	bl GX_SetVtxDesc
	.loc 1 189 0
	li 3,25
	li 4,1
	lis 15,.LC27@ha
	bl GX_SetVtxDesc
	.loc 1 190 0
	li 3,13
	li 4,1
	lis 14,.LC28@ha
	bl GX_SetVtxDesc
	.loc 1 197 0
	li 3,0
	li 4,9
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 198 0
	li 3,0
	li 4,25
	li 5,2
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 199 0
	li 6,4
	li 7,0
	li 3,0
	li 4,13
	li 5,1
	bl GX_SetVtxAttrFmt
	.loc 1 202 0
	bl GX_InvVtxCache
	.loc 1 203 0
	bl GX_InvalidateTexAll
	.loc 1 204 0
	lis 9,crate_tpl_size@ha
	lwz 5,crate_tpl_size@l(9)
	lis 4,crate_tpl@ha
	la 4,crate_tpl@l(4)
	mr 3,29
	bl TPL_OpenTPLFromMemory
	.loc 1 205 0
	li 4,0
	addi 5,1,128
	mr 3,29
	bl TPL_GetTexture
	.loc 1 206 0
	li 4,1
	addi 5,1,160
	mr 3,29
	bl TPL_GetTexture
	.loc 1 207 0
	addi 5,1,192
	li 4,2
	mr 3,29
	bl TPL_GetTexture
	.loc 1 217 0
	lwz 9,.LANCHOR1@l(30)
	.loc 1 220 0
	lis 11,0x4330
	lfs 13,.LC13@l(31)
	lhz 10,16(9)
	addi 29,1,548
	lhz 0,14(9)
	lis 9,.LC15@ha
	stw 10,708(1)
	mr 3,29
	stw 0,700(1)
	stw 11,704(1)
	stw 11,696(1)
	lis 11,.LC16@ha
	lfd 2,704(1)
	lfd 0,696(1)
	fsub 2,2,13
	lfs 3,.LC15@l(9)
	fsub 0,0,13
	.loc 1 211 0
	lwz 9,100(23)
	lwz 0,96(23)
	.loc 1 220 0
	frsp 2,2
	.loc 1 211 0
	stw 9,56(1)
	.loc 1 220 0
	frsp 0,0
	.loc 1 239 0
	lis 9,.LC11@ha
	lfs 29,.LC11@l(9)
.LVL25:
	.loc 1 220 0
	lis 9,.LC14@ha
	lfs 4,.LC16@l(11)
	fdivs 2,0,2
	lfs 1,.LC14@l(9)
	.loc 1 211 0
	lwz 11,104(23)
	stw 0,52(1)
	stw 11,60(1)
	.loc 1 239 0
	stw 18,720(1)
.LVL26:
	.loc 1 220 0
	bl guPerspective
	.loc 1 233 0
	mr 3,29
	li 4,0
.LBB259:
	.loc 1 278 0
	fmr 31,29
.LBE259:
	.loc 1 233 0
	bl GX_LoadProjectionMtx
	.loc 1 239 0
	addi 4,23,108
	li 5,36
	addi 3,1,224
	bl memcpy
.LBB524:
	.loc 1 253 0
	lis 9,.LC19@ha
	.loc 1 290 0
	lis 11,.LC20@ha
	.loc 1 253 0
	lfs 20,.LC19@l(9)
	.loc 1 290 0
	lfs 23,.LC20@l(11)
.LBE524:
	.loc 1 239 0
	lis 9,.LC17@ha
	lis 11,.LC18@ha
	lfs 30,.LC17@l(9)
.LVL27:
	lfs 26,.LC18@l(11)
.LVL28:
.LBB525:
	.loc 1 563 0
	lis 9,.LC21@ha
	.loc 1 572 0
	lis 11,.LC23@ha
	.loc 1 563 0
	lfs 19,.LC21@l(9)
	.loc 1 572 0
	lfs 22,.LC23@l(11)
	lis 9,.LC24@ha
	lis 11,.LC25@ha
	lfs 25,.LC24@l(9)
	lfs 21,.LC25@l(11)
	.loc 1 288 0
	lis 9,.LC29@ha
	.loc 1 762 0
	lis 11,.LC30@ha
	.loc 1 288 0
	lfs 18,.LC29@l(9)
	.loc 1 762 0
	lfs 17,.LC30@l(11)
	.loc 1 255 0
	fmr 14,20
.LBE525:
	.loc 1 239 0
	lfs 27,.LC3@l(21)
.LVL29:
.LBB526:
	.loc 1 251 0
	bl WPAD_ScanPads
	.loc 1 252 0
	li 3,0
	.loc 1 254 0
	fmr 16,20
	.loc 1 252 0
	bl WPAD_ButtonsDown
	.loc 1 256 0
	fmr 15,20
	.loc 1 252 0
	andi. 0,3,128
	.loc 1 292 0
	fmr 24,23
	.loc 1 252 0
	bne- 0,.L62
.LVL30:
.L10:
	.loc 1 253 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,256
	beq- 0,.L12
	fsubs 30,30,16
.L12:
	.loc 1 254 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,512
	beq- 0,.L14
	fadds 30,30,20
.L14:
	.loc 1 255 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,2048
	beq- 0,.L16
	fsubs 29,29,15
.LVL31:
.L16:
	.loc 1 256 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,1024
	beq- 0,.L18
	fadds 29,29,14
.LVL32:
.L18:
	.loc 1 258 0
	li 3,0
	bl WPAD_ButtonsHeld
	.loc 1 260 0
	andi. 0,3,8
.LVL33:
	.loc 1 259 0
	nor 9,3,3
.LVL34:
	.loc 1 260 0
	beq- 0,.L20
	ori 24,24,8
.L20:
	.loc 1 261 0
	andi. 11,3,4
	beq- 0,.L22
	ori 24,24,4
.L22:
	.loc 1 262 0
	andi. 0,3,4096
	beq- 0,.L24
	ori 24,24,4096
.L24:
	.loc 1 263 0
	andi. 11,3,16
	beq- 0,.L26
	ori 24,24,16
.L26:
	.loc 1 266 0
	rlwinm 0,9,0,28,28
	and. 11,0,24
	beq- 0,.L28
	andi. 24,24,65527
	xori 19,19,1
.L28:
	.loc 1 267 0
	rlwinm 0,9,0,29,29
	and. 11,0,24
	beq- 0,.L30
	andi. 24,24,65531
	li 19,1
.L30:
	.loc 1 268 0
	rlwinm 0,9,0,19,19
	and. 11,0,24
	beq- 0,.L32
	andi. 24,24,61439
	xori 19,19,1
.L32:
	.loc 1 269 0
	rlwinm 0,9,0,27,27
	and. 9,0,24
.LVL35:
	beq- 0,.L34
	andi. 24,24,65519
	xori 17,17,1
.L34:
	.loc 1 276 0
	addi 29,1,500
	li 5,48
	addi 4,23,144
	mr 3,29
.LVL36:
	bl memcpy
	.loc 1 278 0
	fmr 1,31
	mr 3,29
	addi 4,1,52
	.loc 1 279 0
	addi 28,1,64
	.loc 1 280 0
	addi 22,1,356
	.loc 1 278 0
	bl ps_guMtxRotAxisRad
	.loc 1 279 0
	mr 3,29
	addi 4,1,40
	mr 5,28
	bl ps_guVecMultiplySR
	.loc 1 280 0
	mr 6,28
	addi 4,1,16
	addi 5,1,28
	mr 3,22
	bl guLookAt
	.loc 1 284 0
	li 3,1
	bl GX_SetNumChans
	.loc 1 287 0
	fmr 1,29
	fmr 2,30
	li 9,-1
	fmr 3,27
	li 0,0
	addi 3,1,76
	mr 4,22
	addi 5,1,688
	addi 6,1,712
	addi 7,1,716
	stw 0,712(1)
	stb 9,688(1)
	stb 9,689(1)
	stb 9,690(1)
	stb 9,691(1)
	stb 9,719(1)
	stb 9,716(1)
	stb 9,717(1)
	stb 9,718(1)
	bl _Z8setlightPA4_ffff9_gx_colorS1_S1_
	.loc 1 290 0
	fcmpu 7,29,24
	cror 30,29,30
	bne- 7,.L36
	fsubs 29,29,24
.LVL37:
.L39:
	.loc 1 292 0
	fcmpu 7,30,23
	cror 30,29,30
	bne- 7,.L42
	fsubs 30,30,23
.LVL38:
.L45:
	.loc 1 298 0
	li 4,30
	li 5,1
	addi 3,1,260
	.loc 1 308 0
	addi 29,1,612
	.loc 1 298 0
	bl GX_LoadTexMtxImm
	.loc 1 299 0
	li 5,1
	li 4,33
	addi 3,1,308
	bl GX_LoadTexMtxImm
	.loc 1 308 0
	fmr 1,31
	fmr 2,31
	mr 3,29
	fmr 3,31
	.loc 1 309 0
	li 31,0
	.loc 1 391 0
	li 30,3
	.loc 1 308 0
	bl GX_InitLightPos
	.loc 1 309 0
	mr 3,29
	addi 4,1,688
	stw 31,688(1)
	bl GX_InitLightColor
	.loc 1 310 0
	mr 3,29
	li 4,1
	.loc 1 391 0
	li 29,2
.LVL39:
	.loc 1 310 0
	bl GX_LoadLightObj
	.loc 1 315 0
	li 3,7
	bl GX_SetNumTexGens
	.loc 1 319 0
	li 3,0
	li 4,1
	li 5,4
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 321 0
	li 3,1
	li 4,1
	li 5,4
	li 6,30
	bl GX_SetTexCoordGen
	.loc 1 322 0
	li 3,2
	li 4,1
	li 5,5
	li 6,30
	bl GX_SetTexCoordGen
	.loc 1 324 0
	li 3,3
	li 4,2
	li 5,13
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 326 0
	li 3,4
	li 4,3
	li 5,13
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 330 0
	li 3,5
	li 4,4
	li 5,14
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 343 0
	li 3,0
	li 4,15
	li 5,12
	li 6,11
	li 7,15
	bl GX_SetTevColorIn
	.loc 1 344 0
	li 7,1
	li 8,2
	li 3,0
	li 4,0
	li 5,0
	li 6,0
	bl GX_SetTevColorOp
	.loc 1 345 0
	li 6,5
	li 3,0
	li 4,255
	li 5,256
	bl GX_SetTevOrder
	.loc 1 349 0
	li 3,0
	li 4,0
	li 5,0
	bl GX_SetIndTexOrder
	.loc 1 350 0
	li 4,0
	li 5,0
	li 3,0
	bl GX_SetIndTexCoordScale
	.loc 1 356 0
	lwz 0,192(23)
	lwz 11,200(23)
	.loc 1 359 0
	li 3,1
	.loc 1 356 0
	lwz 9,196(23)
	lwz 10,204(23)
	lwz 8,208(23)
	lwz 7,212(23)
	stw 0,104(1)
	stw 11,112(1)
	stw 9,108(1)
	stw 10,116(1)
	stw 8,120(1)
	stw 7,124(1)
	.loc 1 359 0
	bl GX_SetNumIndStages
	.loc 1 360 0
	li 3,1
	addi 4,1,104
	li 5,0
	bl GX_SetIndTexMatrix
	.loc 1 373 0
	li 9,0
	li 10,0
	li 8,0
	li 5,0
	li 6,7
	li 7,1
	li 3,1
	li 4,0
	stw 31,8(1)
	stw 31,12(1)
	bl GX_SetTevIndirect
	.loc 1 379 0
	li 3,1
	li 4,7
	bl GX_SetTevKColorSel
	.loc 1 380 0
	li 3,1
	li 4,15
	li 5,8
	li 6,4
	li 7,14
	bl GX_SetTevColorIn
	.loc 1 381 0
	li 3,1
	li 4,0
	li 5,0
	li 6,0
	li 7,1
	li 8,0
	bl GX_SetTevColorOp
	.loc 1 386 0
	li 3,1
	li 4,4
	li 5,2
	li 6,4
	bl GX_SetTevOrder
	.loc 1 391 0
	cmpwi 7,19,0
	bne- 7,.L63
.L50:
	.loc 1 549 0
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
	.loc 1 550 0
	mr 3,29
	li 4,7
	bl GX_SetTevKColorSel
	.loc 1 551 0
	mr 3,29
	li 4,15
	li 5,14
	li 6,8
	li 7,0
	bl GX_SetTevColorIn
	.loc 1 552 0
	li 7,1
	li 8,0
	mr 3,29
	li 4,0
	li 5,0
	li 6,3
	.loc 1 563 0
	fmuls 28,26,19
	.loc 1 552 0
	bl GX_SetTevColorOp
	.loc 1 553 0
	li 5,2
	li 6,255
	mr 3,29
	li 4,3
.LBB260:
.LBB263:
	.file 2 "c:/Utils/devkitPro/libogc/include/ogc/gx.h"
	.loc 2 1141 0
	lis 29,0xcc00
.LVL40:
.LBE263:
.LBE260:
	.loc 1 553 0
	bl GX_SetTevOrder
.LVL41:
	.loc 1 557 0
	mr 3,30
	bl GX_SetNumTevStages
	.loc 1 561 0
	addi 3,1,128
	li 4,0
.LBB266:
.LBB262:
	.loc 2 1141 0
	ori 29,29,32768
.LBE262:
.LBE266:
	.loc 1 561 0
	bl GX_LoadTexObj
	.loc 1 562 0
	addi 3,1,160
	li 4,1
	.loc 1 563 0
	li 26,0
	.loc 1 562 0
	bl GX_LoadTexObj
	.loc 1 563 0
	addi 3,1,192
	li 4,2
	addi 27,1,404
	bl GX_LoadTexObj
	addi 25,1,452
	mr 28,16
	mr 31,15
	mr 30,14
.LBB267:
.LBB269:
	.loc 2 1293 0
	lis 20,.LC3@ha
.L51:
.LBE269:
.LBE267:
	.loc 1 568 0
	mr 3,27
	bl ps_guMtxIdentity
	.loc 1 569 0
	fmr 1,28
	mulli 4,26,12
	addi 0,1,224
	mr 3,27
	add 4,0,4
	bl ps_guMtxRotAxisRad
	.loc 1 570 0
	mr 5,25
	mr 3,22
	mr 4,27
	bl ps_guMtxConcat
	.loc 1 571 0
	mr 3,25
	li 4,0
	bl GX_LoadNrmMtxImm
	.loc 1 572 0
	xoris 0,26,0x8000
	lis 9,0x4330
	stw 0,700(1)
	stw 9,696(1)
	fmr 0,22
	fmr 2,31
	mr 3,27
	lfd 3,696(1)
	mr 4,27
	fsub 3,3,0
	frsp 3,3
	fadds 1,3,3
	fmsubs 3,3,21,25
	fsubs 1,1,25
	bl ps_guMtxTransApply
	.loc 1 573 0
	mr 5,25
	mr 3,22
	mr 4,27
	bl ps_guMtxConcat
	.loc 1 576 0
	li 4,0
	mr 3,25
	bl GX_LoadPosMtxImm
	.loc 1 581 0
	li 3,0
	bl GX_SetCurrentMtx
	.loc 1 584 0
	li 3,128
	li 4,0
	li 5,24
	bl GX_Begin
.LBB271:
.LBB268:
	.loc 2 1293 0
	lfs 0,.LC3@l(21)
.LBE268:
.LBE271:
.LBB272:
.LBB264:
	.loc 2 1141 0
	lfs 13,.LC26@l(28)
.LBE264:
.LBE272:
.LBB273:
.LBB274:
	.loc 2 1293 0
	mr 21,20
.LBE274:
.LBE273:
.LBB276:
.LBB277:
	.loc 2 1216 0
	lfs 12,.LC27@l(31)
.LBE277:
.LBE276:
.LBB279:
.LBB280:
	.loc 2 1141 0
	mr 28,16
.LBE280:
.LBE279:
.LBB282:
.LBB261:
	stfs 13,0(29)
.LBE261:
.LBE282:
.LBB283:
.LBB284:
	.loc 2 1217 0
	mr 31,15
.LBE284:
.LBE283:
.LBB286:
.LBB265:
	.loc 2 1142 0
	stfs 13,0(29)
	.loc 2 1143 0
	stfs 13,0(29)
.LBE265:
.LBE286:
.LBB287:
.LBB288:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 13,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE288:
.LBE287:
.LBB289:
.LBB278:
	.loc 2 1216 0
	stfs 12,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE278:
.LBE289:
.LBB290:
.LBB291:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE291:
.LBE290:
.LBB292:
.LBB270:
	.loc 2 1292 0
	stfs 31,0(29)
	.loc 2 1293 0
	stfs 0,0(29)
.LBE270:
.LBE292:
.LBB293:
.LBB294:
	.loc 2 1141 0
	stfs 13,0(29)
	.loc 2 1142 0
	stfs 13,0(29)
	.loc 2 1143 0
	stfs 0,0(29)
.LBE294:
.LBE293:
.LBB295:
.LBB296:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 13,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE296:
.LBE295:
.LBB297:
.LBB298:
	.loc 2 1216 0
	stfs 12,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE298:
.LBE297:
.LBB299:
.LBB300:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE300:
.LBE299:
.LBB301:
.LBB302:
	.loc 2 1292 0
	stfs 31,0(29)
	.loc 2 1293 0
	stfs 31,0(29)
.LBE302:
.LBE301:
.LBB303:
.LBB304:
	.loc 2 1141 0
	stfs 0,0(29)
	.loc 2 1142 0
	stfs 13,0(29)
	.loc 2 1143 0
	stfs 0,0(29)
.LBE304:
.LBE303:
.LBB305:
.LBB306:
	.loc 2 1216 0
	lfs 11,.LC28@l(30)
.LBE306:
.LBE305:
.LBB308:
.LBB309:
	.loc 2 1218 0
	mr 30,14
.LBE309:
.LBE308:
.LBB311:
.LBB312:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 13,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE312:
.LBE311:
.LBB313:
.LBB314:
	.loc 2 1216 0
	stfs 12,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE314:
.LBE313:
.LBB315:
.LBB316:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE316:
.LBE315:
.LBB317:
.LBB318:
	.loc 2 1292 0
	stfs 0,0(29)
	.loc 2 1293 0
	stfs 31,0(29)
.LBE318:
.LBE317:
.LBB319:
.LBB320:
	.loc 2 1141 0
	stfs 0,0(29)
	.loc 2 1142 0
	stfs 13,0(29)
	.loc 2 1143 0
	stfs 13,0(29)
.LBE320:
.LBE319:
.LBB321:
.LBB322:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 13,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE322:
.LBE321:
.LBB323:
.LBB324:
	.loc 2 1216 0
	stfs 12,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE324:
.LBE323:
.LBB325:
.LBB326:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE326:
.LBE325:
.LBB327:
.LBB328:
	.loc 2 1292 0
	stfs 0,0(29)
	.loc 2 1293 0
	stfs 0,0(29)
.LBE328:
.LBE327:
.LBB329:
.LBB330:
	.loc 2 1141 0
	stfs 0,0(29)
	.loc 2 1142 0
	stfs 0,0(29)
	.loc 2 1143 0
	stfs 13,0(29)
.LBE330:
.LBE329:
.LBB331:
.LBB332:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 0,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE332:
.LBE331:
.LBB333:
.LBB307:
	.loc 2 1216 0
	stfs 11,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE307:
.LBE333:
.LBB334:
.LBB335:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE335:
.LBE334:
.LBB336:
.LBB337:
	.loc 2 1292 0
	stfs 31,0(29)
	.loc 2 1293 0
	stfs 0,0(29)
.LBE337:
.LBE336:
.LBB338:
.LBB339:
	.loc 2 1141 0
	stfs 0,0(29)
	.loc 2 1142 0
	stfs 0,0(29)
	.loc 2 1143 0
	stfs 0,0(29)
.LBE339:
.LBE338:
.LBB340:
.LBB341:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 0,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE341:
.LBE340:
.LBB342:
.LBB343:
	.loc 2 1216 0
	stfs 11,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE343:
.LBE342:
.LBB344:
.LBB345:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE345:
.LBE344:
.LBB346:
.LBB347:
	.loc 2 1292 0
	stfs 31,0(29)
	.loc 2 1293 0
	stfs 31,0(29)
.LBE347:
.LBE346:
.LBB348:
.LBB349:
	.loc 2 1141 0
	stfs 13,0(29)
	.loc 2 1142 0
	stfs 0,0(29)
	.loc 2 1143 0
	stfs 0,0(29)
.LBE349:
.LBE348:
.LBB350:
.LBB351:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 0,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE351:
.LBE350:
.LBB352:
.LBB353:
	.loc 2 1216 0
	stfs 11,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE353:
.LBE352:
.LBB354:
.LBB355:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE355:
.LBE354:
.LBB356:
.LBB357:
	.loc 2 1292 0
	stfs 0,0(29)
	.loc 2 1293 0
	stfs 31,0(29)
.LBE357:
.LBE356:
.LBB358:
.LBB359:
	.loc 2 1141 0
	stfs 13,0(29)
	.loc 2 1142 0
	stfs 0,0(29)
	.loc 2 1143 0
	stfs 13,0(29)
.LBE359:
.LBE358:
.LBB360:
.LBB361:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 0,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE361:
.LBE360:
.LBB362:
.LBB363:
	.loc 2 1216 0
	stfs 11,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE363:
.LBE362:
.LBB364:
.LBB365:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE365:
.LBE364:
.LBB366:
.LBB367:
	.loc 2 1292 0
	stfs 0,0(29)
	.loc 2 1293 0
	stfs 0,0(29)
.LBE367:
.LBE366:
.LBB368:
.LBB369:
	.loc 2 1141 0
	stfs 13,0(29)
	.loc 2 1142 0
	stfs 13,0(29)
	.loc 2 1143 0
	stfs 0,0(29)
.LBE369:
.LBE368:
.LBB370:
.LBB371:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 0,0(29)
.LBE371:
.LBE370:
.LBB372:
.LBB373:
	.loc 2 1216 0
	stfs 12,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE373:
.LBE372:
.LBB374:
.LBB375:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE375:
.LBE374:
.LBB376:
.LBB377:
	.loc 2 1292 0
	stfs 31,0(29)
	.loc 2 1293 0
	stfs 0,0(29)
.LBE377:
.LBE376:
.LBB378:
.LBB379:
	.loc 2 1141 0
	stfs 13,0(29)
	.loc 2 1142 0
	stfs 0,0(29)
	.loc 2 1143 0
	stfs 0,0(29)
.LBE379:
.LBE378:
.LBB380:
.LBB381:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 0,0(29)
.LBE381:
.LBE380:
.LBB382:
.LBB383:
	.loc 2 1216 0
	stfs 12,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE383:
.LBE382:
.LBB384:
.LBB385:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE385:
.LBE384:
.LBB386:
.LBB387:
	.loc 2 1292 0
	stfs 31,0(29)
	.loc 2 1293 0
	stfs 31,0(29)
.LBE387:
.LBE386:
.LBB388:
.LBB389:
	.loc 2 1141 0
	stfs 0,0(29)
	.loc 2 1142 0
	stfs 0,0(29)
	.loc 2 1143 0
	stfs 0,0(29)
.LBE389:
.LBE388:
.LBB390:
.LBB391:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 0,0(29)
.LBE391:
.LBE390:
.LBB392:
.LBB393:
	.loc 2 1216 0
	stfs 12,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE393:
.LBE392:
.LBB394:
.LBB395:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE395:
.LBE394:
.LBB396:
.LBB397:
	.loc 2 1292 0
	stfs 0,0(29)
	.loc 2 1293 0
	stfs 31,0(29)
.LBE397:
.LBE396:
.LBB398:
.LBB399:
	.loc 2 1141 0
	stfs 0,0(29)
	.loc 2 1142 0
	stfs 13,0(29)
	.loc 2 1143 0
	stfs 0,0(29)
.LBE399:
.LBE398:
.LBB400:
.LBB401:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 0,0(29)
.LBE401:
.LBE400:
.LBB402:
.LBB403:
	.loc 2 1216 0
	stfs 12,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE403:
.LBE402:
.LBB404:
.LBB405:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE405:
.LBE404:
.LBB406:
.LBB407:
	.loc 2 1292 0
	stfs 0,0(29)
	.loc 2 1293 0
	stfs 0,0(29)
.LBE407:
.LBE406:
.LBB408:
.LBB409:
	.loc 2 1141 0
	stfs 0,0(29)
	.loc 2 1142 0
	stfs 13,0(29)
	.loc 2 1143 0
	stfs 13,0(29)
.LBE409:
.LBE408:
.LBB410:
.LBB411:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 13,0(29)
.LBE411:
.LBE410:
.LBB412:
.LBB413:
	.loc 2 1216 0
	stfs 11,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE413:
.LBE412:
.LBB414:
.LBB415:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE415:
.LBE414:
.LBB416:
.LBB417:
	.loc 2 1292 0
	stfs 31,0(29)
	.loc 2 1293 0
	stfs 0,0(29)
.LBE417:
.LBE416:
.LBB418:
.LBB419:
	.loc 2 1141 0
	stfs 0,0(29)
	.loc 2 1142 0
	stfs 0,0(29)
	.loc 2 1143 0
	stfs 13,0(29)
.LBE419:
.LBE418:
.LBB420:
.LBB421:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 13,0(29)
.LBE421:
.LBE420:
.LBB422:
.LBB423:
	.loc 2 1216 0
	stfs 11,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE423:
.LBE422:
.LBB424:
.LBB425:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE425:
.LBE424:
.LBB426:
.LBB427:
	.loc 2 1292 0
	stfs 31,0(29)
	.loc 2 1293 0
	stfs 31,0(29)
.LBE427:
.LBE426:
.LBB428:
.LBB429:
	.loc 2 1141 0
	stfs 13,0(29)
	.loc 2 1142 0
	stfs 0,0(29)
	.loc 2 1143 0
	stfs 13,0(29)
.LBE429:
.LBE428:
.LBB430:
.LBB431:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 13,0(29)
.LBE431:
.LBE430:
.LBB432:
.LBB433:
	.loc 2 1216 0
	stfs 11,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE433:
.LBE432:
.LBB434:
.LBB435:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE435:
.LBE434:
.LBB436:
.LBB437:
	.loc 2 1292 0
	stfs 0,0(29)
	.loc 2 1293 0
	stfs 31,0(29)
.LBE437:
.LBE436:
.LBB438:
.LBB439:
	.loc 2 1141 0
	stfs 13,0(29)
	.loc 2 1142 0
	stfs 13,0(29)
	.loc 2 1143 0
	stfs 13,0(29)
.LBE439:
.LBE438:
.LBB440:
.LBB441:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 13,0(29)
.LBE441:
.LBE440:
.LBB442:
.LBB443:
	.loc 2 1216 0
	stfs 11,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE443:
.LBE442:
.LBB444:
.LBB445:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE445:
.LBE444:
.LBB446:
.LBB447:
	.loc 2 1292 0
	stfs 0,0(29)
	.loc 2 1293 0
	stfs 0,0(29)
.LBE447:
.LBE446:
.LBB448:
.LBB449:
	.loc 2 1141 0
	stfs 13,0(29)
	.loc 2 1142 0
	stfs 13,0(29)
	.loc 2 1143 0
	stfs 13,0(29)
.LBE449:
.LBE448:
.LBB450:
.LBB451:
	.loc 2 1216 0
	stfs 13,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE451:
.LBE450:
.LBB452:
.LBB453:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE453:
.LBE452:
.LBB454:
.LBB285:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE285:
.LBE454:
.LBB455:
.LBB275:
	.loc 2 1292 0
	stfs 31,0(29)
	.loc 2 1293 0
	stfs 0,0(29)
.LBE275:
.LBE455:
.LBB456:
.LBB281:
	.loc 2 1141 0
	stfs 13,0(29)
	.loc 2 1142 0
	stfs 0,0(29)
	.loc 2 1143 0
	stfs 13,0(29)
.LBE281:
.LBE456:
.LBB457:
.LBB458:
	.loc 2 1216 0
	stfs 13,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE458:
.LBE457:
.LBB459:
.LBB460:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE460:
.LBE459:
.LBB461:
.LBB462:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE462:
.LBE461:
.LBB463:
.LBB464:
	.loc 2 1292 0
	stfs 31,0(29)
	.loc 2 1293 0
	stfs 31,0(29)
.LBE464:
.LBE463:
.LBB465:
.LBB466:
	.loc 2 1141 0
	stfs 13,0(29)
	.loc 2 1142 0
	stfs 0,0(29)
	.loc 2 1143 0
	stfs 0,0(29)
.LBE466:
.LBE465:
.LBB467:
.LBB468:
	.loc 2 1216 0
	stfs 13,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE468:
.LBE467:
.LBB469:
.LBB470:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE470:
.LBE469:
.LBB471:
.LBB472:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE472:
.LBE471:
.LBB473:
.LBB474:
	.loc 2 1292 0
	stfs 0,0(29)
	.loc 2 1293 0
	stfs 31,0(29)
.LBE474:
.LBE473:
.LBB475:
.LBB476:
	.loc 2 1141 0
	stfs 13,0(29)
	.loc 2 1142 0
	stfs 13,0(29)
	.loc 2 1143 0
	stfs 0,0(29)
.LBE476:
.LBE475:
.LBB477:
.LBB478:
	.loc 2 1216 0
	stfs 13,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE478:
.LBE477:
.LBB479:
.LBB480:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 12,0(29)
.LBE480:
.LBE479:
.LBB481:
.LBB482:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE482:
.LBE481:
.LBB483:
.LBB484:
	.loc 2 1292 0
	stfs 0,0(29)
	.loc 2 1293 0
	stfs 0,0(29)
.LBE484:
.LBE483:
.LBB485:
.LBB486:
	.loc 2 1141 0
	stfs 0,0(29)
	.loc 2 1142 0
	stfs 13,0(29)
	.loc 2 1143 0
	stfs 0,0(29)
.LBE486:
.LBE485:
.LBB487:
.LBB488:
	.loc 2 1216 0
	stfs 0,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE488:
.LBE487:
.LBB489:
.LBB310:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 11,0(29)
.LBE310:
.LBE489:
.LBB490:
.LBB491:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE491:
.LBE490:
.LBB492:
.LBB493:
	.loc 2 1292 0
	stfs 31,0(29)
	.loc 2 1293 0
	stfs 0,0(29)
.LBE493:
.LBE492:
.LBB494:
.LBB495:
	.loc 2 1141 0
	stfs 0,0(29)
	.loc 2 1142 0
	stfs 0,0(29)
	.loc 2 1143 0
	stfs 0,0(29)
.LBE495:
.LBE494:
.LBB496:
.LBB497:
	.loc 2 1216 0
	stfs 0,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE497:
.LBE496:
.LBB498:
.LBB499:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 11,0(29)
.LBE499:
.LBE498:
.LBB500:
.LBB501:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE501:
.LBE500:
.LBB502:
.LBB503:
	.loc 2 1292 0
	stfs 31,0(29)
	.loc 2 1293 0
	stfs 31,0(29)
.LBE503:
.LBE502:
.LBB504:
.LBB505:
	.loc 2 1141 0
	stfs 0,0(29)
	.loc 2 1142 0
	stfs 0,0(29)
	.loc 2 1143 0
	stfs 13,0(29)
.LBE505:
.LBE504:
.LBB506:
.LBB507:
	.loc 2 1216 0
	stfs 0,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE507:
.LBE506:
.LBB508:
.LBB509:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 11,0(29)
.LBE509:
.LBE508:
.LBB510:
.LBB511:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE511:
.LBE510:
.LBB512:
.LBB513:
	.loc 2 1292 0
	stfs 0,0(29)
	.loc 2 1293 0
	stfs 31,0(29)
.LBE513:
.LBE512:
.LBB514:
.LBB515:
	.loc 2 1141 0
	stfs 0,0(29)
	.loc 2 1142 0
	stfs 13,0(29)
	.loc 2 1143 0
	stfs 13,0(29)
.LBE515:
.LBE514:
.LBB516:
.LBB517:
	.loc 2 1216 0
	stfs 0,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE517:
.LBE516:
.LBB518:
.LBB519:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 31,0(29)
	.loc 2 1218 0
	stfs 11,0(29)
.LBE519:
.LBE518:
.LBB520:
.LBB521:
	.loc 2 1216 0
	stfs 31,0(29)
	.loc 2 1217 0
	stfs 12,0(29)
	.loc 2 1218 0
	stfs 31,0(29)
.LBE521:
.LBE520:
.LBB522:
.LBB523:
	.loc 2 1292 0
	stfs 0,0(29)
	.loc 2 1293 0
	stfs 0,0(29)
.LBE523:
.LBE522:
	.loc 1 743 0
	bl GX_Flush
	.loc 1 567 0
	cmpwi 7,26,2
	addi 26,26,1
	bne+ 7,.L51
	.loc 1 745 0
	li 3,1
	.loc 1 749 0
	slwi 29,18,2
	.loc 1 745 0
	bl GX_SetAlphaUpdate
	.loc 1 747 0
	li 5,1
	li 4,3
	li 3,1
	bl GX_SetZMode
	.loc 1 748 0
	li 3,1
	bl GX_SetColorUpdate
	.loc 1 749 0
	lis 9,.LANCHOR1@ha
	la 9,.LANCHOR1@l(9)
	li 4,1
	add 29,29,9
	lwz 3,4(29)
	bl GX_CopyDisp
	.loc 1 751 0
	bl GX_DrawDone
	.loc 1 753 0
	lwz 3,4(29)
	bl VIDEO_SetNextFramebuffer
	.loc 1 754 0
	lwz 0,720(1)
	cmpwi 7,0,0
	bne- 7,.L64
.L53:
	.loc 1 758 0
	bl VIDEO_Flush
	.loc 1 759 0
	cmpwi 7,17,0
	bne- 7,.L65
.L55:
	.loc 1 762 0
	li 0,0
	.loc 1 288 0
	fadds 27,27,18
	.loc 1 762 0
	stw 0,720(1)
.LVL42:
	.loc 1 251 0
	bl WPAD_ScanPads
	.loc 1 252 0
	li 3,0
	.loc 1 762 0
	fsubs 26,26,17
	.loc 1 252 0
	bl WPAD_ButtonsDown
	.loc 1 760 0
	xori 18,18,1
	.loc 1 252 0
	andi. 0,3,128
	beq+ 0,.L10
.L62:
	li 3,0
	bl exit
.LVL43:
.L42:
	.loc 1 293 0
	fcmpu 7,30,31
	cror 30,28,30
	bne+ 7,.L45
.LVL44:
	fadds 30,30,23
	b .L45
.LVL45:
.L36:
	.loc 1 291 0
	fcmpu 7,29,31
	cror 30,28,30
	bne+ 7,.L39
.LVL46:
	fadds 29,29,24
.LVL47:
	b .L39
.LVL48:
.L63:
	.loc 1 403 0
	li 9,0
	li 10,1
	li 8,0
	li 3,2
	li 4,0
	li 5,0
	li 6,7
	li 7,1
	stw 31,12(1)
	.loc 1 407 0
	li 29,3
	.loc 1 403 0
	stw 31,8(1)
	bl GX_SetTevIndirect
	.loc 1 404 0
	li 3,2
	li 4,15
	li 5,8
	li 6,4
	li 7,0
	.loc 1 407 0
	li 30,4
	.loc 1 404 0
	bl GX_SetTevColorIn
	.loc 1 406 0
	li 3,2
	li 4,0
	li 5,0
	li 6,0
	li 7,1
	li 8,0
	bl GX_SetTevColorOp
	.loc 1 407 0
	li 3,2
	li 4,3
	li 5,1
	li 6,255
	bl GX_SetTevOrder
	b .L50
.LVL49:
.L65:
	.loc 1 759 0
	bl VIDEO_WaitVSync
	b .L55
.L64:
	.loc 1 756 0
	li 3,0
	bl VIDEO_SetBlack
	b .L53
.LVL50:
.L6:
.LBE526:
	.loc 1 175 0
	li 3,0
	li 4,0
	bl GX_SetPixelFmt
	b .L8
.LVL51:
.L61:
	.loc 1 152 0
	bl VIDEO_WaitVSync
	b .L4
.LBE528:
.LFE64:
	.size	main, .-main
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	_ZZ8setlightPA4_ffff9_gx_colorS1_S1_E3C.0, @object
	.size	_ZZ8setlightPA4_ffff9_gx_colorS1_S1_E3C.0, 12
_ZZ8setlightPA4_ffff9_gx_colorS1_S1_E3C.0:
	.long	0
	.long	1065353216
	.long	0
	.type	_ZZ4mainE3C.1, @object
	.size	_ZZ4mainE3C.1, 48
_ZZ4mainE3C.1:
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
	.type	_ZZ4mainE3C.2, @object
	.size	_ZZ4mainE3C.2, 12
_ZZ4mainE3C.2:
	.zero	12
	.type	_ZZ4mainE3C.3, @object
	.size	_ZZ4mainE3C.3, 12
_ZZ4mainE3C.3:
	.long	0
	.long	1065353216
	.long	0
	.type	_ZZ4mainE3C.4, @object
	.size	_ZZ4mainE3C.4, 12
_ZZ4mainE3C.4:
	.long	0
	.long	0
	.long	-1082130432
	.type	_ZZ4mainE4C.10, @object
	.size	_ZZ4mainE4C.10, 12
_ZZ4mainE4C.10:
	.long	1065353216
	.long	0
	.long	0
	.type	_ZZ4mainE4C.11, @object
	.size	_ZZ4mainE4C.11, 36
_ZZ4mainE4C.11:
	.long	1065353216
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.type	_ZZ4mainE4C.17, @object
	.size	_ZZ4mainE4C.17, 48
_ZZ4mainE4C.17:
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.type	_ZZ4mainE4C.18, @object
	.size	_ZZ4mainE4C.18, 24
_ZZ4mainE4C.18:
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
.LC3:
	.4byte	1065353216
.LC4:
	.4byte	1148846080
.LC5:
	.4byte	1070141403
.LC11:
	.4byte	0
.LC13:
	.4byte	1501560832
.LC14:
	.4byte	1119092736
.LC15:
	.4byte	1061158912
.LC16:
	.4byte	1133903872
.LC17:
	.4byte	1090519040
.LC18:
	.4byte	1110704128
.LC19:
	.4byte	1048576000
.LC20:
	.4byte	1135869952
.LC21:
	.4byte	1016003125
.LC23:
	.4byte	1501560836
.LC24:
	.4byte	1073741824
.LC25:
	.4byte	-1073741824
.LC26:
	.4byte	-1082130432
.LC27:
	.4byte	1040187392
.LC28:
	.4byte	-1107296256
.LC29:
	.4byte	1056964608
.LC30:
	.4byte	1041865114
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
	.uleb128 0xe0
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI9-.LCFI2
	.byte	0x9a
	.uleb128 0x10
	.byte	0x99
	.uleb128 0x11
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI11-.LCFI9
	.byte	0x9c
	.uleb128 0xe
	.byte	0x9b
	.uleb128 0xf
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x9d
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI15-.LCFI12
	.byte	0x98
	.uleb128 0x12
	.byte	0x97
	.uleb128 0x13
	.byte	0x96
	.uleb128 0x14
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI16-.LFB64
	.byte	0xe
	.uleb128 0x3b0
	.byte	0x4
	.4byte	.LCFI53-.LCFI16
	.byte	0x9e
	.uleb128 0x26
	.byte	0x9d
	.uleb128 0x27
	.byte	0x9c
	.uleb128 0x28
	.byte	0x9b
	.uleb128 0x29
	.byte	0x9a
	.uleb128 0x2a
	.byte	0x99
	.uleb128 0x2b
	.byte	0x98
	.uleb128 0x2c
	.byte	0x96
	.uleb128 0x2e
	.byte	0x95
	.uleb128 0x2f
	.byte	0x94
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x31
	.byte	0x92
	.uleb128 0x32
	.byte	0x91
	.uleb128 0x33
	.byte	0x90
	.uleb128 0x34
	.byte	0x8f
	.uleb128 0x35
	.byte	0x8e
	.uleb128 0x36
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
	.byte	0xaf
	.uleb128 0x22
	.byte	0xae
	.uleb128 0x24
	.byte	0x97
	.uleb128 0x2d
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI54-.LCFI53
	.byte	0x9f
	.uleb128 0x25
	.align 2
.LEFDE2:
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.4byte	.LECIE1-.LSCIE1
.LSCIE1:
	.4byte	0x0
	.byte	0x1
	.string	"zP"
	.uleb128 0x1
	.sleb128 -4
	.byte	0x41
	.uleb128 0x5
	.byte	0x0
	.4byte	__gxx_personality_v0
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.align 2
.LECIE1:
.LSFDE1:
	.4byte	.LEFDE1-.LASFDE1
.LASFDE1:
	.4byte	.LASFDE1-.Lframe1
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI0-.LFB63
	.byte	0xe
	.uleb128 0xe0
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI9-.LCFI2
	.byte	0x9a
	.uleb128 0x10
	.byte	0x99
	.uleb128 0x11
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0xbb
	.uleb128 0xa
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI11-.LCFI9
	.byte	0x9c
	.uleb128 0xe
	.byte	0x9b
	.uleb128 0xf
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x9d
	.uleb128 0xd
	.byte	0x4
	.4byte	.LCFI15-.LCFI12
	.byte	0x98
	.uleb128 0x12
	.byte	0x97
	.uleb128 0x13
	.byte	0x96
	.uleb128 0x14
	.align 2
.LEFDE1:
.LSFDE3:
	.4byte	.LEFDE3-.LASFDE3
.LASFDE3:
	.4byte	.LASFDE3-.Lframe1
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI16-.LFB64
	.byte	0xe
	.uleb128 0x3b0
	.byte	0x4
	.4byte	.LCFI53-.LCFI16
	.byte	0x9e
	.uleb128 0x26
	.byte	0x9d
	.uleb128 0x27
	.byte	0x9c
	.uleb128 0x28
	.byte	0x9b
	.uleb128 0x29
	.byte	0x9a
	.uleb128 0x2a
	.byte	0x99
	.uleb128 0x2b
	.byte	0x98
	.uleb128 0x2c
	.byte	0x96
	.uleb128 0x2e
	.byte	0x95
	.uleb128 0x2f
	.byte	0x94
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x31
	.byte	0x92
	.uleb128 0x32
	.byte	0x91
	.uleb128 0x33
	.byte	0x90
	.uleb128 0x34
	.byte	0x8f
	.uleb128 0x35
	.byte	0x8e
	.uleb128 0x36
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
	.byte	0xaf
	.uleb128 0x22
	.byte	0xae
	.uleb128 0x24
	.byte	0x97
	.uleb128 0x2d
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI54-.LCFI53
	.byte	0x9f
	.uleb128 0x25
	.align 2
.LEFDE3:
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
	.sleb128 224
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL9-.Ltext0
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
	.4byte	.LVL10-.Ltext0
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
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL8-.Ltext0
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
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL7-.Ltext0
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
	.byte	0x66
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
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LFB64-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 944
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
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST15:
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
.LLST16:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -224
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:/Utils/devkitPro/libogc/include/gctypes.h"
	.file 4 "c:/Utils/devkitPro/libogc/include/ogc/gx_struct.h"
	.file 5 "c:/Utils/devkitPro/libogc/include/ogc/gu.h"
	.file 6 "c:/Utils/devkitPro/libogc/include/ogc/tpl.h"
	.file 7 "d:/data/nintendo/3dportals/build/crate_tpl.h"
	.file 8 "<built-in>"
	.section	.debug_info
	.4byte	0x189c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0x4
	.4byte	.LASF94
	.4byte	.LASF95
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x8
	.4byte	0xa7
	.4byte	0xda
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x3c
	.byte	0x4
	.byte	0x3a
	.4byte	0x19c
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3b
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3c
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3d
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3e
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0x3f
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x4
	.byte	0x40
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x4
	.byte	0x41
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0x42
	.4byte	0x9c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x4
	.byte	0x43
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF23
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
	.4byte	.LASF24
	.byte	0x4
	.byte	0x46
	.4byte	0x19c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.byte	0x47
	.4byte	0x1b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0x0
	.uleb128 0x8
	.4byte	0x92
	.4byte	0x1b2
	.uleb128 0x9
	.4byte	0x2c
	.byte	0xb
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0x0
	.uleb128 0x8
	.4byte	0x92
	.4byte	0x1c2
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x6
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x4
	.byte	0x48
	.4byte	0xda
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xc
	.byte	0x5
	.byte	0x27
	.4byte	0x1fe
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
	.4byte	.LASF29
	.byte	0x5
	.byte	0x29
	.4byte	0x1cd
	.uleb128 0x7
	.string	"Mtx"
	.byte	0x5
	.byte	0x2f
	.4byte	0x214
	.uleb128 0x8
	.4byte	0xb2
	.4byte	0x22a
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x3
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x230
	.uleb128 0x8
	.4byte	0xb2
	.4byte	0x240
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x3
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x5
	.byte	0x35
	.4byte	0x24b
	.uleb128 0x8
	.4byte	0xb2
	.4byte	0x261
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x3
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x3
	.byte	0x0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x4
	.byte	0x2
	.2byte	0x3b8
	.4byte	0x2a3
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
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x3bd
	.4byte	0x261
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x20
	.byte	0x2
	.2byte	0x3c6
	.4byte	0x2cc
	.uleb128 0xf
	.string	"val"
	.byte	0x2
	.2byte	0x3c7
	.4byte	0xca
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x2
	.2byte	0x3c8
	.4byte	0x2af
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x40
	.byte	0x2
	.2byte	0x3d6
	.4byte	0x2f5
	.uleb128 0xf
	.string	"val"
	.byte	0x2
	.2byte	0x3d7
	.4byte	0x2f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0xa7
	.4byte	0x305
	.uleb128 0x9
	.4byte	0x2c
	.byte	0xf
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x3d8
	.4byte	0x2d8
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x6
	.byte	0xa
	.4byte	0x3d
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x10
	.byte	0x6
	.byte	0xd
	.4byte	0x361
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0xe
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0xf
	.4byte	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x10
	.4byte	0x3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x11
	.4byte	0x311
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x6
	.byte	0x12
	.4byte	0x31c
	.uleb128 0x11
	.string	"std"
	.byte	0x8
	.byte	0x0
	.uleb128 0x12
	.byte	0x1
	.byte	0xf
	.4byte	0x36c
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF96
	.byte	0x1
	.byte	0x2d
	.4byte	.LASF97
	.4byte	0x1fe
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LLST0
	.4byte	0x473
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x1
	.byte	0x2d
	.4byte	0x22a
	.4byte	.LLST1
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2d
	.4byte	0xb2
	.4byte	.LLST2
	.uleb128 0x15
	.string	"phi"
	.byte	0x1
	.byte	0x2d
	.4byte	0xb2
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0x2d
	.4byte	0xb2
	.4byte	.LLST4
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.byte	0x2d
	.4byte	0x2a3
	.4byte	.LLST5
	.uleb128 0x14
	.4byte	.LASF48
	.byte	0x1
	.byte	0x2d
	.4byte	0x2a3
	.4byte	.LLST6
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x2d
	.4byte	0x2a3
	.4byte	.LLST7
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x1
	.byte	0x2f
	.4byte	0x1cd
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x17
	.4byte	.LASF50
	.byte	0x1
	.byte	0x2f
	.4byte	0x1fe
	.uleb128 0x18
	.4byte	.LASF51
	.byte	0x1
	.byte	0x30
	.4byte	0xb2
	.4byte	.LLST8
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0x1
	.byte	0x30
	.4byte	0xb2
	.4byte	.LLST9
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x1
	.byte	0x31
	.4byte	0x305
	.byte	0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x19
	.string	"rad"
	.byte	0x1
	.byte	0x42
	.4byte	0x84
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0x1
	.byte	0x46
	.4byte	0x209
	.byte	0x3
	.byte	0x91
	.sleb128 -204
	.uleb128 0x16
	.4byte	.LASF55
	.byte	0x1
	.byte	0x47
	.4byte	0x1fe
	.byte	0x3
	.byte	0x91
	.sleb128 -216
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF56
	.byte	0x2
	.2byte	0x473
	.byte	0x3
	.4byte	0x49f
	.uleb128 0x1b
	.string	"x"
	.byte	0x2
	.2byte	0x473
	.4byte	0xb2
	.uleb128 0x1b
	.string	"y"
	.byte	0x2
	.2byte	0x473
	.4byte	0xb2
	.uleb128 0x1b
	.string	"z"
	.byte	0x2
	.2byte	0x473
	.4byte	0xb2
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF57
	.byte	0x2
	.2byte	0x4be
	.byte	0x3
	.4byte	0x4ce
	.uleb128 0x1b
	.string	"nx"
	.byte	0x2
	.2byte	0x4be
	.4byte	0xb2
	.uleb128 0x1b
	.string	"ny"
	.byte	0x2
	.2byte	0x4be
	.4byte	0xb2
	.uleb128 0x1b
	.string	"nz"
	.byte	0x2
	.2byte	0x4be
	.4byte	0xb2
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF58
	.byte	0x2
	.2byte	0x50a
	.byte	0x3
	.4byte	0x4f0
	.uleb128 0x1b
	.string	"s"
	.byte	0x2
	.2byte	0x50a
	.4byte	0xb2
	.uleb128 0x1b
	.string	"t"
	.byte	0x2
	.2byte	0x50a
	.4byte	0xb2
	.byte	0x0
	.uleb128 0x1c
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x46f
	.byte	0x3
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF99
	.byte	0x1
	.byte	0x68
	.4byte	0x4d
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST10
	.4byte	0x17f7
	.uleb128 0x14
	.4byte	.LASF59
	.byte	0x1
	.byte	0x68
	.4byte	0x4d
	.4byte	.LLST11
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0x68
	.4byte	0xbd
	.4byte	.LLST12
	.uleb128 0x18
	.4byte	.LASF61
	.byte	0x1
	.byte	0x6a
	.4byte	0x9c
	.4byte	.LLST13
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0x6b
	.4byte	0xb2
	.uleb128 0x1e
	.string	"zt"
	.byte	0x1
	.byte	0x6b
	.4byte	0xb2
	.4byte	.LLST14
	.uleb128 0x18
	.4byte	.LASF17
	.byte	0x1
	.byte	0x6c
	.4byte	0xa7
	.4byte	.LLST15
	.uleb128 0x1e
	.string	"fb"
	.byte	0x1
	.byte	0x6d
	.4byte	0xa7
	.4byte	.LLST16
	.uleb128 0x18
	.4byte	.LASF63
	.byte	0x1
	.byte	0x6e
	.4byte	0xb2
	.4byte	.LLST17
	.uleb128 0x18
	.4byte	.LASF64
	.byte	0x1
	.byte	0x6f
	.4byte	0xa7
	.4byte	.LLST18
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.byte	0x70
	.4byte	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0x71
	.4byte	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -784
	.uleb128 0x16
	.4byte	.LASF67
	.byte	0x1
	.byte	0x72
	.4byte	0x2cc
	.byte	0x3
	.byte	0x91
	.sleb128 -752
	.uleb128 0x16
	.4byte	.LASF68
	.byte	0x1
	.byte	0x74
	.4byte	0x209
	.byte	0x3
	.byte	0x91
	.sleb128 -684
	.uleb128 0x16
	.4byte	.LASF69
	.byte	0x1
	.byte	0x78
	.4byte	0x209
	.byte	0x3
	.byte	0x91
	.sleb128 -636
	.uleb128 0x16
	.4byte	.LASF44
	.byte	0x1
	.byte	0x7c
	.4byte	0x209
	.byte	0x3
	.byte	0x91
	.sleb128 -588
	.uleb128 0x16
	.4byte	.LASF70
	.byte	0x1
	.byte	0x7d
	.4byte	0x209
	.byte	0x3
	.byte	0x91
	.sleb128 -540
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x1
	.byte	0x7d
	.4byte	0x209
	.byte	0x3
	.byte	0x91
	.sleb128 -492
	.uleb128 0x19
	.string	"mvi"
	.byte	0x1
	.byte	0x7d
	.4byte	0x209
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x1
	.byte	0x7e
	.4byte	0x240
	.byte	0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.byte	0x7f
	.4byte	0x3d
	.4byte	.LLST19
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x1
	.byte	0x80
	.4byte	0x2a3
	.4byte	.LLST20
	.uleb128 0x1f
	.string	"cam"
	.byte	0x1
	.byte	0x81
	.4byte	0x1fe
	.byte	0x3
	.byte	0x91
	.sleb128 -928
	.uleb128 0x1f
	.string	"up"
	.byte	0x1
	.byte	0x82
	.4byte	0x1fe
	.byte	0x3
	.byte	0x91
	.sleb128 -916
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x1
	.byte	0x83
	.4byte	0x1fe
	.byte	0x3
	.byte	0x91
	.sleb128 -904
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x1
	.byte	0x84
	.4byte	0x361
	.byte	0x3
	.byte	0x91
	.sleb128 -856
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x1
	.byte	0xd3
	.4byte	0x1fe
	.byte	0x3
	.byte	0x91
	.sleb128 -892
	.uleb128 0x19
	.string	"w"
	.byte	0x1
	.byte	0xd9
	.4byte	0xb2
	.uleb128 0x19
	.string	"h"
	.byte	0x1
	.byte	0xda
	.4byte	0xb2
	.uleb128 0x19
	.string	"f"
	.byte	0x1
	.byte	0xde
	.4byte	0xb2
	.uleb128 0x19
	.string	"n"
	.byte	0x1
	.byte	0xdf
	.4byte	0xb2
	.uleb128 0x19
	.string	"tmp"
	.byte	0x1
	.byte	0xe0
	.4byte	0xb2
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x1
	.byte	0xe2
	.4byte	0x240
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x1
	.byte	0xec
	.4byte	0x17f7
	.byte	0x3
	.byte	0x91
	.sleb128 -720
	.uleb128 0x19
	.string	"rot"
	.byte	0x1
	.byte	0xf2
	.4byte	0xb2
	.uleb128 0x1e
	.string	"dir"
	.byte	0x1
	.byte	0xf3
	.4byte	0xb2
	.4byte	.LLST21
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x1
	.byte	0xf6
	.4byte	0x92
	.4byte	.LLST22
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x1
	.byte	0xf7
	.4byte	0x92
	.4byte	.LLST23
	.uleb128 0x1e
	.string	"dst"
	.byte	0x1
	.byte	0xf8
	.4byte	0xb2
	.4byte	.LLST24
	.uleb128 0x20
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x21
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x102
	.4byte	0xa7
	.4byte	.LLST25
	.uleb128 0x21
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x103
	.4byte	0xa7
	.4byte	.LLST26
	.uleb128 0x22
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x110
	.4byte	0x1fe
	.byte	0x3
	.byte	0x91
	.sleb128 -880
	.uleb128 0x22
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x111
	.4byte	0x209
	.byte	0x3
	.byte	0x91
	.sleb128 -444
	.uleb128 0x22
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x11f
	.4byte	0x1fe
	.byte	0x3
	.byte	0x91
	.sleb128 -868
	.uleb128 0x22
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x133
	.4byte	0x305
	.byte	0x3
	.byte	0x91
	.sleb128 -332
	.uleb128 0x21
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x153
	.4byte	0x92
	.4byte	.LLST27
	.uleb128 0x22
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x161
	.4byte	0x1807
	.byte	0x3
	.byte	0x91
	.sleb128 -840
	.uleb128 0x23
	.string	"idx"
	.byte	0x1
	.2byte	0x236
	.4byte	0x92
	.uleb128 0x24
	.4byte	0x473
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.2byte	0x24c
	.4byte	0x7d1
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x24
	.4byte	0x4ce
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x250
	.4byte	0x7ec
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x24
	.4byte	0x4ce
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x2b9
	.4byte	0x807
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x24
	.4byte	0x49f
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x24e
	.4byte	0x827
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x24
	.4byte	0x473
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.2byte	0x2bb
	.4byte	0x847
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x24
	.4byte	0x49f
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0x2b8
	.4byte	0x867
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB287
	.4byte	.LBE287
	.byte	0x1
	.2byte	0x24d
	.4byte	0x88b
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB290
	.4byte	.LBE290
	.byte	0x1
	.2byte	0x24f
	.4byte	0x8af
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB293
	.4byte	.LBE293
	.byte	0x1
	.2byte	0x252
	.4byte	0x8d3
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB295
	.4byte	.LBE295
	.byte	0x1
	.2byte	0x253
	.4byte	0x8f7
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB297
	.4byte	.LBE297
	.byte	0x1
	.2byte	0x254
	.4byte	0x91b
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB299
	.4byte	.LBE299
	.byte	0x1
	.2byte	0x255
	.4byte	0x93f
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB301
	.4byte	.LBE301
	.byte	0x1
	.2byte	0x256
	.4byte	0x95e
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB303
	.4byte	.LBE303
	.byte	0x1
	.2byte	0x258
	.4byte	0x982
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x24
	.4byte	0x49f
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x1
	.2byte	0x267
	.4byte	0x9a2
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x24
	.4byte	0x49f
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x1
	.2byte	0x2d0
	.4byte	0x9c2
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB311
	.4byte	.LBE311
	.byte	0x1
	.2byte	0x259
	.4byte	0x9e6
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB313
	.4byte	.LBE313
	.byte	0x1
	.2byte	0x25a
	.4byte	0xa0a
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB315
	.4byte	.LBE315
	.byte	0x1
	.2byte	0x25b
	.4byte	0xa2e
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB317
	.4byte	.LBE317
	.byte	0x1
	.2byte	0x25c
	.4byte	0xa4d
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB319
	.4byte	.LBE319
	.byte	0x1
	.2byte	0x25e
	.4byte	0xa71
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB321
	.4byte	.LBE321
	.byte	0x1
	.2byte	0x25f
	.4byte	0xa95
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB323
	.4byte	.LBE323
	.byte	0x1
	.2byte	0x260
	.4byte	0xab9
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB325
	.4byte	.LBE325
	.byte	0x1
	.2byte	0x261
	.4byte	0xadd
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB327
	.4byte	.LBE327
	.byte	0x1
	.2byte	0x262
	.4byte	0xafc
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB329
	.4byte	.LBE329
	.byte	0x1
	.2byte	0x265
	.4byte	0xb20
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB331
	.4byte	.LBE331
	.byte	0x1
	.2byte	0x266
	.4byte	0xb44
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB334
	.4byte	.LBE334
	.byte	0x1
	.2byte	0x268
	.4byte	0xb68
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB336
	.4byte	.LBE336
	.byte	0x1
	.2byte	0x269
	.4byte	0xb87
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB338
	.4byte	.LBE338
	.byte	0x1
	.2byte	0x26b
	.4byte	0xbab
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB340
	.4byte	.LBE340
	.byte	0x1
	.2byte	0x26c
	.4byte	0xbcf
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB342
	.4byte	.LBE342
	.byte	0x1
	.2byte	0x26d
	.4byte	0xbf3
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB344
	.4byte	.LBE344
	.byte	0x1
	.2byte	0x26e
	.4byte	0xc17
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB346
	.4byte	.LBE346
	.byte	0x1
	.2byte	0x26f
	.4byte	0xc36
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB348
	.4byte	.LBE348
	.byte	0x1
	.2byte	0x271
	.4byte	0xc5a
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB350
	.4byte	.LBE350
	.byte	0x1
	.2byte	0x272
	.4byte	0xc7e
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB352
	.4byte	.LBE352
	.byte	0x1
	.2byte	0x273
	.4byte	0xca2
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB354
	.4byte	.LBE354
	.byte	0x1
	.2byte	0x274
	.4byte	0xcc6
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB356
	.4byte	.LBE356
	.byte	0x1
	.2byte	0x275
	.4byte	0xce5
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB358
	.4byte	.LBE358
	.byte	0x1
	.2byte	0x277
	.4byte	0xd09
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB360
	.4byte	.LBE360
	.byte	0x1
	.2byte	0x278
	.4byte	0xd2d
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB362
	.4byte	.LBE362
	.byte	0x1
	.2byte	0x279
	.4byte	0xd51
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB364
	.4byte	.LBE364
	.byte	0x1
	.2byte	0x27a
	.4byte	0xd75
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB366
	.4byte	.LBE366
	.byte	0x1
	.2byte	0x27b
	.4byte	0xd94
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB368
	.4byte	.LBE368
	.byte	0x1
	.2byte	0x27e
	.4byte	0xdb8
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB370
	.4byte	.LBE370
	.byte	0x1
	.2byte	0x27f
	.4byte	0xddc
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB372
	.4byte	.LBE372
	.byte	0x1
	.2byte	0x280
	.4byte	0xe00
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB374
	.4byte	.LBE374
	.byte	0x1
	.2byte	0x281
	.4byte	0xe24
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB376
	.4byte	.LBE376
	.byte	0x1
	.2byte	0x282
	.4byte	0xe43
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB378
	.4byte	.LBE378
	.byte	0x1
	.2byte	0x285
	.4byte	0xe67
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB380
	.4byte	.LBE380
	.byte	0x1
	.2byte	0x286
	.4byte	0xe8b
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB382
	.4byte	.LBE382
	.byte	0x1
	.2byte	0x287
	.4byte	0xeaf
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB384
	.4byte	.LBE384
	.byte	0x1
	.2byte	0x288
	.4byte	0xed3
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB386
	.4byte	.LBE386
	.byte	0x1
	.2byte	0x289
	.4byte	0xef2
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB388
	.4byte	.LBE388
	.byte	0x1
	.2byte	0x28c
	.4byte	0xf16
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB390
	.4byte	.LBE390
	.byte	0x1
	.2byte	0x28d
	.4byte	0xf3a
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB392
	.4byte	.LBE392
	.byte	0x1
	.2byte	0x28e
	.4byte	0xf5e
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB394
	.4byte	.LBE394
	.byte	0x1
	.2byte	0x28f
	.4byte	0xf82
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB396
	.4byte	.LBE396
	.byte	0x1
	.2byte	0x290
	.4byte	0xfa1
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB398
	.4byte	.LBE398
	.byte	0x1
	.2byte	0x293
	.4byte	0xfc5
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB400
	.4byte	.LBE400
	.byte	0x1
	.2byte	0x294
	.4byte	0xfe9
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB402
	.4byte	.LBE402
	.byte	0x1
	.2byte	0x295
	.4byte	0x100d
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB404
	.4byte	.LBE404
	.byte	0x1
	.2byte	0x296
	.4byte	0x1031
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB406
	.4byte	.LBE406
	.byte	0x1
	.2byte	0x297
	.4byte	0x1050
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB408
	.4byte	.LBE408
	.byte	0x1
	.2byte	0x29c
	.4byte	0x1074
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB410
	.4byte	.LBE410
	.byte	0x1
	.2byte	0x29d
	.4byte	0x1098
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB412
	.4byte	.LBE412
	.byte	0x1
	.2byte	0x29e
	.4byte	0x10bc
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB414
	.4byte	.LBE414
	.byte	0x1
	.2byte	0x29f
	.4byte	0x10e0
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB416
	.4byte	.LBE416
	.byte	0x1
	.2byte	0x2a0
	.4byte	0x10ff
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB418
	.4byte	.LBE418
	.byte	0x1
	.2byte	0x2a2
	.4byte	0x1123
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB420
	.4byte	.LBE420
	.byte	0x1
	.2byte	0x2a3
	.4byte	0x1147
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB422
	.4byte	.LBE422
	.byte	0x1
	.2byte	0x2a4
	.4byte	0x116b
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB424
	.4byte	.LBE424
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x118f
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB426
	.4byte	.LBE426
	.byte	0x1
	.2byte	0x2a6
	.4byte	0x11ae
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB428
	.4byte	.LBE428
	.byte	0x1
	.2byte	0x2a8
	.4byte	0x11d2
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB430
	.4byte	.LBE430
	.byte	0x1
	.2byte	0x2a9
	.4byte	0x11f6
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB432
	.4byte	.LBE432
	.byte	0x1
	.2byte	0x2aa
	.4byte	0x121a
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB434
	.4byte	.LBE434
	.byte	0x1
	.2byte	0x2ab
	.4byte	0x123e
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB436
	.4byte	.LBE436
	.byte	0x1
	.2byte	0x2ac
	.4byte	0x125d
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB438
	.4byte	.LBE438
	.byte	0x1
	.2byte	0x2ae
	.4byte	0x1281
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB440
	.4byte	.LBE440
	.byte	0x1
	.2byte	0x2af
	.4byte	0x12a5
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB442
	.4byte	.LBE442
	.byte	0x1
	.2byte	0x2b0
	.4byte	0x12c9
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB444
	.4byte	.LBE444
	.byte	0x1
	.2byte	0x2b1
	.4byte	0x12ed
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB446
	.4byte	.LBE446
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x130c
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB448
	.4byte	.LBE448
	.byte	0x1
	.2byte	0x2b5
	.4byte	0x1330
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB450
	.4byte	.LBE450
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x1354
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB452
	.4byte	.LBE452
	.byte	0x1
	.2byte	0x2b7
	.4byte	0x1378
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB457
	.4byte	.LBE457
	.byte	0x1
	.2byte	0x2bc
	.4byte	0x139c
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB459
	.4byte	.LBE459
	.byte	0x1
	.2byte	0x2bd
	.4byte	0x13c0
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB461
	.4byte	.LBE461
	.byte	0x1
	.2byte	0x2be
	.4byte	0x13e4
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB463
	.4byte	.LBE463
	.byte	0x1
	.2byte	0x2bf
	.4byte	0x1403
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB465
	.4byte	.LBE465
	.byte	0x1
	.2byte	0x2c1
	.4byte	0x1427
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB467
	.4byte	.LBE467
	.byte	0x1
	.2byte	0x2c2
	.4byte	0x144b
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB469
	.4byte	.LBE469
	.byte	0x1
	.2byte	0x2c3
	.4byte	0x146f
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB471
	.4byte	.LBE471
	.byte	0x1
	.2byte	0x2c4
	.4byte	0x1493
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB473
	.4byte	.LBE473
	.byte	0x1
	.2byte	0x2c5
	.4byte	0x14b2
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB475
	.4byte	.LBE475
	.byte	0x1
	.2byte	0x2c7
	.4byte	0x14d6
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB477
	.4byte	.LBE477
	.byte	0x1
	.2byte	0x2c8
	.4byte	0x14fa
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB479
	.4byte	.LBE479
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x151e
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB481
	.4byte	.LBE481
	.byte	0x1
	.2byte	0x2ca
	.4byte	0x1542
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB483
	.4byte	.LBE483
	.byte	0x1
	.2byte	0x2cb
	.4byte	0x1561
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB485
	.4byte	.LBE485
	.byte	0x1
	.2byte	0x2ce
	.4byte	0x1585
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB487
	.4byte	.LBE487
	.byte	0x1
	.2byte	0x2cf
	.4byte	0x15a9
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB490
	.4byte	.LBE490
	.byte	0x1
	.2byte	0x2d1
	.4byte	0x15cd
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB492
	.4byte	.LBE492
	.byte	0x1
	.2byte	0x2d2
	.4byte	0x15ec
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB494
	.4byte	.LBE494
	.byte	0x1
	.2byte	0x2d4
	.4byte	0x1610
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB496
	.4byte	.LBE496
	.byte	0x1
	.2byte	0x2d5
	.4byte	0x1634
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB498
	.4byte	.LBE498
	.byte	0x1
	.2byte	0x2d6
	.4byte	0x1658
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB500
	.4byte	.LBE500
	.byte	0x1
	.2byte	0x2d7
	.4byte	0x167c
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB502
	.4byte	.LBE502
	.byte	0x1
	.2byte	0x2d8
	.4byte	0x169b
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB504
	.4byte	.LBE504
	.byte	0x1
	.2byte	0x2da
	.4byte	0x16bf
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB506
	.4byte	.LBE506
	.byte	0x1
	.2byte	0x2db
	.4byte	0x16e3
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB508
	.4byte	.LBE508
	.byte	0x1
	.2byte	0x2dc
	.4byte	0x1707
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB510
	.4byte	.LBE510
	.byte	0x1
	.2byte	0x2dd
	.4byte	0x172b
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x4ce
	.4byte	.LBB512
	.4byte	.LBE512
	.byte	0x1
	.2byte	0x2de
	.4byte	0x174a
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.uleb128 0x26
	.4byte	0x473
	.4byte	.LBB514
	.4byte	.LBE514
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x176e
	.uleb128 0x25
	.4byte	0x494
	.uleb128 0x25
	.4byte	0x48a
	.uleb128 0x25
	.4byte	0x480
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB516
	.4byte	.LBE516
	.byte	0x1
	.2byte	0x2e1
	.4byte	0x1792
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB518
	.4byte	.LBE518
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x17b6
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x26
	.4byte	0x49f
	.4byte	.LBB520
	.4byte	.LBE520
	.byte	0x1
	.2byte	0x2e3
	.4byte	0x17da
	.uleb128 0x25
	.4byte	0x4c2
	.uleb128 0x25
	.4byte	0x4b7
	.uleb128 0x25
	.4byte	0x4ac
	.byte	0x0
	.uleb128 0x27
	.4byte	0x4ce
	.4byte	.LBB522
	.4byte	.LBE522
	.byte	0x1
	.2byte	0x2e4
	.uleb128 0x25
	.4byte	0x4e5
	.uleb128 0x25
	.4byte	0x4db
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0x1fe
	.4byte	0x1807
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0x8
	.4byte	0xb2
	.4byte	0x181d
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0x8
	.4byte	0x92
	.4byte	0x1828
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x29
	.4byte	.LASF88
	.byte	0x7
	.byte	0x2
	.4byte	0x181d
	.byte	0x1
	.byte	0x1
	.uleb128 0x29
	.4byte	.LASF89
	.byte	0x7
	.byte	0x3
	.4byte	0x1842
	.byte	0x1
	.byte	0x1
	.uleb128 0x2a
	.4byte	0xa7
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1
	.byte	0x21
	.4byte	0x1858
	.byte	0x5
	.byte	0x3
	.4byte	rmode
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c2
	.uleb128 0x8
	.4byte	0x3d
	.4byte	0x186e
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0x0
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x1
	.byte	0x22
	.4byte	0x185e
	.byte	0x5
	.byte	0x3
	.4byte	frameBuffer
	.uleb128 0x8
	.4byte	0x2a3
	.4byte	0x188f
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0x17
	.4byte	.LASF92
	.byte	0x1
	.byte	0x25
	.4byte	0x189a
	.uleb128 0x2a
	.4byte	0x187f
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
	.uleb128 0x39
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x3a
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x2007
	.uleb128 0xe
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x34
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x18a0
	.4byte	0x37a
	.string	"setlight"
	.4byte	0x4f9
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
	.4byte	.LBB259-.Ltext0
	.4byte	.LBE259-.Ltext0
	.4byte	.LBB526-.Ltext0
	.4byte	.LBE526-.Ltext0
	.4byte	.LBB525-.Ltext0
	.4byte	.LBE525-.Ltext0
	.4byte	.LBB524-.Ltext0
	.4byte	.LBE524-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB260-.Ltext0
	.4byte	.LBE260-.Ltext0
	.4byte	.LBB286-.Ltext0
	.4byte	.LBE286-.Ltext0
	.4byte	.LBB282-.Ltext0
	.4byte	.LBE282-.Ltext0
	.4byte	.LBB272-.Ltext0
	.4byte	.LBE272-.Ltext0
	.4byte	.LBB266-.Ltext0
	.4byte	.LBE266-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB267-.Ltext0
	.4byte	.LBE267-.Ltext0
	.4byte	.LBB292-.Ltext0
	.4byte	.LBE292-.Ltext0
	.4byte	.LBB271-.Ltext0
	.4byte	.LBE271-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB273-.Ltext0
	.4byte	.LBE273-.Ltext0
	.4byte	.LBB455-.Ltext0
	.4byte	.LBE455-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB276-.Ltext0
	.4byte	.LBE276-.Ltext0
	.4byte	.LBB289-.Ltext0
	.4byte	.LBE289-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB279-.Ltext0
	.4byte	.LBE279-.Ltext0
	.4byte	.LBB456-.Ltext0
	.4byte	.LBE456-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB283-.Ltext0
	.4byte	.LBE283-.Ltext0
	.4byte	.LBB454-.Ltext0
	.4byte	.LBE454-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB305-.Ltext0
	.4byte	.LBE305-.Ltext0
	.4byte	.LBB333-.Ltext0
	.4byte	.LBE333-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB308-.Ltext0
	.4byte	.LBE308-.Ltext0
	.4byte	.LBB489-.Ltext0
	.4byte	.LBE489-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"tpl_file"
.LASF65:
	.string	"texture"
.LASF17:
	.string	"xfbHeight"
.LASF78:
	.string	"projMtx"
.LASF81:
	.string	"vsync"
.LASF39:
	.string	"type"
.LASF91:
	.string	"frameBuffer"
.LASF33:
	.string	"_gx_texobj"
.LASF6:
	.string	"long long unsigned int"
.LASF41:
	.string	"texdesc"
.LASF28:
	.string	"_vecf"
.LASF5:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF73:
	.string	"gpfifo"
.LASF35:
	.string	"_gx_litobj"
.LASF70:
	.string	"model"
.LASF50:
	.string	"lpos"
.LASF18:
	.string	"viXOrigin"
.LASF29:
	.string	"Vector"
.LASF94:
	.string	"d:/data/nintendo/3dportals/source/main.cpp"
.LASF9:
	.string	"long int"
.LASF97:
	.string	"_Z8setlightPA4_ffff9_gx_colorS1_S1_"
.LASF22:
	.string	"xfbMode"
.LASF4:
	.string	"short int"
.LASF10:
	.string	"double"
.LASF85:
	.string	"camlightobj"
.LASF57:
	.string	"GX_Normal3f32"
.LASF86:
	.string	"tevstage"
.LASF34:
	.string	"GXTexObj"
.LASF89:
	.string	"crate_tpl_size"
.LASF30:
	.string	"Mtx44"
.LASF0:
	.string	"unsigned int"
.LASF44:
	.string	"view"
.LASF75:
	.string	"look"
.LASF7:
	.string	"long unsigned int"
.LASF43:
	.string	"TPLFile"
.LASF2:
	.string	"short unsigned int"
.LASF58:
	.string	"GX_TexCoord2f32"
.LASF21:
	.string	"viHeight"
.LASF77:
	.string	"lookRotAxis"
.LASF25:
	.string	"vfilter"
.LASF13:
	.string	"bool"
.LASF98:
	.string	"GX_End"
.LASF54:
	.string	"rotMtx"
.LASF93:
	.string	"GNU C++ 4.2.4 (devkitPPC release 17)"
.LASF92:
	.string	"litcolors"
.LASF88:
	.string	"crate_tpl"
.LASF56:
	.string	"GX_Position3f32"
.LASF51:
	.string	"_theta"
.LASF71:
	.string	"modelview"
.LASF64:
	.string	"first_frame"
.LASF40:
	.string	"ntextures"
.LASF23:
	.string	"field_rendering"
.LASF68:
	.string	"nullMtx"
.LASF69:
	.string	"halfMtx"
.LASF62:
	.string	"yscale"
.LASF11:
	.string	"float"
.LASF36:
	.string	"GXLightObj"
.LASF53:
	.string	"lobj"
.LASF48:
	.string	"ambcol"
.LASF72:
	.string	"perspective"
.LASF1:
	.string	"unsigned char"
.LASF52:
	.string	"_phi"
.LASF47:
	.string	"litcol"
.LASF19:
	.string	"viYOrigin"
.LASF90:
	.string	"rmode"
.LASF61:
	.string	"buttonState"
.LASF14:
	.string	"viTVMode"
.LASF76:
	.string	"crateTPL"
.LASF87:
	.string	"offset_mtx"
.LASF12:
	.string	"long double"
.LASF8:
	.string	"char"
.LASF60:
	.string	"argv"
.LASF80:
	.string	"mode"
.LASF79:
	.string	"cubeAxis"
.LASF63:
	.string	"rquad"
.LASF49:
	.string	"matcol"
.LASF31:
	.string	"_gx_color"
.LASF38:
	.string	"_tplfile"
.LASF26:
	.string	"GXRModeObj"
.LASF55:
	.string	"rotAxis"
.LASF46:
	.string	"dist"
.LASF95:
	.string	"d:\\\\data\\\\nintendo\\\\3dportals\\\\build"
.LASF67:
	.string	"reflectionlight_tex"
.LASF82:
	.string	"buttonsHeld"
.LASF37:
	.string	"FHANDLE"
.LASF27:
	.string	"_gx_rmodeobj"
.LASF84:
	.string	"rotLook"
.LASF24:
	.string	"sample_pattern"
.LASF59:
	.string	"argc"
.LASF45:
	.string	"theta"
.LASF66:
	.string	"light_tex"
.LASF16:
	.string	"efbHeight"
.LASF96:
	.string	"setlight"
.LASF32:
	.string	"GXColor"
.LASF20:
	.string	"viWidth"
.LASF15:
	.string	"fbWidth"
.LASF99:
	.string	"main"
.LASF83:
	.string	"buttonsInv"
.LASF74:
	.string	"background"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
