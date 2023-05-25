	.file	"gl_aliasinstant.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl AINST_InitMem
	.type	AINST_InitMem, @function
AINST_InitMem:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_aliasinstant.c"
	.loc 1 70 0
	.cfi_startproc
	mflr 0
	stwu 1,-24(1)
.LCFI0:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 29,12(1)
	.loc 1 76 0
	lis 29,.LC1@ha
	.cfi_offset 29, -12
	.loc 1 70 0
	stw 0,28(1)
	.loc 1 76 0
	la 29,.LC1@l(29)
	.loc 1 70 0
	stw 30,16(1)
	stw 31,20(1)
	.loc 1 72 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl SYS_GetArena2Lo
	bl align32
	mr 31,3
.LVL0:
	.loc 1 73 0
	lis 3,.LC0@ha
.LVL1:
	.loc 1 75 0
	addis 30,31,0x30
	.loc 1 73 0
	mr 4,31
	.loc 1 75 0
	addi 30,30,1152
	.loc 1 73 0
	la 3,.LC0@l(3)
	crxor 6,6,6
	bl Sys_Printf
.LVL2:
	.loc 1 74 0
	lis 9,InstantCache@ha
	.loc 1 76 0
	mr 4,30
	mr 3,29
	.loc 1 74 0
	stw 31,InstantCache@l(9)
	.loc 1 76 0
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 78 0
	mr 3,30
	bl align32
	mr 31,3
.LVL3:
	.loc 1 79 0
	lis 3,.LC2@ha
.LVL4:
	.loc 1 81 0
	addis 30,31,0x2e
	.loc 1 79 0
	mr 4,31
	.loc 1 81 0
	addi 30,30,-13984
	.loc 1 79 0
	la 3,.LC2@l(3)
	crxor 6,6,6
	bl Sys_Printf
.LVL5:
	.loc 1 82 0
	mr 4,30
	.loc 1 80 0
	lis 9,LightInstantCache@ha
	.loc 1 82 0
	mr 3,29
	.loc 1 80 0
	stw 31,LightInstantCache@l(9)
	.loc 1 82 0
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 84 0
	mr 3,30
	bl align32
.LVL6:
	.loc 1 85 0
	crxor 6,6,6
	bl SYS_SetArena2Lo
	.loc 1 87 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE38:
	.size	AINST_InitMem, .-AINST_InitMem
	.align 2
	.globl R_AllocateInstant
	.type	R_AllocateInstant, @function
R_AllocateInstant:
.LFB39:
	.loc 1 93 0
	.cfi_startproc
.LVL7:
	.loc 1 98 0
	cmpwi 0,4,0
	beq- 0,.L3
	.loc 1 99 0
	lwz 0,12(4)
	cmpw 7,0,5
	beq- 7,.L10
.L3:
	.loc 1 105 0
	lis 9,InstantCache@ha
	.loc 1 107 0
	li 0,24
	.loc 1 105 0
	lwz 7,InstantCache@l(9)
	.loc 1 107 0
	mtctr 0
	.loc 1 105 0
	lis 9,r_framecount@ha
	.loc 1 106 0
	li 8,-1
	.loc 1 105 0
	lwz 10,r_framecount@l(9)
.LVL8:
	.loc 1 107 0
	li 11,0
	.loc 1 105 0
	mr 9,7
.LVL9:
.L6:
	.loc 1 108 0
	lwz 0,4(9)
	.loc 1 107 0
	addis 9,9,0x2
	addi 9,9,48
	.loc 1 108 0
	cmpw 7,0,10
	bge- 7,.L5
	mr 8,11
	mr 10,0
.LVL10:
.L5:
	.loc 1 107 0
	addi 11,11,1
.LVL11:
	bdnz .L6
	.loc 1 114 0
	cmpwi 7,8,-1
	.loc 1 116 0
	li 4,0
.LVL12:
	.loc 1 114 0
	beq- 7,.L4
	.loc 1 119 0
	slwi 4,8,2
	slwi 0,8,13
	add 4,4,0
	subf 4,8,4
	slwi 4,4,4
	add 4,7,4
.LVL13:
.L4:
	.loc 1 120 0
	mr 3,4
.LVL14:
	blr
.LVL15:
.L10:
	.loc 1 100 0
	lwz 0,28(4)
	cmpw 7,0,3
	bne+ 7,.L3
	b .L4
	.cfi_endproc
.LFE39:
	.size	R_AllocateInstant, .-R_AllocateInstant
	.align 2
	.globl R_AllocateLightInstant
	.type	R_AllocateLightInstant, @function
R_AllocateLightInstant:
.LFB40:
	.loc 1 125 0
	.cfi_startproc
.LVL16:
	.loc 1 153 0
	lis 9,LightInstantCache@ha
	.loc 1 138 0
	lis 11,currentshadowlight@ha
	.loc 1 153 0
	lwz 9,LightInstantCache@l(9)
	.loc 1 125 0
	li 8,24
	.loc 1 138 0
	lwz 0,currentshadowlight@l(11)
	.loc 1 125 0
	mtctr 8
	mr 11,3
	.loc 1 138 0
	mr 5,9
	.loc 1 125 0
	mr 10,9
	b .L14
.LVL17:
.L12:
	.loc 1 138 0
	addi 10,7,-6044
	.loc 1 137 0
	bdz .L23
.L14:
	.loc 1 138 0
	lwz 8,56(10)
	addis 7,10,0x2
	mr 3,10
	cmpw 7,8,11
	bne+ 7,.L12
	.loc 1 138 0 is_stmt 0 discriminator 1
	lwz 8,64(10)
	cmpw 7,8,0
	bne+ 7,.L12
	lwz 10,60(10)
	cmpw 7,10,4
	beqlr- 7
	.loc 1 138 0
	addi 10,7,-6044
	.loc 1 137 0 is_stmt 1
	bdnz .L14
.L23:
	.loc 1 146 0
	li 8,24
	.loc 1 144 0
	lis 11,r_framecount@ha
.LVL18:
	.loc 1 146 0
	mtctr 8
	.loc 1 144 0
	lwz 7,r_framecount@l(11)
.LVL19:
	.loc 1 145 0
	li 6,-1
	.loc 1 144 0
	mr 11,9
.LVL20:
	.loc 1 146 0
	li 10,0
.LVL21:
.L16:
	.loc 1 147 0
	lwz 8,0(11)
	.loc 1 146 0
	addis 11,11,0x2
	addi 11,11,-6044
	.loc 1 147 0
	cmpw 7,8,7
	bge- 7,.L15
	mr 6,10
	mr 7,8
.LVL22:
.L15:
	.loc 1 146 0
	addi 10,10,1
.LVL23:
	bdnz .L16
	.loc 1 153 0
	cmpwi 7,6,-1
	beq- 7,.L24
.LVL24:
.L17:
	.loc 1 161 0
	lis 3,0x1
	li 0,0
	ori 3,3,59492
	mullw 6,6,3
	add 3,9,6
	stw 0,56(3)
	.loc 1 162 0
	stw 0,92(3)
	.loc 1 163 0
	stw 0,64(3)
	.loc 1 166 0
	blr
.LVL25:
.L24:
	.loc 1 156 0
	lwz 10,64(5)
.LVL26:
	.loc 1 153 0
	li 11,24
	mtctr 11
	.loc 1 156 0
	addis 11,5,0x2
	cmpw 7,0,10
	mr 3,5
	addi 5,11,-6044
	bnelr- 7
.L25:
	.loc 1 155 0
	bdz .L17
	.loc 1 156 0
	lwz 10,64(5)
	addis 11,5,0x2
	mr 3,5
	addi 5,11,-6044
	cmpw 7,0,10
	beq+ 7,.L25
	blr
	.cfi_endproc
.LFE40:
	.size	R_AllocateLightInstant, .-R_AllocateLightInstant
	.align 2
	.globl R_ClearInstantCaches
	.type	R_ClearInstantCaches, @function
R_ClearInstantCaches:
.LFB41:
	.loc 1 171 0
	.cfi_startproc
.LVL27:
	.loc 1 175 0
	lis 9,InstantCache@ha
	.loc 1 176 0
	li 11,24
	.loc 1 175 0
	lwz 9,InstantCache@l(9)
	.loc 1 176 0
	mtctr 11
	li 0,0
.LVL28:
.L27:
	.loc 1 175 0 discriminator 2
	addis 11,9,0x2
	.loc 1 176 0 discriminator 2
	stw 0,4(9)
	.loc 1 177 0 discriminator 2
	stw 0,28(9)
	.loc 1 178 0 discriminator 2
	stw 0,12(9)
	.loc 1 175 0 discriminator 2
	addi 9,11,48
	bdnz .L27
	.loc 1 175 0 is_stmt 0
	lis 9,LightInstantCache@ha
	.loc 1 182 0 is_stmt 1
	li 11,24
	.loc 1 175 0
	lwz 9,LightInstantCache@l(9)
	.loc 1 182 0
	mtctr 11
	li 0,0
.L28:
	.loc 1 185 0 discriminator 2
	addis 11,9,0x2
	.loc 1 182 0 discriminator 2
	stw 0,0(9)
	.loc 1 183 0 discriminator 2
	stw 0,56(9)
	.loc 1 184 0 discriminator 2
	stw 0,64(9)
	.loc 1 185 0 discriminator 2
	stw 0,92(9)
	addi 9,11,-6044
	.loc 1 181 0 discriminator 2
	bdnz .L28
	.loc 1 187 0
	blr
	.cfi_endproc
.LFE41:
	.size	R_ClearInstantCaches, .-R_ClearInstantCaches
	.align 2
	.globl R_InterpolateVerts
	.type	R_InterpolateVerts, @function
R_InterpolateVerts:
.LFB43:
	.loc 1 233 0
	.cfi_startproc
.LVL29:
	.loc 1 242 0
	lwz 0,112(3)
	.loc 1 245 0
	lis 8,.LC3@ha
	.loc 1 239 0
	lwz 9,116(3)
	.loc 1 242 0
	mullw 5,0,5
.LVL30:
	.loc 1 247 0
	cmpwi 7,0,0
	.loc 1 245 0
	lfs 0,.LC3@l(8)
	.loc 1 239 0
	add 9,3,9
.LVL31:
	.loc 1 245 0
	fsubs 0,0,1
	.loc 1 243 0
	mullw 11,0,6
	.loc 1 242 0
	slwi 5,5,4
	add 5,9,5
.LVL32:
	.loc 1 243 0
	slwi 11,11,4
	add 9,9,11
.LVL33:
	.loc 1 247 0
	blelr- 7
	mtctr 0
	.loc 1 233 0
	addi 10,4,44
.LVL34:
.L33:
	.loc 1 249 0 discriminator 2
	lfs 11,0(9)
	.loc 1 250 0 discriminator 2
	lfs 12,4(9)
	.loc 1 251 0 discriminator 2
	lfs 13,8(9)
	.loc 1 249 0 discriminator 2
	fmuls 11,1,11
	.loc 1 250 0 discriminator 2
	fmuls 12,1,12
	.loc 1 249 0 discriminator 2
	lfs 8,0(5)
	.loc 1 251 0 discriminator 2
	fmuls 13,1,13
	.loc 1 250 0 discriminator 2
	lfs 9,4(5)
	.loc 1 251 0 discriminator 2
	lfs 10,8(5)
	.loc 1 249 0 discriminator 2
	fmadds 11,8,0,11
	.loc 1 250 0 discriminator 2
	fmadds 12,9,0,12
	.loc 1 247 0 discriminator 2
	addi 5,5,16
	.loc 1 251 0 discriminator 2
	fmadds 13,10,0,13
	.loc 1 247 0 discriminator 2
	addi 9,9,16
	.loc 1 249 0 discriminator 2
	stfs 11,0(10)
	.loc 1 250 0 discriminator 2
	stfs 12,4(10)
	.loc 1 251 0 discriminator 2
	stfs 13,8(10)
	.loc 1 247 0 discriminator 2
	addi 10,10,12
	bdnz .L33
	blr
	.cfi_endproc
.LFE43:
	.size	R_InterpolateVerts, .-R_InterpolateVerts
	.align 2
	.globl R_InterpolateNormals
	.type	R_InterpolateNormals, @function
R_InterpolateNormals:
.LFB44:
	.loc 1 258 0
	.cfi_startproc
.LVL35:
	mflr 0
	stwu 1,-168(1)
.LCFI2:
	.cfi_def_cfa_offset 168
	.cfi_register 65, 0
	stw 24,40(1)
	stw 0,172(1)
	stw 25,44(1)
	.loc 1 268 0
	lwz 0,112(3)
	.cfi_offset 25, -124
	.cfi_offset 65, 4
	.cfi_offset 24, -128
	.loc 1 265 0
	lwz 9,116(3)
	.loc 1 268 0
	mullw 5,0,5
.LVL36:
	.loc 1 273 0
	cmpwi 7,0,0
	.loc 1 265 0
	add 9,3,9
.LVL37:
	.loc 1 258 0
	stfd 28,136(1)
	stfd 29,144(1)
	fmr 29,1
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	stw 26,48(1)
	mr 26,4
	.cfi_offset 26, -120
	.loc 1 269 0
	mullw 0,0,6
	.loc 1 268 0
	slwi 5,5,4
	add 25,9,5
.LVL38:
	.loc 1 258 0
	stw 31,68(1)
	stfd 20,72(1)
	mr 31,3
	.cfi_offset 52, -96
	.cfi_offset 31, -100
	stfd 21,80(1)
	.loc 1 269 0
	slwi 24,0,4
	.loc 1 258 0
	stfd 22,88(1)
	.loc 1 269 0
	add 24,9,24
.LVL39:
	.loc 1 271 0
	lis 9,.LC3@ha
	lfs 28,.LC3@l(9)
	.loc 1 258 0
	stfd 23,96(1)
	stfd 24,104(1)
	.loc 1 271 0
	fsubs 28,28,1
.LVL40:
	.loc 1 258 0
	stfd 25,112(1)
	stfd 26,120(1)
	stfd 27,128(1)
	stfd 30,152(1)
	stfd 31,160(1)
	stw 27,52(1)
	stw 28,56(1)
	stw 29,60(1)
	stw 30,64(1)
	.loc 1 273 0
	ble- 7,.L35
	.cfi_offset 30, -104
	.cfi_offset 29, -108
	.cfi_offset 28, -112
	.cfi_offset 27, -116
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.cfi_offset 54, -80
	.cfi_offset 53, -88
	lis 9,.LC5@ha
	.loc 1 258 0
	addi 30,4,24620
	.loc 1 275 0
	lfs 30,.LC5@l(9)
	.loc 1 277 0
	lis 9,.LC6@ha
	lfs 31,.LC6@l(9)
	.loc 1 258 0
	li 27,0
	.loc 1 273 0
	li 28,0
	.loc 1 275 0
	lis 29,0x4330
.LVL41:
.L37:
	.loc 1 258 0 discriminator 2
	add 9,25,27
	.loc 1 275 0 discriminator 2
	lwz 0,12(9)
	stw 29,8(1)
	rlwinm 9,0,24,24,31
	.loc 1 276 0 discriminator 2
	rlwinm 0,0,0,24,31
	.loc 1 275 0 discriminator 2
	xoris 9,9,0x8000
	.loc 1 276 0 discriminator 2
	xoris 0,0,0x8000
	.loc 1 275 0 discriminator 2
	stw 9,12(1)
	.loc 1 276 0 discriminator 2
	stw 0,20(1)
	.loc 1 275 0 discriminator 2
	lfd 25,8(1)
	.loc 1 276 0 discriminator 2
	stw 29,16(1)
	.loc 1 275 0 discriminator 2
	fsub 25,25,30
	.loc 1 276 0 discriminator 2
	lfd 26,16(1)
	.loc 1 275 0 discriminator 2
	frsp 25,25
.LVL42:
	.loc 1 276 0 discriminator 2
	fsub 26,26,30
	.loc 1 277 0 discriminator 2
	fmuls 25,25,31
.LVL43:
	.loc 1 276 0 discriminator 2
	frsp 26,26
.LVL44:
	.loc 1 280 0 discriminator 2
	fmr 1,25
	.loc 1 278 0 discriminator 2
	fmuls 26,26,31
.LVL45:
	.loc 1 280 0 discriminator 2
	bl cos
	fmr 21,1
	fmr 1,26
	bl sin
	fmr 27,1
.LVL46:
	.loc 1 281 0 discriminator 2
	fmr 1,25
.LVL47:
	bl sin
	fmr 22,1
.LVL48:
	.loc 1 282 0 discriminator 2
	fmr 1,26
.LVL49:
	bl cos
	.loc 1 258 0 discriminator 2
	add 9,24,27
	.loc 1 284 0 discriminator 2
	lwz 0,12(9)
	.loc 1 282 0 discriminator 2
	fmr 23,1
.LVL50:
	.loc 1 284 0 discriminator 2
	stw 29,24(1)
	.loc 1 273 0 discriminator 2
	addi 27,27,16
	.loc 1 284 0 discriminator 2
	rlwinm 9,0,24,24,31
	.loc 1 285 0 discriminator 2
	rlwinm 0,0,0,24,31
	.loc 1 284 0 discriminator 2
	xoris 9,9,0x8000
	.loc 1 285 0 discriminator 2
	xoris 0,0,0x8000
	.loc 1 284 0 discriminator 2
	stw 9,28(1)
	.loc 1 282 0 discriminator 2
	frsp 23,23
	.loc 1 285 0 discriminator 2
	stw 0,36(1)
	.loc 1 284 0 discriminator 2
	lfd 24,24(1)
	.loc 1 285 0 discriminator 2
	stw 29,32(1)
	.loc 1 284 0 discriminator 2
	fsub 24,24,30
	.loc 1 285 0 discriminator 2
	lfd 25,32(1)
	.loc 1 284 0 discriminator 2
	frsp 24,24
.LVL51:
	.loc 1 285 0 discriminator 2
	fsub 25,25,30
	.loc 1 286 0 discriminator 2
	fmuls 24,24,31
.LVL52:
	.loc 1 285 0 discriminator 2
	frsp 25,25
.LVL53:
	.loc 1 289 0 discriminator 2
	fmr 1,24
.LVL54:
	.loc 1 287 0 discriminator 2
	fmuls 25,25,31
.LVL55:
	.loc 1 289 0 discriminator 2
	bl cos
	fmr 20,1
	fmr 1,25
	bl sin
	fmr 26,1
.LVL56:
	.loc 1 290 0 discriminator 2
	fmr 1,24
.LVL57:
	bl sin
	fmr 24,1
.LVL58:
	.loc 1 291 0 discriminator 2
	fmr 1,25
.LVL59:
	bl cos
.LVL60:
	.loc 1 289 0 discriminator 2
	fmul 13,20,26
	.loc 1 297 0 discriminator 2
	mulli 3,28,12
	.loc 1 273 0 discriminator 2
	addi 28,28,1
	.loc 1 290 0 discriminator 2
	fmul 26,26,24
.LVL61:
	.loc 1 297 0 discriminator 2
	add 3,26,3
	.loc 1 280 0 discriminator 2
	fmul 0,21,27
	.loc 1 297 0 discriminator 2
	addi 3,3,24620
	.loc 1 281 0 discriminator 2
	fmul 27,27,22
.LVL62:
	.loc 1 289 0 discriminator 2
	frsp 13,13
.LVL63:
	.loc 1 290 0 discriminator 2
	frsp 26,26
.LVL64:
	.loc 1 291 0 discriminator 2
	frsp 1,1
.LVL65:
	.loc 1 294 0 discriminator 2
	fmuls 13,29,13
.LVL66:
	.loc 1 280 0 discriminator 2
	frsp 0,0
.LVL67:
	.loc 1 296 0 discriminator 2
	fmuls 1,29,1
.LVL68:
	.loc 1 295 0 discriminator 2
	fmuls 26,29,26
.LVL69:
	.loc 1 281 0 discriminator 2
	frsp 27,27
.LVL70:
	.loc 1 294 0 discriminator 2
	fmadds 0,28,0,13
.LVL71:
	.loc 1 296 0 discriminator 2
	fmadds 23,28,23,1
.LVL72:
	.loc 1 295 0 discriminator 2
	fmadds 27,28,27,26
.LVL73:
	.loc 1 294 0 discriminator 2
	stfs 0,0(30)
	.loc 1 296 0 discriminator 2
	stfs 23,8(30)
	.loc 1 295 0 discriminator 2
	stfs 27,4(30)
	.loc 1 273 0 discriminator 2
	addi 30,30,12
	.loc 1 297 0 discriminator 2
	bl VectorNormalize
.LVL74:
	.loc 1 273 0 discriminator 2
	lwz 0,112(31)
	cmpw 7,0,28
	bgt+ 7,.L37
.LVL75:
.L35:
	.loc 1 299 0
	lwz 0,172(1)
	lwz 24,40(1)
.LVL76:
	mtlr 0
	lwz 25,44(1)
.LVL77:
	lwz 26,48(1)
.LVL78:
	lwz 27,52(1)
	lwz 28,56(1)
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
.LVL79:
	lfd 20,72(1)
	lfd 21,80(1)
	lfd 22,88(1)
	lfd 23,96(1)
	lfd 24,104(1)
	lfd 25,112(1)
	lfd 26,120(1)
	lfd 27,128(1)
	lfd 28,136(1)
.LVL80:
	lfd 29,144(1)
.LVL81:
	lfd 30,152(1)
	lfd 31,160(1)
	addi 1,1,168
.LCFI3:
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
.LFE44:
	.size	R_InterpolateNormals, .-R_InterpolateNormals
	.align 2
	.globl R_InterpolateTangents
	.type	R_InterpolateTangents, @function
R_InterpolateTangents:
.LFB45:
	.loc 1 304 0
	.cfi_startproc
.LVL82:
	.loc 1 314 0
	lwz 0,112(3)
	.loc 1 317 0
	lis 11,.LC3@ha
	.loc 1 311 0
	lwz 9,132(3)
	.loc 1 314 0
	mullw 5,0,5
.LVL83:
	.loc 1 319 0
	cmpwi 7,0,0
	.loc 1 317 0
	lfs 0,.LC3@l(11)
	.loc 1 311 0
	add 9,3,9
.LVL84:
	.loc 1 317 0
	fsubs 0,0,1
	.loc 1 315 0
	mullw 6,0,6
.LVL85:
	.loc 1 314 0
	mulli 5,5,12
	.loc 1 315 0
	mulli 6,6,12
	.loc 1 314 0
	add 5,9,5
.LVL86:
	.loc 1 315 0
	add 9,9,6
.LVL87:
	.loc 1 319 0
	blelr- 7
	.loc 1 304 0
	addis 11,4,0x1
	mulli 0,0,12
	addi 11,11,-16340
	li 7,0
.LVL88:
.L41:
	.loc 1 325 0 discriminator 2
	mr 8,9
	mr 10,5
	lfsux 13,8,7
	lfsux 12,10,7
	.loc 1 327 0 discriminator 2
	addi 7,7,12
	.loc 1 325 0 discriminator 2
	fmuls 13,1,13
	.loc 1 319 0 discriminator 2
	cmpw 7,7,0
	.loc 1 325 0 discriminator 2
	fmadds 13,12,0,13
	stfs 13,0(11)
	.loc 1 326 0 discriminator 2
	lfs 13,4(8)
	lfs 12,4(10)
	fmuls 13,1,13
	fmadds 13,12,0,13
	stfs 13,4(11)
	.loc 1 327 0 discriminator 2
	lfs 13,8(8)
	lfs 12,8(10)
	fmuls 13,1,13
	fmadds 13,12,0,13
	stfs 13,8(11)
	addi 11,11,12
	.loc 1 319 0 discriminator 2
	bne+ 7,.L41
	blr
	.cfi_endproc
.LFE45:
	.size	R_InterpolateTangents, .-R_InterpolateTangents
	.align 2
	.globl R_InterpolateBinomials
	.type	R_InterpolateBinomials, @function
R_InterpolateBinomials:
.LFB46:
	.loc 1 334 0
	.cfi_startproc
.LVL89:
	.loc 1 341 0
	lwz 0,136(3)
	cmpwi 7,0,0
	beqlr- 7
	.loc 1 346 0
	lwz 11,112(3)
	.loc 1 349 0
	lis 10,.LC3@ha
	lfs 0,.LC3@l(10)
	.loc 1 343 0
	add 0,3,0
.LVL90:
	.loc 1 346 0
	mullw 7,11,5
	.loc 1 351 0
	cmpwi 7,11,0
	.loc 1 349 0
	fsubs 0,0,1
	.loc 1 347 0
	mullw 9,11,6
	.loc 1 346 0
	mulli 7,7,12
	.loc 1 347 0
	mulli 9,9,12
	.loc 1 346 0
	add 7,0,7
.LVL91:
	.loc 1 347 0
	add 0,0,9
.LVL92:
	.loc 1 351 0
	blelr- 7
	.loc 1 334 0
	addis 9,4,0x1
	mulli 6,11,12
.LVL93:
	addi 9,9,8236
	li 8,0
.LVL94:
.L45:
	.loc 1 357 0 discriminator 2
	mr 10,0
	mr 11,7
	lfsux 13,10,8
	lfsux 12,11,8
	.loc 1 359 0 discriminator 2
	addi 8,8,12
	.loc 1 357 0 discriminator 2
	fmuls 13,1,13
	.loc 1 351 0 discriminator 2
	cmpw 7,8,6
	.loc 1 357 0 discriminator 2
	fmadds 13,12,0,13
	stfs 13,0(9)
	.loc 1 358 0 discriminator 2
	lfs 13,4(10)
	lfs 12,4(11)
	fmuls 13,1,13
	fmadds 13,12,0,13
	stfs 13,4(9)
	.loc 1 359 0 discriminator 2
	lfs 13,8(10)
	lfs 12,8(11)
	fmuls 13,1,13
	fmadds 13,12,0,13
	stfs 13,8(9)
	addi 9,9,12
	.loc 1 351 0 discriminator 2
	bne+ 7,.L45
	blr
	.cfi_endproc
.LFE46:
	.size	R_InterpolateBinomials, .-R_InterpolateBinomials
	.align 2
	.globl R_InterpolateTriPlanes
	.type	R_InterpolateTriPlanes, @function
R_InterpolateTriPlanes:
.LFB47:
	.loc 1 366 0
	.cfi_startproc
.LVL95:
	.loc 1 373 0
	lwz 0,64(3)
	.loc 1 376 0
	lis 10,.LC3@ha
	.loc 1 371 0
	lwz 9,128(3)
	.loc 1 373 0
	mullw 5,0,5
.LVL96:
	.loc 1 378 0
	cmpwi 7,0,0
	.loc 1 376 0
	lfs 0,.LC3@l(10)
	.loc 1 371 0
	add 9,3,9
.LVL97:
	.loc 1 376 0
	fsubs 0,0,1
	.loc 1 374 0
	mullw 11,0,6
	.loc 1 373 0
	slwi 5,5,4
	add 5,9,5
.LVL98:
	.loc 1 374 0
	slwi 11,11,4
	add 9,9,11
.LVL99:
	.loc 1 378 0
	blelr- 7
	.loc 1 366 0
	addis 10,4,0x2
	.loc 1 378 0
	mtctr 0
	.loc 1 366 0
	addi 10,10,-32724
.LVL100:
.L49:
	.loc 1 379 0 discriminator 2
	lfs 13,0(9)
	lfs 12,0(5)
	fmuls 13,1,13
	fmadds 13,12,0,13
	stfs 13,0(10)
	.loc 1 380 0 discriminator 2
	lfs 13,4(9)
	lfs 12,4(5)
	fmuls 13,1,13
	fmadds 13,12,0,13
	stfs 13,4(10)
	.loc 1 381 0 discriminator 2
	lfs 13,8(9)
	lfs 12,8(5)
	fmuls 13,1,13
	fmadds 13,12,0,13
	stfs 13,8(10)
	.loc 1 382 0 discriminator 2
	lfs 13,12(9)
	.loc 1 378 0 discriminator 2
	addi 9,9,16
	.loc 1 382 0 discriminator 2
	lfs 12,12(5)
	.loc 1 378 0 discriminator 2
	addi 5,5,16
	.loc 1 382 0 discriminator 2
	fmuls 13,1,13
	fmadds 13,12,0,13
	stfs 13,12(10)
	.loc 1 378 0 discriminator 2
	addi 10,10,16
	bdnz .L49
	blr
	.cfi_endproc
.LFE47:
	.size	R_InterpolateTriPlanes, .-R_InterpolateTriPlanes
	.align 2
	.globl R_SetupLerpPoses
	.type	R_SetupLerpPoses, @function
R_SetupLerpPoses:
.LFB48:
	.loc 1 395 0
	.cfi_startproc
.LVL101:
	mflr 0
	stwu 1,-32(1)
.LCFI4:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,4
	.cfi_offset 31, -12
	stw 0,36(1)
	stw 30,16(1)
	mr 30,3
	.cfi_offset 30, -16
	.cfi_offset 65, 4
	.loc 1 399 0
	lwz 4,168(4)
.LVL102:
	.loc 1 401 0
	lwz 0,68(3)
	.loc 1 395 0
	stfd 31,24(1)
	.loc 1 401 0
	cmpw 7,4,0
	bge- 7,.L52
	.cfi_offset 63, -8
	.loc 1 401 0 is_stmt 0 discriminator 1
	cmpwi 7,4,0
	blt- 7,.L52
	.loc 1 406 0 is_stmt 1
	mulli 4,4,40
	add 4,30,4
	.loc 1 407 0
	lwz 9,1304(4)
	.loc 1 406 0
	lwz 0,1300(4)
.LVL103:
	.loc 1 409 0
	cmpwi 7,9,1
	ble- 7,.L54
.LVL104:
.L69:
	.loc 1 410 0
	lfs 0,1308(4)
	.loc 1 411 0
	lis 11,cl@ha
	la 11,cl@l(11)
	addi 10,1,8
	fmr 13,0
	lfd 12,568(11)
	.loc 1 410 0
	stfs 0,244(31)
	.loc 1 411 0
	fdiv 13,12,13
	fctiwz 0,13
	stfiwx 0,0,10
	lwz 10,8(1)
	.loc 1 424 0
	lwz 4,256(31)
	.loc 1 411 0
	divw 8,10,9
	mullw 9,8,9
.LVL105:
	subf 10,9,10
	add 0,0,10
.LVL106:
	.loc 1 424 0
	cmpw 7,4,0
	beq- 7,.L56
.L70:
	.loc 1 425 0
	lis 9,realtime@ha
	.loc 1 426 0
	cmpwi 7,4,-1
	.loc 1 425 0
	lfd 0,realtime@l(9)
	frsp 0,0
	stfs 0,240(31)
	.loc 1 426 0
	beq- 7,.L67
.L57:
	.loc 1 432 0
	lis 9,.LC10@ha
	.loc 1 426 0
	stw 4,252(31)
	.loc 1 431 0
	stw 0,256(31)
.LVL107:
	.loc 1 432 0
	lfs 31,.LC10@l(9)
.LVL108:
.L58:
	.loc 1 438 0
	lbz 0,536(11)
.LVL109:
	.loc 1 439 0
	lis 9,.LC3@ha
	.loc 1 438 0
	cmpwi 7,0,0
	bne- 7,.L65
	.loc 1 438 0 is_stmt 0 discriminator 1
	lfs 0,.LC3@l(9)
	fcmpu 7,31,0
	bgt- 7,.L66
.LVL110:
.L59:
	.loc 1 441 0 is_stmt 1
	lwz 0,108(30)
	cmpw 7,0,4
	ble- 7,.L60
.L68:
	.loc 1 441 0 is_stmt 0 discriminator 1
	cmpwi 7,4,0
	blt- 7,.L60
.L61:
	.loc 1 447 0 is_stmt 1
	lwz 4,256(31)
	cmpw 7,4,0
	bge- 7,.L62
	.loc 1 447 0 is_stmt 0 discriminator 1
	cmpwi 7,4,0
	blt- 7,.L62
	.loc 1 453 0 is_stmt 1
	lwz 0,36(1)
	.loc 1 452 0
	stfs 31,248(31)
	.loc 1 453 0
	mtlr 0
	lwz 30,16(1)
.LVL111:
	lwz 31,20(1)
.LVL112:
	lfd 31,24(1)
.LVL113:
	addi 1,1,32
	.cfi_remember_state
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL114:
.L62:
.LCFI6:
	.cfi_restore_state
	.loc 1 448 0
	lis 3,.LC9@ha
	la 3,.LC9@l(3)
	crxor 6,6,6
	bl Con_DPrintf
	.loc 1 449 0
	li 0,0
	stw 0,256(31)
	.loc 1 453 0
	lwz 0,36(1)
	.loc 1 452 0
	stfs 31,248(31)
	.loc 1 453 0
	mtlr 0
	lwz 30,16(1)
.LVL115:
	lwz 31,20(1)
.LVL116:
	lfd 31,24(1)
.LVL117:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI7:
	.cfi_def_cfa_offset 0
	blr
.LVL118:
.L65:
.LCFI8:
	.cfi_restore_state
	.loc 1 441 0
	lwz 0,108(30)
	.loc 1 439 0
	lfs 31,.LC3@l(9)
.LVL119:
	.loc 1 441 0
	cmpw 7,0,4
	bgt+ 7,.L68
.L60:
	.loc 1 442 0
	lis 3,.LC9@ha
	la 3,.LC9@l(3)
	crxor 6,6,6
	bl Con_DPrintf
	.loc 1 443 0
	li 0,0
	stw 0,252(31)
	lwz 0,108(30)
	b .L61
.L66:
	.loc 1 439 0
	fmr 31,0
.LVL120:
	b .L59
.LVL121:
.L52:
	.loc 1 402 0
	lis 3,.LC7@ha
	la 3,.LC7@l(3)
	crxor 6,6,6
	bl Con_DPrintf
.LVL122:
	.loc 1 403 0
	li 4,0
.LVL123:
	.loc 1 406 0
	mulli 4,4,40
.LVL124:
	add 4,30,4
	.loc 1 407 0
	lwz 9,1304(4)
	.loc 1 406 0
	lwz 0,1300(4)
.LVL125:
	.loc 1 409 0
	cmpwi 7,9,1
	bgt+ 7,.L69
.LVL126:
.L54:
	.loc 1 424 0
	lwz 4,256(31)
	.loc 1 421 0
	lis 9,.LC8@ha
.LVL127:
	lwz 9,.LC8@l(9)
	lis 11,cl@ha
	.loc 1 424 0
	cmpw 7,4,0
	la 11,cl@l(11)
	.loc 1 421 0
	stw 9,244(31)
	.loc 1 424 0
	bne+ 7,.L70
.L56:
	.loc 1 434 0
	lis 9,realtime@ha
	lfs 13,240(31)
	lfd 31,realtime@l(9)
	lfs 0,244(31)
	fsub 31,31,13
	lwz 4,252(31)
	fdiv 31,31,0
	frsp 31,31
.LVL128:
	b .L58
.LVL129:
.L67:
	.loc 1 426 0
	mr 4,0
	b .L57
	.cfi_endproc
.LFE48:
	.size	R_SetupLerpPoses, .-R_SetupLerpPoses
	.align 2
	.globl CheckUpdate
	.type	CheckUpdate, @function
CheckUpdate:
.LFB49:
	.loc 1 459 0
	.cfi_startproc
.LVL130:
	.loc 1 461 0
	lis 9,sh_nocache+12@ha
	.loc 1 459 0
	mr 0,3
	.loc 1 461 0
	lfs 13,sh_nocache+12@l(9)
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	li 3,1
.LVL131:
	fcmpu 7,13,0
	bnelr- 7
	.loc 1 463 0
	lwz 9,28(4)
	cmpw 7,9,0
	bnelr+ 7
	.loc 1 464 0 discriminator 1
	lwz 0,16(4)
.LVL132:
	.loc 1 463 0 discriminator 1
	lwz 11,252(9)
	cmpw 7,0,11
	bnelr+ 7
	.loc 1 465 0
	lwz 11,20(4)
	.loc 1 464 0
	lwz 10,256(9)
	cmpw 7,11,10
	bnelr+ 7
	.loc 1 466 0
	lfs 0,248(9)
	.loc 1 465 0
	lis 9,.LC11@ha
	.loc 1 466 0
	lfs 13,24(4)
	fsubs 13,13,0
	.loc 1 465 0
	lfd 0,.LC11@l(9)
	.loc 1 466 0
	fabs 13,13
	.loc 1 465 0
	fcmpu 7,13,0
	cror 30,28,30
	beq- 7,.L73
	.loc 1 466 0
	cmpw 7,0,11
	bnelr+ 7
.L73:
	.loc 1 466 0 is_stmt 0 discriminator 1
	lbz 9,32(4)
	.loc 1 473 0 is_stmt 1 discriminator 1
	li 3,1
	.loc 1 466 0 discriminator 1
	lbz 0,40(4)
	cmpw 7,9,0
	bnelr+ 7
	.loc 1 467 0
	lwz 9,36(4)
	lwz 0,12(4)
	cmpw 7,9,0
	bnelr+ 7
	.loc 1 469 0
	lis 9,r_framecount@ha
	lwz 0,r_framecount@l(9)
	.loc 1 459 0
	lwz 9,4(4)
	.loc 1 469 0
	addic 0,0,-10
	.loc 1 459 0
	cmpw 7,9,0
	mfcr 3
	rlwinm 3,3,29,1
	.loc 1 477 0
	blr
	.cfi_endproc
.LFE49:
	.size	CheckUpdate, .-CheckUpdate
	.align 2
	.globl R_SetupAliasInstantForFrame
	.type	R_SetupAliasInstantForFrame, @function
R_SetupAliasInstantForFrame:
.LFB50:
	.loc 1 481 0
	.cfi_startproc
.LVL133:
	.loc 1 484 0
	cmpwi 7,4,0
	.loc 1 481 0
	mflr 0
	stwu 1,-56(1)
.LCFI9:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stw 29,44(1)
	mr 29,5
	.cfi_offset 29, -12
	stw 30,48(1)
	mr 30,6
	.cfi_offset 30, -8
	stw 31,52(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,60(1)
	.loc 1 484 0
	bne- 7,.L82
	.cfi_offset 65, 4
	.loc 1 487 0
	lis 9,.LC10@ha
	lfs 13,148(3)
	lfs 0,.LC10@l(9)
	fcmpu 7,13,0
	beq- 7,.L95
.L83:
	.loc 1 487 0 is_stmt 0 discriminator 2
	lwz 11,160(31)
	.loc 1 481 0 is_stmt 1 discriminator 2
	li 9,0
	addi 3,1,20
.LVL134:
	addi 4,1,8
.LVL135:
	.loc 1 487 0 discriminator 2
	lfs 13,108(11)
.L85:
.LBB2:
	.loc 1 480 0 discriminator 2
	add 11,31,9
	.loc 1 490 0 discriminator 2
	cmpwi 7,9,8
	.loc 1 492 0 discriminator 2
	lfs 0,112(11)
	fsubs 12,0,13
	.loc 1 493 0 discriminator 2
	fadds 0,13,0
	.loc 1 492 0 discriminator 2
	stfsx 12,3,9
	.loc 1 493 0 discriminator 2
	stfsx 0,4,9
	.loc 1 490 0 discriminator 2
	addi 9,9,4
	bne+ 7,.L85
.LVL136:
.L87:
.LBE2:
	.loc 1 500 0
	bl R_CullBox
.LVL137:
	cmpwi 0,3,0
	beq- 0,.L88
	.loc 1 501 0
	li 0,1
	.loc 1 506 0
	stw 29,12(30)
	.loc 1 501 0
	stb 0,40(30)
	.loc 1 507 0
	mr 3,29
	mr 4,31
	bl R_SetupLerpPoses
	.loc 1 510 0
	mr 3,31
	mr 4,30
	bl CheckUpdate
	cmpwi 7,3,0
	beq+ 7,.L96
.L90:
	.loc 1 511 0
	lwz 5,252(31)
	mr 3,29
	lwz 6,256(31)
	mr 4,30
	lfs 1,248(31)
	bl R_InterpolateVerts
	.loc 1 512 0
	lbz 0,40(30)
	cmpwi 7,0,0
	beq- 7,.L97
.L92:
	.loc 1 517 0
	lwz 5,252(31)
	mr 3,29
	lwz 6,256(31)
	mr 4,30
	lfs 1,248(31)
	bl R_InterpolateTriPlanes
	.loc 1 518 0
	lis 9,r_framecount@ha
	lwz 0,r_framecount@l(9)
	.loc 1 521 0
	lwz 7,252(31)
	.loc 1 522 0
	lwz 8,256(31)
	.loc 1 523 0
	lwz 10,248(31)
	.loc 1 518 0
	stw 0,8(30)
	.loc 1 530 0
	stw 0,4(30)
	.loc 1 531 0
	lwz 0,60(1)
	.loc 1 524 0
	lbz 11,40(30)
	.loc 1 531 0
	mtlr 0
	.loc 1 526 0
	lwz 9,12(30)
	.loc 1 525 0
	stw 31,28(30)
	.loc 1 521 0
	stw 7,16(30)
	.loc 1 522 0
	stw 8,20(30)
	.loc 1 523 0
	stw 10,24(30)
	.loc 1 524 0
	stb 11,32(30)
	.loc 1 526 0
	stw 9,36(30)
	.loc 1 531 0
	lwz 29,44(1)
.LVL138:
	lwz 30,48(1)
.LVL139:
	lwz 31,52(1)
.LVL140:
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI10:
	.cfi_def_cfa_offset 0
	blr
.LVL141:
.L82:
.LCFI11:
	.cfi_restore_state
	.loc 1 504 0
	li 0,0
	stb 0,40(6)
.LVL142:
.L89:
	.loc 1 506 0
	stw 29,12(30)
	.loc 1 507 0
	mr 3,29
	mr 4,31
	bl R_SetupLerpPoses
	.loc 1 510 0
	mr 3,31
	mr 4,30
	bl CheckUpdate
	cmpwi 7,3,0
	bne- 7,.L90
.L96:
	lis 9,r_framecount@ha
	.loc 1 531 0
	lwz 29,44(1)
.LVL143:
	.loc 1 510 0
	lwz 0,r_framecount@l(9)
	.loc 1 531 0
	lwz 31,52(1)
.LVL144:
	.loc 1 530 0
	stw 0,4(30)
	.loc 1 531 0
	lwz 0,60(1)
	lwz 30,48(1)
.LVL145:
	mtlr 0
	addi 1,1,56
	.cfi_remember_state
.LCFI12:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL146:
.L95:
.LCFI13:
	.cfi_restore_state
	.loc 1 487 0 discriminator 1
	lfs 13,152(3)
	fcmpu 7,13,0
	bne- 7,.L83
	lfs 13,156(3)
	fcmpu 7,13,0
	bne- 7,.L83
	.loc 1 496 0
	lwz 9,160(3)
	addi 4,1,8
.LVL147:
	lfs 12,112(3)
	lfs 13,116(3)
	lfs 0,120(3)
	addi 3,1,20
.LVL148:
	lfs 9,84(9)
	lfs 10,88(9)
	lfs 11,92(9)
	fadds 9,12,9
	.loc 1 497 0
	lfs 6,96(9)
	.loc 1 496 0
	fadds 10,13,10
	.loc 1 497 0
	lfs 7,100(9)
	.loc 1 496 0
	fadds 11,0,11
	.loc 1 497 0
	lfs 8,104(9)
	fadds 12,12,6
	fadds 13,13,7
	.loc 1 496 0
	stfs 9,20(1)
	.loc 1 497 0
	fadds 0,0,8
	.loc 1 496 0
	stfs 10,24(1)
	stfs 11,28(1)
	.loc 1 497 0
	stfs 12,8(1)
	stfs 13,12(1)
	stfs 0,16(1)
	b .L87
.LVL149:
.L88:
	.loc 1 503 0
	stb 3,40(30)
	b .L89
.L97:
	.loc 1 513 0
	lwz 5,252(31)
	mr 3,29
	lwz 6,256(31)
	mr 4,30
	lfs 1,248(31)
	bl R_InterpolateNormals
	.loc 1 514 0
	lwz 5,252(31)
	lwz 6,256(31)
	mr 3,29
	lfs 1,248(31)
	mr 4,30
	bl R_InterpolateTangents
	.loc 1 515 0
	lwz 5,252(31)
	lwz 6,256(31)
	mr 3,29
	lfs 1,248(31)
	mr 4,30
	bl R_InterpolateBinomials
	b .L92
	.cfi_endproc
.LFE50:
	.size	R_SetupAliasInstantForFrame, .-R_SetupAliasInstantForFrame
	.align 2
	.globl R_SetupInstantForFrame
	.type	R_SetupInstantForFrame, @function
R_SetupInstantForFrame:
.LFB51:
	.loc 1 535 0
	.cfi_startproc
.LVL150:
	mflr 0
	stwu 1,-56(1)
.LCFI14:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	mfcr 12
	stw 28,40(1)
	mr 28,3
	.cfi_offset 28, -16
	.cfi_register 70, 12
	stw 0,60(1)
	stw 22,16(1)
	mr 22,4
	.cfi_offset 22, -40
	.cfi_offset 65, 4
	.loc 1 544 0
	lwz 3,160(3)
.LVL151:
	.loc 1 535 0
	stw 23,20(1)
	stw 24,24(1)
	stw 30,48(1)
	stw 31,52(1)
	stw 12,8(1)
	stw 21,12(1)
	stw 25,28(1)
	stw 26,32(1)
	stw 27,36(1)
	stw 29,44(1)
	.loc 1 544 0
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 21, -44
	.cfi_offset 70, -48
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	bl Mod_Extradata
.LVL152:
	.loc 1 549 0
	lwz 30,4(3)
	.loc 1 544 0
	mr 24,3
.LVL153:
	.loc 1 550 0
	lwz 4,260(28)
	.loc 1 549 0
	add 30,3,30
	.loc 1 550 0
	mr 3,28
.LVL154:
	mr 5,30
	.loc 1 545 0
	lwz 23,0(24)
.LVL155:
	.loc 1 550 0
	bl R_AllocateInstant
.LVL156:
	.loc 1 552 0
	cmpwi 4,3,0
	.loc 1 550 0
	mr 31,3
.LVL157:
	stw 3,260(28)
	.loc 1 552 0
	beq- 4,.L99
	.loc 1 553 0
	mr 3,28
.LVL158:
	mr 4,22
	mr 5,30
	mr 6,31
	bl R_SetupAliasInstantForFrame
.L100:
.LVL159:
	.loc 1 559 0 discriminator 1
	cmpwi 7,23,1
	ble- 7,.L98
	.loc 1 569 0
	lis 21,.LC12@ha
	.loc 1 534 0
	addi 27,24,4
	mr 25,31
	li 30,1
.LVL160:
	li 26,0
	.loc 1 569 0
	la 21,.LC12@l(21)
	b .L105
.LVL161:
.L103:
	.loc 1 572 0
	stw 31,0(25)
.LVL162:
	.loc 1 559 0
	addi 30,30,1
	.loc 1 575 0
	mr 25,31
	.loc 1 577 0
	mr 31,26
	.loc 1 575 0
	bl R_SetupAliasInstantForFrame
.LVL163:
	.loc 1 559 0
	cmpw 7,30,23
	cmpwi 4,31,0
	beq- 7,.L98
.LVL164:
.L105:
	.loc 1 561 0
	lwzu 29,4(27)
	.loc 1 566 0
	mr 4,31
	mr 3,28
	.loc 1 561 0
	add 29,24,29
.LVL165:
	.loc 1 566 0
	mr 5,29
	.loc 1 563 0
	beq- 4,.L102
.LVL166:
	.loc 1 564 0
	lwz 26,0(31)
.LVL167:
.L102:
	.loc 1 566 0
	bl R_AllocateInstant
.LVL168:
	.loc 1 575 0
	mr 4,22
	.loc 1 568 0
	cmpwi 4,3,0
	mr 31,3
	.loc 1 575 0
	mr 6,3
	mr 5,29
	mr 3,28
.LVL169:
	.loc 1 568 0
	bne+ 4,.L103
	.loc 1 569 0
	mr 3,21
	.loc 1 559 0
	addi 30,30,1
	.loc 1 569 0
	crxor 6,6,6
	bl Con_Printf
.LVL170:
	.loc 1 559 0
	cmpw 7,30,23
	cmpwi 4,31,0
	bne+ 7,.L105
.LVL171:
.L98:
	.loc 1 582 0
	lwz 0,60(1)
	lwz 12,8(1)
	mtlr 0
	lwz 21,12(1)
	lwz 22,16(1)
	mtcrf 8,12
	lwz 23,20(1)
.LVL172:
	lwz 24,24(1)
.LVL173:
	lwz 25,28(1)
	lwz 26,32(1)
	lwz 27,36(1)
	lwz 28,40(1)
.LVL174:
	lwz 29,44(1)
	lwz 30,48(1)
	lwz 31,52(1)
.LVL175:
	addi 1,1,56
	.cfi_remember_state
.LCFI15:
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
	.cfi_restore 22
	.cfi_restore 21
	blr
.LVL176:
.L99:
.LCFI16:
	.cfi_restore_state
	.loc 1 555 0
	lis 3,.LC12@ha
.LVL177:
	la 3,.LC12@l(3)
	crxor 6,6,6
	bl Con_Printf
	b .L100
	.cfi_endproc
.LFE51:
	.size	R_SetupInstantForFrame, .-R_SetupInstantForFrame
	.align 2
	.globl R_SetupInstants
	.type	R_SetupInstants, @function
R_SetupInstants:
.LFB42:
	.loc 1 196 0
	.cfi_startproc
	.loc 1 199 0
	lis 9,r_drawentities+12@ha
	.loc 1 196 0
	mflr 0
	.loc 1 199 0
	lfs 13,r_drawentities+12@l(9)
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	.loc 1 196 0
	stwu 1,-24(1)
.LCFI17:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 199 0
	fcmpu 7,13,0
	.loc 1 196 0
	stw 0,28(1)
	stw 28,8(1)
	stw 29,12(1)
	stw 30,16(1)
	stw 31,20(1)
	.loc 1 199 0
	beq- 7,.L107
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 65, 4
.LVL178:
	.loc 1 203 0 discriminator 1
	lis 29,cl_numvisedicts@ha
	lwz 0,cl_numvisedicts@l(29)
	cmpwi 7,0,0
	ble- 7,.L109
	.loc 1 203 0 is_stmt 0
	lis 30,cl_visedicts-4@ha
	lis 28,currententity@ha
	la 30,cl_visedicts-4@l(30)
	li 31,0
	la 28,currententity@l(28)
	la 29,cl_numvisedicts@l(29)
	b .L111
.LVL179:
.L110:
	lwz 0,0(29)
	cmpw 7,0,31
	ble- 7,.L109
.LVL180:
.L111:
	.loc 1 205 0 is_stmt 1
	lwzu 3,4(30)
.LVL181:
	.loc 1 203 0
	addi 31,31,1
	.loc 1 206 0
	lwz 9,160(3)
.LVL182:
	.loc 1 205 0
	stw 3,0(28)
	.loc 1 206 0
	lwz 0,68(9)
	cmpwi 7,0,2
	bne+ 7,.L110
	.loc 1 207 0
	li 4,0
	bl R_SetupInstantForFrame
.LVL183:
	.loc 1 203 0
	lwz 0,0(29)
	cmpw 7,0,31
	bgt+ 7,.L111
.LVL184:
.L109:
	.loc 1 211 0
	lis 9,mirror@ha
	lbz 0,mirror@l(9)
	cmpwi 7,0,0
	bne- 7,.L107
	.loc 1 214 0
	lis 31,cl@ha
	la 31,cl@l(31)
	lwz 9,2864(31)
	cmpwi 7,9,0
	beq- 7,.L112
	.loc 1 214 0 is_stmt 0 discriminator 1
	lwz 0,68(9)
	cmpwi 7,0,2
	beq- 7,.L114
.L112:
	.loc 1 218 0 is_stmt 1
	lwz 0,2676(31)
	lis 3,cl_entities@ha
.LVL185:
	la 3,cl_entities@l(3)
	mulli 0,0,584
	add 3,3,0
	lwz 9,160(3)
	cmpwi 7,9,0
	beq- 7,.L107
	.loc 1 218 0 is_stmt 0 discriminator 1
	lwz 0,68(9)
	cmpwi 7,0,2
	beq- 7,.L115
.LVL186:
.L107:
	.loc 1 221 0 is_stmt 1
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI18:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL187:
.L115:
.LCFI19:
	.cfi_restore_state
	lwz 0,28(1)
	.loc 1 219 0
	li 4,1
	.loc 1 221 0
	lwz 28,8(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI20:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.loc 1 219 0
	b R_SetupInstantForFrame
.LVL188:
.L114:
.LCFI21:
	.cfi_restore_state
	.loc 1 215 0
	addi 3,31,2704
.LVL189:
	li 4,1
	bl R_SetupInstantForFrame
	b .L112
	.cfi_endproc
.LFE42:
	.size	R_SetupInstants, .-R_SetupInstants
	.align 2
	.globl R_SetupObjectSpace
	.type	R_SetupObjectSpace, @function
R_SetupObjectSpace:
.LFB52:
	.loc 1 591 0
	.cfi_startproc
.LVL190:
	stwu 1,-112(1)
.LCFI22:
	.cfi_def_cfa_offset 112
	mflr 0
	stw 31,108(1)
	mr 31,4
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 597 0
	addi 4,1,40
.LVL191:
	.loc 1 591 0
	stw 0,116(1)
	stw 30,104(1)
	.loc 1 597 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl R_WorldToObjectMatrix
.LVL192:
	.loc 1 598 0
	lis 9,currentshadowlight@ha
	.loc 1 602 0
	addi 3,1,24
	.loc 1 598 0
	lwz 10,currentshadowlight@l(9)
	.loc 1 602 0
	addi 4,1,40
	addi 5,1,8
	.loc 1 598 0
	lwz 11,0(10)
	.loc 1 599 0
	lwz 9,4(10)
	.loc 1 600 0
	lwz 0,8(10)
	.loc 1 601 0
	lis 10,.LC3@ha
	lwz 30,.LC3@l(10)
	.loc 1 598 0
	stw 11,24(1)
	.loc 1 599 0
	stw 9,28(1)
	.loc 1 600 0
	stw 0,32(1)
	.loc 1 601 0
	stw 30,36(1)
	.loc 1 602 0
	bl Mat_Mul_1x4_4x4
	.loc 1 607 0
	lis 10,r_refdef@ha
	.loc 1 611 0
	addi 3,1,24
	.loc 1 607 0
	la 10,r_refdef@l(10)
	.loc 1 611 0
	addi 4,1,40
	.loc 1 609 0
	lwz 0,120(10)
	.loc 1 611 0
	addi 5,1,8
	.loc 1 607 0
	lwz 11,112(10)
	.loc 1 608 0
	lwz 9,116(10)
	.loc 1 603 0
	lwz 10,8(1)
	.loc 1 609 0
	stw 0,32(1)
	.loc 1 603 0
	stw 10,68(31)
	.loc 1 604 0
	lwz 10,12(1)
	.loc 1 610 0
	stw 30,36(1)
	.loc 1 604 0
	stw 10,72(31)
	.loc 1 605 0
	lwz 10,16(1)
	.loc 1 607 0
	stw 11,24(1)
	.loc 1 605 0
	stw 10,76(31)
	.loc 1 608 0
	stw 9,28(1)
	.loc 1 611 0
	bl Mat_Mul_1x4_4x4
	.loc 1 612 0
	lwz 0,8(1)
	.loc 1 615 0
	lwz 30,104(1)
	.loc 1 612 0
	stw 0,80(31)
	.loc 1 613 0
	lwz 0,12(1)
	stw 0,84(31)
	.loc 1 614 0
	lwz 0,16(1)
	stw 0,88(31)
	.loc 1 615 0
	lwz 0,116(1)
	lwz 31,108(1)
.LVL193:
	mtlr 0
	addi 1,1,112
.LCFI23:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE52:
	.size	R_SetupObjectSpace, .-R_SetupObjectSpace
	.align 2
	.globl R_SetupLightHAV
	.type	R_SetupLightHAV, @function
R_SetupLightHAV:
.LFB53:
	.loc 1 617 0
	.cfi_startproc
.LVL194:
	mflr 0
	stwu 1,-136(1)
.LCFI24:
	.cfi_def_cfa_offset 136
	.cfi_register 65, 0
	stw 27,44(1)
	mr 27,4
	.cfi_offset 27, -92
	stw 0,140(1)
	stw 31,60(1)
	mr 31,3
	.cfi_offset 31, -76
	.cfi_offset 65, 4
	.loc 1 621 0
	lwz 9,12(3)
	.loc 1 617 0
	stfd 23,64(1)
	.loc 1 621 0
	lwz 0,112(9)
	.loc 1 617 0
	stfd 24,72(1)
	.loc 1 621 0
	cmpwi 7,0,0
	.loc 1 617 0
	stfd 25,80(1)
	stfd 26,88(1)
	stfd 27,96(1)
	stfd 28,104(1)
	stfd 29,112(1)
	stfd 30,120(1)
	stfd 31,128(1)
	stw 26,40(1)
	stw 28,48(1)
	stw 29,52(1)
	stw 30,56(1)
	.loc 1 621 0
	ble- 7,.L117
	.cfi_offset 30, -80
	.cfi_offset 29, -84
	.cfi_offset 28, -88
	.cfi_offset 26, -96
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 56, -64
	.cfi_offset 55, -72
	.loc 1 617 0
	addis 30,3,0x1
	addi 28,3,44
	addi 30,30,-16340
	addi 29,4,24672
	.loc 1 621 0
	li 26,0
.LVL195:
.L119:
	.loc 1 629 0 discriminator 2
	lfs 0,4(28)
	.loc 1 636 0 discriminator 2
	addi 3,1,20
	.loc 1 629 0 discriminator 2
	lfs 13,72(27)
	.loc 1 621 0 discriminator 2
	addi 26,26,1
	.loc 1 624 0 discriminator 2
	lfs 25,-24572(30)
	.loc 1 629 0 discriminator 2
	fsubs 13,13,0
	.loc 1 625 0 discriminator 2
	lfs 24,4(30)
	.loc 1 626 0 discriminator 2
	lfs 23,24580(30)
	.loc 1 629 0 discriminator 2
	lfs 0,0(28)
	lfs 12,68(27)
	.loc 1 631 0 discriminator 2
	fmuls 10,23,13
	.loc 1 632 0 discriminator 2
	fmuls 9,24,13
	.loc 1 624 0 discriminator 2
	lfs 28,-24576(30)
.LVL196:
	.loc 1 629 0 discriminator 2
	fsubs 12,12,0
	.loc 1 625 0 discriminator 2
	lfs 27,0(30)
	.loc 1 633 0 discriminator 2
	fmuls 11,25,13
	.loc 1 626 0 discriminator 2
	lfs 26,24576(30)
	.loc 1 629 0 discriminator 2
	lfs 0,8(28)
	lfs 8,76(27)
	.loc 1 631 0 discriminator 2
	fmadds 10,26,12,10
	.loc 1 632 0 discriminator 2
	fmadds 9,27,12,9
	.loc 1 624 0 discriminator 2
	lfs 31,-24568(30)
.LVL197:
	.loc 1 629 0 discriminator 2
	fsubs 0,8,0
	.loc 1 625 0 discriminator 2
	lfs 30,8(30)
.LVL198:
	.loc 1 633 0 discriminator 2
	fmadds 11,28,12,11
	.loc 1 626 0 discriminator 2
	lfs 29,24584(30)
.LVL199:
	.loc 1 629 0 discriminator 2
	stfs 12,20(1)
	.loc 1 621 0 discriminator 2
	addi 30,30,12
.LVL200:
	.loc 1 632 0 discriminator 2
	fnmadds 9,30,0,9
	.loc 1 629 0 discriminator 2
	stfs 13,24(1)
	.loc 1 631 0 discriminator 2
	fmadds 10,29,0,10
	.loc 1 629 0 discriminator 2
	stfs 0,28(1)
	.loc 1 633 0 discriminator 2
	fmadds 11,31,0,11
	.loc 1 632 0 discriminator 2
	stfs 9,4(29)
	.loc 1 631 0 discriminator 2
	stfs 10,0(29)
	.loc 1 633 0 discriminator 2
	stfs 11,8(29)
	.loc 1 636 0 discriminator 2
	bl VectorNormalize
.LVL201:
	.loc 1 637 0 discriminator 2
	lfs 12,0(28)
	lfs 13,4(28)
	.loc 1 638 0 discriminator 2
	addi 3,1,8
	.loc 1 637 0 discriminator 2
	lfs 0,8(28)
	.loc 1 621 0 discriminator 2
	addi 28,28,12
	.loc 1 637 0 discriminator 2
	lfs 11,88(27)
	lfs 9,80(27)
	lfs 10,84(27)
	fsubs 0,11,0
	fsubs 12,9,12
	fsubs 13,10,13
	stfs 0,16(1)
	stfs 12,8(1)
	stfs 13,12(1)
	.loc 1 638 0 discriminator 2
	bl VectorNormalize
.LVL202:
	.loc 1 639 0 discriminator 2
	lfs 0,12(1)
	lfs 13,24(1)
	lfs 12,20(1)
	fadds 13,13,0
	lfs 0,8(1)
	lfs 11,28(1)
	fadds 12,12,0
	lfs 0,16(1)
	.loc 1 641 0 discriminator 2
	fmuls 23,23,13
.LVL203:
	.loc 1 621 0 discriminator 2
	lwz 9,12(31)
	.loc 1 642 0 discriminator 2
	fmuls 24,24,13
.LVL204:
	.loc 1 639 0 discriminator 2
	stfs 13,12(1)
	.loc 1 643 0 discriminator 2
	fmuls 25,25,13
.LVL205:
	.loc 1 639 0 discriminator 2
	stfs 12,8(1)
	fadds 0,11,0
	.loc 1 641 0 discriminator 2
	fmadds 26,26,12,23
.LVL206:
	.loc 1 642 0 discriminator 2
	fmadds 27,27,12,24
.LVL207:
	.loc 1 643 0 discriminator 2
	fmadds 28,28,12,25
.LVL208:
	.loc 1 639 0 discriminator 2
	stfs 0,16(1)
	.loc 1 641 0 discriminator 2
	fmadds 29,29,0,26
.LVL209:
	.loc 1 642 0 discriminator 2
	fnmadds 30,30,0,27
.LVL210:
	.loc 1 643 0 discriminator 2
	fmadds 31,31,0,28
.LVL211:
	.loc 1 641 0 discriminator 2
	stfs 29,24576(29)
	.loc 1 642 0 discriminator 2
	stfs 30,24580(29)
	.loc 1 643 0 discriminator 2
	stfs 31,24584(29)
	.loc 1 621 0 discriminator 2
	addi 29,29,12
	lwz 0,112(9)
	cmpw 7,0,26
	bgt+ 7,.L119
.LVL212:
.L117:
	.loc 1 645 0
	lwz 0,140(1)
	lwz 26,40(1)
	mtlr 0
	lwz 27,44(1)
.LVL213:
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
.LVL214:
	lfd 23,64(1)
	lfd 24,72(1)
	lfd 25,80(1)
	lfd 26,88(1)
	lfd 27,96(1)
	lfd 28,104(1)
	lfd 29,112(1)
	lfd 30,120(1)
	lfd 31,128(1)
	addi 1,1,136
.LCFI25:
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
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
	.cfi_endproc
.LFE53:
	.size	R_SetupLightHAV, .-R_SetupLightHAV
	.align 2
	.globl R_CalcVolumeVerts
	.type	R_CalcVolumeVerts, @function
R_CalcVolumeVerts:
.LFB54:
	.loc 1 651 0
	.cfi_startproc
.LVL215:
	mflr 0
	stwu 1,-112(1)
.LCFI26:
	.cfi_def_cfa_offset 112
	.cfi_register 65, 0
	.loc 1 661 0
	lis 9,extrudeTimeStamp@ha
	.loc 1 651 0
	stw 21,36(1)
	stw 0,116(1)
	.loc 1 661 0
	lwz 11,extrudeTimeStamp@l(9)
	.loc 1 657 0
	lwz 21,12(3)
	.cfi_offset 65, 4
	.cfi_offset 21, -76
.LVL216:
	.loc 1 661 0
	addi 11,11,1
	.loc 1 651 0
	stw 22,40(1)
	.loc 1 664 0
	lwz 0,64(21)
	.loc 1 651 0
	mr 22,3
	.cfi_offset 22, -72
	stw 27,60(1)
	.loc 1 664 0
	cmpwi 6,0,0
	.loc 1 651 0
	stw 29,68(1)
	stfd 28,80(1)
	mr 29,4
	.cfi_offset 60, -32
	.cfi_offset 29, -44
	.cfi_offset 27, -52
	stfd 29,88(1)
	stfd 30,96(1)
	stfd 31,104(1)
	stw 15,12(1)
	stw 16,16(1)
	stw 17,20(1)
	stw 18,24(1)
	stw 19,28(1)
	stw 20,32(1)
	stw 23,44(1)
	stw 24,48(1)
	stw 25,52(1)
	stw 26,56(1)
	stw 28,64(1)
	stw 30,72(1)
	stw 31,76(1)
	.loc 1 659 0
	lwz 27,124(21)
.LVL217:
	.loc 1 661 0
	stw 11,extrudeTimeStamp@l(9)
.LVL218:
	.loc 1 664 0
	ble- 6,.L122
	.cfi_offset 31, -36
	.cfi_offset 30, -40
	.cfi_offset 28, -48
	.cfi_offset 26, -56
	.cfi_offset 25, -60
	.cfi_offset 24, -64
	.cfi_offset 23, -68
	.cfi_offset 20, -80
	.cfi_offset 19, -84
	.cfi_offset 18, -88
	.cfi_offset 17, -92
	.cfi_offset 16, -96
	.cfi_offset 15, -100
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.loc 1 666 0
	lis 10,.LC10@ha
	.loc 1 651 0
	addis 9,3,0x2
	addis 11,4,0x2
	.loc 1 664 0
	lfs 7,68(4)
	lfs 8,72(4)
	.loc 1 666 0
	mtctr 0
	.loc 1 664 0
	lfs 9,76(4)
	.loc 1 651 0
	addi 9,9,-32724
	.loc 1 666 0
	lfs 10,.LC10@l(10)
	.loc 1 651 0
	addi 11,11,-32673
.LVL219:
.L123:
	.loc 1 665 0
	lfs 0,4(9)
	lfs 11,0(9)
	fmuls 0,8,0
	lfs 12,8(9)
	lfs 13,12(9)
	.loc 1 664 0
	addi 9,9,16
.LVL220:
	.loc 1 665 0
	fmadds 0,11,7,0
	fmadds 0,12,9,0
	fsubs 0,0,13
	.loc 1 666 0
	fcmpu 7,0,10
	mfcr 0
	rlwinm 0,0,30,1
	stbu 0,1(11)
	.loc 1 664 0
	bdnz .L123
.LVL221:
.L122:
	.loc 1 672 0
	lis 17,currentshadowlight@ha
	lwz 9,currentshadowlight@l(17)
	lbz 0,46(9)
	cmpwi 7,0,0
	beq- 7,.L121
.LVL222:
	.loc 1 676 0 discriminator 1
	ble- 6,.L121
.LBB3:
	.loc 1 696 0
	lis 9,.LC10@ha
.LBE3:
	.loc 1 651 0
	addis 24,29,0x2
	lis 25,extrudedTimestamp@ha
.LBB4:
	.loc 1 696 0
	lfs 28,.LC10@l(9)
.LBE4:
	.loc 1 651 0
	addi 24,24,-32673
	add 27,21,27
	li 26,0
	lis 18,extrudeTimeStamp@ha
	la 25,extrudedTimestamp@l(25)
.LBB5:
	.loc 1 696 0
	lis 19,sh_visiblevolumes@ha
	.loc 1 702 0
	lis 20,.LC3@ha
	lis 15,.LC14@ha
	.loc 1 698 0
	lis 16,.LC13@ha
.LVL223:
.L130:
.LBE5:
	.loc 1 678 0
	lbzu 0,1(24)
	cmpwi 7,0,0
	beq- 7,.L125
	li 30,0
	la 23,extrudeTimeStamp@l(18)
.L129:
.LBB6:
	.loc 1 651 0
	add 9,27,30
	.loc 1 686 0
	lwz 11,0(23)
	.loc 1 683 0
	lwz 0,4(9)
.LVL224:
	.loc 1 689 0
	mulli 28,0,12
	.loc 1 686 0
	slwi 0,0,2
	lwzx 10,25,0
	.loc 1 691 0
	add 9,22,28
.LVL225:
	.loc 1 689 0
	addi 28,28,96
	.loc 1 686 0
	cmpw 7,10,11
	.loc 1 689 0
	add 31,29,28
	.loc 1 694 0
	mr 3,31
	.loc 1 686 0
	beq- 7,.L126
.LVL226:
	.loc 1 691 0
	lfs 29,44(9)
.LVL227:
	.loc 1 693 0
	lfs 0,68(29)
	.loc 1 691 0
	lfs 30,48(9)
.LVL228:
	.loc 1 693 0
	fsubs 0,29,0
	.loc 1 691 0
	lfs 31,52(9)
.LVL229:
	.loc 1 687 0
	stwx 11,25,0
	.loc 1 693 0
	stfsx 0,29,28
	lfs 0,72(29)
	fsubs 0,30,0
	stfs 0,4(31)
	lfs 0,76(29)
	fsubs 0,31,0
	stfs 0,8(31)
	.loc 1 694 0
	bl Length
.LVL230:
	.loc 1 696 0
	la 9,sh_visiblevolumes@l(19)
	lfs 0,12(9)
	.loc 1 698 0
	mr 3,31
	mr 4,31
	.loc 1 696 0
	fcmpu 7,0,28
	beq- 7,.L127
	.loc 1 698 0
	lfs 13,.LC3@l(20)
	lfs 0,.LC13@l(16)
	fdivs 1,13,1
.LVL231:
	fmuls 1,1,0
	bl VectorScale
.L128:
	.loc 1 704 0
	lfsx 0,29,28
	fadds 29,0,29
.LVL232:
	stfsx 29,29,28
	lfs 13,4(31)
	lfs 0,8(31)
	fadds 30,13,30
.LVL233:
	fadds 31,0,31
.LVL234:
	stfs 30,4(31)
	stfs 31,8(31)
.LVL235:
.L126:
.LBE6:
	.loc 1 681 0
	cmpwi 7,30,8
	addi 30,30,4
	bne+ 7,.L129
.LVL236:
.L125:
	.loc 1 676 0
	lwz 0,64(21)
	addi 26,26,1
.LVL237:
	addi 27,27,28
.LVL238:
	cmpw 7,0,26
	bgt+ 7,.L130
.LVL239:
.L121:
	.loc 1 708 0
	lwz 0,116(1)
	lwz 15,12(1)
	mtlr 0
	lwz 16,16(1)
	lwz 17,20(1)
	lwz 18,24(1)
	lwz 19,28(1)
	lwz 20,32(1)
	lwz 21,36(1)
.LVL240:
	lwz 22,40(1)
.LVL241:
	lwz 23,44(1)
	lwz 24,48(1)
	lwz 25,52(1)
	lwz 26,56(1)
	lwz 27,60(1)
	lwz 28,64(1)
	lwz 29,68(1)
.LVL242:
	lwz 30,72(1)
	lwz 31,76(1)
	lfd 28,80(1)
	lfd 29,88(1)
	lfd 30,96(1)
	lfd 31,104(1)
	addi 1,1,112
	.cfi_remember_state
.LCFI27:
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
.LVL243:
.L127:
.LCFI28:
	.cfi_restore_state
.LBB7:
	.loc 1 702 0
	lfs 0,.LC3@l(20)
	mr 3,31
.LVL244:
	lwz 9,currentshadowlight@l(17)
	mr 4,31
.LVL245:
	fdivs 1,0,1
.LVL246:
	lfs 0,.LC14@l(15)
	lfs 13,36(9)
	fmuls 1,1,13
	fmuls 1,1,0
	bl VectorScale
	b .L128
.LBE7:
	.cfi_endproc
.LFE54:
	.size	R_CalcVolumeVerts, .-R_CalcVolumeVerts
	.align 2
	.globl R_CalcAttenColors
	.type	R_CalcAttenColors, @function
R_CalcAttenColors:
.LFB55:
	.loc 1 711 0
	.cfi_startproc
.LVL247:
	.loc 1 717 0
	lwz 9,12(3)
	.loc 1 711 0
	stwu 1,-16(1)
.LCFI29:
	.cfi_def_cfa_offset 16
	.loc 1 717 0
	lwz 0,112(9)
	.loc 1 714 0
	lis 9,currentshadowlight@ha
	lwz 9,currentshadowlight@l(9)
	.loc 1 717 0
	cmpwi 7,0,0
	.loc 1 714 0
	lfs 11,36(9)
	fmuls 11,11,11
.LVL248:
	.loc 1 717 0
	ble- 7,.L134
	.loc 1 722 0
	lis 10,.LC10@ha
	.loc 1 710 0
	addis 9,4,0x1
	.loc 1 717 0
	lfs 7,68(4)
	.loc 1 722 0
	mtctr 0
	.loc 1 717 0
	lfs 8,72(4)
	.loc 1 710 0
	addi 9,9,8288
	.loc 1 717 0
	lfs 9,76(4)
	li 11,0
	.loc 1 722 0
	lfs 10,.LC10@l(10)
.LVL249:
.L137:
	.loc 1 718 0
	mulli 8,11,12
	.loc 1 722 0
	li 0,0
	.loc 1 717 0
	addi 11,11,1
	.loc 1 718 0
	addi 8,8,32
	add 8,3,8
	.loc 1 719 0
	lfs 12,24(8)
	lfs 13,12(8)
	fsubs 12,12,8
	lfs 0,36(8)
	fsubs 13,13,7
.LVL250:
	fsubs 0,0,9
.LVL251:
	.loc 1 720 0
	fmuls 12,12,12
.LVL252:
	fmadds 13,13,13,12
.LVL253:
	fmadds 0,0,0,13
.LVL254:
	.loc 1 721 0
	fsubs 0,11,0
	fdivs 0,0,11
.LVL255:
	.loc 1 722 0
	fcmpu 7,0,10
	blt- 7,.L136
	fmuls 0,0,0
.LVL256:
	stfs 0,8(1)
	lwz 0,8(1)
.L136:
.LVL257:
	.loc 1 724 0
	stw 0,0(9)
	.loc 1 725 0
	stw 0,4(9)
	.loc 1 726 0
	stw 0,8(9)
	.loc 1 717 0
	addi 9,9,12
	bdnz .L137
.LVL258:
.L134:
	.loc 1 728 0
	addi 1,1,16
.LCFI30:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE55:
	.size	R_CalcAttenColors, .-R_CalcAttenColors
	.align 2
	.globl R_CalcIndeciesForLight
	.type	R_CalcIndeciesForLight, @function
R_CalcIndeciesForLight:
.LFB56:
	.loc 1 731 0
	.cfi_startproc
.LVL259:
	.loc 1 736 0
	lwz 9,12(3)
.LVL260:
	.loc 1 752 0
	addis 5,4,0x2
	.loc 1 751 0
	li 11,0
	.loc 1 753 0
	lwz 12,64(9)
	.loc 1 737 0
	lwz 0,144(9)
	.loc 1 753 0
	cmpwi 6,12,0
	.loc 1 737 0
	add 9,9,0
.LVL261:
	.loc 1 752 0
	li 0,0
	stw 0,-6048(5)
.LVL262:
	.loc 1 753 0
	ble- 6,.L141
	.loc 1 731 0
	addis 10,12,0x2
	addi 8,5,-32673
	addi 0,10,-32673
	.loc 1 753 0
	mr 10,9
	.loc 1 731 0
	add 0,4,0
	.loc 1 751 0
	subf 0,8,0
	mtctr 0
.LVL263:
.L143:
	.loc 1 756 0
	addi 0,11,25112
	.loc 1 757 0
	addi 7,11,25113
	.loc 1 756 0
	slwi 6,0,2
	.loc 1 754 0
	lbzu 0,1(8)
	.loc 1 757 0
	slwi 7,7,2
	.loc 1 754 0
	cmpwi 7,0,0
	.loc 1 758 0
	addi 0,11,25114
	slwi 0,0,2
	.loc 1 754 0
	bne- 7,.L142
	.loc 1 755 0
	lwz 3,-6048(5)
	.loc 1 759 0
	addi 11,11,3
.LVL264:
	.loc 1 755 0
	addi 3,3,1
	stw 3,-6048(5)
	.loc 1 756 0
	lwz 3,0(10)
	stwx 3,4,6
	.loc 1 757 0
	lwz 6,4(10)
	stwx 6,4,7
	.loc 1 758 0
	lwz 7,8(10)
	stwx 7,4,0
.LVL265:
.L142:
	.loc 1 759 0
	addi 10,10,12
	.loc 1 753 0
	bdnz .L143
.LVL266:
.L141:
	.loc 1 763 0
	lis 10,sh_noshadowpopping+12@ha
	lfs 13,sh_noshadowpopping+12@l(10)
	lis 10,.LC10@ha
	lfs 0,.LC10@l(10)
	fcmpu 7,13,0
	beqlr- 7
.LVL267:
	.loc 1 767 0 discriminator 1
	blelr- 6
	.loc 1 731 0
	addis 12,12,0x2
	addi 10,5,-32673
	addi 0,12,-32673
	add 0,4,0
	subf 0,10,0
	mtctr 0
.LVL268:
.L146:
	.loc 1 769 0
	addi 0,11,25112
	.loc 1 770 0
	addi 8,11,25113
	.loc 1 769 0
	slwi 7,0,2
	.loc 1 768 0
	lbzu 0,1(10)
	.loc 1 770 0
	slwi 8,8,2
	.loc 1 768 0
	cmpwi 7,0,0
	.loc 1 771 0
	addi 0,11,25114
	slwi 0,0,2
	.loc 1 768 0
	beq- 7,.L145
	.loc 1 769 0
	lwz 6,0(9)
	.loc 1 772 0
	addi 11,11,3
.LVL269:
	.loc 1 769 0
	stwx 6,4,7
	.loc 1 770 0
	lwz 7,4(9)
	stwx 7,4,8
	.loc 1 771 0
	lwz 8,8(9)
	stwx 8,4,0
.L145:
	.loc 1 772 0
	addi 9,9,12
	.loc 1 767 0
	bdnz .L146
	blr
	.cfi_endproc
.LFE56:
	.size	R_CalcIndeciesForLight, .-R_CalcIndeciesForLight
	.align 2
	.globl dist
	.type	dist, @function
dist:
.LFB57:
	.loc 1 779 0
	.cfi_startproc
.LVL270:
	mflr 0
	stwu 1,-24(1)
.LCFI31:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 781 0
	lfs 12,0(4)
	lfs 13,4(4)
	.loc 1 779 0
	stw 0,28(1)
	.loc 1 781 0
	lfs 0,8(4)
	lfs 9,0(3)
	lfs 10,4(3)
	lfs 11,8(3)
	fsubs 12,9,12
	fsubs 13,10,13
	.loc 1 782 0
	addi 3,1,8
.LVL271:
	.loc 1 781 0
	fsubs 0,11,0
	stfs 12,8(1)
	stfs 13,12(1)
	stfs 0,16(1)
	.loc 1 782 0
	.cfi_offset 65, 4
	bl Length
.LVL272:
	.loc 1 783 0
	lwz 0,28(1)
	addi 1,1,24
.LCFI32:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE57:
	.size	dist, .-dist
	.align 2
	.globl CheckLightUpdate
	.type	CheckLightUpdate, @function
CheckLightUpdate:
.LFB58:
	.loc 1 785 0
	.cfi_startproc
.LVL273:
	.loc 1 789 0
	lis 9,sh_nocache+12@ha
	.loc 1 785 0
	mflr 0
	.loc 1 789 0
	lfs 13,sh_nocache+12@l(9)
	lis 9,.LC10@ha
	lfs 0,.LC10@l(9)
	.loc 1 785 0
	stwu 1,-56(1)
.LCFI33:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	.loc 1 789 0
	fcmpu 7,13,0
	.loc 1 785 0
	stw 31,44(1)
	.loc 1 789 0
	li 31,1
	.cfi_offset 31, -12
	.loc 1 785 0
	stw 0,60(1)
	stfd 31,48(1)
	stw 29,36(1)
	stw 30,40(1)
	.loc 1 789 0
	bne- 7,.L152
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.loc 1 791 0
	lwz 30,56(5)
	cmpw 7,30,3
	beq- 7,.L169
.LVL274:
.L152:
	.loc 1 804 0
	lwz 0,60(1)
	mr 3,31
	lwz 29,36(1)
	mtlr 0
	lwz 30,40(1)
	lwz 31,44(1)
	lfd 31,48(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI34:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL275:
.L169:
.LCFI35:
	.cfi_restore_state
	.loc 1 791 0 discriminator 1
	lis 29,currentshadowlight@ha
	.loc 1 792 0 discriminator 1
	lwz 4,64(5)
.LVL276:
	.loc 1 791 0 discriminator 1
	lwz 0,currentshadowlight@l(29)
	cmpw 7,4,0
	bne+ 7,.L152
	.loc 1 793 0
	addi 3,5,16
.LVL277:
	stw 5,20(1)
	stw 6,24(1)
	bl dist
.LVL278:
	.loc 1 792 0
	lis 9,.LC15@ha
	lwz 5,20(1)
	lfd 31,.LC15@l(9)
	fcmpu 7,1,31
	bnl+ 7,.L152
	.loc 1 794 0
	addi 3,5,4
	addi 4,30,112
	bl dist
	.loc 1 793 0
	lwz 5,20(1)
	fcmpu 7,1,31
	bnl+ 7,.L152
	.loc 1 795 0
	addi 3,5,28
	addi 4,30,148
	bl dist
	.loc 1 794 0
	lis 9,.LC16@ha
	lfs 0,.LC16@l(9)
	lwz 5,20(1)
	fcmpu 7,1,0
	lwz 6,24(1)
	bnl- 7,.L152
	.loc 1 796 0
	lwz 9,currentshadowlight@l(29)
	lis 0,0x4330
	lfs 13,52(5)
	lfs 0,36(9)
	addi 9,1,16
	stw 0,8(1)
	fsubs 0,13,0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,16(1)
	srawi 9,0,31
	xor 0,9,0
	subf 0,9,0
	lis 9,.LC5@ha
	xoris 0,0,0x8000
	lfs 0,.LC5@l(9)
	stw 0,12(1)
	lfd 13,8(1)
	fsub 0,13,0
	.loc 1 795 0
	fcmpu 7,0,31
	cror 30,28,30
	bne- 7,.L152
	.loc 1 797 0
	lwz 9,92(5)
	.loc 1 796 0
	cmpw 7,9,6
	bne+ 7,.L152
	.loc 1 785 0
	lwz 31,8(9)
	lis 9,r_framecount@ha
	lwz 0,r_framecount@l(9)
	xor 31,31,0
	cntlzw 31,31
	srwi 31,31,5
	b .L152
	.cfi_endproc
.LFE58:
	.size	CheckLightUpdate, .-CheckLightUpdate
	.align 2
	.globl CheckHalfAngle
	.type	CheckHalfAngle, @function
CheckHalfAngle:
.LFB59:
	.loc 1 807 0
	.cfi_startproc
.LVL279:
	mflr 0
	stwu 1,-8(1)
.LCFI36:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 808 0
	lis 4,r_refdef+112@ha
	addi 3,3,40
.LVL280:
	la 4,r_refdef+112@l(4)
	.loc 1 807 0
	stw 0,12(1)
	.loc 1 808 0
	.cfi_offset 65, 4
	bl dist
.LVL281:
	lis 9,.LC16@ha
	.loc 1 814 0
	lwz 0,12(1)
	.loc 1 808 0
	lfs 0,.LC16@l(9)
	.loc 1 814 0
	mtlr 0
	addi 1,1,8
.LCFI37:
	.cfi_def_cfa_offset 0
	.loc 1 808 0
	fcmpu 7,1,0
	mfcr 3
	rlwinm 3,3,29,1
	.loc 1 814 0
	xori 3,3,1
	blr
	.cfi_endproc
.LFE59:
	.size	CheckHalfAngle, .-CheckHalfAngle
	.align 2
	.globl R_SetupSurfaceInstantForLight
	.type	R_SetupSurfaceInstantForLight, @function
R_SetupSurfaceInstantForLight:
.LFB60:
	.loc 1 818 0
	.cfi_startproc
.LVL282:
	stwu 1,-32(1)
.LCFI38:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 29,20(1)
	mr 29,5
	.cfi_offset 29, -12
	.cfi_register 65, 0
	stw 0,36(1)
	stw 28,16(1)
	mr 28,4
	.cfi_offset 28, -16
	.cfi_offset 65, 4
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 31,28(1)
	stw 26,8(1)
	stw 27,12(1)
	.loc 1 822 0
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 31, -4
	bl R_AllocateLightInstant
.LVL283:
	.loc 1 823 0
	addis 9,29,0x2
	.loc 1 822 0
	mr 31,3
.LVL284:
	.loc 1 823 0
	stw 3,44(9)
	.loc 1 825 0
	mr 4,31
	mr 3,30
.LVL285:
	bl R_SetupObjectSpace
.LVL286:
	.loc 1 827 0
	mr 3,30
	mr 4,28
	mr 5,31
	mr 6,29
	bl CheckLightUpdate
.LVL287:
	.loc 1 828 0
	cmpwi 7,3,0
	bne- 7,.L176
	.loc 1 850 0
	lis 9,aliasCacheRequests@ha
	.loc 1 853 0
	mr 3,31
.LVL288:
	.loc 1 850 0
	lwz 11,aliasCacheRequests@l(9)
	addi 0,11,1
	stw 0,aliasCacheRequests@l(9)
	.loc 1 853 0
	bl CheckHalfAngle
	cmpwi 7,3,0
	bne- 7,.L175
	.loc 1 861 0
	lis 9,aliasFullCacheHits@ha
	.loc 1 866 0
	lwz 26,8(1)
	.loc 1 861 0
	lwz 11,aliasFullCacheHits@l(9)
	.loc 1 866 0
	lwz 27,12(1)
	.loc 1 861 0
	addi 0,11,1
	.loc 1 866 0
	lwz 28,16(1)
.LVL289:
	.loc 1 861 0
	stw 0,aliasFullCacheHits@l(9)
	.loc 1 865 0
	lis 9,r_framecount@ha
	lwz 0,r_framecount@l(9)
	.loc 1 866 0
	lwz 29,20(1)
.LVL290:
	.loc 1 865 0
	stw 0,0(31)
	.loc 1 866 0
	lwz 0,36(1)
	lwz 30,24(1)
.LVL291:
	mtlr 0
	lwz 31,28(1)
.LVL292:
	addi 1,1,32
	.cfi_remember_state
.LCFI39:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.LVL293:
.L175:
.LCFI40:
	.cfi_restore_state
	.loc 1 855 0
	mr 3,29
	mr 4,31
	bl R_SetupLightHAV
	.loc 1 857 0
	lis 9,r_refdef@ha
	la 9,r_refdef@l(9)
	.loc 1 859 0
	lis 11,aliasPartialCacheHits@ha
	.loc 1 857 0
	lwz 8,112(9)
	lwz 10,116(9)
	.loc 1 859 0
	lwz 7,aliasPartialCacheHits@l(11)
	.loc 1 857 0
	lwz 9,120(9)
	.loc 1 859 0
	addi 0,7,1
	.loc 1 857 0
	stw 8,40(31)
	stw 9,48(31)
	.loc 1 865 0
	lis 9,r_framecount@ha
	.loc 1 859 0
	stw 0,aliasPartialCacheHits@l(11)
	.loc 1 865 0
	lwz 0,r_framecount@l(9)
	.loc 1 857 0
	stw 10,44(31)
	.loc 1 865 0
	stw 0,0(31)
	.loc 1 866 0
	lwz 0,36(1)
	lwz 26,8(1)
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
.LVL294:
	lwz 29,20(1)
.LVL295:
	lwz 30,24(1)
.LVL296:
	lwz 31,28(1)
.LVL297:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI41:
	.cfi_def_cfa_offset 0
	blr
.LVL298:
.L176:
.LCFI42:
	.cfi_restore_state
	.loc 1 830 0
	mr 3,29
.LVL299:
	mr 4,31
	bl R_CalcVolumeVerts
	.loc 1 833 0
	lis 9,gl_cardtype@ha
	lwz 0,gl_cardtype@l(9)
	cmplwi 7,0,1
	ble- 7,.L177
.L173:
	.loc 1 836 0
	mr 3,29
	mr 4,31
	bl R_CalcIndeciesForLight
	.loc 1 840 0
	lis 9,currentshadowlight@ha
	lwz 11,currentshadowlight@l(9)
	.loc 1 850 0
	lis 9,aliasCacheRequests@ha
	.loc 1 839 0
	lwz 26,112(30)
	.loc 1 840 0
	lwz 3,0(11)
	.loc 1 839 0
	lwz 27,116(30)
	.loc 1 840 0
	lwz 4,4(11)
	.loc 1 842 0
	lwz 0,36(11)
	.loc 1 839 0
	lwz 12,120(30)
	.loc 1 840 0
	lwz 5,8(11)
	.loc 1 841 0
	lwz 6,148(30)
	lwz 7,152(30)
	lwz 8,156(30)
	.loc 1 850 0
	lwz 10,aliasCacheRequests@l(9)
	.loc 1 839 0
	stw 26,4(31)
	stw 27,8(31)
	.loc 1 840 0
	stw 3,16(31)
	.loc 1 855 0
	mr 3,29
	.loc 1 840 0
	stw 4,20(31)
	.loc 1 855 0
	mr 4,31
	.loc 1 842 0
	stw 0,52(31)
	.loc 1 850 0
	addi 0,10,1
	.loc 1 843 0
	stw 11,64(31)
	.loc 1 844 0
	stw 29,92(31)
	.loc 1 845 0
	stw 30,56(31)
	.loc 1 846 0
	stw 28,60(31)
	.loc 1 839 0
	stw 12,12(31)
	.loc 1 840 0
	stw 5,24(31)
	.loc 1 841 0
	stw 6,28(31)
	stw 7,32(31)
	stw 8,36(31)
	.loc 1 850 0
	stw 0,aliasCacheRequests@l(9)
	.loc 1 855 0
	bl R_SetupLightHAV
	.loc 1 857 0
	lis 9,r_refdef@ha
	la 9,r_refdef@l(9)
	.loc 1 866 0
	lwz 26,8(1)
	.loc 1 857 0
	lwz 0,120(9)
	lwz 10,112(9)
	lwz 11,116(9)
	.loc 1 865 0
	lis 9,r_framecount@ha
	.loc 1 857 0
	stw 0,48(31)
	.loc 1 865 0
	lwz 0,r_framecount@l(9)
	.loc 1 857 0
	stw 10,40(31)
	.loc 1 865 0
	stw 0,0(31)
	.loc 1 866 0
	lwz 0,36(1)
	.loc 1 857 0
	stw 11,44(31)
	.loc 1 866 0
	mtlr 0
	lwz 27,12(1)
	lwz 28,16(1)
.LVL300:
	lwz 29,20(1)
.LVL301:
	lwz 30,24(1)
.LVL302:
	lwz 31,28(1)
.LVL303:
	addi 1,1,32
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI43:
	.cfi_def_cfa_offset 0
	blr
.LVL304:
.L177:
.LCFI44:
	.cfi_restore_state
	.loc 1 834 0
	mr 3,29
	mr 4,31
	bl R_CalcAttenColors
	b .L173
	.cfi_endproc
.LFE60:
	.size	R_SetupSurfaceInstantForLight, .-R_SetupSurfaceInstantForLight
	.align 2
	.globl R_SetupInstantForLight
	.type	R_SetupInstantForLight, @function
R_SetupInstantForLight:
.LFB61:
	.loc 1 870 0
	.cfi_startproc
.LVL305:
	mflr 0
	stwu 1,-40(1)
.LCFI45:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	stw 27,20(1)
	mr 27,3
	.cfi_offset 27, -20
	stw 0,44(1)
	stw 26,16(1)
	.loc 1 879 0
	lwz 3,160(3)
.LVL306:
	.loc 1 870 0
	stw 28,24(1)
	stw 31,36(1)
	stw 24,8(1)
	stw 25,12(1)
	stw 29,28(1)
	stw 30,32(1)
	.loc 1 879 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 31, -4
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	bl Mod_Extradata
	.loc 1 880 0
	lwz 26,0(3)
	.loc 1 879 0
	mr 28,3
.LVL307:
	.loc 1 881 0
	lwz 31,260(27)
.LVL308:
	.loc 1 883 0
	cmpwi 7,26,0
	ble- 7,.L178
	.loc 1 887 0
	cmpwi 7,31,0
	.loc 1 885 0
	lwz 24,4(3)
.LVL309:
	.loc 1 887 0
	beq- 7,.L180
	.loc 1 895 0
	lis 25,.LC18@ha
	.loc 1 885 0
	add 24,3,24
	.loc 1 869 0
	addi 29,3,4
	.loc 1 883 0
	li 30,0
	.loc 1 895 0
	la 25,.LC18@l(25)
	b .L182
.LVL310:
.L184:
	.loc 1 885 0
	lwzu 24,4(29)
	add 24,28,24
.LVL311:
	.loc 1 887 0
	beq- 6,.L180
.LVL312:
.L182:
	.loc 1 894 0
	lwz 0,12(31)
	.loc 1 883 0
	addi 30,30,1
	.loc 1 895 0
	mr 3,25
	.loc 1 894 0
	cmpw 7,0,24
	beq- 7,.L183
	.loc 1 895 0
	crxor 6,6,6
	bl Con_Printf
	.loc 1 896 0
	stw 24,12(31)
.L183:
	.loc 1 900 0
	mr 5,31
	mr 4,24
	mr 3,27
	bl R_SetupSurfaceInstantForLight
	.loc 1 883 0
	cmpw 7,30,26
	.loc 1 901 0
	lwz 31,0(31)
.LVL313:
	.loc 1 887 0
	cmpwi 6,31,0
	.loc 1 883 0
	bne+ 7,.L184
.LVL314:
.L178:
	.loc 1 903 0
	lwz 0,44(1)
	lwz 24,8(1)
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
.LVL315:
	lwz 27,20(1)
.LVL316:
	lwz 28,24(1)
.LVL317:
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL318:
	addi 1,1,40
	.cfi_remember_state
.LCFI46:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	blr
.LVL319:
.L180:
.LCFI47:
	.cfi_restore_state
	.loc 1 889 0
	lwz 4,160(27)
	lis 3,.LC17@ha
	la 3,.LC17@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 903 0
	lwz 0,44(1)
	lwz 24,8(1)
	mtlr 0
	lwz 25,12(1)
	lwz 26,16(1)
.LVL320:
	lwz 27,20(1)
.LVL321:
	lwz 28,24(1)
.LVL322:
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL323:
	addi 1,1,40
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI48:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE61:
	.size	R_SetupInstantForLight, .-R_SetupInstantForLight
	.comm	aliasPartialCacheHits,4,4
	.comm	aliasFullCacheHits,4,4
	.comm	aliasCacheRequests,4,4
	.comm	LightInstantCache,4,4
	.comm	InstantCache,4,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC3:
	.4byte	1065353216
.LC5:
	.4byte	1501560836
.LC6:
	.4byte	1019809755
.LC8:
	.4byte	1036831949
.LC10:
	.4byte	0
.LC13:
	.4byte	1116471296
.LC14:
	.4byte	1092616192
.LC16:
	.4byte	1056964608
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC11:
	.4byte	1048238066
	.4byte	-1698910392
.LC15:
	.4byte	1069128089
	.4byte	-1717986918
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"Allocated InstantCache at %p\n"
	.zero	2
.LC1:
	.string	"End at %p\n"
	.zero	1
.LC2:
	.string	"Allocated LightInstantCache at %p\n"
	.zero	1
.LC7:
	.string	"R_SetupLerpPoses: no such frame %d\n"
.LC9:
	.string	"R_SetupLerpPoses: invalid pose %d\n"
	.zero	1
.LC12:
	.string	"Could Not Allocate Instant\n"
.LC17:
	.string	"R_SetupInstantForLight: missing instant for %s\n"
.LC18:
	.string	"R_SetupInstantForLight: Model was moved during frame, this is caused by not having enough heap memory.\n"
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
	.file 15 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 16 "d:/Data/Nintendo/TenebraeGX/src/gl_md3.h"
	.file 17 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2c9b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF483
	.byte	0x1
	.4byte	.LASF484
	.4byte	.LASF485
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
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xaa
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
	.4byte	0x122
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x3
	.byte	0x54
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x3
	.byte	0x54
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x3
	.byte	0x55
	.4byte	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x3
	.byte	0x56
	.4byte	0x132
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
	.4byte	0x132
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x142
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x3
	.byte	0x59
	.4byte	0xb7
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x15d
	.uleb128 0xb
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.4byte	0x48
	.4byte	0x16d
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x33
	.4byte	0x17d
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x3
	.byte	0xa5
	.4byte	0x1a2
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
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.byte	0xa9
	.4byte	0x17d
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x1c3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x3a
	.4byte	0x1d3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1e3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x14
	.byte	0x4
	.byte	0x1c
	.4byte	0x232
	.uleb128 0xd
	.string	"x"
	.byte	0x4
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"y"
	.byte	0x4
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x1f
	.4byte	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e3
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x4
	.byte	0x20
	.4byte	0x1e3
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x4
	.byte	0x5
	.byte	0x6f
	.4byte	0x25e
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x5
	.byte	0x71
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x5
	.byte	0x72
	.4byte	0x243
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x6
	.byte	0x16
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x6
	.byte	0x17
	.4byte	0x27f
	.uleb128 0xa
	.4byte	0x269
	.4byte	0x28f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x6
	.byte	0x1e
	.4byte	0x29a
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x2b0
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x2c0
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x48
	.byte	0x7
	.byte	0xef
	.4byte	0x371
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x7
	.byte	0xf1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x7
	.byte	0xf2
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x7
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x7
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x7
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x7
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x7
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x7
	.byte	0xf9
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x7
	.byte	0xfa
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x7
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x7
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x7
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x7
	.byte	0xfe
	.4byte	0x2c0
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x14
	.byte	0x8
	.byte	0x38
	.4byte	0x3dd
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x8
	.byte	0x3a
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x8
	.byte	0x3b
	.4byte	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0x3c
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x8
	.byte	0x3d
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x8
	.byte	0x3e
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x8
	.byte	0x3f
	.4byte	0x3dd
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x37c
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x8
	.byte	0x40
	.4byte	0x37c
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x3ff
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x40f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x41f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x44
	.byte	0x9
	.byte	0x23
	.4byte	0x448
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x9
	.byte	0x25
	.4byte	0x3ff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x9
	.byte	0x26
	.4byte	0x25e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x10
	.byte	0xa
	.byte	0x1e
	.4byte	0x48d
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0xa
	.byte	0x20
	.4byte	0x534
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0xa
	.byte	0x21
	.4byte	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0xa
	.byte	0x22
	.4byte	0x7ae
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xa
	.byte	0x23
	.4byte	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x40
	.byte	0xb
	.byte	0xca
	.4byte	0x534
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xb
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xb
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0xb
	.byte	0xd0
	.4byte	0x1601
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xb
	.byte	0xd2
	.4byte	0xb0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0xb
	.byte	0xd5
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0xb
	.byte	0xd6
	.4byte	0x162c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0xb
	.byte	0xd8
	.4byte	0x1632
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0xb
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"key"
	.byte	0xb
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0xb
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0xb
	.byte	0xdc
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x448
	.uleb128 0xf
	.4byte	.LASF76
	.2byte	0x248
	.byte	0xa
	.byte	0x27
	.4byte	0x7ae
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0xa
	.byte	0x29
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0xa
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0xa
	.byte	0x2d
	.4byte	0x371
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0xa
	.byte	0x2f
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0xa
	.byte	0x30
	.4byte	0x7bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0xa
	.byte	0x31
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0xa
	.byte	0x32
	.4byte	0x7bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0xa
	.byte	0x33
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0xa
	.byte	0x34
	.4byte	0xa89
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0xa
	.byte	0x35
	.4byte	0x53a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0xa
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0xa
	.byte	0x37
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0xa
	.byte	0x38
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0xa
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0xa
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xa
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0xa
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0xa
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0xa
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0xa
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0xa
	.byte	0x44
	.4byte	0xb0c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0xa
	.byte	0x48
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0xa
	.byte	0x49
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0xa
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0xa
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0xa
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0xa
	.byte	0x50
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0xa
	.byte	0x51
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0xa
	.byte	0x52
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0xa
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0xa
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0xa
	.byte	0x57
	.4byte	0xc2c
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0xa
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0xa
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0xa
	.byte	0x5c
	.4byte	0xc32
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0xa
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0xa
	.byte	0x60
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0xa
	.byte	0x61
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0xa
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x9
	.4byte	.LASF105
	.byte	0xa
	.byte	0x63
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0xa
	.byte	0x64
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x540
	.uleb128 0x6
	.4byte	.LASF107
	.byte	0xa
	.byte	0x24
	.4byte	0x448
	.uleb128 0xa
	.4byte	0x269
	.4byte	0x7d5
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF108
	.2byte	0x1a4
	.byte	0xb
	.2byte	0x180
	.4byte	0xa89
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0xb
	.2byte	0x182
	.4byte	0x3ff
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF109
	.byte	0xb
	.2byte	0x183
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0xb
	.2byte	0x185
	.4byte	0x19bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x187
	.4byte	0x11e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0xb
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0xb
	.2byte	0x18e
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0xb
	.2byte	0x18e
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x194
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x195
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF117
	.byte	0xb
	.2byte	0x195
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF118
	.byte	0xb
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0xb
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0xb
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF121
	.byte	0xb
	.2byte	0x19d
	.4byte	0x19c8
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0xb
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0xb
	.2byte	0x1a0
	.4byte	0x15e4
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x11
	.4byte	.LASF99
	.byte	0xb
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x11
	.4byte	.LASF124
	.byte	0xb
	.2byte	0x1a3
	.4byte	0x19ce
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0xb
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x1a6
	.4byte	0x19d4
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0xb
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x11
	.4byte	.LASF128
	.byte	0xb
	.2byte	0x1a9
	.4byte	0x19da
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0xb
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x11
	.4byte	.LASF130
	.byte	0xb
	.2byte	0x1ac
	.4byte	0x19e0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x11
	.4byte	.LASF131
	.byte	0xb
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0xb
	.2byte	0x1af
	.4byte	0x15f0
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x11
	.4byte	.LASF133
	.byte	0xb
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x11
	.4byte	.LASF134
	.byte	0xb
	.2byte	0x1b2
	.4byte	0x1638
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0xb
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x11
	.4byte	.LASF136
	.byte	0xb
	.2byte	0x1b5
	.4byte	0x19e6
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x11
	.4byte	.LASF137
	.byte	0xb
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0xb
	.2byte	0x1b8
	.4byte	0x16a6
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0xb
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x11
	.4byte	.LASF139
	.byte	0xb
	.2byte	0x1bb
	.4byte	0x1632
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x11
	.4byte	.LASF140
	.byte	0xb
	.2byte	0x1bd
	.4byte	0x19ec
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0xb
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x11
	.4byte	.LASF142
	.byte	0xb
	.2byte	0x1c0
	.4byte	0x19fc
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x11
	.4byte	.LASF143
	.byte	0xb
	.2byte	0x1c2
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0xb
	.2byte	0x1c3
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x11
	.4byte	.LASF145
	.byte	0xb
	.2byte	0x1c4
	.4byte	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0xb
	.2byte	0x1c9
	.4byte	0x25e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d5
	.uleb128 0xc
	.4byte	.LASF146
	.byte	0x34
	.byte	0xb
	.byte	0xb6
	.4byte	0xb0c
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xb
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xb
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0xb
	.byte	0xbc
	.4byte	0x1601
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xb
	.byte	0xbe
	.4byte	0xb0c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0xb
	.byte	0xc1
	.4byte	0x15e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0xb
	.byte	0xc2
	.4byte	0x1611
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF148
	.byte	0xb
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0xb
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa8f
	.uleb128 0x12
	.4byte	.LASF149
	.4byte	0x20030
	.byte	0xc
	.2byte	0xa09
	.4byte	0xc2c
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0xc
	.2byte	0xa0f
	.4byte	0xc2c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xc
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF152
	.byte	0xc
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0xc
	.2byte	0xa17
	.4byte	0x1e11
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF154
	.byte	0xc
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF155
	.byte	0xc
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0xc
	.2byte	0xa1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0xc
	.2byte	0xa1d
	.4byte	0xea9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF158
	.byte	0xc
	.2byte	0xa1f
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF159
	.byte	0xc
	.2byte	0xa21
	.4byte	0x1e11
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0xc
	.2byte	0xa25
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF161
	.byte	0xc
	.2byte	0xa2b
	.4byte	0x1e1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF162
	.byte	0xc
	.2byte	0xa2d
	.4byte	0x1e1d
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0xc
	.2byte	0xa2f
	.4byte	0x1e1d
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0xc
	.2byte	0xa31
	.4byte	0x1e1d
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x11
	.4byte	.LASF165
	.byte	0xc
	.2byte	0xa33
	.4byte	0x1e62
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x11
	.4byte	.LASF166
	.byte	0xc
	.2byte	0xa37
	.4byte	0x1e73
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb12
	.uleb128 0xa
	.4byte	0x33
	.4byte	0xc42
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF167
	.byte	0xa
	.byte	0x66
	.4byte	0x540
	.uleb128 0x8
	.byte	0x94
	.byte	0xa
	.byte	0x69
	.4byte	0xdb7
	.uleb128 0x9
	.4byte	.LASF168
	.byte	0xa
	.byte	0x6b
	.4byte	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0xa
	.byte	0x6d
	.4byte	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF170
	.byte	0xa
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0xa
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF172
	.byte	0xa
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0xa
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0xa
	.byte	0x70
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0xa
	.byte	0x72
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0xa
	.byte	0x72
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0xa
	.byte	0x73
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF178
	.byte	0xa
	.byte	0x73
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF179
	.byte	0xa
	.byte	0x74
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.4byte	.LASF180
	.byte	0xa
	.byte	0x75
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF181
	.byte	0xa
	.byte	0x76
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF182
	.byte	0xa
	.byte	0x76
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF183
	.byte	0xa
	.byte	0x78
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.4byte	.LASF184
	.byte	0xa
	.byte	0x79
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF185
	.byte	0xa
	.byte	0x7a
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF186
	.byte	0xa
	.byte	0x7c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.4byte	.LASF187
	.byte	0xa
	.byte	0x7d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0xa
	.byte	0x7f
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0xa
	.byte	0x80
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF190
	.byte	0xa
	.byte	0x82
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.4byte	.LASF191
	.byte	0xa
	.byte	0x82
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x9
	.4byte	.LASF192
	.byte	0xa
	.byte	0x84
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0
	.uleb128 0x6
	.4byte	.LASF193
	.byte	0xa
	.byte	0x85
	.4byte	0xc4d
	.uleb128 0x8
	.byte	0x18
	.byte	0xd
	.byte	0x16
	.4byte	0xe03
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0xd
	.byte	0x18
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF194
	.byte	0xd
	.byte	0x1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF195
	.byte	0xd
	.byte	0x1c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0xd
	.byte	0x1d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF197
	.byte	0xd
	.byte	0x21
	.4byte	0xdc2
	.uleb128 0x13
	.2byte	0x402c
	.byte	0xd
	.byte	0x29
	.4byte	0xe5e
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0xd
	.byte	0x2b
	.4byte	0x40f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0xd
	.byte	0x2c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF199
	.byte	0xd
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0xd
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF201
	.byte	0xd
	.byte	0x2f
	.4byte	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF202
	.byte	0xd
	.byte	0x30
	.4byte	0xe0e
	.uleb128 0x8
	.byte	0x10
	.byte	0xd
	.byte	0x32
	.4byte	0xe8e
	.uleb128 0x9
	.4byte	.LASF203
	.byte	0xd
	.byte	0x34
	.4byte	0xe8e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF204
	.byte	0xd
	.byte	0x35
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0xe9e
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF205
	.byte	0xd
	.byte	0x36
	.4byte	0xe69
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc42
	.uleb128 0x13
	.2byte	0xce8
	.byte	0xd
	.byte	0x9a
	.4byte	0x114a
	.uleb128 0x9
	.4byte	.LASF206
	.byte	0xd
	.byte	0x9c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"cmd"
	.byte	0xd
	.byte	0xa0
	.4byte	0xe03
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0xd
	.byte	0xa3
	.4byte	0x114a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF208
	.byte	0xd
	.byte	0xa4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0xd
	.byte	0xa5
	.4byte	0x115a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF210
	.byte	0xd
	.byte	0xa6
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x9
	.4byte	.LASF211
	.byte	0xd
	.byte	0xa8
	.4byte	0x116a
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x9
	.4byte	.LASF212
	.byte	0xd
	.byte	0xa9
	.4byte	0x116a
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x9
	.4byte	.LASF213
	.byte	0xd
	.byte	0xaf
	.4byte	0x7bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0xd
	.byte	0xb1
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0x9
	.4byte	.LASF214
	.byte	0xd
	.byte	0xb3
	.4byte	0x7bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0x9
	.4byte	.LASF215
	.byte	0xd
	.byte	0xb5
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x9
	.4byte	.LASF216
	.byte	0xd
	.byte	0xb7
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0x9
	.4byte	.LASF217
	.byte	0xd
	.byte	0xba
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0x9
	.4byte	.LASF218
	.byte	0xd
	.byte	0xbb
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0x9
	.4byte	.LASF219
	.byte	0xd
	.byte	0xbc
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x9
	.4byte	.LASF220
	.byte	0xd
	.byte	0xbd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0x9
	.4byte	.LASF221
	.byte	0xd
	.byte	0xbe
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0x9
	.4byte	.LASF222
	.byte	0xd
	.byte	0xc0
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF223
	.byte	0xd
	.byte	0xc1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF224
	.byte	0xd
	.byte	0xc3
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0x9
	.4byte	.LASF225
	.byte	0xd
	.byte	0xc4
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x219
	.uleb128 0x9
	.4byte	.LASF226
	.byte	0xd
	.byte	0xc5
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x21a
	.uleb128 0x9
	.4byte	.LASF227
	.byte	0xd
	.byte	0xc7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0x9
	.4byte	.LASF228
	.byte	0xd
	.byte	0xc8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.4byte	.LASF229
	.byte	0xd
	.byte	0xca
	.4byte	0x117a
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x9
	.4byte	.LASF230
	.byte	0xd
	.byte	0xcb
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0x9
	.4byte	.LASF231
	.byte	0xd
	.byte	0xce
	.4byte	0x73
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0x9
	.4byte	.LASF232
	.byte	0xd
	.byte	0xd2
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0x9
	.4byte	.LASF233
	.byte	0xd
	.byte	0xd7
	.4byte	0x118a
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0x9
	.4byte	.LASF234
	.byte	0xd
	.byte	0xd8
	.4byte	0x119a
	.byte	0x3
	.byte	0x23
	.uleb128 0x64c
	.uleb128 0x9
	.4byte	.LASF235
	.byte	0xd
	.byte	0xda
	.4byte	0x11b0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4c
	.uleb128 0x9
	.4byte	.LASF236
	.byte	0xd
	.byte	0xdb
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa74
	.uleb128 0x9
	.4byte	.LASF237
	.byte	0xd
	.byte	0xdc
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0x9
	.4byte	.LASF238
	.byte	0xd
	.byte	0xdd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7c
	.uleb128 0x9
	.4byte	.LASF239
	.byte	0xd
	.byte	0xe0
	.4byte	0xa89
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0x9
	.4byte	.LASF240
	.byte	0xd
	.byte	0xe1
	.4byte	0x53a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0x9
	.4byte	.LASF241
	.byte	0xd
	.byte	0xe2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0x9
	.4byte	.LASF242
	.byte	0xd
	.byte	0xe3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0x9
	.4byte	.LASF243
	.byte	0xd
	.byte	0xe4
	.4byte	0xc42
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0x9
	.4byte	.LASF244
	.byte	0xd
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd8
	.uleb128 0x9
	.4byte	.LASF245
	.byte	0xd
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcdc
	.uleb128 0x9
	.4byte	.LASF246
	.byte	0xd
	.byte	0xe9
	.4byte	0x11c0
	.byte	0x3
	.byte	0x23
	.uleb128 0xce0
	.uleb128 0x9
	.4byte	.LASF247
	.byte	0xd
	.byte	0xf2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xce4
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x115a
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x116a
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xa
	.4byte	0xe9e
	.4byte	0x117a
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x73
	.4byte	0x118a
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0xa89
	.4byte	0x119a
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.4byte	0x11aa
	.4byte	0x11aa
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41f
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x11c0
	.uleb128 0xb
	.4byte	0x48
	.byte	0x27
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe5e
	.uleb128 0x6
	.4byte	.LASF248
	.byte	0xd
	.byte	0xf3
	.4byte	0xeaf
	.uleb128 0x14
	.byte	0x4
	.byte	0xe
	.byte	0x34
	.4byte	0x11e6
	.uleb128 0x15
	.4byte	.LASF249
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF250
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF251
	.byte	0xe
	.byte	0x34
	.4byte	0x11d1
	.uleb128 0x8
	.byte	0x4
	.byte	0xe
	.byte	0x64
	.4byte	0x1214
	.uleb128 0xd
	.string	"v"
	.byte	0xe
	.byte	0x65
	.4byte	0x1214
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF252
	.byte	0xe
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1224
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF253
	.byte	0xe
	.byte	0x67
	.4byte	0x11f1
	.uleb128 0x8
	.byte	0x10
	.byte	0xe
	.byte	0x6a
	.4byte	0x1252
	.uleb128 0xd
	.string	"v"
	.byte	0xe
	.byte	0x6b
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF252
	.byte	0xe
	.byte	0x6c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF254
	.byte	0xe
	.byte	0x6d
	.4byte	0x122f
	.uleb128 0x8
	.byte	0xc
	.byte	0xb
	.byte	0x3b
	.4byte	0x1274
	.uleb128 0x9
	.4byte	.LASF255
	.byte	0xb
	.byte	0x3d
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF256
	.byte	0xb
	.byte	0x3e
	.4byte	0x125d
	.uleb128 0xc
	.4byte	.LASF257
	.byte	0x14
	.byte	0xb
	.byte	0x52
	.4byte	0x12d2
	.uleb128 0x9
	.4byte	.LASF258
	.byte	0xb
	.byte	0x54
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF259
	.byte	0xb
	.byte	0x55
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0xb
	.byte	0x56
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF260
	.byte	0xb
	.byte	0x57
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xd
	.string	"pad"
	.byte	0xb
	.byte	0x58
	.4byte	0x12d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x12e2
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF261
	.byte	0xb
	.byte	0x59
	.4byte	0x127f
	.uleb128 0xc
	.4byte	.LASF262
	.byte	0x48
	.byte	0xb
	.byte	0x5b
	.4byte	0x13a2
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0xb
	.byte	0x5d
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0xb
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0xb
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF263
	.byte	0xb
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF264
	.byte	0xb
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF265
	.byte	0xb
	.byte	0x61
	.4byte	0x14c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF266
	.byte	0xb
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF267
	.byte	0xb
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF268
	.byte	0xb
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF269
	.byte	0xb
	.byte	0x64
	.4byte	0x14cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF270
	.byte	0xb
	.byte	0x65
	.4byte	0x14cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF271
	.byte	0xb
	.byte	0x66
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF272
	.byte	0x5c
	.byte	0xb
	.byte	0x96
	.4byte	0x14c7
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xb
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0xb
	.byte	0x9a
	.4byte	0x15e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0xb
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF273
	.byte	0xb
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF127
	.byte	0xb
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF274
	.byte	0xb
	.byte	0xa0
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF275
	.byte	0xb
	.byte	0xa1
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF276
	.byte	0xb
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF277
	.byte	0xb
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF278
	.byte	0xb
	.byte	0xa5
	.4byte	0x15ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF265
	.byte	0xb
	.byte	0xa6
	.4byte	0x14c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF279
	.byte	0xb
	.byte	0xa7
	.4byte	0x14c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF132
	.byte	0xb
	.byte	0xa9
	.4byte	0x15f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0xb
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0xb
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF280
	.byte	0xb
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF281
	.byte	0xb
	.byte	0xb0
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF282
	.byte	0xb
	.byte	0xb1
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF283
	.byte	0xb
	.byte	0xb2
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF284
	.byte	0xb
	.byte	0xb3
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13a2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x12ed
	.uleb128 0x6
	.4byte	.LASF285
	.byte	0xb
	.byte	0x67
	.4byte	0x12ed
	.uleb128 0x8
	.byte	0x8
	.byte	0xb
	.byte	0x78
	.4byte	0x1501
	.uleb128 0xd
	.string	"v"
	.byte	0xb
	.byte	0x7a
	.4byte	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF286
	.byte	0xb
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF287
	.byte	0xb
	.byte	0x7c
	.4byte	0x14de
	.uleb128 0x8
	.byte	0x2c
	.byte	0xb
	.byte	0x7e
	.4byte	0x154d
	.uleb128 0x9
	.4byte	.LASF288
	.byte	0xb
	.byte	0x80
	.4byte	0x1ad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF289
	.byte	0xb
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF290
	.byte	0xb
	.byte	0x82
	.4byte	0x154d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0xb
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x14d3
	.uleb128 0x6
	.4byte	.LASF291
	.byte	0xb
	.byte	0x84
	.4byte	0x150c
	.uleb128 0xc
	.4byte	.LASF292
	.byte	0x1c
	.byte	0xb
	.byte	0x8a
	.4byte	0x15cd
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0xb
	.byte	0x8c
	.4byte	0x15cd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF293
	.byte	0xb
	.byte	0x8d
	.4byte	0x15cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF294
	.byte	0xb
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0xb
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0xb
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF295
	.byte	0xb
	.byte	0x92
	.4byte	0x15d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF296
	.byte	0xb
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x155e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x15cd
	.uleb128 0x6
	.4byte	.LASF297
	.byte	0xb
	.byte	0x94
	.4byte	0x155e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x12e2
	.uleb128 0x5
	.byte	0x4
	.4byte	0x15d9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1553
	.uleb128 0x6
	.4byte	.LASF298
	.byte	0xb
	.byte	0xb4
	.4byte	0x13a2
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x1611
	.uleb128 0xb
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xb0c
	.4byte	0x1621
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF299
	.byte	0xb
	.byte	0xc6
	.4byte	0xa8f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7b4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1638
	.uleb128 0x5
	.byte	0x4
	.4byte	0x15f6
	.uleb128 0x6
	.4byte	.LASF300
	.byte	0xb
	.byte	0xdd
	.4byte	0x48d
	.uleb128 0x8
	.byte	0x28
	.byte	0xb
	.byte	0xe0
	.4byte	0x16a6
	.uleb128 0x9
	.4byte	.LASF138
	.byte	0xb
	.byte	0xe2
	.4byte	0x16a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0xb
	.byte	0xe3
	.4byte	0x15e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF301
	.byte	0xb
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF302
	.byte	0xb
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF303
	.byte	0xb
	.byte	0xe6
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF304
	.byte	0xb
	.byte	0xe7
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a2
	.uleb128 0x6
	.4byte	.LASF305
	.byte	0xb
	.byte	0xe8
	.4byte	0x1649
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x16
	.byte	0x28
	.byte	0xb
	.2byte	0x11e
	.4byte	0x1730
	.uleb128 0x11
	.4byte	.LASF306
	.byte	0xb
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF307
	.byte	0xb
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF308
	.byte	0xb
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF309
	.byte	0xb
	.2byte	0x123
	.4byte	0x1224
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF310
	.byte	0xb
	.2byte	0x124
	.4byte	0x1224
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0xb
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0xb
	.2byte	0x126
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x17
	.4byte	.LASF311
	.byte	0xb
	.2byte	0x127
	.4byte	0x16bd
	.uleb128 0x18
	.4byte	.LASF312
	.byte	0x1c
	.byte	0xb
	.2byte	0x13a
	.4byte	0x1777
	.uleb128 0x11
	.4byte	.LASF313
	.byte	0xb
	.2byte	0x13b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF314
	.byte	0xb
	.2byte	0x13c
	.4byte	0xe8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF295
	.byte	0xb
	.2byte	0x13d
	.4byte	0xe8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x17
	.4byte	.LASF315
	.byte	0xb
	.2byte	0x13e
	.4byte	0x173c
	.uleb128 0x19
	.2byte	0x53c
	.byte	0xb
	.2byte	0x142
	.4byte	0x1968
	.uleb128 0x11
	.4byte	.LASF316
	.byte	0xb
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF317
	.byte	0xb
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF318
	.byte	0xb
	.2byte	0x145
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF319
	.byte	0xb
	.2byte	0x146
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF320
	.byte	0xb
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x11
	.4byte	.LASF321
	.byte	0xb
	.2byte	0x148
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF322
	.byte	0xb
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.4byte	.LASF323
	.byte	0xb
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF324
	.byte	0xb
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF294
	.byte	0xb
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF325
	.byte	0xb
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x14f
	.4byte	0x11e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0xb
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF326
	.byte	0xb
	.2byte	0x151
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0xb
	.2byte	0x153
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0xb
	.2byte	0x153
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF307
	.byte	0xb
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x11
	.4byte	.LASF327
	.byte	0xb
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x11
	.4byte	.LASF328
	.byte	0xb
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x11
	.4byte	.LASF329
	.byte	0xb
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x11
	.4byte	.LASF330
	.byte	0xb
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x11
	.4byte	.LASF123
	.byte	0xb
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0xb
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x11
	.4byte	.LASF331
	.byte	0xb
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x11
	.4byte	.LASF332
	.byte	0xb
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x11
	.4byte	.LASF333
	.byte	0xb
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x11
	.4byte	.LASF263
	.byte	0xb
	.2byte	0x15e
	.4byte	0x1968
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x11
	.4byte	.LASF334
	.byte	0xb
	.2byte	0x15f
	.4byte	0x1968
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x11
	.4byte	.LASF335
	.byte	0xb
	.2byte	0x160
	.4byte	0x114a
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x11
	.4byte	.LASF336
	.byte	0xb
	.2byte	0x161
	.4byte	0x197e
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x197e
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x1730
	.4byte	0x198e
	.uleb128 0xb
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF337
	.byte	0xb
	.2byte	0x162
	.4byte	0x1783
	.uleb128 0x1a
	.byte	0x4
	.byte	0xb
	.2byte	0x172
	.4byte	0x19bc
	.uleb128 0x15
	.4byte	.LASF338
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF339
	.sleb128 1
	.uleb128 0x15
	.4byte	.LASF340
	.sleb128 2
	.uleb128 0x15
	.4byte	.LASF341
	.sleb128 3
	.byte	0
	.uleb128 0x17
	.4byte	.LASF342
	.byte	0xb
	.2byte	0x172
	.4byte	0x199a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x142
	.uleb128 0x5
	.byte	0x4
	.4byte	0x163e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1274
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1501
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1621
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xa
	.4byte	0x16ac
	.4byte	0x19fc
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x154d
	.uleb128 0x8
	.byte	0x10
	.byte	0xf
	.byte	0x16
	.4byte	0x1a27
	.uleb128 0x9
	.4byte	.LASF258
	.byte	0xf
	.byte	0x18
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF259
	.byte	0xf
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF343
	.byte	0xf
	.byte	0x1a
	.4byte	0x1a02
	.uleb128 0x1a
	.byte	0x4
	.byte	0xc
	.2byte	0x94f
	.4byte	0x1a6c
	.uleb128 0x15
	.4byte	.LASF344
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF345
	.sleb128 1
	.uleb128 0x15
	.4byte	.LASF346
	.sleb128 2
	.uleb128 0x15
	.4byte	.LASF347
	.sleb128 3
	.uleb128 0x15
	.4byte	.LASF348
	.sleb128 4
	.uleb128 0x1b
	.string	"ARB"
	.sleb128 5
	.uleb128 0x15
	.4byte	.LASF349
	.sleb128 6
	.uleb128 0x1b
	.string	"GL2"
	.sleb128 7
	.byte	0
	.uleb128 0x17
	.4byte	.LASF350
	.byte	0xc
	.2byte	0x961
	.4byte	0x1a32
	.uleb128 0x18
	.4byte	.LASF351
	.byte	0x14
	.byte	0xc
	.2byte	0x981
	.4byte	0x1aa4
	.uleb128 0x11
	.4byte	.LASF352
	.byte	0xc
	.2byte	0x983
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF56
	.byte	0xc
	.2byte	0x985
	.4byte	0x1aa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a78
	.uleb128 0x17
	.4byte	.LASF353
	.byte	0xc
	.2byte	0x987
	.4byte	0x1a78
	.uleb128 0x1c
	.4byte	.LASF402
	.byte	0x4
	.byte	0xc
	.2byte	0x98d
	.4byte	0x1af4
	.uleb128 0x1d
	.4byte	.LASF354
	.byte	0xc
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1d
	.4byte	.LASF355
	.byte	0xc
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1d
	.4byte	.LASF356
	.byte	0xc
	.2byte	0x993
	.4byte	0x269
	.uleb128 0x1d
	.4byte	.LASF357
	.byte	0xc
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x17
	.4byte	.LASF358
	.byte	0xc
	.2byte	0x997
	.4byte	0x1ab6
	.uleb128 0x10
	.4byte	.LASF359
	.2byte	0x890
	.byte	0xc
	.2byte	0x99d
	.4byte	0x1cb4
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0xc
	.2byte	0x99f
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF360
	.byte	0xc
	.2byte	0x9a1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0xc
	.2byte	0x9a1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF114
	.byte	0xc
	.2byte	0x9a3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF361
	.byte	0xc
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF362
	.byte	0xc
	.2byte	0x9a9
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF363
	.byte	0xc
	.2byte	0x9ab
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x11
	.4byte	.LASF364
	.byte	0xc
	.2byte	0x9ad
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x11
	.4byte	.LASF365
	.byte	0xc
	.2byte	0x9af
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0xc
	.2byte	0x9b1
	.4byte	0x19ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1e
	.string	"vis"
	.byte	0xc
	.2byte	0x9b3
	.4byte	0x1cb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF366
	.byte	0xc
	.2byte	0x9b5
	.4byte	0x1cb4
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x11
	.4byte	.LASF367
	.byte	0xc
	.2byte	0x9b7
	.4byte	0x1632
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x11
	.4byte	.LASF368
	.byte	0xc
	.2byte	0x9b9
	.4byte	0x19e6
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x11
	.4byte	.LASF369
	.byte	0xc
	.2byte	0x9bb
	.4byte	0x16b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x11
	.4byte	.LASF370
	.byte	0xc
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x11
	.4byte	.LASF371
	.byte	0xc
	.2byte	0x9bf
	.4byte	0x1cc5
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x11
	.4byte	.LASF372
	.byte	0xc
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0xc
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x11
	.4byte	.LASF373
	.byte	0xc
	.2byte	0x9c5
	.4byte	0xea9
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x11
	.4byte	.LASF374
	.byte	0xc
	.2byte	0x9c7
	.4byte	0x1aaa
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x11
	.4byte	.LASF375
	.byte	0xc
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0xc
	.2byte	0x9cb
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x11
	.4byte	.LASF376
	.byte	0xc
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x11
	.4byte	.LASF377
	.byte	0xc
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x11
	.4byte	.LASF378
	.byte	0xc
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x11
	.4byte	.LASF379
	.byte	0xc
	.2byte	0x9d3
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1cc5
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1af4
	.uleb128 0x17
	.4byte	.LASF380
	.byte	0xc
	.2byte	0x9d5
	.4byte	0x1b00
	.uleb128 0x12
	.4byte	.LASF381
	.4byte	0x1e864
	.byte	0xc
	.2byte	0x9db
	.4byte	0x1e11
	.uleb128 0x11
	.4byte	.LASF151
	.byte	0xc
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF382
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF383
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF384
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x11
	.4byte	.LASF385
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF386
	.byte	0xc
	.2byte	0x9e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0xc
	.2byte	0x9e5
	.4byte	0xea9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF387
	.byte	0xc
	.2byte	0x9e7
	.4byte	0x1e11
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF388
	.byte	0xc
	.2byte	0x9e9
	.4byte	0x1e17
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF389
	.byte	0xc
	.2byte	0x9eb
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF188
	.byte	0xc
	.2byte	0x9eb
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF390
	.byte	0xc
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x11
	.4byte	.LASF391
	.byte	0xc
	.2byte	0x9f3
	.4byte	0x1e1d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x11
	.4byte	.LASF392
	.byte	0xc
	.2byte	0x9f5
	.4byte	0x1e1d
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x11
	.4byte	.LASF393
	.byte	0xc
	.2byte	0x9f7
	.4byte	0x1e1d
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x11
	.4byte	.LASF200
	.byte	0xc
	.2byte	0x9f9
	.4byte	0x1e1d
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x11
	.4byte	.LASF394
	.byte	0xc
	.2byte	0x9fb
	.4byte	0x1e34
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x11
	.4byte	.LASF333
	.byte	0xc
	.2byte	0x9ff
	.4byte	0x1e45
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x11
	.4byte	.LASF325
	.byte	0xc
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x198e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ccb
	.uleb128 0xa
	.4byte	0x269
	.4byte	0x1e34
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.4byte	0x1e45
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x1e56
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x17
	.4byte	.LASF395
	.byte	0xc
	.2byte	0xa05
	.4byte	0x1cd7
	.uleb128 0xa
	.4byte	0x1a27
	.4byte	0x1e73
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e56
	.uleb128 0x17
	.4byte	.LASF396
	.byte	0xc
	.2byte	0xa39
	.4byte	0xb12
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a27
	.uleb128 0x6
	.4byte	.LASF397
	.byte	0x10
	.byte	0x9
	.4byte	0x41
	.uleb128 0xc
	.4byte	.LASF398
	.byte	0x8
	.byte	0x10
	.byte	0x13
	.4byte	0x1ebf
	.uleb128 0x9
	.4byte	.LASF399
	.byte	0x10
	.byte	0x14
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF400
	.byte	0x10
	.byte	0x16
	.4byte	0x1ebf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xa
	.4byte	0x1e8b
	.4byte	0x1ecf
	.uleb128 0xb
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF401
	.byte	0x10
	.byte	0x17
	.4byte	0x1e96
	.uleb128 0x1c
	.4byte	.LASF403
	.byte	0x4
	.byte	0x11
	.2byte	0x490
	.4byte	0x1f3a
	.uleb128 0x1f
	.string	"U8"
	.byte	0x11
	.2byte	0x492
	.4byte	0x1f3a
	.uleb128 0x1f
	.string	"S8"
	.byte	0x11
	.2byte	0x493
	.4byte	0x1f3f
	.uleb128 0x1f
	.string	"U16"
	.byte	0x11
	.2byte	0x494
	.4byte	0x1f44
	.uleb128 0x1f
	.string	"S16"
	.byte	0x11
	.2byte	0x495
	.4byte	0x1f49
	.uleb128 0x1f
	.string	"U32"
	.byte	0x11
	.2byte	0x496
	.4byte	0x1f4e
	.uleb128 0x1f
	.string	"S32"
	.byte	0x11
	.2byte	0x497
	.4byte	0x1f53
	.uleb128 0x1f
	.string	"F32"
	.byte	0x11
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
	.4byte	.LASF404
	.byte	0x11
	.2byte	0x499
	.4byte	0x1eda
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF410
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.4byte	0x1faf
	.uleb128 0x21
	.string	"low"
	.byte	0x1
	.byte	0x48
	.4byte	0x5d
	.4byte	.LLST1
	.uleb128 0x22
	.byte	0x1
	.4byte	.LASF486
	.byte	0x1
	.byte	0x48
	.4byte	0x41
	.byte	0x1
	.4byte	0x1f9f
	.uleb128 0x23
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF487
	.byte	0x1
	.byte	0x55
	.4byte	0x41
	.byte	0x1
	.uleb128 0x23
	.byte	0
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF408
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.4byte	0x2020
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2020
	.uleb128 0x26
	.string	"e"
	.byte	0x1
	.byte	0x5d
	.4byte	0xea9
	.4byte	.LLST2
	.uleb128 0x27
	.4byte	.LASF405
	.byte	0x1
	.byte	0x5d
	.4byte	0x2020
	.4byte	.LLST3
	.uleb128 0x28
	.4byte	.LASF153
	.byte	0x1
	.byte	0x5d
	.4byte	0x1e11
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x5f
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0x29
	.4byte	.LASF406
	.byte	0x1
	.byte	0x5f
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0x29
	.4byte	.LASF407
	.byte	0x1
	.byte	0x5f
	.4byte	0x41
	.4byte	.LLST6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e79
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF409
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.4byte	0x1e73
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2088
	.uleb128 0x26
	.string	"e"
	.byte	0x1
	.byte	0x7d
	.4byte	0xea9
	.4byte	.LLST7
	.uleb128 0x28
	.4byte	.LASF153
	.byte	0x1
	.byte	0x7d
	.4byte	0x1e11
	.byte	0x1
	.byte	0x54
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x7f
	.4byte	0x41
	.4byte	.LLST8
	.uleb128 0x29
	.4byte	.LASF406
	.byte	0x1
	.byte	0x7f
	.4byte	0x41
	.4byte	.LLST9
	.uleb128 0x29
	.4byte	.LASF407
	.byte	0x1
	.byte	0x7f
	.4byte	0x41
	.4byte	.LLST10
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF411
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x20ae
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xad
	.4byte	0x41
	.4byte	.LLST11
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.4byte	.LASF412
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2144
	.uleb128 0x28
	.4byte	.LASF153
	.byte	0x1
	.byte	0xe9
	.4byte	0x1e11
	.byte	0x1
	.byte	0x53
	.uleb128 0x28
	.4byte	.LASF413
	.byte	0x1
	.byte	0xe9
	.4byte	0x2020
	.byte	0x1
	.byte	0x54
	.uleb128 0x27
	.4byte	.LASF95
	.byte	0x1
	.byte	0xe9
	.4byte	0x41
	.4byte	.LLST12
	.uleb128 0x28
	.4byte	.LASF96
	.byte	0x1
	.byte	0xe9
	.4byte	0x41
	.byte	0x1
	.byte	0x56
	.uleb128 0x28
	.4byte	.LASF94
	.byte	0x1
	.byte	0xe9
	.4byte	0x7a
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x2b
	.4byte	.LASF414
	.byte	0x1
	.byte	0xea
	.4byte	0x7a
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x29
	.4byte	.LASF415
	.byte	0x1
	.byte	0xeb
	.4byte	0x2144
	.4byte	.LLST13
	.uleb128 0x29
	.4byte	.LASF416
	.byte	0x1
	.byte	0xec
	.4byte	0x2144
	.4byte	.LLST14
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xed
	.4byte	0x41
	.4byte	.LLST15
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1252
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF417
	.byte	0x1
	.2byte	0x102
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST16
	.4byte	0x222f
	.uleb128 0x2d
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x102
	.4byte	0x1e11
	.4byte	.LLST17
	.uleb128 0x2d
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x102
	.4byte	0x2020
	.4byte	.LLST18
	.uleb128 0x2d
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x102
	.4byte	0x41
	.4byte	.LLST19
	.uleb128 0x2d
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x102
	.4byte	0x41
	.4byte	.LLST20
	.uleb128 0x2d
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x102
	.4byte	0x7a
	.4byte	.LLST21
	.uleb128 0x2e
	.4byte	.LASF414
	.byte	0x1
	.2byte	0x103
	.4byte	0x7a
	.4byte	.LLST22
	.uleb128 0x2f
	.string	"lat"
	.byte	0x1
	.2byte	0x103
	.4byte	0x7a
	.4byte	.LLST23
	.uleb128 0x30
	.string	"lng"
	.byte	0x1
	.2byte	0x103
	.4byte	0x7a
	.uleb128 0x2e
	.4byte	.LASF415
	.byte	0x1
	.2byte	0x104
	.4byte	0x2144
	.4byte	.LLST24
	.uleb128 0x2e
	.4byte	.LASF416
	.byte	0x1
	.2byte	0x105
	.4byte	0x2144
	.4byte	.LLST25
	.uleb128 0x2e
	.4byte	.LASF418
	.byte	0x1
	.2byte	0x106
	.4byte	0x274
	.4byte	.LLST26
	.uleb128 0x2e
	.4byte	.LASF419
	.byte	0x1
	.2byte	0x106
	.4byte	0x274
	.4byte	.LLST27
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x107
	.4byte	0x41
	.4byte	.LLST28
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x130
	.byte	0x1
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x22e7
	.uleb128 0x32
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x130
	.4byte	0x1e11
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x130
	.4byte	0x2020
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x130
	.4byte	0x41
	.4byte	.LLST29
	.uleb128 0x2d
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x130
	.4byte	0x41
	.4byte	.LLST30
	.uleb128 0x32
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x130
	.4byte	0x7a
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x33
	.4byte	.LASF414
	.byte	0x1
	.2byte	0x131
	.4byte	0x7a
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x2e
	.4byte	.LASF415
	.byte	0x1
	.2byte	0x132
	.4byte	0x22e7
	.4byte	.LLST31
	.uleb128 0x33
	.4byte	.LASF416
	.byte	0x1
	.2byte	0x133
	.4byte	0x22e7
	.byte	0x1
	.byte	0x59
	.uleb128 0x34
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x134
	.4byte	0x16b7
	.uleb128 0x34
	.4byte	.LASF422
	.byte	0x1
	.2byte	0x134
	.4byte	0x16b7
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x135
	.4byte	0x41
	.4byte	.LLST32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x274
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF423
	.byte	0x1
	.2byte	0x14e
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x23a3
	.uleb128 0x32
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x14e
	.4byte	0x1e11
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x14e
	.4byte	0x2020
	.byte	0x1
	.byte	0x54
	.uleb128 0x32
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x14e
	.4byte	0x41
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x14e
	.4byte	0x41
	.4byte	.LLST33
	.uleb128 0x32
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x14e
	.4byte	0x7a
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x33
	.4byte	.LASF414
	.byte	0x1
	.2byte	0x14f
	.4byte	0x7a
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x2e
	.4byte	.LASF415
	.byte	0x1
	.2byte	0x150
	.4byte	0x22e7
	.4byte	.LLST34
	.uleb128 0x33
	.4byte	.LASF416
	.byte	0x1
	.2byte	0x151
	.4byte	0x22e7
	.byte	0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF424
	.byte	0x1
	.2byte	0x152
	.4byte	0x16b7
	.uleb128 0x34
	.4byte	.LASF425
	.byte	0x1
	.2byte	0x152
	.4byte	0x16b7
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x153
	.4byte	0x41
	.4byte	.LLST35
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF426
	.byte	0x1
	.2byte	0x16e
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2443
	.uleb128 0x32
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x16e
	.4byte	0x1e11
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x16e
	.4byte	0x2020
	.byte	0x1
	.byte	0x54
	.uleb128 0x2d
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x16e
	.4byte	0x41
	.4byte	.LLST36
	.uleb128 0x32
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x16e
	.4byte	0x41
	.byte	0x1
	.byte	0x56
	.uleb128 0x32
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x16e
	.4byte	0x7a
	.byte	0x2
	.byte	0x90
	.uleb128 0x21
	.uleb128 0x33
	.4byte	.LASF414
	.byte	0x1
	.2byte	0x16f
	.4byte	0x7a
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x2e
	.4byte	.LASF427
	.byte	0x1
	.2byte	0x170
	.4byte	0x1e85
	.4byte	.LLST37
	.uleb128 0x2e
	.4byte	.LASF428
	.byte	0x1
	.2byte	0x170
	.4byte	0x1e85
	.4byte	.LLST38
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x171
	.4byte	0x41
	.4byte	.LLST39
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF429
	.byte	0x1
	.2byte	0x18b
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST40
	.4byte	0x24bc
	.uleb128 0x2d
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x18b
	.4byte	0x1e11
	.4byte	.LLST41
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.2byte	0x18b
	.4byte	0xea9
	.4byte	.LLST42
	.uleb128 0x2e
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x18c
	.4byte	0x41
	.4byte	.LLST43
	.uleb128 0x2e
	.4byte	.LASF430
	.byte	0x1
	.2byte	0x18c
	.4byte	0x41
	.4byte	.LLST44
	.uleb128 0x2e
	.4byte	.LASF307
	.byte	0x1
	.2byte	0x18c
	.4byte	0x41
	.4byte	.LLST45
	.uleb128 0x2e
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x18d
	.4byte	0x7a
	.4byte	.LLST46
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF431
	.byte	0x1
	.2byte	0x1cb
	.byte	0x1
	.4byte	0x9f
	.4byte	.LFB49
	.4byte	.LFE49
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x24f6
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.2byte	0x1cb
	.4byte	0xea9
	.4byte	.LLST47
	.uleb128 0x37
	.string	"ins"
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x2020
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF432
	.byte	0x1
	.2byte	0x1e0
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST48
	.4byte	0x2581
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0xea9
	.4byte	.LLST49
	.uleb128 0x2d
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x9f
	.4byte	.LLST50
	.uleb128 0x2d
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x1e11
	.4byte	.LLST51
	.uleb128 0x2d
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x2020
	.4byte	.LLST52
	.uleb128 0x33
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x38
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x41
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF434
	.byte	0x1
	.2byte	0x216
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LLST53
	.4byte	0x262a
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.2byte	0x216
	.4byte	0xea9
	.4byte	.LLST54
	.uleb128 0x2d
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x216
	.4byte	0x9f
	.4byte	.LLST55
	.uleb128 0x2e
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x218
	.4byte	0x262a
	.4byte	.LLST56
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x219
	.4byte	0x1e11
	.4byte	.LLST57
	.uleb128 0x2e
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x21a
	.4byte	0x2020
	.4byte	.LLST58
	.uleb128 0x2e
	.4byte	.LASF435
	.byte	0x1
	.2byte	0x21b
	.4byte	0x2020
	.4byte	.LLST59
	.uleb128 0x2e
	.4byte	.LASF436
	.byte	0x1
	.2byte	0x21c
	.4byte	0x2020
	.4byte	.LLST60
	.uleb128 0x2e
	.4byte	.LASF437
	.byte	0x1
	.2byte	0x21d
	.4byte	0x41
	.4byte	.LLST61
	.uleb128 0x2e
	.4byte	.LASF438
	.byte	0x1
	.2byte	0x21d
	.4byte	0x41
	.4byte	.LLST62
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ecf
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF439
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST63
	.4byte	0x2657
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xc5
	.4byte	0x41
	.4byte	.LLST64
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF440
	.byte	0x1
	.2byte	0x24f
	.byte	0x1
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST65
	.4byte	0x26c0
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.2byte	0x24f
	.4byte	0xea9
	.4byte	.LLST66
	.uleb128 0x2d
	.4byte	.LASF441
	.byte	0x1
	.2byte	0x24f
	.4byte	0x1e73
	.4byte	.LLST67
	.uleb128 0x33
	.4byte	.LASF442
	.byte	0x1
	.2byte	0x251
	.4byte	0x28f
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x39
	.string	"org"
	.byte	0x1
	.2byte	0x252
	.4byte	0x2b0
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x39
	.string	"res"
	.byte	0x1
	.2byte	0x252
	.4byte	0x2b0
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF443
	.byte	0x1
	.2byte	0x269
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST68
	.4byte	0x2754
	.uleb128 0x2d
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x269
	.4byte	0x2020
	.4byte	.LLST69
	.uleb128 0x2d
	.4byte	.LASF441
	.byte	0x1
	.2byte	0x269
	.4byte	0x1e73
	.4byte	.LLST70
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x26a
	.4byte	0x41
	.4byte	.LLST71
	.uleb128 0x33
	.4byte	.LASF444
	.byte	0x1
	.2byte	0x26b
	.4byte	0x274
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x39
	.string	"H"
	.byte	0x1
	.2byte	0x26b
	.4byte	0x274
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.string	"tx"
	.byte	0x1
	.2byte	0x26b
	.4byte	0x274
	.4byte	.LLST72
	.uleb128 0x2f
	.string	"ty"
	.byte	0x1
	.2byte	0x26b
	.4byte	0x274
	.4byte	.LLST73
	.uleb128 0x2f
	.string	"tz"
	.byte	0x1
	.2byte	0x26b
	.4byte	0x274
	.4byte	.LLST74
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF445
	.byte	0x1
	.2byte	0x28b
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST75
	.4byte	0x2825
	.uleb128 0x2d
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x28b
	.4byte	0x2020
	.4byte	.LLST76
	.uleb128 0x2d
	.4byte	.LASF441
	.byte	0x1
	.2byte	0x28b
	.4byte	0x1e73
	.4byte	.LLST77
	.uleb128 0x2e
	.4byte	.LASF446
	.byte	0x1
	.2byte	0x28d
	.4byte	0x2825
	.4byte	.LLST78
	.uleb128 0x2e
	.4byte	.LASF447
	.byte	0x1
	.2byte	0x28d
	.4byte	0x2825
	.4byte	.LLST79
	.uleb128 0x30
	.string	"d"
	.byte	0x1
	.2byte	0x28e
	.4byte	0x7a
	.uleb128 0x2e
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x28e
	.4byte	0x7a
	.4byte	.LLST80
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x28f
	.4byte	0x41
	.4byte	.LLST81
	.uleb128 0x30
	.string	"j"
	.byte	0x1
	.2byte	0x28f
	.4byte	0x41
	.uleb128 0x2f
	.string	"v2"
	.byte	0x1
	.2byte	0x290
	.4byte	0x274
	.4byte	.LLST82
	.uleb128 0x2f
	.string	"v1"
	.byte	0x1
	.2byte	0x290
	.4byte	0x22e7
	.4byte	.LLST83
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x291
	.4byte	0x1e11
	.4byte	.LLST84
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2e
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x2ab
	.4byte	0x41
	.4byte	.LLST85
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1777
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF448
	.byte	0x1
	.2byte	0x2c6
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LLST86
	.4byte	0x28b7
	.uleb128 0x32
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x2c6
	.4byte	0x2020
	.byte	0x1
	.byte	0x53
	.uleb128 0x32
	.4byte	.LASF441
	.byte	0x1
	.2byte	0x2c6
	.4byte	0x1e73
	.byte	0x1
	.byte	0x54
	.uleb128 0x39
	.string	"v"
	.byte	0x1
	.2byte	0x2c8
	.4byte	0x22e7
	.byte	0x1
	.byte	0x5a
	.uleb128 0x2e
	.4byte	.LASF449
	.byte	0x1
	.2byte	0x2c8
	.4byte	0x274
	.4byte	.LLST87
	.uleb128 0x34
	.4byte	.LASF450
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x7a
	.uleb128 0x2e
	.4byte	.LASF451
	.byte	0x1
	.2byte	0x2c9
	.4byte	0x7a
	.4byte	.LLST88
	.uleb128 0x33
	.4byte	.LASF452
	.byte	0x1
	.2byte	0x2ca
	.4byte	0x7a
	.byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x2cb
	.4byte	0x41
	.4byte	.LLST89
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF453
	.byte	0x1
	.2byte	0x2db
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x293b
	.uleb128 0x2d
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x2db
	.4byte	0x2020
	.4byte	.LLST90
	.uleb128 0x32
	.4byte	.LASF441
	.byte	0x1
	.2byte	0x2db
	.4byte	0x1e73
	.byte	0x1
	.byte	0x54
	.uleb128 0x2e
	.4byte	.LASF446
	.byte	0x1
	.2byte	0x2dd
	.4byte	0x2825
	.4byte	.LLST91
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x41
	.4byte	.LLST92
	.uleb128 0x2f
	.string	"j"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x41
	.4byte	.LLST93
	.uleb128 0x2e
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x2df
	.4byte	0x19e6
	.4byte	.LLST94
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x1e11
	.4byte	.LLST95
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x30b
	.byte	0x1
	.4byte	0x7a
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LLST96
	.4byte	0x2987
	.uleb128 0x35
	.string	"v1"
	.byte	0x1
	.2byte	0x30b
	.4byte	0x2987
	.4byte	.LLST97
	.uleb128 0x35
	.string	"v2"
	.byte	0x1
	.2byte	0x30b
	.4byte	0x2987
	.4byte	.LLST98
	.uleb128 0x33
	.4byte	.LASF449
	.byte	0x1
	.2byte	0x30c
	.4byte	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x269
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF454
	.byte	0x1
	.2byte	0x311
	.byte	0x1
	.4byte	0x9f
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LLST99
	.4byte	0x29ea
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.2byte	0x311
	.4byte	0xea9
	.4byte	.LLST100
	.uleb128 0x2d
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x311
	.4byte	0x1e11
	.4byte	.LLST101
	.uleb128 0x35
	.string	"ins"
	.byte	0x1
	.2byte	0x311
	.4byte	0x1e73
	.4byte	.LLST102
	.uleb128 0x2d
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x311
	.4byte	0x2020
	.4byte	.LLST103
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.4byte	.LASF455
	.byte	0x1
	.2byte	0x326
	.byte	0x1
	.4byte	0x9f
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LLST104
	.4byte	0x2a19
	.uleb128 0x35
	.string	"ins"
	.byte	0x1
	.2byte	0x326
	.4byte	0x1e73
	.4byte	.LLST105
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF456
	.byte	0x1
	.2byte	0x331
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LLST106
	.4byte	0x2a82
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.2byte	0x331
	.4byte	0xea9
	.4byte	.LLST107
	.uleb128 0x2d
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x331
	.4byte	0x1e11
	.4byte	.LLST108
	.uleb128 0x2d
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x331
	.4byte	0x2020
	.4byte	.LLST109
	.uleb128 0x2e
	.4byte	.LASF457
	.byte	0x1
	.2byte	0x333
	.4byte	0x1e73
	.4byte	.LLST110
	.uleb128 0x2e
	.4byte	.LASF458
	.byte	0x1
	.2byte	0x334
	.4byte	0x9f
	.4byte	.LLST111
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.4byte	.LASF459
	.byte	0x1
	.2byte	0x365
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST112
	.4byte	0x2af9
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.2byte	0x365
	.4byte	0xea9
	.4byte	.LLST113
	.uleb128 0x2e
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x367
	.4byte	0x2020
	.4byte	.LLST114
	.uleb128 0x2e
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x368
	.4byte	0x262a
	.4byte	.LLST115
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x369
	.4byte	0x1e11
	.4byte	.LLST116
	.uleb128 0x2f
	.string	"i"
	.byte	0x1
	.2byte	0x36a
	.4byte	0x41
	.4byte	.LLST117
	.uleb128 0x2e
	.4byte	.LASF438
	.byte	0x1
	.2byte	0x36a
	.4byte	0x41
	.4byte	.LLST118
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF460
	.byte	0xc
	.2byte	0x23f
	.4byte	0xdb7
	.byte	0x1
	.byte	0x1
	.uleb128 0x3d
	.string	"cl"
	.byte	0xd
	.2byte	0x11b
	.4byte	0x11c6
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0xc42
	.4byte	0x2b25
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF461
	.byte	0xd
	.2byte	0x11f
	.4byte	0x2b14
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF462
	.byte	0xd
	.2byte	0x13b
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0xea9
	.4byte	0x2b51
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF463
	.byte	0xd
	.2byte	0x13c
	.4byte	0x2b41
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF464
	.byte	0xc
	.2byte	0x219
	.4byte	0xea9
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF465
	.byte	0xc
	.2byte	0x21d
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF466
	.byte	0xc
	.2byte	0x26b
	.4byte	0x3e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF467
	.byte	0xc
	.2byte	0x2b5
	.4byte	0x3e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF468
	.byte	0xc
	.2byte	0x2d5
	.4byte	0x3e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF469
	.byte	0xc
	.2byte	0x2e0
	.4byte	0x3e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF470
	.byte	0xc
	.2byte	0x314
	.4byte	0x9f
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF471
	.byte	0xc
	.2byte	0x963
	.4byte	0x1a6c
	.byte	0x1
	.byte	0x1
	.uleb128 0x3c
	.4byte	.LASF472
	.byte	0xc
	.2byte	0xa81
	.4byte	0x1e17
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.4byte	.LASF473
	.byte	0x1
	.byte	0x40
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	aliasCacheRequests
	.uleb128 0x3e
	.4byte	.LASF474
	.byte	0x1
	.byte	0x40
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	aliasFullCacheHits
	.uleb128 0x3e
	.4byte	.LASF475
	.byte	0x1
	.byte	0x40
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	aliasPartialCacheHits
	.uleb128 0x3f
	.4byte	.LASF476
	.byte	0xc
	.2byte	0xc2c
	.4byte	0x1638
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x3c
	.4byte	.LASF477
	.byte	0x11
	.2byte	0x548
	.4byte	0x2c34
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.4byte	0x2c39
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1f58
	.uleb128 0x3c
	.4byte	.LASF478
	.byte	0x7
	.2byte	0x150
	.4byte	0x73
	.byte	0x1
	.byte	0x1
	.uleb128 0x3e
	.4byte	.LASF479
	.byte	0x1
	.byte	0x32
	.4byte	0x2020
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	InstantCache
	.uleb128 0x3e
	.4byte	.LASF480
	.byte	0x1
	.byte	0x33
	.4byte	0x1e73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	LightInstantCache
	.uleb128 0x3c
	.4byte	.LASF481
	.byte	0x1
	.2byte	0x287
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x2c90
	.uleb128 0xe
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF482
	.byte	0x1
	.2byte	0x288
	.4byte	0x2c7f
	.byte	0x1
	.byte	0x1
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xa
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0x6f
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 168
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3d
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3c
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x39
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x38
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x37
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x37
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x37
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x37
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x37
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0xa
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL85-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL86-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LFB48-.Ltext0
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
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL118-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL118-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 168
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1300
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1300
	.4byte	.LVL126-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1304
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x3
	.byte	0x74
	.sleb128 1304
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LFB50-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL134-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL148-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL137-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL137-1-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL149-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL137-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL137-1-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL149-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LFB51-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL176-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL152-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL176-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL163-1-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL176-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL163-1-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL168-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL168-1-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL170-1-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL177-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL176-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL163-1-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL176-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL177-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-1-.Ltext0
	.2byte	0x2
	.byte	0x88
	.sleb128 0
	.4byte	.LVL156-1-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL176-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LFB52-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL192-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LFB53-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 136
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL213-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL195-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0xe
	.byte	0x8e
	.sleb128 24576
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 24580
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x12
	.byte	0x8e
	.sleb128 24576
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 24580
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 24584
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-1-.Ltext0
	.2byte	0x12
	.byte	0x8e
	.sleb128 24564
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 24568
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 24572
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL201-1-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x37
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3a
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0xa
	.byte	0x8e
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0xc
	.byte	0x8e
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-1-.Ltext0
	.2byte	0xc
	.byte	0x8e
	.sleb128 -12
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 -8
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 -4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL201-1-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x38
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0xe
	.byte	0x8e
	.sleb128 -24576
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 -24572
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x12
	.byte	0x8e
	.sleb128 -24576
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 -24572
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 -24568
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL201-1-.Ltext0
	.2byte	0x12
	.byte	0x8e
	.sleb128 -24588
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 -24584
	.byte	0x93
	.uleb128 0x4
	.byte	0x8e
	.sleb128 -24580
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL201-1-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x39
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LFB54-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL243-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL243-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0xb
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x23
	.uleb128 0x7c
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0xb
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x23
	.uleb128 0x7c
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL239-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x6
	.byte	0x79
	.sleb128 44
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0xa
	.byte	0x79
	.sleb128 44
	.byte	0x93
	.uleb128 0x4
	.byte	0x79
	.sleb128 48
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-1-.Ltext0
	.2byte	0xc
	.byte	0x79
	.sleb128 44
	.byte	0x93
	.uleb128 0x4
	.byte	0x79
	.sleb128 48
	.byte	0x93
	.uleb128 0x4
	.byte	0x79
	.sleb128 52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL230-1-.Ltext0
	.4byte	.LVL232-.Ltext0
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
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
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
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL243-.Ltext0
	.4byte	.LFE54-.Ltext0
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
.LLST83:
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL245-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 12
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL243-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LFB55-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI30-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
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
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x2d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
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
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0xb
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x73
	.sleb128 12
	.byte	0x6
	.byte	0x23
	.uleb128 0x7c
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL267-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LFB57-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI31-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI32-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL270-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL270-.Ltext0
	.4byte	.LVL272-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LFB58-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL278-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL278-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LFB59-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI37-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-1-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LFB60-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI39-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI41-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI43-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL283-1-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL304-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL283-1-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL304-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL283-1-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL301-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL304-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL286-1-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL304-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LFB61-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI46-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI47-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI48-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL306-.Ltext0
	.4byte	.LVL316-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x3
	.byte	0x8b
	.sleb128 260
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL318-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x73
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL311-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL307-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL315-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL320-.Ltext0
	.2byte	0x1
	.byte	0x6a
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
	.4byte	.LBB3-.Ltext0
	.4byte	.LBE3-.Ltext0
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.string	"pflags"
.LASF405:
	.string	"frameinstant"
.LASF475:
	.string	"aliasPartialCacheHits"
.LASF351:
	.string	"screenrect_s"
.LASF353:
	.string	"screenrect_t"
.LASF173:
	.string	"aliasvrectbottom"
.LASF288:
	.string	"vecs"
.LASF196:
	.string	"upmove"
.LASF463:
	.string	"cl_visedicts"
.LASF262:
	.string	"texture_s"
.LASF285:
	.string	"texture_t"
.LASF15:
	.string	"_Bool"
.LASF426:
	.string	"R_InterpolateTriPlanes"
.LASF76:
	.string	"entity_s"
.LASF167:
	.string	"entity_t"
.LASF388:
	.string	"lastlight"
.LASF454:
	.string	"CheckLightUpdate"
.LASF122:
	.string	"numplanes"
.LASF92:
	.string	"frame_start_time"
.LASF312:
	.string	"mtriangle_s"
.LASF315:
	.string	"mtriangle_t"
.LASF87:
	.string	"lightTimestamp"
.LASF331:
	.string	"binormals"
.LASF270:
	.string	"alternate_anims"
.LASF252:
	.string	"lightnormalindex"
.LASF185:
	.string	"horizontalFieldOfView"
.LASF284:
	.string	"samples"
.LASF217:
	.string	"idealpitch"
.LASF349:
	.string	"NV3x"
.LASF158:
	.string	"lastshadowonly"
.LASF302:
	.string	"lastclipnode"
.LASF64:
	.string	"entnext"
.LASF91:
	.string	"topnode"
.LASF256:
	.string	"mvertex_t"
.LASF56:
	.string	"next"
.LASF314:
	.string	"vertindex"
.LASF343:
	.string	"plane_t"
.LASF161:
	.string	"vertices"
.LASF105:
	.string	"angles1"
.LASF106:
	.string	"angles2"
.LASF170:
	.string	"vrectright"
.LASF237:
	.string	"maxclients"
.LASF350:
	.string	"qcardtype"
.LASF377:
	.string	"cubescale"
.LASF28:
	.string	"height"
.LASF439:
	.string	"R_SetupInstants"
.LASF373:
	.string	"owner"
.LASF281:
	.string	"styles"
.LASF329:
	.string	"commands"
.LASF98:
	.string	"brushlightinstant"
.LASF222:
	.string	"viewheight"
.LASF362:
	.string	"visible"
.LASF108:
	.string	"model_s"
.LASF290:
	.string	"texture"
.LASF486:
	.string	"SYS_GetArena2Lo"
.LASF140:
	.string	"hulls"
.LASF70:
	.string	"compressed_vis"
.LASF478:
	.string	"realtime"
.LASF372:
	.string	"numVisSurf"
.LASF133:
	.string	"numsurfaces"
.LASF238:
	.string	"gametype"
.LASF435:
	.string	"nextframeinstant"
.LASF35:
	.string	"vec_t"
.LASF119:
	.string	"nummodelsurfaces"
.LASF165:
	.string	"triplanes"
.LASF235:
	.string	"levelname"
.LASF184:
	.string	"fvrectbottom"
.LASF291:
	.string	"mtexinfo_t"
.LASF169:
	.string	"aliasvrect"
.LASF13:
	.string	"byte"
.LASF359:
	.string	"shadowlight_s"
.LASF380:
	.string	"shadowlight_t"
.LASF293:
	.string	"chain"
.LASF74:
	.string	"index"
.LASF414:
	.string	"blend1"
.LASF77:
	.string	"forcelink"
.LASF38:
	.string	"angles"
.LASF320:
	.string	"boundingradius"
.LASF408:
	.string	"R_AllocateInstant"
.LASF75:
	.string	"ambient_sound_level"
.LASF134:
	.string	"surfaces"
.LASF112:
	.string	"synctype"
.LASF97:
	.string	"aliasframeinstant"
.LASF221:
	.string	"laststop"
.LASF126:
	.string	"vertexes"
.LASF197:
	.string	"usercmd_t"
.LASF101:
	.string	"translate_start_time"
.LASF385:
	.string	"lastvorg"
.LASF407:
	.string	"oindex"
.LASF178:
	.string	"fvrecty_adj"
.LASF47:
	.string	"light_lev"
.LASF17:
	.string	"maxs"
.LASF110:
	.string	"type"
.LASF337:
	.string	"aliashdr_t"
.LASF130:
	.string	"nodes"
.LASF264:
	.string	"gl_lumitex"
.LASF63:
	.string	"entity"
.LASF436:
	.string	"prevframeinstant"
.LASF177:
	.string	"fvrectx_adj"
.LASF216:
	.string	"punchangle"
.LASF460:
	.string	"r_refdef"
.LASF272:
	.string	"msurface_s"
.LASF298:
	.string	"msurface_t"
.LASF85:
	.string	"syncbase"
.LASF172:
	.string	"aliasvrectright"
.LASF193:
	.string	"refdef_t"
.LASF236:
	.string	"viewentity"
.LASF473:
	.string	"aliasCacheRequests"
.LASF181:
	.string	"fvrectright_adj"
.LASF378:
	.string	"haloalpha"
.LASF470:
	.string	"mirror"
.LASF148:
	.string	"firstsurface"
.LASF364:
	.string	"castShadow"
.LASF480:
	.string	"LightInstantCache"
.LASF476:
	.string	"causticschain"
.LASF147:
	.string	"plane"
.LASF152:
	.string	"updateframe"
.LASF94:
	.string	"blend"
.LASF205:
	.string	"cshift_t"
.LASF1:
	.string	"unsigned char"
.LASF182:
	.string	"fvrectbottom_adj"
.LASF156:
	.string	"lastblend"
.LASF374:
	.string	"scizz"
.LASF395:
	.string	"aliaslightinstant_t"
.LASF10:
	.string	"float"
.LASF42:
	.string	"skin"
.LASF393:
	.string	"tshalfangles"
.LASF472:
	.string	"currentshadowlight"
.LASF22:
	.string	"numfaces"
.LASF423:
	.string	"R_InterpolateBinomials"
.LASF276:
	.string	"light_s"
.LASF277:
	.string	"light_t"
.LASF342:
	.string	"modtype_t"
.LASF333:
	.string	"indecies"
.LASF210:
	.string	"faceanimtime"
.LASF95:
	.string	"pose1"
.LASF96:
	.string	"pose2"
.LASF369:
	.string	"volumeVerts"
.LASF154:
	.string	"lastpose1"
.LASF155:
	.string	"lastpose2"
.LASF208:
	.string	"items"
.LASF400:
	.string	"ofsSurfaces"
.LASF366:
	.string	"entvis"
.LASF444:
	.string	"lightDir"
.LASF304:
	.string	"clip_maxs"
.LASF282:
	.string	"cached_light"
.LASF427:
	.string	"planes1"
.LASF292:
	.string	"glpoly_s"
.LASF297:
	.string	"glpoly_t"
.LASF442:
	.string	"transf"
.LASF458:
	.string	"update"
.LASF20:
	.string	"visleafs"
.LASF479:
	.string	"InstantCache"
.LASF231:
	.string	"oldtime"
.LASF115:
	.string	"clipbox"
.LASF352:
	.string	"coords"
.LASF66:
	.string	"contents"
.LASF240:
	.string	"free_efrags"
.LASF466:
	.string	"r_drawentities"
.LASF474:
	.string	"aliasFullCacheHits"
.LASF487:
	.string	"SYS_SetArena2Lo"
.LASF84:
	.string	"efrag"
.LASF335:
	.string	"texels"
.LASF159:
	.string	"lastpaliashdr"
.LASF326:
	.string	"size"
.LASF449:
	.string	"diff"
.LASF190:
	.string	"fov_x"
.LASF191:
	.string	"fov_y"
.LASF39:
	.string	"modelindex"
.LASF102:
	.string	"origin1"
.LASF334:
	.string	"gl_lumatex"
.LASF149:
	.string	"aliasframeinstant_s"
.LASF268:
	.string	"anim_max"
.LASF440:
	.string	"R_SetupObjectSpace"
.LASF453:
	.string	"R_CalcIndeciesForLight"
.LASF239:
	.string	"worldmodel"
.LASF383:
	.string	"lastlorg"
.LASF441:
	.string	"linstant"
.LASF311:
	.string	"maliasframedesc_t"
.LASF128:
	.string	"edges"
.LASF153:
	.string	"paliashdr"
.LASF469:
	.string	"sh_noshadowpopping"
.LASF78:
	.string	"update_type"
.LASF428:
	.string	"planes2"
.LASF319:
	.string	"scale_origin"
.LASF88:
	.string	"dlightframe"
.LASF484:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_aliasinstant.c"
.LASF174:
	.string	"vrectrightedge"
.LASF271:
	.string	"offsets"
.LASF21:
	.string	"firstface"
.LASF103:
	.string	"origin2"
.LASF225:
	.string	"onground"
.LASF415:
	.string	"verts1"
.LASF416:
	.string	"verts2"
.LASF443:
	.string	"R_SetupLightHAV"
.LASF471:
	.string	"gl_cardtype"
.LASF394:
	.string	"triangleVis"
.LASF157:
	.string	"lastent"
.LASF344:
	.string	"GENERIC"
.LASF93:
	.string	"frame_interval"
.LASF219:
	.string	"nodrift"
.LASF213:
	.string	"mviewangles"
.LASF446:
	.string	"tris"
.LASF467:
	.string	"sh_visiblevolumes"
.LASF139:
	.string	"marksurfaces"
.LASF251:
	.string	"synctype_t"
.LASF109:
	.string	"needload"
.LASF363:
	.string	"isStatic"
.LASF336:
	.string	"frames"
.LASF280:
	.string	"lightmaptexturenum"
.LASF367:
	.string	"visSurf"
.LASF55:
	.string	"value"
.LASF265:
	.string	"texturechain"
.LASF90:
	.string	"trivial_accept"
.LASF150:
	.string	"_next"
.LASF462:
	.string	"cl_numvisedicts"
.LASF313:
	.string	"facesfront"
.LASF279:
	.string	"shadowchain"
.LASF301:
	.string	"firstclipnode"
.LASF274:
	.string	"texturemins"
.LASF409:
	.string	"R_AllocateLightInstant"
.LASF86:
	.string	"skinnum"
.LASF183:
	.string	"fvrectright"
.LASF37:
	.string	"matrix_4x4"
.LASF267:
	.string	"anim_min"
.LASF445:
	.string	"R_CalcVolumeVerts"
.LASF124:
	.string	"leafs"
.LASF233:
	.string	"model_precache"
.LASF242:
	.string	"num_statics"
.LASF19:
	.string	"headnode"
.LASF116:
	.string	"clipmins"
.LASF224:
	.string	"paused"
.LASF330:
	.string	"triangles"
.LASF14:
	.string	"qboolean"
.LASF192:
	.string	"ambientlight"
.LASF51:
	.string	"name"
.LASF310:
	.string	"bboxmax"
.LASF477:
	.string	"wgPipe"
.LASF65:
	.string	"mleaf_s"
.LASF300:
	.string	"mleaf_t"
.LASF347:
	.string	"RADEON"
.LASF82:
	.string	"msg_angles"
.LASF368:
	.string	"volumeCmds"
.LASF206:
	.string	"movemessages"
.LASF223:
	.string	"crouch"
.LASF246:
	.string	"scores"
.LASF137:
	.string	"numclipnodes"
.LASF186:
	.string	"xOrigin"
.LASF387:
	.string	"lasthdr"
.LASF31:
	.string	"vrect_s"
.LASF30:
	.string	"vrect_t"
.LASF3:
	.string	"short unsigned int"
.LASF234:
	.string	"sound_precache"
.LASF0:
	.string	"signed char"
.LASF195:
	.string	"sidemove"
.LASF120:
	.string	"numsubmodels"
.LASF392:
	.string	"tslights"
.LASF257:
	.string	"mplane_s"
.LASF261:
	.string	"mplane_t"
.LASF429:
	.string	"R_SetupLerpPoses"
.LASF259:
	.string	"dist"
.LASF164:
	.string	"binomials"
.LASF253:
	.string	"trivertx_t"
.LASF135:
	.string	"numsurfedges"
.LASF36:
	.string	"vec3_t"
.LASF410:
	.string	"AINST_InitMem"
.LASF332:
	.string	"texcoords"
.LASF204:
	.string	"percent"
.LASF141:
	.string	"numtextures"
.LASF62:
	.string	"leafnext"
.LASF72:
	.string	"firstmarksurface"
.LASF24:
	.string	"planenum"
.LASF228:
	.string	"completed_time"
.LASF283:
	.string	"cached_dlight"
.LASF447:
	.string	"triangle"
.LASF207:
	.string	"stats"
.LASF338:
	.string	"mod_brush"
.LASF404:
	.string	"WGPipe"
.LASF316:
	.string	"ident"
.LASF321:
	.string	"eyeposition"
.LASF273:
	.string	"firstedge"
.LASF145:
	.string	"entities"
.LASF220:
	.string	"driftmove"
.LASF358:
	.string	"lightcmd_t"
.LASF402:
	.string	"lightcmd_u"
.LASF80:
	.string	"msgtime"
.LASF365:
	.string	"halo"
.LASF384:
	.string	"lasteangles"
.LASF354:
	.string	"asInt"
.LASF230:
	.string	"time"
.LASF434:
	.string	"R_SetupInstantForFrame"
.LASF448:
	.string	"R_CalcAttenColors"
.LASF129:
	.string	"numnodes"
.LASF12:
	.string	"long int"
.LASF189:
	.string	"viewangles"
.LASF142:
	.string	"textures"
.LASF433:
	.string	"forcevis"
.LASF49:
	.string	"entity_state_t"
.LASF232:
	.string	"last_received_message"
.LASF345:
	.string	"GEFORCE"
.LASF406:
	.string	"oldest"
.LASF309:
	.string	"bboxmin"
.LASF194:
	.string	"forwardmove"
.LASF412:
	.string	"R_InterpolateVerts"
.LASF389:
	.string	"lightpos"
.LASF73:
	.string	"nummarksurfaces"
.LASF214:
	.string	"mvelocity"
.LASF308:
	.string	"interval"
.LASF459:
	.string	"R_SetupInstantForLight"
.LASF375:
	.string	"filtercube"
.LASF399:
	.string	"numSurfaces"
.LASF68:
	.string	"minmaxs"
.LASF11:
	.string	"long double"
.LASF215:
	.string	"velocity"
.LASF241:
	.string	"num_entities"
.LASF111:
	.string	"numframes"
.LASF255:
	.string	"position"
.LASF168:
	.string	"vrect"
.LASF7:
	.string	"long unsigned int"
.LASF244:
	.string	"cdtrack"
.LASF379:
	.string	"oldlightorigin"
.LASF163:
	.string	"tangents"
.LASF50:
	.string	"cvar_s"
.LASF57:
	.string	"cvar_t"
.LASF403:
	.string	"_wgpipe"
.LASF432:
	.string	"R_SetupAliasInstantForFrame"
.LASF418:
	.string	"norm1"
.LASF419:
	.string	"norm2"
.LASF286:
	.string	"cachededgeoffset"
.LASF8:
	.string	"char"
.LASF438:
	.string	"maxnumsurf"
.LASF125:
	.string	"numvertexes"
.LASF339:
	.string	"mod_sprite"
.LASF179:
	.string	"vrect_x_adj_shift20"
.LASF360:
	.string	"baseColor"
.LASF307:
	.string	"numposes"
.LASF275:
	.string	"extents"
.LASF160:
	.string	"shadowonly"
.LASF44:
	.string	"color"
.LASF296:
	.string	"firstvertex"
.LASF89:
	.string	"dlightbits"
.LASF461:
	.string	"cl_entities"
.LASF356:
	.string	"asVec"
.LASF58:
	.string	"sfx_s"
.LASF162:
	.string	"normals"
.LASF323:
	.string	"skinwidth"
.LASF32:
	.string	"cache_user_s"
.LASF34:
	.string	"cache_user_t"
.LASF151:
	.string	"lockframe"
.LASF266:
	.string	"anim_total"
.LASF53:
	.string	"archive"
.LASF226:
	.string	"inwater"
.LASF143:
	.string	"visdata"
.LASF61:
	.string	"leaf"
.LASF327:
	.string	"poseverts"
.LASF245:
	.string	"looptrack"
.LASF361:
	.string	"brightness"
.LASF324:
	.string	"skinheight"
.LASF348:
	.string	"PARHELIA"
.LASF247:
	.string	"server_proto_version"
.LASF201:
	.string	"translations"
.LASF187:
	.string	"yOrigin"
.LASF227:
	.string	"intermission"
.LASF180:
	.string	"vrectright_adj_shift20"
.LASF420:
	.string	"R_InterpolateTangents"
.LASF456:
	.string	"R_SetupSurfaceInstantForLight"
.LASF71:
	.string	"efrags"
.LASF60:
	.string	"efrag_s"
.LASF107:
	.string	"efrag_t"
.LASF421:
	.string	"tang1"
.LASF422:
	.string	"tang2"
.LASF29:
	.string	"pnext"
.LASF25:
	.string	"children"
.LASF46:
	.string	"style"
.LASF9:
	.string	"double"
.LASF249:
	.string	"ST_SYNC"
.LASF376:
	.string	"rspeed"
.LASF131:
	.string	"numtexinfo"
.LASF203:
	.string	"destcolor"
.LASF371:
	.string	"lightCmds"
.LASF127:
	.string	"numedges"
.LASF166:
	.string	"lightinstant"
.LASF218:
	.string	"pitchvel"
.LASF263:
	.string	"gl_texturenum"
.LASF450:
	.string	"distsq"
.LASF318:
	.string	"scale"
.LASF287:
	.string	"medge_t"
.LASF144:
	.string	"lightdata"
.LASF171:
	.string	"vrectbottom"
.LASF41:
	.string	"colormap"
.LASF33:
	.string	"data"
.LASF355:
	.string	"asFloat"
.LASF243:
	.string	"viewent"
.LASF67:
	.string	"visframe"
.LASF269:
	.string	"anim_next"
.LASF200:
	.string	"colors"
.LASF295:
	.string	"neighbours"
.LASF175:
	.string	"fvrectx"
.LASF176:
	.string	"fvrecty"
.LASF123:
	.string	"planes"
.LASF27:
	.string	"width"
.LASF16:
	.string	"mins"
.LASF258:
	.string	"normal"
.LASF464:
	.string	"currententity"
.LASF451:
	.string	"fallOff"
.LASF81:
	.string	"msg_origins"
.LASF188:
	.string	"vieworg"
.LASF431:
	.string	"CheckUpdate"
.LASF209:
	.string	"item_gettime"
.LASF485:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF306:
	.string	"firstpose"
.LASF411:
	.string	"R_ClearInstantCaches"
.LASF26:
	.string	"dclipnode_t"
.LASF260:
	.string	"signbits"
.LASF6:
	.string	"long long unsigned int"
.LASF69:
	.string	"parent"
.LASF437:
	.string	"numsurf"
.LASF391:
	.string	"extvertices"
.LASF211:
	.string	"cshifts"
.LASF455:
	.string	"CheckHalfAngle"
.LASF289:
	.string	"mipadjust"
.LASF396:
	.string	"aliasframeinstant_t"
.LASF117:
	.string	"clipmaxs"
.LASF322:
	.string	"numskins"
.LASF43:
	.string	"effects"
.LASF370:
	.string	"numVolumeVerts"
.LASF198:
	.string	"entertime"
.LASF305:
	.string	"hull_t"
.LASF357:
	.string	"asVoid"
.LASF424:
	.string	"binor1"
.LASF425:
	.string	"binor2"
.LASF99:
	.string	"numleafs"
.LASF199:
	.string	"frags"
.LASF83:
	.string	"model"
.LASF45:
	.string	"alpha"
.LASF294:
	.string	"numverts"
.LASF303:
	.string	"clip_mins"
.LASF346:
	.string	"GEFORCE3"
.LASF325:
	.string	"numtris"
.LASF5:
	.string	"long long int"
.LASF397:
	.string	"aliasoffset_t"
.LASF398:
	.string	"alias3data_s"
.LASF401:
	.string	"alias3data_t"
.LASF52:
	.string	"string"
.LASF386:
	.string	"lastlradius"
.LASF229:
	.string	"mtime"
.LASF390:
	.string	"lastframeinstant"
.LASF340:
	.string	"mod_alias"
.LASF430:
	.string	"pose"
.LASF417:
	.string	"R_InterpolateNormals"
.LASF79:
	.string	"baseline"
.LASF341:
	.string	"mod_alias3"
.LASF132:
	.string	"texinfo"
.LASF138:
	.string	"clipnodes"
.LASF100:
	.string	"leafnums"
.LASF278:
	.string	"polys"
.LASF23:
	.string	"dmodel_t"
.LASF118:
	.string	"firstmodelsurface"
.LASF457:
	.string	"aliaslightinstant"
.LASF413:
	.string	"instant"
.LASF248:
	.string	"client_state_t"
.LASF121:
	.string	"submodels"
.LASF452:
	.string	"radiussq"
.LASF18:
	.string	"origin"
.LASF254:
	.string	"ftrivertx_t"
.LASF481:
	.string	"extrudeTimeStamp"
.LASF59:
	.string	"cache"
.LASF483:
	.string	"GNU C 4.6.3"
.LASF317:
	.string	"version"
.LASF136:
	.string	"surfedges"
.LASF250:
	.string	"ST_RAND"
.LASF4:
	.string	"unsigned int"
.LASF146:
	.string	"mnode_s"
.LASF299:
	.string	"mnode_t"
.LASF468:
	.string	"sh_nocache"
.LASF212:
	.string	"prev_cshifts"
.LASF2:
	.string	"short int"
.LASF54:
	.string	"server"
.LASF40:
	.string	"frame"
.LASF382:
	.string	"lasteorg"
.LASF465:
	.string	"r_framecount"
.LASF328:
	.string	"posedata"
.LASF202:
	.string	"scoreboard_t"
.LASF113:
	.string	"flags"
.LASF104:
	.string	"rotate_start_time"
.LASF114:
	.string	"radius"
.LASF482:
	.string	"extrudedTimestamp"
.LASF381:
	.string	"aliaslightinstant_s"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
