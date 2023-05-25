	.file	"mathlib.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl ProjectPointOnPlane
	.type	ProjectPointOnPlane, @function
ProjectPointOnPlane:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/mathlib.c"
	.loc 1 33 0
	.cfi_startproc
.LVL0:
	.loc 1 38 0
	lfs 11,4(5)
	lis 9,.LC0@ha
	lfs 12,0(5)
	.loc 1 49 0
	.loc 1 38 0
	fmuls 0,11,11
	lfs 13,8(5)
	lfs 8,.LC0@l(9)
	.loc 1 40 0
	lfs 9,4(4)
	.loc 1 38 0
	fmadds 0,12,12,0
	.loc 1 40 0
	lfs 10,0(4)
	fmuls 9,11,9
	lfs 7,8(4)
	.loc 1 38 0
	fmadds 0,13,13,0
	fdivs 0,8,0
.LVL1:
	.loc 1 42 0
	fmuls 8,12,0
	.loc 1 40 0
	fmadds 12,12,10,9
	.loc 1 44 0
	fmuls 9,13,0
	.loc 1 43 0
	fmuls 11,11,0
	.loc 1 40 0
	fmadds 13,13,7,12
	fmuls 0,13,0
.LVL2:
	.loc 1 32 0
	fneg 0,0
.LVL3:
	.loc 1 46 0
	fmadds 10,0,8,10
	stfs 10,0(3)
	.loc 1 47 0
	lfs 13,4(4)
	fmadds 11,0,11,13
	stfs 11,4(3)
	.loc 1 48 0
	lfs 13,8(4)
	fmadds 0,0,9,13
	stfs 0,8(3)
	.loc 1 49 0
	blr
	.cfi_endproc
.LFE38:
	.size	ProjectPointOnPlane, .-ProjectPointOnPlane
	.align 2
	.globl anglemod
	.type	anglemod, @function
anglemod:
.LFB41:
	.loc 1 193 0
	.cfi_startproc
.LVL4:
	.loc 1 200 0
	lis 9,.LC1@ha
	.loc 1 193 0
	stwu 1,-24(1)
.LCFI0:
	.cfi_def_cfa_offset 24
	.loc 1 200 0
	lfd 0,.LC1@l(9)
	lis 0,0x4330
	addi 9,1,16
	stw 0,8(1)
	fmul 0,1,0
	fctiwz 0,0
	stfiwx 0,0,9
	lis 9,.LC3@ha
	lfs 0,.LC3@l(9)
	lis 9,.LC5@ha
	lwz 0,16(1)
	rlwinm 0,0,0,16,31
	xoris 0,0,0x8000
	stw 0,12(1)
	lfd 1,8(1)
.LVL5:
	.loc 1 202 0
	addi 1,1,24
.LCFI1:
	.cfi_def_cfa_offset 0
	.loc 1 200 0
	fsub 1,1,0
	lfs 0,.LC5@l(9)
	fmul 1,1,0
.LVL6:
	.loc 1 202 0
	frsp 1,1
.LVL7:
	blr
	.cfi_endproc
.LFE41:
	.size	anglemod, .-anglemod
	.align 2
	.globl BOPS_Error
	.type	BOPS_Error, @function
BOPS_Error:
.LFB42:
	.loc 1 212 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 213 0
	lis 3,.LC6@ha
	la 3,.LC6@l(3)
	.loc 1 212 0
	stw 0,12(1)
	.loc 1 213 0
	.cfi_offset 65, 4
	crxor 6,6,6
	bl Sys_Error
	.loc 1 214 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI3:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE42:
	.size	BOPS_Error, .-BOPS_Error
	.align 2
	.globl BoxOnPlaneSide
	.type	BoxOnPlaneSide, @function
BoxOnPlaneSide:
.LFB43:
	.loc 1 227 0
	.cfi_startproc
.LVL8:
	mflr 0
	stwu 1,-16(1)
.LCFI4:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 0,20(1)
	.loc 1 245 0
	lbz 0,17(5)
	.cfi_offset 65, 4
	cmplwi 7,0,7
	ble- 7,.L26
.LVL9:
	.loc 1 281 0
	stw 5,8(1)
	bl BOPS_Error
.LVL10:
	.loc 1 280 0
	lis 9,.LC7@ha
	lwz 5,8(1)
	lfs 13,.LC7@l(9)
	fmr 12,13
.LVL11:
.L15:
	.loc 1 313 0
	lfs 0,12(5)
	.loc 1 312 0
	fcmpu 7,0,12
	.loc 1 315 0
	fcmpu 6,13,0
	.loc 1 312 0
	cror 30,28,30
	mfcr 3
	rlwinm 3,3,31,1
.LVL12:
	.loc 1 315 0
	bnl- 6,.L16
	.loc 1 316 0
	ori 3,3,2
.LVL13:
.L16:
	.loc 1 324 0
	lwz 0,20(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL14:
.L26:
.LCFI6:
	.cfi_restore_state
	.loc 1 245 0
	lis 9,.L14@ha
	slwi 0,0,2
	la 9,.L14@l(9)
	.loc 1 276 0
	lfs 0,4(5)
	.loc 1 245 0
	lwzx 0,9,0
	add 9,0,9
	mtctr 9
	bctr
	.section	.rodata
	.align 2
	.align 2
.L14:
	.long .L6-.L14
	.long .L7-.L14
	.long .L8-.L14
	.long .L9-.L14
	.long .L10-.L14
	.long .L11-.L14
	.long .L12-.L14
	.long .L13-.L14
	.section	".text"
.L12:
	.loc 1 272 0
	lfs 12,4(3)
	.loc 1 273 0
	lfs 13,4(4)
.L24:
	.loc 1 272 0
	fmuls 12,0,12
	lfs 10,0(4)
	.loc 1 273 0
	fmuls 13,0,13
	lfs 11,0(3)
	.loc 1 272 0
	lfs 0,0(5)
.L20:
	.loc 1 276 0
	fmadds 12,0,10,12
	lfs 10,8(3)
	.loc 1 277 0
	fmadds 13,0,11,13
	.loc 1 276 0
	lfs 0,8(5)
	.loc 1 277 0
	lfs 11,8(4)
	.loc 1 276 0
	fmadds 12,0,10,12
.LVL15:
	.loc 1 277 0
	fmadds 13,0,11,13
.LVL16:
	.loc 1 278 0
	b .L15
.LVL17:
.L13:
	.loc 1 276 0
	lfs 12,4(3)
	.loc 1 277 0
	lfs 13,4(4)
.L23:
	.loc 1 276 0
	fmuls 12,0,12
	lfs 10,0(3)
	.loc 1 277 0
	fmuls 13,0,13
	lfs 11,0(4)
	.loc 1 276 0
	lfs 0,0(5)
	b .L20
.L6:
	.loc 1 248 0
	lfs 12,4(4)
	.loc 1 249 0
	lfs 13,4(3)
.L21:
	.loc 1 256 0
	fmuls 12,0,12
	lfs 10,0(4)
	.loc 1 257 0
	fmuls 13,0,13
	lfs 11,0(3)
	.loc 1 256 0
	lfs 0,0(5)
.L19:
	.loc 1 252 0
	fmadds 12,0,10,12
	lfs 10,8(4)
	.loc 1 253 0
	fmadds 13,0,11,13
	.loc 1 252 0
	lfs 0,8(5)
	.loc 1 253 0
	lfs 11,8(3)
	.loc 1 252 0
	fmadds 12,0,10,12
.LVL18:
	.loc 1 253 0
	fmadds 13,0,11,13
.LVL19:
	.loc 1 254 0
	b .L15
.LVL20:
.L7:
	.loc 1 252 0
	lfs 12,4(4)
	.loc 1 253 0
	lfs 13,4(3)
.L22:
	.loc 1 252 0
	fmuls 12,0,12
	lfs 10,0(3)
	.loc 1 253 0
	fmuls 13,0,13
	lfs 11,0(4)
	.loc 1 252 0
	lfs 0,0(5)
	b .L19
.L8:
	.loc 1 256 0
	lfs 12,4(3)
	.loc 1 257 0
	lfs 13,4(4)
	b .L21
.L9:
	.loc 1 260 0
	lfs 12,4(3)
	.loc 1 261 0
	lfs 13,4(4)
	b .L22
.L10:
	.loc 1 264 0
	lfs 12,4(4)
	.loc 1 265 0
	lfs 13,4(3)
	b .L24
.L11:
	.loc 1 268 0
	lfs 12,4(4)
	.loc 1 269 0
	lfs 13,4(3)
	b .L23
	.cfi_endproc
.LFE43:
	.size	BoxOnPlaneSide, .-BoxOnPlaneSide
	.align 2
	.globl AngleVectors
	.type	AngleVectors, @function
AngleVectors:
.LFB44:
	.loc 1 330 0
	.cfi_startproc
.LVL21:
	stwu 1,-72(1)
.LCFI7:
	.cfi_def_cfa_offset 72
	.loc 1 334 0
	lis 9,.LC8@ha
	.loc 1 330 0
	mflr 0
	stfd 27,32(1)
	stfd 30,56(1)
	.loc 1 334 0
	lfd 27,.LC8@l(9)
	.cfi_offset 62, -16
	.cfi_offset 59, -40
	.cfi_register 65, 0
	lfs 30,4(3)
	.loc 1 330 0
	stw 0,76(1)
	.loc 1 334 0
	fmul 30,30,27
	.loc 1 330 0
	stfd 26,24(1)
	stfd 28,40(1)
	stfd 29,48(1)
	stfd 31,64(1)
	.loc 1 334 0
	frsp 30,30
	.loc 1 330 0
	stw 28,8(1)
	stw 29,12(1)
	mr 28,6
	.cfi_offset 29, -60
	.cfi_offset 28, -64
	.cfi_offset 63, -8
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 58, -48
	.cfi_offset 65, 4
	mr 29,5
	stw 30,16(1)
	.loc 1 335 0
	fmr 1,30
	.loc 1 330 0
	mr 30,4
	.cfi_offset 30, -56
	stw 31,20(1)
	.loc 1 330 0
	mr 31,3
	.cfi_offset 31, -52
.LVL22:
	.loc 1 335 0
	bl sin
.LVL23:
	frsp 31,1
.LVL24:
	.loc 1 336 0
	fmr 1,30
	bl cos
	.loc 1 337 0
	lfs 29,0(31)
	.loc 1 336 0
	frsp 30,1
.LVL25:
	.loc 1 337 0
	fmul 29,29,27
	frsp 29,29
	.loc 1 338 0
	fmr 1,29
	bl sin
.LVL26:
	frsp 28,1
.LVL27:
	.loc 1 339 0
	fmr 1,29
	bl cos
	.loc 1 340 0
	lfs 0,8(31)
	.loc 1 339 0
	frsp 29,1
.LVL28:
	.loc 1 340 0
	fmul 27,0,27
	frsp 27,27
	.loc 1 341 0
	fmr 1,27
	bl sin
.LVL29:
	frsp 26,1
.LVL30:
	.loc 1 342 0
	fmr 1,27
	bl cos
	.loc 1 347 0
	fneg 0,26
	.loc 1 342 0
	frsp 1,1
.LVL31:
	.loc 1 353 0
	lwz 0,76(1)
	.loc 1 350 0
	fmuls 26,26,31
.LVL32:
	.loc 1 353 0
	lwz 31,20(1)
.LVL33:
	.loc 1 347 0
	fmuls 12,0,28
	.loc 1 353 0
	mtlr 0
	.loc 1 348 0
	fneg 7,1
	.loc 1 353 0
	lfd 27,32(1)
	.loc 1 350 0
	fmuls 13,1,28
	.loc 1 351 0
	fmuls 8,30,0
	.loc 1 347 0
	fmuls 11,1,31
	.loc 1 348 0
	fmuls 7,7,30
	.loc 1 344 0
	fmuls 9,29,30
	.loc 1 345 0
	fmuls 10,29,31
	.loc 1 347 0
	fmadds 11,12,30,11
	.loc 1 346 0
	fneg 28,28
.LVL34:
	.loc 1 344 0
	stfs 9,0(30)
	.loc 1 350 0
	fmadds 30,13,30,26
.LVL35:
	.loc 1 345 0
	stfs 10,4(30)
	.loc 1 348 0
	fmadds 12,31,12,7
	.loc 1 353 0
	lfd 26,24(1)
	.loc 1 349 0
	fmuls 0,29,0
	.loc 1 346 0
	stfs 28,8(30)
	.loc 1 351 0
	fmadds 31,31,13,8
.LVL36:
	.loc 1 347 0
	stfs 11,0(29)
	.loc 1 352 0
	fmuls 29,1,29
.LVL37:
	.loc 1 348 0
	stfs 12,4(29)
	.loc 1 349 0
	stfs 0,8(29)
	.loc 1 353 0
	lwz 30,16(1)
.LVL38:
	.loc 1 350 0
	stfs 30,0(28)
	.loc 1 351 0
	stfs 31,4(28)
	.loc 1 352 0
	stfs 29,8(28)
	.loc 1 353 0
	lwz 29,12(1)
.LVL39:
	lwz 28,8(1)
.LVL40:
	lfd 28,40(1)
	lfd 29,48(1)
	lfd 30,56(1)
	lfd 31,64(1)
	addi 1,1,72
.LCFI8:
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
	blr
	.cfi_endproc
.LFE44:
	.size	AngleVectors, .-AngleVectors
	.align 2
	.globl VectorCompare
	.type	VectorCompare, @function
VectorCompare:
.LFB45:
	.loc 1 356 0
	.cfi_startproc
.LVL41:
	.loc 1 356 0
	li 9,0
.LVL42:
.L30:
	.loc 1 360 0
	lfsx 13,3,9
	.loc 1 359 0
	cmpwi 6,9,8
	.loc 1 360 0
	lfsx 0,4,9
	.loc 1 359 0
	addi 9,9,4
	.loc 1 360 0
	fcmpu 7,13,0
	bne- 7,.L31
	.loc 1 359 0
	bne+ 6,.L30
	.loc 1 363 0
	li 3,1
.LVL43:
	blr
.LVL44:
.L31:
	.loc 1 361 0
	li 3,0
.LVL45:
	.loc 1 364 0
	blr
	.cfi_endproc
.LFE45:
	.size	VectorCompare, .-VectorCompare
	.align 2
	.globl VectorMA
	.type	VectorMA, @function
VectorMA:
.LFB46:
	.loc 1 367 0
	.cfi_startproc
.LVL46:
	.loc 1 368 0
	lfs 13,0(4)
	.loc 1 371 0
	.loc 1 368 0
	lfs 0,0(3)
	fmadds 0,13,1,0
	stfs 0,0(5)
	.loc 1 369 0
	lfs 13,4(4)
	lfs 0,4(3)
	fmadds 0,13,1,0
	stfs 0,4(5)
	.loc 1 370 0
	lfs 13,8(4)
	lfs 0,8(3)
	fmadds 1,13,1,0
.LVL47:
	stfs 1,8(5)
	.loc 1 371 0
	blr
	.cfi_endproc
.LFE46:
	.size	VectorMA, .-VectorMA
	.align 2
	.globl _DotProduct
	.type	_DotProduct, @function
_DotProduct:
.LFB47:
	.loc 1 375 0
	.cfi_startproc
.LVL48:
	.loc 1 376 0
	lfs 0,4(4)
	.loc 1 377 0
	.loc 1 376 0
	lfs 13,4(3)
	lfs 12,0(3)
	fmuls 13,13,0
	lfs 0,0(4)
	lfs 1,8(3)
	fmadds 0,12,0,13
	lfs 13,8(4)
	.loc 1 377 0
	fmadds 1,1,13,0
	blr
	.cfi_endproc
.LFE47:
	.size	_DotProduct, .-_DotProduct
	.align 2
	.globl _VectorSubtract
	.type	_VectorSubtract, @function
_VectorSubtract:
.LFB48:
	.loc 1 380 0
	.cfi_startproc
.LVL49:
	.loc 1 381 0
	lfs 13,0(3)
	.loc 1 384 0
	.loc 1 381 0
	lfs 0,0(4)
	fsubs 0,13,0
	stfs 0,0(5)
	.loc 1 382 0
	lfs 13,4(3)
	lfs 0,4(4)
	fsubs 0,13,0
	stfs 0,4(5)
	.loc 1 383 0
	lfs 13,8(3)
	lfs 0,8(4)
	fsubs 0,13,0
	stfs 0,8(5)
	.loc 1 384 0
	blr
	.cfi_endproc
.LFE48:
	.size	_VectorSubtract, .-_VectorSubtract
	.align 2
	.globl _VectorAdd
	.type	_VectorAdd, @function
_VectorAdd:
.LFB49:
	.loc 1 387 0
	.cfi_startproc
.LVL50:
	.loc 1 388 0
	lfs 13,0(3)
	.loc 1 391 0
	.loc 1 388 0
	lfs 0,0(4)
	fadds 0,13,0
	stfs 0,0(5)
	.loc 1 389 0
	lfs 13,4(3)
	lfs 0,4(4)
	fadds 0,13,0
	stfs 0,4(5)
	.loc 1 390 0
	lfs 13,8(3)
	lfs 0,8(4)
	fadds 0,13,0
	stfs 0,8(5)
	.loc 1 391 0
	blr
	.cfi_endproc
.LFE49:
	.size	_VectorAdd, .-_VectorAdd
	.align 2
	.globl _VectorCopy
	.type	_VectorCopy, @function
_VectorCopy:
.LFB50:
	.loc 1 394 0
	.cfi_startproc
.LVL51:
	.loc 1 395 0
	lwz 0,0(3)
	.loc 1 398 0
	.loc 1 395 0
	stw 0,0(4)
	.loc 1 396 0
	lwz 0,4(3)
	stw 0,4(4)
	.loc 1 397 0
	lwz 0,8(3)
	stw 0,8(4)
	.loc 1 398 0
	blr
	.cfi_endproc
.LFE50:
	.size	_VectorCopy, .-_VectorCopy
	.align 2
	.globl CrossProduct
	.type	CrossProduct, @function
CrossProduct:
.LFB51:
	.loc 1 401 0
	.cfi_startproc
.LVL52:
	.loc 1 402 0
	lfs 0,4(4)
	.loc 1 405 0
	.loc 1 402 0
	lfs 13,8(3)
	lfs 12,4(3)
	fmuls 13,13,0
	lfs 0,8(4)
	fmsubs 0,12,0,13
	stfs 0,0(5)
	.loc 1 403 0
	lfs 0,8(4)
	lfs 13,0(3)
	lfs 12,8(3)
	fmuls 13,13,0
	lfs 0,0(4)
	fmsubs 0,12,0,13
	stfs 0,4(5)
	.loc 1 404 0
	lfs 0,0(4)
	lfs 13,4(3)
	lfs 12,0(3)
	fmuls 13,13,0
	lfs 0,4(4)
	fmsubs 0,12,0,13
	stfs 0,8(5)
	.loc 1 405 0
	blr
	.cfi_endproc
.LFE51:
	.size	CrossProduct, .-CrossProduct
	.align 2
	.globl Length
	.type	Length, @function
Length:
.LFB52:
	.loc 1 410 0
	.cfi_startproc
.LVL53:
	.loc 1 416 0
	lis 9,.LC7@ha
	lfs 0,0(3)
	lfs 13,.LC7@l(9)
	.loc 1 410 0
	mflr 0
	.loc 1 416 0
	lfs 1,8(3)
	fmadds 13,0,0,13
.LVL54:
	lfs 0,4(3)
	.loc 1 410 0
	stwu 1,-8(1)
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 416 0
	fmadds 0,0,0,13
.LVL55:
	.loc 1 410 0
	stw 0,12(1)
	.loc 1 416 0
	fmadds 1,1,1,0
	.loc 1 417 0
	.cfi_offset 65, 4
	bl sqrt
.LVL56:
	.loc 1 420 0
	lwz 0,12(1)
	frsp 1,1
.LVL57:
	mtlr 0
	addi 1,1,8
.LCFI10:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE52:
	.size	Length, .-Length
	.align 2
	.globl VectorNormalize
	.type	VectorNormalize, @function
VectorNormalize:
.LFB53:
	.loc 1 423 0
	.cfi_startproc
.LVL58:
	.loc 1 426 0
	lfs 1,4(3)
	.loc 1 423 0
	mflr 0
	.loc 1 426 0
	lfs 0,0(3)
	fmuls 13,1,1
	lfs 1,8(3)
.LVL59:
	.loc 1 423 0
	stwu 1,-16(1)
.LCFI11:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	.loc 1 426 0
	fmadds 0,0,0,13
	.loc 1 423 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 423 0
	mr 31,3
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	.loc 1 426 0
	fmadds 1,1,1,0
	.loc 1 427 0
	bl sqrt
.LVL60:
	.loc 1 429 0
	lis 9,.LC7@ha
	.loc 1 427 0
	frsp 1,1
.LVL61:
	.loc 1 429 0
	lfs 0,.LC7@l(9)
	fcmpu 7,1,0
	beq- 7,.L41
	.loc 1 431 0
	lis 9,.LC0@ha
	.loc 1 432 0
	lfs 12,0(31)
	.loc 1 431 0
	lfs 0,.LC0@l(9)
	.loc 1 433 0
	lfs 13,4(31)
	.loc 1 431 0
	fdivs 0,0,1
.LVL62:
	.loc 1 434 0
	lfs 11,8(31)
	.loc 1 432 0
	fmuls 12,12,0
	.loc 1 433 0
	fmuls 13,13,0
	.loc 1 434 0
	fmuls 0,11,0
.LVL63:
	.loc 1 432 0
	stfs 12,0(31)
	.loc 1 433 0
	stfs 13,4(31)
	.loc 1 434 0
	stfs 0,8(31)
.LVL64:
.L41:
	.loc 1 439 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL65:
	mtlr 0
	addi 1,1,16
.LCFI12:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE53:
	.size	VectorNormalize, .-VectorNormalize
	.align 2
	.globl PerpendicularVector
	.type	PerpendicularVector, @function
PerpendicularVector:
.LFB39:
	.loc 1 78 0
	.cfi_startproc
.LVL66:
	.loc 1 82 0
	lis 9,.LC7@ha
	lfs 13,0(4)
	lfs 0,.LC7@l(9)
	.loc 1 78 0
	mr 9,3
	.loc 1 82 0
	fcmpu 7,13,0
	beq- 7,.L43
	.loc 1 84 0
	stfs 0,0(3)
	.loc 1 85 0
	lfs 13,4(4)
	fcmpu 7,13,0
	beq- 7,.L44
	.loc 1 87 0
	stfs 0,4(3)
	.loc 1 88 0
	lfs 13,8(4)
	fcmpu 7,13,0
	beq- 7,.L45
	.loc 1 90 0
	stfs 0,8(3)
.LVL67:
	.loc 1 95 0
	li 11,1
	.loc 1 92 0
	lfs 13,0(4)
	.loc 1 93 0
	lfs 0,4(4)
	.loc 1 92 0
	fabs 13,13
.LVL68:
	.loc 1 93 0
	fabs 0,0
	fcmpu 7,0,13
	blt- 7,.L46
	.loc 1 92 0
	fmr 0,13
	.loc 1 91 0
	li 11,0
.L46:
.LVL69:
	.loc 1 98 0
	lfs 13,8(4)
	li 0,8
	fabs 13,13
	fcmpu 7,13,0
	blt+ 7,.L47
	slwi 0,11,2
.L47:
.LVL70:
	.loc 1 101 0
	lis 11,.LC0@ha
	.loc 1 106 0
	mr 3,9
.LVL71:
	.loc 1 101 0
	lwz 11,.LC0@l(11)
	stwx 11,9,0
	.loc 1 77 0
	lfsx 0,4,0
.LVL72:
	.loc 1 102 0
	lfs 11,0(4)
	.loc 1 77 0
	fneg 0,0
	.loc 1 102 0
	lfs 13,0(9)
	.loc 1 103 0
	lfs 12,4(9)
	.loc 1 102 0
	fmadds 0,0,11,13
	.loc 1 104 0
	lfs 13,8(9)
	.loc 1 102 0
	stfs 0,0(9)
	.loc 1 77 0
	lfsx 0,4,0
	.loc 1 103 0
	lfs 11,4(4)
	.loc 1 77 0
	fneg 0,0
	.loc 1 103 0
	fmadds 0,0,11,12
	stfs 0,4(9)
	.loc 1 77 0
	lfsx 0,4,0
	.loc 1 104 0
	lfs 12,8(4)
	.loc 1 77 0
	fneg 0,0
	.loc 1 104 0
	fmadds 0,0,12,13
	stfs 0,8(9)
	.loc 1 123 0
	.loc 1 106 0
	b VectorNormalize
.LVL73:
.L43:
	.loc 1 119 0
	lis 11,.LC0@ha
	.loc 1 120 0
	stfs 0,4(3)
	.loc 1 119 0
	lwz 0,.LC0@l(11)
	.loc 1 121 0
	stfs 0,8(3)
	.loc 1 119 0
	stw 0,0(3)
	blr
.L44:
	.loc 1 113 0
	lis 11,.LC0@ha
	.loc 1 114 0
	stfs 0,8(3)
	.loc 1 113 0
	lwz 0,.LC0@l(11)
	stw 0,4(3)
	blr
.L45:
	.loc 1 109 0
	lis 11,.LC0@ha
	lwz 0,.LC0@l(11)
	stw 0,8(3)
	blr
	.cfi_endproc
.LFE39:
	.size	PerpendicularVector, .-PerpendicularVector
	.align 2
	.globl VectorInverse
	.type	VectorInverse, @function
VectorInverse:
.LFB54:
	.loc 1 442 0
	.cfi_startproc
.LVL74:
	.loc 1 443 0
	lfs 12,0(3)
	.loc 1 446 0
	.loc 1 444 0
	lfs 13,4(3)
	.loc 1 445 0
	lfs 0,8(3)
	.loc 1 443 0
	fneg 12,12
	.loc 1 444 0
	fneg 13,13
	.loc 1 445 0
	fneg 0,0
	.loc 1 443 0
	stfs 12,0(3)
	.loc 1 444 0
	stfs 13,4(3)
	.loc 1 445 0
	stfs 0,8(3)
	.loc 1 446 0
	blr
	.cfi_endproc
.LFE54:
	.size	VectorInverse, .-VectorInverse
	.align 2
	.globl VectorScale
	.type	VectorScale, @function
VectorScale:
.LFB55:
	.loc 1 449 0
	.cfi_startproc
.LVL75:
	.loc 1 450 0
	lfs 0,0(3)
	.loc 1 453 0
	.loc 1 450 0
	fmuls 0,0,1
	stfs 0,0(4)
	.loc 1 451 0
	lfs 0,4(3)
	fmuls 0,0,1
	stfs 0,4(4)
	.loc 1 452 0
	lfs 0,8(3)
	fmuls 1,0,1
.LVL76:
	stfs 1,8(4)
	.loc 1 453 0
	blr
	.cfi_endproc
.LFE55:
	.size	VectorScale, .-VectorScale
	.align 2
	.globl Q_log2
	.type	Q_log2, @function
Q_log2:
.LFB56:
	.loc 1 457 0
	.cfi_startproc
.LVL77:
	.loc 1 459 0
	srawi. 0,3,1
	.loc 1 458 0
	li 3,0
.LVL78:
	.loc 1 459 0
	beqlr- 0
.LVL79:
.L55:
	srawi. 0,0,1
	.loc 1 460 0
	addi 3,3,1
.LVL80:
	.loc 1 459 0
	bne+ 0,.L55
	.loc 1 462 0
	blr
	.cfi_endproc
.LFE56:
	.size	Q_log2, .-Q_log2
	.align 2
	.globl R_ConcatRotations
	.type	R_ConcatRotations, @function
R_ConcatRotations:
.LFB57:
	.loc 1 471 0
	.cfi_startproc
.LVL81:
	.loc 1 472 0
	lfs 12,4(3)
	lfs 11,12(4)
	lfs 10,0(3)
	fmuls 11,12,11
	lfs 13,0(4)
	.loc 1 473 0
	lfs 0,8(3)
	.loc 1 472 0
	fmadds 13,10,13,11
	lfs 11,24(4)
	fmadds 13,0,11,13
	stfs 13,0(5)
	.loc 1 474 0
	lfs 11,16(4)
	lfs 13,0(3)
	fmuls 12,12,11
	lfs 10,4(4)
	lfs 11,28(4)
	fmadds 12,13,10,12
	fmadds 12,0,11,12
	stfs 12,4(5)
	.loc 1 476 0
	lfs 12,20(4)
	lfs 11,4(3)
	lfs 10,8(4)
	fmuls 11,11,12
	lfs 12,32(4)
	fmadds 13,13,10,11
	fmadds 0,0,12,13
	stfs 0,8(5)
	.loc 1 478 0
	lfs 12,16(3)
	lfs 11,12(4)
	lfs 10,12(3)
	fmuls 11,12,11
	lfs 13,0(4)
	.loc 1 479 0
	lfs 0,20(3)
	.loc 1 478 0
	fmadds 13,10,13,11
	lfs 11,24(4)
	fmadds 13,0,11,13
	stfs 13,12(5)
	.loc 1 480 0
	lfs 11,16(4)
	lfs 13,12(3)
	fmuls 12,12,11
	lfs 10,4(4)
	lfs 11,28(4)
	fmadds 12,13,10,12
	fmadds 12,0,11,12
	stfs 12,16(5)
	.loc 1 482 0
	lfs 12,20(4)
	lfs 11,16(3)
	lfs 10,8(4)
	fmuls 11,11,12
	lfs 12,32(4)
	fmadds 13,13,10,11
	fmadds 0,0,12,13
	stfs 0,20(5)
	.loc 1 490 0
	.loc 1 484 0
	lfs 12,28(3)
	lfs 11,12(4)
	lfs 10,24(3)
	fmuls 11,12,11
	lfs 13,0(4)
	.loc 1 485 0
	lfs 0,32(3)
	.loc 1 484 0
	fmadds 13,10,13,11
	lfs 11,24(4)
	fmadds 13,0,11,13
	stfs 13,24(5)
	.loc 1 486 0
	lfs 11,16(4)
	lfs 13,24(3)
	fmuls 12,12,11
	lfs 10,4(4)
	lfs 11,28(4)
	fmadds 12,13,10,12
	fmadds 12,0,11,12
	stfs 12,28(5)
	.loc 1 488 0
	lfs 12,20(4)
	lfs 11,28(3)
	lfs 10,8(4)
	fmuls 11,11,12
	lfs 12,32(4)
	fmadds 13,13,10,11
	fmadds 0,0,12,13
	stfs 0,32(5)
	.loc 1 490 0
	blr
	.cfi_endproc
.LFE57:
	.size	R_ConcatRotations, .-R_ConcatRotations
	.align 2
	.globl RotatePointAroundVector
	.type	RotatePointAroundVector, @function
RotatePointAroundVector:
.LFB40:
	.loc 1 131 0
	.cfi_startproc
.LVL82:
	mflr 0
	stwu 1,-280(1)
.LCFI13:
	.cfi_def_cfa_offset 280
	.cfi_register 65, 0
	stw 24,232(1)
	mr 24,3
	.cfi_offset 24, -48
	stw 0,284(1)
	.loc 1 144 0
	addi 3,1,32
.LVL83:
	.loc 1 131 0
	stfd 30,264(1)
	fmr 30,1
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	.loc 1 140 0
	lwz 10,0(4)
	.loc 1 130 0
	addi 24,24,-4
.LVL84:
	.loc 1 141 0
	lwz 11,4(4)
	.loc 1 142 0
	lwz 0,8(4)
	.loc 1 140 0
	stw 10,8(1)
	.loc 1 141 0
	stw 11,12(1)
	.loc 1 142 0
	stw 0,16(1)
	.loc 1 131 0
	stfd 31,272(1)
	stw 25,236(1)
	stw 26,240(1)
	stw 27,244(1)
	stw 28,248(1)
	stw 29,252(1)
	stw 30,256(1)
	stw 31,260(1)
	.loc 1 131 0
	mr 31,5
	.cfi_offset 31, -20
	.cfi_offset 30, -24
	.cfi_offset 29, -28
	.cfi_offset 28, -32
	.cfi_offset 27, -36
	.cfi_offset 26, -40
	.cfi_offset 25, -44
	.cfi_offset 63, -8
	.loc 1 144 0
	bl PerpendicularVector
.LVL85:
	.loc 1 145 0
	addi 3,1,32
	addi 4,1,8
	addi 5,1,20
	bl CrossProduct
	.loc 1 147 0
	lwz 0,32(1)
	.loc 1 156 0
	lwz 30,12(1)
	.loc 1 159 0
	addi 4,1,188
	.loc 1 147 0
	stw 0,188(1)
	.loc 1 159 0
	li 5,36
	.loc 1 152 0
	lwz 0,24(1)
	.loc 1 159 0
	addi 3,1,152
	.loc 1 148 0
	lwz 25,36(1)
	.loc 1 149 0
	lwz 26,40(1)
	.loc 1 151 0
	lwz 27,20(1)
	.loc 1 153 0
	lwz 28,28(1)
	.loc 1 155 0
	lwz 29,8(1)
	.loc 1 152 0
	stw 0,204(1)
	.loc 1 157 0
	lwz 0,16(1)
	.loc 1 156 0
	stw 30,208(1)
	.loc 1 157 0
	stw 0,220(1)
	.loc 1 148 0
	stw 25,200(1)
	.loc 1 149 0
	stw 26,212(1)
	.loc 1 151 0
	stw 27,192(1)
	.loc 1 153 0
	stw 28,216(1)
	.loc 1 155 0
	stw 29,196(1)
	.loc 1 159 0
	bl memcpy
	.loc 1 168 0
	li 4,0
	li 5,36
	addi 3,1,116
	.loc 1 166 0
	stw 30,180(1)
	.loc 1 161 0
	stw 25,156(1)
	.loc 1 176 0
	addi 30,1,80
	.loc 1 162 0
	stw 26,160(1)
	.loc 1 163 0
	stw 27,164(1)
	.loc 1 164 0
	stw 28,172(1)
	.loc 1 165 0
	stw 29,176(1)
	.loc 1 168 0
	bl memset
	.loc 1 171 0
	lis 9,.LC9@ha
	lfd 0,.LC9@l(9)
	lis 9,.LC11@ha
	fmul 30,30,0
.LVL86:
	lfs 0,.LC11@l(9)
	.loc 1 169 0
	lis 9,.LC0@ha
	lwz 0,.LC0@l(9)
	.loc 1 171 0
	fdiv 30,30,0
	.loc 1 169 0
	stw 0,148(1)
	.loc 1 171 0
	fmr 1,30
	bl cos
	frsp 31,1
	.loc 1 172 0
	fmr 1,30
	.loc 1 171 0
	stfs 31,116(1)
	.loc 1 172 0
	bl sin
	.loc 1 176 0
	addi 3,1,188
	.loc 1 172 0
	frsp 1,1
	.loc 1 176 0
	addi 4,1,116
	mr 5,30
	.loc 1 174 0
	stfs 31,132(1)
	.loc 1 173 0
	fneg 0,1
	.loc 1 172 0
	stfs 1,120(1)
	.loc 1 173 0
	stfs 0,128(1)
	.loc 1 176 0
	bl R_ConcatRotations
	.loc 1 177 0
	mr 3,30
	addi 4,1,152
	addi 5,1,44
	bl R_ConcatRotations
.LVL87:
	addi 9,1,44
.LVL88:
.L60:
	.loc 1 181 0 discriminator 2
	lfs 0,4(31)
	lfs 11,4(9)
	lfs 13,0(9)
	fmuls 11,11,0
	lfs 0,0(31)
	lfs 12,8(9)
	addi 9,9,12
	.loc 1 179 0 discriminator 2
	cmpw 7,9,30
	.loc 1 181 0 discriminator 2
	fmadds 13,13,0,11
	lfs 0,8(31)
	fmadds 0,12,0,13
	stfsu 0,4(24)
	.loc 1 179 0 discriminator 2
	bne+ 7,.L60
	.loc 1 183 0
	lwz 0,284(1)
	lwz 24,232(1)
	mtlr 0
	lwz 25,236(1)
	lwz 26,240(1)
	lwz 27,244(1)
	lwz 28,248(1)
	lwz 29,252(1)
	lwz 30,256(1)
	lwz 31,260(1)
.LVL89:
	lfd 30,264(1)
	lfd 31,272(1)
	addi 1,1,280
.LCFI14:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
	.cfi_endproc
.LFE40:
	.size	RotatePointAroundVector, .-RotatePointAroundVector
	.align 2
	.globl R_ConcatTransforms
	.type	R_ConcatTransforms, @function
R_ConcatTransforms:
.LFB58:
	.loc 1 499 0
	.cfi_startproc
.LVL90:
	.loc 1 500 0
	lfs 12,4(3)
	lfs 11,16(4)
	lfs 10,0(3)
	fmuls 11,12,11
	lfs 0,0(4)
	.loc 1 501 0
	lfs 13,8(3)
	.loc 1 500 0
	fmadds 0,10,0,11
	lfs 11,32(4)
	fmadds 0,13,11,0
	stfs 0,0(5)
	.loc 1 502 0
	lfs 11,20(4)
	lfs 0,0(3)
	fmuls 12,12,11
	lfs 10,4(4)
	lfs 11,36(4)
	fmadds 12,0,10,12
	fmadds 12,13,11,12
	stfs 12,4(5)
	.loc 1 504 0
	lfs 12,4(3)
	lfs 11,24(4)
	lfs 9,8(4)
	fmuls 11,12,11
	lfs 10,40(4)
	fmadds 11,0,9,11
	fmadds 13,13,10,11
	stfs 13,8(5)
	.loc 1 506 0
	lfs 11,28(4)
	lfs 13,12(4)
	fmuls 12,12,11
	lfs 10,8(3)
	lfs 11,44(4)
	fmadds 12,0,13,12
	.loc 1 507 0
	lfs 13,12(3)
	.loc 1 506 0
	fmadds 0,10,11,12
	.loc 1 507 0
	fadds 0,0,13
	.loc 1 506 0
	stfs 0,12(5)
	.loc 1 508 0
	lfs 12,20(3)
	lfs 11,16(4)
	lfs 10,16(3)
	fmuls 11,12,11
	lfs 0,0(4)
	.loc 1 509 0
	lfs 13,24(3)
	.loc 1 508 0
	fmadds 0,10,0,11
	lfs 11,32(4)
	fmadds 0,13,11,0
	stfs 0,16(5)
	.loc 1 510 0
	lfs 11,20(4)
	lfs 0,16(3)
	fmuls 12,12,11
	lfs 10,4(4)
	lfs 11,36(4)
	fmadds 12,0,10,12
	fmadds 12,13,11,12
	stfs 12,20(5)
	.loc 1 512 0
	lfs 12,20(3)
	lfs 11,24(4)
	lfs 9,8(4)
	fmuls 11,12,11
	lfs 10,40(4)
	fmadds 11,0,9,11
	fmadds 13,13,10,11
	stfs 13,24(5)
	.loc 1 514 0
	lfs 11,28(4)
	lfs 13,12(4)
	fmuls 12,12,11
	lfs 10,24(3)
	lfs 11,44(4)
	fmadds 12,0,13,12
	.loc 1 515 0
	lfs 13,28(3)
	.loc 1 514 0
	fmadds 0,10,11,12
	.loc 1 515 0
	fadds 0,0,13
	.loc 1 514 0
	stfs 0,28(5)
	.loc 1 516 0
	lfs 12,36(3)
	lfs 11,16(4)
	lfs 10,32(3)
	fmuls 11,12,11
	lfs 0,0(4)
	.loc 1 517 0
	lfs 13,40(3)
	.loc 1 516 0
	fmadds 0,10,0,11
	lfs 11,32(4)
	fmadds 0,13,11,0
	stfs 0,32(5)
	.loc 1 518 0
	lfs 11,20(4)
	lfs 0,32(3)
	fmuls 12,12,11
	lfs 10,4(4)
	lfs 11,36(4)
	fmadds 12,0,10,12
	fmadds 12,13,11,12
	stfs 12,36(5)
	.loc 1 520 0
	lfs 12,36(3)
	lfs 11,24(4)
	lfs 9,8(4)
	fmuls 11,12,11
	lfs 10,40(4)
	fmadds 11,0,9,11
	fmadds 13,13,10,11
	stfs 13,40(5)
	.loc 1 522 0
	lfs 11,28(4)
	lfs 13,12(4)
	fmuls 12,12,11
	lfs 10,40(3)
	lfs 11,44(4)
	fmadds 12,0,13,12
	.loc 1 523 0
	lfs 13,44(3)
	.loc 1 522 0
	fmadds 0,10,11,12
	.loc 1 523 0
	fadds 0,0,13
	.loc 1 522 0
	stfs 0,44(5)
	.loc 1 524 0
	blr
	.cfi_endproc
.LFE58:
	.size	R_ConcatTransforms, .-R_ConcatTransforms
	.align 2
	.globl FloorDivMod
	.type	FloorDivMod, @function
FloorDivMod:
.LFB59:
	.loc 1 539 0
	.cfi_startproc
.LVL91:
	stwu 1,-64(1)
.LCFI15:
	.cfi_def_cfa_offset 64
	mflr 0
	stw 31,44(1)
	.loc 1 544 0
	lis 31,.LC12@ha
	.cfi_offset 31, -20
	.cfi_register 65, 0
	lfd 0,.LC12@l(31)
	.loc 1 539 0
	stfd 30,48(1)
	fmr 30,1
	.cfi_offset 62, -16
	.loc 1 544 0
	fcmpu 7,2,0
	.loc 1 539 0
	stfd 31,56(1)
	stw 29,36(1)
	fmr 31,2
	.cfi_offset 29, -28
	.cfi_offset 63, -8
	.loc 1 544 0
	cror 30,28,30
	.loc 1 539 0
	stw 30,40(1)
	stw 0,68(1)
	.loc 1 539 0
	mr 30,3
	.cfi_offset 65, 4
	.cfi_offset 30, -24
	mr 29,4
	.loc 1 544 0
	beq- 7,.L72
.LVL92:
.L64:
	.loc 1 552 0
	lfd 0,.LC12@l(31)
	fcmpu 7,30,0
	cror 30,29,30
	beq- 7,.L73
	.loc 1 564 0
	fneg 30,30
.LVL93:
	fdiv 1,30,31
	bl floor
.LVL94:
	.loc 1 565 0
	addi 9,1,12
	fctiwz 0,1
	.loc 1 537 0
	fneg 1,1
.LVL95:
	.loc 1 565 0
	stfiwx 0,0,9
	.loc 1 566 0
	fmadd 1,1,31,30
	.loc 1 565 0
	lwz 31,12(1)
	.loc 1 566 0
	bl floor
	addi 9,1,16
	fctiwz 1,1
	.loc 1 565 0
	neg 31,31
.LVL96:
	.loc 1 566 0
	stfiwx 1,0,9
	lwz 0,16(1)
.LVL97:
	.loc 1 567 0
	cmpwi 7,0,0
	beq- 7,.L68
	.loc 1 570 0
	fctiwz 31,31
.LVL98:
	addi 9,1,8
.LVL99:
	.loc 1 569 0
	addi 31,31,-1
.LVL100:
	.loc 1 570 0
	stfiwx 31,0,9
	lwz 9,8(1)
	subf 0,0,9
.LVL101:
.L68:
	.loc 1 574 0
	stw 31,0(30)
	.loc 1 575 0
	stw 0,0(29)
	.loc 1 576 0
	lwz 0,68(1)
.LVL102:
	lwz 29,36(1)
.LVL103:
	mtlr 0
	lwz 30,40(1)
.LVL104:
	lwz 31,44(1)
.LVL105:
	lfd 30,48(1)
	lfd 31,56(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI16:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL106:
.L73:
.LCFI17:
	.cfi_restore_state
	.loc 1 555 0
	fdiv 1,30,31
	bl floor
.LVL107:
	.loc 1 556 0
	addi 9,1,20
	.loc 1 537 0
	fneg 13,1
	.loc 1 556 0
	fctiwz 0,1
	.loc 1 557 0
	fmadd 1,13,31,30
.LVL108:
	.loc 1 556 0
	stfiwx 0,0,9
	.loc 1 557 0
	bl floor
	addi 9,1,24
	fctiwz 1,1
	.loc 1 556 0
	lwz 31,20(1)
.LVL109:
	.loc 1 557 0
	stfiwx 1,0,9
	lwz 0,24(1)
.LVL110:
	.loc 1 574 0
	stw 31,0(30)
	.loc 1 575 0
	stw 0,0(29)
	.loc 1 576 0
	lwz 0,68(1)
	lwz 29,36(1)
.LVL111:
	mtlr 0
	lwz 30,40(1)
.LVL112:
	lwz 31,44(1)
.LVL113:
	lfd 30,48(1)
.LVL114:
	lfd 31,56(1)
.LVL115:
	addi 1,1,64
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI18:
	.cfi_def_cfa_offset 0
	blr
.LVL116:
.L72:
.LCFI19:
	.cfi_restore_state
	.loc 1 545 0
	fmr 1,2
.LVL117:
	lis 3,.LC13@ha
.LVL118:
	la 3,.LC13@l(3)
	creqv 6,6,6
	bl Sys_Error
.LVL119:
	b .L64
	.cfi_endproc
.LFE59:
	.size	FloorDivMod, .-FloorDivMod
	.align 2
	.globl GreatestCommonDivisor
	.type	GreatestCommonDivisor, @function
GreatestCommonDivisor:
.LFB60:
	.loc 1 585 0
	.cfi_startproc
.L80:
	.loc 1 586 0
	cmpw 7,3,4
	.loc 1 588 0
	cmpwi 1,4,0
	.loc 1 594 0
	cmpwi 6,3,0
	.loc 1 586 0
	ble- 7,.L76
.L81:
	.loc 1 588 0
	beqlr- 1
	.loc 1 590 0
	divw 0,3,4
	mullw 0,0,4
	subf 0,0,3
	mr 3,4
	mr 4,0
	.loc 1 594 0
	cmpwi 6,3,0
	.loc 1 586 0
	cmpw 7,3,4
	.loc 1 588 0
	cmpwi 1,4,0
	.loc 1 586 0
	bgt- 7,.L81
.L76:
	.loc 1 594 0
	beq- 6,.L79
	.loc 1 596 0
	divw 0,4,3
	mullw 0,0,3
	subf 4,0,4
	b .L80
.L79:
	.loc 1 594 0
	mr 3,4
	.loc 1 598 0
	blr
	.cfi_endproc
.LFE60:
	.size	GreatestCommonDivisor, .-GreatestCommonDivisor
	.align 2
	.globl Invert24To16
	.type	Invert24To16, @function
Invert24To16:
.LFB61:
	.loc 1 614 0
	.cfi_startproc
.LVL120:
	.loc 1 615 0
	cmpwi 7,3,255
	.loc 1 614 0
	stwu 1,-24(1)
.LCFI20:
	.cfi_def_cfa_offset 24
	.loc 1 616 0
	li 0,-1
	.loc 1 615 0
	ble- 7,.L83
	.loc 1 619 0
	lis 0,0x4330
	xoris 3,3,0x8000
.LVL121:
	stw 0,8(1)
	lis 9,.LC3@ha
	stw 3,12(1)
	lfs 0,.LC3@l(9)
	lis 9,.LC15@ha
	lfd 13,8(1)
	fsub 0,13,0
	lfs 13,.LC15@l(9)
	lis 9,.LC17@ha
	fdiv 0,13,0
	lfs 13,.LC17@l(9)
	.loc 1 618 0
	addi 9,1,16
	.loc 1 619 0
	fadd 0,0,13
	.loc 1 618 0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,16(1)
.LVL122:
.L83:
	.loc 1 620 0
	mr 3,0
	addi 1,1,24
.LCFI21:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE61:
	.size	Invert24To16, .-Invert24To16
	.align 2
	.globl Mat_Mul_1x4_4x4
	.type	Mat_Mul_1x4_4x4, @function
Mat_Mul_1x4_4x4:
.LFB62:
	.loc 1 627 0
	.cfi_startproc
.LVL123:
	.loc 1 627 0
	li 10,0
.LVL124:
.L86:
	.loc 1 627 0 is_stmt 0 discriminator 1
	lis 11,.LC7@ha
	li 0,4
	lfs 0,.LC7@l(11)
	mtctr 0
	li 9,0
	add 8,4,10
.LVL125:
.L87:
	.loc 1 624 0 is_stmt 1 discriminator 2
	slwi 11,9,2
	.loc 1 646 0 discriminator 2
	lfsx 12,3,9
	lfsx 13,8,11
	addi 9,9,4
	fmadds 0,12,13,0
.LVL126:
	.loc 1 645 0 discriminator 2
	bdnz .L87
	.loc 1 637 0
	cmpwi 7,10,12
	.loc 1 650 0
	stfsx 0,5,10
	.loc 1 637 0
	addi 10,10,4
	bne+ 7,.L86
	blr
	.cfi_endproc
.LFE62:
	.size	Mat_Mul_1x4_4x4, .-Mat_Mul_1x4_4x4
	.align 2
	.globl MatrixAffineInverse
	.type	MatrixAffineInverse, @function
MatrixAffineInverse:
.LFB63:
	.loc 1 663 0
	.cfi_startproc
.LVL127:
	.loc 1 668 0
	lwz 0,0(3)
	stw 0,0(4)
	.loc 1 669 0
	lwz 0,4(3)
	stw 0,16(4)
	.loc 1 684 0
	li 0,0
	.loc 1 670 0
	lwz 9,8(3)
	stw 9,32(4)
	.loc 1 672 0
	lwz 9,16(3)
	stw 9,4(4)
	.loc 1 673 0
	lwz 9,20(3)
	stw 9,20(4)
	.loc 1 674 0
	lwz 9,24(3)
	stw 9,36(4)
	.loc 1 676 0
	lwz 9,32(3)
	stw 9,8(4)
	.loc 1 677 0
	lwz 9,36(3)
	stw 9,24(4)
	.loc 1 678 0
	lwz 9,40(3)
	.loc 1 684 0
	stw 0,44(4)
	.loc 1 678 0
	stw 9,40(4)
	.loc 1 685 0
	lis 9,.LC0@ha
	.loc 1 684 0
	stw 0,28(4)
	stw 0,12(4)
	.loc 1 685 0
	lwz 0,.LC0@l(9)
	stw 0,60(4)
	.loc 1 689 0
	lfs 12,52(3)
	.loc 1 693 0
	lfs 11,4(3)
	.loc 1 688 0
	lfs 13,48(3)
.LVL128:
	.loc 1 693 0
	fmuls 11,12,11
	lfs 10,0(3)
	.loc 1 690 0
	lfs 0,56(3)
.LVL129:
	.loc 1 693 0
	fmadds 11,10,13,11
	lfs 10,8(3)
	fnmadds 11,10,0,11
	stfs 11,48(4)
	.loc 1 694 0
	lfs 11,20(3)
	lfs 9,16(3)
	fmuls 11,12,11
	lfs 10,24(3)
	fmadds 11,9,13,11
	fnmadds 11,10,0,11
	stfs 11,52(4)
	.loc 1 696 0
	.loc 1 695 0
	lfs 11,36(3)
	lfs 10,32(3)
	fmuls 12,12,11
	lfs 11,40(3)
	fmadds 13,10,13,12
	fnmadds 0,11,0,13
	stfs 0,56(4)
	.loc 1 696 0
	blr
	.cfi_endproc
.LFE63:
	.size	MatrixAffineInverse, .-MatrixAffineInverse
	.globl nanmask
	.globl vec3_origin
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1065353216
.LC3:
	.4byte	1501560836
.LC5:
	.4byte	1001652224
.LC7:
	.4byte	0
.LC11:
	.4byte	1127481344
.LC15:
	.4byte	1400897536
.LC17:
	.4byte	1056964608
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC1:
	.4byte	1080476012
	.4byte	381774871
.LC8:
	.4byte	1066524486
	.4byte	-1571644103
.LC9:
	.4byte	1074340347
	.4byte	1413754136
.LC12:
	.4byte	0
	.4byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC6:
	.string	"BoxOnPlaneSide:  Bad signbits"
	.zero	2
.LC13:
	.string	"FloorDivMod: bad denominator %d\n"
	.section	.sdata,"aw",@progbits
	.align 2
	.type	nanmask, @object
	.size	nanmask, 4
nanmask:
	.long	2139095040
	.section	".bss"
	.align 2
	.type	vec3_origin, @object
	.size	vec3_origin, 12
vec3_origin:
	.zero	12
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 5 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe33
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x1
	.4byte	.LASF132
	.4byte	.LASF133
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
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
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x72
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xa2
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0x87
	.uleb128 0x7
	.4byte	0x72
	.4byte	0xbf
	.uleb128 0x8
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	0x41
	.4byte	0xcf
	.uleb128 0x8
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x64
	.4byte	0xdf
	.uleb128 0x8
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	0x48
	.4byte	0xef
	.uleb128 0x8
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x33
	.4byte	0xff
	.uleb128 0x8
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x72
	.4byte	0x115
	.uleb128 0x8
	.4byte	0x48
	.byte	0x1
	.uleb128 0x8
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	0x87
	.4byte	0x125
	.uleb128 0x8
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x16
	.4byte	0x72
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x17
	.4byte	0x13b
	.uleb128 0x7
	.4byte	0x125
	.4byte	0x14b
	.uleb128 0x8
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x1c
	.4byte	0x41
	.uleb128 0x7
	.4byte	0x72
	.4byte	0x166
	.uleb128 0x8
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x14
	.byte	0x4
	.byte	0x52
	.4byte	0x1b9
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.byte	0x54
	.4byte	0x130
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.byte	0x55
	.4byte	0x72
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.byte	0x56
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.byte	0x57
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xb
	.string	"pad"
	.byte	0x4
	.byte	0x58
	.4byte	0x1b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x7
	.4byte	0x87
	.4byte	0x1c9
	.uleb128 0x8
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x59
	.4byte	0x166
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x48
	.byte	0x4
	.byte	0x5b
	.4byte	0x289
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.byte	0x5d
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.byte	0x61
	.4byte	0x3ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.byte	0x64
	.4byte	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0x65
	.4byte	0x3b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.byte	0x66
	.4byte	0xdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x5c
	.byte	0x4
	.byte	0x96
	.4byte	0x3ae
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x9a
	.4byte	0x49d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0xa0
	.4byte	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.byte	0xa1
	.4byte	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x4
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x4
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x4
	.byte	0xa5
	.4byte	0x4a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.byte	0xa6
	.4byte	0x3ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x4
	.byte	0xa7
	.4byte	0x3ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x4
	.byte	0xa9
	.4byte	0x4a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x4
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x4
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x4
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x4
	.byte	0xb0
	.4byte	0x115
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x4
	.byte	0xb1
	.4byte	0xbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x4
	.byte	0xb2
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x4
	.byte	0xb3
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x289
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x4
	.byte	0x67
	.4byte	0x1d4
	.uleb128 0xc
	.byte	0x2c
	.byte	0x4
	.byte	0x7e
	.4byte	0x406
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x4
	.byte	0x80
	.4byte	0xff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x4
	.byte	0x81
	.4byte	0x72
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x4
	.byte	0x82
	.4byte	0x406
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3ba
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x4
	.byte	0x84
	.4byte	0x3c5
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x1c
	.byte	0x4
	.byte	0x8a
	.4byte	0x486
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x4
	.byte	0x8c
	.4byte	0x486
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x4
	.byte	0x8d
	.4byte	0x486
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x4
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x4
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x4
	.byte	0x92
	.4byte	0x48c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x4
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x417
	.uleb128 0x6
	.byte	0x4
	.4byte	0x486
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x4
	.byte	0x94
	.4byte	0x417
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x492
	.uleb128 0x6
	.byte	0x4
	.4byte	0x40c
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x4
	.byte	0xb4
	.4byte	0x289
	.uleb128 0x6
	.byte	0x4
	.4byte	0x4af
	.uleb128 0x6
	.byte	0x4
	.4byte	0x72
	.uleb128 0x6
	.byte	0x4
	.4byte	0x41
	.uleb128 0xd
	.4byte	.LASF134
	.byte	0x4
	.byte	0x5
	.2byte	0x490
	.4byte	0x52c
	.uleb128 0xe
	.string	"U8"
	.byte	0x5
	.2byte	0x492
	.4byte	0x52c
	.uleb128 0xe
	.string	"S8"
	.byte	0x5
	.2byte	0x493
	.4byte	0x531
	.uleb128 0xe
	.string	"U16"
	.byte	0x5
	.2byte	0x494
	.4byte	0x536
	.uleb128 0xe
	.string	"S16"
	.byte	0x5
	.2byte	0x495
	.4byte	0x53b
	.uleb128 0xe
	.string	"U32"
	.byte	0x5
	.2byte	0x496
	.4byte	0x540
	.uleb128 0xe
	.string	"S32"
	.byte	0x5
	.2byte	0x497
	.4byte	0x545
	.uleb128 0xe
	.string	"F32"
	.byte	0x5
	.2byte	0x498
	.4byte	0x92
	.byte	0
	.uleb128 0x5
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x25
	.uleb128 0x5
	.4byte	0x3a
	.uleb128 0x5
	.4byte	0x33
	.uleb128 0x5
	.4byte	0x48
	.uleb128 0x5
	.4byte	0x41
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x499
	.4byte	0x4cc
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF81
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x5b9
	.uleb128 0x11
	.string	"dst"
	.byte	0x1
	.byte	0x20
	.4byte	0x5b9
	.byte	0x1
	.byte	0x53
	.uleb128 0x11
	.string	"p"
	.byte	0x1
	.byte	0x20
	.4byte	0x5bf
	.byte	0x1
	.byte	0x54
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x1
	.byte	0x20
	.4byte	0x5bf
	.byte	0x1
	.byte	0x55
	.uleb128 0x13
	.string	"d"
	.byte	0x1
	.byte	0x22
	.4byte	0x72
	.4byte	.LLST0
	.uleb128 0x14
	.string	"n"
	.byte	0x1
	.byte	0x23
	.4byte	0x130
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x1
	.byte	0x24
	.4byte	0x72
	.4byte	.LLST1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x125
	.uleb128 0x6
	.byte	0x4
	.4byte	0x5c5
	.uleb128 0x16
	.4byte	0x125
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF74
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.4byte	0x72
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST2
	.4byte	0x5f5
	.uleb128 0x18
	.string	"a"
	.byte	0x1
	.byte	0xc0
	.4byte	0x72
	.4byte	.LLST3
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF135
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST4
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF75
	.byte	0x1
	.byte	0xe2
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST5
	.4byte	0x680
	.uleb128 0x1a
	.4byte	.LASF76
	.byte	0x1
	.byte	0xe2
	.4byte	0x5b9
	.4byte	.LLST6
	.uleb128 0x1a
	.4byte	.LASF77
	.byte	0x1
	.byte	0xe2
	.4byte	0x5b9
	.4byte	.LLST7
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.byte	0xe2
	.4byte	0x49d
	.4byte	.LLST8
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x1
	.byte	0xe4
	.4byte	0x72
	.4byte	.LLST9
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x1
	.byte	0xe4
	.4byte	0x72
	.4byte	.LLST10
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1
	.byte	0xe5
	.4byte	0x41
	.4byte	.LLST11
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x149
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST12
	.4byte	0x743
	.uleb128 0x1c
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x149
	.4byte	0x5b9
	.4byte	.LLST13
	.uleb128 0x1c
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x149
	.4byte	0x5b9
	.4byte	.LLST14
	.uleb128 0x1c
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x149
	.4byte	0x5b9
	.4byte	.LLST15
	.uleb128 0x1d
	.string	"up"
	.byte	0x1
	.2byte	0x149
	.4byte	0x5b9
	.4byte	.LLST16
	.uleb128 0x1e
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x14b
	.4byte	0x72
	.4byte	.LLST17
	.uleb128 0x1f
	.string	"sr"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x72
	.4byte	.LLST18
	.uleb128 0x1f
	.string	"sp"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x72
	.4byte	.LLST19
	.uleb128 0x1f
	.string	"sy"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x72
	.4byte	.LLST20
	.uleb128 0x20
	.string	"cr"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x72
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x1f
	.string	"cp"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x72
	.4byte	.LLST21
	.uleb128 0x1f
	.string	"cy"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x72
	.4byte	.LLST22
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x163
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x78b
	.uleb128 0x1d
	.string	"v1"
	.byte	0x1
	.2byte	0x163
	.4byte	0x5b9
	.4byte	.LLST23
	.uleb128 0x22
	.string	"v2"
	.byte	0x1
	.2byte	0x163
	.4byte	0x5b9
	.byte	0x1
	.byte	0x54
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.2byte	0x165
	.4byte	0x41
	.4byte	.LLST24
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x16e
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x7df
	.uleb128 0x24
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x16e
	.4byte	0x5b9
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x16e
	.4byte	0x72
	.4byte	.LLST25
	.uleb128 0x24
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x16e
	.4byte	0x5b9
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x16e
	.4byte	0x5b9
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x176
	.byte	0x1
	.4byte	0x125
	.4byte	.LFB47
	.4byte	.LFE47
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x817
	.uleb128 0x22
	.string	"v1"
	.byte	0x1
	.2byte	0x176
	.4byte	0x5b9
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"v2"
	.byte	0x1
	.2byte	0x176
	.4byte	0x5b9
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x17b
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x85b
	.uleb128 0x24
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x17b
	.4byte	0x5b9
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x17b
	.4byte	0x5b9
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"out"
	.byte	0x1
	.2byte	0x17b
	.4byte	0x5b9
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x182
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x89f
	.uleb128 0x24
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x182
	.4byte	0x5b9
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x182
	.4byte	0x5b9
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"out"
	.byte	0x1
	.2byte	0x182
	.4byte	0x5b9
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x189
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x8d4
	.uleb128 0x22
	.string	"in"
	.byte	0x1
	.2byte	0x189
	.4byte	0x5b9
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"out"
	.byte	0x1
	.2byte	0x189
	.4byte	0x5b9
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x190
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x916
	.uleb128 0x22
	.string	"v1"
	.byte	0x1
	.2byte	0x190
	.4byte	0x5b9
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"v2"
	.byte	0x1
	.2byte	0x190
	.4byte	0x5b9
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x190
	.4byte	0x5b9
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x199
	.byte	0x1
	.4byte	0x125
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST26
	.4byte	0x961
	.uleb128 0x1d
	.string	"v"
	.byte	0x1
	.2byte	0x199
	.4byte	0x5b9
	.4byte	.LLST27
	.uleb128 0x1f
	.string	"i"
	.byte	0x1
	.2byte	0x19b
	.4byte	0x41
	.4byte	.LLST28
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x19c
	.4byte	0x72
	.4byte	.LLST29
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1a6
	.byte	0x1
	.4byte	0x72
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST30
	.4byte	0x9ae
	.uleb128 0x1d
	.string	"v"
	.byte	0x1
	.2byte	0x1a6
	.4byte	0x5b9
	.4byte	.LLST31
	.uleb128 0x1e
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x72
	.4byte	.LLST32
	.uleb128 0x1e
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1a8
	.4byte	0x72
	.4byte	.LLST33
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF103
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa03
	.uleb128 0x18
	.string	"dst"
	.byte	0x1
	.byte	0x4d
	.4byte	0x5b9
	.4byte	.LLST34
	.uleb128 0x18
	.string	"src"
	.byte	0x1
	.byte	0x4d
	.4byte	0x5bf
	.4byte	.LLST35
	.uleb128 0x13
	.string	"pos"
	.byte	0x1
	.byte	0x4f
	.4byte	0x41
	.4byte	.LLST36
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x1
	.byte	0x50
	.4byte	0x72
	.4byte	.LLST37
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1b9
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa29
	.uleb128 0x22
	.string	"v"
	.byte	0x1
	.2byte	0x1b9
	.4byte	0x5b9
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1c0
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xa6e
	.uleb128 0x22
	.string	"in"
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x5b9
	.byte	0x1
	.byte	0x53
	.uleb128 0x1c
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x125
	.4byte	.LLST38
	.uleb128 0x22
	.string	"out"
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x5b9
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x1c8
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB56
	.4byte	.LFE56
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xaac
	.uleb128 0x1d
	.string	"val"
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x41
	.4byte	.LLST39
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x41
	.4byte	.LLST40
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x1d6
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xaf0
	.uleb128 0x22
	.string	"in1"
	.byte	0x1
	.2byte	0x1d6
	.4byte	0xaf0
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"in2"
	.byte	0x1
	.2byte	0x1d6
	.4byte	0xaf0
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"out"
	.byte	0x1
	.2byte	0x1d6
	.4byte	0xaf0
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaf
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF110
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST41
	.4byte	0xbcc
	.uleb128 0x18
	.string	"dst"
	.byte	0x1
	.byte	0x82
	.4byte	0x5b9
	.4byte	.LLST42
	.uleb128 0x18
	.string	"dir"
	.byte	0x1
	.byte	0x82
	.4byte	0x5bf
	.4byte	.LLST43
	.uleb128 0x1a
	.4byte	.LASF111
	.byte	0x1
	.byte	0x82
	.4byte	0x5bf
	.4byte	.LLST44
	.uleb128 0x1a
	.4byte	.LASF112
	.byte	0x1
	.byte	0x82
	.4byte	0x72
	.4byte	.LLST45
	.uleb128 0x27
	.string	"m"
	.byte	0x1
	.byte	0x84
	.4byte	0xbcc
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x27
	.string	"im"
	.byte	0x1
	.byte	0x85
	.4byte	0xbcc
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x28
	.4byte	.LASF113
	.byte	0x1
	.byte	0x86
	.4byte	0xbcc
	.byte	0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x28
	.4byte	.LASF114
	.byte	0x1
	.byte	0x87
	.4byte	0xbcc
	.byte	0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x27
	.string	"rot"
	.byte	0x1
	.byte	0x88
	.4byte	0xbcc
	.byte	0x3
	.byte	0x91
	.sleb128 -236
	.uleb128 0x13
	.string	"i"
	.byte	0x1
	.byte	0x89
	.4byte	0x41
	.4byte	.LLST46
	.uleb128 0x27
	.string	"vr"
	.byte	0x1
	.byte	0x8a
	.4byte	0x130
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x27
	.string	"vup"
	.byte	0x1
	.byte	0x8a
	.4byte	0x130
	.byte	0x3
	.byte	0x91
	.sleb128 -260
	.uleb128 0x27
	.string	"vf"
	.byte	0x1
	.byte	0x8a
	.4byte	0x130
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.byte	0
	.uleb128 0x7
	.4byte	0x72
	.4byte	0xbe2
	.uleb128 0x8
	.4byte	0x48
	.byte	0x2
	.uleb128 0x8
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x1f2
	.byte	0x1
	.4byte	.LFB58
	.4byte	.LFE58
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xc26
	.uleb128 0x22
	.string	"in1"
	.byte	0x1
	.2byte	0x1f2
	.4byte	0xc26
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"in2"
	.byte	0x1
	.2byte	0x1f2
	.4byte	0xc26
	.byte	0x1
	.byte	0x54
	.uleb128 0x22
	.string	"out"
	.byte	0x1
	.2byte	0x1f2
	.4byte	0xc26
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x156
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x219
	.byte	0x1
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LLST47
	.4byte	0xcb1
	.uleb128 0x1c
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x219
	.4byte	0x6b
	.4byte	.LLST48
	.uleb128 0x1c
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x219
	.4byte	0x6b
	.4byte	.LLST49
	.uleb128 0x1c
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x219
	.4byte	0x4c6
	.4byte	.LLST50
	.uleb128 0x1d
	.string	"rem"
	.byte	0x1
	.2byte	0x21a
	.4byte	0x4c6
	.4byte	.LLST51
	.uleb128 0x1f
	.string	"q"
	.byte	0x1
	.2byte	0x21c
	.4byte	0x41
	.4byte	.LLST52
	.uleb128 0x1f
	.string	"r"
	.byte	0x1
	.2byte	0x21c
	.4byte	0x41
	.4byte	.LLST53
	.uleb128 0x1f
	.string	"x"
	.byte	0x1
	.2byte	0x21d
	.4byte	0x6b
	.4byte	.LLST54
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x248
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB60
	.4byte	.LFE60
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xce9
	.uleb128 0x22
	.string	"i1"
	.byte	0x1
	.2byte	0x248
	.4byte	0x41
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"i2"
	.byte	0x1
	.2byte	0x248
	.4byte	0x41
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x265
	.byte	0x1
	.4byte	0x14b
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST55
	.4byte	0xd18
	.uleb128 0x1d
	.string	"val"
	.byte	0x1
	.2byte	0x265
	.4byte	0x14b
	.4byte	.LLST56
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x270
	.byte	0x1
	.4byte	.LFB62
	.4byte	.LFE62
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xd88
	.uleb128 0x22
	.string	"a"
	.byte	0x1
	.2byte	0x270
	.4byte	0x4c0
	.byte	0x1
	.byte	0x53
	.uleb128 0x22
	.string	"b"
	.byte	0x1
	.2byte	0x271
	.4byte	0xc26
	.byte	0x1
	.byte	0x54
	.uleb128 0x24
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x272
	.4byte	0x4c0
	.byte	0x1
	.byte	0x55
	.uleb128 0x1e
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x276
	.4byte	0x41
	.4byte	.LLST57
	.uleb128 0x1e
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x277
	.4byte	0x41
	.4byte	.LLST58
	.uleb128 0x1f
	.string	"sum"
	.byte	0x1
	.2byte	0x279
	.4byte	0x72
	.4byte	.LLST59
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x296
	.byte	0x1
	.4byte	.LFB63
	.4byte	.LFE63
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0xde6
	.uleb128 0x22
	.string	"m"
	.byte	0x1
	.2byte	0x296
	.4byte	0xc26
	.byte	0x1
	.byte	0x53
	.uleb128 0x24
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x296
	.4byte	0xc26
	.byte	0x1
	.byte	0x54
	.uleb128 0x20
	.string	"Tx"
	.byte	0x1
	.2byte	0x298
	.4byte	0x72
	.byte	0x2
	.byte	0x73
	.sleb128 48
	.uleb128 0x20
	.string	"Ty"
	.byte	0x1
	.2byte	0x298
	.4byte	0x72
	.byte	0x2
	.byte	0x73
	.sleb128 52
	.uleb128 0x20
	.string	"Tz"
	.byte	0x1
	.2byte	0x298
	.4byte	0x72
	.byte	0x2
	.byte	0x73
	.sleb128 56
	.byte	0
	.uleb128 0x29
	.4byte	.LASF127
	.byte	0x1
	.byte	0x1b
	.4byte	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vec3_origin
	.uleb128 0x29
	.4byte	.LASF128
	.byte	0x1
	.byte	0x1c
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	nanmask
	.uleb128 0x2a
	.4byte	.LASF129
	.byte	0x6
	.2byte	0xc2c
	.4byte	0x4ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x2b
	.4byte	.LASF130
	.byte	0x5
	.2byte	0x548
	.4byte	0xe2b
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0xe30
	.uleb128 0x6
	.byte	0x4
	.4byte	0x54a
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
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB42-.Ltext0
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
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-1-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-1-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23-1-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL23-1-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL26-1-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB52-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL56-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL57-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB53-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL60-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60-1-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL61-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL73-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL73-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL73-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL73-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x31
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 280
	.4byte	.LCFI14-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL85-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL85-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL85-1-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL85-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL85-1-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LFB59-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL117-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL119-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL119-1-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL119-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL119-1-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LFB61-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 -2147483648
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL126-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF90:
	.string	"scale"
.LASF119:
	.string	"quotient"
.LASF68:
	.string	"neighbours"
.LASF21:
	.string	"type"
.LASF6:
	.string	"long long unsigned int"
.LASF40:
	.string	"plane"
.LASF86:
	.string	"angle"
.LASF56:
	.string	"cached_dlight"
.LASF118:
	.string	"denom"
.LASF29:
	.string	"gl_texturenum"
.LASF124:
	.string	"index_j"
.LASF64:
	.string	"next"
.LASF45:
	.string	"extents"
.LASF32:
	.string	"anim_total"
.LASF85:
	.string	"right"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF44:
	.string	"texturemins"
.LASF134:
	.string	"_wgpipe"
.LASF43:
	.string	"numedges"
.LASF12:
	.string	"long int"
.LASF115:
	.string	"R_ConcatTransforms"
.LASF63:
	.string	"glpoly_s"
.LASF70:
	.string	"glpoly_t"
.LASF116:
	.string	"FloorDivMod"
.LASF9:
	.string	"double"
.LASF50:
	.string	"texinfo"
.LASF48:
	.string	"polys"
.LASF24:
	.string	"mplane_s"
.LASF23:
	.string	"mplane_t"
.LASF95:
	.string	"_VectorAdd"
.LASF13:
	.string	"byte"
.LASF132:
	.string	"d:/Data/Nintendo/TenebraeGX/src/mathlib.c"
.LASF35:
	.string	"anim_next"
.LASF78:
	.string	"dist1"
.LASF79:
	.string	"dist2"
.LASF4:
	.string	"unsigned int"
.LASF61:
	.string	"texture"
.LASF39:
	.string	"visframe"
.LASF126:
	.string	"MatrixAffineInverse"
.LASF46:
	.string	"light_s"
.LASF47:
	.string	"light_t"
.LASF111:
	.string	"point"
.LASF7:
	.string	"long unsigned int"
.LASF26:
	.string	"name"
.LASF104:
	.string	"minelem"
.LASF60:
	.string	"mipadjust"
.LASF51:
	.string	"dlightframe"
.LASF3:
	.string	"short unsigned int"
.LASF93:
	.string	"_DotProduct"
.LASF128:
	.string	"nanmask"
.LASF96:
	.string	"_VectorCopy"
.LASF77:
	.string	"emaxs"
.LASF125:
	.string	"index_k"
.LASF98:
	.string	"cross"
.LASF49:
	.string	"shadowchain"
.LASF2:
	.string	"short int"
.LASF42:
	.string	"firstedge"
.LASF135:
	.string	"BOPS_Error"
.LASF84:
	.string	"forward"
.LASF22:
	.string	"signbits"
.LASF108:
	.string	"answer"
.LASF57:
	.string	"samples"
.LASF97:
	.string	"CrossProduct"
.LASF117:
	.string	"numer"
.LASF101:
	.string	"VectorNormalize"
.LASF30:
	.string	"gl_lumitex"
.LASF112:
	.string	"degrees"
.LASF81:
	.string	"ProjectPointOnPlane"
.LASF52:
	.string	"dlightbits"
.LASF67:
	.string	"lightTimestamp"
.LASF66:
	.string	"numverts"
.LASF121:
	.string	"Invert24To16"
.LASF113:
	.string	"zrot"
.LASF18:
	.string	"fixed16_t"
.LASF54:
	.string	"styles"
.LASF114:
	.string	"tmpmat"
.LASF10:
	.string	"float"
.LASF19:
	.string	"normal"
.LASF31:
	.string	"texturechain"
.LASF38:
	.string	"msurface_s"
.LASF71:
	.string	"msurface_t"
.LASF16:
	.string	"vec_t"
.LASF82:
	.string	"AngleVectors"
.LASF120:
	.string	"GreatestCommonDivisor"
.LASF15:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF76:
	.string	"emins"
.LASF88:
	.string	"VectorMA"
.LASF130:
	.string	"wgPipe"
.LASF69:
	.string	"firstvertex"
.LASF27:
	.string	"width"
.LASF73:
	.string	"inv_denom"
.LASF14:
	.string	"qboolean"
.LASF55:
	.string	"cached_light"
.LASF36:
	.string	"alternate_anims"
.LASF65:
	.string	"chain"
.LASF122:
	.string	"Mat_Mul_1x4_4x4"
.LASF106:
	.string	"VectorScale"
.LASF110:
	.string	"RotatePointAroundVector"
.LASF89:
	.string	"veca"
.LASF91:
	.string	"vecb"
.LASF92:
	.string	"vecc"
.LASF17:
	.string	"vec3_t"
.LASF11:
	.string	"long double"
.LASF100:
	.string	"length"
.LASF8:
	.string	"char"
.LASF83:
	.string	"angles"
.LASF59:
	.string	"vecs"
.LASF75:
	.string	"BoxOnPlaneSide"
.LASF105:
	.string	"VectorInverse"
.LASF62:
	.string	"mtexinfo_t"
.LASF129:
	.string	"causticschain"
.LASF102:
	.string	"ilength"
.LASF53:
	.string	"lightmaptexturenum"
.LASF99:
	.string	"Length"
.LASF20:
	.string	"dist"
.LASF103:
	.string	"PerpendicularVector"
.LASF74:
	.string	"anglemod"
.LASF94:
	.string	"_VectorSubtract"
.LASF41:
	.string	"flags"
.LASF109:
	.string	"R_ConcatRotations"
.LASF87:
	.string	"VectorCompare"
.LASF34:
	.string	"anim_max"
.LASF127:
	.string	"vec3_origin"
.LASF80:
	.string	"sides"
.LASF107:
	.string	"Q_log2"
.LASF37:
	.string	"offsets"
.LASF33:
	.string	"anim_min"
.LASF25:
	.string	"texture_s"
.LASF58:
	.string	"texture_t"
.LASF28:
	.string	"height"
.LASF131:
	.string	"GNU C 4.6.3"
.LASF123:
	.string	"result"
.LASF133:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF72:
	.string	"WGPipe"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
