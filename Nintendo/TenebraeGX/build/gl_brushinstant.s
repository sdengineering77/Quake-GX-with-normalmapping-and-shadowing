	.file	"gl_brushinstant.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl BINST_InitMem
	.type	BINST_InitMem, @function
BINST_InitMem:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_brushinstant.c"
	.loc 1 47 0
	.cfi_startproc
	mflr 0
	stwu 1,-16(1)
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 49 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	bl SYS_GetArena2Lo
	bl align32
	mr 31,3
.LVL0:
	.loc 1 50 0
	lis 3,.LC0@ha
.LVL1:
	mr 4,31
	la 3,.LC0@l(3)
	.loc 1 52 0
	addis 30,31,0x26
	.loc 1 50 0
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 52 0
	addi 30,30,-30560
.LVL2:
	.loc 1 53 0
	lis 3,.LC1@ha
	mr 4,30
	.loc 1 51 0
	lis 9,BLightInstantCache@ha
	.loc 1 53 0
	la 3,.LC1@l(3)
	.loc 1 51 0
	stw 31,BLightInstantCache@l(9)
	.loc 1 53 0
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 55 0
	mr 3,30
	bl align32
.LVL3:
	.loc 1 56 0
	crxor 6,6,6
	bl SYS_SetArena2Lo
	.loc 1 58 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE38:
	.size	BINST_InitMem, .-BINST_InitMem
	.align 2
	.globl R_AllocateBrushLightInstant
	.type	R_AllocateBrushLightInstant, @function
R_AllocateBrushLightInstant:
.LFB39:
	.loc 1 65 0
	.cfi_startproc
.LVL4:
	.loc 1 88 0
	lis 9,BLightInstantCache@ha
	.loc 1 71 0
	lis 11,currentshadowlight@ha
	.loc 1 88 0
	lwz 9,BLightInstantCache@l(9)
	.loc 1 65 0
	li 8,24
	.loc 1 71 0
	lwz 0,currentshadowlight@l(11)
	.loc 1 65 0
	mtctr 8
	.loc 1 71 0
	mr 5,9
	.loc 1 65 0
	mr 11,9
	b .L5
.LVL5:
.L3:
	.loc 1 71 0
	addi 11,8,-28580
	.loc 1 70 0
	bdz .L15
.L5:
	.loc 1 71 0
	lwz 10,56(11)
	addis 8,11,0x2
	cmpw 7,10,3
	mr 10,11
	bne+ 7,.L3
	.loc 1 71 0 is_stmt 0 discriminator 1
	lwz 11,60(11)
	cmpw 7,11,0
	bne+ 7,.L3
	.loc 1 97 0 is_stmt 1
	mr 3,10
.LVL6:
	blr
.LVL7:
.L15:
	.loc 1 81 0
	li 8,24
	.loc 1 79 0
	lis 11,r_framecount@ha
	.loc 1 81 0
	mtctr 8
	.loc 1 79 0
	lwz 7,r_framecount@l(11)
.LVL8:
	.loc 1 80 0
	li 6,-1
	.loc 1 79 0
	mr 11,9
.LVL9:
	.loc 1 81 0
	li 10,0
.LVL10:
.L7:
	.loc 1 82 0
	lwz 8,0(11)
	.loc 1 81 0
	addis 11,11,0x2
	addi 11,11,-28580
	.loc 1 82 0
	cmpw 7,8,7
	bge- 7,.L6
	mr 6,10
	mr 7,8
.LVL11:
.L6:
	.loc 1 81 0
	addi 10,10,1
.LVL12:
	bdnz .L7
	.loc 1 88 0
	cmpwi 7,6,-1
	beq- 7,.L16
.LVL13:
.L8:
	.loc 1 96 0
	lis 10,0x1
	.loc 1 97 0
	.loc 1 96 0
	ori 10,10,36956
	mullw 10,6,10
	add 10,9,10
	.loc 1 97 0
	mr 3,10
.LVL14:
	blr
.LVL15:
.L16:
	.loc 1 88 0
	li 10,24
.LVL16:
	mtctr 10
	b .L9
.L17:
	.loc 1 90 0
	bdz .L8
.L9:
	.loc 1 91 0
	lwz 10,60(5)
	addis 11,5,0x2
	cmpw 7,0,10
	mr 10,5
	addi 5,11,-28580
	beq+ 7,.L17
	.loc 1 97 0
	mr 3,10
.LVL17:
	blr
	.cfi_endproc
.LFE39:
	.size	R_AllocateBrushLightInstant, .-R_AllocateBrushLightInstant
	.align 2
	.globl R_ClearBrushInstantCaches
	.type	R_ClearBrushInstantCaches, @function
R_ClearBrushInstantCaches:
.LFB40:
	.loc 1 100 0
	.cfi_startproc
.LVL18:
	.loc 1 100 0
	lis 9,BLightInstantCache@ha
	li 11,0
	lwz 10,BLightInstantCache@l(9)
	.loc 1 104 0
	li 9,24
	mtctr 9
	.loc 1 105 0
	li 0,0
.LVL19:
.L19:
	.loc 1 105 0 is_stmt 0 discriminator 2
	mr 9,10
	stwux 0,9,11
	.loc 1 106 0 is_stmt 1 discriminator 2
	addis 11,11,0x2
	addi 11,11,-28580
	stw 0,56(9)
	.loc 1 104 0 discriminator 2
	bdnz .L19
	.loc 1 108 0
	blr
	.cfi_endproc
.LFE40:
	.size	R_ClearBrushInstantCaches, .-R_ClearBrushInstantCaches
	.align 2
	.globl R_SetupBrushObjectSpace
	.type	R_SetupBrushObjectSpace, @function
R_SetupBrushObjectSpace:
.LFB41:
	.loc 1 110 0
	.cfi_startproc
.LVL20:
	mflr 0
	stwu 1,-120(1)
.LCFI2:
	.cfi_def_cfa_offset 120
	.cfi_register 65, 0
	stw 29,108(1)
	mr 29,3
	.cfi_offset 29, -12
	stw 0,124(1)
	stw 30,112(1)
	.loc 1 117 0
	lfs 0,148(3)
	.loc 1 110 0
	stw 31,116(1)
	.loc 1 110 0
	mr 31,4
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 1 117 0
	fneg 0,0
	.loc 1 118 0
	addi 4,1,40
.LVL21:
	.loc 1 117 0
	stfs 0,148(3)
	.loc 1 118 0
	bl R_WorldToObjectMatrix
.LVL22:
	.loc 1 119 0
	lfs 0,148(29)
	.loc 1 121 0
	lis 9,currentshadowlight@ha
	.loc 1 125 0
	addi 3,1,24
	.loc 1 121 0
	lwz 10,currentshadowlight@l(9)
	.loc 1 119 0
	fneg 0,0
	.loc 1 125 0
	addi 4,1,40
	addi 5,1,8
	.loc 1 121 0
	lwz 11,0(10)
	.loc 1 122 0
	lwz 9,4(10)
	.loc 1 123 0
	lwz 0,8(10)
	.loc 1 124 0
	lis 10,.LC2@ha
	lwz 30,.LC2@l(10)
	.loc 1 119 0
	stfs 0,148(29)
	.loc 1 121 0
	stw 11,24(1)
	.loc 1 122 0
	stw 9,28(1)
	.loc 1 123 0
	stw 0,32(1)
	.loc 1 124 0
	stw 30,36(1)
	.loc 1 125 0
	bl Mat_Mul_1x4_4x4
	.loc 1 130 0
	lis 10,r_refdef@ha
	.loc 1 134 0
	addi 3,1,24
	.loc 1 130 0
	la 10,r_refdef@l(10)
	.loc 1 134 0
	addi 4,1,40
	.loc 1 132 0
	lwz 0,120(10)
	.loc 1 134 0
	addi 5,1,8
	.loc 1 130 0
	lwz 11,112(10)
	.loc 1 131 0
	lwz 9,116(10)
	.loc 1 126 0
	lwz 10,8(1)
	.loc 1 132 0
	stw 0,32(1)
	.loc 1 126 0
	stw 10,64(31)
	.loc 1 127 0
	lwz 10,12(1)
	.loc 1 133 0
	stw 30,36(1)
	.loc 1 127 0
	stw 10,68(31)
	.loc 1 128 0
	lwz 10,16(1)
	.loc 1 130 0
	stw 11,24(1)
	.loc 1 128 0
	stw 10,72(31)
	.loc 1 131 0
	stw 9,28(1)
	.loc 1 134 0
	bl Mat_Mul_1x4_4x4
	.loc 1 135 0
	lwz 0,8(1)
	.loc 1 138 0
	lwz 29,108(1)
.LVL23:
	.loc 1 135 0
	stw 0,76(31)
	.loc 1 136 0
	lwz 0,12(1)
	.loc 1 138 0
	lwz 30,112(1)
	.loc 1 136 0
	stw 0,80(31)
	.loc 1 137 0
	lwz 0,16(1)
	stw 0,84(31)
	.loc 1 138 0
	lwz 0,124(1)
	lwz 31,116(1)
.LVL24:
	mtlr 0
	addi 1,1,120
.LCFI3:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE41:
	.size	R_SetupBrushObjectSpace, .-R_SetupBrushObjectSpace
	.align 2
	.globl bdist
	.type	bdist, @function
bdist:
.LFB42:
	.loc 1 146 0
	.cfi_startproc
.LVL25:
	mflr 0
	stwu 1,-24(1)
.LCFI4:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 148 0
	lfs 12,0(4)
	lfs 13,4(4)
	.loc 1 146 0
	stw 0,28(1)
	.loc 1 148 0
	lfs 0,8(4)
	lfs 9,0(3)
	lfs 10,4(3)
	lfs 11,8(3)
	fsubs 12,9,12
	fsubs 13,10,13
	.loc 1 149 0
	addi 3,1,8
.LVL26:
	.loc 1 148 0
	fsubs 0,11,0
	stfs 12,8(1)
	stfs 13,12(1)
	stfs 0,16(1)
	.loc 1 149 0
	.cfi_offset 65, 4
	bl Length
.LVL27:
	.loc 1 150 0
	lwz 0,28(1)
	addi 1,1,24
.LCFI5:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE42:
	.size	bdist, .-bdist
	.align 2
	.globl CheckBrushLightUpdate
	.type	CheckBrushLightUpdate, @function
CheckBrushLightUpdate:
.LFB43:
	.loc 1 152 0
	.cfi_startproc
.LVL28:
	.loc 1 163 0
	lis 9,sh_nocache+12@ha
	.loc 1 152 0
	mflr 0
	.loc 1 163 0
	lfs 13,sh_nocache+12@l(9)
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	.loc 1 152 0
	stwu 1,-32(1)
.LCFI6:
	.cfi_def_cfa_offset 32
	.cfi_register 65, 0
	.loc 1 163 0
	fcmpu 7,13,0
	.loc 1 152 0
	stw 0,36(1)
	mr 0,3
	.cfi_offset 65, 4
	stw 31,20(1)
	.loc 1 163 0
	li 3,1
.LVL29:
	.loc 1 152 0
	stfd 31,24(1)
	mr 31,4
	.cfi_offset 63, -8
	.cfi_offset 31, -12
	stw 29,12(1)
	stw 30,16(1)
	.loc 1 163 0
	bne- 7,.L24
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.loc 1 167 0
	lwz 30,56(4)
	cmpw 7,30,0
	beq- 7,.L35
.LVL30:
.L25:
	.loc 1 180 0
	lis 9,atest@ha
	.loc 1 181 0
	li 3,1
	.loc 1 180 0
	lwz 11,atest@l(9)
	addi 0,11,-1
	stw 0,atest@l(9)
.L24:
	.loc 1 183 0
	lwz 0,36(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL31:
	lfd 31,24(1)
	addi 1,1,32
	.cfi_remember_state
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL32:
.L35:
.LCFI8:
	.cfi_restore_state
	.loc 1 167 0 discriminator 1
	lis 29,currentshadowlight@ha
	.loc 1 168 0 discriminator 1
	lwz 4,60(4)
.LVL33:
	.loc 1 167 0 discriminator 1
	lwz 0,currentshadowlight@l(29)
.LVL34:
	cmpw 7,4,0
	bne+ 7,.L25
	.loc 1 169 0
	addi 3,31,16
	bl bdist
	.loc 1 168 0
	lis 9,.LC3@ha
	lfd 31,.LC3@l(9)
	fcmpu 7,1,31
	bnl+ 7,.L25
	.loc 1 170 0
	addi 3,31,4
	addi 4,30,112
	bl bdist
	.loc 1 169 0
	fcmpu 7,1,31
	bnl+ 7,.L25
	.loc 1 171 0
	addi 3,31,28
	addi 4,30,148
	bl bdist
	.loc 1 170 0
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	fcmpu 7,1,0
	bnl- 7,.L25
	.loc 1 172 0
	lwz 9,currentshadowlight@l(29)
	lfs 13,52(31)
	lfs 0,36(9)
	fsubs 0,13,0
	fabs 0,0
	.loc 1 171 0
	fcmpu 7,0,31
	cror 30,28,30
	bne- 7,.L25
	.loc 1 172 0
	lbz 9,89(31)
	lbz 0,88(31)
	cmpw 7,9,0
	bne+ 7,.L25
	.loc 1 174 0
	lis 9,r_framecount@ha
	lwz 0,r_framecount@l(9)
	.loc 1 173 0
	lwz 9,0(31)
	.loc 1 174 0
	addic 0,0,-10
	.loc 1 173 0
	cmpw 7,9,0
	blt+ 7,.L25
	.loc 1 177 0
	lis 9,atest@ha
	.loc 1 178 0
	li 3,0
	.loc 1 177 0
	lwz 0,atest@l(9)
	addic 0,0,1
	stw 0,atest@l(9)
	.loc 1 178 0
	b .L24
	.cfi_endproc
.LFE43:
	.size	CheckBrushLightUpdate, .-CheckBrushLightUpdate
	.align 2
	.globl CheckBrushHalfAngle
	.type	CheckBrushHalfAngle, @function
CheckBrushHalfAngle:
.LFB44:
	.loc 1 186 0
	.cfi_startproc
.LVL35:
	mflr 0
	stwu 1,-8(1)
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 187 0
	lis 4,r_refdef+112@ha
	addi 3,3,40
.LVL36:
	la 4,r_refdef+112@l(4)
	.loc 1 186 0
	stw 0,12(1)
	.loc 1 187 0
	.cfi_offset 65, 4
	bl bdist
.LVL37:
	lis 9,.LC4@ha
	lfs 0,.LC4@l(9)
	.loc 1 189 0
	lis 9,atest@ha
	lwz 11,atest@l(9)
	.loc 1 187 0
	fcmpu 7,1,0
	blt- 7,.L42
	.loc 1 192 0
	addi 0,11,-1
	.loc 1 193 0
	li 3,1
	.loc 1 192 0
	stw 0,atest@l(9)
	.loc 1 195 0
	lwz 0,12(1)
	addi 1,1,8
	.cfi_remember_state
.LCFI10:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.L42:
.LCFI11:
	.cfi_restore_state
	.loc 1 189 0
	addi 0,11,1
	.loc 1 190 0
	li 3,0
	.loc 1 189 0
	stw 0,atest@l(9)
	.loc 1 195 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI12:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE44:
	.size	CheckBrushHalfAngle, .-CheckBrushHalfAngle
	.align 2
	.globl R_IsVisibleSurf
	.type	R_IsVisibleSurf, @function
R_IsVisibleSurf:
.LFB45:
	.loc 1 201 0
	.cfi_startproc
.LVL38:
	stwu 1,-24(1)
.LCFI13:
	.cfi_def_cfa_offset 24
	.loc 1 201 0
	mr 9,3
	.loc 1 207 0
	lwz 0,8(3)
	.loc 1 208 0
	li 3,0
.LVL39:
	.loc 1 207 0
	andi. 0,0,20
	bne- 0,.L44
	.loc 1 213 0
	lwz 10,36(9)
	.loc 1 215 0
	lis 11,r_lightTimestamp@ha
	lwz 8,r_lightTimestamp@l(11)
	lwz 7,16(10)
	.loc 1 211 0
	lwz 11,4(9)
.LVL40:
	.loc 1 215 0
	cmpw 7,7,8
	beq- 7,.L58
	.loc 1 221 0
	lbz 0,16(11)
	cmpwi 7,0,1
	beq- 7,.L48
.L62:
	cmplwi 7,0,1
	bge- 7,.L59
	.loc 1 224 0
	lfs 13,64(4)
	lfs 0,12(11)
	fsubs 0,13,0
.LVL41:
.L50:
	.loc 1 238 0
	lwz 0,8(9)
	lis 9,.LC5@ha
.LVL42:
	lfs 13,.LC5@l(9)
	.loc 1 241 0
	li 3,0
	.loc 1 238 0
	andi. 9,0,2
	fcmpu 7,0,13
	bne- 0,.L60
	.loc 1 239 0
	blt- 7,.L44
.L52:
	.loc 1 245 0
	fctiwz 0,0
.LVL43:
	addi 9,1,16
	lis 0,0x4330
	.loc 1 247 0
	li 3,0
	.loc 1 245 0
	stfiwx 0,0,9
	stw 0,8(1)
	lwz 0,16(1)
	srawi 9,0,31
	xor 0,9,0
	subf 0,9,0
	lis 9,.LC7@ha
	xoris 0,0,0x8000
	lfs 0,.LC7@l(9)
	stw 0,12(1)
	lis 9,currentshadowlight@ha
	lwz 9,currentshadowlight@l(9)
	lfd 13,8(1)
	fsub 13,13,0
	lfs 0,36(9)
	frsp 13,13
	fcmpu 7,13,0
	bgt- 7,.L44
	.loc 1 250 0
	stw 8,16(10)
	.loc 1 252 0
	li 3,1
.LVL44:
.L44:
	.loc 1 253 0
	addi 1,1,24
	.cfi_remember_state
.LCFI14:
	.cfi_def_cfa_offset 0
	blr
.LVL45:
.L60:
.LCFI15:
	.cfi_restore_state
	.loc 1 238 0 discriminator 1
	bng+ 7,.L52
	.loc 1 253 0
	addi 1,1,24
	.cfi_remember_state
.LCFI16:
	.cfi_def_cfa_offset 0
	blr
.LVL46:
.L59:
.LCFI17:
	.cfi_restore_state
	.loc 1 221 0
	cmpwi 7,0,2
	beq- 7,.L61
	.loc 1 233 0
	lfs 0,4(11)
	lfs 13,68(4)
	lfs 12,64(4)
	fmuls 13,13,0
	lfs 0,0(11)
	lfs 11,72(4)
	fmadds 12,12,0,13
	lfs 0,8(11)
	lfs 13,12(11)
	fmadds 0,11,0,12
	fsubs 0,0,13
.LVL47:
	.loc 1 234 0
	b .L50
.LVL48:
.L48:
	.loc 1 227 0
	lfs 13,68(4)
	lfs 0,12(11)
	fsubs 0,13,0
.LVL49:
	.loc 1 228 0
	b .L50
.LVL50:
.L58:
	.loc 1 218 0
	stw 0,16(10)
	.loc 1 221 0
	lbz 0,16(11)
	cmpwi 7,0,1
	bne+ 7,.L62
	b .L48
.L61:
	.loc 1 230 0
	lfs 13,72(4)
	lfs 0,12(11)
	fsubs 0,13,0
.LVL51:
	.loc 1 231 0
	b .L50
	.cfi_endproc
.LFE45:
	.size	R_IsVisibleSurf, .-R_IsVisibleSurf
	.align 2
	.globl R_CalcBrushVolumeVerts
	.type	R_CalcBrushVolumeVerts, @function
R_CalcBrushVolumeVerts:
.LFB46:
	.loc 1 255 0
	.cfi_startproc
.LVL52:
	mflr 0
	stwu 1,-104(1)
.LCFI18:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
	stw 17,36(1)
	stw 0,108(1)
	stw 26,72(1)
	mr 26,4
	.cfi_offset 26, -32
	.cfi_offset 65, 4
	.cfi_offset 17, -68
	.loc 1 257 0
	lwz 17,160(3)
.LVL53:
	.loc 1 255 0
	stw 30,88(1)
	.loc 1 269 0
	lwz 0,144(17)
	.loc 1 255 0
	stfd 31,96(1)
	.loc 1 269 0
	cmpwi 7,0,0
	.loc 1 255 0
	stw 14,24(1)
	stw 15,28(1)
	stw 16,32(1)
	stw 18,40(1)
	stw 19,44(1)
	stw 20,48(1)
	stw 21,52(1)
	stw 22,56(1)
	stw 23,60(1)
	stw 24,64(1)
	stw 25,68(1)
	stw 27,76(1)
	stw 28,80(1)
	stw 29,84(1)
	stw 31,92(1)
	.loc 1 268 0
	lwz 30,208(17)
	.cfi_offset 31, -12
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	.cfi_offset 22, -48
	.cfi_offset 21, -52
	.cfi_offset 20, -56
	.cfi_offset 19, -60
	.cfi_offset 18, -64
	.cfi_offset 16, -72
	.cfi_offset 15, -76
	.cfi_offset 14, -80
	.cfi_offset 63, -8
	.cfi_offset 30, -16
	lwz 9,140(17)
.LVL54:
	.loc 1 269 0
	ble- 7,.L64
.LVL55:
	.loc 1 268 0
	mulli 0,9,92
	.loc 1 255 0
	addis 29,4,0x2
	addi 29,29,-32677
	.loc 1 269 0
	li 31,0
	.loc 1 268 0
	add 30,30,0
.LVL56:
.L65:
	.loc 1 271 0 discriminator 2
	mr 3,30
	mr 4,26
	bl R_IsVisibleSurf
	.loc 1 269 0 discriminator 2
	addi 31,31,1
.LVL57:
	.loc 1 271 0 discriminator 2
	stbu 3,1(29)
	.loc 1 269 0 discriminator 2
	addi 30,30,92
.LVL58:
	lwz 0,144(17)
	cmpw 7,0,31
	bgt+ 7,.L65
.LVL59:
.L64:
	.loc 1 274 0
	lis 20,currentshadowlight@ha
	lwz 9,currentshadowlight@l(20)
	lbz 9,46(9)
	cmpwi 7,9,0
	beq- 7,.L63
.LVL60:
	.loc 1 280 0
	cmpwi 7,0,0
	.loc 1 279 0
	lwz 24,208(17)
	lwz 9,140(17)
.LVL61:
	.loc 1 280 0
	ble- 7,.L63
	.loc 1 279 0
	mulli 9,9,92
	.loc 1 255 0
	addis 16,26,0x2
	addi 16,16,-32677
	.loc 1 280 0
	li 18,0
	.loc 1 279 0
	add 24,24,9
	.loc 1 293 0
	lis 9,.LC5@ha
	lfs 31,.LC5@l(9)
	.loc 1 276 0
	li 15,0
	lis 14,.LC2@ha
	.loc 1 294 0
	lis 19,.LC8@ha
.LVL62:
.L74:
	.loc 1 282 0
	lbzu 9,1(16)
	cmpwi 7,9,0
	beq- 7,.L67
	.loc 1 286 0
	lwz 10,16(24)
	.loc 1 284 0
	lwz 25,36(24)
.LVL63:
	.loc 1 286 0
	cmpwi 7,10,0
	ble- 7,.L68
	.loc 1 255 0
	mulli 31,15,12
	lis 9,globalVertexTable@ha
	la 21,globalVertexTable@l(9)
	lis 9,sh_visiblevolumes@ha
	add 31,26,31
	.loc 1 286 0
	li 29,0
	.loc 1 255 0
	addi 31,31,92
	la 22,sh_visiblevolumes@l(9)
	la 23,.LC2@l(14)
	b .L71
.LVL64:
.L84:
	.loc 1 294 0
	lfs 13,0(23)
	lfs 0,.LC8@l(19)
	fdivs 1,13,1
.LVL65:
	fmuls 1,1,0
	bl VectorScale
.L70:
	.loc 1 298 0
	lfsx 0,27,28
	.loc 1 286 0
	addi 29,29,1
.LVL66:
	.loc 1 298 0
	lfs 13,8(1)
	fadds 0,13,0
	lfs 13,12(1)
	stfs 0,0(31)
	lfs 0,4(30)
	fadds 0,13,0
	lfs 13,16(1)
	stfs 0,4(31)
	lfs 0,8(30)
	fadds 0,13,0
	stfs 0,8(31)
	.loc 1 286 0
	addi 31,31,12
	lwz 10,16(24)
	cmpw 7,10,29
	ble- 7,.L83
.LVL67:
.L71:
	.loc 1 289 0
	lwz 28,24(25)
	.loc 1 291 0
	addi 3,1,8
	.loc 1 289 0
	lwz 27,0(21)
	add 28,29,28
	.loc 1 290 0
	lfs 0,64(26)
	.loc 1 289 0
	mulli 28,28,28
	.loc 1 290 0
	lfs 13,68(26)
	lfsx 12,27,28
	.loc 1 289 0
	add 30,27,28
.LVL68:
	.loc 1 290 0
	fsubs 12,12,0
	lfs 0,72(26)
	stfs 12,8(1)
	lfs 12,4(30)
	fsubs 13,12,13
	stfs 13,12(1)
	lfs 13,8(30)
	fsubs 0,13,0
	stfs 0,16(1)
	.loc 1 291 0
	bl Length
.LVL69:
	.loc 1 293 0
	lfs 0,12(22)
	.loc 1 294 0
	addi 3,1,8
	mr 4,3
	.loc 1 293 0
	fcmpu 7,0,31
	bne- 7,.L84
	.loc 1 296 0
	lfs 0,0(23)
	addi 3,1,8
	lwz 9,currentshadowlight@l(20)
	mr 4,3
	fdivs 1,0,1
.LVL70:
	lfs 0,36(9)
	fmuls 1,1,0
	fadds 1,1,1
	bl VectorScale
	b .L70
.LVL71:
.L83:
	.loc 1 302 0
	cmpwi 7,10,0
	ble- 7,.L82
	.loc 1 255 0
	lwz 8,20(25)
	.loc 1 310 0
	mtctr 10
	.loc 1 255 0
	li 9,0
	add 6,26,15
	addi 8,8,-4
.LVL72:
.L73:
	.loc 1 305 0
	lwzu 11,4(8)
	.loc 1 255 0
	add 7,6,9
	addis 7,7,0x2
	.loc 1 310 0
	li 0,1
	.loc 1 305 0
	cmpwi 7,11,0
	.loc 1 302 0
	addi 9,9,1
	.loc 1 305 0
	beq- 7,.L72
	.loc 1 255 0
	lwz 11,16(11)
	lwz 0,16(25)
	xor 0,11,0
	cntlzw 0,0
	srwi 0,0,5
	xori 0,0,1
.L72:
.LVL73:
	.loc 1 313 0
	stb 0,-30628(7)
	.loc 1 302 0
	bdnz .L73
.LVL74:
.L82:
	lwz 0,144(17)
.LVL75:
.L68:
	.loc 1 315 0
	add 15,15,10
.LVL76:
.L67:
	.loc 1 280 0
	addi 18,18,1
.LVL77:
	addi 24,24,92
.LVL78:
	cmpw 7,0,18
	bgt+ 7,.L74
.LVL79:
.L63:
	.loc 1 317 0
	lwz 0,108(1)
	lwz 14,24(1)
	mtlr 0
	lwz 15,28(1)
	lwz 16,32(1)
	lwz 17,36(1)
.LVL80:
	lwz 18,40(1)
	lwz 19,44(1)
	lwz 20,48(1)
	lwz 21,52(1)
	lwz 22,56(1)
	lwz 23,60(1)
	lwz 24,64(1)
	lwz 25,68(1)
	lwz 26,72(1)
.LVL81:
	lwz 27,76(1)
	lwz 28,80(1)
	lwz 29,84(1)
	lwz 30,88(1)
	lwz 31,92(1)
	lfd 31,96(1)
	addi 1,1,104
.LCFI19:
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
	.cfi_restore 21
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	.cfi_restore 14
	blr
	.cfi_endproc
.LFE46:
	.size	R_CalcBrushVolumeVerts, .-R_CalcBrushVolumeVerts
	.align 2
	.globl R_CalcBrushAttenCoords
	.type	R_CalcBrushAttenCoords, @function
R_CalcBrushAttenCoords:
.LFB47:
	.loc 1 319 0
	.cfi_startproc
.LVL82:
	mflr 0
	stwu 1,-152(1)
.LCFI20:
	.cfi_def_cfa_offset 152
	.cfi_register 65, 0
	stw 24,104(1)
	mr 24,3
	.cfi_offset 24, -48
	stw 0,156(1)
	stw 28,120(1)
	mr 28,4
	.cfi_offset 28, -32
	.cfi_offset 65, 4
	.loc 1 329 0
	lwz 9,160(3)
	.loc 1 319 0
	stw 31,132(1)
	.loc 1 333 0
	lwz 0,144(9)
	.loc 1 319 0
	stfd 30,136(1)
	.loc 1 333 0
	cmpwi 7,0,0
	.loc 1 319 0
	stfd 31,144(1)
	stw 16,72(1)
	stw 17,76(1)
	stw 18,80(1)
	stw 19,84(1)
	stw 20,88(1)
	stw 21,92(1)
	stw 22,96(1)
	stw 23,100(1)
	stw 25,108(1)
	stw 26,112(1)
	stw 27,116(1)
	stw 29,124(1)
	stw 30,128(1)
	.loc 1 329 0
	lwz 31,208(9)
	.cfi_offset 30, -24
	.cfi_offset 29, -28
	.cfi_offset 27, -36
	.cfi_offset 26, -40
	.cfi_offset 25, -44
	.cfi_offset 23, -52
	.cfi_offset 22, -56
	.cfi_offset 21, -60
	.cfi_offset 20, -64
	.cfi_offset 19, -68
	.cfi_offset 18, -72
	.cfi_offset 17, -76
	.cfi_offset 16, -80
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 31, -20
	lwz 0,140(9)
.LVL83:
	.loc 1 333 0
	ble- 7,.L85
	.loc 1 329 0
	mulli 0,0,92
	.loc 1 368 0
	lis 11,.LC5@ha
	.loc 1 319 0
	addis 29,4,0x2
	.loc 1 368 0
	lfs 30,.LC5@l(11)
	.loc 1 329 0
	add 31,31,0
	.loc 1 319 0
	addi 29,29,-32677
	.loc 1 332 0
	li 25,0
	.loc 1 331 0
	li 27,0
	.loc 1 333 0
	li 30,0
	.loc 1 361 0
	lis 17,0x4330
	lis 18,.LC7@ha
	.loc 1 363 0
	addi 19,4,64
	.loc 1 365 0
	lis 20,currentshadowlight@ha
	lis 21,.LC9@ha
	lis 22,.LC2@ha
	.loc 1 374 0
	lis 23,globalVertexTable@ha
	lis 16,.LC4@ha
.LVL84:
.L95:
	.loc 1 335 0
	lbzu 0,1(29)
	cmpwi 7,0,0
	beq- 7,.L87
	.loc 1 340 0
	lwz 9,48(31)
	.loc 1 338 0
	lwz 26,36(31)
.LVL85:
	.loc 1 340 0
	lwz 11,8(9)
	.loc 1 341 0
	lwz 0,24(9)
	.loc 1 340 0
	lwz 7,0(9)
	lwz 8,4(9)
	.loc 1 341 0
	lwz 10,16(9)
	.loc 1 340 0
	stw 11,40(1)
	.loc 1 341 0
	stw 0,28(1)
	.loc 1 343 0
	lwz 11,4(31)
.LVL86:
	.loc 1 341 0
	lwz 9,20(9)
	.loc 1 345 0
	lbz 0,16(11)
	.loc 1 340 0
	stw 7,32(1)
	.loc 1 345 0
	cmpwi 7,0,1
	.loc 1 340 0
	stw 8,36(1)
	.loc 1 341 0
	stw 10,20(1)
	stw 9,24(1)
	.loc 1 345 0
	beq- 7,.L90
	cmplwi 7,0,1
	bge- 7,.L102
	.loc 1 348 0
	lfs 13,64(28)
	lfs 0,12(11)
	fsubs 0,13,0
.LVL87:
.L92:
	.loc 1 361 0
	fctiwz 0,0
.LVL88:
	addi 9,1,64
	stw 17,56(1)
	.loc 1 363 0
	mr 3,19
	addi 4,1,32
	addi 5,1,20
	.loc 1 361 0
	stfiwx 0,0,9
	.loc 1 363 0
	addi 6,1,8
	.loc 1 361 0
	lfs 0,.LC7@l(18)
	lwz 0,64(1)
	srawi 11,0,31
	xor 0,11,0
	subf 0,11,0
	xoris 0,0,0x8000
	stw 0,60(1)
	lfd 31,56(1)
	fsub 31,31,0
	.loc 1 363 0
	bl ProjectPlane
.LVL89:
	.loc 1 365 0
	lwz 9,currentshadowlight@l(20)
	lfs 13,.LC2@l(22)
	.loc 1 361 0
	frsp 31,31
.LVL90:
	.loc 1 365 0
	lfs 12,36(9)
	lfs 11,.LC9@l(21)
	.loc 1 366 0
	fdivs 0,31,12
	fsubs 0,13,0
	.loc 1 365 0
	fmsubs 12,12,11,31
	.loc 1 368 0
	fcmpu 7,0,30
	.loc 1 365 0
	fdivs 11,13,12
.LVL91:
	.loc 1 368 0
	bnl- 7,.L93
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
.LVL92:
.L93:
	.loc 1 376 0
	lwz 10,8(26)
	.loc 1 370 0
	addi 9,27,22548
	slwi 9,9,2
	.loc 1 371 0
	addi 27,27,1
.LVL93:
	.loc 1 376 0
	cmpwi 7,10,0
	.loc 1 370 0
	add 9,28,9
	stfs 0,12(9)
	.loc 1 374 0
	lwz 0,24(26)
	lwz 9,globalVertexTable@l(23)
.LVL94:
	.loc 1 376 0
	ble- 7,.L103
	.loc 1 374 0
	mulli 8,0,28
	.loc 1 319 0
	addi 11,25,9226
	slwi 11,11,3
	mulli 0,10,28
	.loc 1 374 0
	add 9,9,8
	.loc 1 319 0
	add 11,28,11
	.loc 1 374 0
	lfs 31,8(1)
.LVL95:
	.loc 1 319 0
	addi 11,11,12
	.loc 1 374 0
	lfs 1,12(1)
	.loc 1 319 0
	add 0,9,0
	.loc 1 374 0
	lfs 2,16(1)
	lfs 3,32(1)
	lfs 4,36(1)
	lfs 5,40(1)
	lfs 6,20(1)
	lfs 7,24(1)
	lfs 8,28(1)
	.loc 1 382 0
	lfs 10,.LC4@l(16)
.LVL96:
.L94:
	.loc 1 379 0 discriminator 2
	lfs 12,4(9)
	lfs 13,0(9)
	fsubs 12,12,1
	lfs 0,8(9)
	fsubs 13,13,31
.LVL97:
	.loc 1 376 0 discriminator 2
	addi 9,9,28
	.loc 1 379 0 discriminator 2
	fsubs 0,0,2
.LVL98:
	.loc 1 376 0 discriminator 2
	cmpw 7,9,0
	.loc 1 382 0 discriminator 2
	fmuls 9,12,4
	.loc 1 383 0 discriminator 2
	fmuls 12,12,7
.LVL99:
	.loc 1 382 0 discriminator 2
	fmadds 9,13,3,9
	.loc 1 383 0 discriminator 2
	fmadds 13,13,6,12
.LVL100:
	.loc 1 382 0 discriminator 2
	fmadds 9,0,5,9
	.loc 1 383 0 discriminator 2
	fmadds 0,0,8,13
.LVL101:
	.loc 1 382 0 discriminator 2
	fmadds 9,9,11,10
	.loc 1 383 0 discriminator 2
	fmadds 0,0,11,10
	.loc 1 382 0 discriminator 2
	stfs 9,0(11)
	.loc 1 383 0 discriminator 2
	stfs 0,4(11)
.LVL102:
	.loc 1 376 0 discriminator 2
	addi 11,11,8
	bne+ 7,.L94
	lwz 9,160(24)
.LVL103:
	.loc 1 319 0
	add 25,25,10
.LVL104:
.L87:
	.loc 1 333 0
	lwz 0,144(9)
	addi 30,30,1
.LVL105:
	addi 31,31,92
.LVL106:
	cmpw 7,0,30
	bgt+ 7,.L95
.LVL107:
.L85:
	.loc 1 387 0
	lwz 0,156(1)
	lwz 16,72(1)
	mtlr 0
	lwz 17,76(1)
	lwz 18,80(1)
	lwz 19,84(1)
	lwz 20,88(1)
	lwz 21,92(1)
	lwz 22,96(1)
	lwz 23,100(1)
	lwz 24,104(1)
.LVL108:
	lwz 25,108(1)
	lwz 26,112(1)
	lwz 27,116(1)
	lwz 28,120(1)
.LVL109:
	lwz 29,124(1)
	lwz 30,128(1)
	lwz 31,132(1)
	lfd 30,136(1)
	lfd 31,144(1)
	addi 1,1,152
	.cfi_remember_state
.LCFI21:
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
	.cfi_restore 17
	.cfi_restore 16
	blr
.LVL110:
.L102:
.LCFI22:
	.cfi_restore_state
	.loc 1 345 0
	cmpwi 7,0,2
	beq- 7,.L104
	.loc 1 357 0
	lfs 13,68(28)
	lfs 0,4(11)
	lfs 12,64(28)
	fmuls 0,13,0
	lfs 13,0(11)
	lfs 11,72(28)
	fmadds 12,12,13,0
	lfs 13,8(11)
	lfs 0,12(11)
	fmadds 13,11,13,12
	fsubs 0,13,0
.LVL111:
	.loc 1 358 0
	b .L92
.LVL112:
.L90:
	.loc 1 351 0
	lfs 13,68(28)
	lfs 0,12(11)
	fsubs 0,13,0
.LVL113:
	.loc 1 352 0
	b .L92
.LVL114:
.L104:
	.loc 1 354 0
	lfs 13,72(28)
	lfs 0,12(11)
	fsubs 0,13,0
.LVL115:
	.loc 1 355 0
	b .L92
.LVL116:
.L103:
	lwz 9,160(24)
.LVL117:
	b .L87
	.cfi_endproc
.LFE47:
	.size	R_CalcBrushAttenCoords, .-R_CalcBrushAttenCoords
	.align 2
	.globl R_SetupBrushLightHAV
	.type	R_SetupBrushLightHAV, @function
R_SetupBrushLightHAV:
.LFB48:
	.loc 1 390 0
	.cfi_startproc
.LVL118:
	mflr 0
	stwu 1,-112(1)
.LCFI23:
	.cfi_def_cfa_offset 112
	.cfi_register 65, 0
	stfd 29,88(1)
	stw 0,116(1)
	stfd 30,96(1)
	.loc 1 399 0
	lwz 9,160(3)
	.loc 1 390 0
	stfd 31,104(1)
	.loc 1 401 0
	lwz 0,144(9)
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 65, 4
	.cfi_offset 61, -24
	.loc 1 390 0
	stw 27,68(1)
	mr 27,4
	.cfi_offset 27, -44
	.loc 1 401 0
	cmpwi 7,0,0
	.loc 1 390 0
	stw 28,72(1)
	stw 31,84(1)
	mr 31,3
	.cfi_offset 31, -28
	.cfi_offset 28, -40
	stw 21,44(1)
	stw 22,48(1)
	stw 23,52(1)
	stw 24,56(1)
	stw 25,60(1)
	stw 26,64(1)
	stw 29,76(1)
	stw 30,80(1)
	.loc 1 398 0
	lfs 31,64(4)
.LVL119:
	lfs 30,68(4)
.LVL120:
	lfs 29,72(4)
.LVL121:
	.loc 1 399 0
	lwz 28,208(9)
	lwz 0,140(9)
.LVL122:
	.loc 1 401 0
	ble- 7,.L105
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	.cfi_offset 26, -48
	.cfi_offset 25, -52
	.cfi_offset 24, -56
	.cfi_offset 23, -60
	.cfi_offset 22, -64
	.cfi_offset 21, -68
	.loc 1 399 0
	mulli 0,0,92
	.loc 1 389 0
	addis 22,4,0x2
	addi 22,22,-32677
	.loc 1 400 0
	li 25,0
	.loc 1 399 0
	add 28,28,0
	.loc 1 401 0
	li 23,0
	.loc 1 409 0
	lis 21,globalVertexTable@ha
.LVL123:
.L113:
	.loc 1 403 0
	lbzu 0,1(22)
	cmpwi 7,0,0
	beq- 7,.L107
	.loc 1 406 0
	lwz 24,36(28)
.LVL124:
	.loc 1 409 0
	lwz 11,globalVertexTable@l(21)
	.loc 1 410 0
	lwz 0,8(24)
	.loc 1 409 0
	lwz 10,24(24)
.LVL125:
	.loc 1 410 0
	cmpwi 7,0,0
	ble- 7,.L107
	.loc 1 389 0
	mulli 30,25,12
	.loc 1 409 0
	lwz 0,8(28)
	mulli 10,10,28
	.loc 1 410 0
	li 26,0
	.loc 1 389 0
	addis 30,30,0x1
	rlwinm 0,0,0,30,30
	add 30,27,30
	.loc 1 409 0
	add 29,11,10
	.loc 1 389 0
	addi 30,30,-16284
	b .L112
.LVL126:
.L117:
	.loc 1 417 0
	fnmadds 11,0,10,11
	stfs 11,-24576(30)
.L109:
	.loc 1 421 0
	lwz 9,48(28)
	.loc 1 425 0
	addi 3,1,20
	.loc 1 422 0
	lfs 10,4(9)
	.loc 1 421 0
	lfs 11,20(9)
	lfs 9,16(9)
	fmuls 11,12,11
	.loc 1 422 0
	fmuls 12,12,10
	lfs 10,0(9)
	.loc 1 421 0
	fmadds 11,13,9,11
	.loc 1 422 0
	fmadds 13,13,10,12
	.loc 1 421 0
	lfs 10,24(9)
	.loc 1 422 0
	lfs 12,8(9)
	.loc 1 421 0
	fnmadds 11,0,10,11
	.loc 1 422 0
	fmadds 0,0,12,13
	.loc 1 421 0
	stfs 11,-24580(30)
	.loc 1 422 0
	stfs 0,-24584(30)
	.loc 1 425 0
	bl VectorNormalize
	.loc 1 427 0
	lfs 0,0(29)
	lfs 13,76(27)
	.loc 1 428 0
	addi 3,1,8
	.loc 1 427 0
	lfs 12,80(27)
	fsubs 0,13,0
	lfs 13,84(27)
	stfs 0,8(1)
	lfs 0,4(29)
	fsubs 0,12,0
	stfs 0,12(1)
	lfs 0,8(29)
	fsubs 0,13,0
	stfs 0,16(1)
	.loc 1 428 0
	bl VectorNormalize
	.loc 1 429 0
	lfs 0,8(1)
	lfs 13,20(1)
	lfs 12,24(1)
	fadds 13,13,0
	lfs 0,12(1)
	lfs 11,28(1)
	fadds 12,12,0
	lfs 0,16(1)
	.loc 1 432 0
	lwz 0,8(28)
	.loc 1 429 0
	fadds 0,11,0
	stfs 13,8(1)
	stfs 12,12(1)
	.loc 1 432 0
	andi. 0,0,2
	.loc 1 429 0
	stfs 0,16(1)
	.loc 1 433 0
	lwz 9,4(28)
	lfs 11,4(9)
	lfs 9,0(9)
	fmuls 11,12,11
	lfs 10,8(9)
	fmadds 11,13,9,11
	.loc 1 432 0
	beq- 0,.L110
	.loc 1 433 0
	fnmadds 11,0,10,11
	stfs 11,0(30)
.L111:
	.loc 1 438 0
	lwz 9,48(28)
	.loc 1 410 0
	addi 26,26,1
	lwz 11,8(24)
	.loc 1 441 0
	addi 25,25,1
.LVL127:
	.loc 1 439 0
	lfs 10,4(9)
	.loc 1 410 0
	addi 29,29,28
.LVL128:
	.loc 1 438 0
	lfs 11,20(9)
	.loc 1 410 0
	cmpw 7,11,26
	.loc 1 438 0
	lfs 9,16(9)
	fmuls 11,12,11
	.loc 1 439 0
	fmuls 12,12,10
	lfs 10,0(9)
	.loc 1 438 0
	fmadds 11,13,9,11
	.loc 1 439 0
	fmadds 13,13,10,12
	.loc 1 438 0
	lfs 10,24(9)
	.loc 1 439 0
	lfs 12,8(9)
	.loc 1 438 0
	fnmadds 11,0,10,11
	.loc 1 439 0
	fmadds 0,0,12,13
	.loc 1 438 0
	stfs 11,-4(30)
	.loc 1 439 0
	stfs 0,-8(30)
	.loc 1 410 0
	addi 30,30,12
	ble- 7,.L116
.LVL129:
.L112:
	.loc 1 413 0
	lfs 13,0(29)
	.loc 1 416 0
	cmpwi 7,0,0
	.loc 1 413 0
	fsubs 13,31,13
	stfs 13,20(1)
	lfs 12,4(29)
	fsubs 12,30,12
	stfs 12,24(1)
	lfs 0,8(29)
	fsubs 0,29,0
	stfs 0,28(1)
	.loc 1 417 0
	lwz 9,4(28)
	lfs 11,4(9)
	lfs 9,0(9)
	fmuls 11,12,11
	lfs 10,8(9)
	fmadds 11,13,9,11
	.loc 1 416 0
	bne- 7,.L117
	.loc 1 419 0
	fmadds 11,0,10,11
	stfs 11,-24576(30)
	b .L109
.L110:
	.loc 1 435 0
	fmadds 11,0,10,11
	stfs 11,0(30)
	b .L111
.LVL130:
.L116:
	lwz 9,160(31)
.LVL131:
.L107:
	.loc 1 401 0
	lwz 0,144(9)
	addi 23,23,1
.LVL132:
	addi 28,28,92
.LVL133:
	cmpw 7,0,23
	bgt+ 7,.L113
.LVL134:
.L105:
	.loc 1 444 0
	lwz 0,116(1)
	lwz 21,44(1)
	mtlr 0
	lwz 22,48(1)
	lwz 23,52(1)
	lwz 24,56(1)
	lwz 25,60(1)
	lwz 26,64(1)
	lwz 27,68(1)
.LVL135:
	lwz 28,72(1)
	lwz 29,76(1)
	lwz 30,80(1)
	lwz 31,84(1)
.LVL136:
	lfd 29,88(1)
.LVL137:
	lfd 30,96(1)
.LVL138:
	lfd 31,104(1)
.LVL139:
	addi 1,1,112
.LCFI24:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
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
	.cfi_endproc
.LFE48:
	.size	R_SetupBrushLightHAV, .-R_SetupBrushLightHAV
	.align 2
	.globl R_SetupBrushInstantForLight
	.type	R_SetupBrushInstantForLight, @function
R_SetupBrushInstantForLight:
.LFB49:
	.loc 1 447 0
	.cfi_startproc
.LVL140:
	stwu 1,-64(1)
.LCFI25:
	.cfi_def_cfa_offset 64
	mflr 0
	mfcr 12
	stw 30,56(1)
	mr 30,3
	.cfi_offset 30, -8
	.cfi_register 70, 12
	.cfi_register 65, 0
	stw 0,68(1)
	stw 12,40(1)
	stw 31,60(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 29,52(1)
	.loc 1 452 0
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 31, -4
	.cfi_offset 70, -24
	.cfi_offset 65, 4
	bl R_AllocateBrushLightInstant
.LVL141:
	.loc 1 454 0
	lwz 9,160(30)
	.loc 1 452 0
	mr 31,3
.LVL142:
	.loc 1 454 0
	lfs 12,112(30)
	.loc 1 457 0
	addi 4,1,8
	.loc 1 454 0
	lfs 9,84(9)
	.loc 1 457 0
	addi 3,1,20
.LVL143:
	.loc 1 454 0
	lfs 10,88(9)
	lfs 11,92(9)
	fadds 9,12,9
	.loc 1 455 0
	lfs 6,96(9)
	lfs 7,100(9)
	lfs 8,104(9)
	fadds 12,12,6
	.loc 1 454 0
	lfs 13,116(30)
	lfs 0,120(30)
	fadds 10,13,10
	stfs 9,20(1)
	fadds 11,0,11
	.loc 1 455 0
	stfs 12,8(1)
	fadds 13,13,7
	fadds 0,0,8
	.loc 1 454 0
	stfs 10,24(1)
	stfs 11,28(1)
	.loc 1 455 0
	stfs 13,12(1)
	stfs 0,16(1)
	.loc 1 457 0
	bl R_CullBox
	stb 3,88(31)
	.loc 1 464 0
	mr 4,31
	.loc 1 462 0
	stw 31,264(30)
	.loc 1 464 0
	mr 3,30
	bl R_SetupBrushObjectSpace
	.loc 1 466 0
	mr 3,30
	mr 4,31
	bl CheckBrushLightUpdate
.LVL144:
	.loc 1 467 0
	cmpwi 4,3,0
	bne- 4,.L125
	.loc 1 488 0
	lis 9,brushCacheRequests@ha
	.loc 1 491 0
	mr 3,31
.LVL145:
	.loc 1 488 0
	lwz 11,brushCacheRequests@l(9)
	addi 0,11,1
	stw 0,brushCacheRequests@l(9)
	.loc 1 491 0
	bl CheckBrushHalfAngle
	cmpwi 7,3,0
	beq- 7,.L122
	lbz 0,88(31)
	cmpwi 7,0,0
	.loc 1 492 0
	beq- 7,.L126
.L123:
	.loc 1 494 0
	lis 9,r_refdef@ha
	la 9,r_refdef@l(9)
	lwz 10,112(9)
	lwz 11,116(9)
	lwz 0,120(9)
	stw 10,40(31)
	stw 11,44(31)
	stw 0,48(31)
	.loc 1 496 0
	bne- 4,.L124
	.loc 1 496 0 is_stmt 0 discriminator 1
	lis 9,brushPartialCacheHits@ha
	lwz 11,brushPartialCacheHits@l(9)
	addi 0,11,1
	stw 0,brushPartialCacheHits@l(9)
.L124:
	.loc 1 502 0 is_stmt 1
	lis 9,r_framecount@ha
	.loc 1 503 0
	lwz 12,40(1)
	.loc 1 502 0
	lwz 0,r_framecount@l(9)
	.loc 1 503 0
	lwz 27,44(1)
	mtcrf 8,12
	.loc 1 502 0
	stw 0,0(31)
	.loc 1 503 0
	lwz 0,68(1)
	lwz 28,48(1)
	mtlr 0
	lwz 29,52(1)
	lwz 30,56(1)
.LVL146:
	lwz 31,60(1)
.LVL147:
	addi 1,1,64
	.cfi_remember_state
.LCFI26:
	.cfi_def_cfa_offset 0
	.cfi_restore 70
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL148:
.L125:
.LCFI27:
	.cfi_restore_state
	.loc 1 469 0
	mr 3,30
.LVL149:
	mr 4,31
	bl R_CalcBrushVolumeVerts
	.loc 1 471 0
	lbz 0,88(31)
	cmpwi 7,0,0
	bne- 7,.L120
	.loc 1 472 0
	lis 9,gl_cardtype@ha
	lwz 9,gl_cardtype@l(9)
	cmplwi 6,9,1
	ble- 6,.L127
.L120:
	.loc 1 480 0
	lis 9,currentshadowlight@ha
	.loc 1 488 0
	lis 11,brushCacheRequests@ha
	.loc 1 480 0
	lwz 9,currentshadowlight@l(9)
	.loc 1 488 0
	lwz 10,brushCacheRequests@l(11)
	.loc 1 480 0
	lwz 12,0(9)
	.loc 1 479 0
	lwz 27,112(30)
	.loc 1 488 0
	addi 10,10,1
	.loc 1 479 0
	lwz 28,116(30)
	lwz 29,120(30)
	.loc 1 480 0
	lwz 3,4(9)
	lwz 4,8(9)
	.loc 1 481 0
	lwz 5,148(30)
	lwz 6,152(30)
	lwz 7,156(30)
	.loc 1 482 0
	lwz 8,36(9)
	.loc 1 488 0
	stw 10,brushCacheRequests@l(11)
	.loc 1 479 0
	stw 27,4(31)
	stw 28,8(31)
	stw 29,12(31)
	.loc 1 480 0
	stw 12,16(31)
	stw 3,20(31)
	stw 4,24(31)
	.loc 1 481 0
	stw 5,28(31)
	stw 6,32(31)
	stw 7,36(31)
	.loc 1 482 0
	stw 8,52(31)
	.loc 1 483 0
	stw 9,60(31)
	.loc 1 484 0
	stw 30,56(31)
	.loc 1 485 0
	stb 0,89(31)
	.loc 1 492 0
	bne+ 7,.L123
.L126:
	.loc 1 493 0
	mr 3,30
	mr 4,31
	bl R_SetupBrushLightHAV
	b .L123
.L122:
	.loc 1 498 0
	lis 9,brushFullCacheHits@ha
	.loc 1 503 0
	lwz 12,40(1)
	.loc 1 498 0
	lwz 11,brushFullCacheHits@l(9)
	.loc 1 503 0
	lwz 27,44(1)
	mtcrf 8,12
	.loc 1 498 0
	addi 0,11,1
	.loc 1 503 0
	lwz 28,48(1)
	.loc 1 498 0
	stw 0,brushFullCacheHits@l(9)
	.loc 1 502 0
	lis 9,r_framecount@ha
	lwz 0,r_framecount@l(9)
	.loc 1 503 0
	lwz 29,52(1)
	.loc 1 502 0
	stw 0,0(31)
	.loc 1 503 0
	lwz 0,68(1)
	lwz 30,56(1)
.LVL150:
	mtlr 0
	lwz 31,60(1)
.LVL151:
	addi 1,1,64
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 70
.LCFI28:
	.cfi_def_cfa_offset 0
	blr
.LVL152:
.L127:
.LCFI29:
	.cfi_restore_state
	.loc 1 473 0
	mr 3,30
	mr 4,31
	bl R_CalcBrushAttenCoords
	lbz 0,88(31)
	cmpwi 7,0,0
	b .L120
	.cfi_endproc
.LFE49:
	.size	R_SetupBrushInstantForLight, .-R_SetupBrushInstantForLight
	.comm	atest,4,4
	.comm	brushPartialCacheHits,4,4
	.comm	brushFullCacheHits,4,4
	.comm	brushCacheRequests,4,4
	.comm	BLightInstantCache,4,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC2:
	.4byte	1065353216
.LC4:
	.4byte	1056964608
.LC5:
	.4byte	0
.LC7:
	.4byte	1501560836
.LC8:
	.4byte	1112014848
.LC9:
	.4byte	1073741824
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC3:
	.4byte	1069128089
	.4byte	-1717986918
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"Allocated BLightInstantCache at %p\n"
.LC1:
	.string	"End at %p\n"
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/bspfile.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/vid.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/cvar.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 14 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x228c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF396
	.byte	0x1
	.4byte	.LASF397
	.4byte	.LASF398
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
	.4byte	0x6c
	.4byte	0x3fe
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x10
	.byte	0x9
	.byte	0x1e
	.4byte	0x443
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x9
	.byte	0x20
	.4byte	0x4ea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x9
	.byte	0x21
	.4byte	0x4f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x9
	.byte	0x22
	.4byte	0x764
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x9
	.byte	0x23
	.4byte	0x4f0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x40
	.byte	0xa
	.byte	0xca
	.4byte	0x4ea
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xa
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xa
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xa
	.byte	0xd0
	.4byte	0x11de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xa
	.byte	0xd2
	.4byte	0xac2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0xa
	.byte	0xd5
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0xa
	.byte	0xd6
	.4byte	0x1209
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0xa
	.byte	0xd8
	.4byte	0x120f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0xa
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"key"
	.byte	0xa
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0xa
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0xa
	.byte	0xdc
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x443
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3fe
	.uleb128 0xe
	.4byte	.LASF74
	.2byte	0x248
	.byte	0x9
	.byte	0x27
	.4byte	0x764
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x9
	.byte	0x29
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x9
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x9
	.byte	0x2d
	.4byte	0x371
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x9
	.byte	0x2f
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x9
	.byte	0x30
	.4byte	0x775
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x9
	.byte	0x31
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x9
	.byte	0x32
	.4byte	0x775
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x9
	.byte	0x33
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x9
	.byte	0x34
	.4byte	0xa3f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x9
	.byte	0x35
	.4byte	0x4f0
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x9
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x9
	.byte	0x37
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x9
	.byte	0x38
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x9
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x9
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x9
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x9
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x9
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x9
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x9
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x9
	.byte	0x44
	.4byte	0xac2
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x9
	.byte	0x48
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x9
	.byte	0x49
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x9
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x9
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x9
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x9
	.byte	0x50
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x9
	.byte	0x51
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x9
	.byte	0x52
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x9
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x9
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x9
	.byte	0x57
	.4byte	0xbe2
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x9
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x9
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x9
	.byte	0x5c
	.4byte	0xbe8
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x9
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x9
	.byte	0x60
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x9
	.byte	0x61
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.4byte	.LASF102
	.byte	0x9
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x9
	.4byte	.LASF103
	.byte	0x9
	.byte	0x63
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x9
	.4byte	.LASF104
	.byte	0x9
	.byte	0x64
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4f6
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0x9
	.byte	0x24
	.4byte	0x3fe
	.uleb128 0xa
	.4byte	0x269
	.4byte	0x78b
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF106
	.2byte	0x1a4
	.byte	0xa
	.2byte	0x180
	.4byte	0xa3f
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0xa
	.2byte	0x182
	.4byte	0x3ee
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x183
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0xa
	.2byte	0x185
	.4byte	0x1552
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0xa
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x187
	.4byte	0xda3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0xa
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.4byte	.LASF16
	.byte	0xa
	.2byte	0x18e
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.4byte	.LASF17
	.byte	0xa
	.2byte	0x18e
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0xa
	.2byte	0x194
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0xa
	.2byte	0x195
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x195
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x19d
	.4byte	0x155e
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x1a0
	.4byte	0x11c1
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0xa
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x1a3
	.4byte	0x1564
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x1a6
	.4byte	0x156a
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x1a9
	.4byte	0x1570
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x1ac
	.4byte	0x1576
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x1af
	.4byte	0x11cd
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x1b2
	.4byte	0x1215
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x10
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x1b5
	.4byte	0x157c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x10
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x1b8
	.4byte	0x1283
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0xa
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x1bb
	.4byte	0x120f
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x10
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x1bd
	.4byte	0x1582
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x10
	.4byte	.LASF139
	.byte	0xa
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x10
	.4byte	.LASF140
	.byte	0xa
	.2byte	0x1c0
	.4byte	0x1592
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x10
	.4byte	.LASF141
	.byte	0xa
	.2byte	0x1c2
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0xa
	.2byte	0x1c3
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0xa
	.2byte	0x1c4
	.4byte	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0xa
	.2byte	0x1c9
	.4byte	0x25e
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x78b
	.uleb128 0xc
	.4byte	.LASF145
	.byte	0x34
	.byte	0xa
	.byte	0xb6
	.4byte	0xac2
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0xa
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xa
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0xa
	.byte	0xbc
	.4byte	0x11de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0xa
	.byte	0xbe
	.4byte	0xac2
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0xa
	.byte	0xc1
	.4byte	0x11c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0xa
	.byte	0xc2
	.4byte	0x11ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF147
	.byte	0xa
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF131
	.byte	0xa
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa45
	.uleb128 0x11
	.4byte	.LASF148
	.4byte	0x20030
	.byte	0xb
	.2byte	0xa09
	.4byte	0xbe2
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0xb
	.2byte	0xa0f
	.4byte	0xbe2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0xb
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0xb
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0xb
	.2byte	0xa17
	.4byte	0x19b3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF153
	.byte	0xb
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF154
	.byte	0xb
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF155
	.byte	0xb
	.2byte	0xa1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0xb
	.2byte	0xa1d
	.4byte	0xd78
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0xb
	.2byte	0xa1f
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.4byte	.LASF158
	.byte	0xb
	.2byte	0xa21
	.4byte	0x19b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0xb
	.2byte	0xa25
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0xb
	.2byte	0xa2b
	.4byte	0x19bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0xb
	.2byte	0xa2d
	.4byte	0x19bf
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0xb
	.2byte	0xa2f
	.4byte	0x19bf
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0xb
	.2byte	0xa31
	.4byte	0x19bf
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x10
	.4byte	.LASF164
	.byte	0xb
	.2byte	0xa33
	.4byte	0x1a04
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0xb
	.2byte	0xa37
	.4byte	0x1a15
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xac8
	.uleb128 0xa
	.4byte	0x33
	.4byte	0xbf8
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF166
	.byte	0x9
	.byte	0x66
	.4byte	0x4f6
	.uleb128 0x8
	.byte	0x94
	.byte	0x9
	.byte	0x69
	.4byte	0xd6d
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0x9
	.byte	0x6b
	.4byte	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF168
	.byte	0x9
	.byte	0x6d
	.4byte	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0x9
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF170
	.byte	0x9
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0x9
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF172
	.byte	0x9
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0x9
	.byte	0x70
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0x9
	.byte	0x72
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0x9
	.byte	0x72
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0x9
	.byte	0x73
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0x9
	.byte	0x73
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF178
	.byte	0x9
	.byte	0x74
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.4byte	.LASF179
	.byte	0x9
	.byte	0x75
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF180
	.byte	0x9
	.byte	0x76
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF181
	.byte	0x9
	.byte	0x76
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF182
	.byte	0x9
	.byte	0x78
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.4byte	.LASF183
	.byte	0x9
	.byte	0x79
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF184
	.byte	0x9
	.byte	0x7a
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF185
	.byte	0x9
	.byte	0x7c
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.4byte	.LASF186
	.byte	0x9
	.byte	0x7d
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.4byte	.LASF187
	.byte	0x9
	.byte	0x7f
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0x9
	.byte	0x80
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0x9
	.byte	0x82
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.4byte	.LASF190
	.byte	0x9
	.byte	0x82
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x9
	.4byte	.LASF191
	.byte	0x9
	.byte	0x84
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0
	.uleb128 0x6
	.4byte	.LASF192
	.byte	0x9
	.byte	0x85
	.4byte	0xc03
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbf8
	.uleb128 0xa
	.4byte	0x41
	.4byte	0xd8e
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xc
	.byte	0x34
	.4byte	0xda3
	.uleb128 0x13
	.4byte	.LASF193
	.sleb128 0
	.uleb128 0x13
	.4byte	.LASF194
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF195
	.byte	0xc
	.byte	0x34
	.4byte	0xd8e
	.uleb128 0x8
	.byte	0x4
	.byte	0xc
	.byte	0x64
	.4byte	0xdd1
	.uleb128 0xd
	.string	"v"
	.byte	0xc
	.byte	0x65
	.4byte	0xdd1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0xc
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0xde1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF197
	.byte	0xc
	.byte	0x67
	.4byte	0xdae
	.uleb128 0x8
	.byte	0xc
	.byte	0xa
	.byte	0x3b
	.4byte	0xe03
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0xa
	.byte	0x3d
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF199
	.byte	0xa
	.byte	0x3e
	.4byte	0xdec
	.uleb128 0x8
	.byte	0x1c
	.byte	0xa
	.byte	0x43
	.4byte	0xe41
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0xa
	.byte	0x45
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0xa
	.byte	0x46
	.4byte	0xe41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF201
	.byte	0xa
	.byte	0x47
	.4byte	0xe41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0xe51
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF202
	.byte	0xa
	.byte	0x48
	.4byte	0xe0e
	.uleb128 0xc
	.4byte	.LASF203
	.byte	0x14
	.byte	0xa
	.byte	0x52
	.4byte	0xeaf
	.uleb128 0x9
	.4byte	.LASF204
	.byte	0xa
	.byte	0x54
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0xa
	.byte	0x55
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0xa
	.byte	0x56
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF206
	.byte	0xa
	.byte	0x57
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xd
	.string	"pad"
	.byte	0xa
	.byte	0x58
	.4byte	0xeaf
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0xebf
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF207
	.byte	0xa
	.byte	0x59
	.4byte	0xe5c
	.uleb128 0xc
	.4byte	.LASF208
	.byte	0x48
	.byte	0xa
	.byte	0x5b
	.4byte	0xf7f
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0xa
	.byte	0x5d
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0xa
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0xa
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0xa
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF210
	.byte	0xa
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF211
	.byte	0xa
	.byte	0x61
	.4byte	0x10a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF212
	.byte	0xa
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF213
	.byte	0xa
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF214
	.byte	0xa
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF215
	.byte	0xa
	.byte	0x64
	.4byte	0x10aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF216
	.byte	0xa
	.byte	0x65
	.4byte	0x10aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF217
	.byte	0xa
	.byte	0x66
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF218
	.byte	0x5c
	.byte	0xa
	.byte	0x96
	.4byte	0x10a4
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0xa
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0xa
	.byte	0x9a
	.4byte	0x11c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0xa
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF219
	.byte	0xa
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF125
	.byte	0xa
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF220
	.byte	0xa
	.byte	0xa0
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF221
	.byte	0xa
	.byte	0xa1
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF222
	.byte	0xa
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF223
	.byte	0xa
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF224
	.byte	0xa
	.byte	0xa5
	.4byte	0x11c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF211
	.byte	0xa
	.byte	0xa6
	.4byte	0x10a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF225
	.byte	0xa
	.byte	0xa7
	.4byte	0x10a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF130
	.byte	0xa
	.byte	0xa9
	.4byte	0x11cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0xa
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0xa
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF226
	.byte	0xa
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF227
	.byte	0xa
	.byte	0xb0
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF228
	.byte	0xa
	.byte	0xb1
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF229
	.byte	0xa
	.byte	0xb2
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF230
	.byte	0xa
	.byte	0xb3
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf7f
	.uleb128 0x5
	.byte	0x4
	.4byte	0xeca
	.uleb128 0x6
	.4byte	.LASF231
	.byte	0xa
	.byte	0x67
	.4byte	0xeca
	.uleb128 0x8
	.byte	0x8
	.byte	0xa
	.byte	0x78
	.4byte	0x10de
	.uleb128 0xd
	.string	"v"
	.byte	0xa
	.byte	0x7a
	.4byte	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF232
	.byte	0xa
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF233
	.byte	0xa
	.byte	0x7c
	.4byte	0x10bb
	.uleb128 0x8
	.byte	0x2c
	.byte	0xa
	.byte	0x7e
	.4byte	0x112a
	.uleb128 0x9
	.4byte	.LASF234
	.byte	0xa
	.byte	0x80
	.4byte	0x1ad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF235
	.byte	0xa
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0xa
	.byte	0x82
	.4byte	0x112a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0xa
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x10b0
	.uleb128 0x6
	.4byte	.LASF236
	.byte	0xa
	.byte	0x84
	.4byte	0x10e9
	.uleb128 0xc
	.4byte	.LASF237
	.byte	0x1c
	.byte	0xa
	.byte	0x8a
	.4byte	0x11aa
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0xa
	.byte	0x8c
	.4byte	0x11aa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF238
	.byte	0xa
	.byte	0x8d
	.4byte	0x11aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF239
	.byte	0xa
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF111
	.byte	0xa
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0xa
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF240
	.byte	0xa
	.byte	0x92
	.4byte	0x11b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF241
	.byte	0xa
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x113b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x11aa
	.uleb128 0x6
	.4byte	.LASF242
	.byte	0xa
	.byte	0x94
	.4byte	0x113b
	.uleb128 0x5
	.byte	0x4
	.4byte	0xebf
	.uleb128 0x5
	.byte	0x4
	.4byte	0x11b6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1130
	.uleb128 0x6
	.4byte	.LASF243
	.byte	0xa
	.byte	0xb4
	.4byte	0xf7f
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x11ee
	.uleb128 0xb
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0xac2
	.4byte	0x11fe
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF244
	.byte	0xa
	.byte	0xc6
	.4byte	0xa45
	.uleb128 0x5
	.byte	0x4
	.4byte	0x76a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1215
	.uleb128 0x5
	.byte	0x4
	.4byte	0x11d3
	.uleb128 0x6
	.4byte	.LASF245
	.byte	0xa
	.byte	0xdd
	.4byte	0x443
	.uleb128 0x8
	.byte	0x28
	.byte	0xa
	.byte	0xe0
	.4byte	0x1283
	.uleb128 0x9
	.4byte	.LASF136
	.byte	0xa
	.byte	0xe2
	.4byte	0x1283
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF121
	.byte	0xa
	.byte	0xe3
	.4byte	0x11c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF246
	.byte	0xa
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF247
	.byte	0xa
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF248
	.byte	0xa
	.byte	0xe6
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF249
	.byte	0xa
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
	.4byte	.LASF250
	.byte	0xa
	.byte	0xe8
	.4byte	0x1226
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x14
	.byte	0x28
	.byte	0xa
	.2byte	0x11e
	.4byte	0x130d
	.uleb128 0x10
	.4byte	.LASF251
	.byte	0xa
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF252
	.byte	0xa
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF253
	.byte	0xa
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF254
	.byte	0xa
	.2byte	0x123
	.4byte	0xde1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF255
	.byte	0xa
	.2byte	0x124
	.4byte	0xde1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0xa
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0xa
	.2byte	0x126
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x15
	.4byte	.LASF256
	.byte	0xa
	.2byte	0x127
	.4byte	0x129a
	.uleb128 0x16
	.2byte	0x53c
	.byte	0xa
	.2byte	0x142
	.4byte	0x14fe
	.uleb128 0x10
	.4byte	.LASF257
	.byte	0xa
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF258
	.byte	0xa
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF259
	.byte	0xa
	.2byte	0x145
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF260
	.byte	0xa
	.2byte	0x146
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF261
	.byte	0xa
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.4byte	.LASF262
	.byte	0xa
	.2byte	0x148
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.4byte	.LASF263
	.byte	0xa
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.4byte	.LASF264
	.byte	0xa
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.4byte	.LASF265
	.byte	0xa
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.4byte	.LASF239
	.byte	0xa
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.4byte	.LASF266
	.byte	0xa
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0xa
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x14f
	.4byte	0xda3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0xa
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.4byte	.LASF267
	.byte	0xa
	.2byte	0x151
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.4byte	.LASF16
	.byte	0xa
	.2byte	0x153
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.4byte	.LASF17
	.byte	0xa
	.2byte	0x153
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.4byte	.LASF252
	.byte	0xa
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.4byte	.LASF268
	.byte	0xa
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.4byte	.LASF269
	.byte	0xa
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.4byte	.LASF270
	.byte	0xa
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.4byte	.LASF271
	.byte	0xa
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0xa
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x10
	.4byte	.LASF272
	.byte	0xa
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x10
	.4byte	.LASF273
	.byte	0xa
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x10
	.4byte	.LASF274
	.byte	0xa
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x10
	.4byte	.LASF209
	.byte	0xa
	.2byte	0x15e
	.4byte	0x14fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x10
	.4byte	.LASF275
	.byte	0xa
	.2byte	0x15f
	.4byte	0x14fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x10
	.4byte	.LASF276
	.byte	0xa
	.2byte	0x160
	.4byte	0xd7e
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x10
	.4byte	.LASF277
	.byte	0xa
	.2byte	0x161
	.4byte	0x1514
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x1514
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x130d
	.4byte	0x1524
	.uleb128 0xb
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF278
	.byte	0xa
	.2byte	0x162
	.4byte	0x1319
	.uleb128 0x17
	.byte	0x4
	.byte	0xa
	.2byte	0x172
	.4byte	0x1552
	.uleb128 0x13
	.4byte	.LASF279
	.sleb128 0
	.uleb128 0x13
	.4byte	.LASF280
	.sleb128 1
	.uleb128 0x13
	.4byte	.LASF281
	.sleb128 2
	.uleb128 0x13
	.4byte	.LASF282
	.sleb128 3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF283
	.byte	0xa
	.2byte	0x172
	.4byte	0x1530
	.uleb128 0x5
	.byte	0x4
	.4byte	0x142
	.uleb128 0x5
	.byte	0x4
	.4byte	0x121b
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe03
	.uleb128 0x5
	.byte	0x4
	.4byte	0x10de
	.uleb128 0x5
	.byte	0x4
	.4byte	0x11fe
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xa
	.4byte	0x1289
	.4byte	0x1592
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x112a
	.uleb128 0x15
	.4byte	.LASF284
	.byte	0xa
	.2byte	0x1cb
	.4byte	0x78b
	.uleb128 0x8
	.byte	0x10
	.byte	0xd
	.byte	0x16
	.4byte	0x15c9
	.uleb128 0x9
	.4byte	.LASF204
	.byte	0xd
	.byte	0x18
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0xd
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF285
	.byte	0xd
	.byte	0x1a
	.4byte	0x15a4
	.uleb128 0x17
	.byte	0x4
	.byte	0xb
	.2byte	0x94f
	.4byte	0x160e
	.uleb128 0x13
	.4byte	.LASF286
	.sleb128 0
	.uleb128 0x13
	.4byte	.LASF287
	.sleb128 1
	.uleb128 0x13
	.4byte	.LASF288
	.sleb128 2
	.uleb128 0x13
	.4byte	.LASF289
	.sleb128 3
	.uleb128 0x13
	.4byte	.LASF290
	.sleb128 4
	.uleb128 0x18
	.string	"ARB"
	.sleb128 5
	.uleb128 0x13
	.4byte	.LASF291
	.sleb128 6
	.uleb128 0x18
	.string	"GL2"
	.sleb128 7
	.byte	0
	.uleb128 0x15
	.4byte	.LASF292
	.byte	0xb
	.2byte	0x961
	.4byte	0x15d4
	.uleb128 0x19
	.4byte	.LASF293
	.byte	0x14
	.byte	0xb
	.2byte	0x981
	.4byte	0x1646
	.uleb128 0x10
	.4byte	.LASF294
	.byte	0xb
	.2byte	0x983
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0xb
	.2byte	0x985
	.4byte	0x1646
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x161a
	.uleb128 0x15
	.4byte	.LASF295
	.byte	0xb
	.2byte	0x987
	.4byte	0x161a
	.uleb128 0x1a
	.4byte	.LASF345
	.byte	0x4
	.byte	0xb
	.2byte	0x98d
	.4byte	0x1696
	.uleb128 0x1b
	.4byte	.LASF296
	.byte	0xb
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1b
	.4byte	.LASF297
	.byte	0xb
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1b
	.4byte	.LASF298
	.byte	0xb
	.2byte	0x993
	.4byte	0x269
	.uleb128 0x1b
	.4byte	.LASF299
	.byte	0xb
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF300
	.byte	0xb
	.2byte	0x997
	.4byte	0x1658
	.uleb128 0xf
	.4byte	.LASF301
	.2byte	0x890
	.byte	0xb
	.2byte	0x99d
	.4byte	0x1856
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0xb
	.2byte	0x99f
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF302
	.byte	0xb
	.2byte	0x9a1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0xb
	.2byte	0x9a1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x9a3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.4byte	.LASF303
	.byte	0xb
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.4byte	.LASF304
	.byte	0xb
	.2byte	0x9a9
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.4byte	.LASF305
	.byte	0xb
	.2byte	0x9ab
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x10
	.4byte	.LASF306
	.byte	0xb
	.2byte	0x9ad
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x10
	.4byte	.LASF307
	.byte	0xb
	.2byte	0x9af
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0xb
	.2byte	0x9b1
	.4byte	0x1564
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1c
	.string	"vis"
	.byte	0xb
	.2byte	0x9b3
	.4byte	0x1856
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.4byte	.LASF308
	.byte	0xb
	.2byte	0x9b5
	.4byte	0x1856
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x10
	.4byte	.LASF309
	.byte	0xb
	.2byte	0x9b7
	.4byte	0x120f
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x10
	.4byte	.LASF310
	.byte	0xb
	.2byte	0x9b9
	.4byte	0x157c
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x10
	.4byte	.LASF311
	.byte	0xb
	.2byte	0x9bb
	.4byte	0x1294
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x10
	.4byte	.LASF312
	.byte	0xb
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x10
	.4byte	.LASF313
	.byte	0xb
	.2byte	0x9bf
	.4byte	0x1867
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x10
	.4byte	.LASF314
	.byte	0xb
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0xb
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x10
	.4byte	.LASF315
	.byte	0xb
	.2byte	0x9c5
	.4byte	0xd78
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x10
	.4byte	.LASF316
	.byte	0xb
	.2byte	0x9c7
	.4byte	0x164c
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x10
	.4byte	.LASF317
	.byte	0xb
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0xb
	.2byte	0x9cb
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x10
	.4byte	.LASF318
	.byte	0xb
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x10
	.4byte	.LASF319
	.byte	0xb
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x10
	.4byte	.LASF320
	.byte	0xb
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x10
	.4byte	.LASF321
	.byte	0xb
	.2byte	0x9d3
	.4byte	0x274
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1867
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1696
	.uleb128 0x15
	.4byte	.LASF322
	.byte	0xb
	.2byte	0x9d5
	.4byte	0x16a2
	.uleb128 0x11
	.4byte	.LASF323
	.4byte	0x1e864
	.byte	0xb
	.2byte	0x9db
	.4byte	0x19b3
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0xb
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF324
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF325
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF326
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.4byte	.LASF327
	.byte	0xb
	.2byte	0x9e1
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.4byte	.LASF328
	.byte	0xb
	.2byte	0x9e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0xb
	.2byte	0x9e5
	.4byte	0xd78
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.4byte	.LASF329
	.byte	0xb
	.2byte	0x9e7
	.4byte	0x19b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.4byte	.LASF330
	.byte	0xb
	.2byte	0x9e9
	.4byte	0x19b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.4byte	.LASF331
	.byte	0xb
	.2byte	0x9eb
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.4byte	.LASF187
	.byte	0xb
	.2byte	0x9eb
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.4byte	.LASF332
	.byte	0xb
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.4byte	.LASF333
	.byte	0xb
	.2byte	0x9f3
	.4byte	0x19bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.4byte	.LASF334
	.byte	0xb
	.2byte	0x9f5
	.4byte	0x19bf
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x10
	.4byte	.LASF335
	.byte	0xb
	.2byte	0x9f7
	.4byte	0x19bf
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x10
	.4byte	.LASF336
	.byte	0xb
	.2byte	0x9f9
	.4byte	0x19bf
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x10
	.4byte	.LASF337
	.byte	0xb
	.2byte	0x9fb
	.4byte	0x19d6
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x10
	.4byte	.LASF274
	.byte	0xb
	.2byte	0x9ff
	.4byte	0x19e7
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x10
	.4byte	.LASF266
	.byte	0xb
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1524
	.uleb128 0x5
	.byte	0x4
	.4byte	0x186d
	.uleb128 0xa
	.4byte	0x269
	.4byte	0x19d6
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.4byte	0x19e7
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x19f8
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x15
	.4byte	.LASF338
	.byte	0xb
	.2byte	0xa05
	.4byte	0x1879
	.uleb128 0xa
	.4byte	0x15c9
	.4byte	0x1a15
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x19f8
	.uleb128 0x11
	.4byte	.LASF339
	.4byte	0x1905c
	.byte	0xb
	.2byte	0xa3d
	.4byte	0x1b55
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0xb
	.2byte	0xa41
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF324
	.byte	0xb
	.2byte	0xa43
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF325
	.byte	0xb
	.2byte	0xa43
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF326
	.byte	0xb
	.2byte	0xa43
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.4byte	.LASF327
	.byte	0xb
	.2byte	0xa43
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.4byte	.LASF328
	.byte	0xb
	.2byte	0xa45
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0xb
	.2byte	0xa47
	.4byte	0xd78
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.4byte	.LASF330
	.byte	0xb
	.2byte	0xa49
	.4byte	0x19b9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.4byte	.LASF331
	.byte	0xb
	.2byte	0xa4b
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.4byte	.LASF187
	.byte	0xb
	.2byte	0xa4b
	.4byte	0x274
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0xb
	.2byte	0xa4d
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0xb
	.2byte	0xa4d
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x59
	.uleb128 0x10
	.4byte	.LASF333
	.byte	0xb
	.2byte	0xa53
	.4byte	0x19bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.4byte	.LASF334
	.byte	0xb
	.2byte	0xa55
	.4byte	0x19bf
	.byte	0x4
	.byte	0x23
	.uleb128 0x605c
	.uleb128 0x10
	.4byte	.LASF335
	.byte	0xb
	.2byte	0xa57
	.4byte	0x19bf
	.byte	0x4
	.byte	0x23
	.uleb128 0xc05c
	.uleb128 0x10
	.4byte	.LASF340
	.byte	0xb
	.2byte	0xa59
	.4byte	0x1b55
	.byte	0x4
	.byte	0x23
	.uleb128 0x1205c
	.uleb128 0x10
	.4byte	.LASF341
	.byte	0xb
	.2byte	0xa5b
	.4byte	0x1b6c
	.byte	0x4
	.byte	0x23
	.uleb128 0x1605c
	.uleb128 0x10
	.4byte	.LASF342
	.byte	0xb
	.2byte	0xa5d
	.4byte	0x19d6
	.byte	0x4
	.byte	0x23
	.uleb128 0x1805c
	.uleb128 0x10
	.4byte	.LASF343
	.byte	0xb
	.2byte	0xa5f
	.4byte	0x19d6
	.byte	0x4
	.byte	0x23
	.uleb128 0x1885c
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x1b6c
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x1b7d
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x15
	.4byte	.LASF344
	.byte	0xb
	.2byte	0xa61
	.4byte	0x1a1b
	.uleb128 0x1a
	.4byte	.LASF346
	.byte	0x4
	.byte	0xe
	.2byte	0x490
	.4byte	0x1be9
	.uleb128 0x1e
	.string	"U8"
	.byte	0xe
	.2byte	0x492
	.4byte	0x1be9
	.uleb128 0x1e
	.string	"S8"
	.byte	0xe
	.2byte	0x493
	.4byte	0x1bee
	.uleb128 0x1e
	.string	"U16"
	.byte	0xe
	.2byte	0x494
	.4byte	0x1bf3
	.uleb128 0x1e
	.string	"S16"
	.byte	0xe
	.2byte	0x495
	.4byte	0x1bf8
	.uleb128 0x1e
	.string	"U32"
	.byte	0xe
	.2byte	0x496
	.4byte	0x1bfd
	.uleb128 0x1e
	.string	"S32"
	.byte	0xe
	.2byte	0x497
	.4byte	0x1c02
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
	.uleb128 0x15
	.4byte	.LASF347
	.byte	0xe
	.2byte	0x499
	.4byte	0x1b89
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF350
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.4byte	0x1c5e
	.uleb128 0x20
	.string	"low"
	.byte	0x1
	.byte	0x31
	.4byte	0x5d
	.4byte	.LLST1
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF399
	.byte	0x1
	.byte	0x31
	.4byte	0x41
	.byte	0x1
	.4byte	0x1c4e
	.uleb128 0x22
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF400
	.byte	0x1
	.byte	0x38
	.4byte	0x41
	.byte	0x1
	.uleb128 0x22
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF355
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.4byte	0x1cb3
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1cb3
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.byte	0x41
	.4byte	0xd78
	.4byte	.LLST2
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x43
	.4byte	0x41
	.4byte	.LLST3
	.uleb128 0x26
	.4byte	.LASF348
	.byte	0x1
	.byte	0x43
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0x26
	.4byte	.LASF349
	.byte	0x1
	.byte	0x43
	.4byte	0x41
	.4byte	.LLST5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1b7d
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF351
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x1cdf
	.uleb128 0x20
	.string	"i"
	.byte	0x1
	.byte	0x66
	.4byte	0x41
	.4byte	.LLST6
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF352
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST7
	.4byte	0x1d42
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.byte	0x6e
	.4byte	0xd78
	.4byte	.LLST8
	.uleb128 0x28
	.4byte	.LASF353
	.byte	0x1
	.byte	0x6e
	.4byte	0x1cb3
	.4byte	.LLST9
	.uleb128 0x29
	.4byte	.LASF354
	.byte	0x1
	.byte	0x70
	.4byte	0x28f
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2a
	.string	"org"
	.byte	0x1
	.byte	0x71
	.4byte	0x2b0
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.string	"res"
	.byte	0x1
	.byte	0x71
	.4byte	0x2b0
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF356
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.4byte	0x7a
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST10
	.4byte	0x1d8a
	.uleb128 0x25
	.string	"v1"
	.byte	0x1
	.byte	0x92
	.4byte	0x1d8a
	.4byte	.LLST11
	.uleb128 0x25
	.string	"v2"
	.byte	0x1
	.byte	0x92
	.4byte	0x1d8a
	.4byte	.LLST12
	.uleb128 0x29
	.4byte	.LASF357
	.byte	0x1
	.byte	0x93
	.4byte	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x269
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF358
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.4byte	0x9f
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST13
	.4byte	0x1dca
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.byte	0x98
	.4byte	0xd78
	.4byte	.LLST14
	.uleb128 0x25
	.string	"ins"
	.byte	0x1
	.byte	0x98
	.4byte	0x1cb3
	.4byte	.LLST15
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF359
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.4byte	0x9f
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST16
	.4byte	0x1df7
	.uleb128 0x25
	.string	"ins"
	.byte	0x1
	.byte	0xb9
	.4byte	0x1cb3
	.4byte	.LLST17
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF360
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.4byte	0x9f
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST18
	.4byte	0x1e5e
	.uleb128 0x28
	.4byte	.LASF361
	.byte	0x1
	.byte	0xc8
	.4byte	0x1215
	.4byte	.LLST19
	.uleb128 0x2c
	.string	"ins"
	.byte	0x1
	.byte	0xc8
	.4byte	0x1cb3
	.byte	0x1
	.byte	0x54
	.uleb128 0x26
	.4byte	.LASF146
	.byte	0x1
	.byte	0xca
	.4byte	0x11c1
	.4byte	.LLST20
	.uleb128 0x26
	.4byte	.LASF205
	.byte	0x1
	.byte	0xcb
	.4byte	0x7a
	.4byte	.LLST21
	.uleb128 0x26
	.4byte	.LASF362
	.byte	0x1
	.byte	0xcc
	.4byte	0x11c7
	.4byte	.LLST22
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF363
	.byte	0x1
	.byte	0xff
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST23
	.4byte	0x1f3e
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.byte	0xff
	.4byte	0xd78
	.4byte	.LLST24
	.uleb128 0x25
	.string	"ins"
	.byte	0x1
	.byte	0xff
	.4byte	0x1cb3
	.4byte	.LLST25
	.uleb128 0x2d
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x101
	.4byte	0x1f3e
	.4byte	.LLST26
	.uleb128 0x2d
	.4byte	.LASF361
	.byte	0x1
	.2byte	0x102
	.4byte	0x1215
	.4byte	.LLST27
	.uleb128 0x2d
	.4byte	.LASF362
	.byte	0x1
	.2byte	0x103
	.4byte	0x11c7
	.4byte	.LLST28
	.uleb128 0x2d
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x104
	.4byte	0x41
	.4byte	.LLST29
	.uleb128 0x2d
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x104
	.4byte	0x41
	.4byte	.LLST30
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x105
	.4byte	0x41
	.4byte	.LLST31
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.2byte	0x105
	.4byte	0x41
	.4byte	.LLST32
	.uleb128 0x2f
	.string	"v1"
	.byte	0x1
	.2byte	0x106
	.4byte	0x274
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2e
	.string	"v2"
	.byte	0x1
	.2byte	0x107
	.4byte	0x1f44
	.4byte	.LLST33
	.uleb128 0x2d
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x108
	.4byte	0x7a
	.4byte	.LLST34
	.uleb128 0x2d
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x109
	.4byte	0x9f
	.4byte	.LLST35
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1598
	.uleb128 0x5
	.byte	0x4
	.4byte	0x274
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF367
	.byte	0x1
	.2byte	0x13f
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST36
	.4byte	0x2069
	.uleb128 0x31
	.string	"e"
	.byte	0x1
	.2byte	0x13f
	.4byte	0xd78
	.4byte	.LLST37
	.uleb128 0x31
	.string	"ins"
	.byte	0x1
	.2byte	0x13f
	.4byte	0x1cb3
	.4byte	.LLST38
	.uleb128 0x2d
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x140
	.4byte	0x1215
	.4byte	.LLST39
	.uleb128 0x2d
	.4byte	.LASF369
	.byte	0x1
	.2byte	0x141
	.4byte	0x11c1
	.4byte	.LLST40
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x142
	.4byte	0x41
	.4byte	.LLST41
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.2byte	0x142
	.4byte	0x41
	.4byte	.LLST42
	.uleb128 0x2f
	.string	"s"
	.byte	0x1
	.2byte	0x143
	.4byte	0x274
	.byte	0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.2byte	0x143
	.4byte	0x274
	.byte	0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2d
	.4byte	.LASF370
	.byte	0x1
	.2byte	0x143
	.4byte	0x274
	.4byte	.LLST43
	.uleb128 0x32
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x143
	.4byte	0x274
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2d
	.4byte	.LASF362
	.byte	0x1
	.2byte	0x144
	.4byte	0x11c7
	.4byte	.LLST44
	.uleb128 0x2d
	.4byte	.LASF372
	.byte	0x1
	.2byte	0x145
	.4byte	0x41
	.4byte	.LLST45
	.uleb128 0x2d
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x145
	.4byte	0x41
	.4byte	.LLST46
	.uleb128 0x2d
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x146
	.4byte	0x7a
	.4byte	.LLST47
	.uleb128 0x2d
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x146
	.4byte	0x7a
	.4byte	.LLST48
	.uleb128 0x2d
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x146
	.4byte	0x7a
	.4byte	.LLST49
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.2byte	0x147
	.4byte	0x1294
	.4byte	.LLST50
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x185
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST51
	.4byte	0x212c
	.uleb128 0x31
	.string	"ent"
	.byte	0x1
	.2byte	0x185
	.4byte	0xd78
	.4byte	.LLST52
	.uleb128 0x31
	.string	"ins"
	.byte	0x1
	.2byte	0x185
	.4byte	0x1cb3
	.4byte	.LLST53
	.uleb128 0x32
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x187
	.4byte	0x274
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2f
	.string	"H"
	.byte	0x1
	.2byte	0x187
	.4byte	0x274
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2d
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x187
	.4byte	0x274
	.4byte	.LLST54
	.uleb128 0x2d
	.4byte	.LASF362
	.byte	0x1
	.2byte	0x188
	.4byte	0x11c7
	.4byte	.LLST55
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.2byte	0x189
	.4byte	0x41
	.4byte	.LLST56
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.2byte	0x189
	.4byte	0x41
	.4byte	.LLST57
	.uleb128 0x2d
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x189
	.4byte	0x41
	.4byte	.LLST58
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.2byte	0x18a
	.4byte	0x1294
	.4byte	.LLST59
	.uleb128 0x2d
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x18b
	.4byte	0x1215
	.4byte	.LLST60
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.4byte	.LASF379
	.byte	0x1
	.2byte	0x1be
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST61
	.4byte	0x2193
	.uleb128 0x31
	.string	"e"
	.byte	0x1
	.2byte	0x1be
	.4byte	0xd78
	.4byte	.LLST62
	.uleb128 0x2d
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x1c0
	.4byte	0x1cb3
	.4byte	.LLST63
	.uleb128 0x32
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x32
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x274
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2d
	.4byte	.LASF380
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x9f
	.4byte	.LLST64
	.byte	0
	.uleb128 0x33
	.4byte	.LASF381
	.byte	0xb
	.2byte	0x23f
	.4byte	0xd6d
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF382
	.byte	0xb
	.2byte	0x21d
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF383
	.byte	0xb
	.2byte	0x21f
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF384
	.byte	0xb
	.2byte	0x2b5
	.4byte	0x3e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF385
	.byte	0xb
	.2byte	0x2d5
	.4byte	0x3e3
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF386
	.byte	0xb
	.2byte	0x963
	.4byte	0x160e
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF387
	.byte	0xb
	.2byte	0xa81
	.4byte	0x19b9
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.4byte	.LASF388
	.byte	0xb
	.2byte	0xa89
	.4byte	0x2203
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe51
	.uleb128 0x34
	.4byte	.LASF389
	.byte	0x1
	.byte	0x29
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	brushCacheRequests
	.uleb128 0x34
	.4byte	.LASF390
	.byte	0x1
	.byte	0x29
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	brushFullCacheHits
	.uleb128 0x34
	.4byte	.LASF391
	.byte	0x1
	.byte	0x29
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	brushPartialCacheHits
	.uleb128 0x35
	.4byte	.LASF392
	.byte	0xb
	.2byte	0xc2c
	.4byte	0x1215
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x33
	.4byte	.LASF393
	.byte	0xe
	.2byte	0x548
	.4byte	0x2260
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.4byte	0x2265
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1c07
	.uleb128 0x34
	.4byte	.LASF394
	.byte	0x1
	.byte	0x22
	.4byte	0x1cb3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	BLightInstantCache
	.uleb128 0x34
	.4byte	.LASF395
	.byte	0x1
	.byte	0x8c
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	atest
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x6
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.sleb128 16
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
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL22-1-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB43-.Ltext0
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
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB44-.Ltext0
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
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-1-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 -40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 4
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL51-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 36
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 160
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x15
	.byte	0x73
	.sleb128 160
	.byte	0x6
	.byte	0x23
	.uleb128 0x8c
	.byte	0x6
	.byte	0x8
	.byte	0x5c
	.byte	0x1e
	.byte	0x73
	.sleb128 160
	.byte	0x6
	.byte	0x23
	.uleb128 0xd0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0xd
	.byte	0x81
	.sleb128 140
	.byte	0x6
	.byte	0x8
	.byte	0x5c
	.byte	0x1e
	.byte	0x81
	.sleb128 208
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x88
	.sleb128 36
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-1-.Ltext0
	.2byte	0x7
	.byte	0x85
	.sleb128 0
	.byte	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL69-1-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x6
	.byte	0x8b
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LFB47-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL109-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x15
	.byte	0x73
	.sleb128 160
	.byte	0x6
	.byte	0x23
	.uleb128 0x8c
	.byte	0x6
	.byte	0x8
	.byte	0x5c
	.byte	0x1e
	.byte	0x73
	.sleb128 160
	.byte	0x6
	.byte	0x23
	.uleb128 0xd0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL89-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 4
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL116-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
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
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
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
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
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
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL89-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 36
	.4byte	.LVL89-1-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL110-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL116-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL116-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL116-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	.LVL116-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL116-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x6
	.byte	0x8a
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL116-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL117-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LFB48-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x7
	.byte	0x74
	.sleb128 64
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0xc
	.byte	0x74
	.sleb128 64
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 68
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0xf
	.byte	0x74
	.sleb128 64
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 68
	.byte	0x93
	.uleb128 0x4
	.byte	0x74
	.sleb128 72
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 36
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x9
	.byte	0x8c
	.sleb128 36
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x15
	.byte	0x73
	.sleb128 160
	.byte	0x6
	.byte	0x23
	.uleb128 0x8c
	.byte	0x6
	.byte	0x8
	.byte	0x5c
	.byte	0x1e
	.byte	0x73
	.sleb128 160
	.byte	0x6
	.byte	0x23
	.uleb128 0xd0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LFB49-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL141-1-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL150-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL152-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL152-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x53
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
.LASF68:
	.string	"compressed_vis"
.LASF173:
	.string	"vrectrightedge"
.LASF58:
	.string	"efrag_s"
.LASF105:
	.string	"efrag_t"
.LASF146:
	.string	"plane"
.LASF116:
	.string	"firstmodelsurface"
.LASF253:
	.string	"interval"
.LASF342:
	.string	"polygonVis"
.LASF106:
	.string	"model_s"
.LASF284:
	.string	"model_t"
.LASF235:
	.string	"mipadjust"
.LASF287:
	.string	"GEFORCE"
.LASF165:
	.string	"lightinstant"
.LASF261:
	.string	"boundingradius"
.LASF121:
	.string	"planes"
.LASF278:
	.string	"aliashdr_t"
.LASF292:
	.string	"qcardtype"
.LASF126:
	.string	"edges"
.LASF147:
	.string	"firstsurface"
.LASF163:
	.string	"binomials"
.LASF303:
	.string	"brightness"
.LASF90:
	.string	"frame_start_time"
.LASF22:
	.string	"numfaces"
.LASF128:
	.string	"nodes"
.LASF382:
	.string	"r_framecount"
.LASF64:
	.string	"contents"
.LASF288:
	.string	"GEFORCE3"
.LASF385:
	.string	"sh_nocache"
.LASF394:
	.string	"BLightInstantCache"
.LASF56:
	.string	"next"
.LASF258:
	.string	"version"
.LASF335:
	.string	"tshalfangles"
.LASF155:
	.string	"lastblend"
.LASF399:
	.string	"SYS_GetArena2Lo"
.LASF383:
	.string	"r_lightTimestamp"
.LASF176:
	.string	"fvrectx_adj"
.LASF323:
	.string	"aliaslightinstant_s"
.LASF331:
	.string	"lightpos"
.LASF100:
	.string	"origin1"
.LASF101:
	.string	"origin2"
.LASF214:
	.string	"anim_max"
.LASF290:
	.string	"PARHELIA"
.LASF263:
	.string	"numskins"
.LASF136:
	.string	"clipnodes"
.LASF183:
	.string	"fvrectbottom"
.LASF79:
	.string	"msg_origins"
.LASF300:
	.string	"lightcmd_t"
.LASF332:
	.string	"lastframeinstant"
.LASF150:
	.string	"lockframe"
.LASF367:
	.string	"R_CalcBrushAttenCoords"
.LASF380:
	.string	"update"
.LASF76:
	.string	"update_type"
.LASF291:
	.string	"NV3x"
.LASF167:
	.string	"vrect"
.LASF110:
	.string	"synctype"
.LASF123:
	.string	"numvertexes"
.LASF196:
	.string	"lightnormalindex"
.LASF75:
	.string	"forcelink"
.LASF69:
	.string	"efrags"
.LASF63:
	.string	"mleaf_s"
.LASF245:
	.string	"mleaf_t"
.LASF220:
	.string	"texturemins"
.LASF192:
	.string	"refdef_t"
.LASF103:
	.string	"angles1"
.LASF104:
	.string	"angles2"
.LASF0:
	.string	"signed char"
.LASF151:
	.string	"updateframe"
.LASF133:
	.string	"numsurfedges"
.LASF344:
	.string	"brushlightinstant_t"
.LASF131:
	.string	"numsurfaces"
.LASF234:
	.string	"vecs"
.LASF194:
	.string	"ST_RAND"
.LASF254:
	.string	"bboxmin"
.LASF10:
	.string	"float"
.LASF39:
	.string	"modelindex"
.LASF273:
	.string	"texcoords"
.LASF199:
	.string	"mvertex_t"
.LASF72:
	.string	"index"
.LASF6:
	.string	"long long unsigned int"
.LASF246:
	.string	"firstclipnode"
.LASF54:
	.string	"server"
.LASF307:
	.string	"halo"
.LASF388:
	.string	"globalVertexTable"
.LASF138:
	.string	"hulls"
.LASF209:
	.string	"gl_texturenum"
.LASF93:
	.string	"pose1"
.LASF94:
	.string	"pose2"
.LASF42:
	.string	"skin"
.LASF376:
	.string	"lightDir"
.LASF249:
	.string	"clip_maxs"
.LASF373:
	.string	"usedattencoords"
.LASF354:
	.string	"transf"
.LASF99:
	.string	"translate_start_time"
.LASF398:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF77:
	.string	"baseline"
.LASF178:
	.string	"vrect_x_adj_shift20"
.LASF82:
	.string	"efrag"
.LASF45:
	.string	"alpha"
.LASF369:
	.string	"splitplane"
.LASF311:
	.string	"volumeVerts"
.LASF112:
	.string	"radius"
.LASF330:
	.string	"lastlight"
.LASF315:
	.string	"owner"
.LASF157:
	.string	"lastshadowonly"
.LASF339:
	.string	"brushlightinstant_s"
.LASF92:
	.string	"blend"
.LASF16:
	.string	"mins"
.LASF145:
	.string	"mnode_s"
.LASF244:
	.string	"mnode_t"
.LASF211:
	.string	"texturechain"
.LASF44:
	.string	"color"
.LASF226:
	.string	"lightmaptexturenum"
.LASF98:
	.string	"leafnums"
.LASF248:
	.string	"clip_mins"
.LASF336:
	.string	"colors"
.LASF308:
	.string	"entvis"
.LASF202:
	.string	"mmvertex_t"
.LASF289:
	.string	"RADEON"
.LASF172:
	.string	"aliasvrectbottom"
.LASF212:
	.string	"anim_total"
.LASF27:
	.string	"width"
.LASF329:
	.string	"lasthdr"
.LASF320:
	.string	"haloalpha"
.LASF298:
	.string	"asVec"
.LASF9:
	.string	"double"
.LASF346:
	.string	"_wgpipe"
.LASF168:
	.string	"aliasvrect"
.LASF15:
	.string	"_Bool"
.LASF122:
	.string	"leafs"
.LASF74:
	.string	"entity_s"
.LASF166:
	.string	"entity_t"
.LASF117:
	.string	"nummodelsurfaces"
.LASF149:
	.string	"_next"
.LASF266:
	.string	"numtris"
.LASF111:
	.string	"flags"
.LASF221:
	.string	"extents"
.LASF215:
	.string	"anim_next"
.LASF285:
	.string	"plane_t"
.LASF174:
	.string	"fvrectx"
.LASF175:
	.string	"fvrecty"
.LASF18:
	.string	"origin"
.LASF52:
	.string	"string"
.LASF350:
	.string	"BINST_InitMem"
.LASF119:
	.string	"submodels"
.LASF200:
	.string	"texture"
.LASF384:
	.string	"sh_visiblevolumes"
.LASF120:
	.string	"numplanes"
.LASF143:
	.string	"entities"
.LASF20:
	.string	"visleafs"
.LASF43:
	.string	"effects"
.LASF276:
	.string	"texels"
.LASF81:
	.string	"model"
.LASF59:
	.string	"leaf"
.LASF299:
	.string	"asVoid"
.LASF280:
	.string	"mod_sprite"
.LASF8:
	.string	"char"
.LASF227:
	.string	"styles"
.LASF24:
	.string	"planenum"
.LASF362:
	.string	"poly"
.LASF48:
	.string	"pflags"
.LASF229:
	.string	"cached_dlight"
.LASF374:
	.string	"colorscale"
.LASF95:
	.string	"aliasframeinstant"
.LASF36:
	.string	"vec3_t"
.LASF319:
	.string	"cubescale"
.LASF304:
	.string	"visible"
.LASF368:
	.string	"psurf"
.LASF21:
	.string	"firstface"
.LASF65:
	.string	"visframe"
.LASF70:
	.string	"firstmarksurface"
.LASF233:
	.string	"medge_t"
.LASF73:
	.string	"ambient_sound_level"
.LASF268:
	.string	"poseverts"
.LASF33:
	.string	"data"
.LASF257:
	.string	"ident"
.LASF236:
	.string	"mtexinfo_t"
.LASF195:
	.string	"synctype_t"
.LASF135:
	.string	"numclipnodes"
.LASF365:
	.string	"visneighcount"
.LASF348:
	.string	"oldest"
.LASF277:
	.string	"frames"
.LASF129:
	.string	"numtexinfo"
.LASF62:
	.string	"entnext"
.LASF83:
	.string	"syncbase"
.LASF142:
	.string	"lightdata"
.LASF352:
	.string	"R_SetupBrushObjectSpace"
.LASF113:
	.string	"clipbox"
.LASF386:
	.string	"gl_cardtype"
.LASF359:
	.string	"CheckBrushHalfAngle"
.LASF390:
	.string	"brushFullCacheHits"
.LASF392:
	.string	"causticschain"
.LASF89:
	.string	"topnode"
.LASF341:
	.string	"colorscales"
.LASF130:
	.string	"texinfo"
.LASF371:
	.string	"nearPt"
.LASF283:
	.string	"modtype_t"
.LASF343:
	.string	"neighbourVis"
.LASF41:
	.string	"colormap"
.LASF230:
	.string	"samples"
.LASF251:
	.string	"firstpose"
.LASF5:
	.string	"long long int"
.LASF228:
	.string	"cached_light"
.LASF115:
	.string	"clipmaxs"
.LASF353:
	.string	"linstant"
.LASF186:
	.string	"yOrigin"
.LASF47:
	.string	"light_lev"
.LASF333:
	.string	"extvertices"
.LASF370:
	.string	"nearToVert"
.LASF312:
	.string	"numVolumeVerts"
.LASF19:
	.string	"headnode"
.LASF26:
	.string	"dclipnode_t"
.LASF232:
	.string	"cachededgeoffset"
.LASF279:
	.string	"mod_brush"
.LASF264:
	.string	"skinwidth"
.LASF259:
	.string	"scale"
.LASF97:
	.string	"numleafs"
.LASF337:
	.string	"triangleVis"
.LASF262:
	.string	"eyeposition"
.LASF53:
	.string	"archive"
.LASF360:
	.string	"R_IsVisibleSurf"
.LASF267:
	.string	"size"
.LASF125:
	.string	"numedges"
.LASF302:
	.string	"baseColor"
.LASF389:
	.string	"brushCacheRequests"
.LASF205:
	.string	"dist"
.LASF61:
	.string	"entity"
.LASF210:
	.string	"gl_lumitex"
.LASF208:
	.string	"texture_s"
.LASF231:
	.string	"texture_t"
.LASF31:
	.string	"vrect_s"
.LASF30:
	.string	"vrect_t"
.LASF327:
	.string	"lastvorg"
.LASF28:
	.string	"height"
.LASF218:
	.string	"msurface_s"
.LASF243:
	.string	"msurface_t"
.LASF281:
	.string	"mod_alias"
.LASF140:
	.string	"textures"
.LASF256:
	.string	"maliasframedesc_t"
.LASF189:
	.string	"fov_x"
.LASF190:
	.string	"fov_y"
.LASF144:
	.string	"cache"
.LASF35:
	.string	"vec_t"
.LASF272:
	.string	"binormals"
.LASF270:
	.string	"commands"
.LASF225:
	.string	"shadowchain"
.LASF152:
	.string	"paliashdr"
.LASF213:
	.string	"anim_min"
.LASF11:
	.string	"long double"
.LASF355:
	.string	"R_AllocateBrushLightInstant"
.LASF400:
	.string	"SYS_SetArena2Lo"
.LASF169:
	.string	"vrectright"
.LASF85:
	.string	"lightTimestamp"
.LASF197:
	.string	"trivertx_t"
.LASF84:
	.string	"skinnum"
.LASF377:
	.string	"lightOr"
.LASF271:
	.string	"triangles"
.LASF316:
	.string	"scizz"
.LASF247:
	.string	"lastclipnode"
.LASF182:
	.string	"fvrectright"
.LASF309:
	.string	"visSurf"
.LASF67:
	.string	"parent"
.LASF305:
	.string	"isStatic"
.LASF2:
	.string	"short int"
.LASF159:
	.string	"shadowonly"
.LASF156:
	.string	"lastent"
.LASF294:
	.string	"coords"
.LASF191:
	.string	"ambientlight"
.LASF12:
	.string	"long int"
.LASF60:
	.string	"leafnext"
.LASF206:
	.string	"signbits"
.LASF222:
	.string	"light_s"
.LASF223:
	.string	"light_t"
.LASF217:
	.string	"offsets"
.LASF255:
	.string	"bboxmax"
.LASF357:
	.string	"diff"
.LASF347:
	.string	"WGPipe"
.LASF338:
	.string	"aliaslightinstant_t"
.LASF340:
	.string	"atencoords"
.LASF345:
	.string	"lightcmd_u"
.LASF326:
	.string	"lasteangles"
.LASF239:
	.string	"numverts"
.LASF293:
	.string	"screenrect_s"
.LASF295:
	.string	"screenrect_t"
.LASF164:
	.string	"triplanes"
.LASF91:
	.string	"frame_interval"
.LASF297:
	.string	"asFloat"
.LASF216:
	.string	"alternate_anims"
.LASF127:
	.string	"numnodes"
.LASF160:
	.string	"vertices"
.LASF177:
	.string	"fvrecty_adj"
.LASF51:
	.string	"name"
.LASF188:
	.string	"viewangles"
.LASF328:
	.string	"lastlradius"
.LASF4:
	.string	"unsigned int"
.LASF107:
	.string	"needload"
.LASF171:
	.string	"aliasvrectright"
.LASF124:
	.string	"vertexes"
.LASF37:
	.string	"matrix_4x4"
.LASF324:
	.string	"lasteorg"
.LASF296:
	.string	"asInt"
.LASF32:
	.string	"cache_user_s"
.LASF137:
	.string	"marksurfaces"
.LASF34:
	.string	"cache_user_t"
.LASF7:
	.string	"long unsigned int"
.LASF274:
	.string	"indecies"
.LASF395:
	.string	"atest"
.LASF78:
	.string	"msgtime"
.LASF314:
	.string	"numVisSurf"
.LASF361:
	.string	"surf"
.LASF356:
	.string	"bdist"
.LASF318:
	.string	"rspeed"
.LASF66:
	.string	"minmaxs"
.LASF161:
	.string	"normals"
.LASF237:
	.string	"glpoly_s"
.LASF242:
	.string	"glpoly_t"
.LASF13:
	.string	"byte"
.LASF325:
	.string	"lastlorg"
.LASF396:
	.string	"GNU C 4.6.3"
.LASF49:
	.string	"entity_state_t"
.LASF358:
	.string	"CheckBrushLightUpdate"
.LASF204:
	.string	"normal"
.LASF102:
	.string	"rotate_start_time"
.LASF118:
	.string	"numsubmodels"
.LASF372:
	.string	"usedcolorscales"
.LASF108:
	.string	"type"
.LASF88:
	.string	"trivial_accept"
.LASF1:
	.string	"unsigned char"
.LASF50:
	.string	"cvar_s"
.LASF57:
	.string	"cvar_t"
.LASF351:
	.string	"R_ClearBrushInstantCaches"
.LASF265:
	.string	"skinheight"
.LASF250:
	.string	"hull_t"
.LASF96:
	.string	"brushlightinstant"
.LASF224:
	.string	"polys"
.LASF379:
	.string	"R_SetupBrushInstantForLight"
.LASF381:
	.string	"r_refdef"
.LASF179:
	.string	"vrectright_adj_shift20"
.LASF153:
	.string	"lastpose1"
.LASF154:
	.string	"lastpose2"
.LASF240:
	.string	"neighbours"
.LASF313:
	.string	"lightCmds"
.LASF286:
	.string	"GENERIC"
.LASF109:
	.string	"numframes"
.LASF134:
	.string	"surfedges"
.LASF46:
	.string	"style"
.LASF71:
	.string	"nummarksurfaces"
.LASF378:
	.string	"usedts"
.LASF141:
	.string	"visdata"
.LASF363:
	.string	"R_CalcBrushVolumeVerts"
.LASF301:
	.string	"shadowlight_s"
.LASF322:
	.string	"shadowlight_t"
.LASF139:
	.string	"numtextures"
.LASF158:
	.string	"lastpaliashdr"
.LASF80:
	.string	"msg_angles"
.LASF40:
	.string	"frame"
.LASF29:
	.string	"pnext"
.LASF23:
	.string	"dmodel_t"
.LASF366:
	.string	"shadow"
.LASF86:
	.string	"dlightframe"
.LASF275:
	.string	"gl_lumatex"
.LASF260:
	.string	"scale_origin"
.LASF132:
	.string	"surfaces"
.LASF17:
	.string	"maxs"
.LASF310:
	.string	"volumeCmds"
.LASF3:
	.string	"short unsigned int"
.LASF364:
	.string	"extrvertcount"
.LASF397:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_brushinstant.c"
.LASF238:
	.string	"chain"
.LASF334:
	.string	"tslights"
.LASF393:
	.string	"wgPipe"
.LASF38:
	.string	"angles"
.LASF241:
	.string	"firstvertex"
.LASF193:
	.string	"ST_SYNC"
.LASF187:
	.string	"vieworg"
.LASF269:
	.string	"posedata"
.LASF25:
	.string	"children"
.LASF185:
	.string	"xOrigin"
.LASF391:
	.string	"brushPartialCacheHits"
.LASF317:
	.string	"filtercube"
.LASF349:
	.string	"oindex"
.LASF170:
	.string	"vrectbottom"
.LASF387:
	.string	"currentshadowlight"
.LASF321:
	.string	"oldlightorigin"
.LASF282:
	.string	"mod_alias3"
.LASF162:
	.string	"tangents"
.LASF203:
	.string	"mplane_s"
.LASF207:
	.string	"mplane_t"
.LASF87:
	.string	"dlightbits"
.LASF114:
	.string	"clipmins"
.LASF184:
	.string	"horizontalFieldOfView"
.LASF55:
	.string	"value"
.LASF375:
	.string	"R_SetupBrushLightHAV"
.LASF180:
	.string	"fvrectright_adj"
.LASF306:
	.string	"castShadow"
.LASF201:
	.string	"lightmap"
.LASF198:
	.string	"position"
.LASF181:
	.string	"fvrectbottom_adj"
.LASF252:
	.string	"numposes"
.LASF148:
	.string	"aliasframeinstant_s"
.LASF14:
	.string	"qboolean"
.LASF219:
	.string	"firstedge"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
