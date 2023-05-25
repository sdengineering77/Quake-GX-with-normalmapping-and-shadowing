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
	.globl setup
	.type	setup, @function
setup:
.LFB71:
	.file 1 "d:/Data/Nintendo/lesson7/source/lesson7.c"
	.loc 1 470 0
	mflr 0
.LCFI0:
	stwu 1,-48(1)
.LCFI1:
	stw 28,32(1)
.LCFI2:
	stw 0,52(1)
.LCFI3:
	stw 29,36(1)
.LCFI4:
	li 29,0
.LVL0:
	stw 30,40(1)
.LCFI5:
	stw 31,44(1)
.LCFI6:
	.loc 1 477 0
	bl VIDEO_Init
	.loc 1 478 0
	bl WPAD_Init
	.loc 1 480 0
	li 3,0
	bl VIDEO_GetPreferredMode
	lis 31,.LANCHOR0@ha
	stw 3,.LANCHOR0@l(31)
	.loc 1 483 0
	lis 4,0x4
	li 3,32
	.loc 1 480 0
	la 28,.LANCHOR0@l(31)
	.loc 1 483 0
	bl memalign
	.loc 1 484 0
	li 4,0
	lis 5,0x4
	.loc 1 483 0
	mr 30,3
.LVL1:
	.loc 1 484 0
	bl memset
	.loc 1 487 0
	lwz 3,.LANCHOR0@l(31)
	bl SYS_AllocateFramebuffer
	stw 3,4(28)
	.loc 1 488 0
	lwz 3,.LANCHOR0@l(31)
	bl SYS_AllocateFramebuffer
	stw 3,8(28)
	.loc 1 491 0
	lwz 3,.LANCHOR0@l(31)
	bl VIDEO_Configure
	.loc 1 492 0
	lwz 3,4(28)
	bl VIDEO_SetNextFramebuffer
	.loc 1 493 0
	bl VIDEO_Flush
	.loc 1 494 0
	bl VIDEO_WaitVSync
	.loc 1 495 0
	lwz 9,.LANCHOR0@l(31)
	lwz 0,0(9)
	andi. 9,0,1
	bne- 0,.L9
.L2:
	.loc 1 500 0
	mr 3,30
	lis 4,0x4
	bl GX_Init
	.loc 1 475 0
	li 0,0
	rlwimi 29,0,24,0,7
	.loc 1 503 0
	lis 4,0xff
	.loc 1 475 0
	rlwimi 29,0,16,8,15
	.loc 1 503 0
	ori 4,4,65535
	.loc 1 475 0
	rlwimi 29,0,8,16,23
	li 0,-1
	rlwimi 29,0,0,24,31
	.loc 1 503 0
	addi 3,1,8
	stw 29,8(1)
	bl GX_SetCopyClear
	.loc 1 506 0
	lwz 9,.LANCHOR0@l(31)
	lis 10,0x4330
	stw 10,16(1)
	lis 30,.LC1@ha
.LVL2:
	lhz 0,4(9)
	lhz 11,6(9)
	lis 9,.LC12@ha
	stw 0,20(1)
	lfs 0,.LC1@l(30)
	lfd 3,16(1)
	stw 11,20(1)
	fsub 3,3,0
	lfs 1,.LC12@l(9)
	lfd 4,16(1)
	lis 9,.LC2@ha
	fmr 2,1
	lfs 6,.LC2@l(9)
	fsub 4,4,0
	frsp 3,3
	fmr 5,1
	frsp 4,4
	bl GX_SetViewport
	.loc 1 507 0
	lwz 9,.LANCHOR0@l(31)
	lhz 4,8(9)
	lhz 3,6(9)
	bl GX_GetYScaleFactor
	.loc 1 508 0
	bl GX_SetDispCopyYScale
	.loc 1 509 0
	lwz 9,.LANCHOR0@l(31)
	.loc 1 508 0
	mr 29,3
.LVL3:
	.loc 1 509 0
	li 4,0
	lhz 6,6(9)
	li 3,0
	lhz 5,4(9)
	bl GX_SetScissor
	.loc 1 510 0
	lwz 9,.LANCHOR0@l(31)
	li 3,0
	li 4,0
	lhz 6,6(9)
	lhz 5,4(9)
	bl GX_SetDispCopySrc
	.loc 1 511 0
	lwz 9,.LANCHOR0@l(31)
	rlwinm 4,29,0,0xffff
.LVL4:
	lhz 3,4(9)
	bl GX_SetDispCopyDst
.LVL5:
	.loc 1 512 0
	lwz 4,.LANCHOR0@l(31)
	li 5,1
	lbz 3,25(4)
	addi 6,4,50
	addi 4,4,26
	bl GX_SetCopyFilter
	.loc 1 513 0
	lwz 9,.LANCHOR0@l(31)
	lhz 4,8(9)
	lhz 0,16(9)
	slwi 4,4,1
	lbz 3,24(9)
	xor 4,0,4
	cntlzw 4,4
	srwi 4,4,5
	bl GX_SetFieldMode
	.loc 1 515 0
	lwz 9,.LANCHOR0@l(31)
	lbz 0,25(9)
	cmpwi 7,0,0
	beq- 7,.L4
	.loc 1 516 0
	li 3,2
	li 4,0
	bl GX_SetPixelFmt
.L6:
	.loc 1 520 0
	li 3,2
	.loc 1 529 0
	addi 29,28,12
	.loc 1 520 0
	bl GX_SetCullMode
	.loc 1 521 0
	lwz 3,8(28)
	li 4,1
	bl GX_CopyDisp
	.loc 1 522 0
	li 3,0
	bl GX_SetDispCopyGamma
	.loc 1 527 0
	lwz 9,.LANCHOR0@l(31)
	.loc 1 529 0
	lis 11,0x4330
	lfs 13,.LC1@l(30)
	lhz 0,14(9)
	mr 3,29
	lhz 10,16(9)
	lis 9,.LC4@ha
	stw 0,20(1)
	stw 10,28(1)
	stw 11,24(1)
	stw 11,16(1)
	lis 11,.LC5@ha
	lfd 2,24(1)
	lfd 0,16(1)
	fsub 2,2,13
	lfs 3,.LC4@l(9)
	fsub 0,0,13
	lis 9,.LC3@ha
	lfs 4,.LC5@l(11)
	frsp 2,2
	lfs 1,.LC3@l(9)
	frsp 0,0
	fdivs 2,0,2
	bl guPerspective
	.loc 1 530 0
	mr 3,29
	li 4,0
	bl GX_LoadProjectionMtx
	.loc 1 532 0
	lwz 0,52(1)
	lwz 28,32(1)
	lwz 29,36(1)
	mtlr 0
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	blr
.L4:
	.loc 1 518 0
	li 3,0
	li 4,0
	bl GX_SetPixelFmt
	b .L6
.LVL6:
.L9:
	.loc 1 495 0
	bl VIDEO_WaitVSync
	b .L2
.LFE71:
	.size	setup, .-setup
	.align 2
	.globl CalcTangSp
	.type	CalcTangSp, @function
CalcTangSp:
.LFB70:
	.loc 1 442 0
.LVL7:
	mflr 0
.LCFI7:
	stwu 1,-152(1)
.LCFI8:
	stfd 28,120(1)
.LCFI9:
	stw 0,156(1)
.LCFI10:
	stfd 31,144(1)
.LCFI11:
	.loc 1 447 0
	lfs 13,4(4)
	.loc 1 446 0
	lfs 0,0(4)
	.loc 1 449 0
	lfs 28,12(4)
	.loc 1 446 0
	lfs 31,16(4)
	.loc 1 449 0
	fsubs 28,28,13
.LVL8:
	.loc 1 442 0
	stfd 29,128(1)
.LCFI12:
	.loc 1 446 0
	fsubs 31,31,0
.LVL9:
	.loc 1 442 0
	stfd 30,136(1)
.LCFI13:
	stw 27,100(1)
.LCFI14:
	.loc 1 450 0
	addi 27,1,20
	.loc 1 442 0
	stw 29,108(1)
.LCFI15:
	mr 29,3
	.loc 1 447 0
	lfs 29,20(4)
	.loc 1 450 0
	addi 3,3,24
.LVL10:
	.loc 1 448 0
	lfs 30,8(4)
	.loc 1 450 0
	mr 4,29
.LVL11:
	.loc 1 442 0
	stw 25,92(1)
.LCFI16:
	mr 25,5
	stw 28,104(1)
.LCFI17:
	.loc 1 450 0
	mr 5,27
.LVL12:
	.loc 1 451 0
	addi 28,1,8
	.loc 1 447 0
	fsubs 29,29,13
.LVL13:
	.loc 1 448 0
	fsubs 30,30,0
.LVL14:
	.loc 1 442 0
	stw 26,96(1)
.LCFI18:
	.loc 1 442 0
	mr 26,6
	.loc 1 450 0
	bl ps_guVecSub
.LVL15:
	.loc 1 451 0
	mr 5,28
	mr 4,29
	addi 3,29,12
	bl ps_guVecSub
	.loc 1 453 0
	fmuls 0,28,31
	lis 9,.LC2@ha
	.loc 1 454 0
	fmr 1,31
	.loc 1 453 0
	lfs 31,.LC2@l(9)
.LVL16:
	.loc 1 454 0
	addi 4,1,32
	.loc 1 453 0
	fmsubs 0,30,29,0
	.loc 1 454 0
	mr 3,28
	.loc 1 453 0
	fdivs 31,31,0
.LVL17:
	.loc 1 454 0
	bl ps_guVecScale
.LVL18:
	.loc 1 455 0
	mr 3,27
	addi 4,1,56
	fmr 1,30
	bl ps_guVecScale
	.loc 1 456 0
	fmr 1,29
	mr 3,28
	addi 4,1,44
	bl ps_guVecScale
	.loc 1 457 0
	fmr 1,28
	mr 3,27
	addi 4,1,68
	bl ps_guVecScale
	.loc 1 459 0
	lfs 0,68(1)
	lfs 7,44(1)
	.loc 1 462 0
	fneg 12,31
	.loc 1 460 0
	lfs 8,48(1)
	.loc 1 459 0
	fsubs 7,7,0
	.loc 1 460 0
	lfs 0,72(1)
	.loc 1 461 0
	lfs 10,52(1)
	.loc 1 460 0
	fsubs 8,8,0
	.loc 1 461 0
	lfs 0,76(1)
	.loc 1 462 0
	lfs 9,56(1)
	.loc 1 459 0
	fmuls 7,7,31
	.loc 1 461 0
	fsubs 10,10,0
	.loc 1 462 0
	lfs 0,32(1)
	.loc 1 463 0
	lfs 11,60(1)
	.loc 1 460 0
	fmuls 8,8,31
	.loc 1 462 0
	fsubs 9,9,0
	.loc 1 463 0
	lfs 0,36(1)
	.loc 1 464 0
	lfs 13,64(1)
	.loc 1 461 0
	fmuls 10,10,31
	.loc 1 463 0
	fsubs 11,11,0
	.loc 1 464 0
	lfs 0,40(1)
	.loc 1 462 0
	fmuls 9,12,9
	.loc 1 465 0
	lwz 0,156(1)
	.loc 1 464 0
	fsubs 13,13,0
	.loc 1 461 0
	stfs 10,8(25)
	.loc 1 459 0
	stfs 7,0(25)
	.loc 1 465 0
	mtlr 0
	.loc 1 460 0
	stfs 8,4(25)
	.loc 1 464 0
	fmuls 13,12,13
	.loc 1 462 0
	stfs 9,0(26)
	.loc 1 463 0
	fmuls 12,12,11
	.loc 1 465 0
	lwz 25,92(1)
.LVL19:
	lwz 27,100(1)
	.loc 1 464 0
	stfs 13,8(26)
	.loc 1 463 0
	stfs 12,4(26)
	.loc 1 465 0
	lwz 28,104(1)
	lwz 26,96(1)
.LVL20:
	lwz 29,108(1)
.LVL21:
	lfd 28,120(1)
.LVL22:
	lfd 29,128(1)
.LVL23:
	lfd 30,136(1)
.LVL24:
	lfd 31,144(1)
.LVL25:
	addi 1,1,152
	blr
.LFE70:
	.size	CalcTangSp, .-CalcTangSp
	.align 2
	.globl setlight
	.type	setlight, @function
setlight:
.LFB69:
	.loc 1 426 0
.LVL26:
	stwu 1,-72(1)
.LCFI19:
	.loc 1 430 0
	lis 9,.LC13@ha
	lfd 13,.LC13@l(9)
	lis 9,.LC15@ha
	.loc 1 426 0
	stfd 30,56(1)
.LCFI20:
	.loc 1 431 0
	fmr 30,2
	.loc 1 426 0
	stfd 31,64(1)
.LCFI21:
	.loc 1 430 0
	fmr 31,1
	lfs 0,.LC15@l(9)
	.loc 1 426 0
	mflr 0
.LCFI22:
	.loc 1 431 0
	fmul 30,30,13
	.loc 1 426 0
	stfd 28,40(1)
.LCFI23:
	stfd 29,48(1)
.LCFI24:
	.loc 1 430 0
	fmul 31,31,13
	.loc 1 426 0
	stw 0,76(1)
.LCFI25:
	stw 28,24(1)
.LCFI26:
	mr 28,4
	.loc 1 431 0
	fdiv 30,30,0
	.loc 1 426 0
	stw 29,28(1)
.LCFI27:
	.loc 1 426 0
	mr 29,3
	.loc 1 430 0
	fdiv 31,31,0
	.loc 1 431 0
	frsp 30,30
.LVL27:
	.loc 1 426 0
	fmr 28,3
	.loc 1 430 0
	frsp 31,31
.LVL28:
	.loc 1 432 0
	fmr 1,30
.LVL29:
	bl cosf
.LVL30:
	fmuls 29,1,28
	fmr 1,31
	bl sinf
	fmuls 0,29,1
	.loc 1 433 0
	fmr 1,30
	.loc 1 432 0
	stfs 0,8(1)
	.loc 1 433 0
	bl sinf
	fmuls 0,1,28
	.loc 1 434 0
	fmr 1,31
	.loc 1 433 0
	stfs 0,12(1)
	.loc 1 434 0
	bl cosf
	.loc 1 436 0
	addi 4,1,8
	.loc 1 434 0
	fmuls 29,29,1
	.loc 1 436 0
	mr 3,28
	mr 5,4
	.loc 1 434 0
	stfs 29,16(1)
	.loc 1 436 0
	bl ps_guVecMultiply
	.loc 1 438 0
	lwz 0,8(1)
	.loc 1 439 0
	mr 3,29
	.loc 1 438 0
	lwz 9,12(1)
	lwz 11,16(1)
	stw 0,0(29)
	.loc 1 439 0
	lwz 0,76(1)
	.loc 1 438 0
	stw 9,4(29)
	stw 11,8(29)
	.loc 1 439 0
	mtlr 0
	lwz 28,24(1)
.LVL31:
	lwz 29,28(1)
	lfd 28,40(1)
.LVL32:
	lfd 29,48(1)
	lfd 30,56(1)
.LVL33:
	lfd 31,64(1)
.LVL34:
	addi 1,1,72
	blr
.LFE69:
	.size	setlight, .-setlight
	.align 2
	.globl SetupShader
	.type	SetupShader, @function
SetupShader:
.LFB67:
	.loc 1 263 0
	mflr 0
.LCFI28:
	stwu 1,-8(1)
.LCFI29:
	stw 0,12(1)
.LCFI30:
	.loc 1 265 0
	bl GX_ClearVtxDesc
	.loc 1 266 0
	li 3,9
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 267 0
	li 3,13
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 268 0
	li 3,14
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 269 0
	li 3,15
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 270 0
	li 3,16
	li 4,1
	bl GX_SetVtxDesc
	.loc 1 272 0
	li 3,0
	li 4,9
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 273 0
	li 3,0
	li 4,13
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 274 0
	li 3,0
	li 4,14
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 275 0
	li 3,0
	li 4,15
	li 5,1
	li 6,4
	li 7,0
	bl GX_SetVtxAttrFmt
	.loc 1 276 0
	li 7,0
	li 4,16
	li 5,1
	li 6,4
	li 3,0
	bl GX_SetVtxAttrFmt
	.loc 1 278 0
	bl GX_InvVtxCache
	.loc 1 281 0
	li 3,1
	bl GX_SetNumChans
	.loc 1 285 0
	li 3,4
	bl GX_SetNumTexGens
	.loc 1 289 0
	li 3,0
	li 4,1
	li 5,4
	li 6,60
	bl GX_SetTexCoordGen
	.loc 1 290 0
	li 3,1
	li 4,1
	li 5,5
	li 6,30
	bl GX_SetTexCoordGen
	.loc 1 291 0
	li 3,2
	li 4,1
	li 5,6
	li 6,33
	bl GX_SetTexCoordGen
	.loc 1 292 0
	li 5,7
	li 6,36
	li 3,3
	li 4,1
	bl GX_SetTexCoordGen
	.loc 1 294 0
	lis 3,.LANCHOR0@ha
	la 3,.LANCHOR0@l(3)
	li 4,0
	addi 3,3,76
	bl GX_LoadTexObj
	.loc 1 362 0
	li 3,0
	li 4,15
	li 5,15
	li 6,15
	li 7,12
	bl GX_SetTevColorIn
	.loc 1 363 0
	li 7,1
	li 8,0
	li 3,0
	li 4,0
	li 5,0
	li 6,0
	bl GX_SetTevColorOp
	.loc 1 364 0
	li 3,0
	li 4,255
	li 5,256
	li 6,255
	bl GX_SetTevOrder
	.loc 1 369 0
	li 3,1
	bl GX_SetNumTevStages
	.loc 1 371 0
	lwz 0,12(1)
	addi 1,1,8
	mtlr 0
	blr
.LFE67:
	.size	SetupShader, .-SetupShader
	.align 2
	.globl CalcVertexAttributes
	.type	CalcVertexAttributes, @function
CalcVertexAttributes:
.LFB66:
	.loc 1 242 0
.LVL35:
	stwu 1,-104(1)
.LCFI31:
	mflr 0
.LCFI32:
	stw 23,60(1)
.LCFI33:
	.loc 1 244 0
	mr. 23,5
	.loc 1 242 0
	stw 24,64(1)
.LCFI34:
	mr 24,3
	stw 25,68(1)
.LCFI35:
	mr 25,4
	stfd 31,96(1)
.LCFI36:
	stw 26,72(1)
.LCFI37:
	stw 27,76(1)
.LCFI38:
	stw 28,80(1)
.LCFI39:
	stw 29,84(1)
.LCFI40:
	stw 30,88(1)
.LCFI41:
	stw 31,92(1)
.LCFI42:
	stw 0,108(1)
.LCFI43:
	.loc 1 244 0
	ble- 0,.L20
.LVL36:
	lis 9,.LC17@ha
	lis 11,.LANCHOR1@ha
.LBB2:
	.loc 1 255 0
	lfs 31,.LC17@l(9)
.LBE2:
	.loc 1 244 0
	la 30,.LANCHOR1@l(11)
	mr 31,6
	li 26,0
.LVL37:
	addi 27,1,8
	addi 28,1,20
	addi 29,1,32
.L19:
.LBB3:
	.loc 1 248 0
	mr 4,30
.LVL38:
	mr 5,27
	mr 3,25
.LBE3:
	.loc 1 244 0
	addi 26,26,1
.LBB4:
	.loc 1 248 0
	bl ps_guVecSub
.LVL39:
	.loc 1 249 0
	mr 3,27
	bl ps_guVecNormalize
	.loc 1 251 0
	mr 4,30
.LVL40:
	mr 5,28
	mr 3,24
	bl ps_guVecSub
.LVL41:
	.loc 1 252 0
	mr 3,28
	bl ps_guVecNormalize
	.loc 1 254 0
	mr 3,27
	mr 4,28
	mr 5,29
	bl ps_guVecAdd
	.loc 1 255 0
	fmr 1,31
	mr 3,29
	mr 4,29
.LBE4:
	.loc 1 244 0
	addi 30,30,20
.LBB5:
	.loc 1 255 0
	bl ps_guVecScale
.LBE5:
	.loc 1 244 0
	cmpw 7,26,23
.LBB6:
	.loc 1 257 0
	lwz 9,12(1)
	lwz 11,16(1)
	.loc 1 258 0
	lwz 10,32(1)
	lwz 8,36(1)
	lwz 7,40(1)
	.loc 1 257 0
	lwz 0,8(1)
	stw 9,4(31)
	stw 0,0(31)
	stw 11,8(31)
	.loc 1 258 0
	stw 10,12(31)
	stw 8,16(31)
	stw 7,20(31)
.LBE6:
	.loc 1 244 0
	addi 31,31,24
	bne+ 7,.L19
.LVL42:
.L20:
	.loc 1 260 0
	lwz 0,108(1)
	lwz 23,60(1)
.LVL43:
	lwz 24,64(1)
.LVL44:
	mtlr 0
	lwz 25,68(1)
.LVL45:
	lwz 26,72(1)
.LVL46:
	lwz 27,76(1)
	lwz 28,80(1)
	lwz 29,84(1)
	lwz 30,88(1)
	lwz 31,92(1)
	lfd 31,96(1)
	addi 1,1,104
	blr
.LFE66:
	.size	CalcVertexAttributes, .-CalcVertexAttributes
	.align 2
	.globl GL_CreateDotResultTex
	.type	GL_CreateDotResultTex, @function
GL_CreateDotResultTex:
.LFB65:
	.loc 1 204 0
.LVL47:
	mflr 0
.LCFI44:
	stwu 1,-48(1)
.LCFI45:
	.loc 1 208 0
	li 4,1024
	.loc 1 204 0
	stw 27,28(1)
.LCFI46:
	mr 27,3
	stw 0,52(1)
.LCFI47:
	.loc 1 208 0
	li 3,32
.LVL48:
	.loc 1 206 0
	lwz 0,0(1)
	.loc 1 204 0
	stw 28,32(1)
.LCFI48:
	mr 28,1
	stw 29,36(1)
.LCFI49:
	stw 30,40(1)
.LCFI50:
	stw 31,44(1)
.LCFI51:
	mr 31,1
.LCFI52:
	stw 26,24(1)
.LCFI53:
	.loc 1 206 0
	stwu 0,-1040(1)
	addi 0,1,23
	rlwinm 30,0,0,0,27
	.loc 1 208 0
	bl memalign
	mr 29,3
.LVL49:
	.loc 1 209 0
	li 4,0
	mr 3,30
	li 5,1024
	bl memset
	lis 9,.LC19@ha
	lis 11,.LC20@ha
.LBB7:
	.loc 1 225 0
	lfs 0,.LC19@l(9)
	lfs 7,.LC20@l(11)
.LBE7:
.LBB8:
	.loc 1 213 0
	lis 9,.LC21@ha
.LBE8:
.LBB9:
	.loc 1 225 0
	fmr 8,0
.LBE9:
.LBB10:
	.loc 1 213 0
	lfs 9,.LC21@l(9)
	.loc 1 212 0
	fmr 6,0
.LBE10:
	.loc 1 209 0
	li 11,0
.LBB11:
	.loc 1 212 0
	fmr 10,7
.LBE11:
	.loc 1 209 0
	li 7,0
.LVL50:
.L23:
.LBB12:
	.loc 1 225 0
	extsh 0,7
	lis 9,0x4330
	xoris 0,0,0x8000
	stw 9,8(31)
	stw 0,12(31)
.LBE12:
.LBB13:
	.loc 1 212 0
	fmr 11,6
	.loc 1 213 0
	li 0,32
.LBE13:
.LBB14:
	.loc 1 225 0
	slwi 8,11,5
	lfd 0,8(31)
.LVL51:
.LBE14:
.LBB15:
	.loc 1 213 0
	mtctr 0
.LBE15:
.LBB16:
	.loc 1 225 0
	li 10,0
	li 11,0
	fsub 0,0,8
	frsp 0,0
	fmuls 0,0,7
	fmr 13,0
	fmul 12,13,13
.LVL52:
.L24:
.LBE16:
.LBB17:
	.loc 1 212 0
	extsh 0,11
	lis 9,0x4330
	xoris 0,0,0x8000
	stw 9,8(31)
	stw 0,12(31)
	.loc 1 204 0
	addi 11,11,1
	.loc 1 215 0
	add 9,10,8
	.loc 1 213 0
	li 0,255
	.loc 1 212 0
	lfd 0,8(31)
.LVL53:
	.loc 1 204 0
	mr 10,11
	.loc 1 212 0
	fsub 0,0,11
	frsp 0,0
	fmuls 0,0,10
	fmr 13,0
	fadd 13,13,12
	frsp 0,13
.LVL54:
	.loc 1 213 0
	fcmpu 7,0,9
	bgt- 7,.L28
	fctiwz 13,0
.LVL55:
	addi 6,31,16
	stfiwx 13,0,6
	lbz 0,19(31)
.LVL56:
.L28:
	.loc 1 215 0
	stbx 0,9,30
.LBE17:
	.loc 1 211 0
	bdnz .L24
	.loc 1 204 0
	addi 11,7,1
	.loc 1 210 0
	cmpwi 7,11,32
	.loc 1 204 0
	mr 7,11
	.loc 1 210 0
	bne+ 7,.L23
	.loc 1 218 0
	mr 3,29
	li 4,0
	li 5,1024
	bl memset
.LVL57:
	mr 3,29
	li 12,0
.LVL58:
	li 0,0
.LVL59:
.L31:
	slwi 4,0,5
.LBB18:
	.loc 1 225 0
	mr 6,3
	li 5,0
	li 0,0
.L36:
	add 7,0,4
	li 8,0
.L34:
	lbzx 0,30,7
	li 26,7
.LBE18:
	.loc 1 237 0
	add 9,30,7
.LBB19:
	.loc 1 225 0
	mtctr 26
	stbx 0,6,8
	addi 9,9,1
.LBE19:
	.loc 1 237 0
	add 10,6,8
.LBB20:
	.loc 1 225 0
	li 11,1
.L32:
	lbz 0,0(9)
	.loc 1 224 0
	addi 9,9,1
	.loc 1 225 0
	stbx 0,11,10
	.loc 1 224 0
	addi 11,11,1
	bdnz .L32
	.loc 1 223 0
	cmpwi 7,8,24
	.loc 1 224 0
	addi 7,7,32
	.loc 1 223 0
	addi 8,8,8
	bne+ 7,.L34
	.loc 1 204 0
	addi 0,5,8
	.loc 1 228 0
	addi 6,6,32
	.loc 1 204 0
	rlwinm 0,0,0,0xffff
.LBE20:
	.loc 1 221 0
	cmpwi 7,0,32
.LBB21:
	.loc 1 204 0
	extsh 0,0
.LBE21:
	.loc 1 221 0
	mr 5,0
	bne+ 7,.L36
	.loc 1 204 0
	addi 0,12,4
	.loc 1 220 0
	addi 3,3,128
	.loc 1 204 0
	rlwinm 0,0,0,0xffff
	.loc 1 220 0
	cmpwi 7,0,32
	.loc 1 204 0
	extsh 0,0
	.loc 1 220 0
	mr 12,0
	bne+ 7,.L31
	.loc 1 234 0
	li 10,1
	mr 3,27
	mr 4,29
	li 9,0
	li 5,32
.LVL60:
	li 6,32
.LVL61:
	li 7,1
	li 8,0
	bl GX_InitTexObj
.LVL62:
	.loc 1 235 0
	lis 11,.LC22@ha
	lis 9,.LC2@ha
	lis 6,.LC12@ha
	lfs 2,.LC22@l(11)
	mr 3,27
	lfs 3,.LC12@l(6)
	li 4,1
	lfs 1,.LC2@l(9)
	li 5,1
	li 6,1
	li 7,1
	li 8,0
	bl GX_InitTexObjLOD
	.loc 1 236 0
	mr 3,29
	li 4,16384
	bl DCFlushRange
	lwz 0,0(1)
	stw 0,0(28)
	mr 1,28
	.loc 1 237 0
	lwz 11,0(1)
	lwz 0,4(11)
	lwz 26,-24(11)
	lwz 27,-20(11)
.LVL63:
	mtlr 0
	lwz 28,-16(11)
	lwz 29,-12(11)
.LVL64:
	lwz 30,-8(11)
	lwz 31,-4(11)
	mr 1,11
	blr
.LFE65:
	.size	GL_CreateDotResultTex, .-GL_CreateDotResultTex
	.align 2
	.globl GL_CreateLightBulbTexI8
	.type	GL_CreateLightBulbTexI8, @function
GL_CreateLightBulbTexI8:
.LFB64:
	.loc 1 156 0
.LVL65:
	stwu 1,-16512(1)
.LCFI54:
	mflr 0
.LCFI55:
	.loc 1 160 0
	li 4,16384
	.loc 1 156 0
	stw 25,16420(1)
.LCFI56:
	mr 25,3
	.loc 1 160 0
	li 3,32
.LVL66:
	.loc 1 156 0
	stfd 24,16448(1)
.LCFI57:
	stfd 25,16456(1)
.LCFI58:
	stfd 26,16464(1)
.LCFI59:
	stfd 27,16472(1)
.LCFI60:
	stfd 28,16480(1)
.LCFI61:
	stfd 29,16488(1)
.LCFI62:
	stw 24,16416(1)
.LCFI63:
	lis 24,.LC2@ha
	stw 26,16424(1)
.LCFI64:
	stw 27,16428(1)
.LCFI65:
.LBB22:
	.loc 1 171 0
	li 27,0
.LBE22:
	.loc 1 156 0
	stw 28,16432(1)
.LCFI66:
	.loc 1 161 0
	li 28,0
	.loc 1 156 0
	stw 29,16436(1)
.LCFI67:
	.loc 1 161 0
	addi 29,1,8
	.loc 1 156 0
	stw 0,16516(1)
.LCFI68:
	stfd 30,16496(1)
.LCFI69:
	stfd 31,16504(1)
.LCFI70:
	stw 30,16440(1)
.LCFI71:
	stw 31,16444(1)
.LCFI72:
	.loc 1 160 0
	bl memalign
	mr 26,3
.LVL67:
	.loc 1 161 0
	li 4,0
	mr 3,29
	li 5,16384
	bl memset
	lis 9,.LC19@ha
.LBB23:
	.loc 1 189 0
	lfs 0,.LC19@l(9)
.LBE23:
.LBB24:
	.loc 1 171 0
	lis 9,.LC27@ha
	lfs 28,.LC27@l(9)
	lis 11,.LC28@ha
	.loc 1 176 0
	lis 9,.LC21@ha
.LBE24:
.LBB25:
	.loc 1 189 0
	fmr 27,0
.LBE25:
.LBB26:
	.loc 1 167 0
	fmr 26,0
	.loc 1 171 0
	lfs 25,.LC28@l(11)
	.loc 1 176 0
	lfs 29,.LC21@l(9)
	.loc 1 171 0
	lfs 24,.LC2@l(24)
.LVL68:
.L53:
.LBE26:
.LBB27:
	.loc 1 189 0
	xoris 0,28,0x8000
	lis 9,0x4330
	stw 0,16396(1)
.LBE27:
.LBB28:
	.loc 1 167 0
	fmr 30,26
.LBE28:
.LBB29:
	.loc 1 189 0
	stw 9,16392(1)
	mulli 0,28,-128
	li 31,0
	lfd 0,16392(1)
.LVL69:
	add 30,29,0
	fsub 0,0,27
	frsp 0,0
	fmuls 31,0,0
.LVL70:
.L54:
.LBE29:
.LBB30:
	.loc 1 167 0
	xoris 0,31,0x8000
	lis 9,0x4330
	stw 0,16396(1)
	stw 9,16392(1)
	lfd 1,16392(1)
	fsub 1,1,30
	frsp 1,1
.LVL71:
	.loc 1 170 0
	fmadds 1,1,1,31
.LVL72:
	bl sqrtf
.LVL73:
	.loc 1 171 0
	stw 27,16408(1)
	.loc 1 170 0
	fmr 0,1
.LVL74:
	.loc 1 171 0
	lfs 1,16408(1)
	fcmpu 7,0,28
	bgt- 7,.L58
	fmuls 0,0,25
.LVL75:
	fmuls 0,0,0
	fsubs 1,24,0
.LVL76:
.L58:
	.loc 1 173 0
	bl sqrtf
.LVL77:
.LBE30:
	.loc 1 166 0
	cmpwi 6,31,-15
.LBB31:
	.loc 1 176 0
	fmuls 0,1,29
.LVL78:
.LBE31:
	.loc 1 166 0
	addi 31,31,-1
.LBB32:
	.loc 1 177 0
	li 0,255
	fcmpu 7,0,29
	bgt- 7,.L62
	fctiwz 13,0
.LVL79:
	addi 9,1,16400
	stfiwx 13,0,9
	lbz 0,16403(1)
.LVL80:
.L62:
	.loc 1 179 0
	stb 0,0(30)
	addi 30,30,1
.LBE32:
	.loc 1 166 0
	bne+ 6,.L54
	.loc 1 165 0
	cmpwi 7,28,-15
	addi 28,28,-1
	bne+ 7,.L53
	.loc 1 182 0
	mr 3,26
	li 4,0
	li 5,16384
	bl memset
.LVL81:
	li 3,0
.LVL82:
.L65:
.LBB33:
	.loc 1 189 0
	add 6,26,3
	mr 5,3
	li 4,0
.L70:
	mr 7,5
	li 8,0
.L68:
	lbzx 0,29,7
	li 31,7
.LBE33:
	.loc 1 201 0
	add 9,29,7
.LBB34:
	.loc 1 189 0
	mtctr 31
	stbx 0,6,8
	addi 9,9,1
.LBE34:
	.loc 1 201 0
	add 10,6,8
.LBB35:
	.loc 1 189 0
	li 11,1
.L66:
	lbz 0,0(9)
	.loc 1 188 0
	addi 9,9,1
	.loc 1 189 0
	stbx 0,11,10
	.loc 1 188 0
	addi 11,11,1
	bdnz .L66
	.loc 1 187 0
	cmpwi 7,8,24
	.loc 1 188 0
	addi 7,7,128
	.loc 1 187 0
	addi 8,8,8
	bne+ 7,.L68
	.loc 1 156 0
	addi 0,4,8
	.loc 1 192 0
	addi 6,6,32
	.loc 1 156 0
	rlwinm 0,0,0,0xffff
	addi 5,5,8
.LBE35:
	.loc 1 185 0
	cmpwi 7,0,128
.LBB36:
	.loc 1 156 0
	extsh 4,0
.LBE36:
	.loc 1 185 0
	bne+ 7,.L70
	.loc 1 184 0
	cmpwi 7,3,15872
	addi 3,3,512
	bne+ 7,.L65
	.loc 1 198 0
	mr 3,25
	mr 4,26
.LVL83:
	li 10,1
	li 5,128
	li 6,128
.LVL84:
	li 7,1
	li 8,2
	li 9,2
	bl GX_InitTexObj
.LVL85:
	.loc 1 199 0
	lis 9,.LC22@ha
	lfs 2,.LC22@l(9)
	lis 9,.LC12@ha
	lfs 1,.LC2@l(24)
	mr 3,25
	lfs 3,.LC12@l(9)
	li 4,1
	li 5,1
	li 6,1
	li 7,1
	li 8,0
	bl GX_InitTexObjLOD
	.loc 1 200 0
	mr 3,26
	li 4,16384
	bl DCFlushRange
	.loc 1 201 0
	lwz 0,16516(1)
	lwz 24,16416(1)
	lwz 25,16420(1)
.LVL86:
	mtlr 0
	lwz 26,16424(1)
.LVL87:
	lwz 27,16428(1)
	lwz 28,16432(1)
	lwz 29,16436(1)
	lwz 30,16440(1)
	lwz 31,16444(1)
	lfd 24,16448(1)
	lfd 25,16456(1)
	lfd 26,16464(1)
	lfd 27,16472(1)
	lfd 28,16480(1)
	lfd 29,16488(1)
	lfd 30,16496(1)
	lfd 31,16504(1)
	addi 1,1,16512
	blr
.LFE64:
	.size	GL_CreateLightBulbTexI8, .-GL_CreateLightBulbTexI8
	.align 2
	.globl GL_CreateTubeTex
	.type	GL_CreateTubeTex, @function
GL_CreateTubeTex:
.LFB63:
	.loc 1 93 0
.LVL88:
	lis 0,0xffff
	mr 12,1
	ori 0,0,16232
	.loc 1 98 0
	li 5,0
	.loc 1 93 0
	stwux 1,1,0
.LCFI73:
	mflr 0
.LCFI74:
	.loc 1 98 0
	ori 5,5,32768
	.loc 1 93 0
	stfd 21,-88(12)
.LCFI75:
	stfd 22,-80(12)
.LCFI76:
	stfd 23,-72(12)
.LCFI77:
	stfd 24,-64(12)
.LCFI78:
	stfd 25,-56(12)
.LCFI79:
	stfd 28,-32(12)
.LCFI80:
	stfd 29,-24(12)
.LCFI81:
	stw 22,-128(12)
.LCFI82:
	mr 22,4
	stw 23,-124(12)
.LCFI83:
	.loc 1 98 0
	li 4,0
.LVL89:
	.loc 1 93 0
	stw 24,-120(12)
.LCFI84:
	mr 23,3
	stw 25,-116(12)
.LCFI85:
	.loc 1 99 0
	li 24,64
	.loc 1 93 0
	stw 26,-112(12)
.LCFI86:
	.loc 1 99 0
	addi 26,1,8
	.loc 1 93 0
	stw 27,-108(12)
.LCFI87:
	.loc 1 98 0
	addi 27,1,16392
	.loc 1 93 0
	stw 31,-92(12)
.LCFI88:
	.loc 1 98 0
	mr 3,27
.LVL90:
	.loc 1 93 0
	stfd 26,-48(12)
.LCFI89:
	.loc 1 99 0
	li 25,0
	.loc 1 93 0
	stfd 27,-40(12)
.LCFI90:
	addis 31,1,0x1
	stfd 30,-16(12)
.LCFI91:
	stfd 31,-8(12)
.LCFI92:
	stw 28,-104(12)
.LCFI93:
	stw 29,-100(12)
.LCFI94:
	stw 30,-96(12)
.LCFI95:
	stw 0,4(12)
.LCFI96:
	.loc 1 98 0
	bl memset
	.loc 1 99 0
	mr 3,26
	li 4,0
	li 5,16384
	bl memset
	lis 9,.LC19@ha
	.loc 1 154 0
	lfs 0,.LC19@l(9)
.LBB37:
	.loc 1 105 0
	lis 9,.LC31@ha
	lis 11,.LC2@ha
	lfs 23,.LC31@l(9)
	.loc 1 113 0
	lis 9,.LC32@ha
	.loc 1 105 0
	lfs 24,.LC2@l(11)
	.loc 1 113 0
	lfs 28,.LC32@l(9)
	lis 11,.LC33@ha
	.loc 1 114 0
	lis 9,.LC34@ha
.LBE37:
	.loc 1 154 0
	fmr 22,0
.LBB38:
	.loc 1 102 0
	fmr 21,0
	.loc 1 113 0
	lfs 29,.LC33@l(11)
	.loc 1 114 0
	lfs 25,.LC34@l(9)
.LVL91:
.L87:
.LBE38:
	.loc 1 154 0
	xoris 0,24,0x8000
	lis 9,0x4330
	stw 0,-16372(31)
.LBB39:
	.loc 1 102 0
	fmr 26,21
.LBE39:
	.loc 1 154 0
	stw 9,-16376(31)
	slwi 0,25,1
	add 28,27,0
	add 29,26,25
	lfd 0,-16376(31)
	li 30,-64
	fsub 0,0,22
	frsp 30,0
	fmuls 27,30,30
.L88:
.LBB40:
	.loc 1 102 0
	xoris 0,30,0x8000
	lis 9,0x4330
	stw 0,-16372(31)
	stw 9,-16376(31)
	lfd 31,-16376(31)
	fsub 31,31,26
	frsp 31,31
.LVL92:
	.loc 1 105 0
	fmadds 1,31,31,27
	fadds 1,1,23
	bl sqrtf
	.loc 1 113 0
	addi 3,31,-16368
	.loc 1 105 0
	fdivs 1,24,1
.LVL93:
	.loc 1 113 0
	addi 9,31,-16364
.LBE40:
	.loc 1 101 0
	addi 0,30,1
	extsh 30,0
	cmpwi 7,30,64
.LBB41:
	.loc 1 113 0
	fmuls 31,31,1
.LVL94:
	fmuls 0,1,30
	.loc 1 114 0
	fmuls 1,1,25
.LVL95:
	.loc 1 113 0
	fmadds 31,31,28,29
	fmadds 0,0,28,29
	.loc 1 114 0
	fmadds 1,1,28,29
	.loc 1 113 0
	fmr 13,31
	fctiwz 11,0
	fctiwz 12,13
	.loc 1 114 0
	fctiwz 13,1
	.loc 1 113 0
	stfiwx 12,0,3
	stfiwx 11,0,9
	lbz 0,-16365(31)
	.loc 1 114 0
	stfiwx 13,0,3
	.loc 1 113 0
	slwi 0,0,8
	lbz 9,-16361(31)
	.loc 1 114 0
	lwz 11,-16368(31)
	.loc 1 113 0
	or 0,0,9
	sth 0,0(28)
.LBE41:
	.loc 1 101 0
	addi 28,28,2
.LBB42:
	.loc 1 114 0
	stb 11,0(29)
.LBE42:
	.loc 1 101 0
	addi 29,29,1
	bne+ 7,.L88
	.loc 1 100 0
	cmpwi 7,24,-63
	.loc 1 101 0
	addi 25,25,128
	.loc 1 100 0
	addi 24,24,-1
	bne+ 7,.L87
	.loc 1 119 0
	li 4,0
	li 3,32
	ori 4,4,32768
	.loc 1 121 0
	li 31,0
	.loc 1 119 0
	bl memalign
	.loc 1 121 0
	li 4,16384
	.loc 1 119 0
	mr 29,3
.LVL96:
	.loc 1 121 0
	li 3,32
	bl memalign
	mr 30,3
.LVL97:
	mr 3,29
.LVL98:
.L91:
.LBB43:
	.loc 1 141 0
	mr 6,3
	mr 5,31
	li 4,0
.LVL99:
.L96:
	mr 7,5
	li 8,0
.L94:
.LBE43:
	.loc 1 154 0
	slwi 9,7,1
	add 11,8,6
.LBB44:
	.loc 1 129 0
	lhzx 0,27,9
.LBE44:
	.loc 1 154 0
	add 9,27,9
.LBB45:
	.loc 1 129 0
	addi 9,9,2
	addi 11,11,2
	sthx 0,8,6
	li 10,1
.L92:
	.loc 1 128 0
	cmpwi 7,10,3
	.loc 1 129 0
	lhz 0,0(9)
	.loc 1 128 0
	addi 10,10,1
	addi 9,9,2
	.loc 1 129 0
	sth 0,0(11)
	.loc 1 128 0
	addi 11,11,2
	bne+ 7,.L92
	.loc 1 127 0
	cmpwi 7,8,24
	.loc 1 128 0
	addi 7,7,128
	.loc 1 127 0
	addi 8,8,8
	bne+ 7,.L94
	.loc 1 93 0
	addi 0,4,4
	.loc 1 132 0
	addi 6,6,32
	.loc 1 93 0
	rlwinm 0,0,0,0xffff
	addi 5,5,4
.LBE45:
	.loc 1 125 0
	cmpwi 7,0,128
.LBB46:
	.loc 1 93 0
	extsh 4,0
.LBE46:
	.loc 1 125 0
	bne+ 7,.L96
	.loc 1 124 0
	cmpwi 7,31,15872
	.loc 1 125 0
	addi 3,3,1024
.LVL100:
	.loc 1 124 0
	addi 31,31,512
	bne+ 7,.L91
.LBB47:
	.loc 1 141 0
	li 4,0
.LVL101:
.L105:
	add 7,30,4
	mr 6,4
	li 5,0
.L103:
	mr 8,6
	li 10,0
.LVL102:
.L101:
	lbzx 0,26,8
	li 3,7
.LVL103:
.LBE47:
.LBB48:
	.loc 1 129 0
	add 9,26,8
	add 11,10,7
.LBE48:
.LBB49:
	.loc 1 141 0
	mtctr 3
	sthx 0,10,7
	addi 9,9,1
	addi 11,11,2
.L99:
	lbz 0,0(9)
	.loc 1 140 0
	addi 9,9,1
	.loc 1 141 0
	sth 0,0(11)
	.loc 1 140 0
	addi 11,11,2
	bdnz .L99
	.loc 1 139 0
	cmpwi 7,10,48
	.loc 1 140 0
	addi 8,8,128
	.loc 1 139 0
	addi 10,10,16
	bne+ 7,.L101
	.loc 1 93 0
	addi 0,5,8
	.loc 1 144 0
	addi 7,7,32
	.loc 1 93 0
	rlwinm 0,0,0,0xffff
	addi 6,6,8
.LBE49:
	.loc 1 137 0
	cmpwi 7,0,128
.LBB50:
	.loc 1 93 0
	extsh 5,0
.LBE50:
	.loc 1 137 0
	bne+ 7,.L103
	.loc 1 136 0
	cmpwi 7,4,15872
	addi 4,4,512
	bne+ 7,.L105
	.loc 1 148 0
	mr 3,23
	mr 4,29
	li 5,128
.LVL104:
	li 6,128
	li 7,3
.LVL105:
	li 8,0
	li 9,0
	li 10,1
	bl GX_InitTexObj
	.loc 1 149 0
	mr 3,22
	mr 4,30
	li 5,128
	li 6,128
	li 7,1
	li 8,0
	li 9,0
	li 10,1
	bl GX_InitTexObj
	.loc 1 151 0
	li 4,0
	mr 3,29
	ori 4,4,32768
	bl DCFlushRange
	.loc 1 152 0
	mr 3,30
	li 4,16384
	bl DCFlushRange
	.loc 1 154 0
	lwz 11,0(1)
	lwz 0,4(11)
	lwz 22,-128(11)
.LVL106:
	lwz 23,-124(11)
.LVL107:
	mtlr 0
	lwz 24,-120(11)
	lwz 25,-116(11)
	lwz 26,-112(11)
	lwz 27,-108(11)
	lwz 28,-104(11)
	lwz 29,-100(11)
.LVL108:
	lwz 30,-96(11)
.LVL109:
	lwz 31,-92(11)
	lfd 21,-88(11)
	lfd 22,-80(11)
	lfd 23,-72(11)
	lfd 24,-64(11)
	lfd 25,-56(11)
	lfd 26,-48(11)
	lfd 27,-40(11)
	lfd 28,-32(11)
	lfd 29,-24(11)
	lfd 30,-16(11)
	lfd 31,-8(11)
	mr 1,11
	blr
.LFE63:
	.size	GL_CreateTubeTex, .-GL_CreateTubeTex
	.align 2
	.globl main
	.type	main, @function
main:
.LFB72:
	.loc 1 535 0
.LVL110:
	mflr 0
.LCFI97:
	stwu 1,-416(1)
.LCFI98:
	stw 14,232(1)
.LCFI99:
	stw 15,236(1)
.LCFI100:
	stw 16,240(1)
.LCFI101:
	stw 17,244(1)
.LCFI102:
	addi 17,1,104
	stw 18,248(1)
.LCFI103:
	stw 19,252(1)
.LCFI104:
.LBB68:
.LBB69:
	.loc 1 610 0
	li 19,0
.LBE69:
.LBE68:
	.loc 1 535 0
	stw 20,256(1)
.LCFI105:
	addi 20,1,68
	stw 21,260(1)
.LCFI106:
	stw 22,264(1)
.LCFI107:
	.loc 1 579 0
	li 22,0
.LVL111:
	.loc 1 535 0
	stw 23,268(1)
.LCFI108:
	addi 23,1,56
	stw 24,272(1)
.LCFI109:
	addi 24,1,44
	stw 25,276(1)
.LCFI110:
	.loc 1 579 0
	li 25,0
	.loc 1 535 0
	stw 26,280(1)
.LCFI111:
	stw 27,284(1)
.LCFI112:
	stw 28,288(1)
.LCFI113:
	stw 29,292(1)
.LCFI114:
	stw 30,296(1)
.LCFI115:
	addi 30,1,176
	stfd 18,304(1)
.LCFI116:
	stfd 19,312(1)
.LCFI117:
	stfd 20,320(1)
.LCFI118:
	stfd 21,328(1)
.LCFI119:
	stfd 22,336(1)
.LCFI120:
	stfd 23,344(1)
.LCFI121:
	stfd 24,352(1)
.LCFI122:
	stfd 25,360(1)
.LCFI123:
	stfd 26,368(1)
.LCFI124:
	stfd 27,376(1)
.LCFI125:
	stfd 28,384(1)
.LCFI126:
	stfd 29,392(1)
.LCFI127:
	stfd 30,400(1)
.LCFI128:
	stfd 31,408(1)
.LCFI129:
	stw 31,300(1)
.LCFI130:
	stw 0,420(1)
.LCFI131:
	.loc 1 552 0
	bl setup
.LVL112:
	.loc 1 555 0
	lis 9,.LANCHOR0@ha
	lis 11,.LC53@ha
	la 18,.LANCHOR0@l(9)
	lis 9,.LC52@ha
	lwz 4,.LC52@l(9)
	.loc 1 564 0
	addi 15,18,172
	.loc 1 555 0
	lwz 3,.LC53@l(11)
	bl GL_CreateTubeTex
	.loc 1 556 0
	addi 3,18,76
	bl GL_CreateDotResultTex
	.loc 1 560 0
	lis 9,.LANCHOR2@ha
	la 29,.LANCHOR2@l(9)
	lwz 0,.LANCHOR2@l(9)
	lwz 11,4(29)
	.loc 1 564 0
	addi 6,1,32
	.loc 1 560 0
	lwz 9,8(29)
	.loc 1 564 0
	mr 3,15
	.loc 1 561 0
	lwz 10,12(29)
	.loc 1 564 0
	addi 4,1,8
	.loc 1 561 0
	lwz 8,16(29)
	.loc 1 564 0
	addi 5,1,20
	.loc 1 561 0
	lwz 7,20(29)
	.loc 1 562 0
	lwz 28,24(29)
	lwz 27,28(29)
	lwz 26,32(29)
	.loc 1 560 0
	stw 9,16(1)
	stw 0,8(1)
	stw 11,12(1)
	.loc 1 561 0
	stw 10,20(1)
	stw 8,24(1)
	stw 7,28(1)
	.loc 1 562 0
	stw 28,32(1)
	stw 27,36(1)
	stw 26,40(1)
	.loc 1 564 0
	bl guLookAt
	.loc 1 570 0
	li 5,36
	addi 4,29,36
	addi 3,1,140
	bl memcpy
	.loc 1 577 0
	li 4,192
	li 3,32
	bl memalign
	.loc 1 578 0
	li 4,192
	.loc 1 577 0
	stw 3,220(1)
.LVL113:
	.loc 1 578 0
	li 3,32
	bl memalign
	.loc 1 579 0
	li 4,192
	.loc 1 578 0
	stw 3,216(1)
.LVL114:
	.loc 1 579 0
	li 3,32
	bl memalign
	lis 9,.LANCHOR1@ha
	la 21,.LANCHOR1@l(9)
	mr 14,3
.LVL115:
	mr 16,21
.LVL116:
.L129:
.LBB79:
	.loc 1 757 0
	addi 8,1,116
	mr 11,21
	li 10,0
.L130:
.LBE79:
.LBB101:
.LBB70:
	.loc 1 589 0
	lfs 0,0(11)
	.loc 1 535 0
	add 9,30,10
.LBE70:
	.loc 1 586 0
	cmpwi 7,10,24
.LBB71:
	.loc 1 589 0
	stfsx 0,10,30
.LBE71:
	.loc 1 586 0
	addi 10,10,12
.LBB72:
	.loc 1 590 0
	lfs 13,4(11)
	stfs 13,4(9)
	.loc 1 591 0
	lfs 0,8(11)
	stfs 0,8(9)
	.loc 1 592 0
	lfs 13,12(11)
	stfs 13,0(8)
	.loc 1 593 0
	lfs 0,16(11)
	addi 11,11,20
	stfs 0,4(8)
	addi 8,8,8
.LBE72:
	.loc 1 586 0
	bne+ 7,.L130
	.loc 1 596 0
	addi 3,1,188
	mr 4,30
	mr 5,24
	.loc 1 535 0
	add 27,14,25
	.loc 1 596 0
	bl ps_guVecSub
	.loc 1 597 0
	addi 3,1,200
	mr 4,30
	mr 5,23
	bl ps_guVecSub
	.loc 1 598 0
	mr 3,23
	mr 4,24
	mr 5,17
	bl ps_guVecCross
	.loc 1 602 0
	addi 4,1,116
	mr 5,24
	mr 6,23
	mr 3,30
	.loc 1 535 0
	li 31,0
	.loc 1 602 0
	bl CalcTangSp
	.loc 1 603 0
	mr 3,24
	bl ps_guVecNormalize
	.loc 1 604 0
	mr 3,23
	bl ps_guVecNormalize
	mulli 0,22,20
	.loc 1 535 0
	lwz 9,216(1)
	.loc 1 604 0
	add 26,0,16
	.loc 1 535 0
	lwz 0,220(1)
	add 29,9,25
	add 28,0,25
.L132:
.LBB73:
	.loc 1 609 0
	lfs 0,0(26)
	.loc 1 612 0
	mr 3,20
	.loc 1 611 0
	lfs 13,8(26)
.LBE73:
	.loc 1 607 0
	addi 26,26,20
.LBB74:
	.loc 1 609 0
	stfs 0,68(1)
	.loc 1 611 0
	stfs 13,76(1)
	.loc 1 610 0
	stw 19,72(1)
	.loc 1 612 0
	bl ps_guVecNormalize
	.loc 1 623 0
	lwz 0,44(1)
	.loc 1 626 0
	addi 3,1,92
	.loc 1 623 0
	lwz 9,48(1)
	stw 0,92(1)
	stw 9,96(1)
	lwz 0,52(1)
	.loc 1 624 0
	lwz 9,56(1)
	.loc 1 623 0
	stw 0,100(1)
	.loc 1 624 0
	stw 9,80(1)
	lwz 0,60(1)
	lwz 9,64(1)
	stw 0,84(1)
	stw 9,88(1)
	.loc 1 626 0
	bl ps_guVecNormalize
	.loc 1 627 0
	addi 3,1,80
	bl ps_guVecNormalize
	.loc 1 629 0
	lfs 0,68(1)
	.loc 1 630 0
	lfs 13,72(1)
.LBE74:
	.loc 1 607 0
	cmpwi 7,31,3
.LBB75:
	.loc 1 629 0
	stfs 0,0(27)
.LBE75:
	.loc 1 607 0
	addi 31,31,1
.LBB76:
	.loc 1 631 0
	lfs 0,76(1)
	.loc 1 630 0
	stfs 13,4(27)
	.loc 1 631 0
	stfs 0,8(27)
.LBE76:
	.loc 1 607 0
	addi 27,27,12
.LBB77:
	.loc 1 633 0
	lfs 13,92(1)
	.loc 1 634 0
	lfs 0,96(1)
	.loc 1 633 0
	stfs 13,0(28)
	.loc 1 635 0
	lfs 13,100(1)
	.loc 1 634 0
	stfs 0,4(28)
	.loc 1 635 0
	stfs 13,8(28)
.LBE77:
	.loc 1 607 0
	addi 28,28,12
.LBB78:
	.loc 1 636 0
	lfs 0,80(1)
	.loc 1 637 0
	lfs 13,84(1)
	.loc 1 636 0
	stfs 0,0(29)
	.loc 1 638 0
	lfs 0,88(1)
	.loc 1 637 0
	stfs 13,4(29)
	.loc 1 638 0
	stfs 0,8(29)
.LBE78:
	.loc 1 607 0
	addi 29,29,12
	bne+ 7,.L132
.LBE101:
	.loc 1 581 0
	cmpwi 7,22,12
	addi 25,25,48
	addi 21,21,80
	addi 22,22,4
	bne+ 7,.L129
.LBB102:
	.loc 1 654 0
	lis 9,.LC40@ha
	.loc 1 680 0
	lis 11,.LC42@ha
	.loc 1 654 0
	lfs 26,.LC40@l(9)
.LBE102:
	.loc 1 581 0
	lis 9,.LC39@ha
.LBB103:
	.loc 1 680 0
	lfs 27,.LC42@l(11)
.LBE103:
	.loc 1 581 0
	lis 11,.LC3@ha
	stw 19,224(1)
.LBB104:
.LBB81:
.LBB83:
.LBB85:
	.file 2 "c:/Utils/devkitPro/libogc/include/ogc/gx.h"
	.loc 2 1141 0
	lis 28,0xcc00
.LBE85:
.LBE83:
.LBE81:
.LBE104:
	.loc 1 581 0
	lfs 30,.LC39@l(9)
.LVL117:
.LBB105:
	.loc 1 677 0
	lis 9,.LC41@ha
.LBE105:
	.loc 1 581 0
	lfs 28,.LC3@l(11)
.LVL118:
.LBB106:
	.loc 1 692 0
	lis 11,.LC43@ha
	.loc 1 677 0
	lfs 24,.LC41@l(9)
	.loc 1 693 0
	lis 9,.LC44@ha
	.loc 1 692 0
	lfs 22,.LC43@l(11)
	.loc 1 756 0
	lis 11,.LC45@ha
.LBE106:
	.loc 1 581 0
	lfs 29,224(1)
.LVL119:
.LBB107:
	.loc 1 656 0
	fmr 25,26
	.loc 1 693 0
	lfs 21,.LC44@l(9)
.LBB80:
.LBB82:
.LBB84:
	.loc 2 1141 0
	ori 28,28,32768
.LBE84:
.LBE82:
.LBE80:
	.loc 1 756 0
	lfs 20,.LC45@l(11)
	.loc 1 652 0
	bl WPAD_ScanPads
	.loc 1 653 0
	li 3,0
.LBE107:
	.loc 1 581 0
	li 31,0
.LVL120:
.LBB108:
	.loc 1 653 0
	bl WPAD_ButtonsDown
.LBE108:
	.loc 1 581 0
	li 24,1
.LVL121:
.LBB109:
	.loc 1 653 0
	andi. 0,3,128
.LBE109:
	.loc 1 581 0
	li 25,0
.LVL122:
	li 22,1
.LVL123:
.LBB110:
	.loc 1 655 0
	fmr 19,26
	.loc 1 657 0
	fmr 18,26
	.loc 1 691 0
	addi 30,18,220
	.loc 1 681 0
	fmr 31,29
	.loc 1 692 0
	addi 21,1,152
	.loc 1 682 0
	fmr 23,27
	.loc 1 695 0
	addi 27,18,268
	.loc 1 708 0
	addi 26,18,316
	addi 23,16,64
	.loc 1 653 0
	bne- 0,.L193
.LVL124:
.L136:
	.loc 1 654 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,256
	beq- 0,.L138
	fsubs 29,29,19
.LVL125:
.L138:
	.loc 1 655 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,512
	beq- 0,.L140
	fadds 29,29,26
.LVL126:
.L140:
	.loc 1 656 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,2048
	beq- 0,.L142
	fsubs 30,30,18
.L142:
	.loc 1 657 0
	li 3,0
	bl WPAD_ButtonsHeld
	andi. 0,3,1024
	beq- 0,.L144
	fadds 30,30,25
.L144:
	.loc 1 659 0
	li 3,0
	bl WPAD_ButtonsHeld
	.loc 1 661 0
	andi. 0,3,8
.LVL127:
	.loc 1 660 0
	nor 9,3,3
.LVL128:
	.loc 1 661 0
	beq- 0,.L146
	ori 31,31,8
.L146:
	.loc 1 662 0
	andi. 11,3,4
	beq- 0,.L148
	ori 31,31,4
.L148:
	.loc 1 663 0
	andi. 0,3,4096
	beq- 0,.L150
	ori 31,31,4096
.L150:
	.loc 1 664 0
	andi. 11,3,16
	beq- 0,.L152
	ori 31,31,16
.L152:
	.loc 1 667 0
	rlwinm 0,9,0,28,28
	and. 11,0,31
	beq- 0,.L154
	andi. 31,31,65527
.L154:
	.loc 1 668 0
	rlwinm 0,9,0,29,29
	and. 11,0,31
	beq- 0,.L156
	andi. 31,31,65531
.L156:
	.loc 1 669 0
	rlwinm 0,9,0,19,19
	and. 11,0,31
	beq- 0,.L158
	andi. 31,31,61439
.L158:
	.loc 1 670 0
	rlwinm 0,9,0,27,27
	and. 9,0,31
.LVL129:
	beq- 0,.L160
	andi. 31,31,65519
	xori 24,24,1
.L160:
	.loc 1 674 0
	li 3,1
.LVL130:
	bl GX_SetNumChans
	.loc 1 677 0
	fmr 1,30
	fmr 2,29
	mr 3,17
	fmr 3,24
	mr 4,15
	bl setlight
	.loc 1 680 0
	fcmpu 7,30,27
	cror 30,29,30
	bne- 7,.L162
	fmr 30,31
.LVL131:
.L165:
	.loc 1 682 0
	fcmpu 7,29,23
	cror 30,29,30
	bne- 7,.L168
.LVL132:
	fmr 29,31
.L171:
	.loc 1 686 0
	lis 9,.LC53@ha
	li 4,1
	lwz 3,.LC53@l(9)
	.loc 1 710 0
	mr 29,16
	.loc 1 686 0
	bl GX_LoadTexObj
	.loc 1 687 0
	lis 9,.LC52@ha
	lwz 3,.LC52@l(9)
	li 4,2
	bl GX_LoadTexObj
	.loc 1 691 0
	mr 3,30
	bl ps_guMtxIdentity
	.loc 1 692 0
	fmuls 1,28,22
	mr 3,30
	mr 4,21
	bl ps_guMtxRotAxisRad
	.loc 1 693 0
	fmr 1,31
	fmr 2,31
	mr 3,30
	fmr 3,21
	mr 4,30
	bl ps_guMtxTransApply
	.loc 1 695 0
	mr 5,27
	mr 3,15
	mr 4,30
	bl ps_guMtxConcat
	.loc 1 698 0
	mr 3,27
	li 4,0
	bl GX_LoadPosMtxImm
	.loc 1 701 0
	li 4,0
	mr 3,27
	bl GX_LoadNrmMtxImm
	.loc 1 702 0
	li 3,0
	bl GX_SetCurrentMtx
	.loc 1 705 0
	bl SetupShader
	.loc 1 708 0
	mr 4,26
	mr 3,30
	bl ps_guMtxInverse
	.loc 1 709 0
	mr 3,26
	mr 4,17
	addi 5,1,80
	bl ps_guVecMultiply
	.loc 1 710 0
	mr 3,26
	addi 4,1,8
	addi 5,1,92
	bl ps_guVecMultiply
.LVL133:
.L174:
	.loc 1 725 0
	li 3,128
	li 4,0
	li 5,4
	bl GX_Begin
.LVL134:
.LBB98:
.LBB87:
.LBB88:
	.loc 2 1292 0
	li 0,4
	fmr 11,31
	mtctr 0
.LBE88:
.LBE87:
.LBE98:
	.loc 1 725 0
	mr 11,29
.LVL135:
.L175:
.LBB99:
	.loc 1 727 0
	lwz 9,0(11)
.LVL136:
.LBE99:
	.loc 1 726 0
	addi 11,11,4
.LBB100:
	.loc 1 729 0
	lfs 0,0(9)
.LVL137:
	lfs 13,4(9)
.LVL138:
	lfs 12,8(9)
.LVL139:
.LBB90:
.LBB86:
	.loc 2 1141 0
	stfs 0,0(28)
	.loc 2 1142 0
	stfs 13,0(28)
	.loc 2 1143 0
	stfs 12,0(28)
.LBE86:
.LBE90:
	.loc 1 730 0
	lfs 13,16(9)
.LVL140:
	lfs 0,12(9)
.LVL141:
.LBB91:
.LBB92:
	.loc 2 1292 0
	stfs 0,0(28)
	.loc 2 1293 0
	stfs 13,0(28)
.LBE92:
.LBE91:
.LBB93:
.LBB89:
	.loc 2 1292 0
	stfs 11,0(28)
	.loc 2 1293 0
	stfs 11,0(28)
.LBE89:
.LBE93:
.LBB94:
.LBB95:
	.loc 2 1292 0
	stfs 11,0(28)
	.loc 2 1293 0
	stfs 11,0(28)
.LBE95:
.LBE94:
.LBB96:
.LBB97:
	.loc 2 1292 0
	stfs 11,0(28)
	.loc 2 1293 0
	stfs 11,0(28)
.LBE97:
.LBE96:
.LBE100:
	.loc 1 726 0
	bdnz .L175
	addi 29,29,16
	.loc 1 723 0
	cmpw 7,29,23
	bne+ 7,.L174
	.loc 1 739 0
	bl GX_Flush
.LVL142:
	.loc 1 741 0
	li 3,1
	bl GX_SetColorUpdate
	.loc 1 744 0
	slwi 29,25,2
	.loc 1 742 0
	li 3,1
	.loc 1 744 0
	add 29,29,18
	.loc 1 742 0
	bl GX_SetAlphaUpdate
	.loc 1 743 0
	li 5,1
	li 3,1
	li 4,3
	bl GX_SetZMode
	.loc 1 744 0
	lwz 3,4(29)
	li 4,1
	bl GX_CopyDisp
	.loc 1 745 0
	bl GX_DrawDone
	.loc 1 747 0
	lwz 3,4(29)
	bl VIDEO_SetNextFramebuffer
	.loc 1 748 0
	cmpwi 7,22,0
	bne- 7,.L194
.L178:
	.loc 1 752 0
	bl VIDEO_Flush
	.loc 1 753 0
	cmpwi 7,24,0
	bne- 7,.L195
.L180:
	.loc 1 652 0
	bl WPAD_ScanPads
	.loc 1 653 0
	li 3,0
	bl WPAD_ButtonsDown
	.loc 1 756 0
	fsubs 28,28,20
	.loc 1 653 0
	andi. 0,3,128
	.loc 1 754 0
	xori 25,25,1
	.loc 1 756 0
	li 22,0
	.loc 1 653 0
	beq+ 0,.L136
.L193:
	li 3,0
	bl exit
.LVL143:
.L168:
	.loc 1 683 0
	fcmpu 7,29,31
	cror 30,28,30
	bne+ 7,.L171
.LVL144:
	fmr 29,23
.LVL145:
	b .L171
.LVL146:
.L162:
	.loc 1 681 0
	fcmpu 7,30,31
	cror 30,28,30
	bne+ 7,.L165
.LVL147:
	fmr 30,27
	b .L165
.L195:
	.loc 1 753 0
	bl VIDEO_WaitVSync
	b .L180
.L194:
	.loc 1 750 0
	li 3,0
	bl VIDEO_SetBlack
	b .L178
.LBE110:
.LFE72:
	.size	main, .-main
	.align 2
	.globl DrawQuads
	.type	DrawQuads, @function
DrawQuads:
.LFB68:
	.loc 1 375 0
.LVL148:
	stwu 1,-328(1)
.LCFI132:
	mflr 0
.LCFI133:
	stw 18,264(1)
.LCFI134:
	.loc 1 377 0
	srawi 18,6,2
	addze. 18,18
.LVL149:
	.loc 1 375 0
	stw 19,268(1)
.LCFI135:
	mr 19,8
	stw 20,272(1)
.LCFI136:
	mr 20,7
	stw 22,280(1)
.LCFI137:
	mr 22,5
	stw 23,284(1)
.LCFI138:
	mr 23,4
	stw 24,288(1)
.LCFI139:
	mr 24,3
	stw 26,296(1)
.LCFI140:
	mr 26,6
	stfd 31,320(1)
.LCFI141:
	stw 15,252(1)
.LCFI142:
	stw 16,256(1)
.LCFI143:
	stw 17,260(1)
.LCFI144:
	stw 21,276(1)
.LCFI145:
	stw 25,292(1)
.LCFI146:
	stw 27,300(1)
.LCFI147:
	stw 28,304(1)
.LCFI148:
	stw 29,308(1)
.LCFI149:
	stw 30,312(1)
.LCFI150:
	stw 31,316(1)
.LCFI151:
	stw 0,332(1)
.LCFI152:
	.loc 1 377 0
	ble- 0,.L202
.LVL150:
	lis 9,.LC2@ha
.LBB123:
.LBB125:
.LBB138:
.LBB140:
	.loc 2 1141 0
	lis 31,0xcc00
.LBE140:
.LBE138:
.LBE125:
	.loc 1 387 0
	lfs 31,.LC2@l(9)
.LBE123:
	.loc 1 377 0
	lis 9,.LANCHOR1@ha
	la 27,.LANCHOR1@l(9)
.LBB146:
.LBB124:
.LBB142:
.LBB139:
	.loc 2 1141 0
	ori 31,31,32768
.LBE139:
.LBE142:
.LBE124:
.LBE146:
	.loc 1 377 0
	li 28,0
.LVL151:
	li 29,0
	addi 15,1,104
	addi 17,1,56
	addi 16,1,8
	addi 21,1,152
	addi 25,1,248
.LBB147:
	.loc 1 387 0
	li 30,0
.LVL152:
.L199:
	.loc 1 375 0
	add 9,23,29
	.loc 1 387 0
	lfsx 0,29,23
.LVL153:
	lfs 12,8(9)
.LVL154:
	.loc 1 397 0
	li 4,30
	.loc 1 387 0
	lfs 13,4(9)
.LVL155:
	.loc 1 375 0
	add 9,22,29
	.loc 1 387 0
	stfs 0,24(1)
	.loc 1 397 0
	li 5,0
	.loc 1 387 0
	stfs 13,28(1)
	.loc 1 397 0
	mr 3,15
	.loc 1 387 0
	stfs 12,32(1)
	stfs 0,8(1)
	stfs 13,12(1)
	stfs 12,16(1)
	stw 30,20(1)
	stw 30,36(1)
	stw 30,40(1)
	stw 30,44(1)
	stw 30,48(1)
	stfs 31,52(1)
	.loc 1 391 0
	lfs 12,8(9)
	lfs 13,4(9)
	.loc 1 375 0
	add 9,24,29
	.loc 1 391 0
	lfsx 0,29,22
	stfs 13,76(1)
	stfs 0,72(1)
	stfs 12,80(1)
	stfs 0,56(1)
	stfs 13,60(1)
	stfs 12,64(1)
	stw 30,68(1)
	stw 30,84(1)
	stw 30,88(1)
	stw 30,92(1)
	stw 30,96(1)
	stfs 31,100(1)
	.loc 1 395 0
	lfs 12,8(9)
	lfs 13,4(9)
	lfsx 0,29,24
	stfs 0,104(1)
	stfs 0,120(1)
	stfs 13,124(1)
	stfs 12,128(1)
	stfs 13,108(1)
	stfs 12,112(1)
	stw 30,116(1)
	stw 30,132(1)
	stw 30,136(1)
	stw 30,140(1)
	stw 30,144(1)
	stfs 31,148(1)
	.loc 1 397 0
	bl GX_LoadTexMtxImm
	.loc 1 398 0
	mr 3,17
	li 4,33
	li 5,0
	bl GX_LoadTexMtxImm
	.loc 1 399 0
	mr 3,16
	li 4,36
	li 5,0
	bl GX_LoadTexMtxImm
	.loc 1 404 0
	mr 3,20
	mr 4,19
	mr 5,26
	mr 6,21
	bl CalcVertexAttributes
	.loc 1 407 0
	li 3,128
	li 4,0
	li 5,4
	bl GX_Begin
	mr 11,21
	mr 9,27
.L200:
.LBB144:
	.loc 1 414 0
	lfs 0,0(9)
.LVL156:
	lfs 13,4(9)
.LVL157:
	lfs 12,8(9)
.LVL158:
.LBB137:
.LBB141:
	.loc 2 1141 0
	stfs 0,0(31)
	.loc 2 1142 0
	stfs 13,0(31)
	.loc 2 1143 0
	stfs 12,0(31)
.LBE141:
.LBE137:
	.loc 1 415 0
	lfs 0,12(9)
.LVL159:
	lfs 13,16(9)
.LVL160:
.LBB133:
.LBB135:
	.loc 2 1293 0
	addi 9,9,20
.LBE135:
.LBE133:
.LBB131:
.LBB132:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 13,0(31)
.LBE132:
.LBE131:
	.loc 1 416 0
	lfs 0,0(11)
.LVL161:
	lfs 13,12(11)
.LVL162:
.LBB129:
.LBB130:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 13,0(31)
.LBE130:
.LBE129:
	.loc 1 417 0
	lfs 0,4(11)
.LVL163:
	lfs 13,16(11)
.LVL164:
.LBB127:
.LBB128:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 13,0(31)
.LBE128:
.LBE127:
	.loc 1 418 0
	lfs 0,8(11)
.LVL165:
	lfs 13,20(11)
.LVL166:
.LBB126:
.LBB134:
	.loc 2 1293 0
	addi 11,11,24
.LBE134:
.LBE126:
.LBE144:
	.loc 1 408 0
	cmpw 7,11,25
.LBB145:
.LBB143:
.LBB136:
	.loc 2 1292 0
	stfs 0,0(31)
	.loc 2 1293 0
	stfs 13,0(31)
.LBE136:
.LBE143:
.LBE145:
	.loc 1 408 0
	bne+ 7,.L200
.LBE147:
	.loc 1 377 0
	addi 28,28,1
	addi 29,29,48
	cmpw 7,28,18
	addi 27,27,80
	bne+ 7,.L199
.LVL167:
.L202:
	.loc 1 422 0
	lwz 0,332(1)
	lwz 15,252(1)
	lwz 16,256(1)
	mtlr 0
	lwz 17,260(1)
	lwz 18,264(1)
.LVL168:
	lwz 19,268(1)
.LVL169:
	lwz 20,272(1)
.LVL170:
	lwz 21,276(1)
	lwz 22,280(1)
.LVL171:
	lwz 23,284(1)
.LVL172:
	lwz 24,288(1)
.LVL173:
	lwz 25,292(1)
	lwz 26,296(1)
.LVL174:
	lwz 27,300(1)
	lwz 28,304(1)
.LVL175:
	lwz 29,308(1)
	lwz 30,312(1)
	lwz 31,316(1)
	lfd 31,320(1)
	addi 1,1,328
	blr
.LFE68:
	.size	DrawQuads, .-DrawQuads
	.globl cubedata
	.section	.rodata
	.align 2
	.set	.LANCHOR2,. + 0
	.type	C.12.8102, @object
	.size	C.12.8102, 12
C.12.8102:
	.zero	12
	.type	C.13.8103, @object
	.size	C.13.8103, 12
C.13.8103:
	.long	0
	.long	1065353216
	.long	0
	.type	C.14.8104, @object
	.size	C.14.8104, 12
C.14.8104:
	.long	0
	.long	0
	.long	-1082130432
	.type	C.15.8105, @object
	.size	C.15.8105, 36
C.15.8105:
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1501560832
.LC2:
	.4byte	1065353216
.LC3:
	.4byte	1110704128
.LC4:
	.4byte	1036831949
.LC5:
	.4byte	1133903872
.LC12:
	.4byte	0
.LC15:
	.4byte	1127481344
.LC17:
	.4byte	1056964608
.LC19:
	.4byte	1501560836
.LC20:
	.4byte	1023410176
.LC21:
	.4byte	1132396544
.LC22:
	.4byte	1092616192
.LC27:
	.4byte	1098907648
.LC28:
	.4byte	1031798784
.LC31:
	.4byte	1166016512
.LC32:
	.4byte	1123942400
.LC33:
	.4byte	1124073472
.LC34:
	.4byte	1115684864
.LC39:
	.4byte	1119092736
.LC40:
	.4byte	1048576000
.LC41:
	.4byte	1117782016
.LC42:
	.4byte	1135869952
.LC43:
	.4byte	1016003125
.LC44:
	.4byte	-1061158912
.LC45:
	.4byte	1041865114
.LC52:
	.4byte	.LANCHOR0+140
.LC53:
	.4byte	.LANCHOR0+108
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC13:
	.4byte	1074340347
	.4byte	1413754136
	.section	".data"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	cubedata, @object
	.size	cubedata, 320
cubedata:
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	0
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	-1082130432
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	-1082130432
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	-1082130432
	.long	0
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	0
	.long	1065353216
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	-1082130432
	.long	1065353216
	.long	1065353216
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	rmode, @object
	.size	rmode, 4
rmode:
	.zero	4
	.type	frameBuffer, @object
	.size	frameBuffer, 8
frameBuffer:
	.zero	8
	.type	perspective, @object
	.size	perspective, 64
perspective:
	.zero	64
	.type	tex_dotresult, @object
	.size	tex_dotresult, 32
tex_dotresult:
	.zero	32
	.type	tex_NxNy, @object
	.size	tex_NxNy, 32
tex_NxNy:
	.zero	32
	.type	tex_Nz, @object
	.size	tex_Nz, 32
tex_Nz:
	.zero	32
	.type	view, @object
	.size	view, 48
view:
	.zero	48
	.type	model, @object
	.size	model, 48
model:
	.zero	48
	.type	modelview, @object
	.size	modelview, 48
modelview:
	.zero	48
	.type	modelinverse, @object
	.size	modelinverse, 48
modelinverse:
	.zero	48
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
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI1-.LFB71
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI4-.LCFI1
	.byte	0x9d
	.uleb128 0x3
	.byte	0x9c
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI6-.LCFI4
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.align 2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI8-.LFB70
	.byte	0xe
	.uleb128 0x98
	.byte	0x4
	.4byte	.LCFI11-.LCFI8
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbc
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI14-.LCFI11
	.byte	0x9b
	.uleb128 0xd
	.byte	0xbe
	.uleb128 0x4
	.byte	0xbd
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x9d
	.uleb128 0xb
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x99
	.uleb128 0xf
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x9c
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0x9a
	.uleb128 0xe
	.align 2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI19-.LFB69
	.byte	0xe
	.uleb128 0x48
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xbe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xbf
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI26-.LCFI21
	.byte	0x9c
	.uleb128 0xc
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0x9d
	.uleb128 0xb
	.align 2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI29-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI31-.LFB66
	.byte	0xe
	.uleb128 0x68
	.byte	0x4
	.4byte	.LCFI33-.LCFI31
	.byte	0x97
	.uleb128 0xb
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0x98
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0x99
	.uleb128 0x9
	.byte	0x4
	.4byte	.LCFI43-.LCFI35
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x3
	.byte	0x9e
	.uleb128 0x4
	.byte	0x9d
	.uleb128 0x5
	.byte	0x9c
	.uleb128 0x6
	.byte	0x9b
	.uleb128 0x7
	.byte	0x9a
	.uleb128 0x8
	.byte	0xbf
	.uleb128 0x2
	.align 2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI45-.LFB65
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0x9b
	.uleb128 0x5
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0x9c
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI51-.LCFI48
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x9d
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
	.byte	0xd
	.uleb128 0x1f
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0x9a
	.uleb128 0x6
	.align 2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI54-.LFB64
	.byte	0xe
	.uleb128 0x4080
	.byte	0x4
	.4byte	.LCFI56-.LCFI54
	.byte	0x99
	.uleb128 0x17
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI63-.LCFI56
	.byte	0x98
	.uleb128 0x18
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
	.byte	0x4
	.4byte	.LCFI65-.LCFI63
	.byte	0x9b
	.uleb128 0x15
	.byte	0x9a
	.uleb128 0x16
	.byte	0x4
	.4byte	.LCFI66-.LCFI65
	.byte	0x9c
	.uleb128 0x14
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0x9d
	.uleb128 0x13
	.byte	0x4
	.4byte	.LCFI72-.LCFI67
	.byte	0x9f
	.uleb128 0x11
	.byte	0x9e
	.uleb128 0x12
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.align 2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI73-.LFB63
	.byte	0xe
	.uleb128 0xc098
	.byte	0x4
	.4byte	.LCFI82-.LCFI73
	.byte	0x96
	.uleb128 0x20
	.byte	0xbd
	.uleb128 0x6
	.byte	0xbc
	.uleb128 0x8
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
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI84-.LCFI82
	.byte	0x98
	.uleb128 0x1e
	.byte	0x97
	.uleb128 0x1f
	.byte	0x4
	.4byte	.LCFI86-.LCFI84
	.byte	0x9a
	.uleb128 0x1c
	.byte	0x99
	.uleb128 0x1d
	.byte	0x4
	.4byte	.LCFI87-.LCFI86
	.byte	0x9b
	.uleb128 0x1b
	.byte	0x4
	.4byte	.LCFI90-.LCFI87
	.byte	0xbb
	.uleb128 0xa
	.byte	0xba
	.uleb128 0xc
	.byte	0x9f
	.uleb128 0x17
	.byte	0x4
	.4byte	.LCFI96-.LCFI90
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9e
	.uleb128 0x18
	.byte	0x9d
	.uleb128 0x19
	.byte	0x9c
	.uleb128 0x1a
	.byte	0xbf
	.uleb128 0x2
	.byte	0xbe
	.uleb128 0x4
	.align 2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI98-.LFB72
	.byte	0xe
	.uleb128 0x1a0
	.byte	0x4
	.4byte	.LCFI102-.LCFI98
	.byte	0x91
	.uleb128 0x2b
	.byte	0x90
	.uleb128 0x2c
	.byte	0x8f
	.uleb128 0x2d
	.byte	0x8e
	.uleb128 0x2e
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI104-.LCFI102
	.byte	0x93
	.uleb128 0x29
	.byte	0x92
	.uleb128 0x2a
	.byte	0x4
	.4byte	.LCFI105-.LCFI104
	.byte	0x94
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI107-.LCFI105
	.byte	0x96
	.uleb128 0x26
	.byte	0x95
	.uleb128 0x27
	.byte	0x4
	.4byte	.LCFI108-.LCFI107
	.byte	0x97
	.uleb128 0x25
	.byte	0x4
	.4byte	.LCFI109-.LCFI108
	.byte	0x98
	.uleb128 0x24
	.byte	0x4
	.4byte	.LCFI110-.LCFI109
	.byte	0x99
	.uleb128 0x23
	.byte	0x4
	.4byte	.LCFI115-.LCFI110
	.byte	0x9e
	.uleb128 0x1e
	.byte	0x9d
	.uleb128 0x1f
	.byte	0x9c
	.uleb128 0x20
	.byte	0x9b
	.uleb128 0x21
	.byte	0x9a
	.uleb128 0x22
	.byte	0x4
	.4byte	.LCFI131-.LCFI115
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x1d
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
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI132-.LFB68
	.byte	0xe
	.uleb128 0x148
	.byte	0x4
	.4byte	.LCFI134-.LCFI132
	.byte	0x92
	.uleb128 0x10
	.byte	0x9
	.uleb128 0x41
	.uleb128 0x0
	.byte	0x4
	.4byte	.LCFI135-.LCFI134
	.byte	0x93
	.uleb128 0xf
	.byte	0x4
	.4byte	.LCFI136-.LCFI135
	.byte	0x94
	.uleb128 0xe
	.byte	0x4
	.4byte	.LCFI137-.LCFI136
	.byte	0x96
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI138-.LCFI137
	.byte	0x97
	.uleb128 0xb
	.byte	0x4
	.4byte	.LCFI139-.LCFI138
	.byte	0x98
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI140-.LCFI139
	.byte	0x9a
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI152-.LCFI140
	.byte	0x11
	.uleb128 0x41
	.sleb128 -1
	.byte	0x9f
	.uleb128 0x3
	.byte	0x9e
	.uleb128 0x4
	.byte	0x9d
	.uleb128 0x5
	.byte	0x9c
	.uleb128 0x6
	.byte	0x9b
	.uleb128 0x7
	.byte	0x99
	.uleb128 0x9
	.byte	0x95
	.uleb128 0xd
	.byte	0x91
	.uleb128 0x11
	.byte	0x90
	.uleb128 0x12
	.byte	0x8f
	.uleb128 0x13
	.byte	0xbf
	.uleb128 0x2
	.align 2
.LEFDE18:
	.section	".text"
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL6-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB70-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LFB67-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI29-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL44-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL45-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL43-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LFB65-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI52-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 48
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LFB64-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI54-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 16512
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LFB63-.Ltext0
	.4byte	.LCFI73-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI73-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 49304
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI98-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI98-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 416
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL147-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST70:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	.LFB68-.Ltext0
	.4byte	.LCFI132-.Ltext0
	.2byte	0x1
	.byte	0x51
	.4byte	.LCFI132-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 328
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL173-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL172-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL171-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL174-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL170-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0x0
	.4byte	0x0
.LLST77:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL169-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0x0
	.4byte	0x0
.LLST78:
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST82:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST83:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST85:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST86:
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL166-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST87:
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL165-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
.LLST88:
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL158-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0x0
	.4byte	0x0
.LLST89:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0x0
	.4byte	0x0
.LLST90:
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0x0
	.4byte	0x0
	.file 3 "c:/Utils/devkitPro/libogc/include/gctypes.h"
	.file 4 "c:/Utils/devkitPro/libogc/include/ogc/gx_struct.h"
	.file 5 "c:/Utils/devkitPro/libogc/include/ogc/gu.h"
	.section	.debug_info
	.4byte	0xfaf
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x1
	.4byte	.LASF129
	.4byte	.LASF130
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
	.string	"s16"
	.byte	0x3
	.byte	0x15
	.4byte	0x46
	.uleb128 0x7
	.string	"f32"
	.byte	0x3
	.byte	0x29
	.4byte	0x84
	.uleb128 0x6
	.byte	0x4
	.4byte	0x69
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9c
	.uleb128 0x8
	.4byte	0xa7
	.4byte	0xe4
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x7
	.byte	0x0
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x3c
	.byte	0x4
	.byte	0x3a
	.4byte	0x1a6
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
	.4byte	0x1a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0x47
	.4byte	0x1bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0x0
	.uleb128 0x8
	.4byte	0x92
	.4byte	0x1bc
	.uleb128 0x9
	.4byte	0x2c
	.byte	0xb
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0x0
	.uleb128 0x8
	.4byte	0x92
	.4byte	0x1cc
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x6
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x4
	.byte	0x48
	.4byte	0xe4
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0xc
	.byte	0x5
	.byte	0x27
	.4byte	0x208
	.uleb128 0xc
	.string	"x"
	.byte	0x5
	.byte	0x28
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xc
	.string	"y"
	.byte	0x5
	.byte	0x28
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"z"
	.byte	0x5
	.byte	0x28
	.4byte	0xbd
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x5
	.byte	0x29
	.4byte	0x1d7
	.uleb128 0x7
	.string	"Mtx"
	.byte	0x5
	.byte	0x2f
	.4byte	0x21e
	.uleb128 0x8
	.4byte	0xbd
	.4byte	0x234
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x3
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x23a
	.uleb128 0x8
	.4byte	0xbd
	.4byte	0x24a
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x3
	.byte	0x0
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x5
	.byte	0x35
	.4byte	0x255
	.uleb128 0x8
	.4byte	0xbd
	.4byte	0x26b
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
	.4byte	0x2ad
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
	.4byte	0x26b
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x20
	.byte	0x2
	.2byte	0x3c6
	.4byte	0x2d6
	.uleb128 0xf
	.string	"val"
	.byte	0x2
	.2byte	0x3c7
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x3c8
	.4byte	0x2b9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2d6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x92
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1d6
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST0
	.4byte	0x363
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x84
	.uleb128 0x13
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x1d8
	.4byte	0xa7
	.4byte	.LLST1
	.uleb128 0x14
	.string	"fb"
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x4d
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1da
	.4byte	0x3d
	.4byte	.LLST2
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1db
	.4byte	0x2ad
	.4byte	.LLST3
	.uleb128 0x14
	.string	"w"
	.byte	0x1
	.2byte	0x20f
	.4byte	0xbd
	.uleb128 0x14
	.string	"h"
	.byte	0x1
	.2byte	0x210
	.4byte	0xbd
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1ba
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST4
	.4byte	0x46e
	.uleb128 0x16
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x46e
	.4byte	.LLST5
	.uleb128 0x16
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x474
	.4byte	.LLST6
	.uleb128 0x16
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x46e
	.4byte	.LLST7
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x46e
	.4byte	.LLST8
	.uleb128 0x17
	.string	"v10"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x17
	.string	"v20"
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x18
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x18
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x18
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x84
	.4byte	.LLST9
	.uleb128 0x13
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1be
	.4byte	0x84
	.4byte	.LLST10
	.uleb128 0x13
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x84
	.4byte	.LLST11
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x84
	.4byte	.LLST12
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x84
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x208
	.uleb128 0x6
	.byte	0x4
	.4byte	0x84
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1aa
	.byte	0x1
	.4byte	0x208
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST14
	.4byte	0x508
	.uleb128 0x16
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1a9
	.4byte	0x234
	.4byte	.LLST15
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xbd
	.4byte	.LLST16
	.uleb128 0x1a
	.string	"phi"
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xbd
	.4byte	.LLST17
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1a9
	.4byte	0xbd
	.4byte	.LLST18
	.uleb128 0x18
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x1ab
	.4byte	0x208
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xbd
	.4byte	.LLST19
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1ac
	.4byte	0xbd
	.4byte	.LLST20
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x107
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST21
	.4byte	0x52e
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x108
	.4byte	0x4d
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST22
	.4byte	0x5cf
	.uleb128 0x1c
	.string	"pos"
	.byte	0x1
	.byte	0xf2
	.4byte	0x46e
	.4byte	.LLST23
	.uleb128 0x1d
	.4byte	.LASF53
	.byte	0x1
	.byte	0xf2
	.4byte	0x46e
	.4byte	.LLST24
	.uleb128 0x1d
	.4byte	.LASF61
	.byte	0x1
	.byte	0xf2
	.4byte	0x4d
	.4byte	.LLST25
	.uleb128 0x1c
	.string	"out"
	.byte	0x1
	.byte	0xf2
	.4byte	0x46e
	.4byte	.LLST26
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0xf3
	.4byte	0x4d
	.4byte	.LLST27
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x0
	.uleb128 0x20
	.string	"lv"
	.byte	0x1
	.byte	0xf5
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x20
	.string	"pv"
	.byte	0x1
	.byte	0xf5
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x21
	.4byte	.LASF62
	.byte	0x1
	.byte	0xf5
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.byte	0xf6
	.4byte	0x46e
	.4byte	.LLST28
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF63
	.byte	0x1
	.byte	0xcc
	.byte	0x1
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LLST29
	.4byte	0x67d
	.uleb128 0x1c
	.string	"tex"
	.byte	0x1
	.byte	0xcc
	.4byte	0x2e2
	.4byte	.LLST30
	.uleb128 0x22
	.string	"res"
	.byte	0x1
	.byte	0xcd
	.4byte	0x4d
	.uleb128 0x23
	.4byte	.LASF64
	.byte	0x1
	.byte	0xce
	.4byte	0x67d
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.byte	0xcf
	.4byte	0xb2
	.4byte	.LLST31
	.uleb128 0x1e
	.string	"y"
	.byte	0x1
	.byte	0xcf
	.4byte	0xb2
	.4byte	.LLST32
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.byte	0xd0
	.4byte	0x2e8
	.4byte	.LLST33
	.uleb128 0x24
	.4byte	.LASF65
	.byte	0x1
	.byte	0xdb
	.4byte	0x2e8
	.4byte	.LLST34
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x667
	.uleb128 0x1e
	.string	"xx"
	.byte	0x1
	.byte	0xde
	.4byte	0x4d
	.4byte	.LLST35
	.uleb128 0x22
	.string	"yy"
	.byte	0x1
	.byte	0xde
	.4byte	0x4d
	.byte	0x0
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x24
	.4byte	.LASF66
	.byte	0x1
	.byte	0xd4
	.4byte	0x84
	.4byte	.LLST36
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0x92
	.4byte	0x68c
	.uleb128 0x26
	.4byte	0x2c
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST37
	.4byte	0x77a
	.uleb128 0x1d
	.4byte	.LASF68
	.byte	0x1
	.byte	0x9c
	.4byte	0x2e2
	.4byte	.LLST38
	.uleb128 0x21
	.4byte	.LASF64
	.byte	0x1
	.byte	0x9d
	.4byte	0x77a
	.byte	0x4
	.byte	0x91
	.sleb128 -16504
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.byte	0x9e
	.4byte	0xb2
	.4byte	.LLST39
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.byte	0x9e
	.4byte	0xb2
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.byte	0xa0
	.4byte	0x2e8
	.4byte	.LLST40
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.byte	0xa4
	.4byte	0xb2
	.uleb128 0x24
	.4byte	.LASF65
	.byte	0x1
	.byte	0xb7
	.4byte	0x2e8
	.4byte	.LLST41
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0xb8
	.4byte	0x75b
	.uleb128 0x24
	.4byte	.LASF70
	.byte	0x1
	.byte	0xa7
	.4byte	0x84
	.4byte	.LLST42
	.uleb128 0x23
	.4byte	.LASF71
	.byte	0x1
	.byte	0xa8
	.4byte	0x84
	.uleb128 0x24
	.4byte	.LASF72
	.byte	0x1
	.byte	0xaa
	.4byte	0x84
	.4byte	.LLST43
	.uleb128 0x22
	.string	"sin"
	.byte	0x1
	.byte	0xac
	.4byte	0x84
	.uleb128 0x22
	.string	"cos"
	.byte	0x1
	.byte	0xad
	.4byte	0x84
	.uleb128 0x24
	.4byte	.LASF66
	.byte	0x1
	.byte	0xb0
	.4byte	0x84
	.4byte	.LLST44
	.byte	0x0
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0xf8
	.uleb128 0x1e
	.string	"xx"
	.byte	0x1
	.byte	0xba
	.4byte	0x4d
	.4byte	.LLST45
	.uleb128 0x22
	.string	"yy"
	.byte	0x1
	.byte	0xba
	.4byte	0x4d
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0x92
	.4byte	0x78b
	.uleb128 0x27
	.4byte	0x2c
	.2byte	0x3fff
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LLST46
	.4byte	0x8d5
	.uleb128 0x1d
	.4byte	.LASF74
	.byte	0x1
	.byte	0x5d
	.4byte	0x2e2
	.4byte	.LLST47
	.uleb128 0x1d
	.4byte	.LASF75
	.byte	0x1
	.byte	0x5d
	.4byte	0x2e2
	.4byte	.LLST48
	.uleb128 0x21
	.4byte	.LASF76
	.byte	0x1
	.byte	0x5e
	.4byte	0x8d5
	.byte	0x4
	.byte	0x91
	.sleb128 -32912
	.uleb128 0x21
	.4byte	.LASF77
	.byte	0x1
	.byte	0x5f
	.4byte	0x77a
	.byte	0x4
	.byte	0x91
	.sleb128 -49296
	.uleb128 0x1e
	.string	"x"
	.byte	0x1
	.byte	0x60
	.4byte	0xb2
	.4byte	.LLST49
	.uleb128 0x22
	.string	"y"
	.byte	0x1
	.byte	0x60
	.4byte	0xb2
	.uleb128 0x23
	.4byte	.LASF78
	.byte	0x1
	.byte	0x61
	.4byte	0x84
	.uleb128 0x24
	.4byte	.LASF79
	.byte	0x1
	.byte	0x77
	.4byte	0xce
	.4byte	.LLST50
	.uleb128 0x24
	.4byte	.LASF80
	.byte	0x1
	.byte	0x78
	.4byte	0xce
	.4byte	.LLST51
	.uleb128 0x24
	.4byte	.LASF81
	.byte	0x1
	.byte	0x79
	.4byte	0xce
	.4byte	.LLST52
	.uleb128 0x24
	.4byte	.LASF82
	.byte	0x1
	.byte	0x7a
	.4byte	0xce
	.4byte	.LLST53
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x140
	.4byte	0x898
	.uleb128 0x24
	.4byte	.LASF70
	.byte	0x1
	.byte	0x66
	.4byte	0x84
	.4byte	.LLST54
	.uleb128 0x23
	.4byte	.LASF71
	.byte	0x1
	.byte	0x67
	.4byte	0x84
	.uleb128 0x23
	.4byte	.LASF83
	.byte	0x1
	.byte	0x68
	.4byte	0x84
	.uleb128 0x24
	.4byte	.LASF84
	.byte	0x1
	.byte	0x69
	.4byte	0x84
	.4byte	.LLST55
	.uleb128 0x22
	.string	"u"
	.byte	0x1
	.byte	0x6e
	.4byte	0x92
	.uleb128 0x22
	.string	"v"
	.byte	0x1
	.byte	0x6f
	.4byte	0x92
	.uleb128 0x22
	.string	"w"
	.byte	0x1
	.byte	0x70
	.4byte	0x92
	.byte	0x0
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x178
	.4byte	0x8b6
	.uleb128 0x22
	.string	"xx"
	.byte	0x1
	.byte	0x8a
	.4byte	0x4d
	.uleb128 0x22
	.string	"yy"
	.byte	0x1
	.byte	0x8a
	.4byte	0x4d
	.byte	0x0
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x1a0
	.uleb128 0x1e
	.string	"xx"
	.byte	0x1
	.byte	0x7e
	.4byte	0x4d
	.4byte	.LLST56
	.uleb128 0x22
	.string	"yy"
	.byte	0x1
	.byte	0x7e
	.4byte	0x4d
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0x9c
	.4byte	0x8e6
	.uleb128 0x27
	.4byte	0x2c
	.2byte	0x3fff
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x474
	.byte	0x1
	.byte	0x3
	.4byte	0x913
	.uleb128 0x29
	.string	"x"
	.byte	0x2
	.2byte	0x473
	.4byte	0xbd
	.uleb128 0x29
	.string	"y"
	.byte	0x2
	.2byte	0x473
	.4byte	0xbd
	.uleb128 0x29
	.string	"z"
	.byte	0x2
	.2byte	0x473
	.4byte	0xbd
	.byte	0x0
	.uleb128 0x28
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x50b
	.byte	0x1
	.byte	0x3
	.4byte	0x936
	.uleb128 0x29
	.string	"s"
	.byte	0x2
	.2byte	0x50a
	.4byte	0xbd
	.uleb128 0x29
	.string	"t"
	.byte	0x2
	.2byte	0x50a
	.4byte	0xbd
	.byte	0x0
	.uleb128 0x2a
	.4byte	.LASF131
	.byte	0x2
	.2byte	0x470
	.byte	0x3
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x217
	.byte	0x1
	.4byte	0x4d
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST57
	.4byte	0xc6e
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x217
	.4byte	0x4d
	.4byte	.LLST58
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x217
	.4byte	0xc8
	.4byte	.LLST59
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x218
	.4byte	0x9c
	.byte	0x1
	.byte	0x6f
	.uleb128 0x2b
	.string	"zt"
	.byte	0x1
	.2byte	0x219
	.4byte	0x84
	.4byte	.LLST60
	.uleb128 0x17
	.string	"dir"
	.byte	0x1
	.2byte	0x21a
	.4byte	0xbd
	.byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.uleb128 0x12
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x21b
	.4byte	0x92
	.uleb128 0x18
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x21c
	.4byte	0x92
	.byte	0x1
	.byte	0x68
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x21d
	.4byte	0x4d
	.4byte	.LLST61
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x21d
	.4byte	0x4d
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x21e
	.4byte	0x46e
	.byte	0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x21f
	.4byte	0x46e
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x220
	.4byte	0x46e
	.byte	0x1
	.byte	0x5e
	.uleb128 0x17
	.string	"fb"
	.byte	0x1
	.2byte	0x222
	.4byte	0xa7
	.byte	0x1
	.byte	0x69
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x223
	.4byte	0xbd
	.byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x224
	.4byte	0xa7
	.byte	0x1
	.byte	0x66
	.uleb128 0x17
	.string	"cam"
	.byte	0x1
	.2byte	0x230
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -408
	.uleb128 0x17
	.string	"up"
	.byte	0x1
	.2byte	0x231
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -396
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x232
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -384
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x237
	.4byte	0xc6e
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x1c8
	.4byte	0xb2d
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.2byte	0x246
	.4byte	0x4d
	.4byte	.LLST62
	.uleb128 0x17
	.string	"t"
	.byte	0x1
	.2byte	0x247
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x17
	.string	"b"
	.byte	0x1
	.2byte	0x247
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -360
	.uleb128 0x17
	.string	"n"
	.byte	0x1
	.2byte	0x247
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -348
	.uleb128 0x17
	.string	"pn"
	.byte	0x1
	.2byte	0x247
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x248
	.4byte	0xc6e
	.byte	0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x249
	.4byte	0xc7e
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x25
	.4byte	.Ldebug_ranges0+0x1e0
	.4byte	0xb0e
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x260
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x260
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.byte	0x0
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x220
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x24b
	.4byte	0x474
	.uleb128 0x12
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x24c
	.4byte	0x474
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x240
	.uleb128 0x17
	.string	"li"
	.byte	0x1
	.2byte	0x28a
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x17
	.string	"ci"
	.byte	0x1
	.2byte	0x28a
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -324
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x293
	.4byte	0xa7
	.4byte	.LLST63
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x294
	.4byte	0xa7
	.4byte	.LLST64
	.uleb128 0x18
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x2a5
	.4byte	0x208
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x14
	.string	"idx"
	.byte	0x1
	.2byte	0x2b2
	.4byte	0x4d
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.2byte	0x2cd
	.4byte	0x4d
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x2d2
	.4byte	0xc8e
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x298
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x2d7
	.4byte	0x474
	.4byte	.LLST65
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x2d8
	.4byte	0x474
	.uleb128 0x2c
	.4byte	0x8e6
	.4byte	.Ldebug_ranges0+0x2c8
	.byte	0x1
	.2byte	0x2d9
	.4byte	0xbef
	.uleb128 0x2d
	.4byte	0x908
	.4byte	.LLST66
	.uleb128 0x2d
	.4byte	0x8fe
	.4byte	.LLST67
	.uleb128 0x2d
	.4byte	0x8f4
	.4byte	.LLST68
	.byte	0x0
	.uleb128 0x2c
	.4byte	0x913
	.4byte	.Ldebug_ranges0+0x2e8
	.byte	0x1
	.2byte	0x2db
	.4byte	0xc0a
	.uleb128 0x2e
	.4byte	0x92b
	.uleb128 0x2e
	.4byte	0x921
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x913
	.4byte	.LBB91
	.4byte	.LBE91
	.byte	0x1
	.2byte	0x2da
	.4byte	0xc31
	.uleb128 0x2d
	.4byte	0x92b
	.4byte	.LLST69
	.uleb128 0x2d
	.4byte	0x921
	.4byte	.LLST70
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x913
	.4byte	.LBB94
	.4byte	.LBE94
	.byte	0x1
	.2byte	0x2dc
	.4byte	0xc50
	.uleb128 0x2e
	.4byte	0x92b
	.uleb128 0x2e
	.4byte	0x921
	.byte	0x0
	.uleb128 0x30
	.4byte	0x913
	.4byte	.LBB96
	.4byte	.LBE96
	.byte	0x1
	.2byte	0x2dd
	.uleb128 0x2e
	.4byte	0x92b
	.uleb128 0x2e
	.4byte	0x921
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0x208
	.4byte	0xc7e
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0x8
	.4byte	0x84
	.4byte	0xc8e
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x5
	.byte	0x0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc94
	.uleb128 0x6
	.byte	0x4
	.4byte	0x474
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x177
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST71
	.4byte	0xe94
	.uleb128 0x16
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x177
	.4byte	0x46e
	.4byte	.LLST72
	.uleb128 0x16
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x177
	.4byte	0x46e
	.4byte	.LLST73
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x177
	.4byte	0x46e
	.4byte	.LLST74
	.uleb128 0x16
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x177
	.4byte	0x4d
	.4byte	.LLST75
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x177
	.4byte	0x46e
	.4byte	.LLST76
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x177
	.4byte	0x46e
	.4byte	.LLST77
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.2byte	0x178
	.4byte	0x4d
	.4byte	.LLST78
	.uleb128 0x14
	.string	"j"
	.byte	0x1
	.2byte	0x178
	.4byte	0x4d
	.uleb128 0x13
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x178
	.4byte	0x4d
	.4byte	.LLST79
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x300
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x46e
	.uleb128 0x14
	.string	"b"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x46e
	.uleb128 0x14
	.string	"t"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x46e
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x180
	.4byte	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x184
	.4byte	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x188
	.4byte	0x213
	.byte	0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x17
	.string	"va"
	.byte	0x1
	.2byte	0x192
	.4byte	0xe94
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0x320
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x19a
	.4byte	0x474
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x19b
	.4byte	0x474
	.uleb128 0x14
	.string	"lv"
	.byte	0x1
	.2byte	0x19c
	.4byte	0x46e
	.uleb128 0x14
	.string	"hv"
	.byte	0x1
	.2byte	0x19d
	.4byte	0x46e
	.uleb128 0x2f
	.4byte	0x913
	.4byte	.LBB127
	.4byte	.LBE127
	.byte	0x1
	.2byte	0x1a1
	.4byte	0xdf8
	.uleb128 0x2d
	.4byte	0x92b
	.4byte	.LLST80
	.uleb128 0x2d
	.4byte	0x921
	.4byte	.LLST81
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x913
	.4byte	.LBB129
	.4byte	.LBE129
	.byte	0x1
	.2byte	0x1a0
	.4byte	0xe1f
	.uleb128 0x2d
	.4byte	0x92b
	.4byte	.LLST82
	.uleb128 0x2d
	.4byte	0x921
	.4byte	.LLST83
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x913
	.4byte	.LBB131
	.4byte	.LBE131
	.byte	0x1
	.2byte	0x19f
	.4byte	0xe46
	.uleb128 0x2d
	.4byte	0x92b
	.4byte	.LLST84
	.uleb128 0x2d
	.4byte	0x921
	.4byte	.LLST85
	.byte	0x0
	.uleb128 0x2c
	.4byte	0x913
	.4byte	.Ldebug_ranges0+0x348
	.byte	0x1
	.2byte	0x1a2
	.4byte	0xe69
	.uleb128 0x2d
	.4byte	0x92b
	.4byte	.LLST86
	.uleb128 0x2d
	.4byte	0x921
	.4byte	.LLST87
	.byte	0x0
	.uleb128 0x31
	.4byte	0x8e6
	.4byte	.Ldebug_ranges0+0x368
	.byte	0x1
	.2byte	0x19e
	.uleb128 0x2d
	.4byte	0x908
	.4byte	.LLST88
	.uleb128 0x2d
	.4byte	0x8fe
	.4byte	.LLST89
	.uleb128 0x2d
	.4byte	0x8f4
	.4byte	.LLST90
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.4byte	0x208
	.4byte	0xea4
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x7
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF118
	.byte	0x1
	.byte	0x21
	.4byte	0xeb5
	.byte	0x5
	.byte	0x3
	.4byte	rmode
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1cc
	.uleb128 0x8
	.4byte	0x3d
	.4byte	0xecb
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x1
	.byte	0x0
	.uleb128 0x21
	.4byte	.LASF119
	.byte	0x1
	.byte	0x22
	.4byte	0xebb
	.byte	0x5
	.byte	0x3
	.4byte	frameBuffer
	.uleb128 0x21
	.4byte	.LASF120
	.byte	0x1
	.byte	0x23
	.4byte	0x2d6
	.byte	0x5
	.byte	0x3
	.4byte	tex_NxNy
	.uleb128 0x21
	.4byte	.LASF121
	.byte	0x1
	.byte	0x24
	.4byte	0x2d6
	.byte	0x5
	.byte	0x3
	.4byte	tex_Nz
	.uleb128 0x21
	.4byte	.LASF122
	.byte	0x1
	.byte	0x25
	.4byte	0x2d6
	.byte	0x5
	.byte	0x3
	.4byte	tex_dotresult
	.uleb128 0x21
	.4byte	.LASF50
	.byte	0x1
	.byte	0x27
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	view
	.uleb128 0x21
	.4byte	.LASF123
	.byte	0x1
	.byte	0x28
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	model
	.uleb128 0x21
	.4byte	.LASF124
	.byte	0x1
	.byte	0x28
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	modelinverse
	.uleb128 0x21
	.4byte	.LASF125
	.byte	0x1
	.byte	0x28
	.4byte	0x213
	.byte	0x5
	.byte	0x3
	.4byte	modelview
	.uleb128 0x22
	.string	"mvi"
	.byte	0x1
	.byte	0x28
	.4byte	0x213
	.uleb128 0x21
	.4byte	.LASF126
	.byte	0x1
	.byte	0x29
	.4byte	0x24a
	.byte	0x5
	.byte	0x3
	.4byte	perspective
	.uleb128 0x8
	.4byte	0x2ad
	.4byte	0xf7f
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x2
	.byte	0x0
	.uleb128 0x23
	.4byte	.LASF127
	.byte	0x1
	.byte	0x2b
	.4byte	0xf6f
	.uleb128 0x8
	.4byte	0x84
	.4byte	0xfa0
	.uleb128 0x9
	.4byte	0x2c
	.byte	0xf
	.uleb128 0x9
	.4byte	0x2c
	.byte	0x4
	.byte	0x0
	.uleb128 0x32
	.4byte	.LASF132
	.byte	0x1
	.byte	0x31
	.4byte	0xf8a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cubedata
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
	.uleb128 0x5
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x16
	.uleb128 0x5
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0xcc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xfb3
	.4byte	0x2ee
	.string	"setup"
	.4byte	0x363
	.string	"CalcTangSp"
	.4byte	0x47a
	.string	"setlight"
	.4byte	0x508
	.string	"SetupShader"
	.4byte	0x52e
	.string	"CalcVertexAttributes"
	.4byte	0x5cf
	.string	"GL_CreateDotResultTex"
	.4byte	0x68c
	.string	"GL_CreateLightBulbTexI8"
	.4byte	0x78b
	.string	"GL_CreateTubeTex"
	.4byte	0x93f
	.string	"main"
	.4byte	0xc9a
	.string	"DrawQuads"
	.4byte	0xfa0
	.string	"cubedata"
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
	.4byte	.LBB2-.Ltext0
	.4byte	.LBE2-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	.LBB101-.Ltext0
	.4byte	.LBE101-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	.LBB77-.Ltext0
	.4byte	.LBE77-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
	.4byte	.LBB73-.Ltext0
	.4byte	.LBE73-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	.LBB108-.Ltext0
	.4byte	.LBE108-.Ltext0
	.4byte	.LBB107-.Ltext0
	.4byte	.LBE107-.Ltext0
	.4byte	.LBB106-.Ltext0
	.4byte	.LBE106-.Ltext0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	.LBB103-.Ltext0
	.4byte	.LBE103-.Ltext0
	.4byte	.LBB102-.Ltext0
	.4byte	.LBE102-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB81-.Ltext0
	.4byte	.LBE81-.Ltext0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	.LBB99-.Ltext0
	.4byte	.LBE99-.Ltext0
	.4byte	.LBB98-.Ltext0
	.4byte	.LBE98-.Ltext0
	.4byte	.LBB80-.Ltext0
	.4byte	.LBE80-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	.LBB82-.Ltext0
	.4byte	.LBE82-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB87-.Ltext0
	.4byte	.LBE87-.Ltext0
	.4byte	.LBB93-.Ltext0
	.4byte	.LBE93-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB123-.Ltext0
	.4byte	.LBE123-.Ltext0
	.4byte	.LBB147-.Ltext0
	.4byte	.LBE147-.Ltext0
	.4byte	.LBB146-.Ltext0
	.4byte	.LBE146-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB125-.Ltext0
	.4byte	.LBE125-.Ltext0
	.4byte	.LBB145-.Ltext0
	.4byte	.LBE145-.Ltext0
	.4byte	.LBB144-.Ltext0
	.4byte	.LBE144-.Ltext0
	.4byte	.LBB124-.Ltext0
	.4byte	.LBE124-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB133-.Ltext0
	.4byte	.LBE133-.Ltext0
	.4byte	.LBB143-.Ltext0
	.4byte	.LBE143-.Ltext0
	.4byte	.LBB126-.Ltext0
	.4byte	.LBE126-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB138-.Ltext0
	.4byte	.LBE138-.Ltext0
	.4byte	.LBB137-.Ltext0
	.4byte	.LBE137-.Ltext0
	.4byte	.LBB142-.Ltext0
	.4byte	.LBE142-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF57:
	.string	"SetupShader"
.LASF16:
	.string	"xfbHeight"
.LASF116:
	.string	"bitangentMtx"
.LASF79:
	.string	"buf1"
.LASF81:
	.string	"buf2"
.LASF93:
	.string	"vsync"
.LASF48:
	.string	"tex10u"
.LASF49:
	.string	"tex10v"
.LASF39:
	.string	"tangent"
.LASF119:
	.string	"frameBuffer"
.LASF114:
	.string	"numcalls"
.LASF113:
	.string	"campos"
.LASF6:
	.string	"long long unsigned int"
.LASF43:
	.string	"v20tex10u"
.LASF44:
	.string	"v20tex10v"
.LASF112:
	.string	"DrawQuads"
.LASF115:
	.string	"tangentMtx"
.LASF107:
	.string	"ftextst"
.LASF106:
	.string	"fverts"
.LASF32:
	.string	"_gx_texobj"
.LASF27:
	.string	"_vecf"
.LASF5:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF35:
	.string	"gpfifo"
.LASF37:
	.string	"vertices"
.LASF123:
	.string	"model"
.LASF53:
	.string	"lpos"
.LASF68:
	.string	"texLightDir"
.LASF17:
	.string	"viXOrigin"
.LASF28:
	.string	"Vector"
.LASF9:
	.string	"long int"
.LASF21:
	.string	"xfbMode"
.LASF38:
	.string	"texst"
.LASF59:
	.string	"CalcTangSp"
.LASF97:
	.string	"normals"
.LASF130:
	.string	"d:\\\\Data\\\\Nintendo\\\\lesson7\\\\build"
.LASF4:
	.string	"short int"
.LASF10:
	.string	"double"
.LASF45:
	.string	"det_inv"
.LASF64:
	.string	"texbuf"
.LASF58:
	.string	"tevstage"
.LASF33:
	.string	"GXTexObj"
.LASF29:
	.string	"Mtx44"
.LASF0:
	.string	"unsigned int"
.LASF50:
	.string	"view"
.LASF84:
	.string	"lengthInv"
.LASF100:
	.string	"look"
.LASF66:
	.string	"intensity"
.LASF7:
	.string	"long unsigned int"
.LASF2:
	.string	"short unsigned int"
.LASF86:
	.string	"GX_TexCoord2f32"
.LASF47:
	.string	"tex20v"
.LASF20:
	.string	"viHeight"
.LASF51:
	.string	"theta"
.LASF80:
	.string	"bufptr1"
.LASF82:
	.string	"bufptr2"
.LASF129:
	.string	"d:/Data/Nintendo/lesson7/source/lesson7.c"
.LASF131:
	.string	"GX_End"
.LASF127:
	.string	"litcolors"
.LASF85:
	.string	"GX_Position3f32"
.LASF54:
	.string	"_theta"
.LASF125:
	.string	"modelview"
.LASF99:
	.string	"first_frame"
.LASF42:
	.string	"v10tex20v"
.LASF94:
	.string	"numverts"
.LASF22:
	.string	"field_rendering"
.LASF13:
	.string	"viTVMode"
.LASF124:
	.string	"modelinverse"
.LASF105:
	.string	"orthb"
.LASF34:
	.string	"yscale"
.LASF11:
	.string	"float"
.LASF56:
	.string	"setup"
.LASF104:
	.string	"ortht"
.LASF61:
	.string	"numvertices"
.LASF77:
	.string	"texbuf2"
.LASF126:
	.string	"perspective"
.LASF1:
	.string	"unsigned char"
.LASF63:
	.string	"GL_CreateDotResultTex"
.LASF55:
	.string	"_phi"
.LASF76:
	.string	"texbuf1"
.LASF73:
	.string	"GL_CreateTubeTex"
.LASF102:
	.string	"verts"
.LASF18:
	.string	"viYOrigin"
.LASF118:
	.string	"rmode"
.LASF91:
	.string	"buttonState"
.LASF121:
	.string	"tex_Nz"
.LASF128:
	.string	"GNU C 4.2.4 (devkitPPC release 17)"
.LASF24:
	.string	"vfilter"
.LASF122:
	.string	"tex_dotresult"
.LASF120:
	.string	"tex_NxNy"
.LASF12:
	.string	"long double"
.LASF8:
	.string	"char"
.LASF92:
	.string	"mode"
.LASF101:
	.string	"cubeAxis"
.LASF98:
	.string	"rquad"
.LASF103:
	.string	"textst"
.LASF30:
	.string	"_gx_color"
.LASF25:
	.string	"GXRModeObj"
.LASF74:
	.string	"texObj1"
.LASF75:
	.string	"texObj2"
.LASF52:
	.string	"dist"
.LASF110:
	.string	"vertdata"
.LASF132:
	.string	"cubedata"
.LASF60:
	.string	"CalcVertexAttributes"
.LASF95:
	.string	"tangents"
.LASF90:
	.string	"argv"
.LASF41:
	.string	"v10tex20u"
.LASF70:
	.string	"vect_x"
.LASF108:
	.string	"buttonsHeld"
.LASF71:
	.string	"vect_y"
.LASF83:
	.string	"vect_z"
.LASF46:
	.string	"tex20u"
.LASF26:
	.string	"_gx_rmodeobj"
.LASF62:
	.string	"half"
.LASF65:
	.string	"bufptr"
.LASF96:
	.string	"bitangents"
.LASF23:
	.string	"sample_pattern"
.LASF67:
	.string	"GL_CreateLightBulbTexI8"
.LASF72:
	.string	"lengthf"
.LASF89:
	.string	"argc"
.LASF15:
	.string	"efbHeight"
.LASF87:
	.string	"setlight"
.LASF31:
	.string	"GXColor"
.LASF19:
	.string	"viWidth"
.LASF40:
	.string	"bitangent"
.LASF14:
	.string	"fbWidth"
.LASF111:
	.string	"texdata"
.LASF78:
	.string	"height"
.LASF69:
	.string	"fact"
.LASF88:
	.string	"main"
.LASF109:
	.string	"buttonsInv"
.LASF36:
	.string	"background"
.LASF117:
	.string	"normalMtx"
	.ident	"GCC: (GNU) 4.2.4 (devkitPPC release 17)"
