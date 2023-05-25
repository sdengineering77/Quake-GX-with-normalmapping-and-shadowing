	.file	"gl_rmain.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl R_CullBox
	.type	R_CullBox, @function
R_CullBox:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_rmain.c"
	.loc 1 206 0
	.cfi_startproc
.LVL0:
	mflr 0
	stwu 1,-24(1)
.LCFI0:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 30,16(1)
	lis 30,frustum@ha
	.cfi_offset 30, -8
	stw 0,28(1)
	la 30,frustum@l(30)
	stw 28,8(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	stw 29,12(1)
	mr 29,4
	.cfi_offset 29, -12
	stw 31,20(1)
	.loc 1 209 0
	li 31,0
	.cfi_offset 31, -4
.LVL1:
.L3:
	.loc 1 210 0
	mulli 5,31,20
	mr 3,28
	mr 4,29
	add 5,30,5
	bl BoxOnPlaneSide
	.loc 1 209 0
	cmpwi 6,31,3
	.loc 1 210 0
	cmpwi 7,3,2
	.loc 1 209 0
	addi 31,31,1
	.loc 1 210 0
	beq- 7,.L4
	.loc 1 209 0
	bne+ 6,.L3
	.loc 1 213 0
	lwz 0,28(1)
	.loc 1 212 0
	li 3,0
	.loc 1 213 0
	lwz 28,8(1)
.LVL2:
	mtlr 0
	lwz 29,12(1)
.LVL3:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL4:
.L4:
.LCFI2:
	.cfi_restore_state
	lwz 0,28(1)
	.loc 1 211 0
	li 3,1
	.loc 1 213 0
	lwz 28,8(1)
.LVL5:
	mtlr 0
	lwz 29,12(1)
.LVL6:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE38:
	.size	R_CullBox, .-R_CullBox
	.align 2
	.globl R_UnlerpedRotateForEntity
	.type	R_UnlerpedRotateForEntity, @function
R_UnlerpedRotateForEntity:
.LFB40:
	.loc 1 312 0
	.cfi_startproc
.LVL7:
	mflr 0
	stwu 1,-32(1)
.LCFI4:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 313 0
	lfs 1,112(3)
	lfs 2,116(3)
	lfs 3,120(3)
	.loc 1 312 0
	stw 0,36(1)
	stfd 30,16(1)
	stfd 31,24(1)
	stw 31,12(1)
	.loc 1 312 0
	mr 31,3
	.cfi_offset 31, -20
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	.loc 1 313 0
	bl glTranslatef
.LVL8:
	.loc 1 315 0
	lis 9,.LC1@ha
	lfs 30,.LC1@l(9)
	lis 9,.LC2@ha
	lfs 31,.LC2@l(9)
	fmr 4,30
	lfs 1,152(31)
	fmr 2,31
	fmr 3,31
	bl glRotatef
	.loc 1 316 0
	lfs 1,148(31)
	fmr 2,31
	fmr 3,30
	fmr 4,31
	fneg 1,1
	bl glRotatef
	.loc 1 317 0
	fmr 3,31
	fmr 2,30
	lfs 1,156(31)
	fmr 4,31
	bl glRotatef
	.loc 1 318 0
	lwz 0,36(1)
	lwz 31,12(1)
.LVL9:
	mtlr 0
	lfd 30,16(1)
	lfd 31,24(1)
	addi 1,1,32
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE40:
	.size	R_UnlerpedRotateForEntity, .-R_UnlerpedRotateForEntity
	.align 2
	.globl R_RotateForEntity
	.type	R_RotateForEntity, @function
R_RotateForEntity:
.LFB39:
	.loc 1 224 0
	.cfi_startproc
.LVL10:
	mflr 0
	stwu 1,-64(1)
.LCFI6:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
	.loc 1 231 0
	lis 4,.LC5@ha
	.loc 1 224 0
	stw 31,36(1)
	.loc 1 231 0
	la 4,.LC5@l(4)
	.loc 1 224 0
	stw 0,68(1)
	stw 30,32(1)
	mr 30,3
	.cfi_offset 30, -32
	.cfi_offset 65, 4
	.cfi_offset 31, -28
	.loc 1 231 0
	lwz 31,160(3)
	.loc 1 224 0
	stfd 29,40(1)
	.loc 1 231 0
	mr 3,31
.LVL11:
	.loc 1 224 0
	stfd 30,48(1)
	stfd 31,56(1)
	stw 29,28(1)
	.loc 1 231 0
	.cfi_offset 29, -36
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L9
	.loc 1 231 0 is_stmt 0 discriminator 1
	lis 4,.LC6@ha
	mr 3,31
	la 4,.LC6@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L9
	.loc 1 232 0 is_stmt 1
	lis 4,.LC7@ha
	mr 3,31
	la 4,.LC7@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L9
	.loc 1 232 0 is_stmt 0 discriminator 1
	lis 4,.LC8@ha
	mr 3,31
	la 4,.LC8@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L9
	.loc 1 233 0 is_stmt 1
	lis 4,.LC9@ha
	mr 3,31
	la 4,.LC9@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L9
	.loc 1 233 0 is_stmt 0 discriminator 1
	lis 4,.LC10@ha
	mr 3,31
	la 4,.LC10@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L9
	.loc 1 234 0 is_stmt 1
	lis 4,.LC11@ha
	mr 3,31
	la 4,.LC11@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L9
	.loc 1 234 0 is_stmt 0 discriminator 1
	lis 4,.LC12@ha
	mr 3,31
	la 4,.LC12@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L9
	.loc 1 235 0 is_stmt 1
	lis 4,.LC13@ha
	mr 3,31
	la 4,.LC13@l(4)
	bl strcmp
	cmpwi 7,3,0
	beq- 7,.L9
	.loc 1 235 0 is_stmt 0 discriminator 1
	lis 9,.LANCHOR0+12@ha
	lfs 13,.LANCHOR0+12@l(9)
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	fcmpu 7,13,0
	beq- 7,.L9
	.loc 1 241 0 is_stmt 1
	lfs 0,528(30)
	.loc 1 243 0
	lis 9,.LC2@ha
	.loc 1 241 0
	lis 29,realtime@ha
	.loc 1 243 0
	lfs 11,.LC2@l(9)
	.loc 1 241 0
	fmr 12,0
	lfd 13,realtime@l(29)
	.loc 1 243 0
	fcmpu 7,0,11
	lis 31,.LC1@ha
	.loc 1 241 0
	fsub 0,13,12
	frsp 31,0
.LVL12:
	.loc 1 243 0
	beq- 7,.L11
	.loc 1 243 0 is_stmt 0 discriminator 1
	lfs 0,.LC1@l(31)
	fcmpu 7,31,0
	bng- 7,.L12
.L11:
	.loc 1 245 0 is_stmt 1
	frsp 13,13
	.loc 1 246 0
	lwz 11,112(30)
	lwz 9,116(30)
	lwz 0,120(30)
	.loc 1 245 0
	stfs 13,528(30)
	.loc 1 246 0
	stw 11,532(30)
	stw 9,536(30)
	stw 0,540(30)
	.loc 1 247 0
	stw 11,544(30)
	stw 9,548(30)
	stw 0,552(30)
.L12:
	.loc 1 250 0
	addi 3,30,112
	addi 4,30,544
	bl VectorCompare
	cmpwi 7,3,0
	bne- 7,.L14
	.loc 1 252 0
	lfd 11,realtime@l(29)
	.loc 1 255 0
	lis 9,.LC2@ha
	.loc 1 253 0
	lfs 1,544(30)
	.loc 1 252 0
	frsp 11,11
	.loc 1 253 0
	lfs 2,548(30)
	lfs 3,552(30)
	.loc 1 254 0
	lfs 12,112(30)
	lfs 13,116(30)
	lfs 0,120(30)
	.loc 1 252 0
	stfs 11,528(30)
	.loc 1 253 0
	stfs 1,532(30)
	stfs 2,536(30)
	stfs 3,540(30)
	.loc 1 254 0
	stfs 12,544(30)
	stfs 13,548(30)
	stfs 0,552(30)
.LVL13:
	.loc 1 255 0
	lfs 11,.LC2@l(9)
.LVL14:
.L15:
	.loc 1 264 0
	fsubs 12,12,1
	fsubs 13,13,2
	fsubs 0,0,3
	.loc 1 266 0
	fmadds 1,11,12,1
	.loc 1 264 0
	stfs 12,8(1)
	.loc 1 266 0
	fmadds 2,11,13,2
	.loc 1 264 0
	stfs 13,12(1)
	.loc 1 266 0
	fmadds 3,11,0,3
	.loc 1 264 0
	stfs 0,16(1)
	.loc 1 266 0
	bl glTranslatef
.LVL15:
	.loc 1 271 0
	lfs 0,556(30)
	.loc 1 273 0
	lis 9,.LC2@ha
	.loc 1 271 0
	lfd 13,realtime@l(29)
	fmr 12,0
	.loc 1 273 0
	lfs 11,.LC2@l(9)
	fcmpu 7,0,11
	.loc 1 271 0
	fsub 0,13,12
	frsp 31,0
.LVL16:
	.loc 1 273 0
	beq- 7,.L17
	.loc 1 273 0 is_stmt 0 discriminator 1
	lfs 0,.LC1@l(31)
	fcmpu 7,31,0
	bng- 7,.L18
.L17:
	.loc 1 275 0 is_stmt 1
	frsp 13,13
	.loc 1 276 0
	lwz 11,148(30)
	lwz 9,152(30)
	lwz 0,156(30)
	.loc 1 275 0
	stfs 13,556(30)
	.loc 1 276 0
	stw 11,560(30)
	stw 9,564(30)
	stw 0,568(30)
	.loc 1 277 0
	stw 11,572(30)
	stw 9,576(30)
	stw 0,580(30)
.L18:
	.loc 1 280 0
	addi 3,30,148
	addi 4,30,572
	bl VectorCompare
	cmpwi 7,3,0
	bne- 7,.L20
	.loc 1 282 0
	lfd 0,realtime@l(29)
	.loc 1 284 0
	lis 9,.LC3@ha
	.loc 1 283 0
	lfs 12,576(30)
	.loc 1 282 0
	frsp 0,0
	.loc 1 283 0
	lfs 13,572(30)
	lfs 11,580(30)
	.loc 1 284 0
	lfs 8,148(30)
	lfs 9,152(30)
	lfs 10,156(30)
	.loc 1 282 0
	stfs 0,556(30)
	fmr 0,12
	.loc 1 284 0
	lfs 29,.LC3@l(9)
	.loc 1 285 0
	lis 9,.LC2@ha
	.loc 1 283 0
	stfs 13,560(30)
	stfs 12,564(30)
	stfs 11,568(30)
	.loc 1 284 0
	stfs 8,572(30)
	stfs 9,576(30)
	stfs 10,580(30)
.LVL17:
	.loc 1 285 0
	lfs 30,.LC2@l(9)
.LVL18:
.L21:
	.loc 1 293 0
	fsubs 12,9,12
	.loc 1 297 0
	lis 9,.LC15@ha
	.loc 1 293 0
	fsubs 13,8,13
	.loc 1 223 0
	addi 0,1,16
	.loc 1 293 0
	fsubs 11,10,11
	.loc 1 301 0
	lis 10,.LC17@ha
	.loc 1 293 0
	stfs 12,12(1)
	.loc 1 303 0
	lis 11,.LC16@ha
	.loc 1 297 0
	lfs 12,.LC15@l(9)
	.loc 1 293 0
	addi 9,1,8
	stfs 13,8(1)
	.loc 1 297 0
	fcmpu 7,13,12
	.loc 1 293 0
	stfs 11,16(1)
.LVL19:
	.loc 1 297 0
	bng- 7,.L32
.LVL20:
.L33:
	.loc 1 299 0
	lfs 11,.LC16@l(11)
	fsubs 13,13,11
	stfs 13,0(9)
.L25:
	.loc 1 295 0
	cmpw 7,9,0
	beq- 7,.L27
	lfsu 13,4(9)
	.loc 1 297 0
	fcmpu 7,13,12
	bgt- 7,.L33
.L32:
	.loc 1 301 0
	lfs 11,.LC17@l(10)
	fcmpu 7,13,11
	bnl- 7,.L25
	.loc 1 303 0
	lfs 11,.LC16@l(11)
	fadds 13,13,11
	stfs 13,0(9)
	b .L25
.LVL21:
.L9:
	.loc 1 309 0
	lwz 0,68(1)
	.loc 1 237 0
	mr 3,30
	.loc 1 309 0
	lwz 29,28(1)
	lwz 30,32(1)
.LVL22:
	mtlr 0
	lwz 31,36(1)
	lfd 29,40(1)
	lfd 30,48(1)
	lfd 31,56(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.loc 1 237 0
	b R_UnlerpedRotateForEntity
.LVL23:
.L27:
.LCFI8:
	.cfi_restore_state
	.loc 1 306 0
	lis 9,.LC2@ha
	lfs 31,.LC1@l(31)
.LVL24:
	lfs 2,.LC2@l(9)
	lfs 1,12(1)
	fmr 4,31
	fmr 3,2
	fmadds 1,1,30,0
	bl glRotatef
	.loc 1 307 0
	lis 9,.LC2@ha
	lfs 0,560(30)
	fmr 3,31
	lfs 2,.LC2@l(9)
	lfs 1,8(1)
	fmr 4,2
	fmsubs 1,1,29,0
	bl glRotatef
	.loc 1 308 0
	lis 9,.LC2@ha
	lfs 0,568(30)
	fmr 2,31
	lfs 1,16(1)
	lfs 3,.LC2@l(9)
	fmadds 1,1,30,0
	fmr 4,3
	bl glRotatef
	.loc 1 309 0
	lwz 0,68(1)
	lwz 29,28(1)
	mtlr 0
	lwz 30,32(1)
.LVL25:
	lwz 31,36(1)
	lfd 29,40(1)
	lfd 30,48(1)
.LVL26:
	lfd 31,56(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL27:
.L20:
.LCFI10:
	.cfi_restore_state
	.loc 1 291 0
	lis 9,cl+536@ha
	lbz 0,cl+536@l(9)
	cmpwi 7,0,0
	bne- 7,.L22
	.loc 1 289 0 discriminator 2
	lis 9,.LC14@ha
	.loc 1 291 0 discriminator 2
	lfs 0,.LC1@l(31)
	.loc 1 289 0 discriminator 2
	lfd 13,.LC14@l(9)
	fdiv 30,31,13
	frsp 30,30
	.loc 1 291 0 discriminator 2
	fcmpu 7,30,0
	bgt- 7,.L22
	.loc 1 291 0 is_stmt 0
	lfs 0,564(30)
	fneg 29,30
	lfs 8,572(30)
	lfs 13,560(30)
	fmr 12,0
	lfs 9,576(30)
	lfs 10,580(30)
	lfs 11,568(30)
	b .L21
.LVL28:
.L14:
	.loc 1 261 0 is_stmt 1
	lis 9,cl+536@ha
	lbz 0,cl+536@l(9)
	cmpwi 7,0,0
	bne- 7,.L16
	.loc 1 259 0 discriminator 2
	fmr 11,31
	lis 9,.LC14@ha
	lfd 13,.LC14@l(9)
	.loc 1 261 0 discriminator 2
	lfs 0,.LC1@l(31)
	.loc 1 259 0 discriminator 2
	fdiv 11,11,13
	frsp 11,11
	.loc 1 261 0 discriminator 2
	fcmpu 7,11,0
	bgt- 7,.L16
	.loc 1 261 0 is_stmt 0
	lfs 12,544(30)
	lfs 1,532(30)
	lfs 13,548(30)
	lfs 2,536(30)
	lfs 0,552(30)
	lfs 3,540(30)
	b .L15
.L22:
.LVL29:
	.loc 1 291 0 is_stmt 1 discriminator 1
	lfs 0,564(30)
	.loc 1 285 0 discriminator 1
	lis 9,.LC4@ha
	.loc 1 291 0 discriminator 1
	lfs 8,572(30)
	lfs 13,560(30)
	fmr 12,0
	lfs 9,576(30)
	lfs 10,580(30)
	lfs 11,568(30)
	.loc 1 285 0 discriminator 1
	lfs 29,.LC4@l(9)
	.loc 1 291 0 discriminator 1
	lfs 30,.LC1@l(31)
	b .L21
.LVL30:
.L16:
	.loc 1 261 0 discriminator 1
	lfs 12,544(30)
	lfs 1,532(30)
	lfs 13,548(30)
	lfs 2,536(30)
	lfs 0,552(30)
	lfs 3,540(30)
	lfs 11,.LC1@l(31)
	b .L15
	.cfi_endproc
.LFE39:
	.size	R_RotateForEntity, .-R_RotateForEntity
	.align 2
	.globl CL_PointContents
	.type	CL_PointContents, @function
CL_PointContents:
.LFB41:
	.loc 1 321 0
	.cfi_startproc
.LVL31:
	.loc 1 324 0
	lis 9,cl+2688@ha
	.loc 1 321 0
	mflr 0
	.loc 1 324 0
	lwz 9,cl+2688@l(9)
	.loc 1 321 0
	mr 5,3
	stwu 1,-8(1)
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 324 0
	li 4,0
	addi 3,9,236
.LVL32:
	.loc 1 321 0
	stw 0,12(1)
	.loc 1 324 0
	.cfi_offset 65, 4
	bl SV_HullPointContents
.LVL33:
	.loc 1 325 0
	addi 0,3,14
	cmplwi 7,0,5
	ble- 7,.L37
.LVL34:
.L35:
	.loc 1 328 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI12:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L37:
.LCFI13:
	.cfi_restore_state
	.loc 1 326 0
	li 3,-3
.LVL35:
	b .L35
	.cfi_endproc
.LFE41:
	.size	CL_PointContents, .-CL_PointContents
	.align 2
	.globl R_GetSpriteFrame
	.type	R_GetSpriteFrame, @function
R_GetSpriteFrame:
.LFB42:
	.loc 1 344 0
	.cfi_startproc
.LVL36:
	mflr 0
	stwu 1,-32(1)
.LCFI14:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 30,24(1)
	stw 0,36(1)
	stw 31,28(1)
	.loc 1 344 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.loc 1 351 0
	lwz 9,160(3)
	.loc 1 352 0
	lwz 4,168(3)
	.loc 1 351 0
	lwz 30,416(9)
.LVL37:
	.loc 1 354 0
	lwz 0,12(30)
	cmpw 7,4,0
	bge- 7,.L39
.LVL38:
	.loc 1 354 0 is_stmt 0 discriminator 1
	cmpwi 7,4,0
	blt- 7,.L39
	.loc 1 360 0 is_stmt 1
	addi 4,4,2
	slwi 4,4,3
	add 30,30,4
	lwz 0,8(30)
	cmpwi 7,0,0
	beq- 7,.L48
.LVL39:
.L41:
	.loc 1 366 0
	lwz 10,12(30)
.LVL40:
	.loc 1 371 0
	lfs 12,172(31)
	.loc 1 368 0
	lwz 9,0(10)
	.loc 1 367 0
	lwz 11,4(10)
.LVL41:
	.loc 1 369 0
	addi 0,9,-1
	.loc 1 377 0
	cmpwi 7,0,0
	.loc 1 369 0
	slwi 9,0,2
	lfsx 0,11,9
.LVL42:
	.loc 1 371 0
	lis 9,cl+568@ha
.LVL43:
	lfd 13,cl+568@l(9)
.LVL44:
	.loc 1 377 0
	li 9,0
.LVL45:
	ble- 7,.L43
	.loc 1 371 0
	fadd 12,13,12
	.loc 1 375 0
	lis 8,0x4330
	stw 8,8(1)
	addi 8,1,16
	.loc 1 377 0
	mtctr 0
	.loc 1 371 0
	frsp 12,12
	.loc 1 375 0
	fdivs 13,12,0
	fctiwz 13,13
	stfiwx 13,0,8
	lwz 8,16(1)
	xoris 8,8,0x8000
	stw 8,12(1)
	lis 8,.LC20@ha
	lfs 13,.LC20@l(8)
	lfd 10,8(1)
	.loc 1 379 0
	lfs 11,0(11)
	.loc 1 375 0
	fsub 13,10,13
	frsp 13,13
	.loc 1 343 0
	fneg 13,13
	.loc 1 375 0
	fmadds 13,13,0,12
	.loc 1 379 0
	fcmpu 7,11,13
	bng+ 7,.L44
	b .L43
.LVL46:
.L45:
	lfsu 0,4(11)
	fcmpu 7,0,13
	bgt- 7,.L43
.LVL47:
.L44:
	.loc 1 377 0
	addi 9,9,1
.LVL48:
	bdnz .L45
.LVL49:
.L43:
	.loc 1 387 0
	lwz 0,36(1)
	.loc 1 383 0
	slwi 9,9,2
	add 10,10,9
	.loc 1 387 0
	lwz 30,24(1)
.LVL50:
	mtlr 0
	.loc 1 383 0
	lwz 3,8(10)
.LVL51:
	.loc 1 387 0
	lwz 31,28(1)
.LVL52:
	addi 1,1,32
	.cfi_remember_state
.LCFI15:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL53:
.L39:
.LCFI16:
	.cfi_restore_state
	.loc 1 356 0
	lis 3,.LC18@ha
.LVL54:
	la 3,.LC18@l(3)
	crxor 6,6,6
	bl Con_Printf
.LVL55:
	.loc 1 357 0
	li 4,0
.LVL56:
	.loc 1 360 0
	addi 4,4,2
.LVL57:
	slwi 4,4,3
.LVL58:
	add 30,30,4
.LVL59:
	lwz 0,8(30)
	cmpwi 7,0,0
	bne+ 7,.L41
.LVL60:
.L48:
	.loc 1 387 0
	lwz 0,36(1)
	.loc 1 362 0
	lwz 3,12(30)
.LVL61:
	.loc 1 387 0
	mtlr 0
	lwz 30,24(1)
.LVL62:
	lwz 31,28(1)
.LVL63:
	addi 1,1,32
	.cfi_restore 30
	.cfi_restore 31
.LCFI17:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE42:
	.size	R_GetSpriteFrame, .-R_GetSpriteFrame
	.align 2
	.globl R_DrawSpriteModel
	.type	R_DrawSpriteModel, @function
R_DrawSpriteModel:
.LFB43:
	.loc 1 397 0
	.cfi_startproc
.LVL64:
	mflr 0
	stwu 1,-96(1)
.LCFI18:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
	stw 30,80(1)
	mr 30,3
	.cfi_offset 30, -16
	stw 0,100(1)
	stw 31,84(1)
	stfd 31,88(1)
	stw 29,76(1)
	.loc 1 408 0
	.cfi_offset 29, -20
	.cfi_offset 63, -8
	.cfi_offset 31, -12
	.cfi_offset 65, 4
	bl R_GetSpriteFrame
.LVL65:
	.loc 1 409 0
	lis 9,currententity@ha
	.loc 1 408 0
	mr 31,3
.LVL66:
	.loc 1 409 0
	lwz 3,currententity@l(9)
.LVL67:
	.loc 1 411 0
	lwz 10,112(30)
	.loc 1 409 0
	lwz 11,160(3)
	.loc 1 411 0
	lwz 9,116(30)
	.loc 1 409 0
	lwz 11,416(11)
.LVL68:
	.loc 1 411 0
	lwz 0,120(30)
	.loc 1 413 0
	lwz 11,0(11)
	.loc 1 411 0
	stw 10,8(1)
	.loc 1 413 0
	cmpwi 7,11,3
	.loc 1 411 0
	stw 9,12(1)
	stw 0,16(1)
	.loc 1 413 0
	beq- 7,.L52
	.loc 1 424 0
	lis 30,vright@ha
.LVL69:
	.loc 1 423 0
	lis 29,vup@ha
	.loc 1 424 0
	la 30,vright@l(30)
	.loc 1 423 0
	la 29,vup@l(29)
.LVL70:
.L50:
	.loc 1 427 0
	bl GL_DisableMultitexture
	.loc 1 429 0
	lwz 3,24(31)
	bl GL_Bind
	.loc 1 431 0
	li 3,3008
	bl glEnable
	.loc 1 432 0
	li 3,7
	bl glBegin
	.loc 1 434 0
	lis 9,.LC1@ha
	lfs 31,.LC1@l(9)
	lis 9,.LC2@ha
	lfs 1,.LC2@l(9)
	fmr 2,31
	bl glTexCoord2f
	.loc 1 436 0
	lfs 1,12(31)
	mr 4,29
	addi 5,1,56
	addi 3,1,8
	bl VectorMA
	.loc 1 437 0
	addi 3,1,56
	lfs 1,16(31)
	mr 4,30
	mr 5,3
	bl VectorMA
	.loc 1 438 0
	addi 3,1,56
	bl glVertex3fv
	.loc 1 440 0
	lis 9,.LC2@ha
	lfs 1,.LC2@l(9)
	fmr 2,1
	bl glTexCoord2f
	.loc 1 441 0
	lfs 1,8(31)
	addi 3,1,8
	mr 4,29
	addi 5,1,56
	bl VectorMA
	.loc 1 442 0
	addi 3,1,56
	lfs 1,16(31)
	mr 4,30
	mr 5,3
	bl VectorMA
	.loc 1 443 0
	addi 3,1,56
	bl glVertex3fv
	.loc 1 445 0
	lis 9,.LC2@ha
	fmr 1,31
	lfs 2,.LC2@l(9)
	bl glTexCoord2f
	.loc 1 446 0
	lfs 1,8(31)
	addi 3,1,8
	mr 4,29
	addi 5,1,56
	bl VectorMA
	.loc 1 447 0
	addi 3,1,56
	lfs 1,20(31)
	mr 4,30
	mr 5,3
	bl VectorMA
	.loc 1 448 0
	addi 3,1,56
	bl glVertex3fv
	.loc 1 450 0
	fmr 2,31
	fmr 1,31
	bl glTexCoord2f
	.loc 1 451 0
	lfs 1,12(31)
	addi 3,1,8
	mr 4,29
	addi 5,1,56
	bl VectorMA
	.loc 1 452 0
	lfs 1,20(31)
	addi 3,1,56
	mr 4,30
	mr 5,3
	bl VectorMA
	.loc 1 453 0
	addi 3,1,56
	bl glVertex3fv
	.loc 1 455 0
	bl glEnd
	.loc 1 457 0
	li 3,3008
	bl glDisable
	.loc 1 458 0
	lwz 0,100(1)
	lwz 29,76(1)
.LVL71:
	mtlr 0
	lwz 30,80(1)
.LVL72:
	lwz 31,84(1)
.LVL73:
	lfd 31,88(1)
	addi 1,1,96
	.cfi_remember_state
.LCFI19:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL74:
.L52:
.LCFI20:
	.cfi_restore_state
	.loc 1 415 0
	addi 3,3,148
.LVL75:
	addi 4,1,44
	addi 5,1,32
	addi 6,1,20
	bl AngleVectors
.LVL76:
	.loc 1 417 0
	lis 9,.LC21@ha
	lfs 0,.LC21@l(9)
.LVL77:
	.loc 1 419 0
	addi 30,1,32
.LVL78:
	.loc 1 417 0
	lfs 13,12(1)
	.loc 1 418 0
	addi 29,1,20
	.loc 1 417 0
	lfs 12,48(1)
	lfs 11,44(1)
	fmadds 12,12,0,13
	lfs 13,8(1)
	lfs 10,52(1)
	fmadds 13,11,0,13
	lfs 11,16(1)
	stfs 12,12(1)
	fmadds 0,10,0,11
	stfs 13,8(1)
	stfs 0,16(1)
.LVL79:
	b .L50
	.cfi_endproc
.LFE43:
	.size	R_DrawSpriteModel, .-R_DrawSpriteModel
	.align 2
	.globl R_CalcAliasFrameShadowVolume
	.type	R_CalcAliasFrameShadowVolume, @function
R_CalcAliasFrameShadowVolume:
.LFB44:
	.loc 1 502 0
	.cfi_startproc
.LVL80:
	mflr 0
	stwu 1,-112(1)
.LCFI21:
	.cfi_def_cfa_offset 112
	.cfi_register 65, 0
	.loc 1 517 0
	lis 11,extrudeTimeStamp@ha
	lwz 10,extrudeTimeStamp@l(11)
	.loc 1 502 0
	stw 0,116(1)
	stw 24,48(1)
	.loc 1 517 0
	addi 10,10,1
	.loc 1 512 0
	lwz 0,64(3)
	.cfi_offset 24, -64
	.cfi_offset 65, 4
	.loc 1 514 0
	lwz 9,112(3)
	.loc 1 512 0
	mullw 7,0,4
	.loc 1 519 0
	cmpwi 7,0,0
	.loc 1 513 0
	lwz 24,116(3)
	.loc 1 502 0
	stw 18,24(1)
	mr 18,3
	.cfi_offset 18, -88
	.loc 1 513 0
	add 24,3,24
	.loc 1 502 0
	stw 26,56(1)
	.loc 1 514 0
	mullw 8,4,9
	.loc 1 511 0
	lwz 9,128(3)
	.loc 1 512 0
	slwi 7,7,4
	.loc 1 502 0
	stfd 28,80(1)
	.loc 1 511 0
	add 9,3,9
.LVL81:
	.loc 1 502 0
	stfd 29,88(1)
	stfd 30,96(1)
	.loc 1 512 0
	add 9,9,7
.LVL82:
	.loc 1 514 0
	slwi 8,8,4
	.loc 1 502 0
	stfd 31,104(1)
	stw 15,12(1)
	.loc 1 514 0
	add 24,24,8
.LVL83:
	.loc 1 502 0
	stw 16,16(1)
	stw 17,20(1)
	stw 19,28(1)
	stw 20,32(1)
	stw 21,36(1)
	stw 22,40(1)
	stw 23,44(1)
	stw 25,52(1)
	stw 27,60(1)
	stw 28,64(1)
	stw 29,68(1)
	stw 30,72(1)
	stw 31,76(1)
	.loc 1 515 0
	lwz 26,124(3)
	.cfi_offset 31, -36
	.cfi_offset 30, -40
	.cfi_offset 29, -44
	.cfi_offset 28, -48
	.cfi_offset 27, -52
	.cfi_offset 25, -60
	.cfi_offset 23, -68
	.cfi_offset 22, -72
	.cfi_offset 21, -76
	.cfi_offset 20, -80
	.cfi_offset 19, -84
	.cfi_offset 17, -92
	.cfi_offset 16, -96
	.cfi_offset 15, -100
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 26, -56
.LVL84:
	.loc 1 517 0
	stw 10,extrudeTimeStamp@l(11)
.LVL85:
	.loc 1 519 0
	ble- 7,.L53
.LVL86:
	lis 22,currentshadowlight@ha
	.loc 1 521 0
	lis 10,.LC2@ha
	.loc 1 519 0
	lwz 11,currentshadowlight@l(22)
	.loc 1 521 0
	mtctr 0
	lfs 10,.LC2@l(10)
	.loc 1 519 0
	lfs 7,0(11)
	lfs 8,4(11)
	lfs 9,8(11)
	lis 11,triangleVis-1@ha
	la 11,triangleVis-1@l(11)
.LVL87:
.L55:
	.loc 1 520 0
	lfs 0,4(9)
	lfs 11,0(9)
	fmuls 0,8,0
	lfs 12,8(9)
	lfs 13,12(9)
	.loc 1 502 0
	addi 9,9,16
	.loc 1 520 0
	fmadds 0,11,7,0
	fmadds 0,12,9,0
	fsubs 0,0,13
.LVL88:
	.loc 1 521 0
	fcmpu 7,0,10
	mfcr 10
	rlwinm 10,10,30,1
	stbu 10,1(11)
	.loc 1 519 0
	bdnz .L55
.LVL89:
.LBB4:
	.loc 1 551 0
	lis 9,.LC2@ha
	lis 21,triangleVis@ha
	lis 25,extrudedTimestamp@ha
	.loc 1 540 0
	lis 27,extrudedVerts@ha
	.loc 1 551 0
	lfs 28,.LC2@l(9)
.LBE4:
	.loc 1 515 0
	add 26,18,26
	li 28,0
	la 21,triangleVis@l(21)
	lis 17,extrudeTimeStamp@ha
	la 25,extrudedTimestamp@l(25)
.LBB5:
	.loc 1 540 0
	la 27,extrudedVerts@l(27)
	.loc 1 551 0
	lis 19,.LANCHOR0@ha
	.loc 1 557 0
	lis 20,.LC1@ha
	lis 15,.LC23@ha
	.loc 1 553 0
	lis 16,.LC22@ha
.LVL90:
.L61:
.LBE5:
	.loc 1 532 0
	lbzx 9,21,28
	cmpwi 7,9,0
	beq- 7,.L56
	li 30,0
	la 23,extrudeTimeStamp@l(17)
.L60:
.LBB6:
	.loc 1 502 0
	add 9,26,30
	.loc 1 536 0
	lwz 0,4(9)
.LVL91:
	.loc 1 537 0
	lwz 9,0(23)
.LVL92:
	.loc 1 546 0
	slwi 11,0,4
	.loc 1 540 0
	mulli 29,0,12
	.loc 1 537 0
	slwi 0,0,2
.LVL93:
	.loc 1 546 0
	add 8,24,11
	.loc 1 537 0
	lwzx 10,25,0
	.loc 1 540 0
	add 31,29,27
	.loc 1 549 0
	mr 3,31
	.loc 1 537 0
	cmpw 7,10,9
	beq- 7,.L57
.LVL94:
	.loc 1 548 0
	lwz 10,currentshadowlight@l(22)
	.loc 1 546 0
	lfsx 29,24,11
.LVL95:
	.loc 1 548 0
	lfs 0,0(10)
	.loc 1 546 0
	lfs 30,4(8)
.LVL96:
	.loc 1 548 0
	fsubs 0,29,0
	.loc 1 546 0
	lfs 31,8(8)
.LVL97:
	.loc 1 538 0
	stwx 9,25,0
	.loc 1 548 0
	stfsx 0,29,27
	lfs 0,4(10)
	fsubs 0,30,0
	stfs 0,4(31)
	lfs 0,8(10)
	fsubs 0,31,0
	stfs 0,8(31)
	.loc 1 549 0
	bl Length
.LVL98:
	.loc 1 551 0
	la 9,.LANCHOR0@l(19)
	lfs 0,32(9)
	.loc 1 553 0
	mr 3,31
	mr 4,31
	.loc 1 551 0
	fcmpu 7,0,28
	beq- 7,.L58
	.loc 1 553 0
	lfs 13,.LC1@l(20)
	lfs 0,.LC22@l(16)
	fdivs 1,13,1
.LVL99:
	fmuls 1,1,0
	bl VectorScale
.L59:
	.loc 1 559 0
	lfsx 0,29,27
	fadds 29,0,29
.LVL100:
	stfsx 29,29,27
	lfs 13,4(31)
	lfs 0,8(31)
	fadds 30,13,30
.LVL101:
	fadds 31,0,31
.LVL102:
	stfs 30,4(31)
	stfs 31,8(31)
.LVL103:
.L57:
.LBE6:
	.loc 1 534 0
	cmpwi 7,30,8
	addi 30,30,4
	bne+ 7,.L60
	lwz 0,64(18)
.LVL104:
.L56:
	.loc 1 530 0
	addi 28,28,1
.LVL105:
	addi 26,26,28
.LVL106:
	cmpw 7,0,28
	bgt+ 7,.L61
.LVL107:
.L53:
	.loc 1 563 0
	lwz 0,116(1)
	lwz 15,12(1)
	mtlr 0
	lwz 16,16(1)
	lwz 17,20(1)
	lwz 18,24(1)
.LVL108:
	lwz 19,28(1)
	lwz 20,32(1)
	lwz 21,36(1)
	lwz 22,40(1)
	lwz 23,44(1)
	lwz 24,48(1)
.LVL109:
	lwz 25,52(1)
	lwz 26,56(1)
	lwz 27,60(1)
	lwz 28,64(1)
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
	lfd 28,80(1)
	lfd 29,88(1)
	lfd 30,96(1)
	lfd 31,104(1)
	addi 1,1,112
	.cfi_remember_state
.LCFI22:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
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
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	blr
.LVL110:
.L58:
.LCFI23:
	.cfi_restore_state
.LBB7:
	.loc 1 557 0
	lfs 0,.LC1@l(20)
	mr 3,31
.LVL111:
	lwz 9,currentshadowlight@l(22)
	mr 4,31
.LVL112:
	fdivs 1,0,1
.LVL113:
	lfs 0,.LC23@l(15)
	lfs 13,36(9)
	fmuls 1,1,13
	fmuls 1,1,0
	bl VectorScale
	b .L59
.LBE7:
	.cfi_endproc
.LFE44:
	.size	R_CalcAliasFrameShadowVolume, .-R_CalcAliasFrameShadowVolume
	.align 2
	.globl R_DrawAliasSurfaceShadowVolume
	.type	R_DrawAliasSurfaceShadowVolume, @function
R_DrawAliasSurfaceShadowVolume:
.LFB45:
	.loc 1 738 0
	.cfi_startproc
.LVL114:
	.loc 1 785 0
	blr
	.cfi_endproc
.LFE45:
	.size	R_DrawAliasSurfaceShadowVolume, .-R_DrawAliasSurfaceShadowVolume
	.align 2
	.globl R_DrawAliasTangent
	.type	R_DrawAliasTangent, @function
R_DrawAliasTangent:
.LFB46:
	.loc 1 924 0
	.cfi_startproc
.LVL115:
	mflr 0
	stwu 1,-56(1)
.LCFI24:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stw 27,28(1)
	mr 27,3
	.cfi_offset 27, -28
.LVL116:
	stw 0,60(1)
	stw 30,40(1)
	mr 30,4
	.cfi_offset 30, -16
	.cfi_offset 65, 4
	.loc 1 934 0
	lwz 0,112(3)
	.loc 1 924 0
	stfd 31,48(1)
	.loc 1 934 0
	cmpwi 7,0,0
	.loc 1 924 0
	stw 26,24(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 31,44(1)
	.loc 1 934 0
	ble- 7,.L66
	.cfi_offset 31, -12
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 26, -32
	.cfi_offset 63, -8
.LVL117:
	lis 26,.LC1@ha
	li 29,0
	la 26,.LC1@l(26)
.LVL118:
.L68:
	.loc 1 938 0 discriminator 2
	mulli 28,29,12
	.loc 1 936 0 discriminator 2
	li 4,0
	li 5,0
	li 3,255
	.loc 1 938 0 discriminator 2
	add 31,30,28
	.loc 1 936 0 discriminator 2
	bl glColor3ub
	.loc 1 938 0 discriminator 2
	addi 31,31,44
	.loc 1 937 0 discriminator 2
	li 3,1
	bl glBegin
	.loc 1 938 0 discriminator 2
	mr 3,31
	bl glVertex3fv
	.loc 1 939 0 discriminator 2
	lfs 31,0(26)
	add 4,30,28
	addi 5,1,8
	fmr 1,31
	addi 4,4,24620
	mr 3,31
	.loc 1 946 0 discriminator 2
	addis 28,28,0x1
	.loc 1 934 0 discriminator 2
	addi 29,29,1
	.loc 1 939 0 discriminator 2
	bl VectorMA
	.loc 1 940 0 discriminator 2
	addi 3,1,8
	bl glVertex3fv
	.loc 1 941 0 discriminator 2
	bl glEnd
	.loc 1 943 0 discriminator 2
	li 4,255
	li 5,0
	li 3,0
	bl glColor3ub
	.loc 1 944 0 discriminator 2
	li 3,1
	bl glBegin
	.loc 1 945 0 discriminator 2
	mr 3,31
	bl glVertex3fv
	.loc 1 946 0 discriminator 2
	fmr 1,31
	add 4,30,28
	addi 5,1,8
	addi 4,4,-16340
	mr 3,31
	bl VectorMA
	.loc 1 947 0 discriminator 2
	addi 3,1,8
	bl glVertex3fv
	.loc 1 953 0 discriminator 2
	add 28,30,28
	.loc 1 948 0 discriminator 2
	bl glEnd
	.loc 1 950 0 discriminator 2
	li 4,0
	li 5,255
	li 3,0
	bl glColor3ub
	.loc 1 951 0 discriminator 2
	li 3,1
	bl glBegin
	.loc 1 952 0 discriminator 2
	mr 3,31
	bl glVertex3fv
	.loc 1 953 0 discriminator 2
	fmr 1,31
	addi 4,28,8236
	addi 5,1,8
	mr 3,31
	bl VectorMA
	.loc 1 954 0 discriminator 2
	addi 3,1,8
	bl glVertex3fv
	.loc 1 955 0 discriminator 2
	bl glEnd
.LVL119:
	.loc 1 934 0 discriminator 2
	lwz 0,112(27)
	cmpw 7,0,29
	bgt+ 7,.L68
.LVL120:
.L66:
	.loc 1 957 0
	lwz 0,60(1)
	lwz 26,24(1)
	mtlr 0
	lwz 27,28(1)
.LVL121:
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
.LVL122:
	lwz 31,44(1)
	lfd 31,48(1)
	addi 1,1,56
.LCFI25:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
	.cfi_endproc
.LFE46:
	.size	R_DrawAliasTangent, .-R_DrawAliasTangent
	.align 2
	.globl R_DrawAmbientAlias
	.type	R_DrawAmbientAlias, @function
R_DrawAmbientAlias:
.LFB47:
	.loc 1 1159 0
	.cfi_startproc
	mflr 0
	stwu 1,-24(1)
.LCFI26:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 1161 0
	lis 9,currententity@ha
	lwz 3,currententity@l(9)
	.loc 1 1159 0
	stw 0,28(1)
	stw 31,20(1)
	.loc 1 1161 0
	lwz 9,160(3)
	lwz 0,80(9)
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	andi. 9,0,512
	bne- 0,.L75
	.loc 1 1165 0
	lis 31,.LANCHOR0@ha
	lis 9,.LC2@ha
	la 31,.LANCHOR0@l(31)
	lfs 1,.LC2@l(9)
	lfs 0,52(31)
	fcmpu 7,0,1
	bne- 7,.L74
	.loc 1 1168 0
	addi 3,3,112
	bl R_LightPoint
.LVL123:
	lis 0,0x4330
	xoris 3,3,0x8000
.LVL124:
	stw 0,8(1)
	stw 3,12(1)
	lis 9,.LC20@ha
	lfs 0,.LC20@l(9)
	lis 9,.LC25@ha
	lfd 1,8(1)
	lfs 13,.LC25@l(9)
	fsub 1,1,0
	lfs 0,72(31)
	fdiv 1,1,13
	fmul 1,1,0
	.loc 1 1169 0
	frsp 1,1
.LVL125:
.L74:
	bl R_DrawAliasModel
	.loc 1 1171 0
	lwz 0,28(1)
	lwz 31,20(1)
	mtlr 0
	addi 1,1,24
	.cfi_remember_state
.LCFI27:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.L75:
.LCFI28:
	.cfi_restore_state
	.loc 1 1163 0
	lis 9,.LC1@ha
	lfs 1,.LC1@l(9)
	bl R_DrawAliasModel
	.loc 1 1171 0
	lwz 0,28(1)
	lwz 31,20(1)
	mtlr 0
	addi 1,1,24
	.cfi_restore 31
.LCFI29:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE47:
	.size	R_DrawAmbientAlias, .-R_DrawAmbientAlias
	.align 2
	.globl R_DrawAmbientEntities
	.type	R_DrawAmbientEntities, @function
R_DrawAmbientEntities:
.LFB48:
	.loc 1 1181 0
	.cfi_startproc
	stwu 1,-88(1)
.LCFI30:
	.cfi_def_cfa_offset 88
	.loc 1 1185 0
	lis 9,.LANCHOR0+92@ha
	lfs 0,.LANCHOR0+92@l(9)
	lis 9,.LC2@ha
	.loc 1 1181 0
	stfd 31,80(1)
	mflr 0
	.loc 1 1185 0
	lfs 31,.LC2@l(9)
	.cfi_register 65, 0
	.cfi_offset 63, -8
	.loc 1 1181 0
	stw 22,40(1)
	.loc 1 1185 0
	fcmpu 7,0,31
	.loc 1 1181 0
	stw 0,92(1)
	stw 23,44(1)
	stw 24,48(1)
	stw 25,52(1)
	stw 26,56(1)
	stw 27,60(1)
	stw 28,64(1)
	stw 29,68(1)
	stw 30,72(1)
	stw 31,76(1)
	.loc 1 1185 0
	beq- 7,.L76
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	.cfi_offset 65, 4
	.cfi_offset 22, -48
.LVL126:
	.loc 1 1189 0 discriminator 1
	lis 26,cl_numvisedicts@ha
	lwz 0,cl_numvisedicts@l(26)
	cmpwi 7,0,0
	ble- 7,.L76
	.loc 1 1189 0 is_stmt 0
	lis 28,cl_visedicts-4@ha
	lis 27,currententity@ha
	.loc 1 1214 0 is_stmt 1
	lis 22,mirror_far_plane@ha
	.loc 1 1189 0
	la 28,cl_visedicts-4@l(28)
	li 29,0
	la 27,currententity@l(27)
	addi 30,1,20
	addi 31,1,8
	.loc 1 1209 0
	lis 25,mirror@ha
	.loc 1 1210 0
	lis 23,mirror_plane@ha
	lis 24,mirror_clipside@ha
	.loc 1 1214 0
	la 22,mirror_far_plane@l(22)
	b .L87
.LVL127:
.L93:
	.loc 1 1193 0 discriminator 1
	lfs 0,152(11)
	fcmpu 7,0,31
	bne- 7,.L78
	lfs 0,156(11)
	fcmpu 7,0,31
	bne- 7,.L78
	.loc 1 1202 0
	lwz 9,160(11)
	lfs 12,112(11)
	lfs 13,116(11)
	lfs 0,120(11)
	lfs 9,84(9)
	lfs 10,88(9)
	lfs 11,92(9)
	fadds 9,12,9
	.loc 1 1203 0
	lfs 6,96(9)
	.loc 1 1202 0
	fadds 10,13,10
	.loc 1 1203 0
	lfs 7,100(9)
	.loc 1 1202 0
	fadds 11,0,11
	.loc 1 1203 0
	lfs 8,104(9)
	fadds 12,12,6
	fadds 13,13,7
	.loc 1 1202 0
	stfs 9,20(1)
	.loc 1 1203 0
	fadds 0,0,8
	.loc 1 1202 0
	stfs 10,24(1)
	stfs 11,28(1)
	.loc 1 1203 0
	stfs 12,8(1)
	stfs 13,12(1)
	stfs 0,16(1)
.L82:
	.loc 1 1206 0
	mr 3,30
	mr 4,31
	bl R_CullBox
	cmpwi 7,3,0
	bne- 7,.L83
	.loc 1 1209 0
	lbz 0,mirror@l(25)
	cmpwi 7,0,0
	bne- 7,.L91
.L84:
	.loc 1 1219 0
	lwz 3,0(27)
	lwz 9,160(3)
	lwz 0,68(9)
	cmpwi 7,0,0
	bne- 7,.L92
	.loc 1 1228 0
	bl R_DrawBrushModel
.L83:
	.loc 1 1189 0
	lwz 0,cl_numvisedicts@l(26)
	addi 29,29,1
.LVL128:
	cmpw 7,0,29
	ble- 7,.L76
.LVL129:
.L87:
	.loc 1 1191 0
	lwzu 11,4(28)
	.loc 1 1193 0
	lfs 0,148(11)
	.loc 1 1191 0
	stw 11,0(27)
	.loc 1 1193 0
	fcmpu 7,0,31
	beq- 7,.L93
.L78:
	.loc 1 1193 0 is_stmt 0 discriminator 2
	lwz 10,160(11)
	.loc 1 1189 0 is_stmt 1 discriminator 2
	li 9,0
	.loc 1 1193 0 discriminator 2
	lfs 13,108(10)
.L80:
.LBB8:
	.loc 1 1180 0 discriminator 2
	add 10,11,9
	.loc 1 1196 0 discriminator 2
	cmpwi 7,9,8
	.loc 1 1198 0 discriminator 2
	lfs 0,112(10)
	fsubs 12,0,13
	.loc 1 1199 0 discriminator 2
	fadds 0,13,0
	.loc 1 1198 0 discriminator 2
	stfsx 12,30,9
	.loc 1 1199 0 discriminator 2
	stfsx 0,31,9
	.loc 1 1196 0 discriminator 2
	addi 9,9,4
	bne+ 7,.L80
	b .L82
.LVL130:
.L92:
.LBE8:
	.loc 1 1219 0
	cmpwi 7,0,2
	bne+ 7,.L83
	.loc 1 1222 0
	bl R_DrawAmbientAlias
	.loc 1 1189 0
	lwz 0,cl_numvisedicts@l(26)
	addi 29,29,1
.LVL131:
	cmpw 7,0,29
	bgt+ 7,.L87
.LVL132:
.L76:
	.loc 1 1235 0
	lwz 0,92(1)
	lwz 22,40(1)
	mtlr 0
	lwz 23,44(1)
	lwz 24,48(1)
	lwz 25,52(1)
	lwz 26,56(1)
	lwz 27,60(1)
	lwz 28,64(1)
	lwz 29,68(1)
	lwz 30,72(1)
	lwz 31,76(1)
	lfd 31,80(1)
	addi 1,1,88
	.cfi_remember_state
.LCFI31:
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
.L91:
.LCFI32:
	.cfi_restore_state
	.loc 1 1210 0
	lwz 5,mirror_plane@l(23)
	mr 3,30
	mr 4,31
	bl BoxOnPlaneSide
	lwz 0,mirror_clipside@l(24)
	cmpw 7,3,0
	beq- 7,.L83
	.loc 1 1214 0
	mr 3,30
	mr 4,31
	mr 5,22
	bl BoxOnPlaneSide
	cmpwi 7,3,1
	bne+ 7,.L84
	b .L76
	.cfi_endproc
.LFE48:
	.size	R_DrawAmbientEntities, .-R_DrawAmbientEntities
	.align 2
	.globl R_DrawEntitiesOnList
	.type	R_DrawEntitiesOnList, @function
R_DrawEntitiesOnList:
.LFB49:
	.loc 1 1254 0
	.cfi_startproc
	.loc 1 1257 0
	lis 9,.LANCHOR0+92@ha
	.loc 1 1254 0
	mflr 0
	.loc 1 1257 0
	lfs 13,.LANCHOR0+92@l(9)
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	.loc 1 1254 0
	stwu 1,-32(1)
.LCFI33:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 1257 0
	fcmpu 7,13,0
	.loc 1 1254 0
	stw 0,36(1)
	stw 26,8(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 1257 0
	beq- 7,.L94
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	.loc 1 1260 0
	lis 31,cl_numvisedicts@ha
	lwz 0,cl_numvisedicts@l(31)
	cmpwi 7,0,0
	bne- 7,.L105
.L94:
	.loc 1 1309 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI34:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.L105:
.LCFI35:
	.cfi_restore_state
	.loc 1 1263 0
	li 4,768
	li 3,0
	bl glBlendFunc
	.loc 1 1266 0
	lis 28,.LC1@ha
	.loc 1 1264 0
	li 3,3042
	bl glEnable
	.loc 1 1266 0
	lfs 1,.LC1@l(28)
	fmr 2,1
	fmr 3,1
	bl glColor3f
.LVL133:
	.loc 1 1270 0
	lwz 0,cl_numvisedicts@l(31)
	cmpwi 7,0,0
	ble- 7,.L96
	lis 29,currententity@ha
	lis 26,cl_visedicts-4@ha
	la 26,cl_visedicts-4@l(26)
	li 27,0
	la 29,currententity@l(29)
	la 30,cl_numvisedicts@l(31)
	b .L99
.LVL134:
.L97:
	lwz 0,0(30)
	cmpw 7,0,27
	ble- 7,.L96
.LVL135:
.L99:
	.loc 1 1272 0
	lwzu 9,4(26)
	.loc 1 1270 0
	addi 27,27,1
	.loc 1 1274 0
	lwz 11,160(9)
	.loc 1 1272 0
	stw 9,0(29)
	.loc 1 1274 0
	lwz 0,68(11)
	cmpwi 7,0,2
	bne+ 7,.L97
	.loc 1 1277 0
	lfs 1,.LC1@l(28)
	bl R_DrawAliasModel
.LVL136:
	.loc 1 1270 0
	lwz 0,0(30)
	cmpw 7,0,27
	bgt+ 7,.L99
.LVL137:
.L96:
	.loc 1 1291 0
	li 3,3042
	bl glDisable
	.loc 1 1292 0
	li 3,770
	li 4,771
	bl glBlendFunc
.LVL138:
	.loc 1 1295 0
	lwz 0,cl_numvisedicts@l(31)
	cmpwi 7,0,0
	ble- 7,.L94
	lis 29,currententity@ha
	lis 28,cl_visedicts-4@ha
	lis 30,cl_numvisedicts@ha
	la 28,cl_visedicts-4@l(28)
	li 31,0
	la 29,currententity@l(29)
	la 30,cl_numvisedicts@l(30)
	b .L102
.LVL139:
.L100:
	lwz 0,0(30)
	cmpw 7,0,31
	ble- 7,.L94
.LVL140:
.L102:
	.loc 1 1297 0
	lwzu 3,4(28)
	.loc 1 1295 0
	addi 31,31,1
	.loc 1 1299 0
	lwz 9,160(3)
	.loc 1 1297 0
	stw 3,0(29)
	.loc 1 1299 0
	lwz 0,68(9)
	cmpwi 7,0,1
	bne+ 7,.L100
	.loc 1 1302 0
	bl R_DrawSpriteModel
	b .L100
	.cfi_endproc
.LFE49:
	.size	R_DrawEntitiesOnList, .-R_DrawEntitiesOnList
	.align 2
	.globl R_MarkEntitiesOnList
	.type	R_MarkEntitiesOnList, @function
R_MarkEntitiesOnList:
.LFB50:
	.loc 1 1318 0
	.cfi_startproc
	.loc 1 1322 0
	lis 9,.LANCHOR0+92@ha
	.loc 1 1318 0
	mflr 0
	.loc 1 1322 0
	lfs 13,.LANCHOR0+92@l(9)
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	.loc 1 1318 0
	stwu 1,-24(1)
.LCFI36:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 1322 0
	fcmpu 7,13,0
	.loc 1 1318 0
	stw 0,28(1)
	stw 28,8(1)
	stw 29,12(1)
	stw 30,16(1)
	stw 31,20(1)
	.loc 1 1322 0
	beq- 7,.L106
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
.LVL141:
	.loc 1 1325 0 discriminator 1
	lis 28,cl_numlightvisedicts@ha
	lwz 0,cl_numlightvisedicts@l(28)
	cmpwi 7,0,0
	ble- 7,.L108
	.loc 1 1325 0 is_stmt 0
	lis 30,cl_lightvisedicts-4@ha
	lis 29,currententity@ha
	la 30,cl_lightvisedicts-4@l(30)
	li 31,0
	la 29,currententity@l(29)
	la 28,cl_numlightvisedicts@l(28)
	b .L112
.LVL142:
.L110:
	.loc 1 1333 0 is_stmt 1
	bl R_SetupBrushInstantForLight
.L109:
	.loc 1 1325 0
	lwz 0,0(28)
	addi 31,31,1
.LVL143:
	cmpw 7,0,31
	ble- 7,.L108
.LVL144:
.L112:
	.loc 1 1327 0
	lwzu 9,4(30)
	.loc 1 1329 0
	lwz 11,160(9)
	.loc 1 1333 0
	mr 3,9
	.loc 1 1327 0
	stw 9,0(29)
	.loc 1 1329 0
	lwz 0,68(11)
	cmpwi 7,0,0
	cmpwi 6,0,2
	beq- 7,.L110
	bne+ 6,.L109
	.loc 1 1336 0
	mr 3,9
	.loc 1 1325 0
	addi 31,31,1
	.loc 1 1336 0
	bl R_SetupInstantForLight
.LVL145:
	.loc 1 1325 0
	lwz 0,0(28)
	cmpw 7,0,31
	bgt+ 7,.L112
.LVL146:
.L108:
	.loc 1 1343 0
	lis 31,cl@ha
	la 31,cl@l(31)
	lwz 0,2864(31)
	cmpwi 7,0,0
	beq- 7,.L113
	.loc 1 1344 0
	addi 3,31,2704
	bl R_SetupInstantForLight
.L113:
	.loc 1 1348 0
	lis 9,mirror@ha
	lbz 0,mirror@l(9)
	cmpwi 7,0,0
	bne- 7,.L106
	.loc 1 1349 0
	lwz 3,2676(31)
	lis 30,cl_entities@ha
	la 30,cl_entities@l(30)
	mulli 3,3,584
	add 3,30,3
	lwz 9,160(3)
	cmpwi 7,9,0
	beq- 7,.L106
	.loc 1 1350 0
	lwz 0,68(9)
	cmpwi 7,0,2
	beq- 7,.L115
.L106:
	.loc 1 1356 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI37:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.L115:
.LCFI38:
	.cfi_restore_state
	.loc 1 1353 0
	li 0,0
	.loc 1 1352 0
	lwz 29,148(3)
.LVL147:
	.loc 1 1353 0
	stw 0,148(3)
	.loc 1 1354 0
	bl R_SetupInstantForLight
.LVL148:
	.loc 1 1355 0
	lwz 0,2676(31)
	mulli 0,0,584
	add 30,30,0
	stw 29,148(30)
	b .L106
	.cfi_endproc
.LFE50:
	.size	R_MarkEntitiesOnList, .-R_MarkEntitiesOnList
	.align 2
	.globl R_DrawEntitiesShadowVolumes
	.type	R_DrawEntitiesShadowVolumes, @function
R_DrawEntitiesShadowVolumes:
.LFB51:
	.loc 1 1364 0
	.cfi_startproc
.LVL149:
	stwu 1,-64(1)
.LCFI39:
	.cfi_def_cfa_offset 64
	.loc 1 1370 0
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	.loc 1 1364 0
	mfcr 12
	stw 23,28(1)
	.loc 1 1370 0
	lis 23,.LANCHOR0@ha
	.cfi_offset 23, -36
	.cfi_register 70, 12
	la 23,.LANCHOR0@l(23)
	.loc 1 1364 0
	mflr 0
	.loc 1 1370 0
	lfs 13,92(23)
	.loc 1 1364 0
	stw 29,52(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_register 65, 0
	.loc 1 1370 0
	fcmpu 7,13,0
	.loc 1 1364 0
	stw 0,68(1)
	stw 24,32(1)
	stw 25,36(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 30,56(1)
	stw 31,60(1)
	stw 12,24(1)
	.loc 1 1370 0
	beq- 7,.L116
	.cfi_offset 70, -40
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 65, 4
.LVL150:
	.loc 1 1374 0 discriminator 1
	lis 27,cl_numlightvisedicts@ha
	lwz 0,cl_numlightvisedicts@l(27)
	cmpwi 7,0,0
	ble- 7,.L118
	.loc 1 1374 0 is_stmt 0
	lis 30,cl_lightvisedicts-4@ha
	lis 28,currententity@ha
	.loc 1 1380 0 is_stmt 1
	cmpwi 4,3,0
	cmpwi 3,3,2
	.loc 1 1374 0
	la 30,cl_lightvisedicts-4@l(30)
	li 31,0
	la 28,currententity@l(28)
	la 27,cl_numlightvisedicts@l(27)
.LBB9:
	.loc 1 1384 0
	lis 26,currentshadowlight@ha
	.loc 1 1385 0
	lis 24,.LC1@ha
	.loc 1 1388 0
	lis 25,.LC14@ha
	b .L122
.LVL151:
.L119:
.LBE9:
	.loc 1 1374 0
	lwz 0,0(27)
	addi 31,31,1
.LVL152:
	cmpw 7,0,31
	ble- 7,.L118
.LVL153:
.L122:
	.loc 1 1376 0
	lwzu 9,4(30)
	.loc 1 1378 0
	lwz 11,160(9)
	.loc 1 1376 0
	stw 9,0(28)
	.loc 1 1378 0
	lwz 0,68(11)
	cmpw 7,0,29
	bne+ 7,.L119
.LBB10:
	.loc 1 1394 0
	mr 3,9
.LBE10:
	.loc 1 1380 0
	bne- 4,.L125
.LBB11:
	.loc 1 1394 0
	bl R_DrawBrushModelVolumes
.LBE11:
	.loc 1 1374 0
	lwz 0,0(27)
	addi 31,31,1
.LVL154:
	cmpw 7,0,31
	bgt+ 7,.L122
.LVL155:
.L118:
	.loc 1 1402 0
	lis 9,mirror@ha
	lbz 0,mirror@l(9)
	cmpwi 7,0,0
	bne- 7,.L116
	.loc 1 1404 0
	lis 9,cl+2676@ha
	lis 31,currententity@ha
	lwz 3,cl+2676@l(9)
	lis 9,cl_entities@ha
	la 0,cl_entities@l(9)
	mulli 3,3,584
	add 3,3,0
	.loc 1 1407 0
	lwz 9,160(3)
	.loc 1 1404 0
	stw 3,currententity@l(31)
	.loc 1 1407 0
	cmpwi 7,9,0
	.loc 1 1405 0
	lwz 27,148(3)
.LVL156:
	lwz 28,152(3)
.LVL157:
	lwz 30,156(3)
.LVL158:
	.loc 1 1407 0
	beq- 7,.L123
	.loc 1 1409 0
	lwz 0,68(9)
	cmpw 7,0,29
	beq- 7,.L126
.LVL159:
.L123:
	.loc 1 1423 0
	stw 27,148(3)
	stw 28,152(3)
	stw 30,156(3)
.LVL160:
.L116:
	.loc 1 1425 0
	lwz 0,68(1)
	lwz 12,24(1)
	mtlr 0
	lwz 23,28(1)
	lwz 24,32(1)
	mtcrf 24,12
	lwz 25,36(1)
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
.LVL161:
	lwz 30,56(1)
	lwz 31,60(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI40:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
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
.LVL162:
.L125:
.LCFI41:
	.cfi_restore_state
	.loc 1 1380 0
	bne+ 3,.L119
.LBB12:
	.loc 1 1384 0
	lwz 11,currentshadowlight@l(26)
	.loc 1 1385 0
	addi 3,1,8
	.loc 1 1384 0
	lfs 9,112(9)
	lfs 12,0(11)
	lfs 13,4(11)
	lfs 0,8(11)
	fsubs 12,9,12
	lfs 10,116(9)
	lfs 11,120(9)
	fsubs 13,10,13
	stfs 12,8(1)
	fsubs 0,11,0
	stfs 13,12(1)
	stfs 0,16(1)
	.loc 1 1385 0
	bl Length
.LVL163:
	lwz 9,currentshadowlight@l(26)
	lfs 13,.LC1@l(24)
	lfs 12,36(9)
	.loc 1 1388 0
	lfd 0,.LC14@l(25)
	.loc 1 1385 0
	fdivs 12,1,12
	fsubs 13,13,12
	.loc 1 1388 0
	fcmpu 7,13,0
	blt+ 7,.L119
	.loc 1 1389 0
	lwz 3,0(28)
	crxor 6,6,6
	bl R_DrawAliasShadowVolume
.LVL164:
	.loc 1 1391 0
	b .L119
.LVL165:
.L126:
.LBE12:
	.loc 1 1409 0 discriminator 1
	cmpwi 7,29,2
	bne+ 7,.L123
	.loc 1 1410 0
	lis 9,.LC2@ha
	lfs 13,112(23)
	lfs 0,.LC2@l(9)
	fcmpu 7,13,0
	beq- 7,.L123
	.loc 1 1412 0
	lis 9,chase_active+12@ha
	lfs 13,chase_active+12@l(9)
	.loc 1 1411 0
	fcmpu 7,13,0
	bne- 7,.L123
	.loc 1 1415 0
	lis 9,currentshadowlight@ha
	lwz 9,currentshadowlight@l(9)
	lwz 0,2128(9)
	cmpw 7,3,0
	beq- 7,.L123
.LBB13:
	.loc 1 1417 0
	stfs 0,148(3)
	.loc 1 1418 0
	stfs 0,156(3)
	.loc 1 1419 0
	crxor 6,6,6
	bl R_DrawAliasShadowVolume
	lwz 3,currententity@l(31)
	b .L123
.LBE13:
	.cfi_endproc
.LFE51:
	.size	R_DrawEntitiesShadowVolumes, .-R_DrawEntitiesShadowVolumes
	.align 2
	.globl R_DrawLightSprites
	.type	R_DrawLightSprites, @function
R_DrawLightSprites:
.LFB52:
	.loc 1 1435 0
	.cfi_startproc
	.loc 1 1440 0
	lis 9,.LANCHOR0+92@ha
	.loc 1 1435 0
	mflr 0
	.loc 1 1440 0
	lfs 13,.LANCHOR0+92@l(9)
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	.loc 1 1435 0
	stwu 1,-56(1)
.LCFI42:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	.loc 1 1440 0
	fcmpu 7,13,0
	.loc 1 1435 0
	stw 0,60(1)
	stw 25,28(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 28,40(1)
	stw 29,44(1)
	stw 30,48(1)
	stw 31,52(1)
	.loc 1 1440 0
	beq- 7,.L127
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 65, 4
	.loc 1 1443 0
	lis 30,cl_numlightvisedicts@ha
	lwz 0,cl_numlightvisedicts@l(30)
	cmpwi 7,0,0
	bne- 7,.L136
.L127:
	.loc 1 1512 0
	lwz 0,60(1)
	lwz 25,28(1)
	mtlr 0
	lwz 26,32(1)
	lwz 27,36(1)
	lwz 28,40(1)
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI43:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
.L136:
.LCFI44:
	.cfi_restore_state
	.loc 1 1446 0
	li 3,3042
	.loc 1 1450 0
	lis 31,currentshadowlight@ha
	.loc 1 1446 0
	bl glEnable
	.loc 1 1447 0
	li 3,1
	li 4,1
	bl glBlendFunc
	.loc 1 1448 0
	li 3,0
	bl glDepthMask
	.loc 1 1450 0
	lwz 9,currentshadowlight@l(31)
	lwz 0,2152(9)
	cmpwi 7,0,0
	bne- 7,.L137
	.loc 1 1460 0
	li 3,0
	ori 3,3,33984
	bl GL_SelectTexture
	.loc 1 1461 0
	li 3,3553
	bl glEnable
	.loc 1 1462 0
	lis 9,.LC26@ha
	lfs 1,.LC26@l(9)
	li 3,8960
	li 4,8704
	bl glTexEnvf
	.loc 1 1463 0
	lis 9,.LC27@ha
	lfs 1,.LC27@l(9)
	li 4,0
	li 3,8960
	ori 4,4,34176
	bl glTexEnvf
	.loc 1 1464 0
	lis 9,.LC28@ha
	lfs 1,.LC28@l(9)
	li 4,0
	li 3,8960
	ori 4,4,34177
	bl glTexEnvf
	.loc 1 1465 0
	lis 9,.LC29@ha
	li 4,0
	lfs 1,.LC29@l(9)
	li 3,8960
	ori 4,4,34161
	bl glTexEnvf
.L130:
.LVL166:
	.loc 1 1468 0 discriminator 1
	lwz 0,cl_numlightvisedicts@l(30)
	cmpwi 7,0,0
	ble- 7,.L131
	.loc 1 1468 0 is_stmt 0
	lis 29,cl_lightvisedicts-4@ha
	lis 28,currententity@ha
	lis 27,cl_numlightvisedicts@ha
	la 29,cl_lightvisedicts-4@l(29)
	li 30,0
	la 28,currententity@l(28)
	la 27,cl_numlightvisedicts@l(27)
	.loc 1 1484 0 is_stmt 1
	lis 25,.LC1@ha
	.loc 1 1487 0
	lis 26,.LC14@ha
	b .L134
.LVL167:
.L132:
	.loc 1 1468 0
	lwz 0,0(27)
	addi 30,30,1
.LVL168:
	cmpw 7,0,30
	ble- 7,.L131
.LVL169:
.L134:
	.loc 1 1470 0
	lwzu 9,4(29)
	.loc 1 1472 0
	lwz 11,160(9)
	.loc 1 1470 0
	stw 9,0(28)
	.loc 1 1472 0
	lwz 0,68(11)
	cmpwi 7,0,1
	bne+ 7,.L132
	.loc 1 1474 0
	lwz 11,416(11)
	lwz 0,0(11)
	cmpwi 7,0,4
	ble- 7,.L132
	.loc 1 1477 0
	lwz 0,232(9)
	cmpwi 7,0,0
	bne+ 7,.L132
	.loc 1 1482 0
	lwz 11,currentshadowlight@l(31)
	.loc 1 1484 0
	addi 3,1,8
	.loc 1 1482 0
	lfs 9,112(9)
	lfs 12,0(11)
	lfs 13,4(11)
	lfs 0,8(11)
	fsubs 12,9,12
	lfs 10,116(9)
	lfs 11,120(9)
	fsubs 13,10,13
	stfs 12,8(1)
	fsubs 0,11,0
	stfs 13,12(1)
	stfs 0,16(1)
	.loc 1 1484 0
	bl Length
	lwz 9,currentshadowlight@l(31)
	lfs 12,.LC1@l(25)
	lfs 0,36(9)
	.loc 1 1487 0
	lfd 13,.LC14@l(26)
	.loc 1 1484 0
	fdivs 0,1,0
	fsubs 0,12,0
.LVL170:
	.loc 1 1487 0
	fmr 12,0
	fcmpu 7,12,13
	blt+ 7,.L132
	.loc 1 1490 0
	lfs 1,24(9)
	lfs 2,28(9)
	lfs 3,32(9)
	fmuls 1,0,1
	fmuls 2,0,2
	fmuls 3,0,3
	bl glColor3f
.LVL171:
	.loc 1 1494 0
	lwz 9,currentshadowlight@l(31)
	.loc 1 1495 0
	lwz 3,0(28)
	.loc 1 1494 0
	lwz 0,2152(9)
	cmpwi 7,0,0
	beq- 7,.L133
	.loc 1 1495 0
	bl R_DrawSpriteModelWV
	.loc 1 1468 0
	lwz 0,0(27)
	addi 30,30,1
.LVL172:
	cmpw 7,0,30
	bgt+ 7,.L134
.LVL173:
.L131:
	.loc 1 1503 0
	li 3,3042
	bl glDisable
	.loc 1 1505 0
	lwz 9,currentshadowlight@l(31)
	lwz 0,2152(9)
	cmpwi 7,0,0
	beq+ 7,.L127
	.loc 1 1507 0
	li 3,0
	bl GL_DisableColorShader
	.loc 1 1509 0
	bl glPopMatrix
	.loc 1 1510 0
	li 3,5888
	bl glMatrixMode
	b .L127
.L137:
	.loc 1 1452 0
	li 3,5890
	bl glMatrixMode
	.loc 1 1453 0
	bl glPushMatrix
	.loc 1 1454 0
	li 3,1
	bl GL_SetupCubeMapMatrix
	.loc 1 1456 0
	li 3,0
	bl GL_EnableColorShader
	b .L130
.L133:
	.loc 1 1497 0
	bl R_DrawSpriteModel
	b .L132
	.cfi_endproc
.LFE52:
	.size	R_DrawLightSprites, .-R_DrawLightSprites
	.align 2
	.globl R_DrawFullbrightSprites
	.type	R_DrawFullbrightSprites, @function
R_DrawFullbrightSprites:
.LFB53:
	.loc 1 1520 0
	.cfi_startproc
	.loc 1 1523 0
	lis 9,.LANCHOR0+92@ha
	.loc 1 1520 0
	mflr 0
	.loc 1 1523 0
	lfs 13,.LANCHOR0+92@l(9)
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	.loc 1 1520 0
	stwu 1,-32(1)
.LCFI45:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 1523 0
	fcmpu 7,13,0
	.loc 1 1520 0
	stw 0,36(1)
	stw 27,12(1)
	stw 28,16(1)
	stw 29,20(1)
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 1523 0
	beq- 7,.L138
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	.loc 1 1526 0
	lis 31,cl_numvisedicts@ha
	lwz 0,cl_numvisedicts@l(31)
	cmpwi 7,0,0
	bne- 7,.L145
.L138:
	.loc 1 1553 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI46:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.L145:
.LCFI47:
	.cfi_restore_state
	.loc 1 1529 0
	li 3,3042
	bl glEnable
	.loc 1 1530 0
	li 4,1
	li 3,770
	bl glBlendFunc
	.loc 1 1531 0
	li 3,0
	bl glDepthMask
	.loc 1 1532 0
	bl GL_DisableMultitexture
.LVL174:
	.loc 1 1533 0
	lwz 0,cl_numvisedicts@l(31)
	cmpwi 7,0,0
	ble- 7,.L140
	lis 29,cl_visedicts-4@ha
	lis 28,currententity@ha
	la 29,cl_visedicts-4@l(29)
	li 30,0
	la 28,currententity@l(28)
	la 31,cl_numvisedicts@l(31)
	.loc 1 1545 0
	lis 27,.LC1@ha
	b .L143
.LVL175:
.L141:
	.loc 1 1533 0
	lwz 0,0(31)
	addi 30,30,1
.LVL176:
	cmpw 7,0,30
	ble- 7,.L140
.LVL177:
.L143:
	.loc 1 1535 0
	lwzu 3,4(29)
	.loc 1 1537 0
	lwz 9,160(3)
	.loc 1 1535 0
	stw 3,0(28)
	.loc 1 1537 0
	lwz 0,68(9)
	cmpwi 7,0,1
	bne+ 7,.L141
	.loc 1 1538 0
	lwz 9,416(9)
	lwz 0,0(9)
	cmpwi 7,0,4
	ble- 7,.L142
	.loc 1 1539 0
	lwz 0,232(3)
	cmpwi 7,0,0
	beq+ 7,.L141
	.loc 1 1541 0
	addi 3,3,212
	.loc 1 1533 0
	addi 30,30,1
	.loc 1 1541 0
	bl glColor3fv
	.loc 1 1542 0
	lwz 3,0(28)
	bl R_DrawSpriteModel
.LVL178:
	.loc 1 1533 0
	lwz 0,0(31)
	cmpw 7,0,30
	bgt+ 7,.L143
.LVL179:
.L140:
	.loc 1 1551 0
	li 3,3042
	bl glDisable
	.loc 1 1552 0
	li 3,1
	bl glDepthMask
	.loc 1 1553 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI48:
	.cfi_def_cfa_offset 0
	blr
.L142:
.LCFI49:
	.cfi_restore_state
	.loc 1 1545 0
	lfs 1,.LC1@l(27)
	fmr 2,1
	fmr 3,1
	bl glColor3f
	.loc 1 1546 0
	lwz 3,0(28)
	bl R_DrawSpriteModel
	b .L141
	.cfi_endproc
.LFE53:
	.size	R_DrawFullbrightSprites, .-R_DrawFullbrightSprites
	.align 2
	.globl R_ShouldDrawViewModel
	.type	R_ShouldDrawViewModel, @function
R_ShouldDrawViewModel:
.LFB56:
	.loc 1 1675 0
	.cfi_startproc
	.loc 1 1676 0
	lis 9,.LANCHOR0@ha
	lis 11,.LC2@ha
	la 9,.LANCHOR0@l(9)
	lfs 0,.LC2@l(11)
	lfs 13,132(9)
	.loc 1 1677 0
	li 3,0
	.loc 1 1676 0
	fcmpu 7,13,0
	beqlr- 7
	.loc 1 1679 0
	lis 11,chase_active+12@ha
	lfs 13,chase_active+12@l(11)
	fcmpu 7,13,0
	bnelr- 7
	.loc 1 1682 0
	lis 11,envmap@ha
	lbz 0,envmap@l(11)
	cmpwi 7,0,0
	bnelr- 7
	.loc 1 1685 0
	lfs 13,92(9)
	fcmpu 7,13,0
	beqlr- 7
	.loc 1 1688 0
	lis 9,cl@ha
	la 9,cl@l(9)
	lwz 0,156(9)
	andis. 11,0,8
	bnelr- 0
	.loc 1 1691 0
	lwz 0,28(9)
	cmpwi 7,0,0
	blelr- 7
	.loc 1 1694 0
	lis 11,mirror@ha
	lbz 0,mirror@l(11)
	cmpwi 7,0,0
	bnelr- 7
	.loc 1 1697 0
	lwz 11,2864(9)
	.loc 1 1696 0
	lis 10,currententity@ha
	addi 9,9,2704
	.loc 1 1697 0
	cmpwi 7,11,0
	.loc 1 1696 0
	stw 9,currententity@l(10)
	.loc 1 1697 0
	beqlr- 7
	.loc 1 1674 0
	lwz 3,68(11)
	xori 3,3,2
	cntlzw 3,3
	srwi 3,3,5
	.loc 1 1704 0
	blr
	.cfi_endproc
.LFE56:
	.size	R_ShouldDrawViewModel, .-R_ShouldDrawViewModel
	.align 2
	.globl R_DrawViewModelLight
	.type	R_DrawViewModelLight, @function
R_DrawViewModelLight:
.LFB55:
	.loc 1 1626 0
	.cfi_startproc
	mflr 0
	stwu 1,-32(1)
.LCFI50:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 30,24(1)
	stw 0,36(1)
	stw 31,28(1)
	.loc 1 1656 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl R_ShouldDrawViewModel
	cmpwi 7,3,0
	bne- 7,.L158
.L156:
	.loc 1 1669 0
	lwz 0,36(1)
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI51:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.L158:
.LCFI52:
	.cfi_restore_state
	.loc 1 1660 0
	lis 31,currentshadowlight@ha
	lis 30,currententity@ha
	lwz 9,currententity@l(30)
	.loc 1 1661 0
	addi 3,1,8
	.loc 1 1660 0
	lwz 11,currentshadowlight@l(31)
	lfs 9,112(9)
	lfs 12,0(11)
	lfs 13,4(11)
	lfs 0,8(11)
	fsubs 12,9,12
	lfs 10,116(9)
	lfs 11,120(9)
	fsubs 13,10,13
	stfs 12,8(1)
	fsubs 0,11,0
	stfs 13,12(1)
	stfs 0,16(1)
	.loc 1 1661 0
	bl Length
	lwz 9,currentshadowlight@l(31)
	lfs 0,36(9)
	lis 9,.LC1@ha
	fdivs 0,1,0
	lfs 1,.LC1@l(9)
	.loc 1 1664 0
	lis 9,.LC14@ha
	.loc 1 1661 0
	fsubs 1,1,0
.LVL180:
	.loc 1 1664 0
	lfd 0,.LC14@l(9)
	fmr 13,1
	fcmpu 7,13,0
	blt+ 7,.L156
	.loc 1 1666 0
	fmr 2,1
	fmr 3,1
	fmr 4,1
	bl glColor4f
.LVL181:
	.loc 1 1668 0
	lwz 3,currententity@l(30)
	lis 4,R_DrawAliasBumped@ha
	la 4,R_DrawAliasBumped@l(4)
	bl R_DrawAliasObjectLight
	.loc 1 1669 0
	lwz 0,36(1)
	lwz 30,24(1)
	mtlr 0
	lwz 31,28(1)
	addi 1,1,32
	.cfi_restore 30
	.cfi_restore 31
.LCFI53:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE55:
	.size	R_DrawViewModelLight, .-R_DrawViewModelLight
	.align 2
	.globl R_DrawViewModel
	.type	R_DrawViewModel, @function
R_DrawViewModel:
.LFB54:
	.loc 1 1564 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI54:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	stw 0,20(1)
	.loc 1 1595 0
	.cfi_offset 65, 4
	.cfi_offset 31, -4
	bl R_ShouldDrawViewModel
	cmpwi 7,3,0
	beq- 7,.L159
	.loc 1 1599 0
	lis 31,.LANCHOR0@ha
	lis 9,.LC2@ha
	la 31,.LANCHOR0@l(31)
	lfs 0,.LC2@l(9)
	lfs 13,152(31)
	fcmpu 7,13,0
	bne- 7,.L164
	.loc 1 1604 0
	lis 9,.LC2@ha
	lfs 13,12(31)
	lfs 0,.LC2@l(9)
	.loc 1 1607 0
	lis 9,.LC31@ha
	lfs 1,.LC31@l(9)
	.loc 1 1604 0
	fcmpu 7,13,0
	bne- 7,.L165
.L162:
	.loc 1 1611 0
	bl R_DrawAliasModel
.L163:
	.loc 1 1613 0
	lis 9,.LC2@ha
	lfs 13,152(31)
	lfs 0,.LC2@l(9)
	fcmpu 7,13,0
	beq+ 7,.L159
	.loc 1 1614 0
	lis 9,gldepthmin@ha
	lfs 1,gldepthmin@l(9)
	lis 9,gldepthmax@ha
	lfs 2,gldepthmax@l(9)
	bl glDepthRange
.L159:
	.loc 1 1615 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI55:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.L165:
.LCFI56:
	.cfi_restore_state
	.loc 1 1606 0
	stfs 0,12(31)
	.loc 1 1607 0
	bl R_DrawAliasModel
	.loc 1 1608 0
	lis 9,.LC1@ha
	lwz 0,.LC1@l(9)
	stw 0,12(31)
	b .L163
.L164:
	.loc 1 1601 0
	lis 9,gldepthmin@ha
	lfs 1,gldepthmin@l(9)
	lis 9,gldepthmax@ha
	lfs 2,gldepthmax@l(9)
	lis 9,.LC30@ha
	fmr 0,1
	lfd 13,.LC30@l(9)
	fsubs 2,2,1
	fmadd 2,2,13,0
	bl glDepthRange
	.loc 1 1604 0
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	.loc 1 1607 0
	lis 9,.LC31@ha
	.loc 1 1604 0
	lfs 13,12(31)
	.loc 1 1607 0
	lfs 1,.LC31@l(9)
	.loc 1 1604 0
	fcmpu 7,13,0
	beq- 7,.L162
	b .L165
	.cfi_endproc
.LFE54:
	.size	R_DrawViewModel, .-R_DrawViewModel
	.align 2
	.globl R_AdjustGamma
	.type	R_AdjustGamma, @function
R_AdjustGamma:
.LFB57:
	.loc 1 1713 0
	.cfi_startproc
	mflr 0
	stwu 1,-40(1)
.LCFI57:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 1714 0
	lis 9,.LC32@ha
	.loc 1 1713 0
	stw 31,12(1)
	.loc 1 1714 0
	lis 31,v_gamma@ha
	.cfi_offset 31, -28
	.loc 1 1713 0
	stw 0,44(1)
	.loc 1 1714 0
	la 31,v_gamma@l(31)
	lfs 13,.LC32@l(9)
	lfs 0,12(31)
	.loc 1 1713 0
	stfd 29,16(1)
	.loc 1 1714 0
	fcmpu 7,0,13
	.loc 1 1713 0
	stfd 30,24(1)
	stfd 31,32(1)
	stw 30,8(1)
	.loc 1 1714 0
	bnl- 7,.L174
	.cfi_offset 30, -32
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	.loc 1 1715 0
	stfs 13,12(31)
	lis 30,.LC1@ha
.L169:
	.loc 1 1722 0
	li 4,771
	li 3,774
	bl glBlendFunc
	.loc 1 1723 0
	lfs 1,.LC1@l(30)
	lfs 4,12(31)
	fmr 2,1
	fmr 3,1
	bl glColor4f
	.loc 1 1724 0
	li 3,7
	bl glBegin
	.loc 1 1725 0
	lis 9,.LC33@ha
	lfs 30,.LC33@l(9)
	lis 9,.LC23@ha
	lfs 29,.LC23@l(9)
	fmr 2,30
	fmr 1,29
	fmr 3,30
	bl glVertex3f
	.loc 1 1726 0
	lis 9,.LC34@ha
	lfs 31,.LC34@l(9)
	fmr 1,29
	fmr 3,30
	fmr 2,31
	bl glVertex3f
	.loc 1 1727 0
	fmr 1,29
	fmr 2,31
	fmr 3,31
	bl glVertex3f
	.loc 1 1728 0
	fmr 1,29
	fmr 2,30
	fmr 3,31
	bl glVertex3f
	.loc 1 1730 0
	lis 9,.LC35@ha
	lfs 29,.LC35@l(9)
	fmr 2,30
	fmr 3,30
	fmr 1,29
	bl glVertex3f
	.loc 1 1731 0
	fmr 1,29
	fmr 2,31
	fmr 3,30
	bl glVertex3f
	.loc 1 1732 0
	fmr 1,29
	fmr 2,31
	fmr 3,31
	bl glVertex3f
	.loc 1 1733 0
	fmr 1,29
	fmr 2,30
	fmr 3,31
	bl glVertex3f
	.loc 1 1735 0
	bl glEnd
	.loc 1 1736 0
	lwz 0,44(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	lfd 29,16(1)
	lfd 30,24(1)
	lfd 31,32(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI58:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	.cfi_restore 30
	blr
.L174:
.LCFI59:
	.cfi_restore_state
	.loc 1 1716 0
	lis 30,.LC1@ha
	lfs 13,.LC1@l(30)
	fcmpu 7,0,13
	cror 30,29,30
	bne- 7,.L169
	.loc 1 1736 0
	lwz 0,44(1)
	.loc 1 1718 0
	stfs 13,12(31)
	.loc 1 1736 0
	mtlr 0
	lwz 30,8(1)
	lwz 31,12(1)
	lfd 29,16(1)
	lfd 30,24(1)
	lfd 31,32(1)
	addi 1,1,40
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI60:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE57:
	.size	R_AdjustGamma, .-R_AdjustGamma
	.align 2
	.globl R_PolyBlend
	.type	R_PolyBlend, @function
R_PolyBlend:
.LFB58:
	.loc 1 1744 0
	.cfi_startproc
	stwu 1,-40(1)
.LCFI61:
	.cfi_def_cfa_offset 40
	.loc 1 1745 0
	lis 9,.LANCHOR0+172@ha
	lfs 0,.LANCHOR0+172@l(9)
	lis 9,.LC2@ha
	.loc 1 1744 0
	stfd 31,32(1)
	mflr 0
	.loc 1 1745 0
	lfs 31,.LC2@l(9)
	.cfi_register 65, 0
	.cfi_offset 63, -8
	.loc 1 1744 0
	stfd 29,16(1)
	.loc 1 1745 0
	fcmpu 7,0,31
	.loc 1 1744 0
	stw 0,44(1)
	stfd 30,24(1)
	stw 31,12(1)
	.loc 1 1745 0
	bne- 7,.L179
	.cfi_offset 31, -28
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	.cfi_offset 61, -24
	.loc 1 1782 0
	lwz 0,44(1)
	lwz 31,12(1)
	mtlr 0
	lfd 29,16(1)
	lfd 30,24(1)
	lfd 31,32(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI62:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	blr
.L179:
.LCFI63:
	.cfi_restore_state
	.loc 1 1748 0
	bl GL_DisableMultitexture
	.loc 1 1750 0
	li 4,771
	li 3,770
	.loc 1 1758 0
	lis 31,.LC1@ha
	.loc 1 1750 0
	bl glBlendFunc
	.loc 1 1752 0
	li 3,3042
	bl glEnable
	.loc 1 1753 0
	li 3,2929
	bl glDisable
	.loc 1 1754 0
	li 3,3553
	bl glDisable
	.loc 1 1756 0
	bl glLoadIdentity
	.loc 1 1758 0
	lfs 30,.LC1@l(31)
	lis 9,.LC36@ha
	fmr 3,31
	fmr 2,30
	lfs 1,.LC36@l(9)
	fmr 4,31
	bl glRotatef
	.loc 1 1759 0
	lis 9,.LC37@ha
	fmr 2,31
	lfs 1,.LC37@l(9)
	fmr 3,31
	fmr 4,30
	bl glRotatef
	.loc 1 1761 0
	lis 3,v_blend@ha
	la 3,v_blend@l(3)
	lfs 0,12(3)
	fcmpu 7,0,31
	bne- 7,.L180
	.loc 1 1775 0
	lis 9,v_gamma+12@ha
	lfs 0,.LC1@l(31)
	lfs 13,v_gamma+12@l(9)
	fcmpu 7,13,0
	bne- 7,.L181
.L178:
	.loc 1 1778 0
	li 4,771
	li 3,770
	bl glBlendFunc
	.loc 1 1779 0
	li 3,3042
	bl glDisable
	.loc 1 1780 0
	li 3,3553
	bl glEnable
	.loc 1 1781 0
	li 3,3008
	bl glEnable
	.loc 1 1782 0
	lwz 0,44(1)
	lwz 31,12(1)
	mtlr 0
	lfd 29,16(1)
	lfd 30,24(1)
	lfd 31,32(1)
	addi 1,1,40
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI64:
	.cfi_def_cfa_offset 0
	blr
.L180:
.LCFI65:
	.cfi_restore_state
	.loc 1 1763 0
	bl glColor4fv
	.loc 1 1765 0
	li 3,7
	bl glBegin
	.loc 1 1767 0
	lis 9,.LC33@ha
	lfs 30,.LC33@l(9)
	lis 9,.LC23@ha
	lfs 29,.LC23@l(9)
	fmr 2,30
	fmr 1,29
	fmr 3,30
	bl glVertex3f
	.loc 1 1768 0
	lis 9,.LC34@ha
	lfs 31,.LC34@l(9)
	fmr 1,29
	fmr 3,30
	fmr 2,31
	bl glVertex3f
	.loc 1 1769 0
	fmr 1,29
	fmr 2,31
	fmr 3,31
	bl glVertex3f
	.loc 1 1770 0
	fmr 1,29
	fmr 2,30
	fmr 3,31
	bl glVertex3f
	.loc 1 1771 0
	bl glEnd
	.loc 1 1775 0
	lis 9,v_gamma+12@ha
	lfs 0,.LC1@l(31)
	lfs 13,v_gamma+12@l(9)
	fcmpu 7,13,0
	beq+ 7,.L178
.L181:
	.loc 1 1776 0
	bl R_AdjustGamma
	b .L178
	.cfi_endproc
.LFE58:
	.size	R_PolyBlend, .-R_PolyBlend
	.align 2
	.globl SignbitsForPlane
	.type	SignbitsForPlane, @function
SignbitsForPlane:
.LFB59:
	.loc 1 1786 0
	.cfi_startproc
.LVL182:
	.loc 1 1794 0
	lis 9,.LC2@ha
	lfs 12,4(3)
	lfs 0,.LC2@l(9)
	lfs 13,0(3)
	fcmpu 7,12,0
	fcmpu 6,13,0
	mfcr 0
	rlwinm 0,0,25,1
.LVL183:
	bnl- 7,.L183
	.loc 1 1795 0
	ori 0,0,2
.LVL184:
.L183:
	.loc 1 1794 0
	lis 9,.LC2@ha
	lfs 13,8(3)
	lfs 0,.LC2@l(9)
	fcmpu 7,13,0
	bnl- 7,.L185
	.loc 1 1795 0
	ori 0,0,4
.LVL185:
.L185:
	.loc 1 1798 0
	mr 3,0
.LVL186:
	blr
	.cfi_endproc
.LFE59:
	.size	SignbitsForPlane, .-SignbitsForPlane
	.align 2
	.globl R_SetFrustum
	.type	R_SetFrustum, @function
R_SetFrustum:
.LFB60:
	.loc 1 1802 0
	.cfi_startproc
	stwu 1,-40(1)
.LCFI66:
	.cfi_def_cfa_offset 40
	.loc 1 1805 0
	lis 9,.LC37@ha
	.loc 1 1802 0
	mflr 0
	stw 30,16(1)
	.loc 1 1805 0
	lis 30,r_refdef@ha
	.cfi_offset 30, -24
	.cfi_register 65, 0
	la 30,r_refdef@l(30)
	.loc 1 1802 0
	stfd 31,32(1)
	.loc 1 1805 0
	lfs 0,136(30)
	lfs 31,.LC37@l(9)
	.cfi_offset 63, -8
	.loc 1 1802 0
	stw 0,44(1)
	.loc 1 1805 0
	fcmpu 7,0,31
	.loc 1 1802 0
	stfd 30,24(1)
	stw 28,8(1)
	stw 29,12(1)
	stw 31,20(1)
	.loc 1 1805 0
	bne- 7,.L190
	.cfi_offset 31, -20
	.cfi_offset 29, -28
	.cfi_offset 28, -32
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	.loc 1 1809 0
	lis 6,vpn@ha
	lis 8,vright@ha
	.loc 1 1812 0
	lis 11,vup@ha
	.loc 1 1809 0
	la 7,vpn@l(6)
	.loc 1 1812 0
	la 9,vup@l(11)
	.loc 1 1809 0
	la 10,vright@l(8)
	lfs 12,vpn@l(6)
	lfs 13,4(7)
	lfs 0,8(7)
	.loc 1 1812 0
	lfs 10,4(9)
	lfs 11,8(9)
	.loc 1 1809 0
	lis 9,frustum@ha
	lfs 6,vright@l(8)
	.loc 1 1812 0
	fadds 4,13,10
	.loc 1 1809 0
	lfs 7,4(10)
	.loc 1 1812 0
	fadds 5,0,11
	.loc 1 1809 0
	lfs 8,8(10)
	fadds 31,12,6
	.loc 1 1812 0
	lfs 9,vup@l(11)
	.loc 1 1809 0
	fadds 1,13,7
	fadds 2,0,8
	la 31,frustum@l(9)
	.loc 1 1810 0
	fsubs 6,12,6
	.loc 1 1809 0
	stfs 31,frustum@l(9)
	.loc 1 1810 0
	fsubs 7,13,7
	.loc 1 1809 0
	stfs 1,4(31)
	.loc 1 1810 0
	fsubs 8,0,8
	.loc 1 1809 0
	stfs 2,8(31)
	.loc 1 1812 0
	fadds 3,12,9
	.loc 1 1810 0
	stfs 6,20(31)
	.loc 1 1813 0
	fsubs 12,12,9
	.loc 1 1810 0
	stfs 7,24(31)
	.loc 1 1813 0
	fsubs 13,13,10
	.loc 1 1810 0
	stfs 8,28(31)
	.loc 1 1813 0
	fsubs 0,0,11
	.loc 1 1812 0
	stfs 3,40(31)
	stfs 4,44(31)
	stfs 5,48(31)
	.loc 1 1813 0
	stfs 12,60(31)
	stfs 13,64(31)
	stfs 0,68(31)
.L191:
.LVL187:
	.loc 1 1821 0 discriminator 1
	lis 11,r_origin@ha
.LBB16:
.LBB17:
	.loc 1 1794 0 discriminator 1
	lis 10,.LC2@ha
.LBE17:
.LBE16:
	.loc 1 1821 0 discriminator 1
	la 9,r_origin@l(11)
.LBB22:
.LBB18:
	.loc 1 1794 0 discriminator 1
	li 0,4
.LBE18:
.LBE22:
	.loc 1 1821 0 discriminator 1
	lfs 9,4(9)
.LBB23:
.LBB19:
	.loc 1 1794 0 discriminator 1
	mtctr 0
.LBE19:
.LBE23:
	.loc 1 1821 0 discriminator 1
	lfs 10,8(9)
	lis 9,frustum+16@ha
.LBB24:
.LBB20:
	.loc 1 1794 0 discriminator 1
	lfs 0,.LC2@l(10)
.LBE20:
.LBE24:
	.loc 1 1821 0 discriminator 1
	la 9,frustum+16@l(9)
	lfs 8,r_origin@l(11)
	.loc 1 1826 0 discriminator 1
	li 8,5
	.loc 1 1802 0 discriminator 1
	li 11,0
.LVL188:
.L196:
	.loc 1 1827 0 discriminator 2
	lfs 13,-12(9)
	.loc 1 1828 0 discriminator 2
	mulli 0,11,20
	.loc 1 1827 0 discriminator 2
	lfs 11,-16(9)
	.loc 1 1824 0 discriminator 2
	addi 11,11,1
	.loc 1 1827 0 discriminator 2
	fmuls 13,9,13
	lfs 12,-8(9)
	.loc 1 1826 0 discriminator 2
	stb 8,0(9)
	.loc 1 1828 0 discriminator 2
	add 10,31,0
.LVL189:
	.loc 1 1827 0 discriminator 2
	fmadds 13,11,8,13
	fmadds 13,10,12,13
	stfs 13,-4(9)
.LBB25:
.LBB21:
	.loc 1 1794 0 discriminator 2
	lfs 12,4(10)
	lfsx 13,31,0
	fcmpu 7,12,0
	fcmpu 6,13,0
	mfcr 0
	rlwinm 0,0,25,1
.LVL190:
	bnl- 7,.L192
	.loc 1 1795 0
	ori 0,0,2
.LVL191:
.L192:
	.loc 1 1794 0
	lfs 13,8(10)
	fcmpu 7,13,0
	bnl- 7,.L194
	.loc 1 1795 0
	ori 0,0,4
.LVL192:
.L194:
.LBE21:
.LBE25:
	.loc 1 1828 0
	stb 0,1(9)
	.loc 1 1824 0
	addi 9,9,20
	bdnz .L196
	.loc 1 1830 0
	lwz 0,44(1)
.LVL193:
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	lfd 30,24(1)
	lfd 31,32(1)
	addi 1,1,40
	.cfi_remember_state
.LCFI67:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL194:
.L190:
.LCFI68:
	.cfi_restore_state
	.loc 1 1818 0
	fmr 1,0
	lis 9,.LC39@ha
	lfs 30,.LC39@l(9)
	lis 29,vpn@ha
	lis 9,frustum@ha
	lis 28,vup@ha
	.loc 1 1801 0
	fneg 1,1
	.loc 1 1818 0
	la 31,frustum@l(9)
	la 29,vpn@l(29)
	la 28,vup@l(28)
	mr 3,31
	mr 4,28
	fmadd 1,1,30,31
	mr 5,29
	frsp 1,1
	fneg 1,1
	bl RotatePointAroundVector
	.loc 1 1819 0
	lfs 1,136(30)
	addi 3,31,20
	mr 4,28
	.loc 1 1801 0
	fneg 1,1
	.loc 1 1819 0
	mr 5,29
	.loc 1 1820 0
	lis 28,vright@ha
	la 28,vright@l(28)
	.loc 1 1819 0
	fmadd 1,1,30,31
	frsp 1,1
	bl RotatePointAroundVector
	.loc 1 1820 0
	lfs 1,140(30)
	addi 3,31,40
	mr 4,28
	.loc 1 1801 0
	fneg 1,1
	.loc 1 1820 0
	mr 5,29
	fmadd 1,1,30,31
	frsp 1,1
	bl RotatePointAroundVector
	.loc 1 1821 0
	lfs 1,140(30)
	addi 3,31,60
	mr 4,28
	.loc 1 1801 0
	fneg 1,1
	.loc 1 1821 0
	mr 5,29
	fmadd 1,1,30,31
	frsp 1,1
	fneg 1,1
	bl RotatePointAroundVector
	b .L191
	.cfi_endproc
.LFE60:
	.size	R_SetFrustum, .-R_SetFrustum
	.align 2
	.globl R_SetupFrame
	.type	R_SetupFrame, @function
R_SetupFrame:
.LFB61:
	.loc 1 1840 0
	.cfi_startproc
	stwu 1,-24(1)
.LCFI69:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 29,12(1)
	.loc 1 1843 0
	lis 29,cl@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
	la 29,cl@l(29)
	.loc 1 1840 0
	stw 0,28(1)
	.loc 1 1843 0
	lwz 0,2680(29)
	.cfi_offset 65, 4
	.loc 1 1840 0
	stw 30,16(1)
	.loc 1 1843 0
	cmpwi 7,0,1
	.loc 1 1840 0
	stw 31,20(1)
	.loc 1 1843 0
	ble- 7,.L201
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.loc 1 1845 0
	lis 31,.LC42@ha
	lis 3,.LC41@ha
	la 31,.LC42@l(31)
	la 3,.LC41@l(3)
	mr 4,31
	bl Cvar_Set
	.loc 1 1846 0
	lis 3,.LC43@ha
	la 3,.LC43@l(3)
	mr 4,31
	bl Cvar_Set
.L201:
	.loc 1 1849 0
	bl R_AnimateLight
	.loc 1 1854 0
	lis 3,r_refdef@ha
	la 3,r_refdef@l(3)
	.loc 1 1851 0
	lis 11,r_framecount@ha
	.loc 1 1854 0
	lwz 10,116(3)
	lis 9,r_origin@ha
	lwz 0,120(3)
	la 31,r_origin@l(9)
	.loc 1 1851 0
	lwz 7,r_framecount@l(11)
	.loc 1 1856 0
	lis 5,vright@ha
	.loc 1 1854 0
	lwz 8,112(3)
	.loc 1 1856 0
	lis 6,vup@ha
	.loc 1 1854 0
	stw 10,4(31)
	.loc 1 1856 0
	lis 4,vpn@ha
	.loc 1 1854 0
	stw 0,8(31)
	.loc 1 1851 0
	addi 7,7,1
	.loc 1 1856 0
	la 5,vright@l(5)
	la 6,vup@l(6)
	.loc 1 1859 0
	lis 30,r_viewleaf@ha
	.loc 1 1856 0
	addi 3,3,124
	la 4,vpn@l(4)
	.loc 1 1851 0
	stw 7,r_framecount@l(11)
	.loc 1 1854 0
	stw 8,r_origin@l(9)
	.loc 1 1856 0
	bl AngleVectors
	.loc 1 1859 0
	lwz 0,r_viewleaf@l(30)
	lis 9,r_oldviewleaf@ha
	.loc 1 1860 0
	lwz 4,2688(29)
	mr 3,31
	.loc 1 1859 0
	stw 0,r_oldviewleaf@l(9)
	.loc 1 1860 0
	bl Mod_PointInLeaf
	mr 9,3
	.loc 1 1862 0
	lwz 3,0(3)
	.loc 1 1860 0
	stw 9,r_viewleaf@l(30)
	.loc 1 1862 0
	bl V_SetContentsColor
	.loc 1 1863 0
	bl V_CalcBlend
	.loc 1 1865 0
	lis 9,r_cache_thrash@ha
	li 11,0
	.loc 1 1867 0
	li 0,0
	.loc 1 1865 0
	stb 11,r_cache_thrash@l(9)
	.loc 1 1867 0
	lis 9,c_brush_polys@ha
	stw 0,c_brush_polys@l(9)
	.loc 1 1868 0
	lis 9,c_alias_polys@ha
	stw 0,c_alias_polys@l(9)
	.loc 1 1870 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI70:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE61:
	.size	R_SetupFrame, .-R_SetupFrame
	.align 2
	.globl cotan
	.type	cotan, @function
cotan:
.LFB62:
	.loc 1 1874 0
	.cfi_startproc
.LVL195:
	stwu 1,-24(1)
.LCFI71:
	.cfi_def_cfa_offset 24
	mflr 0
	stfd 30,8(1)
	fmr 30,1
	.cfi_offset 62, -16
	.cfi_register 65, 0
	stw 0,28(1)
	stfd 31,16(1)
	.loc 1 1875 0
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	bl cos
.LVL196:
	fmr 31,1
	fmr 1,30
	bl sin
	.loc 1 1876 0
	lwz 0,28(1)
	fdiv 1,31,1
	lfd 30,8(1)
.LVL197:
	mtlr 0
	lfd 31,16(1)
	addi 1,1,24
.LCFI72:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	blr
	.cfi_endproc
.LFE62:
	.size	cotan, .-cotan
	.align 2
	.globl pentaGlPerspective
	.type	pentaGlPerspective, @function
pentaGlPerspective:
.LFB63:
	.loc 1 1888 0
	.cfi_startproc
.LVL198:
	stwu 1,-24(1)
.LCFI73:
	.cfi_def_cfa_offset 24
	mflr 0
	stfd 31,16(1)
	fmr 31,2
	.cfi_offset 63, -8
	.cfi_register 65, 0
	stw 0,28(1)
	stfd 30,8(1)
	.loc 1 1888 0
	fmr 30,3
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	.loc 1 1896 0
	bl tan
.LVL199:
	lis 9,.LC1@ha
	fmul 31,1,31
.LVL200:
	lfs 0,.LC1@l(9)
	.loc 1 1898 0
	lis 11,.LC46@ha
	.loc 1 1896 0
	lis 9,.LANCHOR0@ha
	.loc 1 1897 0
	fdiv 1,0,1
	.loc 1 1898 0
	lfs 13,.LC46@l(11)
	.loc 1 1896 0
	la 9,.LANCHOR0@l(9)
	.loc 1 1899 0
	lis 11,.LC21@ha
	.loc 1 1898 0
	stfd 13,264(9)
	.loc 1 1901 0
	addi 3,9,184
	.loc 1 1899 0
	lfs 13,.LC21@l(11)
	lis 11,.LC49@ha
	.loc 1 1896 0
	fdiv 0,0,31
	.loc 1 1897 0
	stfd 1,224(9)
	.loc 1 1899 0
	fmul 30,30,13
.LVL201:
	.loc 1 1896 0
	stfd 0,184(9)
	.loc 1 1899 0
	lfs 0,.LC49@l(11)
	fmul 30,30,0
	stfd 30,296(9)
	.loc 1 1901 0
	bl glLoadMatrixd
	.loc 1 1902 0
	lwz 0,28(1)
	lfd 30,8(1)
	mtlr 0
	lfd 31,16(1)
	addi 1,1,24
.LCFI74:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	blr
	.cfi_endproc
.LFE63:
	.size	pentaGlPerspective, .-pentaGlPerspective
	.align 2
	.globl pentaGlFrustum
	.type	pentaGlFrustum, @function
pentaGlFrustum:
.LFB64:
	.loc 1 1907 0
	.cfi_startproc
.LVL202:
	.loc 1 1915 0
	fsub 13,2,1
	.loc 1 1907 0
	mflr 0
	.loc 1 1915 0
	fadd 12,5,5
	.loc 1 1907 0
	stwu 1,-8(1)
.LCFI75:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 1918 0
	fadd 1,2,1
.LVL203:
	.loc 1 1917 0
	lis 11,.LC46@ha
	.loc 1 1916 0
	fsub 0,4,3
	.loc 1 1915 0
	lis 9,.LANCHOR0@ha
	fdiv 11,12,13
	la 9,.LANCHOR0@l(9)
	.loc 1 1917 0
	lfs 10,.LC46@l(11)
	.loc 1 1920 0
	lis 11,.LC21@ha
	.loc 1 1907 0
	stw 0,12(1)
	.loc 1 1922 0
	addi 3,9,312
	.loc 1 1917 0
	stfd 10,392(9)
	.loc 1 1918 0
	fdiv 13,1,13
	.loc 1 1915 0
	stfd 11,312(9)
	.loc 1 1919 0
	fadd 3,4,3
.LVL204:
	.loc 1 1918 0
	stfd 13,376(9)
	.loc 1 1916 0
	fdiv 12,12,0
	.loc 1 1920 0
	lfs 13,.LC21@l(11)
	lis 11,.LC49@ha
	.loc 1 1919 0
	fdiv 0,3,0
	.loc 1 1916 0
	stfd 12,352(9)
	.loc 1 1920 0
	fmul 5,5,13
.LVL205:
	.loc 1 1919 0
	stfd 0,384(9)
	.loc 1 1920 0
	lfs 0,.LC49@l(11)
	fmul 5,5,0
	stfd 5,424(9)
	.loc 1 1922 0
	.cfi_offset 65, 4
	bl glLoadMatrixd
.LVL206:
	.loc 1 1923 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI76:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE64:
	.size	pentaGlFrustum, .-pentaGlFrustum
	.align 2
	.globl ExtractFrustum
	.type	ExtractFrustum, @function
ExtractFrustum:
.LFB65:
	.loc 1 1934 0
	.cfi_startproc
	stwu 1,-320(1)
.LCFI77:
	.cfi_def_cfa_offset 320
	mflr 0
	.loc 1 1941 0
	li 3,2983
	addi 4,1,72
	.loc 1 1934 0
	stfd 14,176(1)
	stw 0,324(1)
	stfd 15,184(1)
	stfd 16,192(1)
	stfd 17,200(1)
	stfd 18,208(1)
	stfd 19,216(1)
	stfd 20,224(1)
	stfd 21,232(1)
	stfd 22,240(1)
	stfd 23,248(1)
	stfd 24,256(1)
	stfd 25,264(1)
	stfd 26,272(1)
	stfd 27,280(1)
	stfd 28,288(1)
	stfd 29,296(1)
	stfd 30,304(1)
	stfd 31,312(1)
	stw 30,168(1)
	.loc 1 1968 0
	lis 30,frustumPlanes@ha
	.cfi_offset 30, -152
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.cfi_offset 54, -80
	.cfi_offset 53, -88
	.cfi_offset 52, -96
	.cfi_offset 51, -104
	.cfi_offset 50, -112
	.cfi_offset 49, -120
	.cfi_offset 48, -128
	.cfi_offset 47, -136
	.cfi_offset 46, -144
	.cfi_offset 65, 4
	.loc 1 1934 0
	stw 31,172(1)
	.loc 1 1941 0
	.cfi_offset 31, -148
	bl glGetFloatv
	.loc 1 1944 0
	addi 4,1,8
	li 3,2982
	bl glGetFloatv
	.loc 1 1947 0
	lfs 18,88(1)
	.loc 1 1950 0
	lfs 31,100(1)
	.loc 1 1968 0
	la 31,frustumPlanes@l(30)
	.loc 1 1952 0
	lfs 16,28(1)
	.loc 1 1947 0
	lfs 7,72(1)
	.loc 1 1952 0
	fmuls 25,18,16
	.loc 1 1950 0
	lfs 8,84(1)
	.loc 1 1955 0
	fmuls 28,31,16
	.loc 1 1952 0
	lfs 23,24(1)
	.loc 1 1947 0
	lfs 17,104(1)
	.loc 1 1952 0
	fmadds 25,7,23,25
	.loc 1 1950 0
	lfs 10,116(1)
	.loc 1 1955 0
	fmadds 28,8,23,28
	.loc 1 1952 0
	lfs 5,32(1)
	.loc 1 1947 0
	lfs 15,12(1)
	.loc 1 1952 0
	fmadds 25,17,5,25
	lfs 12,36(1)
	.loc 1 1955 0
	fmadds 28,10,5,28
	.loc 1 1950 0
	lfs 20,132(1)
	.loc 1 1947 0
	lfs 21,120(1)
	fmuls 26,15,18
	.loc 1 1950 0
	fmuls 29,15,31
	.loc 1 1947 0
	lfs 22,8(1)
	.loc 1 1955 0
	fmadds 28,20,12,28
	.loc 1 1948 0
	lfs 1,92(1)
	.loc 1 1949 0
	lfs 2,96(1)
	.loc 1 1952 0
	fmadds 25,21,12,25
	.loc 1 1962 0
	lfs 0,60(1)
	.loc 1 1947 0
	fmadds 26,22,7,26
	.loc 1 1957 0
	lfs 19,44(1)
	.loc 1 1950 0
	fmadds 29,22,8,29
	.loc 1 1947 0
	lfs 4,16(1)
	.loc 1 1948 0
	fmuls 14,15,1
	.loc 1 1949 0
	fmuls 15,15,2
	.loc 1 1962 0
	lfs 3,56(1)
	.loc 1 1969 0
	fsubs 9,28,25
	.loc 1 1957 0
	lfs 24,40(1)
	fmuls 27,18,19
	.loc 1 1947 0
	lfs 11,20(1)
	.loc 1 1962 0
	fmuls 18,18,0
	.loc 1 1949 0
	stfs 15,140(1)
	.loc 1 1947 0
	fmadds 26,4,17,26
	.loc 1 1957 0
	lfs 6,48(1)
	.loc 1 1950 0
	fmadds 29,4,10,29
	.loc 1 1948 0
	stfs 14,136(1)
	.loc 1 1953 0
	fmuls 15,1,16
	.loc 1 1957 0
	lfs 13,52(1)
	.loc 1 1954 0
	fmuls 16,2,16
	.loc 1 1962 0
	fmadds 18,7,3,18
	.loc 1 1960 0
	fmuls 30,31,19
	.loc 1 1953 0
	stfs 15,144(1)
	.loc 1 1957 0
	fmadds 27,7,24,27
	.loc 1 1954 0
	stfs 16,148(1)
	.loc 1 1974 0
	fmuls 7,9,9
	.loc 1 1965 0
	fmuls 31,31,0
	.loc 1 1950 0
	fmadds 29,11,20,29
	.loc 1 1947 0
	fmadds 26,11,21,26
.LVL207:
	.loc 1 1974 0
	stfs 7,160(1)
	.loc 1 1958 0
	fmuls 16,1,19
	.loc 1 1962 0
	lfs 7,64(1)
	.loc 1 1959 0
	fmuls 19,2,19
	.loc 1 1965 0
	fmadds 31,8,3,31
	.loc 1 1960 0
	fmadds 30,8,24,30
	.loc 1 1958 0
	stfs 16,152(1)
	.loc 1 1968 0
	fsubs 8,29,26
	.loc 1 1959 0
	stfs 19,156(1)
	.loc 1 1974 0
	lfs 19,160(1)
	.loc 1 1965 0
	fmadds 31,10,7,31
	.loc 1 1960 0
	fmadds 30,10,6,30
	.loc 1 1962 0
	fmadds 18,17,7,18
	.loc 1 1974 0
	fmadds 14,8,8,19
	.loc 1 1948 0
	lfs 19,136(1)
	.loc 1 1964 0
	fmuls 15,2,0
	.loc 1 1949 0
	lfs 2,80(1)
	.loc 1 1957 0
	fmadds 27,17,6,27
	.loc 1 1963 0
	fmuls 17,1,0
	.loc 1 1962 0
	lfs 0,68(1)
	.loc 1 1948 0
	lfs 1,76(1)
	.loc 1 1960 0
	fmadds 30,20,13,30
	.loc 1 1965 0
	fmadds 31,20,0,31
	.loc 1 1949 0
	lfs 20,140(1)
	.loc 1 1948 0
	fmadds 16,22,1,19
	.loc 1 1953 0
	lfs 19,144(1)
	.loc 1 1949 0
	fmadds 22,22,2,20
	.loc 1 1953 0
	fmadds 20,1,23,19
	.loc 1 1954 0
	lfs 19,148(1)
	.loc 1 1957 0
	fmadds 27,21,13,27
	.loc 1 1954 0
	fmadds 23,2,23,19
	.loc 1 1958 0
	lfs 19,152(1)
	.loc 1 1962 0
	fmadds 21,21,0,18
	.loc 1 1958 0
	fmadds 18,1,24,19
	.loc 1 1959 0
	lfs 19,156(1)
	.loc 1 1970 0
	fsubs 10,30,27
	.loc 1 1959 0
	fmadds 24,2,24,19
	.loc 1 1949 0
	lfs 19,112(1)
	.loc 1 1963 0
	fmadds 17,1,3,17
	.loc 1 1948 0
	lfs 1,108(1)
	.loc 1 1964 0
	fmadds 2,2,3,15
	.loc 1 1974 0
	fmadds 14,10,10,14
	.loc 1 1953 0
	fmadds 20,1,5,20
	.loc 1 1954 0
	fmadds 23,19,5,23
	.loc 1 1959 0
	fmadds 24,19,6,24
	.loc 1 1958 0
	fmadds 5,1,6,18
	.loc 1 1949 0
	lfs 18,128(1)
	.loc 1 1971 0
	fsubs 6,31,21
	.loc 1 1948 0
	fmadds 16,4,1,16
	.loc 1 1949 0
	fmadds 22,4,19,22
	.loc 1 1963 0
	fmadds 17,1,7,17
	.loc 1 1964 0
	fmadds 2,19,7,2
	.loc 1 1974 0
	fmr 1,14
	.loc 1 1948 0
	lfs 14,124(1)
	.loc 1 1968 0
	stfs 8,frustumPlanes@l(30)
	.loc 1 1949 0
	fmadds 22,11,18,22
	.loc 1 1969 0
	stfs 9,4(31)
	.loc 1 1958 0
	fmadds 19,14,13,5
	.loc 1 1971 0
	stfs 6,12(31)
	.loc 1 1948 0
	fmadds 16,11,14,16
.LVL208:
	.loc 1 1970 0
	stfs 10,8(31)
	.loc 1 1953 0
	fmadds 20,14,12,20
.LVL209:
	.loc 1 1954 0
	fmadds 23,18,12,23
.LVL210:
	.loc 1 1959 0
	fmadds 24,18,13,24
	.loc 1 1963 0
	fmadds 17,14,0,17
	.loc 1 1964 0
	fmadds 18,18,0,2
	.loc 1 1974 0
	bl sqrt
	frsp 1,1
.LVL211:
	.loc 1 1976 0
	lfs 12,4(31)
	.loc 1 1977 0
	lfs 13,8(31)
	.loc 1 1982 0
	fadds 25,25,28
.LVL212:
	.loc 1 1978 0
	lfs 0,12(31)
	.loc 1 1981 0
	fadds 26,26,29
.LVL213:
	.loc 1 1975 0
	lfs 11,frustumPlanes@l(30)
	.loc 1 1976 0
	fdivs 12,12,1
	.loc 1 1982 0
	stfs 25,20(31)
	.loc 1 1981 0
	stfs 26,16(31)
	.loc 1 1977 0
	fdivs 13,13,1
	.loc 1 1976 0
	stfs 12,4(31)
	.loc 1 1978 0
	fdivs 0,0,1
	.loc 1 1977 0
	stfs 13,8(31)
	.loc 1 1975 0
	fdivs 11,11,1
	.loc 1 1978 0
	stfs 0,12(31)
	.loc 1 1987 0
	fmuls 1,25,25
.LVL214:
	.loc 1 1975 0
	stfs 11,frustumPlanes@l(30)
	.loc 1 1983 0
	fadds 27,27,30
	.loc 1 1984 0
	fadds 21,21,31
	.loc 1 1987 0
	fmadds 1,26,26,1
	.loc 1 1983 0
	stfs 27,24(31)
	.loc 1 1984 0
	stfs 21,28(31)
	.loc 1 1987 0
	fmadds 1,27,27,1
	bl sqrt
	.loc 1 1989 0
	lfs 13,20(31)
	.loc 1 1987 0
	frsp 1,1
.LVL215:
	.loc 1 1988 0
	lfs 12,16(31)
	.loc 1 1990 0
	lfs 0,24(31)
	.loc 1 1997 0
	fadds 11,17,31
	.loc 1 1991 0
	lfs 10,28(31)
	.loc 1 1989 0
	fdivs 13,13,1
	.loc 1 1997 0
	stfs 11,44(31)
	.loc 1 1988 0
	fdivs 12,12,1
	.loc 1 1989 0
	stfs 13,20(31)
	.loc 1 1990 0
	fdivs 0,0,1
	.loc 1 1988 0
	stfs 12,16(31)
	.loc 1 1991 0
	fdivs 10,10,1
	.loc 1 1990 0
	stfs 0,24(31)
	.loc 1 1995 0
	fadds 13,20,28
	.loc 1 1991 0
	stfs 10,28(31)
	.loc 1 1994 0
	fadds 12,16,29
	.loc 1 1996 0
	fadds 0,19,30
	.loc 1 2000 0
	fmuls 1,13,13
.LVL216:
	.loc 1 1995 0
	stfs 13,36(31)
	.loc 1 1994 0
	stfs 12,32(31)
	.loc 1 1996 0
	stfs 0,40(31)
	.loc 1 2000 0
	fmadds 1,12,12,1
	fmadds 1,0,0,1
	bl sqrt
	.loc 1 2001 0
	lfs 11,32(31)
	.loc 1 2000 0
	frsp 1,1
.LVL217:
	.loc 1 2002 0
	lfs 12,36(31)
	.loc 1 2003 0
	lfs 13,40(31)
	.loc 1 2008 0
	fsubs 20,28,20
.LVL218:
	.loc 1 2004 0
	lfs 0,44(31)
	.loc 1 2007 0
	fsubs 16,29,16
.LVL219:
	.loc 1 2001 0
	fdivs 11,11,1
	.loc 1 2008 0
	stfs 20,52(31)
	.loc 1 2007 0
	stfs 16,48(31)
	.loc 1 2002 0
	fdivs 12,12,1
	.loc 1 2001 0
	stfs 11,32(31)
	.loc 1 2003 0
	fdivs 13,13,1
	.loc 1 2002 0
	stfs 12,36(31)
	.loc 1 2004 0
	fdivs 0,0,1
	.loc 1 2003 0
	stfs 13,40(31)
	.loc 1 2013 0
	fmuls 1,20,20
.LVL220:
	.loc 1 2004 0
	stfs 0,44(31)
	.loc 1 2009 0
	fsubs 19,30,19
	.loc 1 2010 0
	fsubs 17,31,17
	.loc 1 2013 0
	fmadds 1,16,16,1
	.loc 1 2009 0
	stfs 19,56(31)
	.loc 1 2010 0
	stfs 17,60(31)
	.loc 1 2013 0
	fmadds 1,19,19,1
	bl sqrt
	.loc 1 2015 0
	lfs 13,52(31)
	.loc 1 2013 0
	frsp 1,1
.LVL221:
	.loc 1 2014 0
	lfs 12,48(31)
	.loc 1 2016 0
	lfs 0,56(31)
	.loc 1 2023 0
	fsubs 11,31,18
	.loc 1 2017 0
	lfs 10,60(31)
	.loc 1 2015 0
	fdivs 13,13,1
	.loc 1 2023 0
	stfs 11,76(31)
	.loc 1 2014 0
	fdivs 12,12,1
	.loc 1 2015 0
	stfs 13,52(31)
	.loc 1 2016 0
	fdivs 0,0,1
	.loc 1 2014 0
	stfs 12,48(31)
	.loc 1 2017 0
	fdivs 10,10,1
	.loc 1 2016 0
	stfs 0,56(31)
	.loc 1 2021 0
	fsubs 13,28,23
	.loc 1 2017 0
	stfs 10,60(31)
	.loc 1 2020 0
	fsubs 12,29,22
	.loc 1 2022 0
	fsubs 0,30,24
	.loc 1 2026 0
	fmuls 1,13,13
.LVL222:
	.loc 1 2021 0
	stfs 13,68(31)
	.loc 1 2020 0
	stfs 12,64(31)
	.loc 1 2022 0
	stfs 0,72(31)
	.loc 1 2026 0
	fmadds 1,12,12,1
	fmadds 1,0,0,1
	bl sqrt
	.loc 1 2027 0
	lfs 11,64(31)
	.loc 1 2026 0
	frsp 1,1
.LVL223:
	.loc 1 2028 0
	lfs 12,68(31)
	.loc 1 2029 0
	lfs 13,72(31)
	.loc 1 2034 0
	fadds 23,23,28
.LVL224:
	.loc 1 2030 0
	lfs 0,76(31)
	.loc 1 2033 0
	fadds 22,22,29
.LVL225:
	.loc 1 2027 0
	fdivs 11,11,1
	.loc 1 2034 0
	stfs 23,84(31)
	.loc 1 2033 0
	stfs 22,80(31)
	.loc 1 2028 0
	fdivs 12,12,1
	.loc 1 2027 0
	stfs 11,64(31)
	.loc 1 2029 0
	fdivs 13,13,1
	.loc 1 2028 0
	stfs 12,68(31)
	.loc 1 2030 0
	fdivs 0,0,1
	.loc 1 2029 0
	stfs 13,72(31)
	.loc 1 2039 0
	fmuls 1,23,23
.LVL226:
	.loc 1 2030 0
	stfs 0,76(31)
	.loc 1 2035 0
	fadds 24,24,30
	.loc 1 2036 0
	fadds 18,18,31
	.loc 1 2039 0
	fmadds 1,22,22,1
	.loc 1 2035 0
	stfs 24,88(31)
	.loc 1 2036 0
	stfs 18,92(31)
	.loc 1 2039 0
	fmadds 1,24,24,1
	bl sqrt
	.loc 1 2040 0
	lfs 11,80(31)
	.loc 1 2039 0
	frsp 1,1
.LVL227:
	.loc 1 2041 0
	lfs 12,84(31)
	.loc 1 2042 0
	lfs 0,88(31)
	.loc 1 2043 0
	lfs 13,92(31)
	.loc 1 2040 0
	fdivs 11,11,1
	.loc 1 2044 0
	lwz 0,324(1)
	lwz 30,168(1)
	mtlr 0
	lfd 14,176(1)
	lfd 15,184(1)
	lfd 16,192(1)
	lfd 17,200(1)
	lfd 18,208(1)
	lfd 19,216(1)
	lfd 20,224(1)
	lfd 21,232(1)
	lfd 22,240(1)
	lfd 23,248(1)
	lfd 24,256(1)
	lfd 25,264(1)
	lfd 26,272(1)
	lfd 27,280(1)
	lfd 28,288(1)
.LVL228:
	.loc 1 2041 0
	fdivs 12,12,1
	.loc 1 2040 0
	stfs 11,80(31)
	.loc 1 2044 0
	lfd 29,296(1)
.LVL229:
	lfd 30,304(1)
	lfd 31,312(1)
	.loc 1 2042 0
	fdivs 0,0,1
	.loc 1 2041 0
	stfs 12,84(31)
	.loc 1 2043 0
	fdivs 1,13,1
.LVL230:
	.loc 1 2042 0
	stfs 0,88(31)
	.loc 1 2043 0
	stfs 1,92(31)
	.loc 1 2044 0
	lwz 31,172(1)
	addi 1,1,320
.LCFI78:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
	.cfi_restore 56
	.cfi_restore 55
	.cfi_restore 54
	.cfi_restore 53
	.cfi_restore 52
	.cfi_restore 51
	.cfi_restore 50
	.cfi_restore 49
	.cfi_restore 48
	.cfi_restore 47
	.cfi_restore 46
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE65:
	.size	ExtractFrustum, .-ExtractFrustum
	.align 2
	.globl R_SetupGL
	.type	R_SetupGL, @function
R_SetupGL:
.LFB66:
	.loc 1 2052 0
	.cfi_startproc
	mflr 0
	stwu 1,-32(1)
.LCFI79:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 2060 0
	li 3,5889
	.loc 1 2052 0
	stw 31,12(1)
	.loc 1 2062 0
	lis 31,r_refdef@ha
	.cfi_offset 31, -20
	.loc 1 2052 0
	stw 0,36(1)
	stfd 30,16(1)
	stfd 31,24(1)
	stw 30,8(1)
	.loc 1 2060 0
	.cfi_offset 30, -24
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	bl glMatrixMode
	.loc 1 2061 0
	bl glLoadIdentity
	.loc 1 2062 0
	lis 9,glwidth@ha
	lwz 8,r_refdef@l(31)
	lis 11,vid@ha
	lwz 4,glwidth@l(9)
	la 11,vid@l(11)
	lwz 3,20(11)
	la 31,r_refdef@l(31)
	mullw 9,4,8
	.loc 1 2064 0
	lwz 10,4(31)
	.loc 1 2065 0
	lwz 6,12(31)
	.loc 1 2064 0
	lis 7,glheight@ha
	lwz 11,24(11)
	.loc 1 2063 0
	lwz 5,8(31)
	.loc 1 2051 0
	add 0,10,6
	.loc 1 2062 0
	divwu 9,9,3
.LVL231:
	.loc 1 2064 0
	lwz 7,glheight@l(7)
	.loc 1 2063 0
	add 8,5,8
	.loc 1 2064 0
	subf 10,10,11
	.loc 1 2065 0
	subf 0,0,11
	.loc 1 2063 0
	mullw 8,8,4
	.loc 1 2068 0
	cmpwi 7,9,0
	.loc 1 2064 0
	mullw 10,10,7
	.loc 1 2065 0
	mullw 0,0,7
	.loc 1 2063 0
	divwu 8,8,3
.LVL232:
	.loc 1 2064 0
	divwu 10,10,11
.LVL233:
	.loc 1 2065 0
	divwu 0,0,11
.LVL234:
	.loc 1 2068 0
	ble- 7,.L207
	.loc 1 2069 0
	addi 9,9,-1
.LVL235:
.L207:
	.loc 1 2080 0
	lis 11,envmap@ha
	.loc 1 2074 0
	cmpw 6,7,10
	.loc 1 2080 0
	lbz 11,envmap@l(11)
	.loc 1 2070 0
	cmpw 1,4,8
	.loc 1 2073 0
	srwi 7,0,31
	lis 30,mirror@ha
	.loc 1 2080 0
	cmpwi 7,11,0
	.loc 1 2071 0
	mfcr 11
	rlwinm 4,11,6,1
	rlwinm 11,11,26,1
	.loc 1 2073 0
	subf 0,7,0
.LVL236:
	.loc 1 2071 0
	add 8,8,4
.LVL237:
	.loc 1 2075 0
	add 10,10,11
.LVL238:
	.loc 1 2080 0
	bne- 7,.L211
	.loc 1 2080 0 is_stmt 0 discriminator 1
	lbz 11,mirror@l(30)
	cmpwi 7,11,0
	beq- 7,.L221
.L211:
.LVL239:
	.loc 1 2082 0 is_stmt 1
	li 0,0
	li 9,0
.LVL240:
.L212:
	.loc 1 2087 0
	lis 11,glx@ha
	lwz 3,glx@l(11)
	lis 11,gly@ha
	lwz 4,gly@l(11)
	add 3,9,3
	add 4,0,4
	bl glViewport
.LVL241:
	.loc 1 2098 0
	lis 9,.LC51@ha
	lfs 1,.LC51@l(9)
	lis 9,.LC53@ha
	lfs 2,.LC53@l(9)
	lis 9,.LC31@ha
	lfs 3,.LC31@l(9)
	lis 9,.LC56@ha
	lfs 4,.LC56@l(9)
	bl gluPerspective
.LVL242:
	.loc 1 2100 0
	lbz 0,mirror@l(30)
	cmpwi 7,0,0
	bne- 7,.L213
	.loc 1 2100 0 is_stmt 0 discriminator 1
	lis 9,glare@ha
	lbz 0,glare@l(9)
	cmpwi 7,0,0
	beq- 7,.L214
.L213:
	.loc 1 2104 0 is_stmt 1
	bl glLoadIdentity
	.loc 1 2105 0
	lis 3,r_projection_matrix@ha
	la 3,r_projection_matrix@l(3)
	bl glMultMatrixf
	.loc 1 2107 0
	lbz 0,mirror@l(30)
	lis 30,.LC1@ha
	cmpwi 7,0,0
	bne- 7,.L222
.L215:
	.loc 1 2119 0
	li 3,5888
	bl glMatrixMode
	.loc 1 2120 0
	bl glLoadIdentity
	.loc 1 2122 0
	lis 9,.LC2@ha
	lfs 31,.LC2@l(9)
	lis 9,.LC36@ha
	lfs 30,.LC1@l(30)
	fmr 3,31
	lfs 1,.LC36@l(9)
	fmr 2,30
	fmr 4,31
	bl glRotatef
	.loc 1 2123 0
	lis 9,.LC37@ha
	fmr 2,31
	lfs 1,.LC37@l(9)
	fmr 3,31
	fmr 4,30
	bl glRotatef
	.loc 1 2124 0
	lfs 1,132(31)
	fmr 2,30
	fneg 1,1
	fmr 3,31
	fmr 4,31
	bl glRotatef
	.loc 1 2125 0
	lfs 1,124(31)
	fmr 2,31
	fneg 1,1
	fmr 3,30
	fmr 4,31
	bl glRotatef
	.loc 1 2126 0
	lfs 1,128(31)
	fmr 4,30
	fneg 1,1
	fmr 2,31
	fmr 3,31
	bl glRotatef
	.loc 1 2127 0
	lfs 1,112(31)
	lfs 2,116(31)
	lfs 3,120(31)
	fneg 1,1
	fneg 2,2
	fneg 3,3
	bl glTranslatef
	.loc 1 2128 0
	lis 4,r_world_matrix@ha
	li 3,2982
	la 4,r_world_matrix@l(4)
	bl glGetFloatv
	.loc 1 2129 0
	lis 4,r_Dworld_matrix@ha
	la 4,r_Dworld_matrix@l(4)
	li 3,2982
	crxor 6,6,6
	bl gxgl_glGetDoublev
	.loc 1 2130 0
	lis 4,r_Dproject_matrix@ha
	la 4,r_Dproject_matrix@l(4)
	li 3,2983
	crxor 6,6,6
	bl gxgl_glGetDoublev
	.loc 1 2131 0
	lis 4,r_Iviewport@ha
	li 3,2978
	la 4,r_Iviewport@l(4)
	bl glGetIntegerv
	.loc 1 2132 0
	bl ExtractFrustum
	.loc 1 2136 0
	lis 9,.LANCHOR0+452@ha
	lfs 0,.LANCHOR0+452@l(9)
	.loc 1 2137 0
	li 3,2884
	.loc 1 2136 0
	fcmpu 7,0,31
	bne- 7,.L223
	.loc 1 2139 0
	bl glDisable
	.loc 1 2141 0
	li 3,3042
	bl glDisable
	.loc 1 2142 0
	li 3,3008
	bl glDisable
	.loc 1 2143 0
	li 3,2929
	bl glEnable
	.loc 1 2144 0
	lwz 0,36(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	lfd 30,16(1)
	lfd 31,24(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI80:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	.cfi_restore 30
	blr
.L222:
.LCFI81:
	.cfi_restore_state
	.loc 1 2108 0
	lis 9,mirror_plane@ha
	lwz 9,mirror_plane@l(9)
	lfs 13,8(9)
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	fcmpu 7,13,0
	beq- 7,.L216
	.loc 1 2109 0
	lfs 1,.LC1@l(30)
	lis 9,.LC4@ha
	lfs 2,.LC4@l(9)
	fmr 3,1
	bl glScalef
	b .L215
.LVL243:
.L221:
	.loc 1 2080 0 discriminator 1
	lis 11,glare@ha
	lbz 11,glare@l(11)
	cmpwi 7,11,0
	bne- 7,.L211
	.loc 1 2077 0
	subf 5,9,8
	.loc 1 2078 0
	subf 6,0,10
	b .L212
.LVL244:
.L223:
	.loc 1 2137 0
	bl glEnable
	.loc 1 2141 0
	li 3,3042
	bl glDisable
	.loc 1 2142 0
	li 3,3008
	bl glDisable
	.loc 1 2143 0
	li 3,2929
	bl glEnable
	.loc 1 2144 0
	lwz 0,36(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	lfd 30,16(1)
	lfd 31,24(1)
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI82:
	.cfi_def_cfa_offset 0
	blr
.L214:
.LCFI83:
	.cfi_restore_state
	.loc 1 2115 0
	lis 4,r_projection_matrix@ha
	li 3,2983
	la 4,r_projection_matrix@l(4)
	lis 30,.LC1@ha
	bl glGetFloatv
	b .L215
.L216:
	.loc 1 2111 0
	lfs 2,.LC1@l(30)
	lis 9,.LC4@ha
	lfs 1,.LC4@l(9)
	fmr 3,2
	bl glScalef
	b .L215
	.cfi_endproc
.LFE66:
	.size	R_SetupGL, .-R_SetupGL
	.align 2
	.globl R_InitMirrorChains
	.type	R_InitMirrorChains, @function
R_InitMirrorChains:
.LFB67:
	.loc 1 2431 0
	.cfi_startproc
.LVL245:
	stwu 1,-24(1)
.LCFI84:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	lis 31,mirrorplanes@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	stw 30,16(1)
	la 31,mirrorplanes@l(31)
	lis 30,.LC57@ha
	.cfi_offset 30, -8
	stw 0,28(1)
	stw 29,12(1)
	la 30,.LC57@l(30)
	.loc 1 2430 0
	addi 29,31,800
	.cfi_offset 29, -12
	.cfi_offset 65, 4
.LVL246:
.L225:
	.loc 1 2435 0 discriminator 2
	mr 3,30
	bl EasyTgaLoad
	.loc 1 2436 0 discriminator 2
	li 5,0
	.loc 1 2435 0 discriminator 2
	stw 3,0(31)
	.loc 1 2436 0 discriminator 2
	li 4,10242
	li 3,3553
	ori 5,5,33071
	bl glTexParameteri
	.loc 1 2437 0 discriminator 2
	li 5,0
	li 3,3553
	li 4,10243
	ori 5,5,33071
	addi 31,31,100
	bl glTexParameteri
	.loc 1 2434 0 discriminator 2
	cmpw 7,31,29
	bne+ 7,.L225
	.loc 1 2440 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI85:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE67:
	.size	R_InitMirrorChains, .-R_InitMirrorChains
	.align 2
	.globl R_NewMirrorChains
	.type	R_NewMirrorChains, @function
R_NewMirrorChains:
.LFB68:
	.loc 1 2444 0
	.cfi_startproc
.LVL247:
	.loc 1 2448 0
	li 11,8
	.loc 1 2444 0
	lis 9,mirrorplanes+4@ha
	.loc 1 2448 0
	mtctr 11
	.loc 1 2444 0
	la 9,mirrorplanes+4@l(9)
	.loc 1 2448 0
	li 0,0
.LVL248:
.L228:
	.loc 1 2448 0 is_stmt 0 discriminator 2
	stw 0,0(9)
	.loc 1 2449 0 is_stmt 1 discriminator 2
	stw 0,4(9)
	.loc 1 2450 0 discriminator 2
	stw 0,28(9)
	addi 9,9,100
	.loc 1 2447 0 discriminator 2
	bdnz .L228
	.loc 1 2453 0
	blr
	.cfi_endproc
.LFE68:
	.size	R_NewMirrorChains, .-R_NewMirrorChains
	.align 2
	.globl R_ClearMirrorChains
	.type	R_ClearMirrorChains, @function
R_ClearMirrorChains:
.LFB69:
	.loc 1 2457 0
	.cfi_startproc
.LVL249:
	.loc 1 2464 0
	lis 9,cl+2688@ha
	.loc 1 2461 0
	li 0,0
	.loc 1 2464 0
	lwz 11,cl+2688@l(9)
	.loc 1 2461 0
	lis 9,mirrorplanes@ha
	la 9,mirrorplanes@l(9)
	.loc 1 2464 0
	lwz 10,396(11)
	.loc 1 2461 0
	stw 0,32(9)
.LVL250:
	.loc 1 2464 0
	cmpwi 7,10,0
	.loc 1 2461 0
	stw 0,132(9)
.LVL251:
	stw 0,232(9)
.LVL252:
	stw 0,332(9)
.LVL253:
	stw 0,432(9)
.LVL254:
	stw 0,532(9)
.LVL255:
	stw 0,632(9)
.LVL256:
	stw 0,732(9)
.LVL257:
	.loc 1 2464 0
	blelr- 7
	.loc 1 2456 0
	lwz 11,400(11)
	.loc 1 2468 0
	mtctr 10
	.loc 1 2456 0
	addi 11,11,-4
.LVL258:
.L233:
	.loc 1 2466 0
	lwzu 9,4(11)
	cmpwi 7,9,0
	beq- 7,.L232
	.loc 1 2468 0
	stw 0,32(9)
.L232:
	.loc 1 2464 0
	bdnz .L233
	blr
	.cfi_endproc
.LFE69:
	.size	R_ClearMirrorChains, .-R_ClearMirrorChains
	.align 2
	.globl R_AllocateMirror
	.type	R_AllocateMirror, @function
R_AllocateMirror:
.LFB70:
	.loc 1 2473 0
	.cfi_startproc
.LVL259:
	.loc 1 2505 0
	lwz 10,4(3)
	.loc 1 2482 0
	li 0,8
	.loc 1 2505 0
	lis 9,mirrorplanes+12@ha
	.loc 1 2482 0
	mtctr 0
	.loc 1 2505 0
	lfs 13,0(10)
	la 9,mirrorplanes+12@l(9)
	lfs 12,4(10)
	.loc 1 2482 0
	li 11,0
	.loc 1 2505 0
	lfs 11,8(10)
.LVL260:
.L238:
	.loc 1 2489 0
	lfs 0,0(9)
	fcmpu 7,13,0
	bne- 7,.L236
	.loc 1 2489 0 is_stmt 0 discriminator 1
	lfs 0,4(9)
	fcmpu 7,12,0
	bne- 7,.L236
	.loc 1 2490 0 is_stmt 1
	lfs 0,8(9)
	fcmpu 7,0,11
	bne- 7,.L236
	.loc 1 2491 0
	lfs 0,12(9)
	lfs 10,12(10)
	fcmpu 7,10,0
	beq- 7,.L244
.L236:
	.loc 1 2482 0
	addi 11,11,1
.LVL261:
	addi 9,9,100
	bdnz .L238
	.loc 1 2502 0
	lis 9,r_framecount@ha
	.loc 1 2504 0
	li 0,8
	.loc 1 2502 0
	lwz 7,r_framecount@l(9)
.LVL262:
	.loc 1 2504 0
	mtctr 0
	.loc 1 2502 0
	lis 9,mirrorplanes+4@ha
	.loc 1 2503 0
	li 6,-1
	.loc 1 2502 0
	la 9,mirrorplanes+4@l(9)
	mr 8,7
	.loc 1 2504 0
	li 11,0
.LVL263:
.L240:
	.loc 1 2505 0
	lwz 0,0(9)
	.loc 1 2504 0
	addi 9,9,100
	.loc 1 2505 0
	cmpw 7,8,0
	ble- 7,.L239
	mr 6,11
	mr 8,0
.LVL264:
.L239:
	.loc 1 2504 0
	addi 11,11,1
.LVL265:
	bdnz .L240
	.loc 1 2511 0
	cmpwi 7,6,-1
	beqlr- 7
	.loc 1 2516 0
	mulli 6,6,100
	lis 9,mirrorplanes@ha
	.loc 1 2522 0
	lbz 0,16(10)
	.loc 1 2516 0
	la 9,mirrorplanes@l(9)
	add 9,6,9
.LVL266:
	.loc 1 2521 0
	lwz 11,12(10)
.LVL267:
	.loc 1 2522 0
	stb 0,28(9)
	.loc 1 2523 0
	lwz 10,4(3)
	.loc 1 2517 0
	stfs 13,12(9)
	.loc 1 2523 0
	lbz 0,17(10)
	.loc 1 2517 0
	stfs 12,16(9)
	stfs 11,20(9)
	.loc 1 2521 0
	stw 11,24(9)
	.loc 1 2523 0
	stb 0,29(9)
.LVL268:
.L237:
	.loc 1 2528 0
	lwz 0,32(9)
	.loc 1 2527 0
	stw 7,4(9)
	.loc 1 2528 0
	stw 0,40(3)
	.loc 1 2529 0
	stw 3,32(9)
	blr
.LVL269:
.L244:
	.loc 1 2494 0
	mulli 9,11,100
	lis 11,mirrorplanes@ha
	la 0,mirrorplanes@l(11)
	lis 11,r_framecount@ha
	add 9,9,0
.LVL270:
	lwz 7,r_framecount@l(11)
	b .L237
	.cfi_endproc
.LFE70:
	.size	R_AllocateMirror, .-R_AllocateMirror
	.align 2
	.globl R_Mirror
	.type	R_Mirror, @function
R_Mirror:
.LFB71:
	.loc 1 2537 0
	.cfi_startproc
.LVL271:
	stwu 1,-184(1)
.LCFI86:
	.cfi_def_cfa_offset 184
	mflr 0
	stw 28,120(1)
	.loc 1 2544 0
	lis 28,mirror@ha
	.cfi_offset 28, -64
	.cfi_register 65, 0
	.loc 1 2537 0
	stw 27,116(1)
	.loc 1 2544 0
	lbz 27,mirror@l(28)
	.cfi_offset 27, -68
	.loc 1 2537 0
	stw 30,128(1)
	mr 30,3
	.cfi_offset 30, -56
	.loc 1 2544 0
	cmpwi 7,27,0
	.loc 1 2537 0
	stw 0,188(1)
	stfd 26,136(1)
	stfd 27,144(1)
	stfd 28,152(1)
	stfd 29,160(1)
	stfd 30,168(1)
	stfd 31,176(1)
	stw 14,64(1)
	stw 15,68(1)
	stw 16,72(1)
	stw 17,76(1)
	stw 18,80(1)
	stw 19,84(1)
	stw 20,88(1)
	stw 21,92(1)
	stw 22,96(1)
	stw 23,100(1)
	stw 24,104(1)
	stw 25,108(1)
	stw 26,112(1)
	stw 29,124(1)
	stw 31,132(1)
	.loc 1 2544 0
	bne- 7,.L264
	.cfi_offset 31, -52
	.cfi_offset 29, -60
	.cfi_offset 26, -72
	.cfi_offset 25, -76
	.cfi_offset 24, -80
	.cfi_offset 23, -84
	.cfi_offset 22, -88
	.cfi_offset 21, -92
	.cfi_offset 20, -96
	.cfi_offset 19, -100
	.cfi_offset 18, -104
	.cfi_offset 17, -108
	.cfi_offset 16, -112
	.cfi_offset 15, -116
	.cfi_offset 14, -120
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 65, 4
	.loc 1 2551 0
	lis 22,r_base_world_matrix@ha
	lis 25,r_world_matrix@ha
	la 22,r_base_world_matrix@l(22)
	la 25,r_world_matrix@l(25)
	.loc 1 2549 0
	li 0,1
	.loc 1 2550 0
	lis 9,mirror_plane@ha
	.loc 1 2551 0
	mr 4,25
	li 5,64
	.loc 1 2550 0
	addi 23,3,12
	.loc 1 2553 0
	lis 24,vpn@ha
	.loc 1 2551 0
	mr 3,22
.LVL272:
	.loc 1 2553 0
	lis 26,r_refdef+124@ha
	.loc 1 2549 0
	stb 0,mirror@l(28)
	.loc 1 2553 0
	la 26,r_refdef+124@l(26)
	.loc 1 2550 0
	stw 23,mirror_plane@l(9)
	.loc 1 2553 0
	la 29,vpn@l(24)
	.loc 1 2551 0
	bl memcpy
	.loc 1 2553 0
	lis 5,vright@ha
	lis 6,vup@ha
	.loc 1 2556 0
	addi 31,26,-124
	.loc 1 2553 0
	mr 3,26
	mr 4,29
	la 5,vright@l(5)
	la 6,vup@l(6)
	bl AngleVectors
	.loc 1 2556 0
	lfs 30,116(31)
	.loc 1 2557 0
	lfs 13,16(30)
	.loc 1 2560 0
	lis 0,0x4330
	.loc 1 2556 0
	lfs 29,112(31)
.LVL273:
	.loc 1 2560 0
	addi 9,1,40
	.loc 1 2557 0
	fmuls 11,30,13
	lfs 12,12(30)
	.loc 1 2556 0
	lfs 31,120(31)
.LVL274:
	.loc 1 2560 0
	lis 20,.LC20@ha
	.loc 1 2557 0
	lfs 0,20(30)
	.loc 1 2560 0
	lis 21,.LANCHOR0@ha
	.loc 1 2557 0
	fmadds 11,29,12,11
	lfs 27,24(30)
	.loc 1 2560 0
	stw 0,8(1)
	la 21,.LANCHOR0@l(21)
	lfs 9,.LC20@l(20)
	.loc 1 2557 0
	fmadds 11,31,0,11
	fsubs 27,11,27
.LVL275:
	.loc 1 2560 0
	fctiwz 10,27
	stfiwx 10,0,9
	lwz 19,40(1)
	lfs 10,472(21)
	srawi 10,19,31
	xor 0,10,19
	subf 0,10,0
	xoris 0,0,0x8000
	stw 0,12(1)
	lfd 8,8(1)
	fsub 9,8,9
	frsp 9,9
	fcmpu 7,9,10
	bgt- 7,.L265
.LVL276:
	.loc 1 2577 0
	lis 9,.LC21@ha
.LVL277:
	.loc 1 2575 0
	fadds 11,11,10
	.loc 1 2577 0
	lfs 26,.LC21@l(9)
	.loc 1 2573 0
	lis 11,mirror_far_plane@ha
	la 9,mirror_far_plane@l(11)
	.loc 1 2577 0
	addi 3,26,-12
	fmuls 1,27,26
	.loc 1 2575 0
	stfs 11,12(9)
	.loc 1 2573 0
	stfs 13,4(9)
	.loc 1 2577 0
	mr 5,3
	.loc 1 2573 0
	stfs 0,8(9)
	.loc 1 2577 0
	mr 4,23
	.loc 1 2573 0
	stfs 12,mirror_far_plane@l(11)
	.loc 1 2616 0
	lis 26,cl_numvisedicts@ha
	.loc 1 2577 0
	bl VectorMA
.LVL278:
	.loc 1 2585 0
	lfs 13,4(29)
	lfs 0,16(30)
	.loc 1 2579 0
	lis 9,.LC2@ha
	.loc 1 2585 0
	lfs 12,vpn@l(24)
	.loc 1 2586 0
	mr 3,29
	.loc 1 2585 0
	fmuls 13,13,0
	lfs 0,12(30)
	lfs 1,8(29)
	.loc 1 2586 0
	mr 4,23
	.loc 1 2579 0
	lfs 28,.LC2@l(9)
	.loc 1 2586 0
	mr 5,29
	.loc 1 2585 0
	fmadds 0,12,0,13
	lfs 13,20(30)
	.loc 1 2579 0
	fcmpu 7,27,28
	lis 9,mirror_clipside@ha
	.loc 1 2585 0
	fmadds 1,1,13,0
	.loc 1 2582 0
	mfcr 0
	rlwinm 0,0,29,1
	subfic 0,0,2
	.loc 1 2586 0
	fmuls 1,1,26
	.loc 1 2579 0
	stw 0,mirror_clipside@l(9)
.LVL279:
	.loc 1 2586 0
	bl VectorMA
	.loc 1 2589 0
	lfs 1,8(29)
	.loc 1 2588 0
	lwz 16,124(31)
.LVL280:
	lwz 17,128(31)
.LVL281:
	lwz 18,132(31)
.LVL282:
	.loc 1 2589 0
	bl asin
.LVL283:
	fneg 0,1
	lis 9,.LC59@ha
	lfd 26,.LC59@l(9)
	lis 9,.LC15@ha
	lfs 27,.LC15@l(9)
	fdiv 0,0,26
	.loc 1 2590 0
	lfs 2,vpn@l(24)
	lfs 1,4(29)
	.loc 1 2588 0
	lis 29,r_refdef@ha
	.loc 1 2620 0
	lis 24,.LC62@ha
	.loc 1 2589 0
	fmul 0,0,27
	frsp 0,0
	stfs 0,124(31)
	.loc 1 2590 0
	bl atan2
	.loc 1 2598 0
	lfs 11,136(31)
	.loc 1 2590 0
	fdiv 13,1,26
	.loc 1 2591 0
	lfs 0,132(31)
	.loc 1 2599 0
	lfs 12,140(31)
	.loc 1 2608 0
	lis 9,scr_fov+12@ha
	lfs 1,scr_fov+12@l(9)
	.loc 1 2602 0
	li 0,256
	.loc 1 2595 0
	lwz 9,4(31)
	.loc 1 2594 0
	lwz 10,r_refdef@l(29)
	.loc 1 2595 0
	stw 9,48(1)
	.loc 1 2609 0
	lis 9,.LC61@ha
	.loc 1 2594 0
	stw 10,44(1)
.LVL284:
	.loc 1 2598 0
	addi 10,1,32
	.loc 1 2609 0
	lfs 2,.LC61@l(9)
	.loc 1 2599 0
	addi 9,1,36
	.loc 1 2601 0
	stw 27,4(31)
	.loc 1 2608 0
	stfs 1,136(31)
	.loc 1 2596 0
	lwz 14,8(31)
.LVL285:
	.loc 1 2597 0
	lwz 15,12(31)
.LVL286:
	.loc 1 2602 0
	stw 0,8(31)
	.loc 1 2603 0
	stw 0,12(31)
	.loc 1 2600 0
	stw 27,r_refdef@l(29)
	.loc 1 2590 0
	fmul 13,13,27
	.loc 1 2591 0
	fneg 0,0
	.loc 1 2598 0
	fctiwz 11,11
	.loc 1 2590 0
	frsp 13,13
	.loc 1 2599 0
	fctiwz 12,12
	.loc 1 2598 0
	stfiwx 11,0,10
	.loc 1 2609 0
	fmr 3,2
	.loc 1 2599 0
	stfiwx 12,0,9
	.loc 1 2590 0
	stfs 13,128(31)
	.loc 1 2591 0
	stfs 0,132(31)
	.loc 1 2598 0
	lwz 10,32(1)
	.loc 1 2599 0
	lwz 0,36(1)
	.loc 1 2598 0
	stw 10,52(1)
.LVL287:
	.loc 1 2599 0
	stw 0,56(1)
.LVL288:
	.loc 1 2609 0
	bl CalcFov
.LVL289:
	.loc 1 2620 0
	lfs 0,.LC62@l(24)
	lfs 13,492(21)
	.loc 1 2609 0
	stfs 1,140(31)
	.loc 1 2620 0
	fcmpu 7,13,0
	.loc 1 2616 0
	lwz 23,cl_numvisedicts@l(26)
.LVL290:
	.loc 1 2619 0
	lwz 27,92(21)
.LVL291:
	.loc 1 2620 0
	blt- 7,.L266
	.loc 1 2566 0
	addi 19,19,47
.LVL292:
	.loc 1 2625 0
	cmplwi 7,19,94
	ble- 7,.L254
	.loc 1 2625 0 is_stmt 0 discriminator 1
	lis 9,cl+2676@ha
	lis 11,cl_entities@ha
	lwz 0,cl+2676@l(9)
	la 11,cl_entities@l(11)
	mulli 0,0,584
	add 11,11,0
	lwz 9,160(11)
	cmpwi 7,9,0
	beq- 7,.L254
	lwz 0,68(9)
	cmpwi 7,0,2
	beq- 7,.L267
.LVL293:
.L254:
	.loc 1 2636 0 is_stmt 1
	li 3,2304
	bl glFrontFace
.LVL294:
	.loc 1 2644 0
	bl R_RenderScene
	.loc 1 2648 0
	mr 4,25
	li 5,64
	addi 3,30,36
	.loc 1 2646 0
	stw 27,92(21)
	.loc 1 2648 0
	bl Q_memcpy
	.loc 1 2650 0
	lwz 3,0(30)
	bl GL_Bind
	.loc 1 2655 0
	li 3,1280
	bl glClear
	.loc 1 2658 0
	lfs 0,.LC62@l(24)
	lfs 13,492(21)
	fcmpu 7,13,0
	bnl- 7,.L255
	.loc 1 2659 0
	stw 27,92(21)
.L255:
	.loc 1 2669 0
	lwz 10,56(1)
	.loc 1 2668 0
	lis 0,0x4330
	lwz 9,52(1)
	.loc 1 2684 0
	li 3,2305
	.loc 1 2668 0
	stw 0,16(1)
	xoris 11,9,0x8000
	.loc 1 2669 0
	xoris 9,10,0x8000
	.loc 1 2668 0
	stw 11,20(1)
	.loc 1 2669 0
	stw 9,28(1)
	stw 0,24(1)
	.loc 1 2668 0
	lfd 13,16(1)
	.loc 1 2669 0
	lfd 12,24(1)
	.loc 1 2668 0
	lfs 0,.LC20@l(20)
	.loc 1 2665 0
	lwz 9,48(1)
	.loc 1 2668 0
	fsub 13,13,0
	.loc 1 2664 0
	lwz 0,44(1)
	.loc 1 2669 0
	fsub 0,12,0
	.loc 1 2665 0
	stw 9,4(31)
	.loc 1 2666 0
	stw 14,8(31)
	.loc 1 2668 0
	frsp 13,13
	.loc 1 2667 0
	stw 15,12(31)
	.loc 1 2669 0
	frsp 0,0
	.loc 1 2673 0
	stfs 29,112(31)
	stfs 30,116(31)
	.loc 1 2668 0
	stfs 13,136(31)
	.loc 1 2669 0
	stfs 0,140(31)
	.loc 1 2673 0
	stfs 31,120(31)
	.loc 1 2674 0
	stw 16,124(31)
	stw 17,128(31)
	stw 18,132(31)
	.loc 1 2664 0
	stw 0,r_refdef@l(29)
	.loc 1 2671 0
	stw 23,cl_numvisedicts@l(26)
	.loc 1 2684 0
	bl glFrontFace
	.loc 1 2685 0
	li 3,5888
	bl glMatrixMode
	.loc 1 2688 0
	mr 3,25
	mr 4,22
	li 5,64
	bl memcpy
	.loc 1 2690 0
	li 0,0
	stb 0,mirror@l(28)
	.loc 1 2691 0
	bl Sbar_Changed
	b .L245
.LVL295:
.L265:
	.loc 1 2561 0
	stb 27,mirror@l(28)
.LVL296:
.L245:
	.loc 1 2692 0
	lwz 0,188(1)
	lwz 14,64(1)
	mtlr 0
	lwz 15,68(1)
	lwz 16,72(1)
	lwz 17,76(1)
	lwz 18,80(1)
	lwz 19,84(1)
	lwz 20,88(1)
	lwz 21,92(1)
	lwz 22,96(1)
	lwz 23,100(1)
	lwz 24,104(1)
	lwz 25,108(1)
	lwz 26,112(1)
	lwz 27,116(1)
	lwz 28,120(1)
	lwz 29,124(1)
	lwz 30,128(1)
.LVL297:
	lwz 31,132(1)
	lfd 26,136(1)
	lfd 27,144(1)
	lfd 28,152(1)
	lfd 29,160(1)
	lfd 30,168(1)
	lfd 31,176(1)
	addi 1,1,184
	.cfi_remember_state
.LCFI87:
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
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
.LVL298:
.L264:
.LCFI88:
	.cfi_restore_state
	.loc 1 2545 0
	lis 3,.LC58@ha
.LVL299:
	la 3,.LC58@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 2546 0
	b .L245
.LVL300:
.L266:
	.loc 1 2622 0
	stfs 28,92(21)
	b .L254
.LVL301:
.L267:
	.loc 1 2627 0
	cmpwi 7,23,255
	bgt- 7,.L254
	.loc 1 2629 0
	lis 10,cl_visedicts@ha
	slwi 9,23,2
	.loc 1 2630 0
	addi 0,23,1
	.loc 1 2629 0
	la 10,cl_visedicts@l(10)
	stwx 11,10,9
	.loc 1 2630 0
	stw 0,cl_numvisedicts@l(26)
	b .L254
	.cfi_endproc
.LFE71:
	.size	R_Mirror, .-R_Mirror
	.align 2
	.globl R_RenderMirrors
	.type	R_RenderMirrors, @function
R_RenderMirrors:
.LFB72:
	.loc 1 2695 0
	.cfi_startproc
.LVL302:
	stwu 1,-48(1)
.LCFI89:
	.cfi_def_cfa_offset 48
	mflr 0
	stw 25,20(1)
	.loc 1 2697 0
	lis 25,mirrorplanes@ha
	.cfi_offset 25, -28
	.cfi_register 65, 0
	la 25,mirrorplanes@l(25)
	.loc 1 2695 0
	stw 26,24(1)
	stw 27,28(1)
	.loc 1 2698 0
	lis 26,0x4330
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.loc 1 2695 0
	stw 28,32(1)
	.loc 1 2698 0
	lis 27,.LC20@ha
	.loc 1 2695 0
	stw 29,36(1)
	.loc 1 2698 0
	lis 28,.LANCHOR0@ha
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.loc 1 2695 0
	stw 30,40(1)
	.loc 1 2698 0
	lis 29,r_framecount@ha
	.loc 1 2695 0
	stw 31,44(1)
	.loc 1 2697 0
	li 30,0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.loc 1 2695 0
	stw 0,52(1)
	.loc 1 2697 0
	mr 31,25
	b .L271
	.cfi_offset 65, 4
.LVL303:
.L269:
	cmpwi 7,30,7
	addi 31,31,100
	addi 30,30,1
.LVL304:
	beq- 7,.L274
.LVL305:
.L271:
	.loc 1 2698 0
	lwz 0,32(31)
	la 9,.LANCHOR0@l(28)
	cmpwi 7,0,0
	beq- 7,.L269
	.loc 1 2698 0 is_stmt 0 discriminator 1
	lwz 0,8(31)
	lwz 11,r_framecount@l(29)
	stw 26,8(1)
	subf 0,0,11
	lfs 13,.LC20@l(27)
	xoris 0,0,0x8000
	stw 0,12(1)
	lfd 12,8(1)
	lfs 0,512(9)
	fsub 13,12,13
	frsp 13,13
	fcmpu 7,13,0
	bng+ 7,.L269
	.loc 1 2699 0 is_stmt 1
	mulli 3,30,100
	add 3,25,3
	bl R_Mirror
	.loc 1 2697 0
	cmpwi 7,30,7
	.loc 1 2700 0
	lwz 0,r_framecount@l(29)
	.loc 1 2697 0
	addi 30,30,1
	.loc 1 2700 0
	stw 0,4(31)
	.loc 1 2701 0
	stw 0,8(31)
	.loc 1 2697 0
	addi 31,31,100
	bne+ 7,.L271
.L274:
	.loc 1 2704 0
	lwz 0,52(1)
	lwz 25,20(1)
	mtlr 0
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	addi 1,1,48
.LCFI90:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
	.cfi_endproc
.LFE72:
	.size	R_RenderMirrors, .-R_RenderMirrors
	.align 2
	.globl R_SetupMirrorShader
	.type	R_SetupMirrorShader, @function
R_SetupMirrorShader:
.LFB73:
	.loc 1 2706 0
	.cfi_startproc
.LVL306:
	.loc 1 2708 0
	lis 9,.LANCHOR0+492@ha
	.loc 1 2706 0
	mflr 0
	.loc 1 2708 0
	lfs 13,.LANCHOR0+492@l(9)
	lis 9,.LC1@ha
	lfs 0,.LC1@l(9)
	.loc 1 2706 0
	stwu 1,-32(1)
.LCFI91:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 2708 0
	fcmpu 7,13,0
	.loc 1 2706 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -20
	stw 0,36(1)
	stfd 30,16(1)
	stfd 31,24(1)
	.loc 1 2708 0
	bnl- 7,.L283
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	.loc 1 2709 0
	lis 9,newenvmap@ha
	lwz 3,newenvmap@l(9)
.LVL307:
	bl GL_Bind
.LVL308:
.L278:
	.loc 1 2713 0
	lwz 0,8(31)
	andi. 9,0,528
	cmpwi 7,9,16
	beq- 7,.L284
	.loc 1 2721 0
	andi. 9,0,16
	bne- 0,.L284
	.loc 1 2729 0
	lis 9,.LC26@ha
	li 3,8960
	lfs 30,.LC26@l(9)
	li 4,8704
	fmr 1,30
	bl glTexEnvf
	.loc 1 2730 0
	lis 9,.LC28@ha
	lfs 31,.LC28@l(9)
	li 4,0
	li 3,8960
	ori 4,4,34176
	fmr 1,31
	bl glTexEnvf
	.loc 1 2731 0
	lis 9,.LC63@ha
	lfs 1,.LC63@l(9)
	li 4,0
	ori 4,4,34161
	li 3,8960
	bl glTexEnvf
	.loc 1 2733 0
	bl GL_EnableMultitexture
	.loc 1 2734 0
	lwz 9,48(31)
	lwz 9,36(9)
	lwz 3,24(9)
	bl GL_Bind
	.loc 1 2738 0
	fmr 1,30
	li 3,8960
	li 4,8704
	bl glTexEnvf
	.loc 1 2739 0
	lis 9,.LC27@ha
	lfs 1,.LC27@l(9)
	li 4,0
	li 3,8960
	ori 4,4,34176
	bl glTexEnvf
	.loc 1 2740 0
	fmr 1,31
	li 4,0
	li 3,8960
	ori 4,4,34177
	bl glTexEnvf
	.loc 1 2741 0
	fmr 1,31
	li 4,0
	li 3,8960
	ori 4,4,34178
	bl glTexEnvf
	.loc 1 2742 0
	lis 9,.LC64@ha
	lfs 1,.LC64@l(9)
	li 4,0
	li 3,8960
	ori 4,4,34161
	bl glTexEnvf
	.loc 1 2743 0
	lis 9,.LC65@ha
	lfs 1,.LC65@l(9)
	li 4,0
	li 3,8960
	ori 4,4,34194
	bl glTexEnvf
	.loc 1 2745 0
	lwz 9,48(31)
	lwz 9,36(9)
	lwz 3,24(9)
	bl GL_Bind
	.loc 1 2747 0
	lwz 0,36(1)
	lwz 31,12(1)
.LVL309:
	mtlr 0
	lfd 30,16(1)
	lfd 31,24(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI92:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 31
	blr
.LVL310:
.L283:
.LCFI93:
	.cfi_restore_state
	.loc 1 2711 0
	lwz 3,0(4)
.LVL311:
	bl GL_Bind
.LVL312:
	b .L278
.L284:
	.loc 1 2722 0
	li 3,770
	li 4,1
	bl glBlendFunc
	.loc 1 2723 0
	li 3,3042
	bl glEnable
	.loc 1 2747 0
	lwz 0,36(1)
	lwz 31,12(1)
.LVL313:
	mtlr 0
	lfd 30,16(1)
	lfd 31,24(1)
	addi 1,1,32
	.cfi_restore 31
	.cfi_restore 62
	.cfi_restore 63
.LCFI94:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE73:
	.size	R_SetupMirrorShader, .-R_SetupMirrorShader
	.align 2
	.globl R_DisableMirrorShader
	.type	R_DisableMirrorShader, @function
R_DisableMirrorShader:
.LFB74:
	.loc 1 2749 0
	.cfi_startproc
.LVL314:
	mflr 0
	stwu 1,-8(1)
.LCFI95:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 2752 0
	lwz 0,8(3)
	.cfi_offset 65, 4
	andi. 9,0,528
	cmpwi 7,9,16
	beq- 7,.L289
	.loc 1 2758 0
	andi. 9,0,16
	bne- 0,.L289
	.loc 1 2763 0
	lis 9,.LC66@ha
	li 4,0
.LVL315:
	lfs 1,.LC66@l(9)
	li 3,8960
.LVL316:
	ori 4,4,34194
	bl glTexEnvf
	.loc 1 2764 0
	bl GL_DisableMultitexture
	.loc 1 2766 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI96:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL317:
.L289:
.LCFI97:
	.cfi_restore_state
	.loc 1 2759 0
	li 3,3042
.LVL318:
	bl glDisable
.LVL319:
	.loc 1 2766 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI98:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE74:
	.size	R_DisableMirrorShader, .-R_DisableMirrorShader
	.align 2
	.globl R_DrawMirrorSurfaces
	.type	R_DrawMirrorSurfaces, @function
R_DrawMirrorSurfaces:
.LFB75:
	.loc 1 2769 0
	.cfi_startproc
	mflr 0
	stwu 1,-80(1)
.LCFI99:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
	.loc 1 2773 0
	li 3,770
	li 4,1
	.loc 1 2769 0
	stfd 31,72(1)
	stw 21,20(1)
	.loc 1 2788 0
	lis 21,r_refdef@ha
	.cfi_offset 21, -60
	.cfi_offset 63, -8
	.loc 1 2769 0
	stw 22,24(1)
	.loc 1 2788 0
	lis 22,.LC67@ha
	.cfi_offset 22, -56
	.loc 1 2769 0
	stw 23,28(1)
	.loc 1 2784 0
	lis 23,r_projection_matrix@ha
	.cfi_offset 23, -52
	.loc 1 2769 0
	stw 24,32(1)
	.loc 1 2785 0
	lis 24,r_world_matrix@ha
	.cfi_offset 24, -48
	.loc 1 2769 0
	stw 25,36(1)
	.loc 1 2784 0
	la 23,r_projection_matrix@l(23)
	.loc 1 2769 0
	stw 26,40(1)
	lis 25,.LC1@ha
	.cfi_offset 26, -40
	.cfi_offset 25, -44
	stw 27,44(1)
	.loc 1 2780 0
	lis 26,.LANCHOR0@ha
	.loc 1 2769 0
	stw 28,48(1)
	.loc 1 2785 0
	la 24,r_world_matrix@l(24)
	.loc 1 2769 0
	stw 29,52(1)
	.loc 1 2802 0
	lis 28,.LC39@ha
	.cfi_offset 29, -28
	.cfi_offset 28, -32
	.cfi_offset 27, -36
	.loc 1 2769 0
	stw 31,60(1)
	.loc 1 2773 0
	lis 31,mirrorplanes+32@ha
	.cfi_offset 31, -20
	.loc 1 2769 0
	stw 0,84(1)
	.loc 1 2773 0
	la 31,mirrorplanes+32@l(31)
	.loc 1 2769 0
	stfd 30,64(1)
	.loc 1 2774 0
	li 29,0
	.loc 1 2769 0
	stw 18,8(1)
	.loc 1 2795 0
	addi 27,31,-32
	.loc 1 2769 0
	stw 19,12(1)
	stw 20,16(1)
	stw 30,56(1)
	.loc 1 2773 0
	.cfi_offset 30, -24
	.cfi_offset 20, -64
	.cfi_offset 19, -68
	.cfi_offset 18, -72
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	bl glBlendFunc
.LVL320:
	.loc 1 2780 0
	lis 9,.LC2@ha
	lfs 31,.LC2@l(9)
.LVL321:
.L301:
	.loc 1 2775 0
	lwz 0,0(31)
	cmpwi 7,0,0
	beq- 7,.L291
	.loc 1 2777 0
	li 3,5890
	.loc 1 2780 0
	la 30,.LANCHOR0@l(26)
	.loc 1 2777 0
	bl glMatrixMode
	.loc 1 2779 0
	bl glPushMatrix
	.loc 1 2780 0
	lfs 0,492(30)
	fcmpu 7,0,31
	bng- 7,.L305
	.loc 1 2781 0
	bl glLoadIdentity
	.loc 1 2782 0
	lfs 30,.LC39@l(28)
	lis 11,.LC2@ha
	fmr 1,30
	lfs 3,.LC2@l(11)
	fmr 2,30
	bl glTranslatef
	.loc 1 2783 0
	lis 9,.LC2@ha
	fmr 1,30
	lfs 3,.LC2@l(9)
	fmr 2,30
	bl glScalef
	.loc 1 2784 0
	mr 3,23
	bl glMultMatrixf
	.loc 1 2785 0
	mr 3,24
	bl glMultMatrixf
.L294:
	.loc 1 2795 0
	mulli 20,29,100
	lwz 3,0(31)
	add 20,20,27
	mr 4,20
	bl R_SetupMirrorShader
	.loc 1 2797 0
	lwz 19,0(31)
.LVL322:
	.loc 1 2799 0
	addi 3,20,12
	bl glNormal3fv
.LVL323:
	.loc 1 2800 0
	cmpwi 7,19,0
	beq- 7,.L295
	la 18,.LC1@l(25)
	b .L299
.L307:
	.loc 1 2805 0
	fmr 2,1
	lfs 4,532(30)
	fmr 3,1
	bl glColor4f
	.loc 1 2806 0
	mr 3,19
	bl EmitMirrorWaterPolys
.L297:
	.loc 1 2800 0
	lwz 19,40(19)
.LVL324:
	cmpwi 7,19,0
	beq- 7,.L295
.L299:
	.loc 1 2801 0
	lwz 0,8(19)
	.loc 1 2802 0
	lfs 1,0(18)
	.loc 1 2801 0
	andi. 9,0,528
	.loc 1 2804 0
	andi. 11,0,16
	.loc 1 2801 0
	cmpwi 7,9,528
	beq- 7,.L306
	.loc 1 2804 0
	bne- 0,.L307
	.loc 1 2808 0
	fmr 2,1
	fmr 3,1
	fmr 4,1
	bl glColor4f
	.loc 1 2809 0
	mr 3,19
	bl EmitMirrorPolys
	.loc 1 2800 0
	lwz 19,40(19)
.LVL325:
	cmpwi 7,19,0
	bne+ 7,.L299
.L295:
	.loc 1 2813 0
	lwz 3,0(31)
	mr 4,20
	bl R_DisableMirrorShader
	.loc 1 2815 0
	bl glPopMatrix
	.loc 1 2816 0
	lfs 0,492(30)
	fcmpu 7,0,31
	beq- 7,.L308
.L300:
	.loc 1 2820 0
	li 3,5888
	bl glMatrixMode
.LVL326:
.L291:
	.loc 1 2774 0
	cmpwi 7,29,7
	addi 31,31,100
	addi 29,29,1
.LVL327:
	bne+ 7,.L301
	.loc 1 2823 0
	li 3,770
	li 4,771
	bl glBlendFunc
	.loc 1 2824 0
	lwz 0,84(1)
	lwz 18,8(1)
	mtlr 0
	lwz 19,12(1)
	lwz 20,16(1)
	lwz 21,20(1)
	lwz 22,24(1)
	lwz 23,28(1)
	lwz 24,32(1)
	lwz 25,36(1)
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
.LVL328:
	lwz 30,56(1)
	lwz 31,60(1)
	lfd 30,64(1)
	lfd 31,72(1)
	addi 1,1,80
	.cfi_remember_state
.LCFI100:
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
	.cfi_restore 23
	.cfi_restore 22
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	blr
.LVL329:
.L306:
.LCFI101:
	.cfi_restore_state
	.loc 1 2802 0
	fmr 2,1
	lfs 4,.LC39@l(28)
	fmr 3,1
	bl glColor4f
	.loc 1 2803 0
	mr 3,19
	bl EmitMirrorPolys
	b .L297
.LVL330:
.L305:
	.loc 1 2788 0
	la 9,r_refdef@l(21)
	lfs 0,.LC67@l(22)
	lfs 1,112(9)
	lfs 2,116(9)
	lfs 3,120(9)
	fdivs 1,1,0
	fdivs 2,2,0
	fdivs 3,3,0
	bl glTranslatef
	.loc 1 2789 0
	li 3,8192
	li 4,9472
	li 5,9218
	bl glTexGeni
	.loc 1 2790 0
	li 4,9472
	li 5,9218
	li 3,8193
	bl glTexGeni
	.loc 1 2791 0
	li 3,3168
	bl glEnable
	.loc 1 2792 0
	li 3,3169
	bl glEnable
	b .L294
.LVL331:
.L308:
	.loc 1 2817 0
	li 3,3168
	bl glDisable
	.loc 1 2818 0
	li 3,3169
	bl glDisable
	b .L300
	.cfi_endproc
.LFE75:
	.size	R_DrawMirrorSurfaces, .-R_DrawMirrorSurfaces
	.align 2
	.globl R_Clear
	.type	R_Clear, @function
R_Clear:
.LFB76:
	.loc 1 2832 0
	.cfi_startproc
	.loc 1 2872 0
	li 0,0
	lis 9,gldepthmin@ha
	stw 0,gldepthmin@l(9)
	.loc 1 2873 0
	lis 9,.LC1@ha
	lwz 0,.LC1@l(9)
	lis 9,gldepthmax@ha
	.loc 1 2881 0
	.loc 1 2873 0
	stw 0,gldepthmax@l(9)
	.loc 1 2881 0
	blr
	.cfi_endproc
.LFE76:
	.size	R_Clear, .-R_Clear
	.align 2
	.globl R_RenderView
	.type	R_RenderView, @function
R_RenderView:
.LFB77:
	.loc 1 2891 0
	.cfi_startproc
.LVL332:
	.loc 1 2897 0
	lis 9,.LANCHOR0+552@ha
	.loc 1 2891 0
	mflr 0
	.loc 1 2897 0
	lfs 13,.LANCHOR0+552@l(9)
	lis 9,.LC2@ha
	lfs 0,.LC2@l(9)
	.loc 1 2891 0
	stwu 1,-8(1)
.LCFI102:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 2897 0
	fcmpu 7,13,0
	.loc 1 2891 0
	stw 0,12(1)
	.loc 1 2897 0
	bne- 7,.L310
	.cfi_offset 65, 4
	.loc 1 2900 0
	lis 9,r_worldentity+160@ha
	lwz 0,r_worldentity+160@l(9)
	cmpwi 7,0,0
	beq- 7,.L312
	.loc 1 2900 0 is_stmt 0 discriminator 1
	lis 9,cl+2688@ha
	lwz 0,cl+2688@l(9)
	cmpwi 7,0,0
	beq- 7,.L312
.L313:
	.loc 1 2912 0 is_stmt 1
	lis 3,r_origin@ha
	.loc 1 2903 0
	li 0,0
	lis 9,mirror@ha
	.loc 1 2912 0
	la 3,r_origin@l(3)
	.loc 1 2903 0
	stb 0,mirror@l(9)
	.loc 1 2912 0
	bl CL_PointContents
	.loc 1 2913 0
	lis 9,.LC1@ha
	.loc 1 2963 0
	li 3,2912
	.loc 1 2913 0
	lwz 0,.LC1@l(9)
	lis 9,fog_color+12@ha
	stw 0,fog_color+12@l(9)
.LVL333:
	.loc 1 2963 0
	bl glDisable
.LVL334:
	.loc 1 2971 0
	bl R_ClearMirrorChains
	.loc 1 2979 0
	bl R_RenderScene
	.loc 1 2986 0
	bl R_DrawWaterSurfaces
	.loc 1 3001 0
	bl R_DrawParticles
	.loc 1 3014 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI103:
	.cfi_def_cfa_offset 0
	mtlr 0
	.loc 1 3012 0
	b R_PolyBlend
.L310:
.LCFI104:
	.cfi_restore_state
	.loc 1 3014 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI105:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L312:
.LCFI106:
	.cfi_restore_state
	.loc 1 2901 0
	lis 3,.LC68@ha
	la 3,.LC68@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L313
	.cfi_endproc
.LFE77:
	.size	R_RenderView, .-R_RenderView
	.comm	frustumPlanes,96,4
	.comm	triangleVis,2048,4
	.comm	extrudedTimestamp,8192,4
	.comm	extrudedVerts,24576,4
	.comm	extrudeTimeStamp,4,4
	.comm	lastposenum,4,4
	.globl shadedots
	.globl r_avertexnormal_dots
	.comm	ambientlight,4,4
	.comm	shadelight,4,4
	.comm	shadevector,12,4
	.globl r_avertexnormals
	.comm	mirror_contents,4,4
	.comm	mirrorplanes,800,4
	.comm	fog_color,16,4
	.globl fog_waterfog
	.globl fog_enabled
	.globl fog_end
	.globl fog_start
	.globl fog_b
	.globl fog_g
	.globl fog_r
	.globl gl_transformlerp
	.globl gl_truform_tesselation
	.globl gl_truform
	.globl gl_caustics
	.globl gl_wireframe
	.globl mir_distance
	.globl mir_forcewater
	.globl mir_frameskip
	.globl mir_detail
	.globl sh_noshadowpopping
	.globl sh_showtangent
	.globl sh_noefrags
	.globl sh_glares
	.globl sh_nocache
	.globl sh_playershadow
	.globl sh_colormaps
	.globl sh_bumpmaps
	.globl sh_nocleversave
	.globl sh_noscissor
	.globl sh_infinitevolumes
	.globl sh_noeclip
	.globl sh_nosvbsp
	.globl sh_norevis
	.globl sh_debuginfo
	.globl sh_fps
	.globl sh_glows
	.globl sh_showlightnum
	.globl sh_worldshadows
	.globl sh_entityshadows
	.globl sh_visiblevolumes
	.globl sh_radiusscale
	.globl sh_lightmapbright
	.globl gl_calcdepth
	.globl gl_watershader
	.globl gl_doubleeyes
	.globl gl_reporttjunctions
	.globl gl_nocolors
	.globl gl_playermip
	.globl gl_flashblend
	.globl gl_polyblend
	.globl gl_affinemodels
	.globl gl_smoothmodels
	.globl gl_cull
	.globl gl_clear
	.globl gl_finish
	.globl r_novis
	.globl r_dynamic
	.globl r_wateralpha
	.globl r_shadows
	.globl r_lightmap
	.globl r_fullbright
	.globl r_drawviewmodel
	.globl r_drawentities
	.globl r_norefresh
	.comm	d_lightstylevalue,1024,4
	.comm	r_notexture_mip,4,4
	.comm	r_oldviewleaf,4,4
	.comm	r_viewleaf,4,4
	.comm	r_refdef,148,4
	.globl color_black
	.comm	numClearsSaved,4,4
	.comm	r_Iviewport,16,4
	.comm	r_Dworld_matrix,128,8
	.comm	r_Dproject_matrix,128,8
	.comm	r_base_world_matrix,64,4
	.comm	r_world_matrix,64,4
	.comm	r_projection_matrix,64,4
	.comm	r_origin,12,4
	.comm	vright,12,4
	.comm	vpn,12,4
	.comm	vup,12,4
	.globl busy_caustics
	.comm	caustics_textures,32,4
	.comm	mirror_clipside,4,4
	.comm	mirror_far_plane,20,4
	.comm	mirror_plane,4,4
	.comm	glare,1,1
	.comm	mirror,1,1
	.comm	mirrortexturenum,4,4
	.comm	playertextures,4,4
	.comm	particletexture_dirblood,4,4
	.comm	particletexture_blood,4,4
	.comm	particletexture_tele,4,4
	.comm	particletexture_glow2,4,4
	.comm	particletexture_glow,4,4
	.comm	particletexture_smoke,4,4
	.comm	particletexture,4,4
	.globl cnttextures
	.globl currenttexture
	.comm	envmap,1,1
	.comm	c_alias_polys,4,4
	.comm	c_brush_polys,4,4
	.comm	frustum,80,4
	.comm	r_lightTimestamp,4,4
	.comm	r_framecount,4,4
	.comm	r_visframecount,4,4
	.comm	currententity,4,4
	.comm	r_entorigin,12,4
	.comm	modelorg,12,4
	.comm	r_cache_thrash,1,1
	.comm	r_worldentity,584,8
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1065353216
.LC2:
	.4byte	0
.LC3:
	.4byte	-2147483648
.LC4:
	.4byte	-1082130432
.LC15:
	.4byte	1127481344
.LC16:
	.4byte	1135869952
.LC17:
	.4byte	-1020002304
.LC20:
	.4byte	1501560836
.LC21:
	.4byte	-1073741824
.LC22:
	.4byte	1116471296
.LC23:
	.4byte	1092616192
.LC25:
	.4byte	1132396544
.LC26:
	.4byte	1191538688
.LC27:
	.4byte	1191540736
.LC28:
	.4byte	1169690624
.LC29:
	.4byte	1174667264
.LC31:
	.4byte	1036831949
.LC32:
	.4byte	1045220557
.LC33:
	.4byte	1120403456
.LC34:
	.4byte	-1027080192
.LC35:
	.4byte	1093664768
.LC36:
	.4byte	-1028390912
.LC37:
	.4byte	1119092736
.LC39:
	.4byte	1056964608
.LC46:
	.4byte	-1082130434
.LC49:
	.4byte	1065353214
.LC51:
	.4byte	1116209152
.LC53:
	.4byte	1068149419
.LC56:
	.4byte	1325400064
.LC61:
	.4byte	1132462080
.LC62:
	.4byte	1073741824
.LC63:
	.4byte	1173358592
.LC64:
	.4byte	1191539968
.LC65:
	.4byte	1145077760
.LC66:
	.4byte	1145044992
.LC67:
	.4byte	1148846080
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC14:
	.4byte	1069128089
	.4byte	-1717986918
.LC30:
	.4byte	1070805811
	.4byte	858993459
.LC59:
	.4byte	1074340347
	.4byte	1413754136
	.section	".data"
	.align 3
	.set	.LANCHOR0,. + 0
	.type	gl_transformlerp, @object
	.size	gl_transformlerp, 20
gl_transformlerp:
	.long	.LC82
	.long	.LC42
	.byte	1
	.zero	11
	.type	sh_visiblevolumes, @object
	.size	sh_visiblevolumes, 20
sh_visiblevolumes:
	.long	.LC112
	.long	.LC42
	.zero	12
	.type	gl_wireframe, @object
	.size	gl_wireframe, 20
gl_wireframe:
	.long	.LC43
	.long	.LC42
	.zero	12
	.type	sh_lightmapbright, @object
	.size	sh_lightmapbright, 20
sh_lightmapbright:
	.long	.LC115
	.long	.LC114
	.zero	12
	.type	r_drawentities, @object
	.size	r_drawentities, 20
r_drawentities:
	.long	.LC135
	.long	.LC70
	.zero	12
	.type	sh_playershadow, @object
	.size	sh_playershadow, 20
sh_playershadow:
	.long	.LC97
	.long	.LC70
	.zero	12
	.type	r_drawviewmodel, @object
	.size	r_drawviewmodel, 20
r_drawviewmodel:
	.long	.LC134
	.long	.LC70
	.zero	12
	.type	gl_calcdepth, @object
	.size	gl_calcdepth, 20
gl_calcdepth:
	.long	.LC116
	.long	.LC42
	.zero	12
	.type	gl_polyblend, @object
	.size	gl_polyblend, 20
gl_polyblend:
	.long	.LC123
	.long	.LC70
	.zero	12
	.zero	4
	.type	p.15274, @object
	.size	p.15274, 128
p.15274:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1074790400
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.type	p.15282, @object
	.size	p.15282, 128
p.15282:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1074790400
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.type	gl_cull, @object
	.size	gl_cull, 20
gl_cull:
	.long	.LC126
	.long	.LC70
	.zero	12
	.type	mir_distance, @object
	.size	mir_distance, 20
mir_distance:
	.long	.LC87
	.long	.LC88
	.byte	1
	.zero	11
	.type	mir_detail, @object
	.size	mir_detail, 20
mir_detail:
	.long	.LC91
	.long	.LC70
	.byte	1
	.zero	11
	.type	mir_frameskip, @object
	.size	mir_frameskip, 20
mir_frameskip:
	.long	.LC90
	.long	.LC70
	.byte	1
	.zero	11
	.type	r_wateralpha, @object
	.size	r_wateralpha, 20
r_wateralpha:
	.long	.LC131
	.long	.LC114
	.zero	12
	.type	r_norefresh, @object
	.size	r_norefresh, 20
r_norefresh:
	.long	.LC136
	.long	.LC42
	.zero	12
	.type	r_avertexnormal_dots, @object
	.size	r_avertexnormal_dots, 16384
r_avertexnormal_dots:
	.long	1067282596
	.long	1067869798
	.long	1069295862
	.long	1068289229
	.long	1070050836
	.long	1071309128
	.long	1068457001
	.long	1068540887
	.long	1070302495
	.long	1070386381
	.long	1071980216
	.long	1073490166
	.long	1072735191
	.long	1073070735
	.long	1071980216
	.long	1065520988
	.long	1064178811
	.long	1065940419
	.long	1062333317
	.long	1063172178
	.long	1063339950
	.long	1064346583
	.long	1064682127
	.long	1066527621
	.long	1066275963
	.long	1062333317
	.long	1062501089
	.long	1063507722
	.long	1063507722
	.long	1063004406
	.long	1064346583
	.long	1063843267
	.long	1065353216
	.long	1067114824
	.long	1065017672
	.long	1069379748
	.long	1067869798
	.long	1070134723
	.long	1064682127
	.long	1065940419
	.long	1066527621
	.long	1070386381
	.long	1070470267
	.long	1068708659
	.long	1068457001
	.long	1071393014
	.long	1071896330
	.long	1071980216
	.long	1073154621
	.long	1073657938
	.long	1072902963
	.long	1071057469
	.long	1071309128
	.long	1072567419
	.long	1070386381
	.long	1071057469
	.long	1071896330
	.long	1072567419
	.long	1073154621
	.long	1073657938
	.long	1073490166
	.long	1069044204
	.long	1067198710
	.long	1069463634
	.long	1064178811
	.long	1065185444
	.long	1065185444
	.long	1067282596
	.long	1067198710
	.long	1069044204
	.long	1069463634
	.long	1063507722
	.long	1063507722
	.long	1064849900
	.long	1063843267
	.long	1065017672
	.long	1066947052
	.long	1062333317
	.long	1061326684
	.long	1062333317
	.long	1060487823
	.long	1060655596
	.long	1060823368
	.long	1061326684
	.long	1061830001
	.long	1063004406
	.long	1062501089
	.long	1060655596
	.long	1061326684
	.long	1061326684
	.long	1063507722
	.long	1062333317
	.long	1063507722
	.long	1062333317
	.long	1063507722
	.long	1063843267
	.long	1062501089
	.long	1064682127
	.long	1066527621
	.long	1064849900
	.long	1068708659
	.long	1066947052
	.long	1065017672
	.long	1064346583
	.long	1065353216
	.long	1065940419
	.long	1068457001
	.long	1067114824
	.long	1069379748
	.long	1067869798
	.long	1070134723
	.long	1070470267
	.long	1068457001
	.long	1063004406
	.long	1062501089
	.long	1063843267
	.long	1062333317
	.long	1062333317
	.long	1063339950
	.long	1063507722
	.long	1064682127
	.long	1066527621
	.long	1065017672
	.long	1063172178
	.long	1064178811
	.long	1064346583
	.long	1065520988
	.long	1067869798
	.long	1065940419
	.long	1068289229
	.long	1068540887
	.long	1066275963
	.long	1070050836
	.long	1073070735
	.long	1071980216
	.long	1071980216
	.long	1070302495
	.long	1070386381
	.long	1071393014
	.long	1072902963
	.long	1071980216
	.long	1061997773
	.long	1062836634
	.long	1061830001
	.long	1064178811
	.long	1061997773
	.long	1062836634
	.long	1061494456
	.long	1060991140
	.long	1060655596
	.long	1061494456
	.long	1060991140
	.long	1060655596
	.long	1060320051
	.long	1060320051
	.long	1060487823
	.long	1061326684
	.long	1060823368
	.long	1061830001
	.long	1061830001
	.long	1060823368
	.long	1061326684
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1067534254
	.long	1067534254
	.long	1069379748
	.long	1067282596
	.long	1069547520
	.long	1071309128
	.long	1066527621
	.long	1066947052
	.long	1068540887
	.long	1069211976
	.long	1070721925
	.long	1073238508
	.long	1072651305
	.long	1072399647
	.long	1071309128
	.long	1065520988
	.long	1064011039
	.long	1065353216
	.long	1061830001
	.long	1062836634
	.long	1062668861
	.long	1063843267
	.long	1063675494
	.long	1065017672
	.long	1065185444
	.long	1061494456
	.long	1061494456
	.long	1062501089
	.long	1062333317
	.long	1061830001
	.long	1063004406
	.long	1062668861
	.long	1064011039
	.long	1065185444
	.long	1063843267
	.long	1067366482
	.long	1065604874
	.long	1068121457
	.long	1063339950
	.long	1064346583
	.long	1064849900
	.long	1068792545
	.long	1068624773
	.long	1066863165
	.long	1066275963
	.long	1069631406
	.long	1070470267
	.long	1070302495
	.long	1072064102
	.long	1072986849
	.long	1071728558
	.long	1069883064
	.long	1070805811
	.long	1071728558
	.long	1071225242
	.long	1071225242
	.long	1072483533
	.long	1072483533
	.long	1073490166
	.long	1073657938
	.long	1073154621
	.long	1067702026
	.long	1066108191
	.long	1068624773
	.long	1064011039
	.long	1064849900
	.long	1065185444
	.long	1066863165
	.long	1067534254
	.long	1069715292
	.long	1069379748
	.long	1062501089
	.long	1062836634
	.long	1063675494
	.long	1063339950
	.long	1064178811
	.long	1065353216
	.long	1061494456
	.long	1060823368
	.long	1061662228
	.long	1060655596
	.long	1060487823
	.long	1060991140
	.long	1061158912
	.long	1061830001
	.long	1063004406
	.long	1062165545
	.long	1061158912
	.long	1062165545
	.long	1061830001
	.long	1064682127
	.long	1063339950
	.long	1064346583
	.long	1063004406
	.long	1064178811
	.long	1064011039
	.long	1062836634
	.long	1066024305
	.long	1068121457
	.long	1065772646
	.long	1069966950
	.long	1067953684
	.long	1065437102
	.long	1065772646
	.long	1067618140
	.long	1067953684
	.long	1070386381
	.long	1069295862
	.long	1071225242
	.long	1069883064
	.long	1071728558
	.long	1071728558
	.long	1070134723
	.long	1064178811
	.long	1063675494
	.long	1065185444
	.long	1063339950
	.long	1063339950
	.long	1064514355
	.long	1064849900
	.long	1066275963
	.long	1068624773
	.long	1067030938
	.long	1064011039
	.long	1064849900
	.long	1065437102
	.long	1066192077
	.long	1068624773
	.long	1067198710
	.long	1069631406
	.long	1070218609
	.long	1068037571
	.long	1070721925
	.long	1073490166
	.long	1072483533
	.long	1072986849
	.long	1071812444
	.long	1071560786
	.long	1072735191
	.long	1073657938
	.long	1072986849
	.long	1061830001
	.long	1063004406
	.long	1061997773
	.long	1064346583
	.long	1062668861
	.long	1063339950
	.long	1060991140
	.long	1060991140
	.long	1060487823
	.long	1062333317
	.long	1061494456
	.long	1061326684
	.long	1060320051
	.long	1060823368
	.long	1060655596
	.long	1060823368
	.long	1060320051
	.long	1060991140
	.long	1062836634
	.long	1061494456
	.long	1062333317
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1068205343
	.long	1067618140
	.long	1069799178
	.long	1066779279
	.long	1069211976
	.long	1071309128
	.long	1065017672
	.long	1065772646
	.long	1067030938
	.long	1068205343
	.long	1069379748
	.long	1072567419
	.long	1072231875
	.long	1071309128
	.long	1070554153
	.long	1066108191
	.long	1064346583
	.long	1065185444
	.long	1061830001
	.long	1062836634
	.long	1062333317
	.long	1063675494
	.long	1063172178
	.long	1064178811
	.long	1064682127
	.long	1061326684
	.long	1060991140
	.long	1061830001
	.long	1061326684
	.long	1060991140
	.long	1061830001
	.long	1061662228
	.long	1062836634
	.long	1064011039
	.long	1062836634
	.long	1065353216
	.long	1064178811
	.long	1065856532
	.long	1062165545
	.long	1063004406
	.long	1063507722
	.long	1066695393
	.long	1066359849
	.long	1064849900
	.long	1064514355
	.long	1067702026
	.long	1068540887
	.long	1068289229
	.long	1070386381
	.long	1071812444
	.long	1070134723
	.long	1068121457
	.long	1069547520
	.long	1070218609
	.long	1071141356
	.long	1070638039
	.long	1072231875
	.long	1071560786
	.long	1072986849
	.long	1073070735
	.long	1072064102
	.long	1065688760
	.long	1064849900
	.long	1067114824
	.long	1063675494
	.long	1064178811
	.long	1064849900
	.long	1065772646
	.long	1067114824
	.long	1069379748
	.long	1068457001
	.long	1061494456
	.long	1061997773
	.long	1062668861
	.long	1062836634
	.long	1063339950
	.long	1064011039
	.long	1060823368
	.long	1060487823
	.long	1060991140
	.long	1060991140
	.long	1060487823
	.long	1061158912
	.long	1060823368
	.long	1061830001
	.long	1062668861
	.long	1061662228
	.long	1061830001
	.long	1063004406
	.long	1062165545
	.long	1065772646
	.long	1064346583
	.long	1065185444
	.long	1063675494
	.long	1064514355
	.long	1064011039
	.long	1063004406
	.long	1067366482
	.long	1069044204
	.long	1066527621
	.long	1070302495
	.long	1068205343
	.long	1065520988
	.long	1067618140
	.long	1069547520
	.long	1069463634
	.long	1072064102
	.long	1071141356
	.long	1072567419
	.long	1071393014
	.long	1072651305
	.long	1072064102
	.long	1071141356
	.long	1065353216
	.long	1065017672
	.long	1067282596
	.long	1064514355
	.long	1064682127
	.long	1066108191
	.long	1066695393
	.long	1068457001
	.long	1070638039
	.long	1069211976
	.long	1065185444
	.long	1066192077
	.long	1067450368
	.long	1067366482
	.long	1069631406
	.long	1068792545
	.long	1070973583
	.long	1071812444
	.long	1069966950
	.long	1071393014
	.long	1073322394
	.long	1072819077
	.long	1073574052
	.long	1072986849
	.long	1072567419
	.long	1073490166
	.long	1073657938
	.long	1073238508
	.long	1062165545
	.long	1063507722
	.long	1062836634
	.long	1065017672
	.long	1063675494
	.long	1064346583
	.long	1061158912
	.long	1061662228
	.long	1060823368
	.long	1063507722
	.long	1062501089
	.long	1062333317
	.long	1060655596
	.long	1061494456
	.long	1061326684
	.long	1060655596
	.long	1060320051
	.long	1060487823
	.long	1063843267
	.long	1062501089
	.long	1063507722
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1069211976
	.long	1068205343
	.long	1070386381
	.long	1066695393
	.long	1069211976
	.long	1071309128
	.long	1064346583
	.long	1065185444
	.long	1065772646
	.long	1067534254
	.long	1068121457
	.long	1071560786
	.long	1071728558
	.long	1070134723
	.long	1069883064
	.long	1067282596
	.long	1065017672
	.long	1065772646
	.long	1062501089
	.long	1063507722
	.long	1062668861
	.long	1064011039
	.long	1063172178
	.long	1063843267
	.long	1064682127
	.long	1061662228
	.long	1060991140
	.long	1061830001
	.long	1060655596
	.long	1060655596
	.long	1061158912
	.long	1061326684
	.long	1061997773
	.long	1063339950
	.long	1062501089
	.long	1064346583
	.long	1063172178
	.long	1064514355
	.long	1061326684
	.long	1061997773
	.long	1062333317
	.long	1064849900
	.long	1064682127
	.long	1063507722
	.long	1063339950
	.long	1066024305
	.long	1066275963
	.long	1066192077
	.long	1068457001
	.long	1070302495
	.long	1068457001
	.long	1065940419
	.long	1067618140
	.long	1068205343
	.long	1070134723
	.long	1069128090
	.long	1071141356
	.long	1069966950
	.long	1071812444
	.long	1071980216
	.long	1070386381
	.long	1064178811
	.long	1063675494
	.long	1065185444
	.long	1063004406
	.long	1063172178
	.long	1064178811
	.long	1064682127
	.long	1065940419
	.long	1068289229
	.long	1066863165
	.long	1060823368
	.long	1061326684
	.long	1061494456
	.long	1062165545
	.long	1062333317
	.long	1062836634
	.long	1060320051
	.long	1060487823
	.long	1060655596
	.long	1061662228
	.long	1060823368
	.long	1061494456
	.long	1060823368
	.long	1061830001
	.long	1062333317
	.long	1061326684
	.long	1062501089
	.long	1063675494
	.long	1062668861
	.long	1066863165
	.long	1065017672
	.long	1065604874
	.long	1064011039
	.long	1064514355
	.long	1063675494
	.long	1063004406
	.long	1068037571
	.long	1069128090
	.long	1066611507
	.long	1069799178
	.long	1067618140
	.long	1065185444
	.long	1068876431
	.long	1070805811
	.long	1070218609
	.long	1073154621
	.long	1072315761
	.long	1073238508
	.long	1072147988
	.long	1072735191
	.long	1071560786
	.long	1071225242
	.long	1066947052
	.long	1066779279
	.long	1069044204
	.long	1066275963
	.long	1066611507
	.long	1068373115
	.long	1068792545
	.long	1070470267
	.long	1072147988
	.long	1070973583
	.long	1067198710
	.long	1068205343
	.long	1069547520
	.long	1068876431
	.long	1070805811
	.long	1070470267
	.long	1072231875
	.long	1072986849
	.long	1071644672
	.long	1072064102
	.long	1072819077
	.long	1072819077
	.long	1073574052
	.long	1073657938
	.long	1073238508
	.long	1073574052
	.long	1073070735
	.long	1072651305
	.long	1063004406
	.long	1064514355
	.long	1064011039
	.long	1066527621
	.long	1065017672
	.long	1065604874
	.long	1061830001
	.long	1062668861
	.long	1061494456
	.long	1064849900
	.long	1063675494
	.long	1063507722
	.long	1061326684
	.long	1062333317
	.long	1062333317
	.long	1060991140
	.long	1060655596
	.long	1060487823
	.long	1065017672
	.long	1063507722
	.long	1064849900
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1070386381
	.long	1069044204
	.long	1071057469
	.long	1067198710
	.long	1069463634
	.long	1071309128
	.long	1064178811
	.long	1065185444
	.long	1065185444
	.long	1067282596
	.long	1067198710
	.long	1070386381
	.long	1071057469
	.long	1069044204
	.long	1069463634
	.long	1068708659
	.long	1066527621
	.long	1066947052
	.long	1063507722
	.long	1064682127
	.long	1063507722
	.long	1064849900
	.long	1063507722
	.long	1063843267
	.long	1065017672
	.long	1062333317
	.long	1061326684
	.long	1062333317
	.long	1060487823
	.long	1060655596
	.long	1060823368
	.long	1061326684
	.long	1061830001
	.long	1063004406
	.long	1062501089
	.long	1063843267
	.long	1062501089
	.long	1063507722
	.long	1060655596
	.long	1061326684
	.long	1061326684
	.long	1063507722
	.long	1063507722
	.long	1062333317
	.long	1062333317
	.long	1065017672
	.long	1064682127
	.long	1064849900
	.long	1066527621
	.long	1068708659
	.long	1066947052
	.long	1064346583
	.long	1065353216
	.long	1065940419
	.long	1068457001
	.long	1067114824
	.long	1069379748
	.long	1067869798
	.long	1070134723
	.long	1070470267
	.long	1068457001
	.long	1063004406
	.long	1062501089
	.long	1063843267
	.long	1062333317
	.long	1062333317
	.long	1063339950
	.long	1063507722
	.long	1064682127
	.long	1066527621
	.long	1065017672
	.long	1060320051
	.long	1060655596
	.long	1060823368
	.long	1061494456
	.long	1061326684
	.long	1061830001
	.long	1060320051
	.long	1060655596
	.long	1060487823
	.long	1062333317
	.long	1061494456
	.long	1061997773
	.long	1060991140
	.long	1061830001
	.long	1061997773
	.long	1060991140
	.long	1063172178
	.long	1064178811
	.long	1062836634
	.long	1067282596
	.long	1065520988
	.long	1065520988
	.long	1064178811
	.long	1064178811
	.long	1063172178
	.long	1062836634
	.long	1067869798
	.long	1068289229
	.long	1065940419
	.long	1068540887
	.long	1066275963
	.long	1064346583
	.long	1069295862
	.long	1071309128
	.long	1070050836
	.long	1073490166
	.long	1072735191
	.long	1073070735
	.long	1071980216
	.long	1071980216
	.long	1070302495
	.long	1070386381
	.long	1067869798
	.long	1068289229
	.long	1070050836
	.long	1068457001
	.long	1068540887
	.long	1070302495
	.long	1070386381
	.long	1071980216
	.long	1073070735
	.long	1071980216
	.long	1069379748
	.long	1070134723
	.long	1071393014
	.long	1070470267
	.long	1071896330
	.long	1071980216
	.long	1073154621
	.long	1073657938
	.long	1072902963
	.long	1072567419
	.long	1071896330
	.long	1072567419
	.long	1073154621
	.long	1073657938
	.long	1073490166
	.long	1072902963
	.long	1071980216
	.long	1071393014
	.long	1064346583
	.long	1065940419
	.long	1065353216
	.long	1068457001
	.long	1067114824
	.long	1067869798
	.long	1063004406
	.long	1063843267
	.long	1062501089
	.long	1066527621
	.long	1065017672
	.long	1064682127
	.long	1062333317
	.long	1063339950
	.long	1063507722
	.long	1061830001
	.long	1061326684
	.long	1060823368
	.long	1065940419
	.long	1064346583
	.long	1066275963
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1071560786
	.long	1070134723
	.long	1071728558
	.long	1068121457
	.long	1069883064
	.long	1071309128
	.long	1064346583
	.long	1065772646
	.long	1065185444
	.long	1067534254
	.long	1066695393
	.long	1069211976
	.long	1070386381
	.long	1068205343
	.long	1069211976
	.long	1070302495
	.long	1068457001
	.long	1068457001
	.long	1064849900
	.long	1066275963
	.long	1064682127
	.long	1066192077
	.long	1064514355
	.long	1064346583
	.long	1066024305
	.long	1063507722
	.long	1062333317
	.long	1063339950
	.long	1060655596
	.long	1061326684
	.long	1061158912
	.long	1061997773
	.long	1061997773
	.long	1063339950
	.long	1063172178
	.long	1063843267
	.long	1062501089
	.long	1063172178
	.long	1060655596
	.long	1061326684
	.long	1060991140
	.long	1062501089
	.long	1062668861
	.long	1061662228
	.long	1061830001
	.long	1064682127
	.long	1063507722
	.long	1064011039
	.long	1065017672
	.long	1067282596
	.long	1065772646
	.long	1063004406
	.long	1064011039
	.long	1064514355
	.long	1066275963
	.long	1065017672
	.long	1067198710
	.long	1065604874
	.long	1068205343
	.long	1068876431
	.long	1066527621
	.long	1061830001
	.long	1061494456
	.long	1062668861
	.long	1061662228
	.long	1061326684
	.long	1062333317
	.long	1062333317
	.long	1063507722
	.long	1064849900
	.long	1063675494
	.long	1060320051
	.long	1060487823
	.long	1060487823
	.long	1060823368
	.long	1060655596
	.long	1060991140
	.long	1060823368
	.long	1061326684
	.long	1060655596
	.long	1063004406
	.long	1062165545
	.long	1062333317
	.long	1061326684
	.long	1061830001
	.long	1061494456
	.long	1060823368
	.long	1063675494
	.long	1064514355
	.long	1063004406
	.long	1066863165
	.long	1065604874
	.long	1065017672
	.long	1064011039
	.long	1063675494
	.long	1062501089
	.long	1062668861
	.long	1066947052
	.long	1066779279
	.long	1065017672
	.long	1066611507
	.long	1064849900
	.long	1063507722
	.long	1068876431
	.long	1070805811
	.long	1069044204
	.long	1073154621
	.long	1072315761
	.long	1072147988
	.long	1070973583
	.long	1070470267
	.long	1068373115
	.long	1068792545
	.long	1068037571
	.long	1069128090
	.long	1070218609
	.long	1070134723
	.long	1069799178
	.long	1071560786
	.long	1071225242
	.long	1072735191
	.long	1073238508
	.long	1072147988
	.long	1071141356
	.long	1071812444
	.long	1072651305
	.long	1071980216
	.long	1072819077
	.long	1073070735
	.long	1073574052
	.long	1073657938
	.long	1073574052
	.long	1072819077
	.long	1070805811
	.long	1072064102
	.long	1072231875
	.long	1072986849
	.long	1073238508
	.long	1071644672
	.long	1070470267
	.long	1069547520
	.long	1065940419
	.long	1068205343
	.long	1067618140
	.long	1070386381
	.long	1069128090
	.long	1069966950
	.long	1064178811
	.long	1065185444
	.long	1063675494
	.long	1068289229
	.long	1066863165
	.long	1065940419
	.long	1063172178
	.long	1064178811
	.long	1064682127
	.long	1062836634
	.long	1062333317
	.long	1061494456
	.long	1066611507
	.long	1065185444
	.long	1067618140
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1072567419
	.long	1071309128
	.long	1072231875
	.long	1069379748
	.long	1070554153
	.long	1071309128
	.long	1065017672
	.long	1067030938
	.long	1065772646
	.long	1068205343
	.long	1066779279
	.long	1068205343
	.long	1069799178
	.long	1067618140
	.long	1069211976
	.long	1071812444
	.long	1070386381
	.long	1070134723
	.long	1066695393
	.long	1068540887
	.long	1066359849
	.long	1068289229
	.long	1065856532
	.long	1065353216
	.long	1067702026
	.long	1064849900
	.long	1063507722
	.long	1064514355
	.long	1061326684
	.long	1062165545
	.long	1061830001
	.long	1063004406
	.long	1062836634
	.long	1064011039
	.long	1064178811
	.long	1064178811
	.long	1062836634
	.long	1063172178
	.long	1060991140
	.long	1061662228
	.long	1060991140
	.long	1061830001
	.long	1062333317
	.long	1061326684
	.long	1061830001
	.long	1064682127
	.long	1062836634
	.long	1063675494
	.long	1064346583
	.long	1066108191
	.long	1065185444
	.long	1062165545
	.long	1062836634
	.long	1063507722
	.long	1064514355
	.long	1063675494
	.long	1065185444
	.long	1064346583
	.long	1066192077
	.long	1067366482
	.long	1065017672
	.long	1061158912
	.long	1060823368
	.long	1061662228
	.long	1060991140
	.long	1060655596
	.long	1061494456
	.long	1061326684
	.long	1062333317
	.long	1063507722
	.long	1062501089
	.long	1060823368
	.long	1060487823
	.long	1060487823
	.long	1060487823
	.long	1060320051
	.long	1060655596
	.long	1061494456
	.long	1061997773
	.long	1060991140
	.long	1063675494
	.long	1062836634
	.long	1062668861
	.long	1061662228
	.long	1061830001
	.long	1061158912
	.long	1060823368
	.long	1064011039
	.long	1064514355
	.long	1063004406
	.long	1065772646
	.long	1065185444
	.long	1064346583
	.long	1063675494
	.long	1063004406
	.long	1061830001
	.long	1062165545
	.long	1065353216
	.long	1065017672
	.long	1063843267
	.long	1064682127
	.long	1063507722
	.long	1062501089
	.long	1067618140
	.long	1069547520
	.long	1067282596
	.long	1072064102
	.long	1071141356
	.long	1070638039
	.long	1069211976
	.long	1068457001
	.long	1066108191
	.long	1066695393
	.long	1067366482
	.long	1069044204
	.long	1069463634
	.long	1071141356
	.long	1070302495
	.long	1072064102
	.long	1071141356
	.long	1072651305
	.long	1072567419
	.long	1071393014
	.long	1072231875
	.long	1072986849
	.long	1073238508
	.long	1073070735
	.long	1073322394
	.long	1073657938
	.long	1073574052
	.long	1072986849
	.long	1073490166
	.long	1072819077
	.long	1069631406
	.long	1071393014
	.long	1070973583
	.long	1071812444
	.long	1072567419
	.long	1069966950
	.long	1068792545
	.long	1067450368
	.long	1068121457
	.long	1070218609
	.long	1069547520
	.long	1072064102
	.long	1070638039
	.long	1071560786
	.long	1065688760
	.long	1067114824
	.long	1064849900
	.long	1069379748
	.long	1068457001
	.long	1067114824
	.long	1064178811
	.long	1064849900
	.long	1065772646
	.long	1064011039
	.long	1063339950
	.long	1062668861
	.long	1066527621
	.long	1065520988
	.long	1068205343
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1073238508
	.long	1072399647
	.long	1072651305
	.long	1070721925
	.long	1071309128
	.long	1071309128
	.long	1066527621
	.long	1068540887
	.long	1066947052
	.long	1069211976
	.long	1067282596
	.long	1067534254
	.long	1069379748
	.long	1067534254
	.long	1069547520
	.long	1072986849
	.long	1072064102
	.long	1071728558
	.long	1068792545
	.long	1070470267
	.long	1068624773
	.long	1070302495
	.long	1068121457
	.long	1067366482
	.long	1069631406
	.long	1066863165
	.long	1064849900
	.long	1066275963
	.long	1062333317
	.long	1063339950
	.long	1063004406
	.long	1064346583
	.long	1064011039
	.long	1065185444
	.long	1065604874
	.long	1065017672
	.long	1063843267
	.long	1063675494
	.long	1061830001
	.long	1062668861
	.long	1061494456
	.long	1061830001
	.long	1062668861
	.long	1061494456
	.long	1062501089
	.long	1065185444
	.long	1062836634
	.long	1063843267
	.long	1064011039
	.long	1065520988
	.long	1065353216
	.long	1061830001
	.long	1061997773
	.long	1063004406
	.long	1063339950
	.long	1062668861
	.long	1064011039
	.long	1063339950
	.long	1064849900
	.long	1066192077
	.long	1064346583
	.long	1060991140
	.long	1060487823
	.long	1060991140
	.long	1060655596
	.long	1060320051
	.long	1060823368
	.long	1060655596
	.long	1061326684
	.long	1062333317
	.long	1061494456
	.long	1061494456
	.long	1060823368
	.long	1060991140
	.long	1060487823
	.long	1060320051
	.long	1060823368
	.long	1062501089
	.long	1062836634
	.long	1061662228
	.long	1064011039
	.long	1063339950
	.long	1063004406
	.long	1062165545
	.long	1061830001
	.long	1060991140
	.long	1061158912
	.long	1064011039
	.long	1064178811
	.long	1062836634
	.long	1064682127
	.long	1064346583
	.long	1063339950
	.long	1063004406
	.long	1062165545
	.long	1061158912
	.long	1061830001
	.long	1064178811
	.long	1063675494
	.long	1062836634
	.long	1063339950
	.long	1062333317
	.long	1061494456
	.long	1065772646
	.long	1067618140
	.long	1065185444
	.long	1070386381
	.long	1069295862
	.long	1068624773
	.long	1067030938
	.long	1066275963
	.long	1064514355
	.long	1064849900
	.long	1066024305
	.long	1068121457
	.long	1067953684
	.long	1071225242
	.long	1069966950
	.long	1071728558
	.long	1070134723
	.long	1071728558
	.long	1071225242
	.long	1069883064
	.long	1072483533
	.long	1073490166
	.long	1072986849
	.long	1073657938
	.long	1073490166
	.long	1073657938
	.long	1072986849
	.long	1071812444
	.long	1072735191
	.long	1072483533
	.long	1068624773
	.long	1070721925
	.long	1069631406
	.long	1070218609
	.long	1071560786
	.long	1068037571
	.long	1067198710
	.long	1065437102
	.long	1069883064
	.long	1071728558
	.long	1070805811
	.long	1073154621
	.long	1071225242
	.long	1072483533
	.long	1067702026
	.long	1068624773
	.long	1066108191
	.long	1069715292
	.long	1069379748
	.long	1067534254
	.long	1064849900
	.long	1065185444
	.long	1066863165
	.long	1065353216
	.long	1064178811
	.long	1063675494
	.long	1065772646
	.long	1065437102
	.long	1067953684
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1073490166
	.long	1073070735
	.long	1072735191
	.long	1071980216
	.long	1071980216
	.long	1071309128
	.long	1068457001
	.long	1070302495
	.long	1068540887
	.long	1070386381
	.long	1068289229
	.long	1067282596
	.long	1069295862
	.long	1067869798
	.long	1070050836
	.long	1073657938
	.long	1073154621
	.long	1072902963
	.long	1070386381
	.long	1071896330
	.long	1070470267
	.long	1071980216
	.long	1070134723
	.long	1069379748
	.long	1071393014
	.long	1068708659
	.long	1066527621
	.long	1068457001
	.long	1063507722
	.long	1064682127
	.long	1064346583
	.long	1065940419
	.long	1065353216
	.long	1067114824
	.long	1067869798
	.long	1066527621
	.long	1065017672
	.long	1064682127
	.long	1063004406
	.long	1063843267
	.long	1062501089
	.long	1062333317
	.long	1063339950
	.long	1062333317
	.long	1063507722
	.long	1066275963
	.long	1063172178
	.long	1064346583
	.long	1064178811
	.long	1065520988
	.long	1065940419
	.long	1061997773
	.long	1061830001
	.long	1062836634
	.long	1062333317
	.long	1061997773
	.long	1063172178
	.long	1062836634
	.long	1064178811
	.long	1065520988
	.long	1064178811
	.long	1061494456
	.long	1060655596
	.long	1060991140
	.long	1060487823
	.long	1060320051
	.long	1060320051
	.long	1060487823
	.long	1060655596
	.long	1061494456
	.long	1060991140
	.long	1062333317
	.long	1061326684
	.long	1061830001
	.long	1060655596
	.long	1060823368
	.long	1061326684
	.long	1063507722
	.long	1063507722
	.long	1062333317
	.long	1064178811
	.long	1063843267
	.long	1063004406
	.long	1062501089
	.long	1061830001
	.long	1060823368
	.long	1061326684
	.long	1063843267
	.long	1063507722
	.long	1062501089
	.long	1063507722
	.long	1063507722
	.long	1062333317
	.long	1062333317
	.long	1061326684
	.long	1060655596
	.long	1061326684
	.long	1063004406
	.long	1062501089
	.long	1061830001
	.long	1062333317
	.long	1061326684
	.long	1060823368
	.long	1064346583
	.long	1065353216
	.long	1063843267
	.long	1068457001
	.long	1067114824
	.long	1066527621
	.long	1065017672
	.long	1064682127
	.long	1063339950
	.long	1063507722
	.long	1064682127
	.long	1066527621
	.long	1065940419
	.long	1070386381
	.long	1068708659
	.long	1070470267
	.long	1068457001
	.long	1070134723
	.long	1069379748
	.long	1067869798
	.long	1071896330
	.long	1073154621
	.long	1071980216
	.long	1073657938
	.long	1073070735
	.long	1072902963
	.long	1071980216
	.long	1070302495
	.long	1071393014
	.long	1071980216
	.long	1067869798
	.long	1070050836
	.long	1068289229
	.long	1068540887
	.long	1070386381
	.long	1066275963
	.long	1065940419
	.long	1064346583
	.long	1071057469
	.long	1072567419
	.long	1071309128
	.long	1073490166
	.long	1071057469
	.long	1072567419
	.long	1069044204
	.long	1069463634
	.long	1067198710
	.long	1069044204
	.long	1069463634
	.long	1067198710
	.long	1065185444
	.long	1065185444
	.long	1067282596
	.long	1066947052
	.long	1065017672
	.long	1064849900
	.long	1064849900
	.long	1065017672
	.long	1066947052
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1073238508
	.long	1073490166
	.long	1072651305
	.long	1072986849
	.long	1072483533
	.long	1071309128
	.long	1070386381
	.long	1071812444
	.long	1070218609
	.long	1071560786
	.long	1069631406
	.long	1067534254
	.long	1069379748
	.long	1068624773
	.long	1070721925
	.long	1073657938
	.long	1073490166
	.long	1073657938
	.long	1071225242
	.long	1072483533
	.long	1071728558
	.long	1072986849
	.long	1071728558
	.long	1071225242
	.long	1072735191
	.long	1069966950
	.long	1068121457
	.long	1070134723
	.long	1064682127
	.long	1066024305
	.long	1065772646
	.long	1067953684
	.long	1067618140
	.long	1069295862
	.long	1069883064
	.long	1068624773
	.long	1067030938
	.long	1066275963
	.long	1064178811
	.long	1065185444
	.long	1063675494
	.long	1063339950
	.long	1064514355
	.long	1063339950
	.long	1064849900
	.long	1068037571
	.long	1064011039
	.long	1065437102
	.long	1064849900
	.long	1066192077
	.long	1067198710
	.long	1062668861
	.long	1061997773
	.long	1063339950
	.long	1061830001
	.long	1061830001
	.long	1062836634
	.long	1063004406
	.long	1064011039
	.long	1065520988
	.long	1064346583
	.long	1062333317
	.long	1061326684
	.long	1061494456
	.long	1060655596
	.long	1060823368
	.long	1060320051
	.long	1060655596
	.long	1060487823
	.long	1060991140
	.long	1060991140
	.long	1063339950
	.long	1062165545
	.long	1062836634
	.long	1061158912
	.long	1061494456
	.long	1062333317
	.long	1064346583
	.long	1064178811
	.long	1063004406
	.long	1064011039
	.long	1064011039
	.long	1063004406
	.long	1062836634
	.long	1061830001
	.long	1060991140
	.long	1061830001
	.long	1063339950
	.long	1062836634
	.long	1062165545
	.long	1062333317
	.long	1062501089
	.long	1061494456
	.long	1061662228
	.long	1060823368
	.long	1060487823
	.long	1061158912
	.long	1061830001
	.long	1061494456
	.long	1060991140
	.long	1061494456
	.long	1060823368
	.long	1060320051
	.long	1063004406
	.long	1064011039
	.long	1062668861
	.long	1066527621
	.long	1065185444
	.long	1065017672
	.long	1063843267
	.long	1063675494
	.long	1062668861
	.long	1062501089
	.long	1063339950
	.long	1064849900
	.long	1064346583
	.long	1068792545
	.long	1066863165
	.long	1068624773
	.long	1066275963
	.long	1068121457
	.long	1067366482
	.long	1065604874
	.long	1070470267
	.long	1072064102
	.long	1070302495
	.long	1072986849
	.long	1072399647
	.long	1071728558
	.long	1070721925
	.long	1068540887
	.long	1069631406
	.long	1071309128
	.long	1067534254
	.long	1069547520
	.long	1067282596
	.long	1066947052
	.long	1069211976
	.long	1065185444
	.long	1065353216
	.long	1063843267
	.long	1071225242
	.long	1072483533
	.long	1070805811
	.long	1073154621
	.long	1069883064
	.long	1071728558
	.long	1069715292
	.long	1069379748
	.long	1067534254
	.long	1067702026
	.long	1068624773
	.long	1066108191
	.long	1065185444
	.long	1064849900
	.long	1066863165
	.long	1067953684
	.long	1065437102
	.long	1065772646
	.long	1063675494
	.long	1064178811
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1072567419
	.long	1073322394
	.long	1072231875
	.long	1073574052
	.long	1072819077
	.long	1071309128
	.long	1072064102
	.long	1072986849
	.long	1071812444
	.long	1072567419
	.long	1070973583
	.long	1068205343
	.long	1069799178
	.long	1069631406
	.long	1071393014
	.long	1073070735
	.long	1072986849
	.long	1073657938
	.long	1071141356
	.long	1072231875
	.long	1072064102
	.long	1073238508
	.long	1072651305
	.long	1072567419
	.long	1073490166
	.long	1070302495
	.long	1069044204
	.long	1071141356
	.long	1065772646
	.long	1067366482
	.long	1067618140
	.long	1069463634
	.long	1069547520
	.long	1071141356
	.long	1071393014
	.long	1070638039
	.long	1069211976
	.long	1068457001
	.long	1065353216
	.long	1067282596
	.long	1065017672
	.long	1064514355
	.long	1066108191
	.long	1064682127
	.long	1066695393
	.long	1069966950
	.long	1065185444
	.long	1067450368
	.long	1066192077
	.long	1067366482
	.long	1068792545
	.long	1063675494
	.long	1062836634
	.long	1064346583
	.long	1061830001
	.long	1062165545
	.long	1062836634
	.long	1063507722
	.long	1064346583
	.long	1066108191
	.long	1065017672
	.long	1063507722
	.long	1062333317
	.long	1062501089
	.long	1060991140
	.long	1061494456
	.long	1060655596
	.long	1061326684
	.long	1060823368
	.long	1061158912
	.long	1061662228
	.long	1064346583
	.long	1063004406
	.long	1063843267
	.long	1061830001
	.long	1062501089
	.long	1063507722
	.long	1065185444
	.long	1064514355
	.long	1063675494
	.long	1063675494
	.long	1064011039
	.long	1062668861
	.long	1063004406
	.long	1061830001
	.long	1061158912
	.long	1062165545
	.long	1062836634
	.long	1061997773
	.long	1061662228
	.long	1061326684
	.long	1061494456
	.long	1060823368
	.long	1060991140
	.long	1060487823
	.long	1060487823
	.long	1060823368
	.long	1060991140
	.long	1060991140
	.long	1060487823
	.long	1061326684
	.long	1060655596
	.long	1060320051
	.long	1061830001
	.long	1062836634
	.long	1061662228
	.long	1065017672
	.long	1064011039
	.long	1064178811
	.long	1062836634
	.long	1063172178
	.long	1062333317
	.long	1061830001
	.long	1062165545
	.long	1063507722
	.long	1063004406
	.long	1066695393
	.long	1064849900
	.long	1066359849
	.long	1064514355
	.long	1065856532
	.long	1065353216
	.long	1064178811
	.long	1068540887
	.long	1070386381
	.long	1068289229
	.long	1071812444
	.long	1071309128
	.long	1070134723
	.long	1069379748
	.long	1067030938
	.long	1067702026
	.long	1070554153
	.long	1067618140
	.long	1069211976
	.long	1066779279
	.long	1065772646
	.long	1068205343
	.long	1064682127
	.long	1065185444
	.long	1063675494
	.long	1070638039
	.long	1071560786
	.long	1069547520
	.long	1072064102
	.long	1068121457
	.long	1070218609
	.long	1069379748
	.long	1068457001
	.long	1067114824
	.long	1065688760
	.long	1067114824
	.long	1064849900
	.long	1064849900
	.long	1064178811
	.long	1065772646
	.long	1068205343
	.long	1065520988
	.long	1066527621
	.long	1062668861
	.long	1063339950
	.long	1064011039
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1071560786
	.long	1072819077
	.long	1071728558
	.long	1073574052
	.long	1072819077
	.long	1071309128
	.long	1073154621
	.long	1073657938
	.long	1072986849
	.long	1073238508
	.long	1072231875
	.long	1069211976
	.long	1070386381
	.long	1070805811
	.long	1072064102
	.long	1071980216
	.long	1071812444
	.long	1073070735
	.long	1070134723
	.long	1071141356
	.long	1071560786
	.long	1072651305
	.long	1072735191
	.long	1073238508
	.long	1073574052
	.long	1069799178
	.long	1069128090
	.long	1071225242
	.long	1066863165
	.long	1068037571
	.long	1068876431
	.long	1070218609
	.long	1070805811
	.long	1072315761
	.long	1072147988
	.long	1072147988
	.long	1070973583
	.long	1070470267
	.long	1066947052
	.long	1069044204
	.long	1066779279
	.long	1066275963
	.long	1068373115
	.long	1066611507
	.long	1068792545
	.long	1071644672
	.long	1067198710
	.long	1069547520
	.long	1068205343
	.long	1068876431
	.long	1070470267
	.long	1065017672
	.long	1064011039
	.long	1065604874
	.long	1062501089
	.long	1063004406
	.long	1063507722
	.long	1064514355
	.long	1065017672
	.long	1067282596
	.long	1066527621
	.long	1064849900
	.long	1063507722
	.long	1063675494
	.long	1061662228
	.long	1062333317
	.long	1061326684
	.long	1062333317
	.long	1061494456
	.long	1061830001
	.long	1062668861
	.long	1065017672
	.long	1063675494
	.long	1065017672
	.long	1062501089
	.long	1063507722
	.long	1064849900
	.long	1065604874
	.long	1064514355
	.long	1064011039
	.long	1063004406
	.long	1063675494
	.long	1062333317
	.long	1063004406
	.long	1061830001
	.long	1061494456
	.long	1062668861
	.long	1062165545
	.long	1061326684
	.long	1061326684
	.long	1060655596
	.long	1060823368
	.long	1060320051
	.long	1060655596
	.long	1060487823
	.long	1060823368
	.long	1060823368
	.long	1060655596
	.long	1060991140
	.long	1060487823
	.long	1061662228
	.long	1060991140
	.long	1060655596
	.long	1061158912
	.long	1061997773
	.long	1061326684
	.long	1064346583
	.long	1063339950
	.long	1063843267
	.long	1062501089
	.long	1063172178
	.long	1062668861
	.long	1061830001
	.long	1061326684
	.long	1062333317
	.long	1061997773
	.long	1064849900
	.long	1063507722
	.long	1064682127
	.long	1063339950
	.long	1064514355
	.long	1064346583
	.long	1063172178
	.long	1066275963
	.long	1068457001
	.long	1066192077
	.long	1070302495
	.long	1070134723
	.long	1068457001
	.long	1068121457
	.long	1065772646
	.long	1066024305
	.long	1069883064
	.long	1068205343
	.long	1069211976
	.long	1066695393
	.long	1065185444
	.long	1067534254
	.long	1064682127
	.long	1065772646
	.long	1064011039
	.long	1069128090
	.long	1069966950
	.long	1067618140
	.long	1070386381
	.long	1065940419
	.long	1068205343
	.long	1068289229
	.long	1066863165
	.long	1065940419
	.long	1064178811
	.long	1065185444
	.long	1063675494
	.long	1064178811
	.long	1063172178
	.long	1064682127
	.long	1067618140
	.long	1065185444
	.long	1066611507
	.long	1061494456
	.long	1062333317
	.long	1062836634
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1070386381
	.long	1071896330
	.long	1071057469
	.long	1073154621
	.long	1072567419
	.long	1071309128
	.long	1073490166
	.long	1073657938
	.long	1073657938
	.long	1073490166
	.long	1073154621
	.long	1070386381
	.long	1071057469
	.long	1071896330
	.long	1072567419
	.long	1070470267
	.long	1070134723
	.long	1071980216
	.long	1068457001
	.long	1069379748
	.long	1070302495
	.long	1071393014
	.long	1071980216
	.long	1073070735
	.long	1072902963
	.long	1068540887
	.long	1068289229
	.long	1070386381
	.long	1067282596
	.long	1067869798
	.long	1069295862
	.long	1070050836
	.long	1071309128
	.long	1072735191
	.long	1071980216
	.long	1073070735
	.long	1071980216
	.long	1071980216
	.long	1067869798
	.long	1070050836
	.long	1068289229
	.long	1068457001
	.long	1070302495
	.long	1068540887
	.long	1070386381
	.long	1072902963
	.long	1069379748
	.long	1071393014
	.long	1070134723
	.long	1070470267
	.long	1071980216
	.long	1067114824
	.long	1065353216
	.long	1067869798
	.long	1063507722
	.long	1064346583
	.long	1064682127
	.long	1065940419
	.long	1066527621
	.long	1068708659
	.long	1068457001
	.long	1066527621
	.long	1064682127
	.long	1065017672
	.long	1062333317
	.long	1063339950
	.long	1062333317
	.long	1063507722
	.long	1062501089
	.long	1063004406
	.long	1063843267
	.long	1065520988
	.long	1064178811
	.long	1065940419
	.long	1063172178
	.long	1064346583
	.long	1066275963
	.long	1065520988
	.long	1064178811
	.long	1064178811
	.long	1062333317
	.long	1063172178
	.long	1061997773
	.long	1062836634
	.long	1061830001
	.long	1061997773
	.long	1062836634
	.long	1061494456
	.long	1060655596
	.long	1060991140
	.long	1060487823
	.long	1060320051
	.long	1060320051
	.long	1060487823
	.long	1060655596
	.long	1061494456
	.long	1060991140
	.long	1060655596
	.long	1061326684
	.long	1060823368
	.long	1062333317
	.long	1061830001
	.long	1061326684
	.long	1060823368
	.long	1061830001
	.long	1061326684
	.long	1064178811
	.long	1063004406
	.long	1063843267
	.long	1062501089
	.long	1063507722
	.long	1063507722
	.long	1062333317
	.long	1060655596
	.long	1061326684
	.long	1061326684
	.long	1063507722
	.long	1062333317
	.long	1063507722
	.long	1062333317
	.long	1063507722
	.long	1063843267
	.long	1062501089
	.long	1064682127
	.long	1066527621
	.long	1064849900
	.long	1068708659
	.long	1069044204
	.long	1066947052
	.long	1067198710
	.long	1065185444
	.long	1065017672
	.long	1069463634
	.long	1069044204
	.long	1069463634
	.long	1067198710
	.long	1065185444
	.long	1067282596
	.long	1065017672
	.long	1066947052
	.long	1064849900
	.long	1067114824
	.long	1067869798
	.long	1065353216
	.long	1068457001
	.long	1064346583
	.long	1065940419
	.long	1066527621
	.long	1065017672
	.long	1064682127
	.long	1063004406
	.long	1063843267
	.long	1062501089
	.long	1063339950
	.long	1062333317
	.long	1063507722
	.long	1066275963
	.long	1064346583
	.long	1065940419
	.long	1060823368
	.long	1061326684
	.long	1061830001
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1069211976
	.long	1070805811
	.long	1070386381
	.long	1072231875
	.long	1072064102
	.long	1071309128
	.long	1073154621
	.long	1072986849
	.long	1073657938
	.long	1073238508
	.long	1073574052
	.long	1071560786
	.long	1071728558
	.long	1072819077
	.long	1072819077
	.long	1068876431
	.long	1068205343
	.long	1070470267
	.long	1066275963
	.long	1067198710
	.long	1068373115
	.long	1069547520
	.long	1070470267
	.long	1072147988
	.long	1071644672
	.long	1066611507
	.long	1066779279
	.long	1068792545
	.long	1066863165
	.long	1066947052
	.long	1068876431
	.long	1069044204
	.long	1070805811
	.long	1072315761
	.long	1070973583
	.long	1073238508
	.long	1072147988
	.long	1072735191
	.long	1068037571
	.long	1070218609
	.long	1069128090
	.long	1070134723
	.long	1071560786
	.long	1069799178
	.long	1071225242
	.long	1073574052
	.long	1071141356
	.long	1072651305
	.long	1071812444
	.long	1071980216
	.long	1073070735
	.long	1069128090
	.long	1067618140
	.long	1069966950
	.long	1064849900
	.long	1065940419
	.long	1066275963
	.long	1068205343
	.long	1068457001
	.long	1070302495
	.long	1070386381
	.long	1068289229
	.long	1065940419
	.long	1066863165
	.long	1063004406
	.long	1064178811
	.long	1063172178
	.long	1064682127
	.long	1063675494
	.long	1064178811
	.long	1065185444
	.long	1065604874
	.long	1064514355
	.long	1066611507
	.long	1063675494
	.long	1065185444
	.long	1067618140
	.long	1065017672
	.long	1063675494
	.long	1064011039
	.long	1061662228
	.long	1062501089
	.long	1061494456
	.long	1062668861
	.long	1061830001
	.long	1062333317
	.long	1063004406
	.long	1060823368
	.long	1060487823
	.long	1060823368
	.long	1060655596
	.long	1060320051
	.long	1060823368
	.long	1060655596
	.long	1061326684
	.long	1062165545
	.long	1061326684
	.long	1061326684
	.long	1062333317
	.long	1061494456
	.long	1063507722
	.long	1062836634
	.long	1062333317
	.long	1061158912
	.long	1061997773
	.long	1061997773
	.long	1064346583
	.long	1063339950
	.long	1064346583
	.long	1063172178
	.long	1064514355
	.long	1064682127
	.long	1063339950
	.long	1060655596
	.long	1060991140
	.long	1061326684
	.long	1062501089
	.long	1061662228
	.long	1062668861
	.long	1061830001
	.long	1063172178
	.long	1063843267
	.long	1062501089
	.long	1063507722
	.long	1065017672
	.long	1064011039
	.long	1067282596
	.long	1068205343
	.long	1065772646
	.long	1066695393
	.long	1065185444
	.long	1064682127
	.long	1069211976
	.long	1070134723
	.long	1069883064
	.long	1068121457
	.long	1065772646
	.long	1067534254
	.long	1066024305
	.long	1068457001
	.long	1066192077
	.long	1065017672
	.long	1065604874
	.long	1064011039
	.long	1066527621
	.long	1063004406
	.long	1064514355
	.long	1064849900
	.long	1063675494
	.long	1063507722
	.long	1061830001
	.long	1062668861
	.long	1061494456
	.long	1062333317
	.long	1061326684
	.long	1062333317
	.long	1064849900
	.long	1063507722
	.long	1065017672
	.long	1060487823
	.long	1060655596
	.long	1060991140
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1068205343
	.long	1069631406
	.long	1069799178
	.long	1070973583
	.long	1071393014
	.long	1071309128
	.long	1072064102
	.long	1071812444
	.long	1072986849
	.long	1072567419
	.long	1073574052
	.long	1072567419
	.long	1072231875
	.long	1073322394
	.long	1072819077
	.long	1067366482
	.long	1066192077
	.long	1068792545
	.long	1064514355
	.long	1065185444
	.long	1066108191
	.long	1067450368
	.long	1068457001
	.long	1070638039
	.long	1069966950
	.long	1064682127
	.long	1065017672
	.long	1066695393
	.long	1065772646
	.long	1065353216
	.long	1067618140
	.long	1067282596
	.long	1069547520
	.long	1071141356
	.long	1069211976
	.long	1072567419
	.long	1071393014
	.long	1072651305
	.long	1067366482
	.long	1069463634
	.long	1069044204
	.long	1071141356
	.long	1072064102
	.long	1070302495
	.long	1071141356
	.long	1073490166
	.long	1072231875
	.long	1073238508
	.long	1072986849
	.long	1073070735
	.long	1073657938
	.long	1070638039
	.long	1069547520
	.long	1071560786
	.long	1066695393
	.long	1068121457
	.long	1068540887
	.long	1070218609
	.long	1070386381
	.long	1071812444
	.long	1072064102
	.long	1069379748
	.long	1067114824
	.long	1068457001
	.long	1063675494
	.long	1064849900
	.long	1064178811
	.long	1065772646
	.long	1064849900
	.long	1065688760
	.long	1067114824
	.long	1065185444
	.long	1064514355
	.long	1066527621
	.long	1064011039
	.long	1065520988
	.long	1068205343
	.long	1064346583
	.long	1063004406
	.long	1063675494
	.long	1060991140
	.long	1061830001
	.long	1061158912
	.long	1062165545
	.long	1061830001
	.long	1062668861
	.long	1063004406
	.long	1060487823
	.long	1060487823
	.long	1060823368
	.long	1061326684
	.long	1060823368
	.long	1061494456
	.long	1060991140
	.long	1061997773
	.long	1062836634
	.long	1061662228
	.long	1062165545
	.long	1063507722
	.long	1062668861
	.long	1064849900
	.long	1064011039
	.long	1063339950
	.long	1061830001
	.long	1062836634
	.long	1063004406
	.long	1065017672
	.long	1064011039
	.long	1065353216
	.long	1064178811
	.long	1065856532
	.long	1066359849
	.long	1064514355
	.long	1060991140
	.long	1060991140
	.long	1061662228
	.long	1061830001
	.long	1061326684
	.long	1062333317
	.long	1061830001
	.long	1063172178
	.long	1064178811
	.long	1062836634
	.long	1062836634
	.long	1064346583
	.long	1063675494
	.long	1066108191
	.long	1067618140
	.long	1065185444
	.long	1066779279
	.long	1065772646
	.long	1064682127
	.long	1069211976
	.long	1071309128
	.long	1070554153
	.long	1069379748
	.long	1067030938
	.long	1068205343
	.long	1067702026
	.long	1070134723
	.long	1068289229
	.long	1063675494
	.long	1064346583
	.long	1062836634
	.long	1065017672
	.long	1062165545
	.long	1063507722
	.long	1063507722
	.long	1062501089
	.long	1062333317
	.long	1061158912
	.long	1061662228
	.long	1060823368
	.long	1061494456
	.long	1060655596
	.long	1061326684
	.long	1063507722
	.long	1062501089
	.long	1063843267
	.long	1060487823
	.long	1060320051
	.long	1060655596
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1067534254
	.long	1068624773
	.long	1069379748
	.long	1069631406
	.long	1070721925
	.long	1071309128
	.long	1070386381
	.long	1070218609
	.long	1071812444
	.long	1071560786
	.long	1072986849
	.long	1073238508
	.long	1072651305
	.long	1073490166
	.long	1072483533
	.long	1066192077
	.long	1064849900
	.long	1067198710
	.long	1063339950
	.long	1064011039
	.long	1064514355
	.long	1065437102
	.long	1066275963
	.long	1068624773
	.long	1068037571
	.long	1063339950
	.long	1063675494
	.long	1064849900
	.long	1064682127
	.long	1064178811
	.long	1065772646
	.long	1065185444
	.long	1067618140
	.long	1069295862
	.long	1067030938
	.long	1071225242
	.long	1069883064
	.long	1071728558
	.long	1066024305
	.long	1067953684
	.long	1068121457
	.long	1071225242
	.long	1071728558
	.long	1069966950
	.long	1070134723
	.long	1072735191
	.long	1072483533
	.long	1072986849
	.long	1073490166
	.long	1073657938
	.long	1073657938
	.long	1071225242
	.long	1070805811
	.long	1072483533
	.long	1068792545
	.long	1069883064
	.long	1070470267
	.long	1071728558
	.long	1072064102
	.long	1072986849
	.long	1073154621
	.long	1069715292
	.long	1067534254
	.long	1069379748
	.long	1064011039
	.long	1065185444
	.long	1064849900
	.long	1066863165
	.long	1066108191
	.long	1067702026
	.long	1068624773
	.long	1064346583
	.long	1064178811
	.long	1065772646
	.long	1064011039
	.long	1065437102
	.long	1067953684
	.long	1063339950
	.long	1062165545
	.long	1063004406
	.long	1060655596
	.long	1061158912
	.long	1060991140
	.long	1061830001
	.long	1061830001
	.long	1063004406
	.long	1062836634
	.long	1060487823
	.long	1060823368
	.long	1061158912
	.long	1062333317
	.long	1061494456
	.long	1062501089
	.long	1061662228
	.long	1062836634
	.long	1063339950
	.long	1062165545
	.long	1063339950
	.long	1064849900
	.long	1063675494
	.long	1066863165
	.long	1065353216
	.long	1064178811
	.long	1063004406
	.long	1064011039
	.long	1064346583
	.long	1066527621
	.long	1065185444
	.long	1067366482
	.long	1065604874
	.long	1068121457
	.long	1068624773
	.long	1066275963
	.long	1061830001
	.long	1061494456
	.long	1062668861
	.long	1061830001
	.long	1061494456
	.long	1062668861
	.long	1062501089
	.long	1063675494
	.long	1065017672
	.long	1063843267
	.long	1062836634
	.long	1064011039
	.long	1063843267
	.long	1065520988
	.long	1067534254
	.long	1065353216
	.long	1067282596
	.long	1066947052
	.long	1065185444
	.long	1069547520
	.long	1072399647
	.long	1071309128
	.long	1070721925
	.long	1068540887
	.long	1069211976
	.long	1069631406
	.long	1071728558
	.long	1070302495
	.long	1062668861
	.long	1063339950
	.long	1061997773
	.long	1064346583
	.long	1061830001
	.long	1063004406
	.long	1062333317
	.long	1061494456
	.long	1061326684
	.long	1060991140
	.long	1060991140
	.long	1060487823
	.long	1060823368
	.long	1060320051
	.long	1060655596
	.long	1062333317
	.long	1061494456
	.long	1062836634
	.long	1060991140
	.long	1060320051
	.long	1060823368
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.type	r_avertexnormals, @object
	.size	r_avertexnormals, 1944
r_avertexnormals:
	.long	-1090087345
	.long	0
	.long	1062847556
	.long	-1092436240
	.long	1047828139
	.long	1063074669
	.long	-1097389578
	.long	0
	.long	1064605338
	.long	-1096927366
	.long	1056964608
	.long	1062149053
	.long	-1104782358
	.long	1049007711
	.long	1064532072
	.long	0
	.long	0
	.long	1065353216
	.long	0
	.long	1062847556
	.long	1057396303
	.long	-1105778186
	.long	1060597999
	.long	1060013330
	.long	1041705462
	.long	1060597999
	.long	1060013330
	.long	0
	.long	1057396303
	.long	1062847556
	.long	1050556282
	.long	1056964608
	.long	1062149053
	.long	1057396303
	.long	0
	.long	1062847556
	.long	1050094070
	.long	0
	.long	1064605338
	.long	1055047408
	.long	1047828139
	.long	1063074669
	.long	1042701290
	.long	1049007711
	.long	1064532072
	.long	-1087470318
	.long	1041705462
	.long	1060597999
	.long	-1085334595
	.long	1050556282
	.long	1056964608
	.long	-1089046252
	.long	1054458931
	.long	1060121929
	.long	-1084636092
	.long	1057396303
	.long	0
	.long	-1084408979
	.long	1055047408
	.long	1047828139
	.long	-1086885649
	.long	1060013330
	.long	1041705462
	.long	-1087361719
	.long	1058437396
	.long	1054458931
	.long	-1090519040
	.long	1062149053
	.long	1050556282
	.long	-1099655509
	.long	1063074669
	.long	1055047408
	.long	-1093024717
	.long	1060121929
	.long	1058437396
	.long	-1086885649
	.long	1060013330
	.long	-1105778186
	.long	-1090519040
	.long	1062149053
	.long	-1096927366
	.long	-1090087345
	.long	1062847556
	.long	0
	.long	0
	.long	1062847556
	.long	-1090087345
	.long	-1099655509
	.long	1063074669
	.long	-1092436240
	.long	0
	.long	1064605338
	.long	-1097389578
	.long	-1098475937
	.long	1064532072
	.long	-1104782358
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	1064605338
	.long	1050094070
	.long	-1098475937
	.long	1064532072
	.long	1042701290
	.long	1047828139
	.long	1063074669
	.long	1055047408
	.long	1049007711
	.long	1064532072
	.long	1042701290
	.long	1056964608
	.long	1062149053
	.long	1050556282
	.long	1047828139
	.long	1063074669
	.long	-1092436240
	.long	1049007711
	.long	1064532072
	.long	-1104782358
	.long	1056964608
	.long	1062149053
	.long	-1096927366
	.long	1062847556
	.long	1057396303
	.long	0
	.long	1060597999
	.long	1060013330
	.long	1041705462
	.long	1060597999
	.long	1060013330
	.long	-1105778186
	.long	1057396303
	.long	1062847556
	.long	0
	.long	1054458931
	.long	1060121929
	.long	1058437396
	.long	1063074669
	.long	1055047408
	.long	1047828139
	.long	1060121929
	.long	1058437396
	.long	1054458931
	.long	1062149053
	.long	1050556282
	.long	1056964608
	.long	1060013330
	.long	1041705462
	.long	1060597999
	.long	1058437396
	.long	1054458931
	.long	1060121929
	.long	1064605338
	.long	1050094070
	.long	0
	.long	1065353216
	.long	0
	.long	0
	.long	1064532072
	.long	1042701290
	.long	1049007711
	.long	1062847556
	.long	-1090087345
	.long	0
	.long	1064605338
	.long	-1097389578
	.long	0
	.long	1063074669
	.long	-1092436240
	.long	1047828139
	.long	1064532072
	.long	-1104782358
	.long	1049007711
	.long	1062149053
	.long	-1096927366
	.long	1056964608
	.long	1060013330
	.long	-1105778186
	.long	1060597999
	.long	1062847556
	.long	0
	.long	1057396303
	.long	1063074669
	.long	1055047408
	.long	-1099655509
	.long	1062149053
	.long	1050556282
	.long	-1090519040
	.long	1064532072
	.long	1042701290
	.long	-1098475937
	.long	1057396303
	.long	0
	.long	-1084636092
	.long	1060013330
	.long	1041705462
	.long	-1086885649
	.long	1060013330
	.long	-1105778186
	.long	-1086885649
	.long	1062847556
	.long	0
	.long	-1090087345
	.long	1062149053
	.long	-1096927366
	.long	-1090519040
	.long	1063074669
	.long	-1092436240
	.long	-1099655509
	.long	1064532072
	.long	-1104782358
	.long	-1098475937
	.long	1041705462
	.long	1060597999
	.long	-1087470318
	.long	1050556282
	.long	1056964608
	.long	-1085334595
	.long	1054458931
	.long	1060121929
	.long	-1089046252
	.long	1055047408
	.long	1047828139
	.long	-1084408979
	.long	1058437396
	.long	1054458931
	.long	-1087361719
	.long	1060121929
	.long	1058437396
	.long	-1093024717
	.long	-1105778186
	.long	1060597999
	.long	-1087470318
	.long	-1096927366
	.long	1056964608
	.long	-1085334595
	.long	0
	.long	1057396303
	.long	-1084636092
	.long	-1090087345
	.long	0
	.long	-1084636092
	.long	-1092436240
	.long	1047828139
	.long	-1084408979
	.long	-1097389578
	.long	0
	.long	-1082878310
	.long	-1104782358
	.long	1049007711
	.long	-1082951576
	.long	0
	.long	0
	.long	-1082130432
	.long	1050094070
	.long	0
	.long	-1082878310
	.long	1042701290
	.long	1049007711
	.long	-1082951576
	.long	-1092436240
	.long	-1099655509
	.long	-1084408979
	.long	-1096927366
	.long	-1090519040
	.long	-1085334595
	.long	-1104782358
	.long	-1098475937
	.long	-1082951576
	.long	0
	.long	-1084636092
	.long	-1090087345
	.long	-1105778186
	.long	-1086885649
	.long	-1087470318
	.long	1041705462
	.long	-1086885649
	.long	-1087470318
	.long	0
	.long	-1090087345
	.long	-1084636092
	.long	1050556282
	.long	-1090519040
	.long	-1085334595
	.long	1055047408
	.long	-1099655509
	.long	-1084408979
	.long	1042701290
	.long	-1098475937
	.long	-1082951576
	.long	1047828139
	.long	-1084408979
	.long	-1092436240
	.long	1056964608
	.long	-1085334595
	.long	-1096927366
	.long	1054458931
	.long	-1087361719
	.long	-1089046252
	.long	1060597999
	.long	-1087470318
	.long	-1105778186
	.long	1060121929
	.long	-1089046252
	.long	-1093024717
	.long	1058437396
	.long	-1093024717
	.long	-1087361719
	.long	0
	.long	-1082878310
	.long	-1097389578
	.long	0
	.long	-1082130432
	.long	0
	.long	1049007711
	.long	-1082951576
	.long	-1104782358
	.long	0
	.long	-1084636092
	.long	1057396303
	.long	0
	.long	-1082878310
	.long	1050094070
	.long	1047828139
	.long	-1084408979
	.long	1055047408
	.long	1049007711
	.long	-1082951576
	.long	1042701290
	.long	1056964608
	.long	-1085334595
	.long	1050556282
	.long	1060597999
	.long	-1087470318
	.long	1041705462
	.long	1057396303
	.long	-1084636092
	.long	0
	.long	-1099655509
	.long	-1084408979
	.long	-1092436240
	.long	-1090519040
	.long	-1085334595
	.long	-1096927366
	.long	-1098475937
	.long	-1082951576
	.long	-1104782358
	.long	-1084636092
	.long	-1090087345
	.long	0
	.long	-1086885649
	.long	-1087470318
	.long	-1105778186
	.long	-1086885649
	.long	-1087470318
	.long	1041705462
	.long	-1090087345
	.long	-1084636092
	.long	0
	.long	-1090519040
	.long	-1085334595
	.long	1050556282
	.long	-1099655509
	.long	-1084408979
	.long	1055047408
	.long	-1098475937
	.long	-1082951576
	.long	1042701290
	.long	-1084408979
	.long	-1092436240
	.long	1047828139
	.long	-1085334595
	.long	-1096927366
	.long	1056964608
	.long	-1087361719
	.long	-1089046252
	.long	1054458931
	.long	-1087470318
	.long	-1105778186
	.long	1060597999
	.long	-1092436240
	.long	-1099655509
	.long	1063074669
	.long	-1089046252
	.long	-1093024717
	.long	1060121929
	.long	-1096927366
	.long	-1090519040
	.long	1062149053
	.long	-1105778186
	.long	-1086885649
	.long	1060013330
	.long	-1093024717
	.long	-1087361719
	.long	1058437396
	.long	-1104782358
	.long	-1098475937
	.long	1064532072
	.long	1055047408
	.long	-1099655509
	.long	1063074669
	.long	1042701290
	.long	-1098475937
	.long	1064532072
	.long	1050556282
	.long	-1090519040
	.long	1062149053
	.long	1041705462
	.long	-1086885649
	.long	1060013330
	.long	0
	.long	-1090087345
	.long	1062847556
	.long	1054458931
	.long	-1087361719
	.long	1058437396
	.long	1058437396
	.long	-1093024717
	.long	1060121929
	.long	1060121929
	.long	-1089046252
	.long	1054458931
	.long	-1082878310
	.long	1050094070
	.long	0
	.long	-1082951576
	.long	1042701290
	.long	1049007711
	.long	-1082130432
	.long	0
	.long	0
	.long	-1084636092
	.long	0
	.long	1057396303
	.long	-1082878310
	.long	-1097389578
	.long	0
	.long	-1082951576
	.long	-1104782358
	.long	1049007711
	.long	-1084408979
	.long	1055047408
	.long	-1099655509
	.long	-1082951576
	.long	1042701290
	.long	-1098475937
	.long	-1085334595
	.long	1050556282
	.long	-1090519040
	.long	-1084408979
	.long	-1092436240
	.long	-1099655509
	.long	-1082951576
	.long	-1104782358
	.long	-1098475937
	.long	-1085334595
	.long	-1096927366
	.long	-1090519040
	.long	-1087470318
	.long	1041705462
	.long	-1086885649
	.long	-1087470318
	.long	-1105778186
	.long	-1086885649
	.long	-1084636092
	.long	0
	.long	-1090087345
	.long	-1087361719
	.long	1058437396
	.long	-1093024717
	.long	-1089046252
	.long	1054458931
	.long	-1087361719
	.long	-1093024717
	.long	1060121929
	.long	-1089046252
	.long	-1093024717
	.long	-1087361719
	.long	-1089046252
	.long	-1089046252
	.long	-1093024717
	.long	-1087361719
	.long	-1087361719
	.long	-1089046252
	.long	-1093024717
	.type	fog_waterfog, @object
	.size	fog_waterfog, 20
fog_waterfog:
	.long	.LC69
	.long	.LC70
	.zero	12
	.type	fog_enabled, @object
	.size	fog_enabled, 20
fog_enabled:
	.long	.LC71
	.long	.LC70
	.zero	12
	.type	fog_end, @object
	.size	fog_end, 20
fog_end:
	.long	.LC72
	.long	.LC73
	.zero	12
	.type	fog_start, @object
	.size	fog_start, 20
fog_start:
	.long	.LC74
	.long	.LC75
	.zero	12
	.type	fog_b, @object
	.size	fog_b, 20
fog_b:
	.long	.LC76
	.long	.LC77
	.zero	12
	.type	fog_g, @object
	.size	fog_g, 20
fog_g:
	.long	.LC78
	.long	.LC79
	.zero	12
	.type	fog_r, @object
	.size	fog_r, 20
fog_r:
	.long	.LC80
	.long	.LC81
	.zero	12
	.type	gl_truform_tesselation, @object
	.size	gl_truform_tesselation, 20
gl_truform_tesselation:
	.long	.LC83
	.long	.LC84
	.zero	12
	.type	gl_truform, @object
	.size	gl_truform, 20
gl_truform:
	.long	.LC85
	.long	.LC42
	.zero	12
	.type	gl_caustics, @object
	.size	gl_caustics, 20
gl_caustics:
	.long	.LC86
	.long	.LC70
	.zero	12
	.type	mir_forcewater, @object
	.size	mir_forcewater, 20
mir_forcewater:
	.long	.LC89
	.long	.LC42
	.zero	12
	.type	sh_noshadowpopping, @object
	.size	sh_noshadowpopping, 20
sh_noshadowpopping:
	.long	.LC92
	.long	.LC70
	.zero	12
	.type	sh_showtangent, @object
	.size	sh_showtangent, 20
sh_showtangent:
	.long	.LC93
	.long	.LC42
	.zero	12
	.type	sh_noefrags, @object
	.size	sh_noefrags, 20
sh_noefrags:
	.long	.LC94
	.long	.LC42
	.byte	1
	.zero	11
	.type	sh_glares, @object
	.size	sh_glares, 20
sh_glares:
	.long	.LC95
	.long	.LC42
	.byte	1
	.zero	11
	.type	sh_nocache, @object
	.size	sh_nocache, 20
sh_nocache:
	.long	.LC96
	.long	.LC42
	.zero	12
	.type	sh_colormaps, @object
	.size	sh_colormaps, 20
sh_colormaps:
	.long	.LC98
	.long	.LC70
	.zero	12
	.type	sh_bumpmaps, @object
	.size	sh_bumpmaps, 20
sh_bumpmaps:
	.long	.LC99
	.long	.LC70
	.zero	12
	.type	sh_nocleversave, @object
	.size	sh_nocleversave, 20
sh_nocleversave:
	.long	.LC100
	.long	.LC42
	.zero	12
	.type	sh_noscissor, @object
	.size	sh_noscissor, 20
sh_noscissor:
	.long	.LC101
	.long	.LC42
	.zero	12
	.type	sh_infinitevolumes, @object
	.size	sh_infinitevolumes, 20
sh_infinitevolumes:
	.long	.LC102
	.long	.LC42
	.byte	1
	.zero	11
	.type	sh_noeclip, @object
	.size	sh_noeclip, 20
sh_noeclip:
	.long	.LC103
	.long	.LC42
	.zero	12
	.type	sh_nosvbsp, @object
	.size	sh_nosvbsp, 20
sh_nosvbsp:
	.long	.LC104
	.long	.LC42
	.zero	12
	.type	sh_norevis, @object
	.size	sh_norevis, 20
sh_norevis:
	.long	.LC105
	.long	.LC42
	.zero	12
	.type	sh_debuginfo, @object
	.size	sh_debuginfo, 20
sh_debuginfo:
	.long	.LC106
	.long	.LC42
	.zero	12
	.type	sh_fps, @object
	.size	sh_fps, 20
sh_fps:
	.long	.LC107
	.long	.LC42
	.byte	1
	.zero	11
	.type	sh_glows, @object
	.size	sh_glows, 20
sh_glows:
	.long	.LC108
	.long	.LC70
	.zero	12
	.type	sh_showlightnum, @object
	.size	sh_showlightnum, 20
sh_showlightnum:
	.long	.LC109
	.long	.LC42
	.zero	12
	.type	sh_worldshadows, @object
	.size	sh_worldshadows, 20
sh_worldshadows:
	.long	.LC110
	.long	.LC70
	.zero	12
	.type	sh_entityshadows, @object
	.size	sh_entityshadows, 20
sh_entityshadows:
	.long	.LC111
	.long	.LC70
	.zero	12
	.type	sh_radiusscale, @object
	.size	sh_radiusscale, 20
sh_radiusscale:
	.long	.LC113
	.long	.LC114
	.zero	12
	.type	gl_watershader, @object
	.size	gl_watershader, 20
gl_watershader:
	.long	.LC117
	.long	.LC70
	.zero	12
	.type	gl_doubleeyes, @object
	.size	gl_doubleeyes, 20
gl_doubleeyes:
	.long	.LC118
	.long	.LC70
	.zero	12
	.type	gl_reporttjunctions, @object
	.size	gl_reporttjunctions, 20
gl_reporttjunctions:
	.long	.LC119
	.long	.LC42
	.zero	12
	.type	gl_nocolors, @object
	.size	gl_nocolors, 20
gl_nocolors:
	.long	.LC120
	.long	.LC42
	.zero	12
	.type	gl_playermip, @object
	.size	gl_playermip, 20
gl_playermip:
	.long	.LC121
	.long	.LC42
	.zero	12
	.type	gl_flashblend, @object
	.size	gl_flashblend, 20
gl_flashblend:
	.long	.LC122
	.long	.LC70
	.zero	12
	.type	gl_affinemodels, @object
	.size	gl_affinemodels, 20
gl_affinemodels:
	.long	.LC124
	.long	.LC42
	.zero	12
	.type	gl_smoothmodels, @object
	.size	gl_smoothmodels, 20
gl_smoothmodels:
	.long	.LC125
	.long	.LC70
	.zero	12
	.type	gl_clear, @object
	.size	gl_clear, 20
gl_clear:
	.long	.LC127
	.long	.LC42
	.zero	12
	.type	gl_finish, @object
	.size	gl_finish, 20
gl_finish:
	.long	.LC128
	.long	.LC42
	.zero	12
	.type	r_novis, @object
	.size	r_novis, 20
r_novis:
	.long	.LC129
	.long	.LC42
	.zero	12
	.type	r_dynamic, @object
	.size	r_dynamic, 20
r_dynamic:
	.long	.LC130
	.long	.LC70
	.zero	12
	.type	r_shadows, @object
	.size	r_shadows, 20
r_shadows:
	.long	.LC132
	.long	.LC42
	.zero	12
	.type	r_lightmap, @object
	.size	r_lightmap, 20
r_lightmap:
	.long	.LC133
	.long	.LC42
	.zero	12
	.type	r_fullbright, @object
	.size	r_fullbright, 20
r_fullbright:
	.long	.LC41
	.long	.LC42
	.zero	12
	.type	cnttextures, @object
	.size	cnttextures, 64
cnttextures:
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.long	-1
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC5:
	.string	"progs/v_shot.mdl"
	.zero	3
.LC6:
	.string	"progs/v_shot2.mdl"
	.zero	2
.LC7:
	.string	"progs/v_nail.mdl"
	.zero	3
.LC8:
	.string	"progs/v_nail2.mdl"
	.zero	2
.LC9:
	.string	"progs/v_rock.mdl"
	.zero	3
.LC10:
	.string	"progs/v_rock2.mdl"
	.zero	2
.LC11:
	.string	"progs/v_axe.mdl"
.LC12:
	.string	"progs/v_light.mdl"
	.zero	2
.LC13:
	.string	"progs/players.mdl"
	.zero	2
.LC18:
	.string	"R_DrawSprite: no such frame %d\n"
.LC41:
	.string	"r_fullbright"
	.zero	3
.LC42:
	.string	"0"
	.zero	2
.LC43:
	.string	"gl_wireframe"
	.zero	3
.LC57:
	.string	"penta/mirrordummy.tga"
	.zero	2
.LC58:
	.string	"Warning: Resursive mirrors\n"
.LC68:
	.string	"R_RenderView: NULL worldmodel"
	.zero	2
.LC69:
	.string	"fog_waterfog"
	.zero	3
.LC70:
	.string	"1"
	.zero	2
.LC71:
	.string	"fog_enabled"
.LC72:
	.string	"fog_end"
.LC73:
	.string	"700"
.LC74:
	.string	"fog_start"
	.zero	2
.LC75:
	.string	"256"
.LC76:
	.string	"fog_b"
	.zero	2
.LC77:
	.string	"0.0"
.LC78:
	.string	"fog_g"
	.zero	2
.LC79:
	.string	"0.1"
.LC80:
	.string	"fog_r"
	.zero	2
.LC81:
	.string	"0.2"
.LC82:
	.string	"gl_transformlerp"
	.zero	3
.LC83:
	.string	"gl_truform_tesselation"
	.zero	1
.LC84:
	.string	"4"
	.zero	2
.LC85:
	.string	"gl_truform"
	.zero	1
.LC86:
	.string	"gl_caustics"
.LC87:
	.string	"mir_distance"
	.zero	3
.LC88:
	.string	"400"
.LC89:
	.string	"mir_forcewater"
	.zero	1
.LC90:
	.string	"mir_frameskip"
	.zero	2
.LC91:
	.string	"mir_detail"
	.zero	1
.LC92:
	.string	"sh_noshadowpopping"
	.zero	1
.LC93:
	.string	"sh_showtangent"
	.zero	1
.LC94:
	.string	"sh_noefrags"
.LC95:
	.string	"sh_glares"
	.zero	2
.LC96:
	.string	"sh_nocache"
	.zero	1
.LC97:
	.string	"sh_playershadow"
.LC98:
	.string	"sh_colormaps"
	.zero	3
.LC99:
	.string	"sh_bumpmaps"
.LC100:
	.string	"sh_nocleversave"
.LC101:
	.string	"sh_noscissor"
	.zero	3
.LC102:
	.string	"sh_infinitevolumes"
	.zero	1
.LC103:
	.string	"sh_noeclip"
	.zero	1
.LC104:
	.string	"sh_nosvbsp"
	.zero	1
.LC105:
	.string	"sh_norevis"
	.zero	1
.LC106:
	.string	"sh_debuginfo"
	.zero	3
.LC107:
	.string	"sh_fps"
	.zero	1
.LC108:
	.string	"sh_glows"
	.zero	3
.LC109:
	.string	"sh_showlightnum"
.LC110:
	.string	"sh_worldshadows"
.LC111:
	.string	"sh_entityshadows"
	.zero	3
.LC112:
	.string	"sh_visiblevolumes"
	.zero	2
.LC113:
	.string	"sh_radiusscale"
	.zero	1
.LC114:
	.string	"0.5"
.LC115:
	.string	"sh_lightmapbright"
	.zero	2
.LC116:
	.string	"gl_calcdepth"
	.zero	3
.LC117:
	.string	"gl_watershader"
	.zero	1
.LC118:
	.string	"gl_doubleeys"
	.zero	3
.LC119:
	.string	"gl_reporttjunctions"
.LC120:
	.string	"gl_nocolors"
.LC121:
	.string	"gl_playermip"
	.zero	3
.LC122:
	.string	"gl_flashblend"
	.zero	2
.LC123:
	.string	"gl_polyblend"
	.zero	3
.LC124:
	.string	"gl_affinemodels"
.LC125:
	.string	"gl_smoothmodels"
.LC126:
	.string	"gl_cull"
.LC127:
	.string	"gl_clear"
	.zero	3
.LC128:
	.string	"gl_finish"
	.zero	2
.LC129:
	.string	"r_novis"
.LC130:
	.string	"r_dynamic"
	.zero	2
.LC131:
	.string	"r_wateralpha"
	.zero	3
.LC132:
	.string	"r_shadows"
	.zero	2
.LC133:
	.string	"r_lightmap"
	.zero	1
.LC134:
	.string	"r_drawviewmodel"
.LC135:
	.string	"r_drawentities"
	.zero	1
.LC136:
	.string	"r_norefresh"
	.section	.sbss,"aw",@nobits
	.type	busy_caustics, @object
	.size	busy_caustics, 1
busy_caustics:
	.zero	1
	.section	.sdata,"aw",@progbits
	.align 2
	.type	shadedots, @object
	.size	shadedots, 4
shadedots:
	.long	r_avertexnormal_dots
	.type	currenttexture, @object
	.size	currenttexture, 4
currenttexture:
	.long	-1
	.section	".bss"
	.align 2
	.type	color_black, @object
	.size	color_black, 16
color_black:
	.zero	16
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/bspfile.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/vid.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/cvar.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/sound.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/client.h"
	.file 14 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 15 "d:/Data/Nintendo/TenebraeGX/src/spritegn.h"
	.file 16 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 17 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 18 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 19 "d:/Data/Nintendo/TenebraeGX/src/view.h"
	.file 20 "c:/utils/devkitPro/libogc/include/gctypes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3a22
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF661
	.byte	0x1
	.4byte	.LASF662
	.4byte	.LASF663
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
	.string	"f32"
	.byte	0x14
	.byte	0x2b
	.4byte	0x7a
	.uleb128 0x8
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xb5
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8f
	.uleb128 0x9
	.byte	0x40
	.byte	0x3
	.byte	0x52
	.4byte	0x12d
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x3
	.byte	0x54
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x3
	.byte	0x54
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x3
	.byte	0x55
	.4byte	0x12d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x3
	.byte	0x56
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x3
	.byte	0x57
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x3
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x3
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x13d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x14d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x3
	.byte	0x59
	.4byte	0xc2
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x168
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	0x48
	.4byte	0x178
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x188
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x3
	.byte	0xa5
	.4byte	0x1ad
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x3
	.byte	0xa7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x3
	.byte	0xa8
	.4byte	0x178
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.byte	0xa9
	.4byte	0x188
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x1ce
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x3a
	.4byte	0x1de
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x1ee
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x4
	.byte	0x1a
	.4byte	0x8f
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x14
	.byte	0x4
	.byte	0x1c
	.4byte	0x248
	.uleb128 0xe
	.string	"x"
	.byte	0x4
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"y"
	.byte	0x4
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.byte	0x1f
	.4byte	0x248
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1f9
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x4
	.byte	0x20
	.4byte	0x1f9
	.uleb128 0x9
	.byte	0x44
	.byte	0x4
	.byte	0x22
	.4byte	0x350
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.byte	0x24
	.4byte	0x350
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.byte	0x25
	.4byte	0x350
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.byte	0x26
	.4byte	0x356
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.byte	0x27
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.byte	0x28
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.byte	0x29
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.byte	0x2a
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.byte	0x2b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.byte	0x2c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.byte	0x2e
	.4byte	0x350
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0x30
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.byte	0x31
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0x32
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x4
	.byte	0x33
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x4
	.byte	0x34
	.4byte	0x350
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ee
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x4
	.byte	0x36
	.4byte	0x259
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x4
	.byte	0x5
	.byte	0x6f
	.4byte	0x382
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x5
	.byte	0x71
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x5
	.byte	0x72
	.4byte	0x367
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x6
	.byte	0x16
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x6
	.byte	0x17
	.4byte	0x3a3
	.uleb128 0xb
	.4byte	0x38d
	.4byte	0x3b3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x3c3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x48
	.byte	0x7
	.byte	0xef
	.4byte	0x474
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x7
	.byte	0xf1
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x7
	.byte	0xf2
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x7
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x7
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x7
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x7
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x7
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x7
	.byte	0xf9
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x7
	.byte	0xfa
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x7
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x7
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x7
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x7
	.byte	0xfe
	.4byte	0x3c3
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x14
	.byte	0x8
	.byte	0x38
	.4byte	0x4e0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x8
	.byte	0x3a
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x8
	.byte	0x3b
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x8
	.byte	0x3c
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0x8
	.byte	0x3d
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x8
	.byte	0x3e
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x8
	.byte	0x3f
	.4byte	0x4e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x47f
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x8
	.byte	0x40
	.4byte	0x47f
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x502
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x512
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x522
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x44
	.byte	0x9
	.byte	0x23
	.4byte	0x54b
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x9
	.byte	0x25
	.4byte	0x502
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0x9
	.byte	0x26
	.4byte	0x382
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x10
	.byte	0xa
	.byte	0x1e
	.4byte	0x590
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0xa
	.byte	0x20
	.4byte	0x637
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0xa
	.byte	0x21
	.4byte	0x63d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xa
	.byte	0x22
	.4byte	0x8b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0xa
	.byte	0x23
	.4byte	0x63d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x40
	.byte	0xb
	.byte	0xca
	.4byte	0x637
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xb
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xb
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0xb
	.byte	0xd0
	.4byte	0x1734
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xb
	.byte	0xd2
	.4byte	0xc0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0xb
	.byte	0xd5
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0xb
	.byte	0xd6
	.4byte	0x175f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xb
	.byte	0xd8
	.4byte	0x1765
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0xb
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"key"
	.byte	0xb
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0xb
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0xb
	.byte	0xdc
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x590
	.uleb128 0x5
	.byte	0x4
	.4byte	0x54b
	.uleb128 0x10
	.4byte	.LASF91
	.2byte	0x248
	.byte	0xa
	.byte	0x27
	.4byte	0x8b1
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0xa
	.byte	0x29
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0xa
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0xa
	.byte	0x2d
	.4byte	0x474
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0xa
	.byte	0x2f
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0xa
	.byte	0x30
	.4byte	0x8c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0xa
	.byte	0x31
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0xa
	.byte	0x32
	.4byte	0x8c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0xa
	.byte	0x33
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0xa
	.byte	0x34
	.4byte	0xb8c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0xa
	.byte	0x35
	.4byte	0x63d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0xa
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0xa
	.byte	0x37
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0xa
	.byte	0x38
	.4byte	0xbc
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0xa
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0xa
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xa
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0xa
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0xa
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0xa
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0xa
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xa
	.4byte	.LASF106
	.byte	0xa
	.byte	0x44
	.4byte	0xc0f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0xa
	.byte	0x48
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0xa
	.byte	0x49
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xa
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0xa
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0xa
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xa
	.4byte	.LASF107
	.byte	0xa
	.byte	0x50
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xa
	.4byte	.LASF108
	.byte	0xa
	.byte	0x51
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0xa
	.byte	0x52
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xa
	.4byte	.LASF110
	.byte	0xa
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xa
	.4byte	.LASF111
	.byte	0xa
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0xa
	.byte	0x57
	.4byte	0xd2f
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xa
	.4byte	.LASF113
	.byte	0xa
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xa
	.4byte	.LASF114
	.byte	0xa
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xa
	.4byte	.LASF115
	.byte	0xa
	.byte	0x5c
	.4byte	0xd35
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xa
	.4byte	.LASF116
	.byte	0xa
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xa
	.4byte	.LASF117
	.byte	0xa
	.byte	0x60
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xa
	.4byte	.LASF118
	.byte	0xa
	.byte	0x61
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xa
	.4byte	.LASF119
	.byte	0xa
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xa
	.4byte	.LASF120
	.byte	0xa
	.byte	0x63
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xa
	.4byte	.LASF121
	.byte	0xa
	.byte	0x64
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x643
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0xa
	.byte	0x24
	.4byte	0x54b
	.uleb128 0xb
	.4byte	0x38d
	.4byte	0x8d8
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF123
	.2byte	0x1a4
	.byte	0xb
	.2byte	0x180
	.4byte	0xb8c
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0xb
	.2byte	0x182
	.4byte	0x502
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0xb
	.2byte	0x183
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0xb
	.2byte	0x185
	.4byte	0x1c81
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0xb
	.2byte	0x187
	.4byte	0x12f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF128
	.byte	0xb
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0xb
	.2byte	0x18e
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0xb
	.2byte	0x18e
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xb
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF130
	.byte	0xb
	.2byte	0x194
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF131
	.byte	0xb
	.2byte	0x195
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF132
	.byte	0xb
	.2byte	0x195
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF133
	.byte	0xb
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF134
	.byte	0xb
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF135
	.byte	0xb
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF136
	.byte	0xb
	.2byte	0x19d
	.4byte	0x1c8d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x12
	.4byte	.LASF137
	.byte	0xb
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x12
	.4byte	.LASF138
	.byte	0xb
	.2byte	0x1a0
	.4byte	0x1717
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x12
	.4byte	.LASF139
	.byte	0xb
	.2byte	0x1a3
	.4byte	0x1c93
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x12
	.4byte	.LASF140
	.byte	0xb
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x12
	.4byte	.LASF141
	.byte	0xb
	.2byte	0x1a6
	.4byte	0x1c99
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF142
	.byte	0xb
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x12
	.4byte	.LASF143
	.byte	0xb
	.2byte	0x1a9
	.4byte	0x1c9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0xb
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x12
	.4byte	.LASF145
	.byte	0xb
	.2byte	0x1ac
	.4byte	0x1ca5
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x12
	.4byte	.LASF146
	.byte	0xb
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x12
	.4byte	.LASF147
	.byte	0xb
	.2byte	0x1af
	.4byte	0x1723
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x12
	.4byte	.LASF148
	.byte	0xb
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x12
	.4byte	.LASF149
	.byte	0xb
	.2byte	0x1b2
	.4byte	0x176b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x12
	.4byte	.LASF150
	.byte	0xb
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF151
	.byte	0xb
	.2byte	0x1b5
	.4byte	0x1cab
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF152
	.byte	0xb
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF153
	.byte	0xb
	.2byte	0x1b8
	.4byte	0x17d9
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x12
	.4byte	.LASF88
	.byte	0xb
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x12
	.4byte	.LASF154
	.byte	0xb
	.2byte	0x1bb
	.4byte	0x1765
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x12
	.4byte	.LASF155
	.byte	0xb
	.2byte	0x1bd
	.4byte	0x1cb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x12
	.4byte	.LASF156
	.byte	0xb
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF157
	.byte	0xb
	.2byte	0x1c0
	.4byte	0x1cc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF158
	.byte	0xb
	.2byte	0x1c2
	.4byte	0xbc
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF159
	.byte	0xb
	.2byte	0x1c3
	.4byte	0xbc
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF160
	.byte	0xb
	.2byte	0x1c4
	.4byte	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF74
	.byte	0xb
	.2byte	0x1c9
	.4byte	0x382
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8d8
	.uleb128 0xd
	.4byte	.LASF161
	.byte	0x34
	.byte	0xb
	.byte	0xb6
	.4byte	0xc0f
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xb
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xb
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0xb
	.byte	0xbc
	.4byte	0x1734
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xb
	.byte	0xbe
	.4byte	0xc0f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF162
	.byte	0xb
	.byte	0xc1
	.4byte	0x1717
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0xb
	.byte	0xc2
	.4byte	0x1744
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF163
	.byte	0xb
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF148
	.byte	0xb
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb92
	.uleb128 0x13
	.4byte	.LASF164
	.4byte	0x20030
	.byte	0xc
	.2byte	0xa09
	.4byte	0xd2f
	.uleb128 0x12
	.4byte	.LASF165
	.byte	0xc
	.2byte	0xa0f
	.4byte	0xd2f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF166
	.byte	0xc
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF167
	.byte	0xc
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF168
	.byte	0xc
	.2byte	0xa17
	.4byte	0x20b6
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF169
	.byte	0xc
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF170
	.byte	0xc
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF171
	.byte	0xc
	.2byte	0xa1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xc
	.2byte	0xa1d
	.4byte	0xfac
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF173
	.byte	0xc
	.2byte	0xa1f
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF174
	.byte	0xc
	.2byte	0xa21
	.4byte	0x20b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF175
	.byte	0xc
	.2byte	0xa25
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF176
	.byte	0xc
	.2byte	0xa2b
	.4byte	0x20c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF177
	.byte	0xc
	.2byte	0xa2d
	.4byte	0x20c2
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x12
	.4byte	.LASF178
	.byte	0xc
	.2byte	0xa2f
	.4byte	0x20c2
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x12
	.4byte	.LASF179
	.byte	0xc
	.2byte	0xa31
	.4byte	0x20c2
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x12
	.4byte	.LASF180
	.byte	0xc
	.2byte	0xa33
	.4byte	0x2107
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x12
	.4byte	.LASF181
	.byte	0xc
	.2byte	0xa37
	.4byte	0x2118
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc15
	.uleb128 0xb
	.4byte	0x33
	.4byte	0xd45
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF182
	.byte	0xa
	.byte	0x66
	.4byte	0x643
	.uleb128 0x9
	.byte	0x94
	.byte	0xa
	.byte	0x69
	.4byte	0xeba
	.uleb128 0xa
	.4byte	.LASF183
	.byte	0xa
	.byte	0x6b
	.4byte	0x24e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF184
	.byte	0xa
	.byte	0x6d
	.4byte	0x24e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF185
	.byte	0xa
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF186
	.byte	0xa
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF187
	.byte	0xa
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0xa
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF189
	.byte	0xa
	.byte	0x70
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF190
	.byte	0xa
	.byte	0x72
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF191
	.byte	0xa
	.byte	0x72
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF192
	.byte	0xa
	.byte	0x73
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF193
	.byte	0xa
	.byte	0x73
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.4byte	.LASF194
	.byte	0xa
	.byte	0x74
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.4byte	.LASF195
	.byte	0xa
	.byte	0x75
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF196
	.byte	0xa
	.byte	0x76
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF197
	.byte	0xa
	.byte	0x76
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF198
	.byte	0xa
	.byte	0x78
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.4byte	.LASF199
	.byte	0xa
	.byte	0x79
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.4byte	.LASF200
	.byte	0xa
	.byte	0x7a
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.4byte	.LASF201
	.byte	0xa
	.byte	0x7c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.4byte	.LASF202
	.byte	0xa
	.byte	0x7d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.4byte	.LASF203
	.byte	0xa
	.byte	0x7f
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF204
	.byte	0xa
	.byte	0x80
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.4byte	.LASF205
	.byte	0xa
	.byte	0x82
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.4byte	.LASF206
	.byte	0xa
	.byte	0x82
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.4byte	.LASF207
	.byte	0xa
	.byte	0x84
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0
	.uleb128 0x6
	.4byte	.LASF208
	.byte	0xa
	.byte	0x85
	.4byte	0xd50
	.uleb128 0x9
	.byte	0x18
	.byte	0xd
	.byte	0x16
	.4byte	0xf06
	.uleb128 0xa
	.4byte	.LASF204
	.byte	0xd
	.byte	0x18
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF209
	.byte	0xd
	.byte	0x1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF210
	.byte	0xd
	.byte	0x1c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF211
	.byte	0xd
	.byte	0x1d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF212
	.byte	0xd
	.byte	0x21
	.4byte	0xec5
	.uleb128 0x14
	.2byte	0x402c
	.byte	0xd
	.byte	0x29
	.4byte	0xf61
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xd
	.byte	0x2b
	.4byte	0x512
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF213
	.byte	0xd
	.byte	0x2c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF214
	.byte	0xd
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF215
	.byte	0xd
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF216
	.byte	0xd
	.byte	0x2f
	.4byte	0x4f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF217
	.byte	0xd
	.byte	0x30
	.4byte	0xf11
	.uleb128 0x9
	.byte	0x10
	.byte	0xd
	.byte	0x32
	.4byte	0xf91
	.uleb128 0xa
	.4byte	.LASF218
	.byte	0xd
	.byte	0x34
	.4byte	0xf91
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF219
	.byte	0xd
	.byte	0x35
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0xfa1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF220
	.byte	0xd
	.byte	0x36
	.4byte	0xf6c
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd45
	.uleb128 0x14
	.2byte	0xce8
	.byte	0xd
	.byte	0x9a
	.4byte	0x124d
	.uleb128 0xa
	.4byte	.LASF221
	.byte	0xd
	.byte	0x9c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"cmd"
	.byte	0xd
	.byte	0xa0
	.4byte	0xf06
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF222
	.byte	0xd
	.byte	0xa3
	.4byte	0x124d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF223
	.byte	0xd
	.byte	0xa4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.4byte	.LASF224
	.byte	0xd
	.byte	0xa5
	.4byte	0x125d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.4byte	.LASF225
	.byte	0xd
	.byte	0xa6
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xa
	.4byte	.LASF226
	.byte	0xd
	.byte	0xa8
	.4byte	0x126d
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0xa
	.4byte	.LASF227
	.byte	0xd
	.byte	0xa9
	.4byte	0x126d
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0xa
	.4byte	.LASF228
	.byte	0xd
	.byte	0xaf
	.4byte	0x8c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0xa
	.4byte	.LASF204
	.byte	0xd
	.byte	0xb1
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0xa
	.4byte	.LASF229
	.byte	0xd
	.byte	0xb3
	.4byte	0x8c2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0xa
	.4byte	.LASF230
	.byte	0xd
	.byte	0xb5
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0xa
	.4byte	.LASF231
	.byte	0xd
	.byte	0xb7
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0xa
	.4byte	.LASF232
	.byte	0xd
	.byte	0xba
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xa
	.4byte	.LASF233
	.byte	0xd
	.byte	0xbb
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0xa
	.4byte	.LASF234
	.byte	0xd
	.byte	0xbc
	.4byte	0xaa
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xa
	.4byte	.LASF235
	.byte	0xd
	.byte	0xbd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xa
	.4byte	.LASF236
	.byte	0xd
	.byte	0xbe
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xa
	.4byte	.LASF237
	.byte	0xd
	.byte	0xc0
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xa
	.4byte	.LASF238
	.byte	0xd
	.byte	0xc1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xa
	.4byte	.LASF239
	.byte	0xd
	.byte	0xc3
	.4byte	0xaa
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xa
	.4byte	.LASF240
	.byte	0xd
	.byte	0xc4
	.4byte	0xaa
	.byte	0x3
	.byte	0x23
	.uleb128 0x219
	.uleb128 0xa
	.4byte	.LASF241
	.byte	0xd
	.byte	0xc5
	.4byte	0xaa
	.byte	0x3
	.byte	0x23
	.uleb128 0x21a
	.uleb128 0xa
	.4byte	.LASF242
	.byte	0xd
	.byte	0xc7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xa
	.4byte	.LASF243
	.byte	0xd
	.byte	0xc8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xa
	.4byte	.LASF244
	.byte	0xd
	.byte	0xca
	.4byte	0x127d
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xa
	.4byte	.LASF245
	.byte	0xd
	.byte	0xcb
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xa
	.4byte	.LASF246
	.byte	0xd
	.byte	0xce
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xa
	.4byte	.LASF247
	.byte	0xd
	.byte	0xd2
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0xa
	.4byte	.LASF248
	.byte	0xd
	.byte	0xd7
	.4byte	0x128d
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0xa
	.4byte	.LASF249
	.byte	0xd
	.byte	0xd8
	.4byte	0x129d
	.byte	0x3
	.byte	0x23
	.uleb128 0x64c
	.uleb128 0xa
	.4byte	.LASF250
	.byte	0xd
	.byte	0xda
	.4byte	0x12b3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4c
	.uleb128 0xa
	.4byte	.LASF251
	.byte	0xd
	.byte	0xdb
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa74
	.uleb128 0xa
	.4byte	.LASF252
	.byte	0xd
	.byte	0xdc
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0xa
	.4byte	.LASF253
	.byte	0xd
	.byte	0xdd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7c
	.uleb128 0xa
	.4byte	.LASF254
	.byte	0xd
	.byte	0xe0
	.4byte	0xb8c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0xa
	.4byte	.LASF255
	.byte	0xd
	.byte	0xe1
	.4byte	0x63d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0xa
	.4byte	.LASF256
	.byte	0xd
	.byte	0xe2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0xa
	.4byte	.LASF257
	.byte	0xd
	.byte	0xe3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0xa
	.4byte	.LASF258
	.byte	0xd
	.byte	0xe4
	.4byte	0xd45
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0xa
	.4byte	.LASF259
	.byte	0xd
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd8
	.uleb128 0xa
	.4byte	.LASF260
	.byte	0xd
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcdc
	.uleb128 0xa
	.4byte	.LASF261
	.byte	0xd
	.byte	0xe9
	.4byte	0x12c3
	.byte	0x3
	.byte	0x23
	.uleb128 0xce0
	.uleb128 0xa
	.4byte	.LASF262
	.byte	0xd
	.byte	0xf2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xce4
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x125d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x126d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	0xfa1
	.4byte	0x127d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x73
	.4byte	0x128d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0xb8c
	.4byte	0x129d
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.4byte	0x12ad
	.4byte	0x12ad
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x522
	.uleb128 0xb
	.4byte	0x6c
	.4byte	0x12c3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x27
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf61
	.uleb128 0x6
	.4byte	.LASF263
	.byte	0xd
	.byte	0xf3
	.4byte	0xfb2
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x12e4
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0xe
	.byte	0x34
	.4byte	0x12f9
	.uleb128 0x16
	.4byte	.LASF264
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF265
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF266
	.byte	0xe
	.byte	0x34
	.4byte	0x12e4
	.uleb128 0x9
	.byte	0x4
	.byte	0xe
	.byte	0x64
	.4byte	0x1327
	.uleb128 0xe
	.string	"v"
	.byte	0xe
	.byte	0x65
	.4byte	0x1327
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF267
	.byte	0xe
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x1337
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF268
	.byte	0xe
	.byte	0x67
	.4byte	0x1304
	.uleb128 0x9
	.byte	0x10
	.byte	0xe
	.byte	0x6a
	.4byte	0x1365
	.uleb128 0xe
	.string	"v"
	.byte	0xe
	.byte	0x6b
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF267
	.byte	0xe
	.byte	0x6c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF269
	.byte	0xe
	.byte	0x6d
	.4byte	0x1342
	.uleb128 0x15
	.byte	0x4
	.byte	0xf
	.byte	0x6d
	.4byte	0x1385
	.uleb128 0x16
	.4byte	.LASF270
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF271
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF272
	.byte	0xf
	.byte	0x6d
	.4byte	0x1370
	.uleb128 0x9
	.byte	0xc
	.byte	0xb
	.byte	0x3b
	.4byte	0x13a7
	.uleb128 0xa
	.4byte	.LASF273
	.byte	0xb
	.byte	0x3d
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF274
	.byte	0xb
	.byte	0x3e
	.4byte	0x1390
	.uleb128 0xd
	.4byte	.LASF275
	.byte	0x14
	.byte	0xb
	.byte	0x52
	.4byte	0x1405
	.uleb128 0xa
	.4byte	.LASF276
	.byte	0xb
	.byte	0x54
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF277
	.byte	0xb
	.byte	0x55
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF125
	.byte	0xb
	.byte	0x56
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF278
	.byte	0xb
	.byte	0x57
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.string	"pad"
	.byte	0xb
	.byte	0x58
	.4byte	0x1405
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x1415
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF279
	.byte	0xb
	.byte	0x59
	.4byte	0x13b2
	.uleb128 0xd
	.4byte	.LASF280
	.byte	0x48
	.byte	0xb
	.byte	0x5b
	.4byte	0x14d5
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xb
	.byte	0x5d
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xb
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xb
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF281
	.byte	0xb
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF282
	.byte	0xb
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF283
	.byte	0xb
	.byte	0x61
	.4byte	0x15fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF284
	.byte	0xb
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF285
	.byte	0xb
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF286
	.byte	0xb
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF287
	.byte	0xb
	.byte	0x64
	.4byte	0x1600
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF288
	.byte	0xb
	.byte	0x65
	.4byte	0x1600
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF289
	.byte	0xb
	.byte	0x66
	.4byte	0x168
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xd
	.4byte	.LASF290
	.byte	0x5c
	.byte	0xb
	.byte	0x96
	.4byte	0x15fa
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xb
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF162
	.byte	0xb
	.byte	0x9a
	.4byte	0x1717
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0xb
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF291
	.byte	0xb
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF142
	.byte	0xb
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF292
	.byte	0xb
	.byte	0xa0
	.4byte	0x178
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF293
	.byte	0xb
	.byte	0xa1
	.4byte	0x178
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF294
	.byte	0xb
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF295
	.byte	0xb
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF296
	.byte	0xb
	.byte	0xa5
	.4byte	0x171d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF283
	.byte	0xb
	.byte	0xa6
	.4byte	0x15fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF297
	.byte	0xb
	.byte	0xa7
	.4byte	0x15fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF147
	.byte	0xb
	.byte	0xa9
	.4byte	0x1723
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0xb
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0xb
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF298
	.byte	0xb
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF299
	.byte	0xb
	.byte	0xb0
	.4byte	0x1de
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF300
	.byte	0xb
	.byte	0xb1
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF301
	.byte	0xb
	.byte	0xb2
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF302
	.byte	0xb
	.byte	0xb3
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14d5
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1420
	.uleb128 0x6
	.4byte	.LASF303
	.byte	0xb
	.byte	0x67
	.4byte	0x1420
	.uleb128 0x9
	.byte	0x8
	.byte	0xb
	.byte	0x78
	.4byte	0x1634
	.uleb128 0xe
	.string	"v"
	.byte	0xb
	.byte	0x7a
	.4byte	0x1ce
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF304
	.byte	0xb
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF305
	.byte	0xb
	.byte	0x7c
	.4byte	0x1611
	.uleb128 0x9
	.byte	0x2c
	.byte	0xb
	.byte	0x7e
	.4byte	0x1680
	.uleb128 0xa
	.4byte	.LASF306
	.byte	0xb
	.byte	0x80
	.4byte	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF307
	.byte	0xb
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF308
	.byte	0xb
	.byte	0x82
	.4byte	0x1680
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0xb
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1606
	.uleb128 0x6
	.4byte	.LASF309
	.byte	0xb
	.byte	0x84
	.4byte	0x163f
	.uleb128 0xd
	.4byte	.LASF310
	.byte	0x1c
	.byte	0xb
	.byte	0x8a
	.4byte	0x1700
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0xb
	.byte	0x8c
	.4byte	0x1700
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF311
	.byte	0xb
	.byte	0x8d
	.4byte	0x1700
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF312
	.byte	0xb
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0xb
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0xb
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF313
	.byte	0xb
	.byte	0x92
	.4byte	0x1706
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF314
	.byte	0xb
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1691
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1700
	.uleb128 0x6
	.4byte	.LASF315
	.byte	0xb
	.byte	0x94
	.4byte	0x1691
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1415
	.uleb128 0x5
	.byte	0x4
	.4byte	0x170c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1686
	.uleb128 0x6
	.4byte	.LASF316
	.byte	0xb
	.byte	0xb4
	.4byte	0x14d5
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x1744
	.uleb128 0xc
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xc0f
	.4byte	0x1754
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF317
	.byte	0xb
	.byte	0xc6
	.4byte	0xb92
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8b7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x176b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1729
	.uleb128 0x6
	.4byte	.LASF318
	.byte	0xb
	.byte	0xdd
	.4byte	0x590
	.uleb128 0x9
	.byte	0x28
	.byte	0xb
	.byte	0xe0
	.4byte	0x17d9
	.uleb128 0xa
	.4byte	.LASF153
	.byte	0xb
	.byte	0xe2
	.4byte	0x17d9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0xb
	.byte	0xe3
	.4byte	0x1717
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF319
	.byte	0xb
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF320
	.byte	0xb
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF321
	.byte	0xb
	.byte	0xe6
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF322
	.byte	0xb
	.byte	0xe7
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ad
	.uleb128 0x6
	.4byte	.LASF323
	.byte	0xb
	.byte	0xe8
	.4byte	0x177c
	.uleb128 0xd
	.4byte	.LASF324
	.byte	0x1c
	.byte	0xb
	.byte	0xf4
	.4byte	0x1858
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xb
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0xb
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"up"
	.byte	0xb
	.byte	0xf8
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF325
	.byte	0xb
	.byte	0xf8
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF326
	.byte	0xb
	.byte	0xf8
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF327
	.byte	0xb
	.byte	0xf8
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF281
	.byte	0xb
	.byte	0xf9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF328
	.byte	0xb
	.byte	0xfa
	.4byte	0x17ea
	.uleb128 0x9
	.byte	0xc
	.byte	0xb
	.byte	0xfc
	.4byte	0x1897
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0xb
	.byte	0xfe
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF329
	.byte	0xb
	.byte	0xff
	.4byte	0x1897
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF330
	.byte	0xb
	.2byte	0x100
	.4byte	0x189d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0xb
	.4byte	0x18ad
	.4byte	0x18ad
	.uleb128 0xc
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1858
	.uleb128 0x17
	.4byte	.LASF331
	.byte	0xb
	.2byte	0x101
	.4byte	0x1863
	.uleb128 0x18
	.byte	0x8
	.byte	0xb
	.2byte	0x103
	.4byte	0x18e7
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0xb
	.2byte	0x105
	.4byte	0x1385
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF332
	.byte	0xb
	.2byte	0x106
	.4byte	0x18ad
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x17
	.4byte	.LASF333
	.byte	0xb
	.2byte	0x107
	.4byte	0x18bf
	.uleb128 0x18
	.byte	0x20
	.byte	0xb
	.2byte	0x109
	.4byte	0x1966
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0xb
	.2byte	0x10b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF334
	.byte	0xb
	.2byte	0x10c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF335
	.byte	0xb
	.2byte	0x10d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x10e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF336
	.byte	0xb
	.2byte	0x10f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF337
	.byte	0xb
	.2byte	0x110
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF330
	.byte	0xb
	.2byte	0x111
	.4byte	0x1966
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xb
	.4byte	0x18e7
	.4byte	0x1976
	.uleb128 0xc
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF338
	.byte	0xb
	.2byte	0x112
	.4byte	0x18f3
	.uleb128 0x18
	.byte	0x28
	.byte	0xb
	.2byte	0x11e
	.4byte	0x19f5
	.uleb128 0x12
	.4byte	.LASF339
	.byte	0xb
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF340
	.byte	0xb
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF341
	.byte	0xb
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF342
	.byte	0xb
	.2byte	0x123
	.4byte	0x1337
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF343
	.byte	0xb
	.2byte	0x124
	.4byte	0x1337
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0xb
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0xb
	.2byte	0x126
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x17
	.4byte	.LASF344
	.byte	0xb
	.2byte	0x127
	.4byte	0x1982
	.uleb128 0x19
	.4byte	.LASF345
	.byte	0x1c
	.byte	0xb
	.2byte	0x13a
	.4byte	0x1a3c
	.uleb128 0x12
	.4byte	.LASF346
	.byte	0xb
	.2byte	0x13b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF347
	.byte	0xb
	.2byte	0x13c
	.4byte	0xf91
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF313
	.byte	0xb
	.2byte	0x13d
	.4byte	0xf91
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x17
	.4byte	.LASF348
	.byte	0xb
	.2byte	0x13e
	.4byte	0x1a01
	.uleb128 0x1a
	.2byte	0x53c
	.byte	0xb
	.2byte	0x142
	.4byte	0x1c2d
	.uleb128 0x12
	.4byte	.LASF349
	.byte	0xb
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF350
	.byte	0xb
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF351
	.byte	0xb
	.2byte	0x145
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF352
	.byte	0xb
	.2byte	0x146
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF353
	.byte	0xb
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF354
	.byte	0xb
	.2byte	0x148
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF355
	.byte	0xb
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.4byte	.LASF356
	.byte	0xb
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF357
	.byte	0xb
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF312
	.byte	0xb
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF358
	.byte	0xb
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0xb
	.2byte	0x14f
	.4byte	0x12f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.4byte	.LASF128
	.byte	0xb
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF359
	.byte	0xb
	.2byte	0x151
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0xb
	.2byte	0x153
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0xb
	.2byte	0x153
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF340
	.byte	0xb
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF360
	.byte	0xb
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF361
	.byte	0xb
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF362
	.byte	0xb
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.4byte	.LASF363
	.byte	0xb
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.4byte	.LASF138
	.byte	0xb
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF178
	.byte	0xb
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF364
	.byte	0xb
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF365
	.byte	0xb
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF366
	.byte	0xb
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF281
	.byte	0xb
	.2byte	0x15e
	.4byte	0x1c2d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF367
	.byte	0xb
	.2byte	0x15f
	.4byte	0x1c2d
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x12
	.4byte	.LASF368
	.byte	0xb
	.2byte	0x160
	.4byte	0x124d
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x12
	.4byte	.LASF330
	.byte	0xb
	.2byte	0x161
	.4byte	0x1c43
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x1c43
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x19f5
	.4byte	0x1c53
	.uleb128 0xc
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF369
	.byte	0xb
	.2byte	0x162
	.4byte	0x1a48
	.uleb128 0x1b
	.byte	0x4
	.byte	0xb
	.2byte	0x172
	.4byte	0x1c81
	.uleb128 0x16
	.4byte	.LASF370
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF371
	.sleb128 1
	.uleb128 0x16
	.4byte	.LASF372
	.sleb128 2
	.uleb128 0x16
	.4byte	.LASF373
	.sleb128 3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF374
	.byte	0xb
	.2byte	0x172
	.4byte	0x1c5f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1771
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13a7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1634
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1754
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xb
	.4byte	0x17df
	.4byte	0x1cc1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1680
	.uleb128 0x9
	.byte	0x10
	.byte	0x10
	.byte	0x16
	.4byte	0x1cec
	.uleb128 0xa
	.4byte	.LASF276
	.byte	0x10
	.byte	0x18
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF277
	.byte	0x10
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF375
	.byte	0x10
	.byte	0x1a
	.4byte	0x1cc7
	.uleb128 0x6
	.4byte	.LASF376
	.byte	0x11
	.byte	0x99
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF377
	.byte	0x11
	.byte	0x9e
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF378
	.byte	0x11
	.byte	0xa0
	.4byte	0x73
	.uleb128 0x1c
	.4byte	0x1d0d
	.uleb128 0x19
	.4byte	.LASF379
	.byte	0x14
	.byte	0xc
	.2byte	0x981
	.4byte	0x1d49
	.uleb128 0x12
	.4byte	.LASF380
	.byte	0xc
	.2byte	0x983
	.4byte	0x13d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0xc
	.2byte	0x985
	.4byte	0x1d49
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d1d
	.uleb128 0x17
	.4byte	.LASF381
	.byte	0xc
	.2byte	0x987
	.4byte	0x1d1d
	.uleb128 0x1d
	.4byte	.LASF429
	.byte	0x4
	.byte	0xc
	.2byte	0x98d
	.4byte	0x1d99
	.uleb128 0x1e
	.4byte	.LASF382
	.byte	0xc
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1e
	.4byte	.LASF383
	.byte	0xc
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1e
	.4byte	.LASF384
	.byte	0xc
	.2byte	0x993
	.4byte	0x38d
	.uleb128 0x1e
	.4byte	.LASF385
	.byte	0xc
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF386
	.byte	0xc
	.2byte	0x997
	.4byte	0x1d5b
	.uleb128 0x11
	.4byte	.LASF387
	.2byte	0x890
	.byte	0xc
	.2byte	0x99d
	.4byte	0x1f59
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0xc
	.2byte	0x99f
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF388
	.byte	0xc
	.2byte	0x9a1
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF59
	.byte	0xc
	.2byte	0x9a1
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xc
	.2byte	0x9a3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF389
	.byte	0xc
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF390
	.byte	0xc
	.2byte	0x9a9
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF391
	.byte	0xc
	.2byte	0x9ab
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x12
	.4byte	.LASF392
	.byte	0xc
	.2byte	0x9ad
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x12
	.4byte	.LASF393
	.byte	0xc
	.2byte	0x9af
	.4byte	0xaa
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x12
	.4byte	.LASF76
	.byte	0xc
	.2byte	0x9b1
	.4byte	0x1c93
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1f
	.string	"vis"
	.byte	0xc
	.2byte	0x9b3
	.4byte	0x1f59
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF394
	.byte	0xc
	.2byte	0x9b5
	.4byte	0x1f59
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x12
	.4byte	.LASF395
	.byte	0xc
	.2byte	0x9b7
	.4byte	0x1765
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x12
	.4byte	.LASF396
	.byte	0xc
	.2byte	0x9b9
	.4byte	0x1cab
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x12
	.4byte	.LASF397
	.byte	0xc
	.2byte	0x9bb
	.4byte	0x1897
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x12
	.4byte	.LASF398
	.byte	0xc
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x12
	.4byte	.LASF399
	.byte	0xc
	.2byte	0x9bf
	.4byte	0x1f6a
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x12
	.4byte	.LASF400
	.byte	0xc
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x12
	.4byte	.LASF61
	.byte	0xc
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x12
	.4byte	.LASF401
	.byte	0xc
	.2byte	0x9c5
	.4byte	0xfac
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x12
	.4byte	.LASF402
	.byte	0xc
	.2byte	0x9c7
	.4byte	0x1d4f
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x12
	.4byte	.LASF403
	.byte	0xc
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0xc
	.2byte	0x9cb
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x12
	.4byte	.LASF404
	.byte	0xc
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x12
	.4byte	.LASF405
	.byte	0xc
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x12
	.4byte	.LASF406
	.byte	0xc
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x12
	.4byte	.LASF407
	.byte	0xc
	.2byte	0x9d3
	.4byte	0x398
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xb
	.4byte	0x8f
	.4byte	0x1f6a
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d99
	.uleb128 0x17
	.4byte	.LASF408
	.byte	0xc
	.2byte	0x9d5
	.4byte	0x1da5
	.uleb128 0x13
	.4byte	.LASF409
	.4byte	0x1e864
	.byte	0xc
	.2byte	0x9db
	.4byte	0x20b6
	.uleb128 0x12
	.4byte	.LASF166
	.byte	0xc
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF410
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF411
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF412
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF413
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF414
	.byte	0xc
	.2byte	0x9e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF172
	.byte	0xc
	.2byte	0x9e5
	.4byte	0xfac
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF415
	.byte	0xc
	.2byte	0x9e7
	.4byte	0x20b6
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF416
	.byte	0xc
	.2byte	0x9e9
	.4byte	0x20bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF417
	.byte	0xc
	.2byte	0x9eb
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF203
	.byte	0xc
	.2byte	0x9eb
	.4byte	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF418
	.byte	0xc
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF419
	.byte	0xc
	.2byte	0x9f3
	.4byte	0x20c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF420
	.byte	0xc
	.2byte	0x9f5
	.4byte	0x20c2
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x12
	.4byte	.LASF421
	.byte	0xc
	.2byte	0x9f7
	.4byte	0x20c2
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x12
	.4byte	.LASF215
	.byte	0xc
	.2byte	0x9f9
	.4byte	0x20c2
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x12
	.4byte	.LASF422
	.byte	0xc
	.2byte	0x9fb
	.4byte	0x20d9
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x12
	.4byte	.LASF366
	.byte	0xc
	.2byte	0x9ff
	.4byte	0x20ea
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x12
	.4byte	.LASF358
	.byte	0xc
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1c53
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1f70
	.uleb128 0xb
	.4byte	0x38d
	.4byte	0x20d9
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0xaa
	.4byte	0x20ea
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x20fb
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x17
	.4byte	.LASF423
	.byte	0xc
	.2byte	0xa05
	.4byte	0x1f7c
	.uleb128 0xb
	.4byte	0x1cec
	.4byte	0x2118
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x20fb
	.uleb128 0x17
	.4byte	.LASF424
	.byte	0xc
	.2byte	0xa39
	.4byte	0xc15
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1cec
	.uleb128 0x19
	.4byte	.LASF425
	.byte	0x64
	.byte	0xc
	.2byte	0xc12
	.4byte	0x2198
	.uleb128 0x12
	.4byte	.LASF426
	.byte	0xc
	.2byte	0xc14
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF166
	.byte	0xc
	.2byte	0xc16
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF167
	.byte	0xc
	.2byte	0xc16
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF162
	.byte	0xc
	.2byte	0xc18
	.4byte	0x1415
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF311
	.byte	0xc
	.2byte	0xc1a
	.4byte	0x176b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF427
	.byte	0xc
	.2byte	0xc1c
	.4byte	0x12d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x17
	.4byte	.LASF428
	.byte	0xc
	.2byte	0xc1e
	.4byte	0x2130
	.uleb128 0x1d
	.4byte	.LASF430
	.byte	0x4
	.byte	0x12
	.2byte	0x490
	.4byte	0x2204
	.uleb128 0x20
	.string	"U8"
	.byte	0x12
	.2byte	0x492
	.4byte	0x2204
	.uleb128 0x20
	.string	"S8"
	.byte	0x12
	.2byte	0x493
	.4byte	0x2209
	.uleb128 0x20
	.string	"U16"
	.byte	0x12
	.2byte	0x494
	.4byte	0x220e
	.uleb128 0x20
	.string	"S16"
	.byte	0x12
	.2byte	0x495
	.4byte	0x2213
	.uleb128 0x20
	.string	"U32"
	.byte	0x12
	.2byte	0x496
	.4byte	0x2218
	.uleb128 0x20
	.string	"S32"
	.byte	0x12
	.2byte	0x497
	.4byte	0x221d
	.uleb128 0x20
	.string	"F32"
	.byte	0x12
	.2byte	0x498
	.4byte	0xa5
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.uleb128 0x8
	.4byte	0x25
	.uleb128 0x8
	.4byte	0x3a
	.uleb128 0x8
	.4byte	0x33
	.uleb128 0x8
	.4byte	0x48
	.uleb128 0x8
	.4byte	0x41
	.uleb128 0x17
	.4byte	.LASF431
	.byte	0x12
	.2byte	0x499
	.4byte	0x21a4
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF664
	.byte	0x1
	.2byte	0x68a
	.byte	0x1
	.4byte	0xaa
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF465
	.byte	0x1
	.2byte	0x6f9
	.byte	0x1
	.4byte	0x41
	.byte	0x1
	.4byte	0x2273
	.uleb128 0x23
	.string	"out"
	.byte	0x1
	.2byte	0x6f9
	.4byte	0x1717
	.uleb128 0x24
	.4byte	.LASF432
	.byte	0x1
	.2byte	0x6fb
	.4byte	0x41
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.2byte	0x6fb
	.4byte	0x41
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF436
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.4byte	0xaa
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.4byte	0x22bc
	.uleb128 0x27
	.4byte	.LASF16
	.byte	0x1
	.byte	0xcd
	.4byte	0x22bc
	.4byte	.LLST1
	.uleb128 0x27
	.4byte	.LASF17
	.byte	0x1
	.byte	0xcd
	.4byte	0x22bc
	.4byte	.LLST2
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0xcf
	.4byte	0x41
	.4byte	.LLST3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x38d
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x137
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST4
	.4byte	0x22eb
	.uleb128 0x2a
	.string	"e"
	.byte	0x1
	.2byte	0x137
	.4byte	0xfac
	.4byte	.LLST5
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF434
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST6
	.4byte	0x2349
	.uleb128 0x2c
	.string	"e"
	.byte	0x1
	.byte	0xdf
	.4byte	0xfac
	.4byte	.LLST7
	.uleb128 0x2d
	.4byte	.LASF435
	.byte	0x1
	.byte	0xe1
	.4byte	0x7a
	.4byte	.LLST8
	.uleb128 0x2d
	.4byte	.LASF109
	.byte	0x1
	.byte	0xe2
	.4byte	0x7a
	.4byte	.LLST9
	.uleb128 0x2e
	.string	"d"
	.byte	0x1
	.byte	0xe3
	.4byte	0x398
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.byte	0xe4
	.4byte	0x41
	.4byte	.LLST10
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF437
	.byte	0x1
	.2byte	0x140
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST11
	.4byte	0x2386
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.2byte	0x140
	.4byte	0x22bc
	.4byte	.LLST12
	.uleb128 0x30
	.4byte	.LASF438
	.byte	0x1
	.2byte	0x142
	.4byte	0x41
	.4byte	.LLST13
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF439
	.byte	0x1
	.2byte	0x157
	.byte	0x1
	.4byte	0x18ad
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST14
	.4byte	0x244b
	.uleb128 0x31
	.4byte	.LASF440
	.byte	0x1
	.2byte	0x157
	.4byte	0xfac
	.4byte	.LLST15
	.uleb128 0x30
	.4byte	.LASF441
	.byte	0x1
	.2byte	0x159
	.4byte	0x244b
	.4byte	.LLST16
	.uleb128 0x30
	.4byte	.LASF442
	.byte	0x1
	.2byte	0x15a
	.4byte	0x2451
	.4byte	.LLST17
	.uleb128 0x30
	.4byte	.LASF443
	.byte	0x1
	.2byte	0x15b
	.4byte	0x18ad
	.4byte	.LLST18
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x15c
	.4byte	0x41
	.4byte	.LLST19
	.uleb128 0x30
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x15c
	.4byte	0x41
	.4byte	.LLST20
	.uleb128 0x30
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x15c
	.4byte	0x41
	.4byte	.LLST21
	.uleb128 0x30
	.4byte	.LASF444
	.byte	0x1
	.2byte	0x15d
	.4byte	0x1897
	.4byte	.LLST22
	.uleb128 0x30
	.4byte	.LASF445
	.byte	0x1
	.2byte	0x15d
	.4byte	0x7a
	.4byte	.LLST23
	.uleb128 0x24
	.4byte	.LASF446
	.byte	0x1
	.2byte	0x15d
	.4byte	0x7a
	.uleb128 0x24
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x15d
	.4byte	0x7a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1976
	.uleb128 0x5
	.byte	0x4
	.4byte	0x18b3
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF447
	.byte	0x1
	.2byte	0x18c
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST24
	.4byte	0x2518
	.uleb128 0x2a
	.string	"e"
	.byte	0x1
	.2byte	0x18c
	.4byte	0xfac
	.4byte	.LLST25
	.uleb128 0x33
	.4byte	.LASF448
	.byte	0x1
	.2byte	0x18e
	.4byte	0x398
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x18f
	.4byte	0x18ad
	.4byte	.LLST26
	.uleb128 0x32
	.string	"up"
	.byte	0x1
	.2byte	0x190
	.4byte	0x1897
	.4byte	.LLST27
	.uleb128 0x30
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x190
	.4byte	0x1897
	.4byte	.LLST28
	.uleb128 0x33
	.4byte	.LASF449
	.byte	0x1
	.2byte	0x191
	.4byte	0x398
	.byte	0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.4byte	.LASF450
	.byte	0x1
	.2byte	0x191
	.4byte	0x398
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x33
	.4byte	.LASF451
	.byte	0x1
	.2byte	0x191
	.4byte	0x398
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x30
	.4byte	.LASF441
	.byte	0x1
	.2byte	0x192
	.4byte	0x244b
	.4byte	.LLST29
	.uleb128 0x33
	.4byte	.LASF452
	.byte	0x1
	.2byte	0x193
	.4byte	0x398
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x24
	.4byte	.LASF453
	.byte	0x1
	.2byte	0x194
	.4byte	0x398
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF454
	.byte	0x1
	.2byte	0x1f6
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST30
	.4byte	0x25fd
	.uleb128 0x31
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x20b6
	.4byte	.LLST31
	.uleb128 0x31
	.4byte	.LASF455
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x41
	.4byte	.LLST32
	.uleb128 0x30
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x212a
	.4byte	.LLST33
	.uleb128 0x30
	.4byte	.LASF456
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x25fd
	.4byte	.LLST34
	.uleb128 0x30
	.4byte	.LASF457
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x2603
	.4byte	.LLST35
	.uleb128 0x30
	.4byte	.LASF458
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x2603
	.4byte	.LLST36
	.uleb128 0x32
	.string	"d"
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x7a
	.4byte	.LLST37
	.uleb128 0x30
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x7a
	.4byte	.LLST38
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x41
	.4byte	.LLST39
	.uleb128 0x25
	.string	"j"
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x41
	.uleb128 0x32
	.string	"v2"
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x398
	.4byte	.LLST40
	.uleb128 0x32
	.string	"v1"
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x2609
	.4byte	.LLST41
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x30
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x218
	.4byte	0x41
	.4byte	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1365
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a3c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x398
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF459
	.byte	0x1
	.2byte	0x2e1
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2645
	.uleb128 0x36
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x2e1
	.4byte	0x20b6
	.byte	0x1
	.byte	0x53
	.uleb128 0x36
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x2e1
	.4byte	0x2645
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x211e
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF460
	.byte	0x1
	.2byte	0x39b
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST43
	.4byte	0x26c3
	.uleb128 0x31
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x39b
	.4byte	0x20b6
	.4byte	.LLST44
	.uleb128 0x31
	.4byte	.LASF461
	.byte	0x1
	.2byte	0x39b
	.4byte	0x2645
	.4byte	.LLST45
	.uleb128 0x30
	.4byte	.LASF462
	.byte	0x1
	.2byte	0x39d
	.4byte	0x1897
	.4byte	.LLST46
	.uleb128 0x30
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x39e
	.4byte	0x1cab
	.4byte	.LLST47
	.uleb128 0x33
	.4byte	.LASF463
	.byte	0x1
	.2byte	0x39f
	.4byte	0x398
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x41
	.4byte	.LLST48
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF464
	.byte	0x1
	.2byte	0x486
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST49
	.4byte	0x26ea
	.uleb128 0x24
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x488
	.4byte	0x7a
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF466
	.byte	0x1
	.2byte	0x49c
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST50
	.4byte	0x2746
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x49e
	.4byte	0x41
	.4byte	.LLST51
	.uleb128 0x33
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x49f
	.4byte	0x398
	.byte	0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x49f
	.4byte	0x398
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x38
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.2byte	0x4ab
	.4byte	0x41
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF467
	.byte	0x1
	.2byte	0x4e5
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST52
	.4byte	0x276f
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x4e7
	.4byte	0x41
	.4byte	.LLST53
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF468
	.byte	0x1
	.2byte	0x525
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST54
	.4byte	0x27a8
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x527
	.4byte	0x41
	.4byte	.LLST55
	.uleb128 0x30
	.4byte	.LASF469
	.byte	0x1
	.2byte	0x528
	.4byte	0x7a
	.4byte	.LLST56
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF470
	.byte	0x1
	.2byte	0x553
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LLST57
	.4byte	0x2840
	.uleb128 0x31
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x553
	.4byte	0x41
	.4byte	.LLST58
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x555
	.4byte	0x41
	.4byte	.LLST59
	.uleb128 0x24
	.4byte	.LASF471
	.byte	0x1
	.2byte	0x556
	.4byte	0x7a
	.uleb128 0x33
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x557
	.4byte	0x398
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x30
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x558
	.4byte	0x398
	.4byte	.LLST60
	.uleb128 0x39
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0x2825
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF472
	.byte	0x1
	.2byte	0x56d
	.4byte	0x41
	.byte	0x1
	.uleb128 0x3b
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LBB13
	.4byte	.LBE13
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF472
	.byte	0x1
	.2byte	0x56d
	.4byte	0x41
	.byte	0x1
	.uleb128 0x3b
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF473
	.byte	0x1
	.2byte	0x59a
	.byte	0x1
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST61
	.4byte	0x2888
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x59c
	.4byte	0x41
	.4byte	.LLST62
	.uleb128 0x33
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x59d
	.4byte	0x398
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x30
	.4byte	.LASF471
	.byte	0x1
	.2byte	0x59e
	.4byte	0x7a
	.4byte	.LLST63
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF474
	.byte	0x1
	.2byte	0x5ef
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST64
	.4byte	0x28b1
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x5f1
	.4byte	0x41
	.4byte	.LLST65
	.byte	0
	.uleb128 0x3c
	.4byte	0x222e
	.4byte	.LFB56
	.4byte	.LFE56
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF475
	.byte	0x1
	.2byte	0x659
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LLST66
	.4byte	0x28fb
	.uleb128 0x30
	.4byte	.LASF471
	.byte	0x1
	.2byte	0x65b
	.4byte	0x7a
	.4byte	.LLST67
	.uleb128 0x33
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x65c
	.4byte	0x398
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF476
	.byte	0x1
	.2byte	0x61b
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST68
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF477
	.byte	0x1
	.2byte	0x6b0
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LLST69
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF478
	.byte	0x1
	.2byte	0x6cf
	.byte	0x1
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LLST70
	.uleb128 0x3e
	.4byte	0x223d
	.4byte	.LFB59
	.4byte	.LFE59
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x296d
	.uleb128 0x3f
	.4byte	0x2250
	.4byte	.LLST71
	.uleb128 0x40
	.4byte	0x225c
	.4byte	.LLST72
	.uleb128 0x40
	.4byte	0x2268
	.4byte	.LLST73
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF479
	.byte	0x1
	.2byte	0x709
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LLST74
	.4byte	0x29c8
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x70b
	.4byte	0x41
	.4byte	.LLST75
	.uleb128 0x41
	.4byte	0x223d
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.2byte	0x724
	.uleb128 0x3f
	.4byte	0x2250
	.4byte	.LLST76
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x40
	.4byte	0x225c
	.4byte	.LLST77
	.uleb128 0x40
	.4byte	0x2268
	.4byte	.LLST78
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.4byte	.LASF480
	.byte	0x1
	.2byte	0x72f
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST79
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF481
	.byte	0x1
	.2byte	0x752
	.byte	0x1
	.4byte	0x1d0d
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LLST80
	.4byte	0x2a0d
	.uleb128 0x31
	.4byte	.LASF469
	.byte	0x1
	.2byte	0x752
	.4byte	0x1d0d
	.4byte	.LLST81
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF482
	.byte	0x1
	.2byte	0x75f
	.byte	0x1
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LLST82
	.4byte	0x2a68
	.uleb128 0x2a
	.string	"fov"
	.byte	0x1
	.2byte	0x75f
	.4byte	0x1d0d
	.4byte	.LLST83
	.uleb128 0x31
	.4byte	.LASF483
	.byte	0x1
	.2byte	0x75f
	.4byte	0x1d0d
	.4byte	.LLST84
	.uleb128 0x31
	.4byte	.LASF484
	.byte	0x1
	.2byte	0x75f
	.4byte	0x1d0d
	.4byte	.LLST85
	.uleb128 0x42
	.string	"p"
	.byte	0x1
	.2byte	0x761
	.4byte	0x2a68
	.byte	0x5
	.byte	0x3
	.4byte	p.15274
	.byte	0
	.uleb128 0xb
	.4byte	0x1d0d
	.4byte	0x2a7e
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF485
	.byte	0x1
	.2byte	0x772
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST86
	.4byte	0x2af9
	.uleb128 0x31
	.4byte	.LASF486
	.byte	0x1
	.2byte	0x772
	.4byte	0x1d0d
	.4byte	.LLST87
	.uleb128 0x31
	.4byte	.LASF487
	.byte	0x1
	.2byte	0x772
	.4byte	0x1d0d
	.4byte	.LLST88
	.uleb128 0x31
	.4byte	.LASF488
	.byte	0x1
	.2byte	0x772
	.4byte	0x1d0d
	.4byte	.LLST89
	.uleb128 0x31
	.4byte	.LASF489
	.byte	0x1
	.2byte	0x772
	.4byte	0x1d0d
	.4byte	.LLST90
	.uleb128 0x31
	.4byte	.LASF484
	.byte	0x1
	.2byte	0x772
	.4byte	0x1d0d
	.4byte	.LLST91
	.uleb128 0x42
	.string	"p"
	.byte	0x1
	.2byte	0x774
	.4byte	0x2a68
	.byte	0x5
	.byte	0x3
	.4byte	p.15282
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF490
	.byte	0x1
	.2byte	0x78d
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LLST92
	.4byte	0x2b51
	.uleb128 0x33
	.4byte	.LASF491
	.byte	0x1
	.2byte	0x78f
	.4byte	0x12d4
	.byte	0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x33
	.4byte	.LASF492
	.byte	0x1
	.2byte	0x790
	.4byte	0x12d4
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.uleb128 0x30
	.4byte	.LASF493
	.byte	0x1
	.2byte	0x791
	.4byte	0x12d4
	.4byte	.LLST93
	.uleb128 0x32
	.string	"t"
	.byte	0x1
	.2byte	0x792
	.4byte	0x7a
	.4byte	.LLST94
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF494
	.byte	0x1
	.2byte	0x803
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST95
	.4byte	0x2bfa
	.uleb128 0x24
	.4byte	.LASF495
	.byte	0x1
	.2byte	0x805
	.4byte	0x7a
	.uleb128 0x43
	.4byte	.LASF496
	.byte	0x1
	.2byte	0x806
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF497
	.byte	0x1
	.2byte	0x806
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"x"
	.byte	0x1
	.2byte	0x807
	.4byte	0x41
	.4byte	.LLST96
	.uleb128 0x32
	.string	"x2"
	.byte	0x1
	.2byte	0x807
	.4byte	0x41
	.4byte	.LLST97
	.uleb128 0x32
	.string	"y2"
	.byte	0x1
	.2byte	0x807
	.4byte	0x41
	.4byte	.LLST98
	.uleb128 0x32
	.string	"y"
	.byte	0x1
	.2byte	0x807
	.4byte	0x41
	.4byte	.LLST99
	.uleb128 0x32
	.string	"w"
	.byte	0x1
	.2byte	0x807
	.4byte	0x41
	.4byte	.LLST100
	.uleb128 0x32
	.string	"h"
	.byte	0x1
	.2byte	0x807
	.4byte	0x41
	.4byte	.LLST101
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF498
	.byte	0x1
	.2byte	0x851
	.4byte	0x41
	.byte	0x1
	.uleb128 0x3b
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF499
	.byte	0x1
	.2byte	0x97e
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST102
	.4byte	0x2c23
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x980
	.4byte	0x41
	.4byte	.LLST103
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF500
	.byte	0x1
	.2byte	0x98b
	.byte	0x1
	.4byte	.LFB68
	.4byte	.LFE68
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2c4b
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x98d
	.4byte	0x41
	.4byte	.LLST104
	.byte	0
	.uleb128 0x44
	.byte	0x1
	.4byte	.LASF501
	.byte	0x1
	.2byte	0x998
	.4byte	.LFB69
	.4byte	.LFE69
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2c72
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x99a
	.4byte	0x41
	.4byte	.LLST105
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.4byte	.LASF502
	.byte	0x1
	.2byte	0x9a8
	.byte	0x1
	.4byte	.LFB70
	.4byte	.LFE70
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2cec
	.uleb128 0x36
	.4byte	.LASF503
	.byte	0x1
	.2byte	0x9a8
	.4byte	0x176b
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0x9aa
	.4byte	0x41
	.4byte	.LLST106
	.uleb128 0x30
	.4byte	.LASF504
	.byte	0x1
	.2byte	0x9aa
	.4byte	0x41
	.4byte	.LLST107
	.uleb128 0x30
	.4byte	.LASF505
	.byte	0x1
	.2byte	0x9aa
	.4byte	0x41
	.4byte	.LLST108
	.uleb128 0x32
	.string	"mir"
	.byte	0x1
	.2byte	0x9ab
	.4byte	0x2cec
	.4byte	.LLST109
	.uleb128 0x33
	.4byte	.LASF506
	.byte	0x1
	.2byte	0x9ac
	.4byte	0x398
	.byte	0x7
	.byte	0x73
	.sleb128 4
	.byte	0x6
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2198
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF507
	.byte	0x1
	.2byte	0x9e8
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST110
	.4byte	0x2de3
	.uleb128 0x2a
	.string	"mir"
	.byte	0x1
	.2byte	0x9e8
	.4byte	0x2cec
	.4byte	.LLST111
	.uleb128 0x32
	.string	"d"
	.byte	0x1
	.2byte	0x9ea
	.4byte	0x7a
	.4byte	.LLST112
	.uleb128 0x30
	.4byte	.LASF508
	.byte	0x1
	.2byte	0x9ea
	.4byte	0x7a
	.4byte	.LLST113
	.uleb128 0x25
	.string	"ent"
	.byte	0x1
	.2byte	0x9eb
	.4byte	0xfac
	.uleb128 0x32
	.string	"ox"
	.byte	0x1
	.2byte	0x9ec
	.4byte	0x41
	.4byte	.LLST114
	.uleb128 0x32
	.string	"oy"
	.byte	0x1
	.2byte	0x9ec
	.4byte	0x41
	.4byte	.LLST115
	.uleb128 0x32
	.string	"ow"
	.byte	0x1
	.2byte	0x9ec
	.4byte	0x41
	.4byte	.LLST116
	.uleb128 0x32
	.string	"oh"
	.byte	0x1
	.2byte	0x9ec
	.4byte	0x41
	.4byte	.LLST117
	.uleb128 0x30
	.4byte	.LASF509
	.byte	0x1
	.2byte	0x9ec
	.4byte	0x41
	.4byte	.LLST118
	.uleb128 0x30
	.4byte	.LASF510
	.byte	0x1
	.2byte	0x9ec
	.4byte	0x41
	.4byte	.LLST119
	.uleb128 0x30
	.4byte	.LASF511
	.byte	0x1
	.2byte	0x9ec
	.4byte	0x41
	.4byte	.LLST120
	.uleb128 0x30
	.4byte	.LASF512
	.byte	0x1
	.2byte	0x9ed
	.4byte	0x398
	.4byte	.LLST121
	.uleb128 0x30
	.4byte	.LASF513
	.byte	0x1
	.2byte	0x9ed
	.4byte	0x398
	.4byte	.LLST122
	.uleb128 0x30
	.4byte	.LASF514
	.byte	0x1
	.2byte	0x9ee
	.4byte	0xaa
	.4byte	.LLST123
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF515
	.byte	0x1
	.2byte	0xa86
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST124
	.4byte	0x2e0b
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0xa88
	.4byte	0x41
	.4byte	.LLST125
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF516
	.byte	0x1
	.2byte	0xa92
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST126
	.4byte	0x2e46
	.uleb128 0x31
	.4byte	.LASF503
	.byte	0x1
	.2byte	0xa92
	.4byte	0x176b
	.4byte	.LLST127
	.uleb128 0x2a
	.string	"mir"
	.byte	0x1
	.2byte	0xa92
	.4byte	0x2cec
	.4byte	.LLST128
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF517
	.byte	0x1
	.2byte	0xabd
	.byte	0x1
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LLST129
	.4byte	0x2e81
	.uleb128 0x31
	.4byte	.LASF503
	.byte	0x1
	.2byte	0xabd
	.4byte	0x176b
	.4byte	.LLST130
	.uleb128 0x2a
	.string	"mir"
	.byte	0x1
	.2byte	0xabd
	.4byte	0x2cec
	.4byte	.LLST131
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.4byte	.LASF518
	.byte	0x1
	.2byte	0xad0
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LLST132
	.4byte	0x2eb7
	.uleb128 0x32
	.string	"i"
	.byte	0x1
	.2byte	0xad2
	.4byte	0x41
	.4byte	.LLST133
	.uleb128 0x32
	.string	"s"
	.byte	0x1
	.2byte	0xad3
	.4byte	0x176b
	.4byte	.LLST134
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.4byte	.LASF519
	.byte	0x1
	.2byte	0xb0f
	.byte	0x1
	.4byte	.LFB76
	.4byte	.LFE76
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF520
	.byte	0x1
	.2byte	0xb4a
	.byte	0x1
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LLST135
	.4byte	0x2f30
	.uleb128 0x46
	.4byte	.LASF521
	.byte	0x1
	.2byte	0xb4c
	.4byte	0x73
	.byte	0x8
	.4byte	0
	.4byte	0
	.uleb128 0x24
	.4byte	.LASF522
	.byte	0x1
	.2byte	0xb4c
	.4byte	0x73
	.uleb128 0x24
	.4byte	.LASF215
	.byte	0x1
	.2byte	0xb4d
	.4byte	0x2f30
	.uleb128 0x30
	.4byte	.LASF523
	.byte	0x1
	.2byte	0xb4e
	.4byte	0x7a
	.4byte	.LLST136
	.uleb128 0x24
	.4byte	.LASF524
	.byte	0x1
	.2byte	0xb4f
	.4byte	0x41
	.byte	0
	.uleb128 0xb
	.4byte	0x1d02
	.4byte	0x2f40
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x46
	.4byte	.LASF525
	.byte	0x1
	.2byte	0x75d
	.4byte	0x1d18
	.byte	0x8
	.4byte	0x3fefffff
	.4byte	0xc0000000
	.uleb128 0x47
	.string	"vid"
	.byte	0x4
	.byte	0x38
	.4byte	0x35c
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF526
	.byte	0x1
	.byte	0x55
	.4byte	0xeba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_refdef
	.uleb128 0x48
	.4byte	.LASF527
	.byte	0x1
	.byte	0x46
	.4byte	0x398
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_origin
	.uleb128 0x49
	.string	"vpn"
	.byte	0x1
	.byte	0x44
	.4byte	0x398
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vpn
	.uleb128 0x48
	.4byte	.LASF528
	.byte	0x1
	.byte	0x45
	.4byte	0x398
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vright
	.uleb128 0x49
	.string	"vup"
	.byte	0x1
	.byte	0x43
	.4byte	0x398
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vup
	.uleb128 0x48
	.4byte	.LASF529
	.byte	0x1
	.byte	0x59
	.4byte	0x1680
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_notexture_mip
	.uleb128 0x48
	.4byte	.LASF530
	.byte	0x1
	.byte	0x1a
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_cache_thrash
	.uleb128 0x4a
	.string	"cl"
	.byte	0xd
	.2byte	0x11b
	.4byte	0x12c9
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0xd45
	.4byte	0x2ffe
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x43
	.4byte	.LASF531
	.byte	0xd
	.2byte	0x11f
	.4byte	0x2fed
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF532
	.byte	0xd
	.2byte	0x13b
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0xfac
	.4byte	0x302a
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x43
	.4byte	.LASF533
	.byte	0xd
	.2byte	0x13c
	.4byte	0x301a
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF534
	.byte	0xd
	.2byte	0x13e
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF535
	.byte	0xd
	.2byte	0x13f
	.4byte	0x301a
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF536
	.byte	0x1
	.2byte	0x6aa
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF537
	.byte	0x13
	.byte	0x1a
	.4byte	0x3b3
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF538
	.byte	0xc
	.byte	0xc4
	.4byte	0x7a
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF539
	.byte	0xc
	.byte	0xc4
	.4byte	0x7a
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"glx"
	.byte	0xc
	.byte	0xe4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.string	"gly"
	.byte	0xc
	.byte	0xe4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF496
	.byte	0x1
	.2byte	0x806
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF497
	.byte	0x1
	.2byte	0x806
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF540
	.byte	0x1
	.byte	0x18
	.4byte	0xd45
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_worldentity
	.uleb128 0x48
	.4byte	.LASF541
	.byte	0x1
	.byte	0x1c
	.4byte	0x398
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	modelorg
	.uleb128 0x48
	.4byte	.LASF542
	.byte	0x1
	.byte	0x1c
	.4byte	0x398
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_entorigin
	.uleb128 0x48
	.4byte	.LASF440
	.byte	0x1
	.byte	0x1d
	.4byte	0xfac
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	currententity
	.uleb128 0x48
	.4byte	.LASF543
	.byte	0x1
	.byte	0x1f
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_visframecount
	.uleb128 0x48
	.4byte	.LASF544
	.byte	0x1
	.byte	0x20
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_framecount
	.uleb128 0x48
	.4byte	.LASF545
	.byte	0x1
	.byte	0x21
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_lightTimestamp
	.uleb128 0xb
	.4byte	0x1415
	.4byte	0x314d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x48
	.4byte	.LASF546
	.byte	0x1
	.byte	0x23
	.4byte	0x313d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	frustum
	.uleb128 0x48
	.4byte	.LASF547
	.byte	0x1
	.byte	0x25
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	c_brush_polys
	.uleb128 0x48
	.4byte	.LASF548
	.byte	0x1
	.byte	0x25
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	c_alias_polys
	.uleb128 0x48
	.4byte	.LASF549
	.byte	0x1
	.byte	0x57
	.4byte	0x1c93
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_viewleaf
	.uleb128 0x48
	.4byte	.LASF550
	.byte	0x1
	.byte	0x57
	.4byte	0x1c93
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_oldviewleaf
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x31b7
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x48
	.4byte	.LASF551
	.byte	0x1
	.byte	0x5b
	.4byte	0x31a7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	d_lightstylevalue
	.uleb128 0x48
	.4byte	.LASF552
	.byte	0x1
	.byte	0x27
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	envmap
	.uleb128 0x48
	.4byte	.LASF553
	.byte	0x1
	.byte	0x29
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	currenttexture
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x31fd
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x48
	.4byte	.LASF554
	.byte	0x1
	.byte	0x2b
	.4byte	0x31ed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	cnttextures
	.uleb128 0x48
	.4byte	.LASF555
	.byte	0x1
	.byte	0x2d
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	particletexture
	.uleb128 0x48
	.4byte	.LASF556
	.byte	0x1
	.byte	0x2e
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	particletexture_smoke
	.uleb128 0x48
	.4byte	.LASF557
	.byte	0x1
	.byte	0x2f
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	particletexture_glow
	.uleb128 0x48
	.4byte	.LASF558
	.byte	0x1
	.byte	0x30
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	particletexture_glow2
	.uleb128 0x48
	.4byte	.LASF559
	.byte	0x1
	.byte	0x31
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	particletexture_tele
	.uleb128 0x48
	.4byte	.LASF560
	.byte	0x1
	.byte	0x32
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	particletexture_blood
	.uleb128 0x48
	.4byte	.LASF561
	.byte	0x1
	.byte	0x33
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	particletexture_dirblood
	.uleb128 0x48
	.4byte	.LASF562
	.byte	0x1
	.byte	0x34
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	playertextures
	.uleb128 0x48
	.4byte	.LASF563
	.byte	0x1
	.byte	0x61
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_norefresh
	.uleb128 0x48
	.4byte	.LASF564
	.byte	0x1
	.byte	0x62
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_drawentities
	.uleb128 0x48
	.4byte	.LASF565
	.byte	0x1
	.byte	0x63
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_drawviewmodel
	.uleb128 0x48
	.4byte	.LASF566
	.byte	0x1
	.byte	0x64
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_fullbright
	.uleb128 0x48
	.4byte	.LASF567
	.byte	0x1
	.byte	0x65
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_lightmap
	.uleb128 0x48
	.4byte	.LASF568
	.byte	0x1
	.byte	0x66
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_shadows
	.uleb128 0x48
	.4byte	.LASF569
	.byte	0x1
	.byte	0x68
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_wateralpha
	.uleb128 0x48
	.4byte	.LASF570
	.byte	0x1
	.byte	0x69
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_dynamic
	.uleb128 0x48
	.4byte	.LASF571
	.byte	0x1
	.byte	0x6a
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_novis
	.uleb128 0x48
	.4byte	.LASF572
	.byte	0x1
	.byte	0x6d
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_clear
	.uleb128 0x48
	.4byte	.LASF573
	.byte	0x1
	.byte	0x6e
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_cull
	.uleb128 0x48
	.4byte	.LASF574
	.byte	0x1
	.byte	0x70
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_smoothmodels
	.uleb128 0x48
	.4byte	.LASF575
	.byte	0x1
	.byte	0x71
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_affinemodels
	.uleb128 0x48
	.4byte	.LASF576
	.byte	0x1
	.byte	0x72
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_polyblend
	.uleb128 0x48
	.4byte	.LASF577
	.byte	0x1
	.byte	0x77
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_reporttjunctions
	.uleb128 0x48
	.4byte	.LASF578
	.byte	0x1
	.byte	0x73
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_flashblend
	.uleb128 0x48
	.4byte	.LASF579
	.byte	0x1
	.byte	0x75
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_nocolors
	.uleb128 0x48
	.4byte	.LASF580
	.byte	0x1
	.byte	0x78
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_doubleeyes
	.uleb128 0x48
	.4byte	.LASF581
	.byte	0x1
	.byte	0x74
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_playermip
	.uleb128 0x48
	.4byte	.LASF582
	.byte	0x1
	.byte	0x7a
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_watershader
	.uleb128 0x48
	.4byte	.LASF583
	.byte	0x1
	.byte	0x7b
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_calcdepth
	.uleb128 0x48
	.4byte	.LASF584
	.byte	0x1
	.byte	0x7d
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_lightmapbright
	.uleb128 0x48
	.4byte	.LASF585
	.byte	0x1
	.byte	0x7e
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_radiusscale
	.uleb128 0x48
	.4byte	.LASF586
	.byte	0x1
	.byte	0x7f
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_visiblevolumes
	.uleb128 0x48
	.4byte	.LASF587
	.byte	0x1
	.byte	0x80
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_entityshadows
	.uleb128 0x48
	.4byte	.LASF588
	.byte	0x1
	.byte	0x81
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_worldshadows
	.uleb128 0x48
	.4byte	.LASF589
	.byte	0x1
	.byte	0x82
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_showlightnum
	.uleb128 0x48
	.4byte	.LASF590
	.byte	0x1
	.byte	0x83
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_glows
	.uleb128 0x48
	.4byte	.LASF591
	.byte	0x1
	.byte	0x84
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_fps
	.uleb128 0x48
	.4byte	.LASF592
	.byte	0x1
	.byte	0x85
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_debuginfo
	.uleb128 0x48
	.4byte	.LASF593
	.byte	0x1
	.byte	0x86
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_norevis
	.uleb128 0x48
	.4byte	.LASF594
	.byte	0x1
	.byte	0x87
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_nosvbsp
	.uleb128 0x48
	.4byte	.LASF595
	.byte	0x1
	.byte	0x88
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_noeclip
	.uleb128 0x48
	.4byte	.LASF596
	.byte	0x1
	.byte	0x89
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_infinitevolumes
	.uleb128 0x48
	.4byte	.LASF597
	.byte	0x1
	.byte	0x8a
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_noscissor
	.uleb128 0x48
	.4byte	.LASF598
	.byte	0x1
	.byte	0x8b
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_nocleversave
	.uleb128 0x48
	.4byte	.LASF599
	.byte	0x1
	.byte	0x8c
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_bumpmaps
	.uleb128 0x48
	.4byte	.LASF600
	.byte	0x1
	.byte	0x8d
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_colormaps
	.uleb128 0x48
	.4byte	.LASF601
	.byte	0x1
	.byte	0x8e
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_playershadow
	.uleb128 0x48
	.4byte	.LASF602
	.byte	0x1
	.byte	0x8f
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_nocache
	.uleb128 0x48
	.4byte	.LASF603
	.byte	0x1
	.byte	0x90
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_glares
	.uleb128 0x48
	.4byte	.LASF604
	.byte	0x1
	.byte	0x91
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_noefrags
	.uleb128 0x48
	.4byte	.LASF605
	.byte	0x1
	.byte	0x92
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_showtangent
	.uleb128 0x48
	.4byte	.LASF606
	.byte	0x1
	.byte	0x93
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	sh_noshadowpopping
	.uleb128 0x48
	.4byte	.LASF607
	.byte	0x1
	.byte	0xa5
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_waterfog
	.uleb128 0x48
	.4byte	.LASF608
	.byte	0x1
	.byte	0x9a
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_caustics
	.uleb128 0x48
	.4byte	.LASF609
	.byte	0x1
	.byte	0x9b
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_truform
	.uleb128 0x48
	.4byte	.LASF610
	.byte	0x1
	.byte	0x9c
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_truform_tesselation
	.uleb128 0x48
	.4byte	.LASF611
	.byte	0x1
	.byte	0x9d
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_transformlerp
	.uleb128 0x43
	.4byte	.LASF612
	.byte	0xc
	.2byte	0x2ee
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF613
	.byte	0x1
	.byte	0x95
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	mir_detail
	.uleb128 0x48
	.4byte	.LASF614
	.byte	0x1
	.byte	0x96
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	mir_frameskip
	.uleb128 0x48
	.4byte	.LASF615
	.byte	0x1
	.byte	0x97
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	mir_forcewater
	.uleb128 0x48
	.4byte	.LASF616
	.byte	0x1
	.byte	0x98
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	mir_distance
	.uleb128 0x48
	.4byte	.LASF617
	.byte	0x1
	.byte	0x99
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_wireframe
	.uleb128 0x48
	.4byte	.LASF618
	.byte	0x1
	.byte	0x9f
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_r
	.uleb128 0x48
	.4byte	.LASF619
	.byte	0x1
	.byte	0xa0
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_g
	.uleb128 0x48
	.4byte	.LASF620
	.byte	0x1
	.byte	0xa1
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_b
	.uleb128 0x48
	.4byte	.LASF621
	.byte	0x1
	.byte	0xa2
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_start
	.uleb128 0x48
	.4byte	.LASF622
	.byte	0x1
	.byte	0xa3
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_end
	.uleb128 0x48
	.4byte	.LASF623
	.byte	0x1
	.byte	0xa4
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_enabled
	.uleb128 0x48
	.4byte	.LASF624
	.byte	0x1
	.byte	0xa6
	.4byte	0x3b3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fog_color
	.uleb128 0x48
	.4byte	.LASF625
	.byte	0x1
	.byte	0x36
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	mirrortexturenum
	.uleb128 0x48
	.4byte	.LASF626
	.byte	0x1
	.byte	0x37
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	mirror
	.uleb128 0x48
	.4byte	.LASF627
	.byte	0x1
	.byte	0x38
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glare
	.uleb128 0x48
	.4byte	.LASF628
	.byte	0x1
	.byte	0x39
	.4byte	0x1717
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	mirror_plane
	.uleb128 0x48
	.4byte	.LASF629
	.byte	0x1
	.byte	0x3a
	.4byte	0x1415
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	mirror_far_plane
	.uleb128 0x48
	.4byte	.LASF630
	.byte	0x1
	.byte	0x3b
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	mirror_clipside
	.uleb128 0x48
	.4byte	.LASF631
	.byte	0x1
	.byte	0x49
	.4byte	0x12d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_world_matrix
	.uleb128 0x48
	.4byte	.LASF632
	.byte	0x1
	.byte	0x48
	.4byte	0x12d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_projection_matrix
	.uleb128 0xb
	.4byte	0x73
	.4byte	0x3797
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x48
	.4byte	.LASF633
	.byte	0x1
	.byte	0x4b
	.4byte	0x3787
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_Dproject_matrix
	.uleb128 0x48
	.4byte	.LASF634
	.byte	0x1
	.byte	0x4c
	.4byte	0x3787
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_Dworld_matrix
	.uleb128 0x48
	.4byte	.LASF635
	.byte	0x1
	.byte	0x4d
	.4byte	0x13d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_Iviewport
	.uleb128 0x48
	.4byte	.LASF636
	.byte	0x1
	.byte	0x50
	.4byte	0x3b3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	color_black
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x37f5
	.uleb128 0xc
	.4byte	0x48
	.byte	0xa1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF637
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x37df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_avertexnormals
	.uleb128 0x43
	.4byte	.LASF638
	.byte	0xc
	.2byte	0x949
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF639
	.byte	0xc
	.2byte	0xa81
	.4byte	0x20bc
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x383a
	.uleb128 0xc
	.4byte	0x48
	.byte	0x5
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF640
	.byte	0x1
	.2byte	0x78b
	.4byte	0x3824
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	frustumPlanes
	.uleb128 0x48
	.4byte	.LASF641
	.byte	0x1
	.byte	0x4e
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	numClearsSaved
	.uleb128 0xb
	.4byte	0x2198
	.4byte	0x386f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x48
	.4byte	.LASF642
	.byte	0x1
	.byte	0xa8
	.4byte	0x385f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	mirrorplanes
	.uleb128 0x48
	.4byte	.LASF643
	.byte	0x1
	.byte	0xa9
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	mirror_contents
	.uleb128 0x43
	.4byte	.LASF644
	.byte	0xc
	.2byte	0xc28
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF645
	.byte	0x1
	.byte	0x3c
	.4byte	0x176b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x38c3
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x48
	.4byte	.LASF646
	.byte	0x1
	.byte	0x3d
	.4byte	0x38b3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	caustics_textures
	.uleb128 0x48
	.4byte	.LASF647
	.byte	0x1
	.byte	0x3e
	.4byte	0xaa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	busy_caustics
	.uleb128 0x43
	.4byte	.LASF648
	.byte	0x12
	.2byte	0x548
	.4byte	0x38f5
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	0x38fa
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2222
	.uleb128 0x43
	.4byte	.LASF649
	.byte	0x7
	.2byte	0x150
	.4byte	0x73
	.byte	0x1
	.byte	0x1
	.uleb128 0x43
	.4byte	.LASF650
	.byte	0x7
	.2byte	0x16e
	.4byte	0x4e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF651
	.byte	0x1
	.byte	0x4a
	.4byte	0x12d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_base_world_matrix
	.uleb128 0x48
	.4byte	.LASF652
	.byte	0x1
	.byte	0x6c
	.4byte	0x4e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gl_finish
	.uleb128 0x4c
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x398
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	shadevector
	.uleb128 0x4c
	.4byte	.LASF654
	.byte	0x1
	.2byte	0x1da
	.4byte	0x7a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	shadelight
	.uleb128 0x4c
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x1da
	.4byte	0x7a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ambientlight
	.uleb128 0xb
	.4byte	0x7a
	.4byte	0x398f
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF655
	.byte	0x1
	.2byte	0x1de
	.4byte	0x3979
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_avertexnormal_dots
	.uleb128 0x4c
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x1897
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	shadedots
	.uleb128 0x4c
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lastposenum
	.uleb128 0x4c
	.4byte	.LASF658
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	extrudeTimeStamp
	.uleb128 0x4c
	.4byte	.LASF659
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x20c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	extrudedVerts
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x39ff
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF660
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x39ee
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	extrudedTimestamp
	.uleb128 0x4c
	.4byte	.LASF422
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x20d9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	triangleVis
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
	.uleb128 0x16
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
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.sleb128 24
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-1-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL27-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	.LVL29-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -14
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 160
	.byte	0x6
	.byte	0x23
	.uleb128 0x1a0
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 8
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 12
	.4byte	.LVL62-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 12
	.byte	0x6
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 168
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x5
	.byte	0x8e
	.sleb128 12
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x9
	.byte	0x8e
	.sleb128 12
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65-1-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL79-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0xd
	.byte	0x3
	.4byte	currententity
	.byte	0x6
	.byte	0x23
	.uleb128 0xa0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1a0
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 160
	.byte	0x6
	.byte	0x23
	.uleb128 0x1a0
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-1-.Ltext0
	.2byte	0xd
	.byte	0x3
	.4byte	currententity
	.byte	0x6
	.byte	0x23
	.uleb128 0xa0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1a0
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x73
	.sleb128 124
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x73
	.sleb128 124
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0xa
	.byte	0x78
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x78
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-1-.Ltext0
	.2byte	0xc
	.byte	0x78
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x78
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x78
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL98-1-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL112-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 4
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x73
	.sleb128 140
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x73
	.sleb128 144
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LFB47-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI29-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LFB48-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LFB49-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LFB50-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI37-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-1-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 148
	.4byte	.LVL148-1-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LFB51-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI39-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI41-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL162-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 148
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0xc
	.byte	0x73
	.sleb128 148
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 152
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0xf
	.byte	0x73
	.sleb128 148
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 152
	.byte	0x93
	.uleb128 0x4
	.byte	0x73
	.sleb128 156
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x9
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL165-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x9
	.byte	0x6b
	.byte	0x93
	.uleb128 0x4
	.byte	0x6c
	.byte	0x93
	.uleb128 0x4
	.byte	0x6e
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LFB52-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI43-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LFB53-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI46-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI47-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI49-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LFB55-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI50-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI51-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI52-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI53-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LFB54-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI54-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI55-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI56-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LFB57-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI57-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI58-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI59-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI60-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LFB58-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI61-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI62-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI63-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI64-.Ltext0
	.4byte	.LCFI65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI65-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL186-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL185-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LFB60-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI66-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI67-.Ltext0
	.4byte	.LCFI68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI68-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LFB61-.Ltext0
	.4byte	.LCFI69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI69-.Ltext0
	.4byte	.LCFI70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI70-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LFB62-.Ltext0
	.4byte	.LCFI71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI71-.Ltext0
	.4byte	.LCFI72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI72-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL196-1-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LFB63-.Ltext0
	.4byte	.LCFI73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI73-.Ltext0
	.4byte	.LCFI74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI74-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL199-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL199-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL199-1-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL199-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	.LVL199-1-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3e
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LFB64-.Ltext0
	.4byte	.LCFI75-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI75-.Ltext0
	.4byte	.LCFI76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI76-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL206-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x23
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL206-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x24
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x25
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LFB65-.Ltext0
	.4byte	.LCFI77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI77-.Ltext0
	.4byte	.LCFI78-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 320
	.4byte	.LCFI78-.Ltext0
	.4byte	.LFE65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x3c
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x16
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x36
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x39
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x2c
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1a
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x36
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x39
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x34
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x28
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x22
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x36
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x39
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x34
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x37
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x20
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x20
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x36
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x34
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x37
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x20
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x36
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x34
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x37
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x20
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x1a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x30
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x36
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x37
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x20
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x16
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x36
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x37
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x20
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x12
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x36
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x20
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0xe
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x20
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x30
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI79-.Ltext0
	.4byte	.LCFI80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI80-.Ltext0
	.4byte	.LCFI81-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI81-.Ltext0
	.4byte	.LCFI82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI82-.Ltext0
	.4byte	.LCFI83-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI83-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL241-1-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL241-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	r_refdef+8
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	r_refdef+12
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LFB67-.Ltext0
	.4byte	.LCFI84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI84-.Ltext0
	.4byte	.LCFI85-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI85-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL262-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	r_framecount
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL269-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL270-.Ltext0
	.4byte	.LFE70-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI86-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI86-.Ltext0
	.4byte	.LCFI87-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 184
	.4byte	.LCFI87-.Ltext0
	.4byte	.LCFI88-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI88-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 184
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL299-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL294-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	r_drawentities+12
	.4byte	.LVL294-1-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL300-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL289-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	r_refdef
	.4byte	.LVL289-1-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -140
	.4byte	.LVL300-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -140
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL289-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	r_refdef+4
	.4byte	.LVL289-1-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	.LVL300-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -136
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL289-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	r_refdef+8
	.4byte	.LVL289-1-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL300-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL286-.Ltext0
	.4byte	.LVL289-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	r_refdef+12
	.4byte	.LVL289-1-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL300-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL289-1-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -152
	.4byte	.LVL289-1-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -132
	.4byte	.LVL300-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -132
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL289-1-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL289-1-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	.LVL300-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -128
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL294-1-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL300-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x7
	.byte	0x8f
	.sleb128 124
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL281-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0xc
	.byte	0x8f
	.sleb128 124
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 128
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-1-.Ltext0
	.2byte	0xf
	.byte	0x8f
	.sleb128 124
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 128
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 132
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL283-1-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x9
	.byte	0x60
	.byte	0x93
	.uleb128 0x4
	.byte	0x61
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL300-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x9
	.byte	0x60
	.byte	0x93
	.uleb128 0x4
	.byte	0x61
	.byte	0x93
	.uleb128 0x4
	.byte	0x62
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0xc
	.byte	0x8f
	.sleb128 112
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 116
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL278-1-.Ltext0
	.2byte	0xf
	.byte	0x8f
	.sleb128 112
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 116
	.byte	0x93
	.uleb128 0x4
	.byte	0x8f
	.sleb128 120
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL278-1-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL300-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL276-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x12
	.byte	0x79
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x2f
	.byte	0x23
	.uleb128 0x80000000
	.byte	0xc
	.4byte	0x8000005e
	.byte	0x2b
	.byte	0x9f
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-1-.Ltext0
	.2byte	0x13
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.byte	0x23
	.uleb128 0x2f
	.byte	0x23
	.uleb128 0x80000000
	.byte	0xc
	.4byte	0x8000005e
	.byte	0x2b
	.byte	0x9f
	.4byte	.LVL278-1-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0xf
	.byte	0x83
	.sleb128 47
	.byte	0x23
	.uleb128 0x80000000
	.byte	0xc
	.4byte	0x8000005e
	.byte	0x2b
	.byte	0x9f
	.4byte	.LVL292-.Ltext0
	.4byte	.LVL293-.Ltext0
	.2byte	0xf
	.byte	0x83
	.sleb128 0
	.byte	0x23
	.uleb128 0x80000000
	.byte	0xc
	.4byte	0x8000005e
	.byte	0x2b
	.byte	0x9f
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0xf
	.byte	0x83
	.sleb128 47
	.byte	0x23
	.uleb128 0x80000000
	.byte	0xc
	.4byte	0x8000005e
	.byte	0x2b
	.byte	0x9f
	.4byte	.LVL301-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0xf
	.byte	0x83
	.sleb128 0
	.byte	0x23
	.uleb128 0x80000000
	.byte	0xc
	.4byte	0x8000005e
	.byte	0x2b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI89-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI89-.Ltext0
	.4byte	.LCFI90-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI90-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL302-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI91-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI91-.Ltext0
	.4byte	.LCFI92-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI92-.Ltext0
	.4byte	.LCFI93-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI93-.Ltext0
	.4byte	.LCFI94-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI94-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL308-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL312-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LFB74-.Ltext0
	.4byte	.LCFI95-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI95-.Ltext0
	.4byte	.LCFI96-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI96-.Ltext0
	.4byte	.LCFI97-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI97-.Ltext0
	.4byte	.LCFI98-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI98-.Ltext0
	.4byte	.LFE74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL315-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL317-.Ltext0
	.4byte	.LVL319-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LFB75-.Ltext0
	.4byte	.LCFI99-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI99-.Ltext0
	.4byte	.LCFI100-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI100-.Ltext0
	.4byte	.LCFI101-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI101-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL326-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL323-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 0
	.4byte	.LVL323-1-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL331-.Ltext0
	.4byte	.LFE75-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LFB77-.Ltext0
	.4byte	.LCFI102-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI102-.Ltext0
	.4byte	.LCFI103-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI103-.Ltext0
	.4byte	.LCFI104-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI104-.Ltext0
	.4byte	.LCFI105-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI105-.Ltext0
	.4byte	.LCFI106-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI106-.Ltext0
	.4byte	.LFE77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL334-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	fog_enabled+12
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
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF592:
	.string	"sh_debuginfo"
.LASF549:
	.string	"r_viewleaf"
.LASF63:
	.string	"pflags"
.LASF447:
	.string	"R_DrawSpriteModel"
.LASF379:
	.string	"screenrect_s"
.LASF381:
	.string	"screenrect_t"
.LASF188:
	.string	"aliasvrectbottom"
.LASF635:
	.string	"r_Iviewport"
.LASF306:
	.string	"vecs"
.LASF211:
	.string	"upmove"
.LASF533:
	.string	"cl_visedicts"
.LASF280:
	.string	"texture_s"
.LASF303:
	.string	"texture_t"
.LASF15:
	.string	"_Bool"
.LASF91:
	.string	"entity_s"
.LASF182:
	.string	"entity_t"
.LASF416:
	.string	"lastlight"
.LASF442:
	.string	"pspritegroup"
.LASF137:
	.string	"numplanes"
.LASF450:
	.string	"v_right"
.LASF107:
	.string	"frame_start_time"
.LASF653:
	.string	"shadevector"
.LASF345:
	.string	"mtriangle_s"
.LASF348:
	.string	"mtriangle_t"
.LASF102:
	.string	"lightTimestamp"
.LASF332:
	.string	"frameptr"
.LASF364:
	.string	"binormals"
.LASF633:
	.string	"r_Dproject_matrix"
.LASF288:
	.string	"alternate_anims"
.LASF267:
	.string	"lightnormalindex"
.LASF563:
	.string	"r_norefresh"
.LASF511:
	.string	"cl_oldvisedicts"
.LASF200:
	.string	"horizontalFieldOfView"
.LASF302:
	.string	"samples"
.LASF232:
	.string	"idealpitch"
.LASF173:
	.string	"lastshadowonly"
.LASF320:
	.string	"lastclipnode"
.LASF79:
	.string	"entnext"
.LASF106:
	.string	"topnode"
.LASF274:
	.string	"mvertex_t"
.LASF566:
	.string	"r_fullbright"
.LASF329:
	.string	"intervals"
.LASF71:
	.string	"next"
.LASF347:
	.string	"vertindex"
.LASF375:
	.string	"plane_t"
.LASF176:
	.string	"vertices"
.LASF120:
	.string	"angles1"
.LASF121:
	.string	"angles2"
.LASF185:
	.string	"vrectright"
.LASF252:
	.string	"maxclients"
.LASF270:
	.string	"SPR_SINGLE"
.LASF405:
	.string	"cubescale"
.LASF29:
	.string	"height"
.LASF401:
	.string	"owner"
.LASF299:
	.string	"styles"
.LASF490:
	.string	"ExtractFrustum"
.LASF362:
	.string	"commands"
.LASF535:
	.string	"cl_lightvisedicts"
.LASF113:
	.string	"brushlightinstant"
.LASF570:
	.string	"r_dynamic"
.LASF237:
	.string	"viewheight"
.LASF390:
	.string	"visible"
.LASF123:
	.string	"model_s"
.LASF308:
	.string	"texture"
.LASF599:
	.string	"sh_bumpmaps"
.LASF155:
	.string	"hulls"
.LASF85:
	.string	"compressed_vis"
.LASF649:
	.string	"realtime"
.LASF400:
	.string	"numVisSurf"
.LASF331:
	.string	"mspritegroup_t"
.LASF148:
	.string	"numsurfaces"
.LASF253:
	.string	"gametype"
.LASF576:
	.string	"gl_polyblend"
.LASF508:
	.string	"olddrawents"
.LASF524:
	.string	"viewcont"
.LASF525:
	.string	"nudge"
.LASF501:
	.string	"R_ClearMirrorChains"
.LASF624:
	.string	"fog_color"
.LASF52:
	.string	"vec_t"
.LASF134:
	.string	"nummodelsurfaces"
.LASF617:
	.string	"gl_wireframe"
.LASF180:
	.string	"triplanes"
.LASF662:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_rmain.c"
.LASF541:
	.string	"modelorg"
.LASF250:
	.string	"levelname"
.LASF199:
	.string	"fvrectbottom"
.LASF491:
	.string	"proj"
.LASF309:
	.string	"mtexinfo_t"
.LASF184:
	.string	"aliasvrect"
.LASF13:
	.string	"byte"
.LASF387:
	.string	"shadowlight_s"
.LASF408:
	.string	"shadowlight_t"
.LASF554:
	.string	"cnttextures"
.LASF628:
	.string	"mirror_plane"
.LASF311:
	.string	"chain"
.LASF89:
	.string	"index"
.LASF92:
	.string	"forcelink"
.LASF471:
	.string	"colorscale"
.LASF54:
	.string	"angles"
.LASF353:
	.string	"boundingradius"
.LASF467:
	.string	"R_DrawEntitiesOnList"
.LASF90:
	.string	"ambient_sound_level"
.LASF149:
	.string	"surfaces"
.LASF127:
	.string	"synctype"
.LASF112:
	.string	"aliasframeinstant"
.LASF610:
	.string	"gl_truform_tesselation"
.LASF236:
	.string	"laststop"
.LASF141:
	.string	"vertexes"
.LASF434:
	.string	"R_RotateForEntity"
.LASF596:
	.string	"sh_infinitevolumes"
.LASF212:
	.string	"usercmd_t"
.LASF116:
	.string	"translate_start_time"
.LASF413:
	.string	"lastvorg"
.LASF505:
	.string	"oindex"
.LASF193:
	.string	"fvrecty_adj"
.LASF485:
	.string	"pentaGlFrustum"
.LASF594:
	.string	"sh_nosvbsp"
.LASF47:
	.string	"viddef_t"
.LASF493:
	.string	"clip"
.LASF325:
	.string	"down"
.LASF441:
	.string	"psprite"
.LASF62:
	.string	"light_lev"
.LASF17:
	.string	"maxs"
.LASF36:
	.string	"rowbytes"
.LASF125:
	.string	"type"
.LASF520:
	.string	"R_RenderView"
.LASF369:
	.string	"aliashdr_t"
.LASF337:
	.string	"cachespot"
.LASF145:
	.string	"nodes"
.LASF282:
	.string	"gl_lumitex"
.LASF78:
	.string	"entity"
.LASF192:
	.string	"fvrectx_adj"
.LASF334:
	.string	"maxwidth"
.LASF489:
	.string	"ymax"
.LASF558:
	.string	"particletexture_glow2"
.LASF500:
	.string	"R_NewMirrorChains"
.LASF231:
	.string	"punchangle"
.LASF454:
	.string	"R_CalcAliasFrameShadowVolume"
.LASF526:
	.string	"r_refdef"
.LASF290:
	.string	"msurface_s"
.LASF316:
	.string	"msurface_t"
.LASF100:
	.string	"syncbase"
.LASF27:
	.string	"pixel_t"
.LASF453:
	.string	"temp"
.LASF187:
	.string	"aliasvrectright"
.LASF208:
	.string	"refdef_t"
.LASF251:
	.string	"viewentity"
.LASF620:
	.string	"fog_b"
.LASF196:
	.string	"fvrectright_adj"
.LASF406:
	.string	"haloalpha"
.LASF35:
	.string	"fullbright"
.LASF626:
	.string	"mirror"
.LASF492:
	.string	"modl"
.LASF651:
	.string	"r_base_world_matrix"
.LASF163:
	.string	"firstsurface"
.LASF392:
	.string	"castShadow"
.LASF517:
	.string	"R_DisableMirrorShader"
.LASF645:
	.string	"causticschain"
.LASF443:
	.string	"pspriteframe"
.LASF162:
	.string	"plane"
.LASF167:
	.string	"updateframe"
.LASF109:
	.string	"blend"
.LASF480:
	.string	"R_SetupFrame"
.LASF481:
	.string	"cotan"
.LASF220:
	.string	"cshift_t"
.LASF1:
	.string	"unsigned char"
.LASF197:
	.string	"fvrectbottom_adj"
.LASF581:
	.string	"gl_playermip"
.LASF452:
	.string	"fixed_origin"
.LASF552:
	.string	"envmap"
.LASF171:
	.string	"lastblend"
.LASF402:
	.string	"scizz"
.LASF423:
	.string	"aliaslightinstant_t"
.LASF507:
	.string	"R_Mirror"
.LASF10:
	.string	"float"
.LASF57:
	.string	"skin"
.LASF572:
	.string	"gl_clear"
.LASF421:
	.string	"tshalfangles"
.LASF639:
	.string	"currentshadowlight"
.LASF22:
	.string	"numfaces"
.LASF294:
	.string	"light_s"
.LASF295:
	.string	"light_t"
.LASF374:
	.string	"modtype_t"
.LASF366:
	.string	"indecies"
.LASF225:
	.string	"faceanimtime"
.LASF110:
	.string	"pose1"
.LASF111:
	.string	"pose2"
.LASF556:
	.string	"particletexture_smoke"
.LASF397:
	.string	"volumeVerts"
.LASF169:
	.string	"lastpose1"
.LASF170:
	.string	"lastpose2"
.LASF555:
	.string	"particletexture"
.LASF223:
	.string	"items"
.LASF462:
	.string	"texcoos"
.LASF530:
	.string	"r_cache_thrash"
.LASF394:
	.string	"entvis"
.LASF322:
	.string	"clip_maxs"
.LASF300:
	.string	"cached_light"
.LASF310:
	.string	"glpoly_s"
.LASF315:
	.string	"glpoly_t"
.LASF338:
	.string	"msprite_t"
.LASF20:
	.string	"visleafs"
.LASF571:
	.string	"r_novis"
.LASF246:
	.string	"oldtime"
.LASF130:
	.string	"clipbox"
.LASF380:
	.string	"coords"
.LASF81:
	.string	"contents"
.LASF255:
	.string	"free_efrags"
.LASF498:
	.string	"gxgl_glGetDoublev"
.LASF529:
	.string	"r_notexture_mip"
.LASF642:
	.string	"mirrorplanes"
.LASF523:
	.string	"oldfogen"
.LASF614:
	.string	"mir_frameskip"
.LASF564:
	.string	"r_drawentities"
.LASF557:
	.string	"particletexture_glow"
.LASF99:
	.string	"efrag"
.LASF368:
	.string	"texels"
.LASF174:
	.string	"lastpaliashdr"
.LASF335:
	.string	"maxheight"
.LASF359:
	.string	"size"
.LASF551:
	.string	"d_lightstylevalue"
.LASF488:
	.string	"ymin"
.LASF327:
	.string	"right"
.LASF598:
	.string	"sh_nocleversave"
.LASF205:
	.string	"fov_x"
.LASF206:
	.string	"fov_y"
.LASF55:
	.string	"modelindex"
.LASF495:
	.string	"screenaspect"
.LASF647:
	.string	"busy_caustics"
.LASF117:
	.string	"origin1"
.LASF367:
	.string	"gl_lumatex"
.LASF164:
	.string	"aliasframeinstant_s"
.LASF286:
	.string	"anim_max"
.LASF436:
	.string	"R_CullBox"
.LASF515:
	.string	"R_RenderMirrors"
.LASF425:
	.string	"mirrorplane_s"
.LASF428:
	.string	"mirrorplane_t"
.LASF254:
	.string	"worldmodel"
.LASF411:
	.string	"lastlorg"
.LASF37:
	.string	"aspect"
.LASF607:
	.string	"fog_waterfog"
.LASF503:
	.string	"surf"
.LASF344:
	.string	"maliasframedesc_t"
.LASF143:
	.string	"edges"
.LASF168:
	.string	"paliashdr"
.LASF377:
	.string	"GLfloat"
.LASF606:
	.string	"sh_noshadowpopping"
.LASF537:
	.string	"v_blend"
.LASF93:
	.string	"update_type"
.LASF543:
	.string	"r_visframecount"
.LASF352:
	.string	"scale_origin"
.LASF103:
	.string	"dlightframe"
.LASF473:
	.string	"R_DrawLightSprites"
.LASF189:
	.string	"vrectrightedge"
.LASF534:
	.string	"cl_numlightvisedicts"
.LASF591:
	.string	"sh_fps"
.LASF289:
	.string	"offsets"
.LASF21:
	.string	"firstface"
.LASF118:
	.string	"origin2"
.LASF240:
	.string	"onground"
.LASF536:
	.string	"v_gamma"
.LASF422:
	.string	"triangleVis"
.LASF634:
	.string	"r_Dworld_matrix"
.LASF585:
	.string	"sh_radiusscale"
.LASF172:
	.string	"lastent"
.LASF108:
	.string	"frame_interval"
.LASF234:
	.string	"nodrift"
.LASF623:
	.string	"fog_enabled"
.LASF499:
	.string	"R_InitMirrorChains"
.LASF228:
	.string	"mviewangles"
.LASF457:
	.string	"tris"
.LASF39:
	.string	"recalc_refdef"
.LASF586:
	.string	"sh_visiblevolumes"
.LASF513:
	.string	"oorg"
.LASF154:
	.string	"marksurfaces"
.LASF266:
	.string	"synctype_t"
.LASF518:
	.string	"R_DrawMirrorSurfaces"
.LASF124:
	.string	"needload"
.LASF391:
	.string	"isStatic"
.LASF330:
	.string	"frames"
.LASF298:
	.string	"lightmaptexturenum"
.LASF616:
	.string	"mir_distance"
.LASF395:
	.string	"visSurf"
.LASF70:
	.string	"value"
.LASF283:
	.string	"texturechain"
.LASF539:
	.string	"gldepthmax"
.LASF105:
	.string	"trivial_accept"
.LASF532:
	.string	"cl_numvisedicts"
.LASF165:
	.string	"_next"
.LASF426:
	.string	"texture_object"
.LASF561:
	.string	"particletexture_dirblood"
.LASF346:
	.string	"facesfront"
.LASF326:
	.string	"left"
.LASF496:
	.string	"glwidth"
.LASF297:
	.string	"shadowchain"
.LASF595:
	.string	"sh_noeclip"
.LASF519:
	.string	"R_Clear"
.LASF583:
	.string	"gl_calcdepth"
.LASF319:
	.string	"firstclipnode"
.LASF584:
	.string	"sh_lightmapbright"
.LASF593:
	.string	"sh_norevis"
.LASF292:
	.string	"texturemins"
.LASF514:
	.string	"drawplayer"
.LASF460:
	.string	"R_DrawAliasTangent"
.LASF613:
	.string	"mir_detail"
.LASF464:
	.string	"R_DrawAmbientAlias"
.LASF101:
	.string	"skinnum"
.LASF582:
	.string	"gl_watershader"
.LASF477:
	.string	"R_AdjustGamma"
.LASF448:
	.string	"point"
.LASF198:
	.string	"fvrectright"
.LASF597:
	.string	"sh_noscissor"
.LASF565:
	.string	"r_drawviewmodel"
.LASF659:
	.string	"extrudedVerts"
.LASF285:
	.string	"anim_min"
.LASF577:
	.string	"gl_reporttjunctions"
.LASF139:
	.string	"leafs"
.LASF521:
	.string	"time1"
.LASF469:
	.string	"angle"
.LASF248:
	.string	"model_precache"
.LASF257:
	.string	"num_statics"
.LASF19:
	.string	"headnode"
.LASF627:
	.string	"glare"
.LASF131:
	.string	"clipmins"
.LASF611:
	.string	"gl_transformlerp"
.LASF239:
	.string	"paused"
.LASF363:
	.string	"triangles"
.LASF474:
	.string	"R_DrawFullbrightSprites"
.LASF14:
	.string	"qboolean"
.LASF207:
	.string	"ambientlight"
.LASF479:
	.string	"R_SetFrustum"
.LASF66:
	.string	"name"
.LASF343:
	.string	"bboxmax"
.LASF463:
	.string	"extr"
.LASF494:
	.string	"R_SetupGL"
.LASF475:
	.string	"R_DrawViewModelLight"
.LASF648:
	.string	"wgPipe"
.LASF80:
	.string	"mleaf_s"
.LASF318:
	.string	"mleaf_t"
.LASF484:
	.string	"zNear"
.LASF589:
	.string	"sh_showlightnum"
.LASF97:
	.string	"msg_angles"
.LASF396:
	.string	"volumeCmds"
.LASF221:
	.string	"movemessages"
.LASF238:
	.string	"crouch"
.LASF509:
	.string	"ofovx"
.LASF510:
	.string	"ofovy"
.LASF261:
	.string	"scores"
.LASF152:
	.string	"numclipnodes"
.LASF625:
	.string	"mirrortexturenum"
.LASF560:
	.string	"particletexture_blood"
.LASF540:
	.string	"r_worldentity"
.LASF201:
	.string	"xOrigin"
.LASF636:
	.string	"color_black"
.LASF415:
	.string	"lasthdr"
.LASF605:
	.string	"sh_showtangent"
.LASF48:
	.string	"vrect_s"
.LASF31:
	.string	"vrect_t"
.LASF621:
	.string	"fog_start"
.LASF3:
	.string	"short unsigned int"
.LASF249:
	.string	"sound_precache"
.LASF0:
	.string	"signed char"
.LASF210:
	.string	"sidemove"
.LASF135:
	.string	"numsubmodels"
.LASF420:
	.string	"tslights"
.LASF468:
	.string	"R_MarkEntitiesOnList"
.LASF275:
	.string	"mplane_s"
.LASF279:
	.string	"mplane_t"
.LASF573:
	.string	"gl_cull"
.LASF277:
	.string	"dist"
.LASF643:
	.string	"mirror_contents"
.LASF179:
	.string	"binomials"
.LASF538:
	.string	"gldepthmin"
.LASF40:
	.string	"conbuffer"
.LASF150:
	.string	"numsurfedges"
.LASF542:
	.string	"r_entorigin"
.LASF53:
	.string	"vec3_t"
.LASF365:
	.string	"texcoords"
.LASF219:
	.string	"percent"
.LASF156:
	.string	"numtextures"
.LASF77:
	.string	"leafnext"
.LASF87:
	.string	"firstmarksurface"
.LASF615:
	.string	"mir_forcewater"
.LASF24:
	.string	"planenum"
.LASF438:
	.string	"cont"
.LASF243:
	.string	"completed_time"
.LASF301:
	.string	"cached_dlight"
.LASF458:
	.string	"triangle"
.LASF580:
	.string	"gl_doubleeyes"
.LASF222:
	.string	"stats"
.LASF370:
	.string	"mod_brush"
.LASF431:
	.string	"WGPipe"
.LASF349:
	.string	"ident"
.LASF354:
	.string	"eyeposition"
.LASF291:
	.string	"firstedge"
.LASF506:
	.string	"tempnormal"
.LASF160:
	.string	"entities"
.LASF427:
	.string	"matrix"
.LASF46:
	.string	"direct"
.LASF235:
	.string	"driftmove"
.LASF386:
	.string	"lightcmd_t"
.LASF429:
	.string	"lightcmd_u"
.LASF95:
	.string	"msgtime"
.LASF393:
	.string	"halo"
.LASF412:
	.string	"lasteangles"
.LASF567:
	.string	"r_lightmap"
.LASF324:
	.string	"mspriteframe_s"
.LASF328:
	.string	"mspriteframe_t"
.LASF382:
	.string	"asInt"
.LASF644:
	.string	"newenvmap"
.LASF432:
	.string	"bits"
.LASF245:
	.string	"time"
.LASF548:
	.string	"c_alias_polys"
.LASF144:
	.string	"numnodes"
.LASF12:
	.string	"long int"
.LASF204:
	.string	"viewangles"
.LASF157:
	.string	"textures"
.LASF64:
	.string	"entity_state_t"
.LASF247:
	.string	"last_received_message"
.LASF569:
	.string	"r_wateralpha"
.LASF439:
	.string	"R_GetSpriteFrame"
.LASF504:
	.string	"oldest"
.LASF342:
	.string	"bboxmin"
.LASF579:
	.string	"gl_nocolors"
.LASF209:
	.string	"forwardmove"
.LASF417:
	.string	"lightpos"
.LASF88:
	.string	"nummarksurfaces"
.LASF229:
	.string	"mvelocity"
.LASF341:
	.string	"interval"
.LASF550:
	.string	"r_oldviewleaf"
.LASF449:
	.string	"v_forward"
.LASF403:
	.string	"filtercube"
.LASF83:
	.string	"minmaxs"
.LASF11:
	.string	"long double"
.LASF230:
	.string	"velocity"
.LASF256:
	.string	"num_entities"
.LASF126:
	.string	"numframes"
.LASF273:
	.string	"position"
.LASF183:
	.string	"vrect"
.LASF547:
	.string	"c_brush_polys"
.LASF7:
	.string	"long unsigned int"
.LASF259:
	.string	"cdtrack"
.LASF407:
	.string	"oldlightorigin"
.LASF178:
	.string	"tangents"
.LASF65:
	.string	"cvar_s"
.LASF72:
	.string	"cvar_t"
.LASF430:
	.string	"_wgpipe"
.LASF632:
	.string	"r_projection_matrix"
.LASF304:
	.string	"cachededgeoffset"
.LASF8:
	.string	"char"
.LASF502:
	.string	"R_AllocateMirror"
.LASF470:
	.string	"R_DrawEntitiesShadowVolumes"
.LASF140:
	.string	"numvertexes"
.LASF371:
	.string	"mod_sprite"
.LASF641:
	.string	"numClearsSaved"
.LASF194:
	.string	"vrect_x_adj_shift20"
.LASF388:
	.string	"baseColor"
.LASF340:
	.string	"numposes"
.LASF590:
	.string	"sh_glows"
.LASF336:
	.string	"beamlength"
.LASF293:
	.string	"extents"
.LASF631:
	.string	"r_world_matrix"
.LASF175:
	.string	"shadowonly"
.LASF59:
	.string	"color"
.LASF314:
	.string	"firstvertex"
.LASF104:
	.string	"dlightbits"
.LASF527:
	.string	"r_origin"
.LASF531:
	.string	"cl_entities"
.LASF478:
	.string	"R_PolyBlend"
.LASF384:
	.string	"asVec"
.LASF73:
	.string	"sfx_s"
.LASF528:
	.string	"vright"
.LASF358:
	.string	"numtris"
.LASF487:
	.string	"xmax"
.LASF177:
	.string	"normals"
.LASF356:
	.string	"skinwidth"
.LASF49:
	.string	"cache_user_s"
.LASF51:
	.string	"cache_user_t"
.LASF545:
	.string	"r_lightTimestamp"
.LASF655:
	.string	"r_avertexnormal_dots"
.LASF166:
	.string	"lockframe"
.LASF32:
	.string	"buffer"
.LASF68:
	.string	"archive"
.LASF483:
	.string	"aspectr"
.LASF241:
	.string	"inwater"
.LASF600:
	.string	"sh_colormaps"
.LASF158:
	.string	"visdata"
.LASF522:
	.string	"time2"
.LASF445:
	.string	"fullinterval"
.LASF271:
	.string	"SPR_GROUP"
.LASF76:
	.string	"leaf"
.LASF360:
	.string	"poseverts"
.LASF44:
	.string	"maxwarpwidth"
.LASF284:
	.string	"anim_total"
.LASF451:
	.string	"v_up"
.LASF650:
	.string	"chase_active"
.LASF260:
	.string	"looptrack"
.LASF389:
	.string	"brightness"
.LASF608:
	.string	"gl_caustics"
.LASF357:
	.string	"skinheight"
.LASF609:
	.string	"gl_truform"
.LASF262:
	.string	"server_proto_version"
.LASF376:
	.string	"GLint"
.LASF216:
	.string	"translations"
.LASF202:
	.string	"yOrigin"
.LASF242:
	.string	"intermission"
.LASF195:
	.string	"vrectright_adj_shift20"
.LASF86:
	.string	"efrags"
.LASF75:
	.string	"efrag_s"
.LASF122:
	.string	"efrag_t"
.LASF603:
	.string	"sh_glares"
.LASF30:
	.string	"pnext"
.LASF25:
	.string	"children"
.LASF61:
	.string	"style"
.LASF575:
	.string	"gl_affinemodels"
.LASF9:
	.string	"double"
.LASF264:
	.string	"ST_SYNC"
.LASF404:
	.string	"rspeed"
.LASF146:
	.string	"numtexinfo"
.LASF433:
	.string	"R_UnlerpedRotateForEntity"
.LASF38:
	.string	"numpages"
.LASF218:
	.string	"destcolor"
.LASF399:
	.string	"lightCmds"
.LASF142:
	.string	"numedges"
.LASF181:
	.string	"lightinstant"
.LASF574:
	.string	"gl_smoothmodels"
.LASF546:
	.string	"frustum"
.LASF233:
	.string	"pitchvel"
.LASF640:
	.string	"frustumPlanes"
.LASF281:
	.string	"gl_texturenum"
.LASF654:
	.string	"shadelight"
.LASF622:
	.string	"fog_end"
.LASF351:
	.string	"scale"
.LASF305:
	.string	"medge_t"
.LASF587:
	.string	"sh_entityshadows"
.LASF159:
	.string	"lightdata"
.LASF186:
	.string	"vrectbottom"
.LASF45:
	.string	"maxwarpheight"
.LASF33:
	.string	"colormap"
.LASF50:
	.string	"data"
.LASF383:
	.string	"asFloat"
.LASF34:
	.string	"colormap16"
.LASF272:
	.string	"spriteframetype_t"
.LASF656:
	.string	"shadedots"
.LASF258:
	.string	"viewent"
.LASF466:
	.string	"R_DrawAmbientEntities"
.LASF82:
	.string	"visframe"
.LASF287:
	.string	"anim_next"
.LASF42:
	.string	"conwidth"
.LASF215:
	.string	"colors"
.LASF313:
	.string	"neighbours"
.LASF190:
	.string	"fvrectx"
.LASF191:
	.string	"fvrecty"
.LASF138:
	.string	"planes"
.LASF28:
	.string	"width"
.LASF664:
	.string	"R_ShouldDrawViewModel"
.LASF16:
	.string	"mins"
.LASF276:
	.string	"normal"
.LASF440:
	.string	"currententity"
.LASF588:
	.string	"sh_worldshadows"
.LASF96:
	.string	"msg_origins"
.LASF553:
	.string	"currenttexture"
.LASF203:
	.string	"vieworg"
.LASF224:
	.string	"item_gettime"
.LASF663:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF339:
	.string	"firstpose"
.LASF638:
	.string	"gl_twosidedstencil"
.LASF26:
	.string	"dclipnode_t"
.LASF278:
	.string	"signbits"
.LASF6:
	.string	"long long unsigned int"
.LASF84:
	.string	"parent"
.LASF637:
	.string	"r_avertexnormals"
.LASF437:
	.string	"CL_PointContents"
.LASF646:
	.string	"caustics_textures"
.LASF419:
	.string	"extvertices"
.LASF459:
	.string	"R_DrawAliasSurfaceShadowVolume"
.LASF486:
	.string	"xmin"
.LASF226:
	.string	"cshifts"
.LASF307:
	.string	"mipadjust"
.LASF630:
	.string	"mirror_clipside"
.LASF601:
	.string	"sh_playershadow"
.LASF559:
	.string	"particletexture_tele"
.LASF652:
	.string	"gl_finish"
.LASF424:
	.string	"aliasframeinstant_t"
.LASF444:
	.string	"pintervals"
.LASF465:
	.string	"SignbitsForPlane"
.LASF132:
	.string	"clipmaxs"
.LASF355:
	.string	"numskins"
.LASF58:
	.string	"effects"
.LASF398:
	.string	"numVolumeVerts"
.LASF213:
	.string	"entertime"
.LASF323:
	.string	"hull_t"
.LASF385:
	.string	"asVoid"
.LASF114:
	.string	"numleafs"
.LASF619:
	.string	"fog_g"
.LASF214:
	.string	"frags"
.LASF568:
	.string	"r_shadows"
.LASF98:
	.string	"model"
.LASF618:
	.string	"fog_r"
.LASF60:
	.string	"alpha"
.LASF312:
	.string	"numverts"
.LASF333:
	.string	"mspriteframedesc_t"
.LASF321:
	.string	"clip_mins"
.LASF41:
	.string	"conrowbytes"
.LASF5:
	.string	"long long int"
.LASF268:
	.string	"trivertx_t"
.LASF604:
	.string	"sh_noefrags"
.LASF67:
	.string	"string"
.LASF414:
	.string	"lastlradius"
.LASF244:
	.string	"mtime"
.LASF418:
	.string	"lastframeinstant"
.LASF372:
	.string	"mod_alias"
.LASF94:
	.string	"baseline"
.LASF482:
	.string	"pentaGlPerspective"
.LASF446:
	.string	"targettime"
.LASF497:
	.string	"glheight"
.LASF456:
	.string	"verts"
.LASF373:
	.string	"mod_alias3"
.LASF147:
	.string	"texinfo"
.LASF578:
	.string	"gl_flashblend"
.LASF153:
	.string	"clipnodes"
.LASF43:
	.string	"conheight"
.LASF476:
	.string	"R_DrawViewModel"
.LASF115:
	.string	"leafnums"
.LASF296:
	.string	"polys"
.LASF23:
	.string	"dmodel_t"
.LASF133:
	.string	"firstmodelsurface"
.LASF461:
	.string	"instant"
.LASF263:
	.string	"client_state_t"
.LASF136:
	.string	"submodels"
.LASF18:
	.string	"origin"
.LASF269:
	.string	"ftrivertx_t"
.LASF658:
	.string	"extrudeTimeStamp"
.LASF378:
	.string	"GLdouble"
.LASF74:
	.string	"cache"
.LASF435:
	.string	"timepassed"
.LASF661:
	.string	"GNU C 4.6.3"
.LASF350:
	.string	"version"
.LASF151:
	.string	"surfedges"
.LASF265:
	.string	"ST_RAND"
.LASF4:
	.string	"unsigned int"
.LASF161:
	.string	"mnode_s"
.LASF317:
	.string	"mnode_t"
.LASF602:
	.string	"sh_nocache"
.LASF472:
	.string	"R_DrawAliasShadowVolume"
.LASF227:
	.string	"prev_cshifts"
.LASF657:
	.string	"lastposenum"
.LASF2:
	.string	"short int"
.LASF612:
	.string	"scr_fov"
.LASF562:
	.string	"playertextures"
.LASF69:
	.string	"server"
.LASF56:
	.string	"frame"
.LASF410:
	.string	"lasteorg"
.LASF544:
	.string	"r_framecount"
.LASF516:
	.string	"R_SetupMirrorShader"
.LASF361:
	.string	"posedata"
.LASF455:
	.string	"posenum"
.LASF217:
	.string	"scoreboard_t"
.LASF128:
	.string	"flags"
.LASF119:
	.string	"rotate_start_time"
.LASF129:
	.string	"radius"
.LASF660:
	.string	"extrudedTimestamp"
.LASF409:
	.string	"aliaslightinstant_s"
.LASF512:
	.string	"oang"
.LASF629:
	.string	"mirror_far_plane"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
