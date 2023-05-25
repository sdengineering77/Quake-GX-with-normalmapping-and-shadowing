	.file	"gl_decals.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl R_InitDecals
	.type	R_InitDecals, @function
R_InitDecals:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_decals.c"
	.loc 1 50 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 53 0
	lis 3,.LC1@ha
	la 3,.LC1@l(3)
	.loc 1 50 0
	stw 0,12(1)
	.loc 1 53 0
	.cfi_offset 65, 4
	bl COM_CheckParm
.LVL0:
	.loc 1 55 0
	cmpwi 0,3,0
	bne- 0,.L6
	.loc 1 63 0
	li 0,1024
	lis 9,r_numdecals@ha
	lis 3,0x35
.LVL1:
	stw 0,r_numdecals@l(9)
	ori 3,3,61440
.L4:
	.loc 1 67 0
	lis 4,.LC2@ha
	la 4,.LC2@l(4)
	bl Hunk_AllocName
	.loc 1 68 0
	lwz 0,12(1)
	.loc 1 66 0
	lis 9,decals@ha
	.loc 1 68 0
	mtlr 0
	.loc 1 66 0
	stw 3,decals@l(9)
	.loc 1 68 0
	addi 1,1,8
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	blr
.LVL2:
.L6:
.LCFI2:
	.cfi_restore_state
	.loc 1 57 0
	lis 9,com_argv@ha
	addi 3,3,1
.LVL3:
	lwz 9,com_argv@l(9)
	slwi 3,3,2
.LVL4:
	lwzx 3,9,3
	bl Q_atoi
	lis 9,r_numdecals@ha
	.loc 1 58 0
	cmpwi 7,3,0
	.loc 1 57 0
	stw 3,r_numdecals@l(9)
	.loc 1 58 0
	blt- 7,.L3
	mulli 3,3,3452
	.loc 1 67 0
	lis 4,.LC2@ha
	la 4,.LC2@l(4)
	bl Hunk_AllocName
	.loc 1 68 0
	lwz 0,12(1)
	.loc 1 66 0
	lis 9,decals@ha
	.loc 1 68 0
	mtlr 0
	.loc 1 66 0
	stw 3,decals@l(9)
	.loc 1 68 0
	addi 1,1,8
	.cfi_remember_state
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
.L3:
.LCFI4:
	.cfi_restore_state
	.loc 1 59 0
	li 0,0
	li 3,0
	stw 0,r_numdecals@l(9)
	b .L4
	.cfi_endproc
.LFE38:
	.size	R_InitDecals, .-R_InitDecals
	.align 2
	.globl R_ClearDecals
	.type	R_ClearDecals, @function
R_ClearDecals:
.LFB39:
	.loc 1 76 0
	.cfi_startproc
	.loc 1 82 0
	lis 9,r_numdecals@ha
	.loc 1 80 0
	li 0,0
	.loc 1 82 0
	lwz 10,r_numdecals@l(9)
	.loc 1 79 0
	lis 9,decals@ha
	lwz 11,decals@l(9)
	lis 9,free_decals@ha
	.loc 1 82 0
	cmpwi 7,10,0
	.loc 1 79 0
	stw 11,free_decals@l(9)
	.loc 1 80 0
	lis 9,active_decals@ha
	stw 0,active_decals@l(9)
.LVL5:
	.loc 1 82 0
	ble- 7,.L8
	mtctr 10
	.loc 1 75 0
	addi 9,11,3452
.LVL6:
.L9:
	.loc 1 83 0 discriminator 2
	stw 9,-3364(9)
	.loc 1 82 0 discriminator 2
	addi 9,9,3452
	bdnz .L9
.L8:
	.loc 1 84 0
	addi 10,10,-1
	li 0,0
	mulli 10,10,3452
	add 11,11,10
	stw 0,88(11)
	.loc 1 85 0
	blr
	.cfi_endproc
.LFE39:
	.size	R_ClearDecals, .-R_ClearDecals
	.align 2
	.globl DecalAddPolygon
	.type	DecalAddPolygon, @function
DecalAddPolygon:
.LFB42:
	.loc 1 254 0
	.cfi_startproc
.LVL7:
	.loc 1 260 0
	lwz 9,116(3)
.LVL8:
	.loc 1 254 0
	mr 11,3
	.loc 1 262 0
	li 3,0
.LVL9:
	.loc 1 261 0
	add 0,9,4
	cmpwi 7,0,127
	bgtlr- 7
	.loc 1 264 0
	lwz 7,120(11)
	add 0,7,4
	cmpwi 7,0,65
	bgtlr- 7
.LVL10:
	.loc 1 269 0 discriminator 1
	cmpwi 7,4,2
	ble- 7,.L13
	.loc 1 253 0
	mulli 10,7,12
	addi 0,9,-1
	addi 6,9,1
	add 0,0,4
	add 10,11,10
	subf 0,6,0
	addi 10,10,2684
	mr 8,6
	mtctr 0
	b .L14
.LVL11:
.L20:
	.loc 1 269 0
	mr 8,0
.L14:
	.loc 1 253 0 discriminator 2
	addi 0,8,1
	.loc 1 272 0 discriminator 2
	stw 8,4(10)
	.loc 1 271 0 discriminator 2
	stw 9,0(10)
	.loc 1 273 0 discriminator 2
	stw 0,8(10)
	addi 10,10,12
	.loc 1 269 0 discriminator 2
	bdnz .L20
	.loc 1 253 0
	add 7,7,4
	.loc 1 269 0
	addi 0,7,-2
	stw 0,120(11)
.LVL12:
.L15:
	.loc 1 253 0
	mulli 9,9,12
	mtctr 4
	li 10,0
	add 9,11,9
	addi 9,9,124
.LVL13:
.L17:
	.loc 1 280 0 discriminator 2
	lwz 0,0(5)
	.loc 1 278 0 discriminator 2
	addi 10,10,1
	.loc 1 280 0 discriminator 2
	stw 0,0(9)
	lwz 0,4(5)
	stw 0,4(9)
	lwz 0,8(5)
	.loc 1 278 0 discriminator 2
	addi 5,5,12
	.loc 1 280 0 discriminator 2
	stw 0,8(9)
.LVL14:
	.loc 1 278 0 discriminator 2
	addi 9,9,12
	bdnz .L17
	.loc 1 253 0
	addi 9,10,-1
	add 9,6,9
.LVL15:
.L16:
	.loc 1 284 0
	stw 9,116(11)
	.loc 1 285 0
	li 3,1
	.loc 1 286 0
	blr
.LVL16:
.L13:
	.loc 1 278 0 discriminator 1
	cmpwi 7,4,0
	ble- 7,.L16
	addi 6,9,1
	b .L15
	.cfi_endproc
.LFE42:
	.size	DecalAddPolygon, .-DecalAddPolygon
	.align 2
	.globl DecalClipPolygonAgainstPlane
	.type	DecalClipPolygonAgainstPlane, @function
DecalClipPolygonAgainstPlane:
.LFB45:
	.loc 1 364 0
	.cfi_startproc
.LVL17:
	stwu 1,-152(1)
.LCFI5:
	.cfi_def_cfa_offset 152
	mflr 0
	.loc 1 371 0
	li 11,0
	.loc 1 364 0
	stw 31,140(1)
	.loc 1 372 0
	mr. 31,4
	.cfi_offset 31, -12
	.cfi_register 65, 0
	.loc 1 364 0
	stw 25,116(1)
	mr 25,6
	.cfi_offset 25, -36
	stw 29,132(1)
	mr 29,5
	.cfi_offset 29, -20
	stw 30,136(1)
	mr 30,3
	.cfi_offset 30, -16
	stw 0,156(1)
	stfd 31,144(1)
	stw 22,104(1)
	stw 23,108(1)
	stw 24,112(1)
	stw 26,120(1)
	stw 27,124(1)
	stw 28,128(1)
	.loc 1 372 0
	ble- 0,.L23
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	.cfi_offset 22, -48
	.cfi_offset 63, -8
	.cfi_offset 65, 4
.LBB2:
	.loc 1 374 0
	lis 8,.LC4@ha
.LBE2:
	.loc 1 372 0
	lfs 7,0(3)
	lfs 8,4(3)
.LBB3:
	.loc 1 374 0
	mtctr 31
.LBE3:
	.loc 1 372 0
	lfs 9,8(3)
	mr 9,5
	lfs 10,12(3)
	addi 10,1,31
.LBB4:
	.loc 1 374 0
	lfs 11,.LC4@l(8)
.LVL18:
.L24:
	.loc 1 374 0 is_stmt 0 discriminator 2
	lfs 0,4(9)
	lfs 12,0(9)
	fmuls 0,8,0
	lfs 13,8(9)
	.loc 1 376 0 is_stmt 1 discriminator 2
	addi 9,9,12
	.loc 1 374 0 discriminator 2
	fmadds 0,12,7,0
	fmadds 0,13,9,0
	fsubs 0,0,10
	fcmpu 7,0,11
	mfcr 0
	rlwinm 0,0,29,1
.LVL19:
	.loc 1 375 0 discriminator 2
	stbu 0,1(10)
	.loc 1 376 0 discriminator 2
	add 11,11,0
.LVL20:
.LBE4:
	.loc 1 372 0 discriminator 2
	bdnz .L24
.LVL21:
.L23:
	.loc 1 380 0
	cmpw 7,11,31
	.loc 1 381 0
	li 26,0
	.loc 1 380 0
	beq- 7,.L25
.LVL22:
	.loc 1 385 0 discriminator 1
	ble- 0,.L25
	.loc 1 385 0 is_stmt 0
	mr 27,29
	.loc 1 363 0 is_stmt 1
	li 28,0
	addi 24,1,32
	.loc 1 425 0
	lis 23,.LC3@ha
	b .L32
.LVL23:
.L39:
	.loc 1 392 0
	addi 11,1,8
	add 9,11,0
	lbz 9,24(9)
	cmpwi 7,9,0
	beq- 7,.L38
.LVL24:
.L29:
	.loc 1 385 0
	addi 28,28,1
.LVL25:
	addi 27,27,12
	cmpw 7,28,31
	beq- 7,.L25
.LVL26:
.L32:
	.loc 1 388 0
	cmpwi 7,28,0
	addi 0,31,-1
	beq- 7,.L27
	.loc 1 363 0 discriminator 1
	addi 0,28,-1
.L27:
.LVL27:
	.loc 1 390 0 discriminator 3
	lbzx 9,24,28
	cmpwi 7,9,0
	bne- 7,.L39
	.loc 1 412 0
	addi 8,1,8
	add 9,8,0
	lbz 9,24(9)
	cmpwi 7,9,0
	bne- 7,.L40
.LVL28:
.L31:
	.loc 1 432 0
	mulli 0,26,12
	lwz 11,0(27)
	.loc 1 385 0
	addi 28,28,1
	.loc 1 433 0
	addi 26,26,1
.LVL29:
	.loc 1 432 0
	stwx 11,25,0
	add 9,25,0
	.loc 1 385 0
	cmpw 7,28,31
	.loc 1 432 0
	lwz 0,4(27)
	stw 0,4(9)
	lwz 0,8(27)
	.loc 1 385 0
	addi 27,27,12
	.loc 1 432 0
	stw 0,8(9)
.LVL30:
	.loc 1 385 0
	bne+ 7,.L32
.LVL31:
.L25:
	.loc 1 439 0
	lwz 0,156(1)
	mr 3,26
	lwz 22,104(1)
	mtlr 0
	lwz 23,108(1)
	lwz 24,112(1)
	lwz 25,116(1)
.LVL32:
	lwz 26,120(1)
	lwz 27,124(1)
	lwz 28,128(1)
	lwz 29,132(1)
.LVL33:
	lwz 30,136(1)
.LVL34:
	lwz 31,140(1)
.LVL35:
	lfd 31,144(1)
	addi 1,1,152
	.cfi_remember_state
.LCFI6:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	blr
.LVL36:
.L38:
.LCFI7:
	.cfi_restore_state
	.loc 1 396 0
	mulli 0,0,12
.LVL37:
	.loc 1 399 0
	lfs 0,4(30)
	.loc 1 397 0
	lfs 10,4(27)
	.loc 1 404 0
	mulli 22,26,12
	.loc 1 396 0
	add 9,29,0
	lfsx 12,29,0
	lfs 13,4(9)
	.loc 1 404 0
	add 22,25,22
	.loc 1 397 0
	lfs 9,0(27)
	.loc 1 404 0
	addi 3,1,20
	.loc 1 399 0
	fmuls 31,13,0
	lfs 7,0(30)
	.loc 1 401 0
	fsubs 6,13,10
	.loc 1 397 0
	lfs 11,8(27)
	.loc 1 400 0
	fsubs 5,12,9
	.loc 1 399 0
	lfs 8,8(30)
	fmadds 31,12,7,31
	.loc 1 404 0
	lfs 1,.LC3@l(23)
	.loc 1 401 0
	fmuls 6,0,6
	.loc 1 396 0
	lfs 0,8(9)
	.loc 1 404 0
	mr 4,22
	.loc 1 396 0
	stfs 12,20(1)
	.loc 1 399 0
	fmadds 31,0,8,31
	.loc 1 396 0
	stfs 13,24(1)
	.loc 1 401 0
	fmadds 7,7,5,6
	.loc 1 399 0
	lfs 5,12(30)
	.loc 1 402 0
	fsubs 6,0,11
	.loc 1 396 0
	stfs 0,28(1)
	.loc 1 399 0
	fsubs 31,31,5
	.loc 1 397 0
	stfs 9,8(1)
	stfs 10,12(1)
	.loc 1 407 0
	addi 26,26,1
	.loc 1 402 0
	fmadds 8,8,6,7
	.loc 1 397 0
	stfs 11,16(1)
	.loc 1 399 0
	fdivs 31,31,8
.LVL38:
	.loc 1 404 0
	fsubs 1,1,31
	bl VectorScale
	.loc 1 405 0
	fmr 1,31
	mr 3,22
	addi 4,1,8
	mr 5,22
	bl VectorMA
.LVL39:
	b .L29
.LVL40:
.L40:
	.loc 1 417 0
	mulli 0,0,12
.LVL41:
	.loc 1 416 0
	lfs 13,4(27)
	.loc 1 419 0
	lfs 0,4(30)
	.loc 1 425 0
	mulli 22,26,12
	.loc 1 417 0
	add 9,29,0
	.loc 1 416 0
	lfs 12,0(27)
	.loc 1 417 0
	lfs 10,4(9)
	.loc 1 419 0
	fmuls 31,13,0
	.loc 1 417 0
	lfsx 9,29,0
	.loc 1 425 0
	add 22,25,22
	.loc 1 421 0
	fsubs 6,13,10
	.loc 1 419 0
	lfs 7,0(30)
	.loc 1 420 0
	fsubs 5,12,9
	.loc 1 417 0
	lfs 11,8(9)
	.loc 1 419 0
	fmadds 31,12,7,31
	lfs 8,8(30)
	.loc 1 421 0
	fmuls 6,0,6
	.loc 1 416 0
	lfs 0,8(27)
	.loc 1 425 0
	lfs 1,.LC3@l(23)
	addi 3,1,20
	.loc 1 419 0
	fmadds 31,0,8,31
	.loc 1 425 0
	mr 4,22
	.loc 1 421 0
	fmadds 7,7,5,6
	.loc 1 419 0
	lfs 5,12(30)
	.loc 1 422 0
	fsubs 6,0,11
	.loc 1 416 0
	stfs 12,20(1)
	.loc 1 419 0
	fsubs 31,31,5
	.loc 1 416 0
	stfs 13,24(1)
	stfs 0,28(1)
	.loc 1 428 0
	addi 26,26,1
	.loc 1 422 0
	fmadds 8,8,6,7
	.loc 1 417 0
	stfs 9,8(1)
	stfs 10,12(1)
	stfs 11,16(1)
	.loc 1 419 0
	fdivs 31,31,8
.LVL42:
	.loc 1 425 0
	fsubs 1,1,31
	bl VectorScale
	.loc 1 426 0
	fmr 1,31
	mr 3,22
	addi 4,1,8
	mr 5,22
	bl VectorMA
.LVL43:
	b .L31
	.cfi_endproc
.LFE45:
	.size	DecalClipPolygonAgainstPlane, .-DecalClipPolygonAgainstPlane
	.align 2
	.globl DecalClipPolygon
	.type	DecalClipPolygon, @function
DecalClipPolygon:
.LFB44:
	.loc 1 334 0
	.cfi_startproc
.LVL44:
	stwu 1,-784(1)
.LCFI8:
	.cfi_def_cfa_offset 784
	mflr 0
	mr 9,3
	stw 31,780(1)
	.loc 1 338 0
	lis 31,.LANCHOR0@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 334 0
	stw 0,788(1)
	.loc 1 338 0
	la 31,.LANCHOR0@l(31)
	.loc 1 334 0
	mr 0,4
	.cfi_offset 65, 4
	stw 30,776(1)
	.loc 1 338 0
	mr 4,9
.LVL45:
	.loc 1 334 0
	mr 30,5
	.cfi_offset 30, -8
	.loc 1 338 0
	mr 3,31
.LVL46:
	mr 5,0
.LVL47:
	addi 6,1,8
	bl DecalClipPolygonAgainstPlane
.LVL48:
	.loc 1 339 0
	mr. 4,3
	bne- 0,.L43
.L42:
	.loc 1 361 0
	lwz 0,788(1)
	mr 3,4
.LVL49:
	lwz 30,776(1)
.LVL50:
	mtlr 0
	lwz 31,780(1)
	addi 1,1,784
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL51:
.L43:
.LCFI10:
	.cfi_restore_state
	.loc 1 341 0
	addi 3,31,16
.LVL52:
	addi 5,1,8
	mr 6,30
	bl DecalClipPolygonAgainstPlane
.LVL53:
	.loc 1 342 0
	mr. 4,3
	beq+ 0,.L42
	.loc 1 344 0
	addi 3,31,32
.LVL54:
	mr 5,30
	addi 6,1,8
	bl DecalClipPolygonAgainstPlane
.LVL55:
	.loc 1 345 0
	mr. 4,3
	beq+ 0,.L42
	.loc 1 347 0
	addi 3,31,48
.LVL56:
	addi 5,1,8
	mr 6,30
	bl DecalClipPolygonAgainstPlane
.LVL57:
	.loc 1 348 0
	mr. 4,3
	beq+ 0,.L42
	.loc 1 350 0
	addi 3,31,64
.LVL58:
	mr 5,30
	addi 6,1,8
	bl DecalClipPolygonAgainstPlane
.LVL59:
	.loc 1 351 0
	mr. 4,3
	beq+ 0,.L42
	.loc 1 353 0
	addi 3,31,80
.LVL60:
	addi 5,1,8
	mr 6,30
	bl DecalClipPolygonAgainstPlane
.LVL61:
	mr 4,3
.LVL62:
	b .L42
	.cfi_endproc
.LFE44:
	.size	DecalClipPolygon, .-DecalClipPolygon
	.align 2
	.globl DecalClipLeaf
	.type	DecalClipLeaf, @function
DecalClipLeaf:
.LFB43:
	.loc 1 291 0
	.cfi_startproc
.LVL63:
	mflr 0
	stwu 1,-824(1)
.LCFI11:
	.cfi_def_cfa_offset 824
	.cfi_register 65, 0
	stw 28,808(1)
	mr 28,4
	.cfi_offset 28, -16
.LVL64:
	stw 0,828(1)
	stw 29,812(1)
	.loc 1 301 0
	lwz 0,48(4)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 1 291 0
	stw 31,820(1)
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 301 0
	cmpwi 7,0,0
	.loc 1 291 0
	stw 25,796(1)
	stw 26,800(1)
	stw 27,804(1)
	stw 30,816(1)
	.loc 1 298 0
	lwz 29,44(4)
.LVL65:
	.loc 1 301 0
	ble- 7,.L44
	.cfi_offset 30, -8
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	lis 26,globalVertexTable@ha
	lis 27,.LC5@ha
	.loc 1 290 0
	addi 29,29,-4
	.loc 1 301 0
	li 30,0
	la 26,globalVertexTable@l(26)
	la 27,.LC5@l(27)
.LVL66:
.L51:
.LBB5:
	.loc 1 307 0
	lwzu 8,4(29)
	.loc 1 309 0
	lwz 11,0(26)
	.loc 1 307 0
	lwz 25,36(8)
.LVL67:
	.loc 1 310 0
	lwz 0,8(25)
	.loc 1 309 0
	lwz 9,24(25)
.LVL68:
	.loc 1 310 0
	cmpwi 7,0,0
	ble- 7,.L46
	.loc 1 309 0
	mulli 9,9,28
	.loc 1 290 0
	mulli 0,0,28
	.loc 1 309 0
	add 9,11,9
	addi 11,1,20
	.loc 1 290 0
	add 10,9,0
.LVL69:
.L47:
	.loc 1 312 0 discriminator 2
	lwz 0,0(9)
	stw 0,0(11)
	.loc 1 313 0 discriminator 2
	lwz 0,4(9)
	stw 0,4(11)
	.loc 1 314 0 discriminator 2
	lwz 0,8(9)
	.loc 1 310 0 discriminator 2
	addi 9,9,28
	cmpw 7,9,10
	.loc 1 314 0 discriminator 2
	stw 0,8(11)
.LVL70:
	.loc 1 310 0 discriminator 2
	addi 11,11,12
	bne+ 7,.L47
.LVL71:
.L46:
	.loc 1 319 0
	lwz 0,8(8)
	.loc 1 317 0
	lwz 9,4(8)
	.loc 1 319 0
	andi. 11,0,2
	.loc 1 317 0
	lfs 13,0(9)
	lfs 12,4(9)
	lfs 0,8(9)
	stfs 13,8(1)
	stfs 12,12(1)
	stfs 0,16(1)
	.loc 1 319 0
	bne- 0,.L56
.LVL72:
.L48:
	.loc 1 325 0
	lfs 11,16(31)
	lfs 9,12(31)
	fmuls 12,12,11
	lfs 10,20(31)
	lfs 11,0(27)
	fmadds 13,9,13,12
	fmadds 0,10,0,13
	fcmpu 7,0,11
	bgt- 7,.L57
.L49:
.LBE5:
	.loc 1 301 0
	lwz 0,48(28)
	addi 30,30,1
.LVL73:
	cmpw 7,0,30
	bgt+ 7,.L51
.LVL74:
.L44:
	.loc 1 331 0
	lwz 0,828(1)
	lwz 25,796(1)
	mtlr 0
	lwz 26,800(1)
	lwz 27,804(1)
	lwz 28,808(1)
.LVL75:
	lwz 29,812(1)
	lwz 30,816(1)
	lwz 31,820(1)
.LVL76:
	addi 1,1,824
	.cfi_remember_state
.LCFI12:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.LVL77:
.L57:
.LCFI13:
	.cfi_restore_state
.LBB6:
	.loc 1 327 0
	addi 4,1,20
	lwz 3,8(25)
	mr 5,4
	bl DecalClipPolygon
.LVL78:
	.loc 1 328 0
	mr. 4,3
	beq+ 0,.L49
	.loc 1 328 0 is_stmt 0 discriminator 1
	mr 3,31
.LVL79:
	addi 5,1,20
	bl DecalAddPolygon
.LVL80:
	cmpwi 7,3,0
	bne+ 7,.L49
.LBE6:
	.loc 1 331 0 is_stmt 1
	lwz 0,828(1)
	lwz 25,796(1)
.LVL81:
	mtlr 0
	lwz 26,800(1)
	lwz 27,804(1)
	lwz 28,808(1)
.LVL82:
	lwz 29,812(1)
	lwz 30,816(1)
	lwz 31,820(1)
.LVL83:
	addi 1,1,824
	.cfi_remember_state
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI14:
	.cfi_def_cfa_offset 0
	blr
.LVL84:
.L56:
.LCFI15:
	.cfi_restore_state
.LBB7:
	.loc 1 320 0
	addi 3,1,8
	bl VectorInverse
	lfs 13,8(1)
	lfs 12,12(1)
	lfs 0,16(1)
	b .L48
.LBE7:
	.cfi_endproc
.LFE43:
	.size	DecalClipLeaf, .-DecalClipLeaf
	.align 2
	.globl DecalWalkBsp_R
	.type	DecalWalkBsp_R, @function
DecalWalkBsp_R:
.LFB41:
	.loc 1 222 0
	.cfi_startproc
.LVL85:
	mflr 0
	stwu 1,-16(1)
.LCFI16:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	mr 31,4
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LVL86:
.L69:
	.loc 1 227 0
	lwz 0,0(31)
	cmpwi 7,0,0
	blt- 7,.L72
.L60:
	.loc 1 235 0
	lwz 9,36(31)
.LVL87:
	.loc 1 236 0
	lfs 12,4(30)
	lfs 0,4(9)
	lfs 13,0(30)
	fmuls 12,12,0
	lfs 0,0(9)
	lfs 11,8(30)
	fmadds 0,13,0,12
	lfs 13,8(9)
	lfs 12,12(9)
	fmadds 13,11,13,0
	.loc 1 238 0
	lfs 0,36(30)
	.loc 1 236 0
	fsubs 13,13,12
.LVL88:
	.loc 1 243 0
	fneg 12,0
	.loc 1 238 0
	fcmpu 7,0,13
	bnl- 7,.L68
	.loc 1 240 0
	lwz 31,40(31)
.LVL89:
	.loc 1 227 0
	lwz 0,0(31)
	cmpwi 7,0,0
	bge+ 7,.L60
.LVL90:
.L72:
	.loc 1 251 0
	lwz 0,20(1)
	.loc 1 231 0
	mr 3,30
	mr 4,31
	.loc 1 251 0
	lwz 30,8(1)
.LVL91:
	lwz 31,12(1)
.LVL92:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI17:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.loc 1 231 0
	b DecalClipLeaf
.LVL93:
.L68:
.LCFI18:
	.cfi_restore_state
	.loc 1 243 0
	fcmpu 7,12,13
	bng- 7,.L70
	.loc 1 250 0
	lwz 31,44(31)
	b .L69
.L70:
	.loc 1 249 0
	lwz 4,40(31)
	mr 3,30
	bl DecalWalkBsp_R
.LVL94:
	.loc 1 250 0
	lwz 31,44(31)
	b .L69
	.cfi_endproc
.LFE41:
	.size	DecalWalkBsp_R, .-DecalWalkBsp_R
	.align 2
	.globl R_SpawnDecal
	.type	R_SpawnDecal, @function
R_SpawnDecal:
.LFB40:
	.loc 1 90 0
	.cfi_startproc
.LVL95:
	stwu 1,-136(1)
.LCFI19:
	.cfi_def_cfa_offset 136
	mflr 0
	.loc 1 97 0
	lis 11,.LANCHOR1@ha
	.loc 1 90 0
	stw 27,68(1)
	.loc 1 100 0
	lis 27,free_decals@ha
	.cfi_offset 27, -68
	.cfi_register 65, 0
	.loc 1 90 0
	stw 29,76(1)
	.loc 1 97 0
	la 9,.LANCHOR1@l(11)
	.loc 1 100 0
	lwz 29,free_decals@l(27)
	.cfi_offset 29, -60
	.loc 1 90 0
	stw 0,140(1)
	.loc 1 100 0
	cmpwi 7,29,0
	.loc 1 97 0
	lwz 10,.LANCHOR1@l(11)
	lwz 0,8(9)
	.cfi_offset 65, 4
	lwz 11,4(9)
	.loc 1 90 0
	stw 26,64(1)
	mr 26,6
	.cfi_offset 26, -72
	stw 28,72(1)
	mr 28,4
	.cfi_offset 28, -64
	stw 30,80(1)
	mr 30,3
	.cfi_offset 30, -56
	stw 31,84(1)
	mr 31,5
	.cfi_offset 31, -52
	stfd 26,88(1)
	stfd 27,96(1)
	stfd 28,104(1)
	stfd 29,112(1)
	stfd 30,120(1)
	stfd 31,128(1)
	stw 23,52(1)
	stw 24,56(1)
	stw 25,60(1)
	.loc 1 97 0
	stw 10,8(1)
	stw 11,12(1)
	stw 0,16(1)
	.loc 1 100 0
	beq- 7,.L73
	.cfi_offset 25, -76
	.cfi_offset 24, -80
	.cfi_offset 23, -84
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
.LVL96:
	.loc 1 104 0
	lis 25,active_decals@ha
	.loc 1 103 0
	lwz 0,88(29)
	.loc 1 104 0
	lwz 9,active_decals@l(25)
	.loc 1 109 0
	addi 3,1,8
.LVL97:
	.loc 1 103 0
	stw 0,free_decals@l(27)
	.loc 1 124 0
	lis 24,.LC6@ha
	.loc 1 104 0
	stw 9,88(29)
	.loc 1 105 0
	stw 29,active_decals@l(25)
	.loc 1 109 0
	bl VectorNormalize
.LVL98:
	.loc 1 110 0
	addi 4,1,8
	mr 5,31
	mr 3,28
	bl CrossProduct
	.loc 1 113 0
	lwz 0,0(30)
	.loc 1 117 0
	mr 3,31
	.loc 1 113 0
	stw 0,0(29)
	lwz 0,4(30)
	stw 0,4(29)
	lwz 0,8(30)
	stw 0,8(29)
	.loc 1 114 0
	lwz 0,0(31)
	stw 0,24(29)
	lwz 0,4(31)
	stw 0,28(29)
	lwz 0,8(31)
	stw 0,32(29)
	.loc 1 115 0
	lwz 0,0(28)
	stw 0,12(29)
	lwz 0,4(28)
	stw 0,16(29)
	lwz 0,8(28)
	stw 0,20(29)
	.loc 1 117 0
	bl VectorNormalize
	.loc 1 118 0
	mr 3,28
	bl VectorNormalize
	.loc 1 119 0
	mr 4,31
	addi 5,1,20
	mr 3,28
	bl CrossProduct
	.loc 1 120 0
	addi 3,1,20
	bl VectorNormalize
	.loc 1 122 0
	lfs 1,204(26)
	lfs 2,208(26)
	bl RandomMinMax
	.loc 1 124 0
	lfs 30,.LC6@l(24)
	.loc 1 125 0
	stfs 1,40(1)
	.loc 1 122 0
	fmr 31,1
.LVL99:
	.loc 1 124 0
	fmuls 30,1,30
.LVL100:
	.loc 1 125 0
	lwz 0,40(1)
	fcmpu 7,1,30
	bng- 7,.L82
.L75:
	.loc 1 126 0 discriminator 3
	lwz 9,236(26)
	.loc 1 128 0 discriminator 3
	lis 23,cl@ha
	.loc 1 127 0 discriminator 3
	lfs 2,168(26)
	.loc 1 128 0 discriminator 3
	la 23,cl@l(23)
	.loc 1 125 0 discriminator 3
	stw 0,36(29)
	.loc 1 126 0 discriminator 3
	stw 9,104(29)
	.loc 1 127 0 discriminator 3
	lfs 1,164(26)
.LVL101:
	bl RandomMinMax
	.loc 1 128 0 discriminator 3
	lfd 0,568(23)
	fmr 13,1
	.loc 1 130 0 discriminator 3
	lfs 2,104(26)
	.loc 1 127 0 discriminator 3
	stfs 1,96(29)
	.loc 1 130 0 discriminator 3
	lfs 1,92(26)
	.loc 1 128 0 discriminator 3
	fadd 0,13,0
	frsp 0,0
	stfs 0,92(29)
	.loc 1 130 0 discriminator 3
	bl RandomMinMax
	.loc 1 131 0 discriminator 3
	lfs 2,108(26)
	.loc 1 130 0 discriminator 3
	stfs 1,56(29)
	.loc 1 131 0 discriminator 3
	lfs 1,96(26)
	bl RandomMinMax
	.loc 1 132 0 discriminator 3
	lfs 2,112(26)
	.loc 1 131 0 discriminator 3
	stfs 1,60(29)
	.loc 1 132 0 discriminator 3
	lfs 1,100(26)
	bl RandomMinMax
	.loc 1 133 0 discriminator 3
	lfs 2,128(26)
	.loc 1 132 0 discriminator 3
	stfs 1,64(29)
	.loc 1 133 0 discriminator 3
	lfs 1,116(26)
	bl RandomMinMax
	.loc 1 134 0 discriminator 3
	lfs 2,132(26)
	.loc 1 133 0 discriminator 3
	stfs 1,72(29)
	.loc 1 134 0 discriminator 3
	lfs 1,120(26)
	bl RandomMinMax
	.loc 1 135 0 discriminator 3
	lfs 2,136(26)
	.loc 1 134 0 discriminator 3
	stfs 1,76(29)
	.loc 1 135 0 discriminator 3
	lfs 1,124(26)
	bl RandomMinMax
	.loc 1 168 0 discriminator 3
	lfs 26,.LC6@l(24)
	.loc 1 135 0 discriminator 3
	stfs 1,80(29)
	.loc 1 168 0 discriminator 3
	fmr 28,31
	fmr 29,26
	.loc 1 137 0 discriminator 3
	lwz 11,224(26)
	.loc 1 166 0 discriminator 3
	lfs 13,4(31)
	.loc 1 167 0 discriminator 3
	lis 9,.LANCHOR0@ha
	.loc 1 166 0 discriminator 3
	lfs 11,4(30)
	.loc 1 169 0 discriminator 3
	mr 3,31
	.loc 1 166 0 discriminator 3
	lfs 12,0(31)
	fmuls 11,13,11
	lfs 27,0(30)
	lfs 0,8(31)
	.loc 1 138 0 discriminator 3
	lwz 0,228(26)
	.loc 1 167 0 discriminator 3
	la 26,.LANCHOR0@l(9)
.LVL102:
	.loc 1 166 0 discriminator 3
	fmadds 11,27,12,11
	lfs 27,8(30)
	.loc 1 137 0 discriminator 3
	stw 11,108(29)
	.loc 1 167 0 discriminator 3
	stfs 13,4(26)
	.loc 1 166 0 discriminator 3
	fmadds 27,27,0,11
.LVL103:
	.loc 1 167 0 discriminator 3
	stfs 0,8(26)
	.loc 1 138 0 discriminator 3
	stw 0,112(29)
	.loc 1 167 0 discriminator 3
	stfs 12,.LANCHOR0@l(9)
	.loc 1 168 0 discriminator 3
	fmsub 11,28,29,27
	frsp 11,11
	fneg 11,11
	stfs 11,12(26)
	.loc 1 169 0 discriminator 3
	bl VectorInverse
	.loc 1 170 0 discriminator 3
	lwz 0,0(31)
	.loc 1 171 0 discriminator 3
	mr 3,31
	.loc 1 170 0 discriminator 3
	stw 0,16(26)
	lwz 0,4(31)
	stw 0,20(26)
	lwz 0,8(31)
	stw 0,24(26)
	.loc 1 171 0 discriminator 3
	bl VectorInverse
	.loc 1 172 0 discriminator 3
	fmadd 11,28,29,27
	.loc 1 174 0 discriminator 3
	lfs 13,24(1)
	.loc 1 177 0 discriminator 3
	addi 3,1,20
	.loc 1 174 0 discriminator 3
	lfs 12,20(1)
	.loc 1 172 0 discriminator 3
	frsp 11,11
	.loc 1 174 0 discriminator 3
	lfs 0,28(1)
	.loc 1 172 0 discriminator 3
	fneg 11,11
	stfs 11,28(26)
	.loc 1 174 0 discriminator 3
	lfs 11,4(30)
	lfs 10,0(30)
	fmuls 11,13,11
	lfs 27,8(30)
.LVL104:
	.loc 1 175 0 discriminator 3
	stfs 12,32(26)
	stfs 0,40(26)
	.loc 1 174 0 discriminator 3
	fmadds 12,10,12,11
	.loc 1 175 0 discriminator 3
	stfs 13,36(26)
	.loc 1 174 0 discriminator 3
	fmadds 0,27,0,12
.LVL105:
	.loc 1 176 0 discriminator 3
	fmr 27,0
	fmsub 0,28,29,27
.LVL106:
	frsp 0,0
	fneg 0,0
	stfs 0,44(26)
	.loc 1 177 0 discriminator 3
	bl VectorInverse
	.loc 1 178 0 discriminator 3
	lwz 0,20(1)
	.loc 1 179 0 discriminator 3
	addi 3,1,20
	.loc 1 178 0 discriminator 3
	stw 0,48(26)
	lwz 0,24(1)
	stw 0,52(26)
	lwz 0,28(1)
	stw 0,56(26)
	.loc 1 179 0 discriminator 3
	bl VectorInverse
	.loc 1 180 0 discriminator 3
	fmadd 0,28,29,27
	.loc 1 185 0 discriminator 3
	mr 3,28
	.loc 1 180 0 discriminator 3
	frsp 0,0
	fneg 0,0
	stfs 0,60(26)
	.loc 1 182 0 discriminator 3
	lfs 13,4(28)
	lfs 11,4(30)
	lfs 12,0(28)
	fmuls 11,13,11
	lfs 29,0(30)
	lfs 0,8(28)
	fmadds 11,29,12,11
	lfs 29,8(30)
	.loc 1 183 0 discriminator 3
	stfs 0,72(26)
	stfs 12,64(26)
	.loc 1 182 0 discriminator 3
	fmadds 29,29,0,11
.LVL107:
	.loc 1 183 0 discriminator 3
	stfs 13,68(26)
	.loc 1 184 0 discriminator 3
	fsubs 0,30,29
	fneg 0,0
	stfs 0,76(26)
	.loc 1 185 0 discriminator 3
	bl VectorInverse
	.loc 1 186 0 discriminator 3
	lwz 0,0(28)
	.loc 1 187 0 discriminator 3
	mr 3,28
	.loc 1 186 0 discriminator 3
	stw 0,80(26)
	lwz 0,4(28)
	stw 0,84(26)
	lwz 0,8(28)
	stw 0,88(26)
	.loc 1 187 0 discriminator 3
	bl VectorInverse
	.loc 1 188 0 discriminator 3
	fadds 30,30,29
.LVL108:
	.loc 1 195 0 discriminator 3
	lwz 9,2688(23)
	.loc 1 191 0 discriminator 3
	li 0,0
	stw 0,116(29)
	.loc 1 195 0 discriminator 3
	mr 3,29
	.loc 1 188 0 discriminator 3
	fneg 30,30
	.loc 1 192 0 discriminator 3
	stw 0,120(29)
	.loc 1 195 0 discriminator 3
	lwz 4,192(9)
	.loc 1 188 0 discriminator 3
	stfs 30,92(26)
	.loc 1 195 0 discriminator 3
	bl DecalWalkBsp_R
	.loc 1 198 0 discriminator 3
	lwz 0,120(29)
	cmpwi 7,0,0
	beq- 7,.L83
	.loc 1 209 0
	lwz 0,116(29)
	.loc 1 207 0
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	.loc 1 209 0
	cmpwi 7,0,0
	.loc 1 207 0
	fdivs 31,0,31
.LVL109:
	.loc 1 209 0
	ble- 7,.L73
.LBB8:
	.loc 1 214 0
	fmr 11,26
.LBE8:
	.loc 1 209 0
	lfs 5,20(1)
	lfs 6,24(1)
.LBB9:
	.loc 1 214 0
	mtctr 0
.LBE9:
	.loc 1 209 0
	lfs 7,28(1)
	.loc 1 89 0
	addi 9,29,124
	addi 29,29,1660
.LVL110:
.L78:
.LBB10:
	.loc 1 213 0 discriminator 2
	lfs 12,4(9)
	lfs 0,4(30)
	lfs 13,0(9)
	fsubs 12,12,0
	.loc 1 214 0 discriminator 2
	lfs 10,4(31)
	.loc 1 213 0 discriminator 2
	lfs 0,0(30)
	lfs 8,8(9)
.LBE10:
	.loc 1 209 0 discriminator 2
	addi 9,9,12
.LBB11:
	.loc 1 213 0 discriminator 2
	fsubs 13,13,0
.LVL111:
	.loc 1 214 0 discriminator 2
	lfs 9,0(31)
	fmuls 10,12,10
	.loc 1 213 0 discriminator 2
	lfs 0,8(30)
	.loc 1 215 0 discriminator 2
	fmuls 12,6,12
.LVL112:
	.loc 1 213 0 discriminator 2
	fsubs 0,8,0
.LVL113:
	.loc 1 214 0 discriminator 2
	fmadds 10,13,9,10
	.loc 1 215 0 discriminator 2
	fmadds 13,13,5,12
.LVL114:
	.loc 1 214 0 discriminator 2
	lfs 12,8(31)
	fmadds 10,0,12,10
	.loc 1 215 0 discriminator 2
	fmadds 0,7,0,13
.LVL115:
	.loc 1 214 0 discriminator 2
	fmadds 10,10,31,11
	.loc 1 215 0 discriminator 2
	fmadds 0,31,0,11
	.loc 1 216 0 discriminator 2
	stfs 10,0(29)
	.loc 1 217 0 discriminator 2
	stfs 0,4(29)
.LBE11:
	.loc 1 209 0 discriminator 2
	addi 29,29,8
	bdnz .L78
.LVL116:
.L73:
	.loc 1 219 0
	lwz 0,140(1)
	lwz 23,52(1)
	mtlr 0
	lwz 24,56(1)
	lwz 25,60(1)
	lwz 26,64(1)
	lwz 27,68(1)
	lwz 28,72(1)
.LVL117:
	lwz 29,76(1)
	lwz 30,80(1)
.LVL118:
	lwz 31,84(1)
.LVL119:
	lfd 26,88(1)
	lfd 27,96(1)
	lfd 28,104(1)
	lfd 29,112(1)
	lfd 30,120(1)
	lfd 31,128(1)
	addi 1,1,136
	.cfi_remember_state
.LCFI20:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	blr
.LVL120:
.L82:
.LCFI21:
	.cfi_restore_state
	.loc 1 125 0
	stfs 30,40(1)
	lwz 0,40(1)
.LVL121:
	b .L75
.LVL122:
.L83:
	.loc 1 200 0
	lwz 9,88(29)
	.loc 1 201 0
	lwz 0,free_decals@l(27)
	.loc 1 200 0
	stw 9,active_decals@l(25)
	.loc 1 201 0
	stw 0,88(29)
	.loc 1 202 0
	stw 29,free_decals@l(27)
	.loc 1 203 0
	b .L73
	.cfi_endproc
.LFE40:
	.size	R_SpawnDecal, .-R_SpawnDecal
	.align 2
	.globl R_DrawDecals
	.type	R_DrawDecals, @function
R_DrawDecals:
.LFB46:
	.loc 1 449 0
	.cfi_startproc
	mflr 0
	stwu 1,-48(1)
.LCFI22:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 1 454 0
	lis 4,color_black@ha
	li 3,2918
	la 4,color_black@l(4)
	.loc 1 449 0
	stw 31,44(1)
	stw 0,52(1)
	stw 22,8(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	.loc 1 454 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl glFogfv
	.loc 1 455 0
	li 3,3042
	bl glEnable
	.loc 1 456 0
	li 3,3008
	bl glEnable
	.loc 1 457 0
	lis 9,.LC4@ha
	lfs 1,.LC4@l(9)
	li 3,516
	bl glAlphaFunc
	.loc 1 458 0
	lis 9,.LC8@ha
	lfs 1,.LC8@l(9)
	li 4,8704
	li 3,8960
	bl glTexEnvf
	.loc 1 459 0
	li 3,0
	bl glDepthMask
	.loc 1 460 0
	li 3,0
	ori 3,3,32823
	bl glEnable
	.loc 1 461 0
	lis 9,.LC9@ha
	lfs 1,.LC9@l(9)
	fmr 2,1
	bl glPolygonOffset
	.loc 1 465 0
	lis 10,active_decals@ha
	lwz 31,active_decals@l(10)
.LVL123:
	.loc 1 466 0
	cmpwi 7,31,0
	beq- 7,.L101
	lis 30,cl@ha
	lfs 13,92(31)
	la 30,cl@l(30)
	lfd 0,568(30)
	fcmpu 7,13,0
	bnl- 7,.L86
	mr 9,31
	.loc 1 468 0
	lwz 31,88(31)
	.loc 1 466 0
	lis 11,free_decals@ha
	cmpwi 7,31,0
	lwz 0,free_decals@l(11)
	.loc 1 469 0
	stw 0,88(9)
.LVL124:
	.loc 1 466 0
	mr 0,9
	beq- 7,.L112
.LVL125:
.L89:
	.loc 1 466 0 is_stmt 0 discriminator 1
	lfs 13,92(31)
	fcmpu 7,13,0
	blt- 7,.L103
	.loc 1 466 0
	stw 31,active_decals@l(10)
	stw 9,free_decals@l(11)
.L86:
.LVL126:
	lis 27,.LC3@ha
	lis 28,.LC6@ha
	la 27,.LC3@l(27)
	la 28,.LC6@l(28)
	.loc 1 482 0 is_stmt 1
	lis 29,free_decals@ha
.LVL127:
.L90:
	.loc 1 480 0
	lwz 9,88(31)
.LVL128:
	.loc 1 482 0
	cmpwi 7,9,0
	beq- 7,.L91
	lfd 0,568(30)
	lfs 13,92(9)
	lwz 0,free_decals@l(29)
	fcmpu 7,13,0
	bnl- 7,.L91
	.loc 1 484 0
	lwz 11,88(9)
	stw 11,88(31)
	.loc 1 485 0
	stw 0,88(9)
	.loc 1 482 0
	mr 0,9
	.loc 1 480 0
	lwz 11,88(31)
	.loc 1 482 0
	cmpwi 7,11,0
	beq- 7,.L111
.LVL129:
.L94:
	.loc 1 482 0 is_stmt 0 discriminator 1
	lfs 13,92(11)
	fcmpu 7,13,0
	bnl- 7,.L111
	.loc 1 482 0
	mr 9,11
	.loc 1 484 0 is_stmt 1
	lwz 11,88(9)
.LVL130:
	stw 11,88(31)
	.loc 1 485 0
	stw 0,88(9)
	.loc 1 482 0
	mr 0,9
	.loc 1 480 0
	lwz 11,88(31)
.LVL131:
	.loc 1 482 0
	cmpwi 7,11,0
	bne+ 7,.L94
.LVL132:
.L111:
	stw 9,free_decals@l(29)
.LVL133:
.L91:
	.loc 1 492 0
	lwz 3,104(31)
	bl GL_Bind
	.loc 1 493 0
	lwz 3,108(31)
	lwz 4,112(31)
	bl glBlendFunc
	.loc 1 498 0
	lfs 4,92(31)
	lfd 0,568(30)
	.loc 1 448 0
	addi 9,31,52
	.loc 1 498 0
	lfs 12,96(31)
	.loc 1 500 0
	li 11,0
	.loc 1 498 0
	fsub 4,4,0
	.loc 1 499 0
	lfs 11,0(27)
	.loc 1 498 0
	fdiv 12,4,12
	frsp 12,12
.LVL134:
	.loc 1 499 0
	fsubs 11,11,12
.LVL135:
.L95:
	.loc 1 499 0 is_stmt 0 discriminator 2
	addi 9,9,4
	.loc 1 500 0 is_stmt 1 discriminator 2
	cmpwi 7,11,2
	.loc 1 501 0 discriminator 2
	lfs 0,16(9)
	.loc 1 500 0 discriminator 2
	addi 11,11,1
.LVL136:
	.loc 1 501 0 discriminator 2
	lfs 13,0(9)
	fmuls 0,11,0
	fmadds 0,13,12,0
	stfs 0,-16(9)
	.loc 1 500 0 discriminator 2
	bne+ 7,.L95
	.loc 1 504 0
	lfs 0,0(28)
	fcmpu 7,4,0
	bnl- 7,.L110
.LBB12:
	.loc 1 505 0
	fadd 4,4,4
	.loc 1 506 0
	lfs 1,40(31)
	lfs 2,44(31)
	lfs 3,48(31)
	.loc 1 505 0
	frsp 4,4
.LVL137:
	.loc 1 506 0
	fmuls 1,4,1
	fmuls 2,4,2
	fmuls 3,4,3
	bl glColor4f
.LVL138:
.L98:
.LBE12:
	.loc 1 513 0 discriminator 1
	lwz 0,120(31)
	cmpwi 7,0,0
	ble- 7,.L99
	.loc 1 448 0
	addi 26,31,2684
	li 25,0
.LVL139:
.L100:
.LBB13:
	.loc 1 515 0 discriminator 2
	lwz 22,0(26)
.LVL140:
	.loc 1 519 0 discriminator 2
	li 3,4
	.loc 1 516 0 discriminator 2
	lwz 23,4(26)
.LVL141:
.LBE13:
	.loc 1 513 0 discriminator 2
	addi 25,25,1
.LBB14:
	.loc 1 517 0 discriminator 2
	lwz 24,8(26)
.LVL142:
	.loc 1 519 0 discriminator 2
	bl glBegin
.LVL143:
	.loc 1 520 0 discriminator 2
	addi 3,22,206
	.loc 1 521 0 discriminator 2
	mulli 22,22,12
.LVL144:
	.loc 1 520 0 discriminator 2
	slwi 3,3,3
.LVL145:
.LBE14:
	.loc 1 513 0 discriminator 2
	addi 26,26,12
.LBB15:
	.loc 1 520 0 discriminator 2
	add 3,31,3
	addi 3,3,12
	bl glTexCoord2fv
	.loc 1 521 0 discriminator 2
	add 3,31,22
	addi 3,3,124
	bl glVertex3fv
	.loc 1 523 0 discriminator 2
	addi 3,23,206
	slwi 3,3,3
	.loc 1 524 0 discriminator 2
	mulli 23,23,12
.LVL146:
	.loc 1 523 0 discriminator 2
	add 3,31,3
	addi 3,3,12
	bl glTexCoord2fv
	.loc 1 524 0 discriminator 2
	add 3,31,23
	addi 3,3,124
	bl glVertex3fv
	.loc 1 526 0 discriminator 2
	addi 3,24,206
	slwi 3,3,3
	.loc 1 527 0 discriminator 2
	mulli 24,24,12
.LVL147:
	.loc 1 526 0 discriminator 2
	add 3,31,3
	addi 3,3,12
	bl glTexCoord2fv
	.loc 1 527 0 discriminator 2
	add 3,31,24
	addi 3,3,124
	bl glVertex3fv
	.loc 1 528 0 discriminator 2
	bl glEnd
.LVL148:
.LBE15:
	.loc 1 513 0 discriminator 2
	lwz 0,120(31)
	cmpw 7,0,25
	bgt+ 7,.L100
.LVL149:
.L99:
	.loc 1 476 0
	lwz 31,88(31)
.LVL150:
	cmpwi 7,31,0
	bne+ 7,.L90
.LVL151:
.L101:
	.loc 1 533 0
	li 3,0
	ori 3,3,32823
	bl glDisable
	.loc 1 534 0
	li 3,2929
	bl glEnable
	.loc 1 535 0
	li 3,1
	bl glDepthMask
	.loc 1 536 0
	li 3,3042
	bl glDisable
	.loc 1 537 0
	li 3,3008
	bl glDisable
	.loc 1 538 0
	lis 9,.LC10@ha
	lfs 1,.LC10@l(9)
	li 3,516
	bl glAlphaFunc
	.loc 1 539 0
	lis 9,.LC11@ha
	lfs 1,.LC11@l(9)
	li 3,8960
	li 4,8704
	bl glTexEnvf
	.loc 1 540 0
	lis 4,fog_color@ha
	li 3,2918
	la 4,fog_color@l(4)
	bl glFogfv
	.loc 1 541 0
	lwz 0,52(1)
	lwz 22,8(1)
	mtlr 0
	lwz 23,12(1)
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
	.cfi_remember_state
.LCFI23:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 22
	blr
.LVL152:
.L110:
.LCFI24:
	.cfi_restore_state
	.loc 1 508 0
	addi 3,31,40
	bl glColor3fv
.LVL153:
	b .L98
.LVL154:
.L103:
	.loc 1 466 0
	mr 9,31
	.loc 1 468 0
	lwz 31,88(31)
.LVL155:
	.loc 1 469 0
	stw 0,88(9)
.LVL156:
	.loc 1 466 0
	mr 0,9
	cmpwi 7,31,0
	bne+ 7,.L89
.LVL157:
.L112:
	stw 31,active_decals@l(10)
	stw 9,free_decals@l(11)
.LVL158:
	b .L101
	.cfi_endproc
.LFE46:
	.size	R_DrawDecals, .-R_DrawDecals
	.globl decalEpsilon
	.comm	r_numdecals,4,4
	.comm	decals,4,4
	.comm	free_decals,4,4
	.comm	active_decals,4,4
	.comm	causticschain,4,4
	.section	.rodata
	.align 2
	.set	.LANCHOR1,. + 0
.LC0:
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC3:
	.4byte	1065353216
.LC4:
	.4byte	0
.LC5:
	.4byte	981668463
.LC6:
	.4byte	1056964608
.LC8:
	.4byte	1174667264
.LC9:
	.4byte	-1082130432
.LC10:
	.4byte	1059749626
.LC11:
	.4byte	1173358592
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC1:
	.string	"-decals"
.LC2:
	.string	"decals"
	.section	.sdata,"aw",@progbits
	.align 2
	.type	decalEpsilon, @object
	.size	decalEpsilon, 4
decalEpsilon:
	.long	981668463
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	leftPlane, @object
	.size	leftPlane, 16
leftPlane:
	.zero	16
	.type	rightPlane, @object
	.size	rightPlane, 16
rightPlane:
	.zero	16
	.type	bottomPlane, @object
	.size	bottomPlane, 16
bottomPlane:
	.zero	16
	.type	topPlane, @object
	.size	topPlane, 16
topPlane:
	.zero	16
	.type	backPlane, @object
	.size	backPlane, 16
backPlane:
	.zero	16
	.type	frontPlane, @object
	.size	frontPlane, 16
frontPlane:
	.zero	16
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/bspfile.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/sound.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/client.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 14 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x26a7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF449
	.byte	0x1
	.4byte	.LASF450
	.4byte	.LASF451
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x2
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x7
	.4byte	0x7a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x66
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xb0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x8
	.byte	0x40
	.byte	0x3
	.byte	0x52
	.4byte	0x128
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3
	.byte	0x54
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.byte	0x54
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.byte	0x55
	.4byte	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x3
	.byte	0x56
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x3
	.byte	0x57
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x3
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x3
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x138
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x148
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x3
	.byte	0x59
	.4byte	0xbd
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x163
	.uleb128 0xb
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0x48
	.4byte	0x173
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x33
	.4byte	0x183
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x3
	.byte	0xa5
	.4byte	0x1a8
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x3
	.byte	0xa7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x3
	.byte	0xa8
	.4byte	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.byte	0xa9
	.4byte	0x183
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x1c9
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x3a
	.4byte	0x1d9
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1e9
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x4
	.byte	0x4
	.byte	0x6f
	.4byte	0x204
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x71
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x4
	.byte	0x72
	.4byte	0x1e9
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x5
	.byte	0x16
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x5
	.byte	0x17
	.4byte	0x225
	.uleb128 0xa
	.4byte	0x20f
	.4byte	0x235
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x245
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x48
	.byte	0x6
	.byte	0xef
	.4byte	0x2f6
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0xf1
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0xf2
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0xf9
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x6
	.byte	0xfa
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x6
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x6
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x6
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x6
	.byte	0xfe
	.4byte	0x245
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x312
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x322
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x332
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x44
	.byte	0x7
	.byte	0x23
	.4byte	0x35b
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x7
	.byte	0x25
	.4byte	0x312
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x7
	.byte	0x26
	.4byte	0x204
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x10
	.byte	0x8
	.byte	0x1e
	.4byte	0x3a0
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x8
	.byte	0x20
	.4byte	0x447
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x8
	.byte	0x21
	.4byte	0x44d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x8
	.byte	0x22
	.4byte	0x6c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x8
	.byte	0x23
	.4byte	0x44d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x40
	.byte	0x9
	.byte	0xca
	.4byte	0x447
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x9
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x9
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x9
	.byte	0xd0
	.4byte	0x13bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x9
	.byte	0xd2
	.4byte	0xa1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x9
	.byte	0xd5
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x9
	.byte	0xd6
	.4byte	0x13ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x9
	.byte	0xd8
	.4byte	0x13f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x9
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"key"
	.byte	0x9
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x9
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x9
	.byte	0xdc
	.4byte	0x1d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3a0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x35b
	.uleb128 0xf
	.4byte	.LASF63
	.2byte	0x248
	.byte	0x8
	.byte	0x27
	.4byte	0x6c1
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x8
	.byte	0x29
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x8
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x8
	.byte	0x2d
	.4byte	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x8
	.byte	0x2f
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x8
	.byte	0x30
	.4byte	0x6d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x8
	.byte	0x31
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x8
	.byte	0x32
	.4byte	0x6d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x8
	.byte	0x33
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x8
	.byte	0x34
	.4byte	0x99c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x8
	.byte	0x35
	.4byte	0x44d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x8
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x8
	.byte	0x37
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x8
	.byte	0x38
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x8
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x8
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x8
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x8
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x8
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x8
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x8
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x8
	.byte	0x44
	.4byte	0xa1f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x8
	.byte	0x48
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x8
	.byte	0x49
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x8
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x8
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x8
	.byte	0x50
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x8
	.byte	0x51
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x8
	.byte	0x52
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x8
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x8
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x8
	.byte	0x57
	.4byte	0xb3f
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x8
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x8
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x8
	.byte	0x5c
	.4byte	0xb45
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x8
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x8
	.byte	0x60
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x8
	.byte	0x61
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x8
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x8
	.byte	0x63
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x8
	.byte	0x64
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x453
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0x8
	.byte	0x24
	.4byte	0x35b
	.uleb128 0xa
	.4byte	0x20f
	.4byte	0x6e8
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF95
	.2byte	0x1a4
	.byte	0x9
	.2byte	0x180
	.4byte	0x99c
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x9
	.2byte	0x182
	.4byte	0x312
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF96
	.byte	0x9
	.2byte	0x183
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0x9
	.2byte	0x185
	.4byte	0x1733
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x187
	.4byte	0xf84
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x9
	.2byte	0x18e
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x9
	.2byte	0x18e
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x9
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x194
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x195
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x195
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF105
	.byte	0x9
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF106
	.byte	0x9
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF108
	.byte	0x9
	.2byte	0x19d
	.4byte	0x173f
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0x9
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x1a0
	.4byte	0x13a2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x9
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x9
	.2byte	0x1a3
	.4byte	0x1745
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0x9
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0x9
	.2byte	0x1a6
	.4byte	0x174b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0x9
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0x9
	.2byte	0x1a9
	.4byte	0x1751
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0x9
	.2byte	0x1ac
	.4byte	0x1757
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0x9
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0x9
	.2byte	0x1af
	.4byte	0x13ae
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0x9
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0x9
	.2byte	0x1b2
	.4byte	0x13f6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0x9
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0x9
	.2byte	0x1b5
	.4byte	0x175d
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x1b8
	.4byte	0x1464
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x9
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x1bb
	.4byte	0x13f0
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x1bd
	.4byte	0x1763
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0x9
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x1c0
	.4byte	0x1773
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0x9
	.2byte	0x1c2
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0x9
	.2byte	0x1c3
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0x9
	.2byte	0x1c4
	.4byte	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x9
	.2byte	0x1c9
	.4byte	0x204
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6e8
	.uleb128 0xc
	.4byte	.LASF133
	.byte	0x34
	.byte	0x9
	.byte	0xb6
	.4byte	0xa1f
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x9
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x9
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x9
	.byte	0xbc
	.4byte	0x13bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x9
	.byte	0xbe
	.4byte	0xa1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x9
	.byte	0xc1
	.4byte	0x13a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x9
	.byte	0xc2
	.4byte	0x13cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF135
	.byte	0x9
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF120
	.byte	0x9
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9a2
	.uleb128 0x12
	.4byte	.LASF136
	.4byte	0x20030
	.byte	0xa
	.2byte	0xa09
	.4byte	0xb3f
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xa
	.2byte	0xa0f
	.4byte	0xb3f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xa
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xa
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0xa
	.2byte	0xa17
	.4byte	0x1f24
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0xa
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0xa
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0xa
	.2byte	0xa1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xa
	.2byte	0xa1d
	.4byte	0xc47
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xa
	.2byte	0xa1f
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF146
	.byte	0xa
	.2byte	0xa21
	.4byte	0x1f24
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0xa
	.2byte	0xa25
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0xa
	.2byte	0xa2b
	.4byte	0x1f30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0xa
	.2byte	0xa2d
	.4byte	0x1f30
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xa
	.2byte	0xa2f
	.4byte	0x1f30
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xa
	.2byte	0xa31
	.4byte	0x1f30
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xa
	.2byte	0xa33
	.4byte	0x1f75
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0xa
	.2byte	0xa37
	.4byte	0x1f86
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa25
	.uleb128 0xa
	.4byte	0x33
	.4byte	0xb55
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF154
	.byte	0x8
	.byte	0x66
	.4byte	0x453
	.uleb128 0x8
	.byte	0x18
	.byte	0xb
	.byte	0x16
	.4byte	0xba1
	.uleb128 0x9
	.4byte	.LASF155
	.byte	0xb
	.byte	0x18
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF156
	.byte	0xb
	.byte	0x1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF157
	.byte	0xb
	.byte	0x1c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF158
	.byte	0xb
	.byte	0x1d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF159
	.byte	0xb
	.byte	0x21
	.4byte	0xb60
	.uleb128 0x13
	.2byte	0x402c
	.byte	0xb
	.byte	0x29
	.4byte	0xbfc
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0xb
	.byte	0x2b
	.4byte	0x322
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF160
	.byte	0xb
	.byte	0x2c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0xb
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF162
	.byte	0xb
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF163
	.byte	0xb
	.byte	0x2f
	.4byte	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF164
	.byte	0xb
	.byte	0x30
	.4byte	0xbac
	.uleb128 0x8
	.byte	0x10
	.byte	0xb
	.byte	0x32
	.4byte	0xc2c
	.uleb128 0x9
	.4byte	.LASF165
	.byte	0xb
	.byte	0x34
	.4byte	0xc2c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF166
	.byte	0xb
	.byte	0x35
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0xc3c
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF167
	.byte	0xb
	.byte	0x36
	.4byte	0xc07
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb55
	.uleb128 0x13
	.2byte	0xce8
	.byte	0xb
	.byte	0x9a
	.4byte	0xee8
	.uleb128 0x9
	.4byte	.LASF168
	.byte	0xb
	.byte	0x9c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"cmd"
	.byte	0xb
	.byte	0xa0
	.4byte	0xba1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0xb
	.byte	0xa3
	.4byte	0xee8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF170
	.byte	0xb
	.byte	0xa4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0xb
	.byte	0xa5
	.4byte	0xef8
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF172
	.byte	0xb
	.byte	0xa6
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0xb
	.byte	0xa8
	.4byte	0xf08
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0xb
	.byte	0xa9
	.4byte	0xf08
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0xb
	.byte	0xaf
	.4byte	0x6d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0x9
	.4byte	.LASF155
	.byte	0xb
	.byte	0xb1
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0xb
	.byte	0xb3
	.4byte	0x6d2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0xb
	.byte	0xb5
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x9
	.4byte	.LASF178
	.byte	0xb
	.byte	0xb7
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x9
	.4byte	.LASF179
	.byte	0xb
	.byte	0xba
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.4byte	.LASF180
	.byte	0xb
	.byte	0xbb
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x9
	.4byte	.LASF181
	.byte	0xb
	.byte	0xbc
	.4byte	0xa5
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x9
	.4byte	.LASF182
	.byte	0xb
	.byte	0xbd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0x9
	.4byte	.LASF183
	.byte	0xb
	.byte	0xbe
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x9
	.4byte	.LASF184
	.byte	0xb
	.byte	0xc0
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF185
	.byte	0xb
	.byte	0xc1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF186
	.byte	0xb
	.byte	0xc3
	.4byte	0xa5
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x9
	.4byte	.LASF187
	.byte	0xb
	.byte	0xc4
	.4byte	0xa5
	.byte	0x3
	.byte	0x23
	.uleb128 0x219
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0xb
	.byte	0xc5
	.4byte	0xa5
	.byte	0x3
	.byte	0x23
	.uleb128 0x21a
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0xb
	.byte	0xc7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x9
	.4byte	.LASF190
	.byte	0xb
	.byte	0xc8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.4byte	.LASF191
	.byte	0xb
	.byte	0xca
	.4byte	0xf18
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x9
	.4byte	.LASF192
	.byte	0xb
	.byte	0xcb
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0x9
	.4byte	.LASF193
	.byte	0xb
	.byte	0xce
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0x9
	.4byte	.LASF194
	.byte	0xb
	.byte	0xd2
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0x9
	.4byte	.LASF195
	.byte	0xb
	.byte	0xd7
	.4byte	0xf28
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0xb
	.byte	0xd8
	.4byte	0xf38
	.byte	0x3
	.byte	0x23
	.uleb128 0x64c
	.uleb128 0x9
	.4byte	.LASF197
	.byte	0xb
	.byte	0xda
	.4byte	0xf4e
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4c
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0xb
	.byte	0xdb
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa74
	.uleb128 0x9
	.4byte	.LASF199
	.byte	0xb
	.byte	0xdc
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0xb
	.byte	0xdd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7c
	.uleb128 0x9
	.4byte	.LASF201
	.byte	0xb
	.byte	0xe0
	.4byte	0x99c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0x9
	.4byte	.LASF202
	.byte	0xb
	.byte	0xe1
	.4byte	0x44d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0x9
	.4byte	.LASF203
	.byte	0xb
	.byte	0xe2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0x9
	.4byte	.LASF204
	.byte	0xb
	.byte	0xe3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0xb
	.byte	0xe4
	.4byte	0xb55
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0x9
	.4byte	.LASF206
	.byte	0xb
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd8
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0xb
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcdc
	.uleb128 0x9
	.4byte	.LASF208
	.byte	0xb
	.byte	0xe9
	.4byte	0xf5e
	.byte	0x3
	.byte	0x23
	.uleb128 0xce0
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0xb
	.byte	0xf2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xce4
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0xef8
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0xf08
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0xc3c
	.4byte	0xf18
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x73
	.4byte	0xf28
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x99c
	.4byte	0xf38
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.4byte	0xf48
	.4byte	0xf48
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x332
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0xf5e
	.uleb128 0xb
	.4byte	0x48
	.byte	0x27
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbfc
	.uleb128 0x6
	.4byte	.LASF210
	.byte	0xb
	.byte	0xf3
	.4byte	0xc4d
	.uleb128 0x14
	.byte	0x4
	.byte	0xc
	.byte	0x34
	.4byte	0xf84
	.uleb128 0x15
	.4byte	.LASF211
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF212
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF213
	.byte	0xc
	.byte	0x34
	.4byte	0xf6f
	.uleb128 0x8
	.byte	0x4
	.byte	0xc
	.byte	0x64
	.4byte	0xfb2
	.uleb128 0xe
	.string	"v"
	.byte	0xc
	.byte	0x65
	.4byte	0xfb2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF214
	.byte	0xc
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0xfc2
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF215
	.byte	0xc
	.byte	0x67
	.4byte	0xf8f
	.uleb128 0x8
	.byte	0xc
	.byte	0x9
	.byte	0x3b
	.4byte	0xfe4
	.uleb128 0x9
	.4byte	.LASF216
	.byte	0x9
	.byte	0x3d
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF217
	.byte	0x9
	.byte	0x3e
	.4byte	0xfcd
	.uleb128 0x8
	.byte	0x1c
	.byte	0x9
	.byte	0x43
	.4byte	0x1022
	.uleb128 0x9
	.4byte	.LASF216
	.byte	0x9
	.byte	0x45
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF218
	.byte	0x9
	.byte	0x46
	.4byte	0x1022
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF219
	.byte	0x9
	.byte	0x47
	.4byte	0x1022
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x1032
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF220
	.byte	0x9
	.byte	0x48
	.4byte	0xfef
	.uleb128 0xc
	.4byte	.LASF221
	.byte	0x14
	.byte	0x9
	.byte	0x52
	.4byte	0x1090
	.uleb128 0x9
	.4byte	.LASF222
	.byte	0x9
	.byte	0x54
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF223
	.byte	0x9
	.byte	0x55
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x9
	.byte	0x56
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF224
	.byte	0x9
	.byte	0x57
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.string	"pad"
	.byte	0x9
	.byte	0x58
	.4byte	0x1090
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x10a0
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF225
	.byte	0x9
	.byte	0x59
	.4byte	0x103d
	.uleb128 0xc
	.4byte	.LASF226
	.byte	0x48
	.byte	0x9
	.byte	0x5b
	.4byte	0x1160
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x9
	.byte	0x5d
	.4byte	0x153
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF227
	.byte	0x9
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF228
	.byte	0x9
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF229
	.byte	0x9
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF230
	.byte	0x9
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF231
	.byte	0x9
	.byte	0x61
	.4byte	0x1285
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF232
	.byte	0x9
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF233
	.byte	0x9
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF234
	.byte	0x9
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF235
	.byte	0x9
	.byte	0x64
	.4byte	0x128b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF236
	.byte	0x9
	.byte	0x65
	.4byte	0x128b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF237
	.byte	0x9
	.byte	0x66
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF238
	.byte	0x5c
	.byte	0x9
	.byte	0x96
	.4byte	0x1285
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x9
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x9
	.byte	0x9a
	.4byte	0x13a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x9
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF239
	.byte	0x9
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF114
	.byte	0x9
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF240
	.byte	0x9
	.byte	0xa0
	.4byte	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF241
	.byte	0x9
	.byte	0xa1
	.4byte	0x173
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF242
	.byte	0x9
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF243
	.byte	0x9
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF244
	.byte	0x9
	.byte	0xa5
	.4byte	0x13a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF231
	.byte	0x9
	.byte	0xa6
	.4byte	0x1285
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF245
	.byte	0x9
	.byte	0xa7
	.4byte	0x1285
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF119
	.byte	0x9
	.byte	0xa9
	.4byte	0x13ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x9
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x9
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF246
	.byte	0x9
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF247
	.byte	0x9
	.byte	0xb0
	.4byte	0x1d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF248
	.byte	0x9
	.byte	0xb1
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF249
	.byte	0x9
	.byte	0xb2
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF250
	.byte	0x9
	.byte	0xb3
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1160
	.uleb128 0x5
	.byte	0x4
	.4byte	0x10ab
	.uleb128 0x6
	.4byte	.LASF251
	.byte	0x9
	.byte	0x67
	.4byte	0x10ab
	.uleb128 0x8
	.byte	0x8
	.byte	0x9
	.byte	0x78
	.4byte	0x12bf
	.uleb128 0xe
	.string	"v"
	.byte	0x9
	.byte	0x7a
	.4byte	0x1c9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF252
	.byte	0x9
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF253
	.byte	0x9
	.byte	0x7c
	.4byte	0x129c
	.uleb128 0x8
	.byte	0x2c
	.byte	0x9
	.byte	0x7e
	.4byte	0x130b
	.uleb128 0x9
	.4byte	.LASF254
	.byte	0x9
	.byte	0x80
	.4byte	0x1b3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF255
	.byte	0x9
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF218
	.byte	0x9
	.byte	0x82
	.4byte	0x130b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x9
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1291
	.uleb128 0x6
	.4byte	.LASF256
	.byte	0x9
	.byte	0x84
	.4byte	0x12ca
	.uleb128 0xc
	.4byte	.LASF257
	.byte	0x1c
	.byte	0x9
	.byte	0x8a
	.4byte	0x138b
	.uleb128 0x9
	.4byte	.LASF258
	.byte	0x9
	.byte	0x8c
	.4byte	0x138b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF259
	.byte	0x9
	.byte	0x8d
	.4byte	0x138b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF260
	.byte	0x9
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x9
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x9
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF261
	.byte	0x9
	.byte	0x92
	.4byte	0x1391
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF262
	.byte	0x9
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x131c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x138b
	.uleb128 0x6
	.4byte	.LASF263
	.byte	0x9
	.byte	0x94
	.4byte	0x131c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x10a0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1397
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1311
	.uleb128 0x6
	.4byte	.LASF264
	.byte	0x9
	.byte	0xb4
	.4byte	0x1160
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x13cf
	.uleb128 0xb
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xa1f
	.4byte	0x13df
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF265
	.byte	0x9
	.byte	0xc6
	.4byte	0x9a2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6c7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13f6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13b4
	.uleb128 0x6
	.4byte	.LASF266
	.byte	0x9
	.byte	0xdd
	.4byte	0x3a0
	.uleb128 0x8
	.byte	0x28
	.byte	0x9
	.byte	0xe0
	.4byte	0x1464
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0x9
	.byte	0xe2
	.4byte	0x1464
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x9
	.byte	0xe3
	.4byte	0x13a2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF267
	.byte	0x9
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF268
	.byte	0x9
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF269
	.byte	0x9
	.byte	0xe6
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF270
	.byte	0x9
	.byte	0xe7
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a8
	.uleb128 0x6
	.4byte	.LASF271
	.byte	0x9
	.byte	0xe8
	.4byte	0x1407
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x16
	.byte	0x28
	.byte	0x9
	.2byte	0x11e
	.4byte	0x14ee
	.uleb128 0x11
	.4byte	.LASF272
	.byte	0x9
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF273
	.byte	0x9
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF274
	.byte	0x9
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF275
	.byte	0x9
	.2byte	0x123
	.4byte	0xfc2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF276
	.byte	0x9
	.2byte	0x124
	.4byte	0xfc2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x9
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x9
	.2byte	0x126
	.4byte	0x153
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x17
	.4byte	.LASF277
	.byte	0x9
	.2byte	0x127
	.4byte	0x147b
	.uleb128 0x18
	.2byte	0x53c
	.byte	0x9
	.2byte	0x142
	.4byte	0x16df
	.uleb128 0x11
	.4byte	.LASF278
	.byte	0x9
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF279
	.byte	0x9
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF280
	.byte	0x9
	.2byte	0x145
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF281
	.byte	0x9
	.2byte	0x146
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF282
	.byte	0x9
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF283
	.byte	0x9
	.2byte	0x148
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF284
	.byte	0x9
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.4byte	.LASF285
	.byte	0x9
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF286
	.byte	0x9
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF260
	.byte	0x9
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF287
	.byte	0x9
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0x9
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x14f
	.4byte	0xf84
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF100
	.byte	0x9
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF288
	.byte	0x9
	.2byte	0x151
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x9
	.2byte	0x153
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x9
	.2byte	0x153
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF273
	.byte	0x9
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF289
	.byte	0x9
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF290
	.byte	0x9
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF291
	.byte	0x9
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x11
	.4byte	.LASF292
	.byte	0x9
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0x9
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0x9
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x11
	.4byte	.LASF293
	.byte	0x9
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.4byte	.LASF294
	.byte	0x9
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF295
	.byte	0x9
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF229
	.byte	0x9
	.2byte	0x15e
	.4byte	0x16df
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF296
	.byte	0x9
	.2byte	0x15f
	.4byte	0x16df
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x11
	.4byte	.LASF297
	.byte	0x9
	.2byte	0x160
	.4byte	0xee8
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x11
	.4byte	.LASF298
	.byte	0x9
	.2byte	0x161
	.4byte	0x16f5
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x16f5
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x14ee
	.4byte	0x1705
	.uleb128 0xb
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF299
	.byte	0x9
	.2byte	0x162
	.4byte	0x14fa
	.uleb128 0x19
	.byte	0x4
	.byte	0x9
	.2byte	0x172
	.4byte	0x1733
	.uleb128 0x15
	.4byte	.LASF300
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF301
	.sleb128 1
	.uleb128 0x15
	.4byte	.LASF302
	.sleb128 2
	.uleb128 0x15
	.4byte	.LASF303
	.sleb128 3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF304
	.byte	0x9
	.2byte	0x172
	.4byte	0x1711
	.uleb128 0x5
	.byte	0x4
	.4byte	0x148
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13fc
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfe4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x12bf
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13df
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xa
	.4byte	0x146a
	.4byte	0x1773
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x130b
	.uleb128 0x8
	.byte	0x10
	.byte	0xd
	.byte	0x16
	.4byte	0x179e
	.uleb128 0x9
	.4byte	.LASF222
	.byte	0xd
	.byte	0x18
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF223
	.byte	0xd
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF305
	.byte	0xd
	.byte	0x1a
	.4byte	0x1779
	.uleb128 0x19
	.byte	0x4
	.byte	0xa
	.2byte	0x16b
	.4byte	0x17b9
	.uleb128 0x15
	.4byte	.LASF306
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF307
	.byte	0xa
	.2byte	0x16f
	.4byte	0x17a9
	.uleb128 0x19
	.byte	0x4
	.byte	0xa
	.2byte	0x173
	.4byte	0x17e1
	.uleb128 0x15
	.4byte	.LASF308
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF309
	.sleb128 1
	.uleb128 0x15
	.4byte	.LASF310
	.sleb128 2
	.byte	0
	.uleb128 0x17
	.4byte	.LASF311
	.byte	0xa
	.2byte	0x177
	.4byte	0x17c5
	.uleb128 0x10
	.4byte	.LASF312
	.2byte	0x104
	.byte	0xa
	.2byte	0x17b
	.4byte	0x19d5
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0xa
	.2byte	0x17d
	.4byte	0x312
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF313
	.byte	0xa
	.2byte	0x17f
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF314
	.byte	0xa
	.2byte	0x17f
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF315
	.byte	0xa
	.2byte	0x181
	.4byte	0x17b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.4byte	.LASF316
	.byte	0xa
	.2byte	0x183
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF317
	.byte	0xa
	.2byte	0x183
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x11
	.4byte	.LASF318
	.byte	0xa
	.2byte	0x183
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF319
	.byte	0xa
	.2byte	0x183
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF320
	.byte	0xa
	.2byte	0x185
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF321
	.byte	0xa
	.2byte	0x185
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x11
	.4byte	.LASF322
	.byte	0xa
	.2byte	0x187
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x11
	.4byte	.LASF323
	.byte	0xa
	.2byte	0x187
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x11
	.4byte	.LASF324
	.byte	0xa
	.2byte	0x189
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x11
	.4byte	.LASF325
	.byte	0xa
	.2byte	0x18b
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF326
	.byte	0xa
	.2byte	0x18d
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x11
	.4byte	.LASF327
	.byte	0xa
	.2byte	0x18d
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x11
	.4byte	.LASF328
	.byte	0xa
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x11
	.4byte	.LASF329
	.byte	0xa
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x11
	.4byte	.LASF330
	.byte	0xa
	.2byte	0x191
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x11
	.4byte	.LASF331
	.byte	0xa
	.2byte	0x191
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x11
	.4byte	.LASF332
	.byte	0xa
	.2byte	0x193
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x11
	.4byte	.LASF333
	.byte	0xa
	.2byte	0x195
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x11
	.4byte	.LASF334
	.byte	0xa
	.2byte	0x195
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x11
	.4byte	.LASF335
	.byte	0xa
	.2byte	0x197
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x11
	.4byte	.LASF218
	.byte	0xa
	.2byte	0x199
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x11
	.4byte	.LASF336
	.byte	0xa
	.2byte	0x19b
	.4byte	0x17e1
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x11
	.4byte	.LASF337
	.byte	0xa
	.2byte	0x19d
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x11
	.4byte	.LASF338
	.byte	0xa
	.2byte	0x19f
	.4byte	0xa5
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x11
	.4byte	.LASF339
	.byte	0xa
	.2byte	0x1a1
	.4byte	0x19d5
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x11
	.4byte	.LASF258
	.byte	0xa
	.2byte	0x1a3
	.4byte	0x19d5
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17ed
	.uleb128 0x17
	.4byte	.LASF340
	.byte	0xa
	.2byte	0x1a5
	.4byte	0x17ed
	.uleb128 0x5
	.byte	0x4
	.4byte	0x19db
	.uleb128 0x19
	.byte	0x4
	.byte	0xa
	.2byte	0x1cb
	.4byte	0x19fd
	.uleb128 0x15
	.4byte	.LASF341
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF342
	.byte	0xa
	.2byte	0x1cf
	.4byte	0x19ed
	.uleb128 0x10
	.4byte	.LASF343
	.2byte	0xd7c
	.byte	0xa
	.2byte	0x1d9
	.4byte	0x1b37
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0xa
	.2byte	0x1dd
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF222
	.byte	0xa
	.2byte	0x1df
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF344
	.byte	0xa
	.2byte	0x1e1
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0xa
	.2byte	0x1e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0xa
	.2byte	0x1e7
	.4byte	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF345
	.byte	0xa
	.2byte	0x1e7
	.4byte	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF346
	.byte	0xa
	.2byte	0x1e7
	.4byte	0x235
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF258
	.byte	0xa
	.2byte	0x1e9
	.4byte	0x1b37
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x1a
	.string	"die"
	.byte	0xa
	.2byte	0x1eb
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF347
	.byte	0xa
	.2byte	0x1ed
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF97
	.byte	0xa
	.2byte	0x1ef
	.4byte	0x19fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x11
	.4byte	.LASF218
	.byte	0xa
	.2byte	0x1f1
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x11
	.4byte	.LASF333
	.byte	0xa
	.2byte	0x1f3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF334
	.byte	0xa
	.2byte	0x1f5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF348
	.byte	0xa
	.2byte	0x1fb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF349
	.byte	0xa
	.2byte	0x1fb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x11
	.4byte	.LASF350
	.byte	0xa
	.2byte	0x1fd
	.4byte	0x1b3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x11
	.4byte	.LASF351
	.byte	0xa
	.2byte	0x1ff
	.4byte	0x1b53
	.byte	0x3
	.byte	0x23
	.uleb128 0x67c
	.uleb128 0x11
	.4byte	.LASF352
	.byte	0xa
	.2byte	0x201
	.4byte	0x1b69
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a09
	.uleb128 0xa
	.4byte	0x20f
	.4byte	0x1b53
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x1b69
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x1b7f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.4byte	.LASF353
	.byte	0xa
	.2byte	0x203
	.4byte	0x1a09
	.uleb128 0x1b
	.4byte	.LASF354
	.byte	0x14
	.byte	0xa
	.2byte	0x981
	.4byte	0x1bb7
	.uleb128 0x11
	.4byte	.LASF355
	.byte	0xa
	.2byte	0x983
	.4byte	0x138
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF258
	.byte	0xa
	.2byte	0x985
	.4byte	0x1bb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b8b
	.uleb128 0x17
	.4byte	.LASF356
	.byte	0xa
	.2byte	0x987
	.4byte	0x1b8b
	.uleb128 0x1c
	.4byte	.LASF400
	.byte	0x4
	.byte	0xa
	.2byte	0x98d
	.4byte	0x1c07
	.uleb128 0x1d
	.4byte	.LASF357
	.byte	0xa
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1d
	.4byte	.LASF358
	.byte	0xa
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1d
	.4byte	.LASF359
	.byte	0xa
	.2byte	0x993
	.4byte	0x20f
	.uleb128 0x1d
	.4byte	.LASF360
	.byte	0xa
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF361
	.byte	0xa
	.2byte	0x997
	.4byte	0x1bc9
	.uleb128 0x10
	.4byte	.LASF362
	.2byte	0x890
	.byte	0xa
	.2byte	0x99d
	.4byte	0x1dc7
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0xa
	.2byte	0x99f
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF363
	.byte	0xa
	.2byte	0x9a1
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0xa
	.2byte	0x9a1
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0xa
	.2byte	0x9a3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF364
	.byte	0xa
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF365
	.byte	0xa
	.2byte	0x9a9
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF366
	.byte	0xa
	.2byte	0x9ab
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x11
	.4byte	.LASF367
	.byte	0xa
	.2byte	0x9ad
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x11
	.4byte	.LASF368
	.byte	0xa
	.2byte	0x9af
	.4byte	0xa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x11
	.4byte	.LASF48
	.byte	0xa
	.2byte	0x9b1
	.4byte	0x1745
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1a
	.string	"vis"
	.byte	0xa
	.2byte	0x9b3
	.4byte	0x1dc7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF369
	.byte	0xa
	.2byte	0x9b5
	.4byte	0x1dc7
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x11
	.4byte	.LASF370
	.byte	0xa
	.2byte	0x9b7
	.4byte	0x13f0
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x11
	.4byte	.LASF371
	.byte	0xa
	.2byte	0x9b9
	.4byte	0x175d
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x11
	.4byte	.LASF372
	.byte	0xa
	.2byte	0x9bb
	.4byte	0x1475
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x11
	.4byte	.LASF373
	.byte	0xa
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x11
	.4byte	.LASF374
	.byte	0xa
	.2byte	0x9bf
	.4byte	0x1dd8
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x11
	.4byte	.LASF375
	.byte	0xa
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0xa
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x11
	.4byte	.LASF376
	.byte	0xa
	.2byte	0x9c5
	.4byte	0xc47
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x11
	.4byte	.LASF377
	.byte	0xa
	.2byte	0x9c7
	.4byte	0x1bbd
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x11
	.4byte	.LASF378
	.byte	0xa
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0xa
	.2byte	0x9cb
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x11
	.4byte	.LASF379
	.byte	0xa
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x11
	.4byte	.LASF380
	.byte	0xa
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x11
	.4byte	.LASF381
	.byte	0xa
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x11
	.4byte	.LASF382
	.byte	0xa
	.2byte	0x9d3
	.4byte	0x21a
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1dd8
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1c07
	.uleb128 0x17
	.4byte	.LASF383
	.byte	0xa
	.2byte	0x9d5
	.4byte	0x1c13
	.uleb128 0x12
	.4byte	.LASF384
	.4byte	0x1e864
	.byte	0xa
	.2byte	0x9db
	.4byte	0x1f24
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF385
	.byte	0xa
	.2byte	0x9e1
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF386
	.byte	0xa
	.2byte	0x9e1
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF387
	.byte	0xa
	.2byte	0x9e1
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF388
	.byte	0xa
	.2byte	0x9e1
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF389
	.byte	0xa
	.2byte	0x9e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x9e5
	.4byte	0xc47
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF390
	.byte	0xa
	.2byte	0x9e7
	.4byte	0x1f24
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF391
	.byte	0xa
	.2byte	0x9e9
	.4byte	0x1f2a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF392
	.byte	0xa
	.2byte	0x9eb
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF393
	.byte	0xa
	.2byte	0x9eb
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF394
	.byte	0xa
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF395
	.byte	0xa
	.2byte	0x9f3
	.4byte	0x1f30
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF396
	.byte	0xa
	.2byte	0x9f5
	.4byte	0x1f30
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x11
	.4byte	.LASF397
	.byte	0xa
	.2byte	0x9f7
	.4byte	0x1f30
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0xa
	.2byte	0x9f9
	.4byte	0x1f30
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x11
	.4byte	.LASF398
	.byte	0xa
	.2byte	0x9fb
	.4byte	0x1f47
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x11
	.4byte	.LASF295
	.byte	0xa
	.2byte	0x9ff
	.4byte	0x1f58
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x11
	.4byte	.LASF287
	.byte	0xa
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1705
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1dde
	.uleb128 0xa
	.4byte	0x20f
	.4byte	0x1f47
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0xa5
	.4byte	0x1f58
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x1f69
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x17
	.4byte	.LASF399
	.byte	0xa
	.2byte	0xa05
	.4byte	0x1dea
	.uleb128 0xa
	.4byte	0x179e
	.4byte	0x1f86
	.uleb128 0xd
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1f69
	.uleb128 0x5
	.byte	0x4
	.4byte	0x179e
	.uleb128 0x1c
	.4byte	.LASF401
	.byte	0x4
	.byte	0xe
	.2byte	0x490
	.4byte	0x1ff2
	.uleb128 0x1e
	.string	"U8"
	.byte	0xe
	.2byte	0x492
	.4byte	0x1ff2
	.uleb128 0x1e
	.string	"S8"
	.byte	0xe
	.2byte	0x493
	.4byte	0x1ff7
	.uleb128 0x1e
	.string	"U16"
	.byte	0xe
	.2byte	0x494
	.4byte	0x1ffc
	.uleb128 0x1e
	.string	"S16"
	.byte	0xe
	.2byte	0x495
	.4byte	0x2001
	.uleb128 0x1e
	.string	"U32"
	.byte	0xe
	.2byte	0x496
	.4byte	0x2006
	.uleb128 0x1e
	.string	"S32"
	.byte	0xe
	.2byte	0x497
	.4byte	0x200b
	.uleb128 0x1e
	.string	"F32"
	.byte	0xe
	.2byte	0x498
	.4byte	0x9a
	.byte	0
	.uleb128 0x7
	.4byte	0x2c
	.uleb128 0x7
	.4byte	0x25
	.uleb128 0x7
	.4byte	0x3a
	.uleb128 0x7
	.4byte	0x33
	.uleb128 0x7
	.4byte	0x48
	.uleb128 0x7
	.4byte	0x41
	.uleb128 0x17
	.4byte	.LASF402
	.byte	0xe
	.2byte	0x499
	.4byte	0x1f92
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF403
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.4byte	0x2043
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x33
	.4byte	0x41
	.4byte	.LLST1
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF404
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2069
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x4d
	.4byte	0x41
	.4byte	.LLST2
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF407
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.4byte	0xa5
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x20e8
	.uleb128 0x23
	.string	"dec"
	.byte	0x1
	.byte	0xfd
	.4byte	0x20e8
	.4byte	.LLST3
	.uleb128 0x24
	.4byte	.LASF405
	.byte	0x1
	.byte	0xfd
	.4byte	0x41
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.4byte	.LASF148
	.byte	0x1
	.byte	0xfd
	.4byte	0x20ee
	.4byte	.LLST4
	.uleb128 0x26
	.4byte	.LASF428
	.byte	0x1
	.byte	0xff
	.4byte	0x175d
	.uleb128 0x27
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x100
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0x28
	.string	"a"
	.byte	0x1
	.2byte	0x101
	.4byte	0x41
	.4byte	.LLST6
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.2byte	0x101
	.4byte	0x41
	.4byte	.LLST7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b7f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x21a
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF408
	.byte	0x1
	.2byte	0x16b
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST8
	.4byte	0x21ef
	.uleb128 0x2a
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x16b
	.4byte	0x1f8c
	.4byte	.LLST9
	.uleb128 0x2a
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x16b
	.4byte	0x41
	.4byte	.LLST10
	.uleb128 0x2a
	.4byte	.LASF409
	.byte	0x1
	.2byte	0x16b
	.4byte	0x20ee
	.4byte	.LLST11
	.uleb128 0x2a
	.4byte	.LASF410
	.byte	0x1
	.2byte	0x16b
	.4byte	0x20ee
	.4byte	.LLST12
	.uleb128 0x2b
	.4byte	.LASF411
	.byte	0x1
	.2byte	0x16d
	.4byte	0x21ef
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x28
	.string	"a"
	.byte	0x1
	.2byte	0x16e
	.4byte	0x41
	.4byte	.LLST13
	.uleb128 0x27
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x16e
	.4byte	0x41
	.4byte	.LLST14
	.uleb128 0x28
	.string	"b"
	.byte	0x1
	.2byte	0x16e
	.4byte	0x41
	.4byte	.LLST15
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.2byte	0x16e
	.4byte	0x41
	.4byte	.LLST16
	.uleb128 0x28
	.string	"t"
	.byte	0x1
	.2byte	0x16f
	.4byte	0x7a
	.4byte	.LLST17
	.uleb128 0x2c
	.string	"v1"
	.byte	0x1
	.2byte	0x170
	.4byte	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2c
	.string	"v2"
	.byte	0x1
	.2byte	0x170
	.4byte	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x27
	.4byte	.LASF412
	.byte	0x1
	.2byte	0x173
	.4byte	0x41
	.4byte	.LLST18
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x28
	.string	"neg"
	.byte	0x1
	.2byte	0x176
	.4byte	0xa5
	.4byte	.LLST19
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xa5
	.4byte	0x21ff
	.uleb128 0xb
	.4byte	0x48
	.byte	0x40
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x14d
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST20
	.4byte	0x226e
	.uleb128 0x2a
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x14d
	.4byte	0x41
	.4byte	.LLST21
	.uleb128 0x2a
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x14d
	.4byte	0x20ee
	.4byte	.LLST22
	.uleb128 0x2a
	.4byte	.LASF410
	.byte	0x1
	.2byte	0x14d
	.4byte	0x20ee
	.4byte	.LLST23
	.uleb128 0x2b
	.4byte	.LASF414
	.byte	0x1
	.2byte	0x14f
	.4byte	0x226e
	.byte	0x3
	.byte	0x91
	.sleb128 -776
	.uleb128 0x27
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x152
	.4byte	0x41
	.4byte	.LLST24
	.byte	0
	.uleb128 0xa
	.4byte	0x20f
	.4byte	0x2284
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF415
	.byte	0x1
	.2byte	0x122
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST25
	.4byte	0x233e
	.uleb128 0x2f
	.string	"dec"
	.byte	0x1
	.2byte	0x122
	.4byte	0x20e8
	.4byte	.LLST26
	.uleb128 0x2a
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x122
	.4byte	0x1745
	.4byte	.LLST27
	.uleb128 0x2b
	.4byte	.LASF410
	.byte	0x1
	.2byte	0x124
	.4byte	0x226e
	.byte	0x3
	.byte	0x91
	.sleb128 -804
	.uleb128 0x2c
	.string	"t3"
	.byte	0x1
	.2byte	0x124
	.4byte	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -816
	.uleb128 0x28
	.string	"c"
	.byte	0x1
	.2byte	0x125
	.4byte	0x41
	.4byte	.LLST28
	.uleb128 0x27
	.4byte	.LASF416
	.byte	0x1
	.2byte	0x126
	.4byte	0x13f0
	.4byte	.LLST29
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x27
	.4byte	.LASF417
	.byte	0x1
	.2byte	0x12f
	.4byte	0x13a8
	.4byte	.LLST30
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x130
	.4byte	0x41
	.4byte	.LLST31
	.uleb128 0x27
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x130
	.4byte	0x41
	.4byte	.LLST32
	.uleb128 0x28
	.string	"v"
	.byte	0x1
	.2byte	0x131
	.4byte	0x1475
	.4byte	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF418
	.byte	0x1
	.byte	0xdd
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST34
	.4byte	0x23a3
	.uleb128 0x23
	.string	"dec"
	.byte	0x1
	.byte	0xdd
	.4byte	0x20e8
	.4byte	.LLST35
	.uleb128 0x25
	.4byte	.LASF419
	.byte	0x1
	.byte	0xdd
	.4byte	0x1757
	.4byte	.LLST36
	.uleb128 0x30
	.4byte	.LASF134
	.byte	0x1
	.byte	0xdf
	.4byte	0x13a2
	.4byte	.LLST37
	.uleb128 0x30
	.4byte	.LASF223
	.byte	0x1
	.byte	0xe0
	.4byte	0x7a
	.4byte	.LLST38
	.uleb128 0x30
	.4byte	.LASF48
	.byte	0x1
	.byte	0xe1
	.4byte	0x1745
	.4byte	.LLST39
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF420
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST40
	.4byte	0x24b0
	.uleb128 0x25
	.4byte	.LASF421
	.byte	0x1
	.byte	0x59
	.4byte	0x24b0
	.4byte	.LLST41
	.uleb128 0x25
	.4byte	.LASF222
	.byte	0x1
	.byte	0x59
	.4byte	0x24b0
	.4byte	.LLST42
	.uleb128 0x25
	.4byte	.LASF344
	.byte	0x1
	.byte	0x59
	.4byte	0x24b0
	.4byte	.LLST43
	.uleb128 0x25
	.4byte	.LASF422
	.byte	0x1
	.byte	0x59
	.4byte	0x19e7
	.4byte	.LLST44
	.uleb128 0x30
	.4byte	.LASF227
	.byte	0x1
	.byte	0x5c
	.4byte	0x7a
	.4byte	.LLST45
	.uleb128 0x30
	.4byte	.LASF228
	.byte	0x1
	.byte	0x5c
	.4byte	0x7a
	.4byte	.LLST45
	.uleb128 0x30
	.4byte	.LASF423
	.byte	0x1
	.byte	0x5c
	.4byte	0x7a
	.4byte	.LLST47
	.uleb128 0x20
	.string	"d"
	.byte	0x1
	.byte	0x5c
	.4byte	0x7a
	.4byte	.LLST48
	.uleb128 0x31
	.4byte	.LASF424
	.byte	0x1
	.byte	0x5d
	.4byte	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x20
	.string	"dec"
	.byte	0x1
	.byte	0x5e
	.4byte	0x20e8
	.4byte	.LLST49
	.uleb128 0x30
	.4byte	.LASF425
	.byte	0x1
	.byte	0x5f
	.4byte	0x7a
	.4byte	.LLST50
	.uleb128 0x30
	.4byte	.LASF426
	.byte	0x1
	.byte	0x5f
	.4byte	0x7a
	.4byte	.LLST50
	.uleb128 0x20
	.string	"a"
	.byte	0x1
	.byte	0x60
	.4byte	0x41
	.4byte	.LLST52
	.uleb128 0x31
	.4byte	.LASF427
	.byte	0x1
	.byte	0x61
	.4byte	0x21a
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.byte	0xd3
	.4byte	0x7a
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.byte	0xd3
	.4byte	0x7a
	.uleb128 0x20
	.string	"v"
	.byte	0x1
	.byte	0xd4
	.4byte	0x21a
	.4byte	.LLST53
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x20f
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF429
	.byte	0x1
	.2byte	0x1c0
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST54
	.4byte	0x256e
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x20e8
	.4byte	.LLST55
	.uleb128 0x27
	.4byte	.LASF430
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x20e8
	.4byte	.LLST56
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.2byte	0x1c3
	.4byte	0x41
	.4byte	.LLST57
	.uleb128 0x27
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x7a
	.4byte	.LLST58
	.uleb128 0x27
	.4byte	.LASF431
	.byte	0x1
	.2byte	0x1c4
	.4byte	0x7a
	.4byte	.LLST59
	.uleb128 0x33
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0x253a
	.uleb128 0x27
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x7a
	.4byte	.LLST60
	.byte	0
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x68
	.uleb128 0x28
	.string	"i1"
	.byte	0x1
	.2byte	0x202
	.4byte	0x41
	.4byte	.LLST61
	.uleb128 0x28
	.string	"i2"
	.byte	0x1
	.2byte	0x202
	.4byte	0x41
	.4byte	.LLST62
	.uleb128 0x28
	.string	"i3"
	.byte	0x1
	.2byte	0x202
	.4byte	0x41
	.4byte	.LLST63
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF432
	.byte	0x1
	.byte	0x57
	.4byte	0x179e
	.byte	0x5
	.byte	0x3
	.4byte	leftPlane
	.uleb128 0x31
	.4byte	.LASF433
	.byte	0x1
	.byte	0x57
	.4byte	0x179e
	.byte	0x5
	.byte	0x3
	.4byte	rightPlane
	.uleb128 0x31
	.4byte	.LASF434
	.byte	0x1
	.byte	0x57
	.4byte	0x179e
	.byte	0x5
	.byte	0x3
	.4byte	bottomPlane
	.uleb128 0x31
	.4byte	.LASF435
	.byte	0x1
	.byte	0x57
	.4byte	0x179e
	.byte	0x5
	.byte	0x3
	.4byte	topPlane
	.uleb128 0x31
	.4byte	.LASF436
	.byte	0x1
	.byte	0x57
	.4byte	0x179e
	.byte	0x5
	.byte	0x3
	.4byte	backPlane
	.uleb128 0x31
	.4byte	.LASF437
	.byte	0x1
	.byte	0x57
	.4byte	0x179e
	.byte	0x5
	.byte	0x3
	.4byte	frontPlane
	.uleb128 0x34
	.4byte	.LASF438
	.byte	0x2
	.byte	0x9b
	.4byte	0x9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.string	"cl"
	.byte	0xb
	.2byte	0x11b
	.4byte	0xf64
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.4byte	.LASF439
	.byte	0xa
	.2byte	0x30e
	.4byte	0x235
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.4byte	.LASF440
	.byte	0xa
	.2byte	0x32c
	.4byte	0x235
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.4byte	.LASF441
	.byte	0xa
	.2byte	0xa89
	.4byte	0x2618
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1032
	.uleb128 0x37
	.4byte	.LASF442
	.byte	0xa
	.2byte	0xc2c
	.4byte	0x13f6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x36
	.4byte	.LASF443
	.byte	0xe
	.2byte	0x548
	.4byte	0x263f
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.4byte	0x2644
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2010
	.uleb128 0x39
	.4byte	.LASF444
	.byte	0x1
	.byte	0x22
	.4byte	0x20e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	active_decals
	.uleb128 0x39
	.4byte	.LASF445
	.byte	0x1
	.byte	0x22
	.4byte	0x20e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	free_decals
	.uleb128 0x39
	.4byte	.LASF446
	.byte	0x1
	.byte	0x24
	.4byte	0x20e8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	decals
	.uleb128 0x39
	.4byte	.LASF447
	.byte	0x1
	.byte	0x25
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_numdecals
	.uleb128 0x37
	.4byte	.LASF448
	.byte	0x1
	.2byte	0x120
	.4byte	0x26a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	decalEpsilon
	.uleb128 0x38
	.4byte	0x7a
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
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
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x6
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB38-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 116
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 116
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 116
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL36-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL43-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 784
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 784
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL48-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL62-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 824
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 824
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 824
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x74
	.sleb128 48
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x74
	.sleb128 44
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x5
	.byte	0x8d
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x24
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL84-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x10
	.byte	0x8d
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x24
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x8a
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL93-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 36
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL98-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL98-1-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL98-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL98-1-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL98-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL98-1-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL122-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	.LVL122-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL98-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	free_decals
	.4byte	.LVL98-1-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL120-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL158-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	active_decals
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x8
	.byte	0x3
	.4byte	active_decals
	.byte	0x6
	.byte	0x23
	.uleb128 0x58
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 88
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 88
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 88
	.4byte	.LVL157-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x3
	.byte	0x7b
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL138-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL138-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL138-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL143-1-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 0
	.4byte	.LVL143-1-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x4
	.byte	0x73
	.sleb128 -206
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL143-1-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 4
	.4byte	.LVL143-1-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-1-.Ltext0
	.2byte	0x2
	.byte	0x8a
	.sleb128 8
	.4byte	.LVL143-1-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2-.Ltext0
	.4byte	.LBE2-.Ltext0
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF424:
	.string	"binormal"
.LASF400:
	.string	"lightcmd_u"
.LASF407:
	.string	"DecalAddPolygon"
.LASF410:
	.string	"newVertex"
.LASF47:
	.string	"efrag_s"
.LASF94:
	.string	"efrag_t"
.LASF39:
	.string	"style"
.LASF158:
	.string	"upmove"
.LASF134:
	.string	"plane"
.LASF309:
	.string	"align_vel"
.LASF274:
	.string	"interval"
.LASF95:
	.string	"model_s"
.LASF343:
	.string	"decal_s"
.LASF353:
	.string	"decal_t"
.LASF255:
	.string	"mipadjust"
.LASF153:
	.string	"lightinstant"
.LASF282:
	.string	"boundingradius"
.LASF110:
	.string	"planes"
.LASF299:
	.string	"aliashdr_t"
.LASF302:
	.string	"mod_alias"
.LASF115:
	.string	"edges"
.LASF135:
	.string	"firstsurface"
.LASF320:
	.string	"velocitymin"
.LASF151:
	.string	"binomials"
.LASF210:
	.string	"client_state_t"
.LASF364:
	.string	"brightness"
.LASF79:
	.string	"frame_start_time"
.LASF306:
	.string	"emt_box"
.LASF22:
	.string	"numfaces"
.LASF117:
	.string	"nodes"
.LASF53:
	.string	"contents"
.LASF323:
	.string	"lifemax"
.LASF123:
	.string	"surfedges"
.LASF258:
	.string	"next"
.LASF279:
	.string	"version"
.LASF397:
	.string	"tshalfangles"
.LASF430:
	.string	"kill"
.LASF143:
	.string	"lastblend"
.LASF384:
	.string	"aliaslightinstant_s"
.LASF392:
	.string	"lightpos"
.LASF89:
	.string	"origin1"
.LASF90:
	.string	"origin2"
.LASF200:
	.string	"gametype"
.LASF427:
	.string	"test"
.LASF234:
	.string	"anim_max"
.LASF159:
	.string	"usercmd_t"
.LASF167:
	.string	"cshift_t"
.LASF182:
	.string	"driftmove"
.LASF125:
	.string	"clipnodes"
.LASF21:
	.string	"firstface"
.LASF199:
	.string	"maxclients"
.LASF361:
	.string	"lightcmd_t"
.LASF394:
	.string	"lastframeinstant"
.LASF138:
	.string	"lockframe"
.LASF65:
	.string	"update_type"
.LASF202:
	.string	"free_efrags"
.LASF197:
	.string	"levelname"
.LASF328:
	.string	"growmin"
.LASF179:
	.string	"idealpitch"
.LASF413:
	.string	"DecalClipPolygon"
.LASF414:
	.string	"tempVertex"
.LASF99:
	.string	"synctype"
.LASF112:
	.string	"numvertexes"
.LASF359:
	.string	"asVec"
.LASF214:
	.string	"lightnormalindex"
.LASF412:
	.string	"negativeCount"
.LASF64:
	.string	"forcelink"
.LASF194:
	.string	"last_received_message"
.LASF58:
	.string	"efrags"
.LASF52:
	.string	"mleaf_s"
.LASF266:
	.string	"mleaf_t"
.LASF240:
	.string	"texturemins"
.LASF331:
	.string	"sizemax"
.LASF92:
	.string	"angles1"
.LASF93:
	.string	"angles2"
.LASF322:
	.string	"lifemin"
.LASF122:
	.string	"numsurfedges"
.LASF450:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_decals.c"
.LASF120:
	.string	"numsurfaces"
.LASF288:
	.string	"size"
.LASF254:
	.string	"vecs"
.LASF330:
	.string	"sizemin"
.LASF212:
	.string	"ST_RAND"
.LASF275:
	.string	"bboxmin"
.LASF10:
	.string	"float"
.LASF162:
	.string	"colors"
.LASF25:
	.string	"children"
.LASF178:
	.string	"punchangle"
.LASF437:
	.string	"frontPlane"
.LASF32:
	.string	"modelindex"
.LASF294:
	.string	"texcoords"
.LASF217:
	.string	"mvertex_t"
.LASF61:
	.string	"index"
.LASF349:
	.string	"triangleCount"
.LASF6:
	.string	"long long unsigned int"
.LASF267:
	.string	"firstclipnode"
.LASF408:
	.string	"DecalClipPolygonAgainstPlane"
.LASF368:
	.string	"halo"
.LASF441:
	.string	"globalVertexTable"
.LASF127:
	.string	"hulls"
.LASF229:
	.string	"gl_texturenum"
.LASF82:
	.string	"pose1"
.LASF83:
	.string	"pose2"
.LASF35:
	.string	"skin"
.LASF270:
	.string	"clip_maxs"
.LASF409:
	.string	"vertex"
.LASF284:
	.string	"numskins"
.LASF88:
	.string	"translate_start_time"
.LASF451:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF66:
	.string	"baseline"
.LASF333:
	.string	"srcblend"
.LASF438:
	.string	"com_argv"
.LASF71:
	.string	"efrag"
.LASF192:
	.string	"time"
.LASF372:
	.string	"volumeVerts"
.LASF101:
	.string	"radius"
.LASF391:
	.string	"lastlight"
.LASF376:
	.string	"owner"
.LASF145:
	.string	"lastshadowonly"
.LASF36:
	.string	"effects"
.LASF16:
	.string	"mins"
.LASF433:
	.string	"rightPlane"
.LASF448:
	.string	"decalEpsilon"
.LASF265:
	.string	"mnode_t"
.LASF231:
	.string	"texturechain"
.LASF37:
	.string	"color"
.LASF246:
	.string	"lightmaptexturenum"
.LASF87:
	.string	"leafnums"
.LASF269:
	.string	"clip_mins"
.LASF439:
	.string	"fog_color"
.LASF220:
	.string	"mmvertex_t"
.LASF232:
	.string	"anim_total"
.LASF344:
	.string	"tangent"
.LASF308:
	.string	"align_view"
.LASF390:
	.string	"lasthdr"
.LASF381:
	.string	"haloalpha"
.LASF422:
	.string	"effect"
.LASF174:
	.string	"prev_cshifts"
.LASF401:
	.string	"_wgpipe"
.LASF15:
	.string	"_Bool"
.LASF111:
	.string	"leafs"
.LASF63:
	.string	"entity_s"
.LASF154:
	.string	"entity_t"
.LASF186:
	.string	"paused"
.LASF227:
	.string	"width"
.LASF106:
	.string	"nummodelsurfaces"
.LASF181:
	.string	"nodrift"
.LASF287:
	.string	"numtris"
.LASF100:
	.string	"flags"
.LASF241:
	.string	"extents"
.LASF335:
	.string	"numbounces"
.LASF305:
	.string	"plane_t"
.LASF18:
	.string	"origin"
.LASF108:
	.string	"submodels"
.LASF218:
	.string	"texture"
.LASF109:
	.string	"numplanes"
.LASF132:
	.string	"entities"
.LASF20:
	.string	"visleafs"
.LASF297:
	.string	"texels"
.LASF70:
	.string	"model"
.LASF316:
	.string	"startcolormin"
.LASF48:
	.string	"leaf"
.LASF360:
	.string	"asVoid"
.LASF289:
	.string	"poseverts"
.LASF435:
	.string	"topPlane"
.LASF301:
	.string	"mod_sprite"
.LASF8:
	.string	"char"
.LASF247:
	.string	"styles"
.LASF24:
	.string	"planenum"
.LASF317:
	.string	"startcolormax"
.LASF41:
	.string	"pflags"
.LASF249:
	.string	"cached_dlight"
.LASF84:
	.string	"aliasframeinstant"
.LASF175:
	.string	"mviewangles"
.LASF380:
	.string	"cubescale"
.LASF365:
	.string	"visible"
.LASF42:
	.string	"entity_state_t"
.LASF205:
	.string	"viewent"
.LASF54:
	.string	"visframe"
.LASF444:
	.string	"active_decals"
.LASF59:
	.string	"firstmarksurface"
.LASF253:
	.string	"medge_t"
.LASF62:
	.string	"ambient_sound_level"
.LASF327:
	.string	"rotmax"
.LASF428:
	.string	"triangle"
.LASF27:
	.string	"data"
.LASF278:
	.string	"ident"
.LASF256:
	.string	"mtexinfo_t"
.LASF213:
	.string	"synctype_t"
.LASF124:
	.string	"numclipnodes"
.LASF421:
	.string	"center"
.LASF298:
	.string	"frames"
.LASF118:
	.string	"numtexinfo"
.LASF51:
	.string	"entnext"
.LASF72:
	.string	"syncbase"
.LASF131:
	.string	"lightdata"
.LASF188:
	.string	"inwater"
.LASF102:
	.string	"clipbox"
.LASF395:
	.string	"extvertices"
.LASF348:
	.string	"vertexCount"
.LASF187:
	.string	"onground"
.LASF442:
	.string	"causticschain"
.LASF350:
	.string	"vertexArray"
.LASF78:
	.string	"topnode"
.LASF81:
	.string	"blend"
.LASF119:
	.string	"texinfo"
.LASF304:
	.string	"modtype_t"
.LASF34:
	.string	"colormap"
.LASF250:
	.string	"samples"
.LASF272:
	.string	"firstpose"
.LASF5:
	.string	"long long int"
.LASF57:
	.string	"compressed_vis"
.LASF248:
	.string	"cached_light"
.LASF198:
	.string	"viewentity"
.LASF189:
	.string	"intermission"
.LASF423:
	.string	"depth"
.LASF40:
	.string	"light_lev"
.LASF373:
	.string	"numVolumeVerts"
.LASF161:
	.string	"frags"
.LASF184:
	.string	"viewheight"
.LASF19:
	.string	"headnode"
.LASF26:
	.string	"dclipnode_t"
.LASF235:
	.string	"anim_next"
.LASF321:
	.string	"velocitymax"
.LASF315:
	.string	"emmiterType"
.LASF300:
	.string	"mod_brush"
.LASF190:
	.string	"completed_time"
.LASF165:
	.string	"destcolor"
.LASF285:
	.string	"skinwidth"
.LASF280:
	.string	"scale"
.LASF86:
	.string	"numleafs"
.LASF398:
	.string	"triangleVis"
.LASF283:
	.string	"eyeposition"
.LASF203:
	.string	"num_entities"
.LASF133:
	.string	"mnode_s"
.LASF44:
	.string	"sfx_s"
.LASF436:
	.string	"backPlane"
.LASF406:
	.string	"count"
.LASF336:
	.string	"align"
.LASF114:
	.string	"numedges"
.LASF363:
	.string	"baseColor"
.LASF223:
	.string	"dist"
.LASF50:
	.string	"entity"
.LASF230:
	.string	"gl_lumitex"
.LASF226:
	.string	"texture_s"
.LASF251:
	.string	"texture_t"
.LASF324:
	.string	"movetype"
.LASF341:
	.string	"dt_blood"
.LASF388:
	.string	"lastvorg"
.LASF347:
	.string	"lifetime"
.LASF228:
	.string	"height"
.LASF238:
	.string	"msurface_s"
.LASF264:
	.string	"msurface_t"
.LASF290:
	.string	"posedata"
.LASF206:
	.string	"cdtrack"
.LASF129:
	.string	"textures"
.LASF277:
	.string	"maliasframedesc_t"
.LASF325:
	.string	"gravity"
.LASF46:
	.string	"cache"
.LASF29:
	.string	"vec_t"
.LASF170:
	.string	"items"
.LASF293:
	.string	"binormals"
.LASF426:
	.string	"one_over_h"
.LASF104:
	.string	"clipmaxs"
.LASF291:
	.string	"commands"
.LASF370:
	.string	"visSurf"
.LASF193:
	.string	"oldtime"
.LASF208:
	.string	"scores"
.LASF245:
	.string	"shadowchain"
.LASF352:
	.string	"triangleArray"
.LASF345:
	.string	"startcolor"
.LASF417:
	.string	"poly"
.LASF140:
	.string	"paliashdr"
.LASF233:
	.string	"anim_min"
.LASF425:
	.string	"one_over_w"
.LASF11:
	.string	"long double"
.LASF172:
	.string	"faceanimtime"
.LASF176:
	.string	"mvelocity"
.LASF329:
	.string	"growmax"
.LASF74:
	.string	"lightTimestamp"
.LASF215:
	.string	"trivertx_t"
.LASF73:
	.string	"skinnum"
.LASF405:
	.string	"vertcount"
.LASF440:
	.string	"color_black"
.LASF183:
	.string	"laststop"
.LASF292:
	.string	"triangles"
.LASF334:
	.string	"dstblend"
.LASF377:
	.string	"scizz"
.LASF319:
	.string	"endcolormax"
.LASF310:
	.string	"align_surf"
.LASF268:
	.string	"lastclipnode"
.LASF209:
	.string	"server_proto_version"
.LASF446:
	.string	"decals"
.LASF337:
	.string	"velscale"
.LASF431:
	.string	"blend1"
.LASF434:
	.string	"bottomPlane"
.LASF313:
	.string	"emmiterParams1"
.LASF314:
	.string	"emmiterParams2"
.LASF56:
	.string	"parent"
.LASF366:
	.string	"isStatic"
.LASF196:
	.string	"sound_precache"
.LASF2:
	.string	"short int"
.LASF147:
	.string	"shadowonly"
.LASF144:
	.string	"lastent"
.LASF156:
	.string	"forwardmove"
.LASF355:
	.string	"coords"
.LASF12:
	.string	"long int"
.LASF49:
	.string	"leafnext"
.LASF173:
	.string	"cshifts"
.LASF224:
	.string	"signbits"
.LASF242:
	.string	"light_s"
.LASF243:
	.string	"light_t"
.LASF237:
	.string	"offsets"
.LASF276:
	.string	"bboxmax"
.LASF411:
	.string	"negative"
.LASF402:
	.string	"WGPipe"
.LASF399:
	.string	"aliaslightinstant_t"
.LASF107:
	.string	"numsubmodels"
.LASF387:
	.string	"lasteangles"
.LASF419:
	.string	"node"
.LASF260:
	.string	"numverts"
.LASF354:
	.string	"screenrect_s"
.LASF356:
	.string	"screenrect_t"
.LASF447:
	.string	"r_numdecals"
.LASF152:
	.string	"triplanes"
.LASF80:
	.string	"frame_interval"
.LASF358:
	.string	"asFloat"
.LASF236:
	.string	"alternate_anims"
.LASF116:
	.string	"numnodes"
.LASF148:
	.string	"vertices"
.LASF185:
	.string	"crouch"
.LASF429:
	.string	"R_DrawDecals"
.LASF311:
	.string	"align_t"
.LASF195:
	.string	"model_precache"
.LASF415:
	.string	"DecalClipLeaf"
.LASF45:
	.string	"name"
.LASF155:
	.string	"viewangles"
.LASF389:
	.string	"lastlradius"
.LASF4:
	.string	"unsigned int"
.LASF96:
	.string	"needload"
.LASF113:
	.string	"vertexes"
.LASF339:
	.string	"spawn"
.LASF342:
	.string	"dtype_t"
.LASF385:
	.string	"lasteorg"
.LASF177:
	.string	"velocity"
.LASF357:
	.string	"asInt"
.LASF43:
	.string	"cache_user_s"
.LASF126:
	.string	"marksurfaces"
.LASF28:
	.string	"cache_user_t"
.LASF191:
	.string	"mtime"
.LASF7:
	.string	"long unsigned int"
.LASF295:
	.string	"indecies"
.LASF67:
	.string	"msgtime"
.LASF375:
	.string	"numVisSurf"
.LASF312:
	.string	"ParticleEffect_s"
.LASF340:
	.string	"ParticleEffect_t"
.LASF416:
	.string	"surf"
.LASF38:
	.string	"alpha"
.LASF379:
	.string	"rspeed"
.LASF55:
	.string	"minmaxs"
.LASF149:
	.string	"normals"
.LASF257:
	.string	"glpoly_s"
.LASF263:
	.string	"glpoly_t"
.LASF13:
	.string	"byte"
.LASF386:
	.string	"lastlorg"
.LASF449:
	.string	"GNU C 4.6.3"
.LASF166:
	.string	"percent"
.LASF160:
	.string	"entertime"
.LASF204:
	.string	"num_statics"
.LASF222:
	.string	"normal"
.LASF91:
	.string	"rotate_start_time"
.LASF139:
	.string	"updateframe"
.LASF97:
	.string	"type"
.LASF77:
	.string	"trivial_accept"
.LASF1:
	.string	"unsigned char"
.LASF286:
	.string	"skinheight"
.LASF271:
	.string	"hull_t"
.LASF404:
	.string	"R_ClearDecals"
.LASF85:
	.string	"brushlightinstant"
.LASF244:
	.string	"polys"
.LASF141:
	.string	"lastpose1"
.LASF142:
	.string	"lastpose2"
.LASF261:
	.string	"neighbours"
.LASF374:
	.string	"lightCmds"
.LASF420:
	.string	"R_SpawnDecal"
.LASF418:
	.string	"DecalWalkBsp_R"
.LASF201:
	.string	"worldmodel"
.LASF157:
	.string	"sidemove"
.LASF351:
	.string	"texcoordArray"
.LASF60:
	.string	"nummarksurfaces"
.LASF445:
	.string	"free_decals"
.LASF168:
	.string	"movemessages"
.LASF130:
	.string	"visdata"
.LASF362:
	.string	"shadowlight_s"
.LASF383:
	.string	"shadowlight_t"
.LASF128:
	.string	"numtextures"
.LASF169:
	.string	"stats"
.LASF164:
	.string	"scoreboard_t"
.LASF146:
	.string	"lastpaliashdr"
.LASF98:
	.string	"numframes"
.LASF69:
	.string	"msg_angles"
.LASF33:
	.string	"frame"
.LASF23:
	.string	"dmodel_t"
.LASF318:
	.string	"endcolormin"
.LASF75:
	.string	"dlightframe"
.LASF180:
	.string	"pitchvel"
.LASF0:
	.string	"signed char"
.LASF281:
	.string	"scale_origin"
.LASF121:
	.string	"surfaces"
.LASF17:
	.string	"maxs"
.LASF207:
	.string	"looptrack"
.LASF371:
	.string	"volumeCmds"
.LASF3:
	.string	"short unsigned int"
.LASF259:
	.string	"chain"
.LASF396:
	.string	"tslights"
.LASF443:
	.string	"wgPipe"
.LASF31:
	.string	"angles"
.LASF432:
	.string	"leftPlane"
.LASF262:
	.string	"firstvertex"
.LASF211:
	.string	"ST_SYNC"
.LASF378:
	.string	"filtercube"
.LASF393:
	.string	"vieworg"
.LASF403:
	.string	"R_InitDecals"
.LASF163:
	.string	"translations"
.LASF9:
	.string	"double"
.LASF332:
	.string	"drag"
.LASF346:
	.string	"endcolor"
.LASF105:
	.string	"firstmodelsurface"
.LASF338:
	.string	"isPostProcess"
.LASF326:
	.string	"rotmin"
.LASF296:
	.string	"gl_lumatex"
.LASF382:
	.string	"oldlightorigin"
.LASF307:
	.string	"emtype_t"
.LASF252:
	.string	"cachededgeoffset"
.LASF171:
	.string	"item_gettime"
.LASF303:
	.string	"mod_alias3"
.LASF150:
	.string	"tangents"
.LASF221:
	.string	"mplane_s"
.LASF225:
	.string	"mplane_t"
.LASF76:
	.string	"dlightbits"
.LASF103:
	.string	"clipmins"
.LASF30:
	.string	"vec3_t"
.LASF68:
	.string	"msg_origins"
.LASF137:
	.string	"_next"
.LASF367:
	.string	"castShadow"
.LASF219:
	.string	"lightmap"
.LASF216:
	.string	"position"
.LASF273:
	.string	"numposes"
.LASF136:
	.string	"aliasframeinstant_s"
.LASF14:
	.string	"qboolean"
.LASF239:
	.string	"firstedge"
.LASF369:
	.string	"entvis"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
