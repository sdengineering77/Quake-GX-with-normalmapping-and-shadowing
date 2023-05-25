	.file	"gl_rsurf.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl R_GetNextVertexIndex
	.type	R_GetNextVertexIndex, @function
R_GetNextVertexIndex:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_rsurf.c"
	.loc 1 75 0
	.cfi_startproc
	.loc 1 76 0
	lis 9,numTempVertices@ha
	.loc 1 77 0
	lwz 3,numTempVertices@l(9)
	blr
	.cfi_endproc
.LFE38:
	.size	R_GetNextVertexIndex, .-R_GetNextVertexIndex
	.align 2
	.globl R_AllocateVertexInTemp
	.type	R_AllocateVertexInTemp, @function
R_AllocateVertexInTemp:
.LFB39:
	.loc 1 81 0
	.cfi_startproc
.LVL0:
	stwu 1,-40(1)
.LCFI0:
	.cfi_def_cfa_offset 40
	mflr 0
	stw 30,32(1)
	.loc 1 87 0
	lis 30,tempVertices@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 81 0
	stw 0,44(1)
	.loc 1 87 0
	lwz 0,tempVertices@l(30)
	.cfi_offset 65, 4
	.loc 1 81 0
	stw 26,16(1)
	mr 26,4
	.cfi_offset 26, -24
	.loc 1 87 0
	cmpwi 7,0,0
	.loc 1 81 0
	stw 27,20(1)
	stw 31,36(1)
	mr 27,5
	.cfi_offset 31, -4
	.cfi_offset 27, -20
	stw 24,8(1)
	mr 31,3
	stw 25,12(1)
	stw 28,24(1)
	stw 29,28(1)
	.loc 1 87 0
	beq- 7,.L3
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	lis 28,numTempVertices@ha
	lis 25,tempVerticesSize@ha
	lwz 3,numTempVertices@l(28)
.LVL1:
	lwz 24,tempVerticesSize@l(25)
	.loc 1 93 0
	cmpw 7,3,24
	bge- 7,.L9
.LVL2:
.L5:
	.loc 1 89 0
	lwz 29,tempVertices@l(30)
.L6:
	.loc 1 103 0
	lwz 11,0(31)
	mulli 0,3,28
	.loc 1 108 0
	addi 9,3,1
	.loc 1 110 0
	lwz 24,8(1)
	.loc 1 103 0
	stwx 11,29,0
	add 29,29,0
	.loc 1 110 0
	lwz 25,12(1)
	.loc 1 103 0
	lwz 0,4(31)
	.loc 1 110 0
	lwz 30,32(1)
	.loc 1 103 0
	stw 0,4(29)
	lwz 0,8(31)
	.loc 1 110 0
	lwz 31,36(1)
.LVL3:
	.loc 1 103 0
	stw 0,8(29)
.LVL4:
	.loc 1 105 0
	lwz 0,0(26)
	stw 0,12(29)
	.loc 1 106 0
	lwz 0,0(27)
	.loc 1 108 0
	stw 9,numTempVertices@l(28)
	.loc 1 106 0
	stw 0,20(29)
.LVL5:
	.loc 1 110 0
	lwz 28,24(1)
	.loc 1 105 0
	lwz 0,4(26)
	.loc 1 110 0
	lwz 26,16(1)
.LVL6:
	.loc 1 105 0
	stw 0,16(29)
	.loc 1 106 0
	lwz 0,4(27)
	.loc 1 110 0
	lwz 27,20(1)
.LVL7:
	.loc 1 106 0
	stw 0,24(29)
.LVL8:
	.loc 1 110 0
	lwz 0,44(1)
	lwz 29,28(1)
	mtlr 0
	addi 1,1,40
	.cfi_remember_state
.LCFI1:
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
.LVL9:
.L9:
.LCFI2:
	.cfi_restore_state
	.loc 1 95 0
	addi 24,24,512
	.loc 1 96 0
	mulli 3,24,28
	.loc 1 95 0
	stw 24,tempVerticesSize@l(25)
	.loc 1 96 0
	bl malloc
.LVL10:
	.loc 1 97 0
	mr. 29,3
	beq- 0,.L10
.LVL11:
.L7:
	.loc 1 98 0
	addi 5,24,-512
	lwz 4,tempVertices@l(30)
	mulli 5,5,28
	mr 3,29
	bl Q_memcpy
	.loc 1 99 0
	lwz 3,tempVertices@l(30)
	bl free
	.loc 1 100 0
	stw 29,tempVertices@l(30)
	lwz 3,numTempVertices@l(28)
	b .L6
.LVL12:
.L3:
	.loc 1 88 0
	li 0,512
	lis 9,tempVerticesSize@ha
	.loc 1 89 0
	li 3,14336
	.loc 1 88 0
	stw 0,tempVerticesSize@l(9)
	.loc 1 89 0
	bl malloc
	lis 28,numTempVertices@ha
	stw 3,tempVertices@l(30)
	li 3,0
	b .L5
.LVL13:
.L10:
	.loc 1 97 0 discriminator 1
	lis 3,.LC0@ha
.LVL14:
	la 3,.LC0@l(3)
	crxor 6,6,6
	bl Sys_Error
	lwz 24,tempVerticesSize@l(25)
	b .L7
	.cfi_endproc
.LFE39:
	.size	R_AllocateVertexInTemp, .-R_AllocateVertexInTemp
	.align 2
	.globl R_CopyVerticesToHunk
	.type	R_CopyVerticesToHunk, @function
R_CopyVerticesToHunk:
.LFB40:
	.loc 1 113 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI3:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 114 0
	lis 31,numTempVertices@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	lwz 3,numTempVertices@l(31)
	.loc 1 113 0
	stw 0,20(1)
	.loc 1 114 0
	mulli 3,3,28
	.loc 1 113 0
	stw 30,8(1)
	.loc 1 115 0
	lis 30,tempVertices@ha
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	.loc 1 114 0
	bl Hunk_Alloc
	.loc 1 115 0
	lwz 5,numTempVertices@l(31)
	lwz 4,tempVertices@l(30)
	.loc 1 114 0
	lis 9,globalVertexTable@ha
	.loc 1 115 0
	mulli 5,5,28
	.loc 1 114 0
	stw 3,globalVertexTable@l(9)
	.loc 1 115 0
	bl Q_memcpy
	.loc 1 116 0
	lwz 3,tempVertices@l(30)
	bl free
	.loc 1 117 0
	lwz 4,numTempVertices@l(31)
	lis 3,.LC1@ha
	la 3,.LC1@l(3)
	crxor 6,6,6
	bl Con_Printf
	.loc 1 119 0
	li 0,0
	.loc 1 120 0
	lis 9,tempVerticesSize@ha
	.loc 1 119 0
	stw 0,tempVertices@l(30)
	.loc 1 121 0
	stw 0,numTempVertices@l(31)
	.loc 1 120 0
	stw 0,tempVerticesSize@l(9)
	.loc 1 122 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	addi 1,1,16
.LCFI4:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE40:
	.size	R_CopyVerticesToHunk, .-R_CopyVerticesToHunk
	.align 2
	.globl R_EnableVertexTable
	.type	R_EnableVertexTable, @function
R_EnableVertexTable:
.LFB41:
	.loc 1 124 0
	.cfi_startproc
.LVL15:
	stwu 1,-24(1)
.LCFI5:
	.cfi_def_cfa_offset 24
	mflr 0
	.loc 1 126 0
	li 4,5126
	li 5,28
	.loc 1 124 0
	stw 29,12(1)
	.loc 1 126 0
	lis 29,globalVertexTable@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
	lwz 6,globalVertexTable@l(29)
	.loc 1 124 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.loc 1 126 0
	li 3,3
.LVL16:
	.loc 1 124 0
	stw 0,28(1)
	stw 30,16(1)
	.loc 1 126 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl glVertexPointer
	.loc 1 127 0
	li 3,0
	lis 30,qglClientActiveTextureARB@ha
	ori 3,3,32884
	bl glEnableClientState
	.loc 1 129 0
	andi. 0,31,1
	bne- 0,.L16
.L13:
	.loc 1 135 0
	andi. 0,31,2
	beq+ 0,.L14
	.loc 1 136 0
	lwz 0,qglClientActiveTextureARB@l(30)
	li 3,0
	ori 3,3,33985
	mtctr 0
	bctrl
	.loc 1 137 0
	lwz 6,globalVertexTable@l(29)
	li 3,2
	li 4,5126
	li 5,28
	addi 6,6,20
	bl glTexCoordPointer
	.loc 1 138 0
	li 3,0
	ori 3,3,32888
	bl glEnableClientState
.L14:
	.loc 1 140 0
	lwz 0,qglClientActiveTextureARB@l(30)
	li 3,0
	ori 3,3,33984
	mtctr 0
	bctrl
	.loc 1 141 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
.LVL17:
	addi 1,1,24
	.cfi_remember_state
.LCFI6:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.LVL18:
.L16:
.LCFI7:
	.cfi_restore_state
	.loc 1 130 0
	lwz 0,qglClientActiveTextureARB@l(30)
	li 3,0
	ori 3,3,33984
	mtctr 0
	bctrl
	.loc 1 131 0
	lwz 6,globalVertexTable@l(29)
	li 3,2
	li 4,5126
	li 5,28
	addi 6,6,12
	bl glTexCoordPointer
	.loc 1 132 0
	li 3,0
	ori 3,3,32888
	bl glEnableClientState
	b .L13
	.cfi_endproc
.LFE41:
	.size	R_EnableVertexTable, .-R_EnableVertexTable
	.align 2
	.globl R_DisableVertexTable
	.type	R_DisableVertexTable, @function
R_DisableVertexTable:
.LFB42:
	.loc 1 143 0
	.cfi_startproc
.LVL19:
	stwu 1,-16(1)
.LCFI8:
	.cfi_def_cfa_offset 16
	mflr 0
	.loc 1 145 0
	lis 9,globalVertexTable@ha
	li 4,5126
	lwz 6,globalVertexTable@l(9)
	li 5,0
	.loc 1 143 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 145 0
	li 3,3
.LVL20:
	.loc 1 143 0
	stw 0,20(1)
	stw 30,8(1)
	.loc 1 145 0
	.cfi_offset 30, -8
	.cfi_offset 65, 4
	bl glVertexPointer
	.loc 1 146 0
	li 3,0
	lis 30,qglClientActiveTextureARB@ha
	ori 3,3,32884
	bl glDisableClientState
	.loc 1 148 0
	andi. 0,31,1
	bne- 0,.L21
.L18:
	.loc 1 153 0
	andi. 0,31,2
	beq+ 0,.L19
	.loc 1 154 0
	lwz 0,qglClientActiveTextureARB@l(30)
	li 3,0
	ori 3,3,33985
	mtctr 0
	bctrl
	.loc 1 155 0
	li 3,0
	ori 3,3,32888
	bl glDisableClientState
.L19:
	.loc 1 157 0
	lwz 0,qglClientActiveTextureARB@l(30)
	li 3,0
	ori 3,3,33984
	mtctr 0
	bctrl
	.loc 1 158 0
	lwz 0,20(1)
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
.LVL21:
	addi 1,1,16
	.cfi_remember_state
.LCFI9:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL22:
.L21:
.LCFI10:
	.cfi_restore_state
	.loc 1 149 0
	lwz 0,qglClientActiveTextureARB@l(30)
	li 3,0
	ori 3,3,33984
	mtctr 0
	bctrl
	.loc 1 150 0
	li 3,0
	ori 3,3,32888
	bl glDisableClientState
	b .L18
	.cfi_endproc
.LFE42:
	.size	R_DisableVertexTable, .-R_DisableVertexTable
	.align 2
	.globl R_AddDynamicLights
	.type	R_AddDynamicLights, @function
R_AddDynamicLights:
.LFB43:
	.loc 1 168 0
	.cfi_startproc
.LVL23:
	stwu 1,-160(1)
.LCFI11:
	.cfi_def_cfa_offset 160
	.loc 1 205 0
	lis 11,0x4330
	.loc 1 179 0
	lha 0,26(3)
	.loc 1 223 0
	lis 12,.LC7@ha
	.loc 1 178 0
	lha 5,24(3)
	.loc 1 168 0
	stw 26,112(1)
	.loc 1 208 0
	srawi. 26,0,4
	.cfi_offset 26, -48
	.loc 1 178 0
	srawi 5,5,4
	.loc 1 168 0
	stw 29,124(1)
	.loc 1 178 0
	addi 5,5,1
.LVL24:
	.loc 1 167 0
	addi 26,26,1
	.loc 1 180 0
	lis 29,cl_dlights+12@ha
	.cfi_offset 29, -36
	.loc 1 168 0
	stfd 29,136(1)
	stfd 30,144(1)
	cmpwi 6,5,0
	stfd 31,152(1)
	.loc 1 180 0
	la 29,cl_dlights+12@l(29)
	.loc 1 168 0
	stw 25,108(1)
	.loc 1 167 0
	slwi 5,5,2
.LVL25:
	.loc 1 168 0
	stw 30,128(1)
	.loc 1 167 0
	slwi 26,26,4
	.loc 1 168 0
	stw 22,96(1)
	.loc 1 167 0
	lis 22,blocklights@ha
	.cfi_offset 22, -64
	.cfi_offset 30, -32
	.cfi_offset 25, -52
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.loc 1 168 0
	stw 23,100(1)
	.loc 1 205 0
	lis 23,.LC3@ha
	.cfi_offset 23, -60
	.loc 1 168 0
	stw 24,104(1)
	stw 27,116(1)
	mr 27,3
	.cfi_offset 27, -44
	.cfi_offset 24, -56
	stw 28,120(1)
	.loc 1 182 0
	li 28,0
	.cfi_offset 28, -40
	.loc 1 168 0
	stw 31,132(1)
	.loc 1 223 0
	lis 31,.LC5@ha
	.cfi_offset 31, -28
	.loc 1 180 0
	lwz 24,48(3)
.LVL26:
	.loc 1 223 0
	lis 3,.LC6@ha
.LVL27:
.L33:
	.loc 1 184 0
	lwz 0,56(27)
	sraw 0,0,28
	rlwinm 8,0,0,31,31
	cmpwi 7,8,0
	beq- 7,.L23
	.loc 1 188 0
	lwz 9,4(27)
	lfs 8,-8(29)
	lfs 6,4(9)
	lfs 10,-12(29)
	fmuls 7,8,6
	lfs 9,0(9)
	lfs 13,-4(29)
	lfs 12,8(9)
	fmadds 7,10,9,7
	lfs 0,12(9)
	.loc 1 187 0
	lfs 5,0(29)
.LVL28:
	.loc 1 191 0
	lfs 11,12(29)
	.loc 1 188 0
	fmadds 7,13,12,7
	fsubs 0,7,0
.LVL29:
	.loc 1 190 0
	fabs 7,0
	fsubs 7,5,7
.LVL30:
	.loc 1 192 0
	fcmpu 7,7,11
	blt- 7,.L23
	.loc 1 205 0
	lha 0,20(27)
	.loc 1 167 0
	fneg 5,0
	.loc 1 202 0
	lfs 30,4(24)
	.loc 1 167 0
	fneg 9,9
	.loc 1 205 0
	xoris 0,0,0x8000
	.loc 1 202 0
	lfs 29,0(24)
	lfs 3,8(24)
	.loc 1 198 0
	fmadds 8,5,6,8
	.loc 1 202 0
	lfs 4,12(24)
	.loc 1 198 0
	fmadds 0,9,0,10
.LVL31:
	.loc 1 205 0
	stw 0,28(1)
	.loc 1 198 0
	fmadds 13,5,12,13
	.loc 1 205 0
	stw 11,24(1)
	.loc 1 202 0
	fmuls 30,8,30
	.loc 1 205 0
	lfs 6,.LC3@l(23)
	.loc 1 194 0
	fsubs 11,7,11
.LVL32:
	.loc 1 203 0
	lfs 1,20(24)
	.loc 1 205 0
	la 25,.LC3@l(23)
	.loc 1 206 0
	lha 0,22(27)
	.loc 1 202 0
	fmadds 12,0,29,30
	.loc 1 203 0
	fmuls 1,8,1
	lfs 31,16(24)
	.loc 1 206 0
	xoris 0,0,0x8000
	.loc 1 203 0
	lfs 2,24(24)
	lfs 9,28(24)
	.loc 1 205 0
	fmr 10,6
	.loc 1 203 0
	fmadds 5,0,31,1
	.loc 1 206 0
	stw 0,36(1)
	stw 11,32(1)
	.loc 1 202 0
	fmadds 3,13,3,12
	.loc 1 205 0
	lfd 12,24(1)
	.loc 1 203 0
	fmadds 5,13,2,5
	.loc 1 206 0
	lfd 13,32(1)
	.loc 1 205 0
	fsub 12,12,10
	.loc 1 198 0
	stfs 0,8(1)
.LVL33:
	.loc 1 206 0
	fsub 13,13,10
	.loc 1 198 0
	stfs 8,12(1)
.LVL34:
	.loc 1 202 0
	fadds 10,3,4
	.loc 1 205 0
	frsp 12,12
	.loc 1 203 0
	fadds 5,5,9
	.loc 1 206 0
	frsp 13,13
	.loc 1 205 0
	fsubs 10,10,12
.LVL35:
	.loc 1 206 0
	fsubs 5,5,13
.LVL36:
	.loc 1 208 0
	blt- 0,.L23
	.loc 1 167 0
	la 6,blocklights@l(22)
	li 30,0
.LVL37:
.L32:
	.loc 1 210 0
	xoris 0,30,0x8000
	stw 11,40(1)
	stw 0,44(1)
	addi 9,1,88
	lfd 0,40(1)
	fsub 0,0,6
	frsp 0,0
	fsubs 0,5,0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 10,88(1)
.LVL38:
	srawi 0,10,31
	xor 10,0,10
	subf 10,0,10
.LVL39:
	.loc 1 213 0
	ble- 6,.L24
	.loc 1 215 0
	lfs 13,0(25)
	.loc 1 219 0
	srawi 4,10,1
	.loc 1 167 0
	li 9,0
	b .L31
.LVL40:
.L38:
	.loc 1 219 0
	stw 8,60(1)
	stw 11,56(1)
	lfd 0,56(1)
	fsub 0,0,13
	frsp 0,0
.LVL41:
.L26:
	.loc 1 222 0
	fcmpu 7,0,11
	bnl- 7,.L27
	.loc 1 223 0
	lwzx 0,6,9
.LVL42:
	fsubs 0,7,0
.LVL43:
	stw 11,72(1)
	stw 0,76(1)
	lfs 12,.LC5@l(31)
	lfd 9,72(1)
	lfs 8,.LC6@l(3)
	fsub 9,9,12
	lfs 12,.LC7@l(12)
	frsp 9,9
	fmadds 0,0,8,9
	fcmpu 7,0,12
	cror 30,29,30
	beq- 7,.L29
	fctiwz 0,0
	stfiwx 0,6,9
.L27:
	addi 9,9,4
	.loc 1 213 0
	cmpw 7,9,5
	beq- 7,.L24
.L31:
	.loc 1 167 0
	slwi 0,9,2
	.loc 1 215 0
	stw 11,48(1)
	xoris 0,0,0x8000
	addi 8,1,84
	stw 0,52(1)
	lfd 0,48(1)
	fsub 0,0,13
	frsp 0,0
	fsubs 0,10,0
	fctiwz 0,0
	stfiwx 0,0,8
	lwz 0,84(1)
.LVL44:
	srawi 8,0,31
.LVL45:
	xor 0,8,0
	subf 0,8,0
.LVL46:
	.loc 1 218 0
	cmpw 7,0,10
	.loc 1 221 0
	srawi 8,0,1
	add 8,10,8
	xoris 7,8,0x8000
	.loc 1 219 0
	add 8,0,4
	xoris 8,8,0x8000
	.loc 1 218 0
	bgt- 7,.L38
	.loc 1 221 0
	stw 7,68(1)
	stw 11,64(1)
	lfd 0,64(1)
	fsub 0,0,13
	frsp 0,0
.LVL47:
	b .L26
.LVL48:
.L29:
	.loc 1 223 0
	fsubs 0,0,12
	addi 8,1,80
	fctiwz 0,0
	stfiwx 0,0,8
	lwz 8,80(1)
	addis 0,8,0x8000
	stwx 0,6,9
	addi 9,9,4
	.loc 1 213 0
	cmpw 7,9,5
	bne+ 7,.L31
.L24:
	addi 30,30,16
	add 6,6,5
	.loc 1 208 0
	cmpw 7,30,26
	bne+ 7,.L32
.LVL49:
.L23:
	.loc 1 182 0
	cmpwi 7,28,31
	addi 29,29,72
	addi 28,28,1
.LVL50:
	bne+ 7,.L33
	.loc 1 227 0
	lwz 22,96(1)
	lwz 23,100(1)
	lwz 24,104(1)
	lwz 25,108(1)
	lwz 26,112(1)
	lwz 27,116(1)
.LVL51:
	lwz 28,120(1)
.LVL52:
	lwz 29,124(1)
	lwz 30,128(1)
	lwz 31,132(1)
	lfd 29,136(1)
	lfd 30,144(1)
	lfd 31,152(1)
	addi 1,1,160
.LCFI12:
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
	blr
	.cfi_endproc
.LFE43:
	.size	R_AddDynamicLights, .-R_AddDynamicLights
	.align 2
	.globl R_BuildLightMap
	.type	R_BuildLightMap, @function
R_BuildLightMap:
.LFB44:
	.loc 1 238 0
	.cfi_startproc
.LVL53:
	mflr 0
	stwu 1,-48(1)
.LCFI13:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	.loc 1 255 0
	lis 9,r_fullbright+12@ha
	lis 11,.LC9@ha
	lfs 13,r_fullbright+12@l(9)
	.loc 1 247 0
	lis 9,r_framecount@ha
	.loc 1 238 0
	stw 0,52(1)
	.loc 1 255 0
	lfs 0,.LC9@l(11)
	.loc 1 247 0
	lwz 9,r_framecount@l(9)
	lwz 0,52(3)
	.cfi_offset 65, 4
	.loc 1 255 0
	fcmpu 7,13,0
	.loc 1 238 0
	stw 30,40(1)
	stw 31,44(1)
	.loc 1 247 0
	xor 0,0,9
	.loc 1 249 0
	lha 31,24(3)
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.loc 1 247 0
	cntlzw 0,0
	.loc 1 250 0
	lha 30,26(3)
	.loc 1 247 0
	srwi 0,0,5
	.loc 1 249 0
	srawi 31,31,4
	.loc 1 238 0
	stw 28,32(1)
	.loc 1 250 0
	srawi 30,30,4
	.loc 1 249 0
	addi 31,31,1
.LVL54:
	.loc 1 250 0
	addi 30,30,1
.LVL55:
	.loc 1 238 0
	stw 24,16(1)
	stw 25,20(1)
	.loc 1 251 0
	mullw 12,31,30
.LVL56:
	.loc 1 238 0
	stw 26,24(1)
	stw 27,28(1)
	stw 29,36(1)
	.loc 1 252 0
	lwz 28,88(3)
	.cfi_offset 29, -12
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
	.cfi_offset 28, -16
.LVL57:
	.loc 1 247 0
	stb 0,84(3)
	.loc 1 255 0
	bne- 7,.L40
	.loc 1 255 0 is_stmt 0 discriminator 1
	lis 11,cl+2688@ha
	lwz 11,cl+2688@l(11)
	lwz 0,408(11)
	cmpwi 7,0,0
	beq- 7,.L40
.LVL58:
	.loc 1 263 0 is_stmt 1 discriminator 1
	cmpwi 6,12,0
	ble- 6,.L42
	.loc 1 264 0
	slwi 10,12,2
	.loc 1 257 0
	lis 11,blocklights-4@ha
	.loc 1 264 0
	addi 10,10,-4
	.loc 1 257 0
	la 11,blocklights-4@l(11)
	.loc 1 264 0
	srwi 10,10,2
	li 0,0
	addi 10,10,1
	mtctr 10
.LVL59:
.L45:
	.loc 1 264 0 is_stmt 0 discriminator 2
	stwu 0,4(11)
	.loc 1 263 0 is_stmt 1 discriminator 2
	bdnz .L45
.L42:
	.loc 1 267 0
	cmpwi 7,28,0
	beq- 7,.L46
	.loc 1 273 0
	lis 25,blocklights-4@ha
	.loc 1 237 0
	slwi 6,12,2
	.loc 1 273 0
	la 25,blocklights-4@l(25)
	.loc 1 271 0
	lis 24,d_lightstylevalue@ha
	.loc 1 237 0
	addi 26,3,63
	addi 27,3,64
	addi 28,28,-1
	li 29,0
	.loc 1 271 0
	la 24,d_lightstylevalue@l(24)
	.loc 1 237 0
	add 6,25,6
.LVL60:
.L47:
	.loc 1 268 0 discriminator 2
	lbzu 0,1(26)
	cmpwi 7,0,255
	beq- 7,.L46
	.loc 1 271 0
	slwi 0,0,2
	lwzx 7,24,0
.LVL61:
	.loc 1 272 0
	stwu 7,4(27)
.LVL62:
	.loc 1 273 0
	ble- 6,.L48
	mr 11,25
	.loc 1 237 0
	mr 10,28
.LVL63:
.L49:
	.loc 1 274 0 discriminator 2
	lbzu 0,1(10)
	lwzu 8,4(11)
	mullw 0,0,7
	.loc 1 273 0 discriminator 2
	cmpw 7,11,6
	.loc 1 274 0 discriminator 2
	add 0,8,0
	stw 0,0(11)
	.loc 1 273 0 discriminator 2
	bne+ 7,.L49
.L48:
.LVL64:
	.loc 1 268 0
	cmpwi 7,29,3
	.loc 1 269 0
	add 28,28,12
	.loc 1 268 0
	addi 29,29,1
.LVL65:
	bne+ 7,.L47
.LVL66:
.L46:
	.loc 1 279 0
	lwz 0,52(3)
	cmpw 7,9,0
	beq- 7,.L76
.LVL67:
.L43:
	.loc 1 284 0
	lis 9,gl_lightmap_format@ha
	lwz 0,gl_lightmap_format@l(9)
	cmpwi 7,0,6408
	beq- 7,.L53
.L77:
	bgt- 7,.L54
	cmpwi 7,0,6406
	beq- 7,.L52
.L51:
	.loc 1 321 0
	lis 3,.LC8@ha
	la 3,.LC8@l(3)
	crxor 6,6,6
	bl Sys_Error
.L39:
	.loc 1 323 0
	lwz 0,52(1)
	lwz 24,16(1)
	mtlr 0
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
.LVL68:
	lwz 31,44(1)
.LVL69:
	addi 1,1,48
	.cfi_remember_state
.LCFI14:
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
.LVL70:
.L40:
.LCFI15:
	.cfi_restore_state
	.loc 1 257 0 discriminator 1
	cmpwi 7,12,0
	ble- 7,.L43
	.loc 1 258 0
	slwi 11,12,2
	.loc 1 257 0
	lis 9,blocklights-4@ha
	.loc 1 258 0
	addi 11,11,-4
	li 0,0
	srwi 11,11,2
	.loc 1 257 0
	la 9,blocklights-4@l(9)
	.loc 1 258 0
	addi 11,11,1
	ori 0,0,65280
	mtctr 11
.LVL71:
.L44:
	.loc 1 258 0 is_stmt 0 discriminator 2
	stwu 0,4(9)
	.loc 1 257 0 is_stmt 1 discriminator 2
	bdnz .L44
	.loc 1 284 0
	lis 9,gl_lightmap_format@ha
	lwz 0,gl_lightmap_format@l(9)
	cmpwi 7,0,6408
	bne+ 7,.L77
.LVL72:
.L53:
	.loc 1 289 0
	cmpwi 7,30,0
	ble- 7,.L39
	.loc 1 287 0
	slwi 7,31,2
	.loc 1 288 0
	lis 8,blocklights@ha
	cmpwi 6,31,0
	.loc 1 287 0
	subf 5,7,5
.LVL73:
	.loc 1 289 0
	li 10,0
	.loc 1 288 0
	la 8,blocklights@l(8)
.LVL74:
.L57:
	.loc 1 291 0 discriminator 1
	ble- 6,.L60
	cmpwi 7,31,0
	.loc 1 237 0
	addi 11,8,-4
	mr 9,4
	.loc 1 298 0
	mtctr 31
	ble- 7,.L78
.LVL75:
.L59:
	.loc 1 293 0
	lwzu 0,4(11)
.LVL76:
	.loc 1 294 0
	srawi 0,0,7
.LVL77:
	.loc 1 298 0
	cmpwi 7,0,255
	ble- 7,.L58
	li 0,255
.L58:
	stb 0,3(9)
	.loc 1 299 0
	addi 9,9,4
.LVL78:
	.loc 1 291 0
	bdnz .L59
	.loc 1 237 0
	add 8,8,7
	add 4,4,7
.LVL79:
.L60:
	.loc 1 289 0
	addi 10,10,1
.LVL80:
	add 4,4,5
.LVL81:
	cmpw 7,30,10
	bgt+ 7,.L57
	.loc 1 323 0
	lwz 0,52(1)
	lwz 24,16(1)
	mtlr 0
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
.LVL82:
	lwz 31,44(1)
.LVL83:
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI16:
	.cfi_def_cfa_offset 0
	blr
.LVL84:
.L54:
.LCFI17:
	.cfi_restore_state
	.loc 1 284 0
	cmpwi 7,0,6409
	beq- 7,.L52
	xoris 9,0,0xffff
	cmpwi 7,9,-32695
	bne 7,.L51
.L52:
.LVL85:
	.loc 1 307 0 discriminator 1
	cmpwi 7,30,0
	ble- 7,.L39
	.loc 1 307 0 is_stmt 0
	lis 8,blocklights@ha
	cmpwi 6,31,0
	li 10,0
	la 8,blocklights@l(8)
	.loc 1 237 0 is_stmt 1
	slwi 7,31,2
.LVL86:
.L56:
	.loc 1 309 0 discriminator 1
	ble- 6,.L63
	cmpwi 7,31,0
	.loc 1 237 0
	addi 11,8,-4
	li 9,0
	.loc 1 316 0
	mtctr 31
	ble- 7,.L79
.LVL87:
.L62:
	.loc 1 311 0
	lwzu 0,4(11)
.LVL88:
	.loc 1 312 0
	srawi 0,0,7
.LVL89:
	.loc 1 316 0
	cmpwi 7,0,255
	ble- 7,.L61
	li 0,255
.L61:
	stbx 0,4,9
	.loc 1 309 0
	addi 9,9,1
.LVL90:
	bdnz .L62
	add 8,8,7
.LVL91:
.L63:
	.loc 1 307 0
	addi 10,10,1
.LVL92:
	add 4,4,5
.LVL93:
	cmpw 7,30,10
	bgt+ 7,.L56
	.loc 1 323 0
	lwz 0,52(1)
	lwz 24,16(1)
	mtlr 0
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
.LVL94:
	lwz 31,44(1)
.LVL95:
	addi 1,1,48
	.cfi_remember_state
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI18:
	.cfi_def_cfa_offset 0
	blr
.LVL96:
.L76:
.LCFI19:
	.cfi_restore_state
	.loc 1 280 0
	stw 4,8(1)
	stw 5,12(1)
	bl R_AddDynamicLights
.LVL97:
	lwz 5,12(1)
	lwz 4,8(1)
	b .L43
.LVL98:
.L78:
	li 0,1
	mtctr 0
	b .L59
.L79:
	li 0,1
	mtctr 0
	b .L62
	.cfi_endproc
.LFE44:
	.size	R_BuildLightMap, .-R_BuildLightMap
	.align 2
	.globl R_TextureAnimation
	.type	R_TextureAnimation, @function
R_TextureAnimation:
.LFB45:
	.loc 1 334 0
	.cfi_startproc
.LVL99:
	mflr 0
	stwu 1,-40(1)
.LCFI20:
	.cfi_def_cfa_offset 40
	.cfi_register 65, 0
	.loc 1 338 0
	lis 9,currententity@ha
	lwz 9,currententity@l(9)
	.loc 1 334 0
	stw 0,44(1)
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	.loc 1 338 0
	lwz 0,168(9)
	.loc 1 334 0
	stw 27,20(1)
	.loc 1 338 0
	cmpwi 7,0,0
	.loc 1 334 0
	stw 28,24(1)
	stw 29,28(1)
	stw 30,32(1)
	.loc 1 338 0
	beq- 7,.L81
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.loc 1 340 0
	lwz 0,52(3)
	cmpwi 7,0,0
	beq- 7,.L81
	mr 31,0
.L81:
.LVL100:
	.loc 1 344 0
	lwz 0,36(31)
	cmpwi 7,0,0
	beq- 7,.L82
	.loc 1 347 0
	lis 9,cl+568@ha
	.loc 1 354 0
	lis 27,.LC12@ha
	.loc 1 347 0
	lfd 13,cl+568@l(9)
	lis 9,.LC11@ha
	lfs 0,.LC11@l(9)
	addi 9,1,8
	.loc 1 356 0
	lis 28,.LC13@ha
	.loc 1 349 0
	li 30,0
	.loc 1 347 0
	fmul 0,13,0
	.loc 1 354 0
	la 27,.LC12@l(27)
	.loc 1 356 0
	la 28,.LC13@l(28)
	.loc 1 347 0
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 9,8(1)
	divw 29,9,0
	mullw 0,29,0
	subf 29,0,9
.LVL101:
.L89:
	.loc 1 350 0 discriminator 1
	lwz 0,40(31)
	.loc 1 355 0 discriminator 1
	addi 30,30,1
.LVL102:
	.loc 1 350 0 discriminator 1
	cmpw 7,29,0
	blt- 7,.L86
	.loc 1 350 0 is_stmt 0 discriminator 2
	lwz 0,44(31)
	cmpw 7,29,0
	blt- 7,.L82
.L86:
	.loc 1 352 0 is_stmt 1
	lwz 31,48(31)
.LVL103:
	.loc 1 353 0
	cmpwi 7,31,0
	beq- 7,.L90
.L84:
.LVL104:
	.loc 1 355 0
	cmpwi 7,30,100
	ble+ 7,.L89
	.loc 1 356 0
	mr 3,28
	crxor 6,6,6
	bl Sys_Error
	b .L89
.LVL105:
.L82:
	.loc 1 360 0
	lwz 0,44(1)
	mr 3,31
	lwz 27,20(1)
	mtlr 0
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
.LVL106:
	addi 1,1,40
	.cfi_remember_state
.LCFI21:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL107:
.L90:
.LCFI22:
	.cfi_restore_state
	.loc 1 354 0
	mr 3,27
	crxor 6,6,6
	bl Sys_Error
	b .L84
	.cfi_endproc
.LFE45:
	.size	R_TextureAnimation, .-R_TextureAnimation
	.align 2
	.globl GL_DisableMultitexture
	.type	GL_DisableMultitexture, @function
GL_DisableMultitexture:
.LFB46:
	.loc 1 542 0
	.cfi_startproc
	stwu 1,-16(1)
.LCFI23:
	.cfi_def_cfa_offset 16
	mflr 0
	stw 31,12(1)
	.loc 1 543 0
	lis 31,mtexenabled@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 542 0
	stw 0,20(1)
	.loc 1 543 0
	lbz 0,mtexenabled@l(31)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq+ 7,.L91
.LBB6:
.LBB7:
	.loc 1 544 0
	li 3,3553
	bl glDisable
	.loc 1 545 0
	li 3,0
	ori 3,3,33984
	bl GL_SelectTexture
	.loc 1 546 0
	li 0,0
	stb 0,mtexenabled@l(31)
.L91:
.LBE7:
.LBE6:
	.loc 1 548 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
.LCFI24:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
	.cfi_endproc
.LFE46:
	.size	GL_DisableMultitexture, .-GL_DisableMultitexture
	.align 2
	.globl GL_EnableMultitexture
	.type	GL_EnableMultitexture, @function
GL_EnableMultitexture:
.LFB47:
	.loc 1 551 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI25:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 552 0
	lis 9,gl_mtexable@ha
	.loc 1 551 0
	stw 0,12(1)
	.loc 1 552 0
	lbz 0,gl_mtexable@l(9)
	.cfi_offset 65, 4
	cmpwi 7,0,0
	beq+ 7,.L93
.LBB10:
.LBB11:
	.loc 1 553 0
	li 3,0
	ori 3,3,33985
	bl GL_SelectTexture
	.loc 1 554 0
	li 3,3553
	bl glEnable
	.loc 1 555 0
	li 0,1
	lis 9,mtexenabled@ha
	stb 0,mtexenabled@l(9)
.L93:
.LBE11:
.LBE10:
	.loc 1 557 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI26:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE47:
	.size	GL_EnableMultitexture, .-GL_EnableMultitexture
	.align 2
	.globl DrawGLWaterPoly
	.type	DrawGLWaterPoly, @function
DrawGLWaterPoly:
.LFB49:
	.loc 1 798 0
	.cfi_startproc
.LVL108:
	mflr 0
	stwu 1,-104(1)
.LCFI27:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
	stw 29,36(1)
	mr 29,3
	.cfi_offset 29, -68
	stw 0,108(1)
	stw 31,44(1)
	stfd 25,48(1)
	stfd 26,56(1)
	stfd 27,64(1)
	stfd 28,72(1)
	stfd 29,80(1)
	stfd 30,88(1)
	stfd 31,96(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 30,40(1)
	.loc 1 803 0
	.cfi_offset 30, -64
	.cfi_offset 28, -72
	.cfi_offset 27, -76
	.cfi_offset 26, -80
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 31, -60
	.cfi_offset 65, 4
	bl GL_DisableMultitexture
.LVL109:
	.loc 1 805 0
	li 3,6
	bl glBegin
	.loc 1 808 0
	lwz 0,8(29)
	.loc 1 807 0
	lis 9,globalVertexTable@ha
	lwz 31,24(29)
	.loc 1 808 0
	cmpwi 7,0,0
	.loc 1 807 0
	lwz 0,globalVertexTable@l(9)
.LVL110:
	.loc 1 808 0
	ble- 7,.L96
	.loc 1 807 0
	mulli 31,31,28
	lis 26,realtime@ha
	lis 27,.LC14@ha
	lis 28,.LC16@ha
	add 31,0,31
	.loc 1 808 0
	li 30,0
	la 26,realtime@l(26)
	la 27,.LC14@l(27)
	la 28,.LC16@l(28)
.LVL111:
.L97:
	.loc 1 810 0 discriminator 2
	lfs 2,16(31)
	.loc 1 808 0 discriminator 2
	addi 30,30,1
	.loc 1 810 0 discriminator 2
	lfs 1,12(31)
	bl glTexCoord2f
	.loc 1 812 0 discriminator 2
	lfs 29,4(31)
	lfd 31,0(26)
	lfd 30,0(27)
	fmadd 1,29,30,31
	bl sin
	lfs 27,8(31)
	fmr 25,1
	fmr 1,27
	fmadd 1,1,30,31
	bl sin
	lfs 26,0(28)
	lfs 0,0(31)
	fmr 28,1
	fmul 25,25,26
	fmadd 25,25,1,0
	frsp 25,25
	stfs 25,8(1)
	.loc 1 813 0 discriminator 2
	lfs 1,0(31)
	.loc 1 808 0 discriminator 2
	addi 31,31,28
	.loc 1 813 0 discriminator 2
	fmadd 1,1,30,31
	bl sin
	.loc 1 816 0 discriminator 2
	addi 3,1,8
	.loc 1 813 0 discriminator 2
	fmul 26,1,26
	.loc 1 814 0 discriminator 2
	stfs 27,16(1)
	.loc 1 813 0 discriminator 2
	fmadd 29,28,26,29
	frsp 29,29
	stfs 29,12(1)
	.loc 1 816 0 discriminator 2
	bl glVertex3fv
.LVL112:
	.loc 1 808 0 discriminator 2
	lwz 0,8(29)
	cmpw 7,0,30
	bgt+ 7,.L97
.LVL113:
.L96:
	.loc 1 818 0
	bl glEnd
	.loc 1 819 0
	lwz 0,108(1)
	lwz 26,24(1)
	mtlr 0
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
.LVL114:
	lwz 30,40(1)
	lwz 31,44(1)
	lfd 25,48(1)
	lfd 26,56(1)
	lfd 27,64(1)
	lfd 28,72(1)
	lfd 29,80(1)
	lfd 30,88(1)
	lfd 31,96(1)
	addi 1,1,104
.LCFI28:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
	.cfi_endproc
.LFE49:
	.size	DrawGLWaterPoly, .-DrawGLWaterPoly
	.align 2
	.globl DrawGLWaterPolyLightmap
	.type	DrawGLWaterPolyLightmap, @function
DrawGLWaterPolyLightmap:
.LFB50:
	.loc 1 822 0
	.cfi_startproc
.LVL115:
	mflr 0
	stwu 1,-104(1)
.LCFI29:
	.cfi_def_cfa_offset 104
	.cfi_register 65, 0
	stw 29,36(1)
	mr 29,3
	.cfi_offset 29, -68
	stw 0,108(1)
	stw 31,44(1)
	stfd 25,48(1)
	stfd 26,56(1)
	stfd 27,64(1)
	stfd 28,72(1)
	stfd 29,80(1)
	stfd 30,88(1)
	stfd 31,96(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 30,40(1)
	.loc 1 827 0
	.cfi_offset 30, -64
	.cfi_offset 28, -72
	.cfi_offset 27, -76
	.cfi_offset 26, -80
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 31, -60
	.cfi_offset 65, 4
	bl GL_DisableMultitexture
.LVL116:
	.loc 1 829 0
	li 3,6
	bl glBegin
	.loc 1 832 0
	lwz 0,8(29)
	.loc 1 831 0
	lis 9,globalVertexTable@ha
	lwz 31,24(29)
	.loc 1 832 0
	cmpwi 7,0,0
	.loc 1 831 0
	lwz 0,globalVertexTable@l(9)
.LVL117:
	.loc 1 832 0
	ble- 7,.L100
	.loc 1 831 0
	mulli 31,31,28
	lis 26,realtime@ha
	lis 27,.LC14@ha
	lis 28,.LC16@ha
	add 31,0,31
	.loc 1 832 0
	li 30,0
	la 26,realtime@l(26)
	la 27,.LC14@l(27)
	la 28,.LC16@l(28)
.LVL118:
.L101:
	.loc 1 834 0 discriminator 2
	lfs 2,24(31)
	.loc 1 832 0 discriminator 2
	addi 30,30,1
	.loc 1 834 0 discriminator 2
	lfs 1,20(31)
	bl glTexCoord2f
	.loc 1 836 0 discriminator 2
	lfs 29,4(31)
	lfd 31,0(26)
	lfd 30,0(27)
	fmadd 1,29,30,31
	bl sin
	lfs 27,8(31)
	fmr 25,1
	fmr 1,27
	fmadd 1,1,30,31
	bl sin
	lfs 26,0(28)
	lfs 0,0(31)
	fmr 28,1
	fmul 25,25,26
	fmadd 25,25,1,0
	frsp 25,25
	stfs 25,8(1)
	.loc 1 837 0 discriminator 2
	lfs 1,0(31)
	.loc 1 832 0 discriminator 2
	addi 31,31,28
	.loc 1 837 0 discriminator 2
	fmadd 1,1,30,31
	bl sin
	.loc 1 840 0 discriminator 2
	addi 3,1,8
	.loc 1 837 0 discriminator 2
	fmul 26,1,26
	.loc 1 838 0 discriminator 2
	stfs 27,16(1)
	.loc 1 837 0 discriminator 2
	fmadd 29,28,26,29
	frsp 29,29
	stfs 29,12(1)
	.loc 1 840 0 discriminator 2
	bl glVertex3fv
.LVL119:
	.loc 1 832 0 discriminator 2
	lwz 0,8(29)
	cmpw 7,0,30
	bgt+ 7,.L101
.LVL120:
.L100:
	.loc 1 842 0
	bl glEnd
	.loc 1 843 0
	lwz 0,108(1)
	lwz 26,24(1)
	mtlr 0
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
.LVL121:
	lwz 30,40(1)
	lwz 31,44(1)
	lfd 25,48(1)
	lfd 26,56(1)
	lfd 27,64(1)
	lfd 28,72(1)
	lfd 29,80(1)
	lfd 30,88(1)
	lfd 31,96(1)
	addi 1,1,104
.LCFI30:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 60
	.cfi_restore 59
	.cfi_restore 58
	.cfi_restore 57
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
	.cfi_endproc
.LFE50:
	.size	DrawGLWaterPolyLightmap, .-DrawGLWaterPolyLightmap
	.align 2
	.globl DrawGLPoly
	.type	DrawGLPoly, @function
DrawGLPoly:
.LFB51:
	.loc 1 851 0
	.cfi_startproc
.LVL122:
	stwu 1,-24(1)
.LCFI31:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_register 65, 0
	.loc 1 855 0
	li 3,6
.LVL123:
	.loc 1 851 0
	stw 0,28(1)
	stw 31,20(1)
	stw 30,16(1)
	.loc 1 855 0
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	bl glBegin
	.loc 1 858 0
	lwz 0,8(29)
	.loc 1 857 0
	lis 9,globalVertexTable@ha
	lwz 31,24(29)
	.loc 1 858 0
	cmpwi 7,0,0
	.loc 1 857 0
	lwz 0,globalVertexTable@l(9)
.LVL124:
	.loc 1 858 0
	ble- 7,.L104
	.loc 1 857 0
	mulli 31,31,28
	.loc 1 858 0
	li 30,0
	.loc 1 857 0
	add 31,0,31
.LVL125:
.L105:
	.loc 1 860 0 discriminator 2
	lfs 1,12(31)
	.loc 1 858 0 discriminator 2
	addi 30,30,1
	.loc 1 860 0 discriminator 2
	lfs 2,16(31)
	bl glTexCoord2f
	.loc 1 861 0 discriminator 2
	mr 3,31
	bl glVertex3fv
.LVL126:
	.loc 1 858 0 discriminator 2
	lwz 0,8(29)
	addi 31,31,28
.LVL127:
	cmpw 7,0,30
	bgt+ 7,.L105
.LVL128:
.L104:
	.loc 1 863 0
	bl glEnd
	.loc 1 864 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL129:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI32:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE51:
	.size	DrawGLPoly, .-DrawGLPoly
	.align 2
	.globl R_BlendLightmaps
	.type	R_BlendLightmaps, @function
R_BlendLightmaps:
.LFB52:
	.loc 1 883 0
	.cfi_startproc
	stwu 1,-56(1)
.LCFI33:
	.cfi_def_cfa_offset 56
	.loc 1 888 0
	lis 9,r_fullbright+12@ha
	lfs 0,r_fullbright+12@l(9)
	lis 9,.LC9@ha
	.loc 1 883 0
	stfd 31,48(1)
	mflr 0
	.loc 1 888 0
	lfs 31,.LC9@l(9)
	.cfi_register 65, 0
	.cfi_offset 63, -8
	.loc 1 883 0
	stw 22,8(1)
	.loc 1 888 0
	fcmpu 7,0,31
	.loc 1 883 0
	stw 0,60(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.loc 1 888 0
	bne- 7,.L107
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
	.loc 1 891 0
	lis 27,gl_lightmap_format@ha
	lwz 0,gl_lightmap_format@l(27)
	cmpwi 7,0,6409
	beq- 7,.L122
	.loc 1 893 0
	li 9,0
	.loc 1 895 0
	lis 28,.LC17@ha
	.loc 1 893 0
	ori 9,9,32841
	lis 29,.LC18@ha
	cmpw 7,0,9
	beq- 7,.L123
.L110:
	.loc 1 905 0
	lis 9,sh_lightmapbright+12@ha
	.loc 1 906 0
	lis 22,lightmap_polys-4@ha
	.loc 1 905 0
	lfs 1,sh_lightmapbright+12@l(9)
	.loc 1 913 0
	lis 30,lightmap_textures@ha
	lis 31,globalVertexTable@ha
	.loc 1 906 0
	la 22,lightmap_polys-4@l(22)
	.loc 1 905 0
	fmr 2,1
	.loc 1 908 0
	li 23,0
	.loc 1 905 0
	fmr 3,1
	bl glColor3f
	.loc 1 906 0
	lfs 1,.LC17@l(28)
	li 3,8960
	li 4,8704
	bl glTexEnvf
.LVL130:
.L115:
	.loc 1 910 0
	lwzu 25,4(22)
.LVL131:
	.loc 1 911 0
	cmpwi 7,25,0
	beq- 7,.L111
	.loc 1 913 0
	lwz 3,lightmap_textures@l(30)
	la 24,globalVertexTable@l(31)
	add 3,23,3
	bl GL_Bind
.LVL132:
.L114:
	.loc 1 918 0
	li 3,6
	bl glBegin
	.loc 1 921 0
	lwz 0,8(25)
	.loc 1 920 0
	lwz 9,0(24)
	.loc 1 921 0
	cmpwi 7,0,0
	.loc 1 920 0
	lwz 28,24(25)
.LVL133:
	.loc 1 921 0
	ble- 7,.L112
	.loc 1 920 0
	mulli 28,28,28
	.loc 1 921 0
	li 26,0
	.loc 1 920 0
	add 28,9,28
.LVL134:
.L113:
	.loc 1 923 0 discriminator 2
	lfs 1,20(28)
	.loc 1 921 0 discriminator 2
	addi 26,26,1
	.loc 1 923 0 discriminator 2
	lfs 2,24(28)
	bl glTexCoord2f
	.loc 1 924 0 discriminator 2
	mr 3,28
	bl glVertex3fv
.LVL135:
	.loc 1 921 0 discriminator 2
	lwz 0,8(25)
	addi 28,28,28
.LVL136:
	cmpw 7,0,26
	bgt+ 7,.L113
.LVL137:
.L112:
	.loc 1 926 0
	bl glEnd
	.loc 1 916 0
	lwz 25,4(25)
.LVL138:
	cmpwi 7,25,0
	bne+ 7,.L114
	.loc 1 928 0
	stw 25,0(22)
.L111:
.LVL139:
	.loc 1 908 0
	cmpwi 7,23,63
	addi 23,23,1
.LVL140:
	bne+ 7,.L115
	.loc 1 931 0
	lfs 31,.LC18@l(29)
	fmr 1,31
	fmr 2,31
	fmr 3,31
	bl glColor3f
	.loc 1 933 0
	li 3,3042
	bl glDisable
	.loc 1 934 0
	lwz 0,gl_lightmap_format@l(27)
	cmpwi 7,0,6409
	beq- 7,.L124
	.loc 1 936 0
	xoris 9,0,0xffff
	cmpwi 7,9,-32695
	beq 7,.L125
.LVL141:
.L107:
	.loc 1 941 0
	lwz 0,60(1)
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
	lfd 31,48(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI34:
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
.L122:
.LCFI35:
	.cfi_restore_state
	.loc 1 892 0
	li 3,0
	li 4,768
	bl glBlendFunc
	lis 28,.LC17@ha
	lis 29,.LC18@ha
	b .L110
.LVL142:
.L125:
	.loc 1 938 0
	lis 9,.LC19@ha
	li 3,8960
	lfs 1,.LC19@l(9)
	li 4,8704
	bl glTexEnvf
	.loc 1 939 0
	fmr 1,31
	fmr 2,31
	fmr 3,31
	fmr 4,31
	bl glColor4f
	.loc 1 941 0
	lwz 0,60(1)
	lwz 22,8(1)
	mtlr 0
	lwz 23,12(1)
.LVL143:
	lwz 24,16(1)
	lwz 25,20(1)
.LVL144:
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	lfd 31,48(1)
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI36:
	.cfi_def_cfa_offset 0
	blr
.LVL145:
.L124:
.LCFI37:
	.cfi_restore_state
	.loc 1 935 0
	li 3,770
	li 4,771
	bl glBlendFunc
	.loc 1 941 0
	lwz 0,60(1)
	lwz 22,8(1)
	mtlr 0
	lwz 23,12(1)
.LVL146:
	lwz 24,16(1)
	lwz 25,20(1)
.LVL147:
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	lfd 31,48(1)
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 22
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI38:
	.cfi_def_cfa_offset 0
	blr
.L123:
.LCFI39:
	.cfi_restore_state
	.loc 1 895 0
	lfs 1,.LC17@l(28)
	li 3,8960
	li 4,8704
	.loc 1 896 0
	lis 29,.LC18@ha
	.loc 1 895 0
	bl glTexEnvf
	.loc 1 896 0
	fmr 1,31
	fmr 2,31
	lfs 4,.LC18@l(29)
	fmr 3,31
	bl glColor4f
	.loc 1 897 0
	li 3,770
	li 4,771
	bl glBlendFunc
	b .L110
	.cfi_endproc
.LFE52:
	.size	R_BlendLightmaps, .-R_BlendLightmaps
	.align 2
	.globl R_RenderBrushPolyLuma
	.type	R_RenderBrushPolyLuma, @function
R_RenderBrushPolyLuma:
.LFB53:
	.loc 1 1011 0
	.cfi_startproc
.LVL148:
	mflr 0
	stwu 1,-24(1)
.LCFI40:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	.loc 1 1010 0
	lwz 0,8(3)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 1 1011 0
	stw 30,16(1)
	.loc 1 1020 0
	andi. 9,0,20
	beq- 0,.L131
	.cfi_offset 30, -8
	.loc 1 1037 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI41:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.L131:
.LCFI42:
	.cfi_restore_state
	.loc 1 1023 0
	lwz 9,48(3)
	lwz 3,36(9)
.LVL149:
	bl R_TextureAnimation
.LVL150:
	.loc 1 1025 0
	lwz 3,28(3)
.LVL151:
	bl GL_Bind
	.loc 1 1027 0
	li 3,6
	bl glBegin
	.loc 1 1028 0
	lwz 29,36(31)
.LVL152:
	.loc 1 1030 0
	lis 9,globalVertexTable@ha
	.loc 1 1031 0
	lwz 0,8(29)
	.loc 1 1030 0
	lwz 9,globalVertexTable@l(9)
	.loc 1 1031 0
	cmpwi 7,0,0
	.loc 1 1030 0
	lwz 31,24(29)
.LVL153:
	.loc 1 1031 0
	ble- 7,.L128
	.loc 1 1030 0
	mulli 31,31,28
	.loc 1 1031 0
	li 30,0
	.loc 1 1030 0
	add 31,9,31
.LVL154:
.L129:
	.loc 1 1033 0 discriminator 2
	lfs 1,12(31)
	.loc 1 1031 0 discriminator 2
	addi 30,30,1
	.loc 1 1033 0 discriminator 2
	lfs 2,16(31)
	bl glTexCoord2f
	.loc 1 1034 0 discriminator 2
	mr 3,31
	bl glVertex3fv
.LVL155:
	.loc 1 1031 0 discriminator 2
	lwz 0,8(29)
	addi 31,31,28
.LVL156:
	cmpw 7,0,30
	bgt+ 7,.L129
.LVL157:
.L128:
	.loc 1 1036 0
	bl glEnd
	.loc 1 1037 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL158:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI43:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE53:
	.size	R_RenderBrushPolyLuma, .-R_RenderBrushPolyLuma
	.align 2
	.globl R_RenderBrushPolyLightmap
	.type	R_RenderBrushPolyLightmap, @function
R_RenderBrushPolyLightmap:
.LFB54:
	.loc 1 1057 0
	.cfi_startproc
.LVL159:
	mflr 0
	stwu 1,-24(1)
.LCFI44:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,28(1)
	stw 29,12(1)
	.loc 1 1055 0
	lwz 0,8(3)
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.loc 1 1057 0
	stw 30,16(1)
	.loc 1 1069 0
	andi. 9,0,20
	beq- 0,.L137
	.cfi_offset 30, -8
	.loc 1 1094 0
	lwz 0,28(1)
	lwz 29,12(1)
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI45:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
.L137:
.LCFI46:
	.cfi_restore_state
	.loc 1 1073 0
	lis 9,lightmap_textures@ha
	lwz 3,60(3)
.LVL160:
	lwz 0,lightmap_textures@l(9)
	add 3,3,0
	bl GL_Bind
	.loc 1 1075 0
	li 3,6
	bl glBegin
	.loc 1 1077 0
	lwz 29,36(31)
.LVL161:
	.loc 1 1080 0
	lis 9,globalVertexTable@ha
	.loc 1 1082 0
	lwz 0,8(29)
	.loc 1 1080 0
	lwz 9,globalVertexTable@l(9)
	.loc 1 1082 0
	cmpwi 7,0,0
	.loc 1 1080 0
	lwz 31,24(29)
.LVL162:
	.loc 1 1082 0
	ble- 7,.L134
	.loc 1 1080 0
	mulli 31,31,28
	.loc 1 1082 0
	li 30,0
	.loc 1 1080 0
	add 31,9,31
.LVL163:
.L135:
	.loc 1 1086 0 discriminator 2
	lfs 1,20(31)
	.loc 1 1082 0 discriminator 2
	addi 30,30,1
	.loc 1 1086 0 discriminator 2
	lfs 2,24(31)
	bl glTexCoord2f
	.loc 1 1088 0 discriminator 2
	mr 3,31
	bl glVertex3fv
.LVL164:
	.loc 1 1082 0 discriminator 2
	lwz 0,8(29)
	addi 31,31,28
.LVL165:
	cmpw 7,0,30
	bgt+ 7,.L135
.LVL166:
.L134:
	.loc 1 1092 0
	bl glEnd
	.loc 1 1094 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL167:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI47:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE54:
	.size	R_RenderBrushPolyLightmap, .-R_RenderBrushPolyLightmap
	.align 2
	.globl R_RenderBrushPolyCaustics
	.type	R_RenderBrushPolyCaustics, @function
R_RenderBrushPolyCaustics:
.LFB55:
	.loc 1 1098 0
	.cfi_startproc
.LVL168:
	stwu 1,-24(1)
.LCFI48:
	.cfi_def_cfa_offset 24
	mflr 0
	stw 31,20(1)
	mr 31,3
	.cfi_offset 31, -4
	.cfi_register 65, 0
	.loc 1 1102 0
	li 3,6
.LVL169:
	.loc 1 1098 0
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
	.loc 1 1102 0
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	bl glBegin
	.loc 1 1103 0
	lwz 29,36(31)
.LVL170:
	.loc 1 1105 0
	lis 9,globalVertexTable@ha
	lwz 9,globalVertexTable@l(9)
	.loc 1 1106 0
	lwz 0,8(29)
	.loc 1 1105 0
	lwz 31,24(29)
.LVL171:
	.loc 1 1106 0
	cmpwi 7,0,0
	ble- 7,.L139
	.loc 1 1105 0
	mulli 31,31,28
	.loc 1 1106 0
	li 30,0
	.loc 1 1105 0
	add 31,9,31
.LVL172:
.L140:
	.loc 1 1108 0 discriminator 2
	lfs 1,20(31)
	.loc 1 1106 0 discriminator 2
	addi 30,30,1
	.loc 1 1108 0 discriminator 2
	lfs 2,24(31)
	bl glTexCoord2f
	.loc 1 1109 0 discriminator 2
	mr 3,31
	bl glVertex3fv
.LVL173:
	.loc 1 1106 0 discriminator 2
	lwz 0,8(29)
	addi 31,31,28
.LVL174:
	cmpw 7,0,30
	bgt+ 7,.L140
.LVL175:
.L139:
	.loc 1 1112 0
	bl glEnd
	.loc 1 1113 0
	lwz 0,28(1)
	lwz 29,12(1)
.LVL176:
	mtlr 0
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI49:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	blr
	.cfi_endproc
.LFE55:
	.size	R_RenderBrushPolyCaustics, .-R_RenderBrushPolyCaustics
	.align 2
	.globl R_RenderDynamicLightmaps
	.type	R_RenderDynamicLightmaps, @function
R_RenderDynamicLightmaps:
.LFB56:
	.loc 1 1121 0
	.cfi_startproc
.LVL177:
	.loc 1 1129 0
	lwz 0,8(3)
	.loc 1 1127 0
	lis 9,c_brush_polys@ha
	lwz 11,c_brush_polys@l(9)
	.loc 1 1129 0
	andi. 10,0,20
	.loc 1 1127 0
	addi 0,11,1
	stw 0,c_brush_polys@l(9)
	.loc 1 1129 0
	bnelr- 0
	.loc 1 1132 0
	lwz 6,60(3)
	lis 11,lightmap_polys@ha
	la 11,lightmap_polys@l(11)
	lwz 10,36(3)
	slwi 7,6,2
	.loc 1 1138 0
	lis 8,d_lightstylevalue@ha
	.loc 1 1132 0
	lwzx 0,11,7
	.loc 1 1120 0
	addi 9,3,63
	.loc 1 1138 0
	la 8,d_lightstylevalue@l(8)
	.loc 1 1132 0
	stw 0,4(10)
	.loc 1 1138 0
	li 0,4
	mtctr 0
	.loc 1 1133 0
	stwx 10,11,7
.LVL178:
	.loc 1 1120 0
	addi 11,3,64
.LVL179:
.L144:
	.loc 1 1136 0 discriminator 2
	lbzu 0,1(9)
	cmpwi 7,0,255
	.loc 1 1138 0 discriminator 2
	slwi 10,0,2
	.loc 1 1136 0 discriminator 2
	beq- 7,.L146
	.loc 1 1138 0
	lwzx 10,8,10
	lwzu 0,4(11)
	cmpw 7,10,0
	bne- 7,.L145
	.loc 1 1136 0
	bdnz .L144
.L146:
	.loc 1 1141 0
	lis 11,r_framecount@ha
	lwz 9,52(3)
	lwz 0,r_framecount@l(11)
	cmpw 7,9,0
	beq- 7,.L145
	.loc 1 1142 0
	lbz 0,84(3)
	cmpwi 7,0,0
	beqlr- 7
.L145:
	.loc 1 1145 0
	lis 9,r_dynamic+12@ha
	lfs 13,r_dynamic+12@l(9)
	lis 9,.LC9@ha
	lfs 0,.LC9@l(9)
	fcmpu 7,13,0
	beqlr- 7
	.loc 1 1148 0
	lis 8,lightmap_rectchange@ha
	.loc 1 1149 0
	lwz 0,32(3)
	.loc 1 1148 0
	la 8,lightmap_rectchange@l(8)
	.loc 1 1147 0
	lis 10,lightmap_modified@ha
	.loc 1 1148 0
	add 9,8,7
.LVL180:
	.loc 1 1147 0
	li 5,1
	.loc 1 1149 0
	lbz 11,1(9)
	.loc 1 1147 0
	la 10,lightmap_modified@l(10)
	stbx 5,10,6
	.loc 1 1149 0
	cmpw 7,0,11
	blt- 7,.L148
	.loc 1 1154 0
	lwz 0,28(3)
	lbzx 10,8,7
	.loc 1 1149 0
	lbz 6,3(9)
	.loc 1 1154 0
	cmpw 7,0,10
	blt- 7,.L151
.L159:
	lbz 5,2(9)
.L152:
	.loc 1 1159 0
	lha 7,24(3)
	.loc 1 1161 0
	add 5,5,10
	.loc 1 1159 0
	srawi 7,7,4
	addi 7,7,1
.LVL181:
	.loc 1 1161 0
	add 8,7,0
	cmpw 7,5,8
	.loc 1 1160 0
	lha 8,26(3)
	srawi 8,8,4
	addi 8,8,1
.LVL182:
	.loc 1 1161 0
	bge- 7,.L154
	.loc 1 1162 0
	subf 0,10,0
	add 7,0,7
.LVL183:
	stb 7,2(9)
.L154:
	.loc 1 1163 0
	lwz 10,32(3)
	add 6,6,11
	add 8,10,8
.LVL184:
	cmpw 7,6,8
	bge- 7,.L155
	.loc 1 1164 0
	subf 11,11,8
	stb 11,3(9)
	lwz 10,32(3)
.L155:
	.loc 1 1165 0
	lis 9,lightmap_bytes@ha
.LVL185:
	lwz 4,60(3)
	lwz 5,lightmap_bytes@l(9)
	.loc 1 1166 0
	slwi 10,10,7
	lwz 0,28(3)
	.loc 1 1165 0
	lis 9,lightmaps@ha
	mullw 4,5,4
	la 9,lightmaps@l(9)
	.loc 1 1166 0
	add 0,10,0
	.loc 1 1170 0
	.loc 1 1166 0
	mullw 0,5,0
	.loc 1 1165 0
	slwi 4,4,14
	add 4,4,9
	.loc 1 1167 0
	slwi 5,5,7
	add 4,4,0
	b R_BuildLightMap
.LVL186:
.L148:
	.loc 1 1150 0
	lbz 10,3(9)
	li 6,0
	cmpwi 7,10,0
	beq- 7,.L150
	.loc 1 1151 0
	add 11,10,11
	subf 0,0,11
	rlwinm 6,0,0,0xff
	stb 6,3(9)
	lwz 0,32(3)
.L150:
	.loc 1 1152 0
	rlwinm 11,0,0,0xff
	.loc 1 1154 0
	lbzx 10,8,7
	.loc 1 1152 0
	stb 11,1(9)
	.loc 1 1154 0
	lwz 0,28(3)
	cmpw 7,0,10
	bge- 7,.L159
.L151:
	.loc 1 1155 0
	lbz 4,2(9)
	li 5,0
	cmpwi 7,4,0
	beq- 7,.L153
	.loc 1 1156 0
	add 10,4,10
	subf 0,0,10
	rlwinm 5,0,0,0xff
	stb 5,2(9)
	lwz 0,28(3)
.L153:
	.loc 1 1157 0
	rlwinm 10,0,0,0xff
	stbx 10,8,7
	lwz 0,28(3)
	b .L152
	.cfi_endproc
.LFE56:
	.size	R_RenderDynamicLightmaps, .-R_RenderDynamicLightmaps
	.align 2
	.globl R_DrawSequentialPoly
	.type	R_DrawSequentialPoly, @function
R_DrawSequentialPoly:
.LFB48:
	.loc 1 667 0
	.cfi_startproc
.LVL187:
	mflr 0
	stwu 1,-72(1)
.LCFI50:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	stw 30,56(1)
	stw 0,76(1)
	stw 29,52(1)
	mr 29,3
	.cfi_offset 29, -20
	.cfi_offset 65, 4
	.cfi_offset 30, -16
	.loc 1 678 0
	lwz 0,8(3)
	.loc 1 667 0
	stfd 31,64(1)
	.loc 1 678 0
	andi. 30,0,20
	.loc 1 667 0
	stw 26,40(1)
	stw 27,44(1)
	stw 28,48(1)
	stw 31,60(1)
	.loc 1 678 0
	beq- 0,.L175
	.cfi_offset 31, -12
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 63, -8
	.loc 1 757 0
	andi. 9,0,16
	bne- 0,.L176
	.loc 1 768 0
	andi. 9,0,4
	bne- 0,.L177
	.loc 1 786 0
	lwz 0,76(1)
	lwz 26,40(1)
	mtlr 0
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
	lfd 31,64(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI51:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	blr
.L177:
.LCFI52:
	.cfi_restore_state
	.loc 1 770 0
	bl GL_DisableMultitexture
.LVL188:
	.loc 1 771 0
	lis 9,solidskytexture@ha
	lwz 3,solidskytexture@l(9)
	.loc 1 772 0
	lis 28,realtime@ha
	.loc 1 773 0
	lis 30,0x4330
	lis 31,speedscale@ha
	.loc 1 771 0
	bl GL_Bind
	.loc 1 772 0
	lis 9,.LC16@ha
	lfd 13,realtime@l(28)
	.loc 1 775 0
	mr 3,29
	.loc 1 772 0
	lfs 0,.LC16@l(9)
	.loc 1 773 0
	lis 9,.LC3@ha
	lfs 31,.LC3@l(9)
	addi 9,1,32
	.loc 1 772 0
	fmul 0,13,0
	.loc 1 773 0
	stw 30,16(1)
	.loc 1 772 0
	frsp 0,0
.LVL189:
	.loc 1 773 0
	fctiwz 13,0
.LVL190:
	stfiwx 13,0,9
	lwz 0,32(1)
	rlwinm 0,0,0,0,24
	xoris 0,0,0x8000
	stw 0,20(1)
	lfd 13,16(1)
	fsub 13,13,31
	frsp 13,13
	fsubs 0,0,13
.LVL191:
	stfs 0,speedscale@l(31)
	.loc 1 775 0
	bl EmitSkyPolys
	.loc 1 777 0
	li 3,3042
	bl glEnable
	.loc 1 778 0
	lis 9,alphaskytexture@ha
	lwz 3,alphaskytexture@l(9)
	bl GL_Bind
	.loc 1 779 0
	lis 9,.LC22@ha
	lfd 13,realtime@l(28)
	.loc 1 781 0
	mr 3,29
	.loc 1 779 0
	lfs 0,.LC22@l(9)
	.loc 1 780 0
	addi 9,1,36
	stw 30,24(1)
	.loc 1 779 0
	fmul 0,13,0
	frsp 0,0
	.loc 1 780 0
	fctiwz 13,0
.LVL192:
	stfiwx 13,0,9
	lwz 0,36(1)
	rlwinm 0,0,0,0,24
	xoris 0,0,0x8000
	stw 0,28(1)
	lfd 13,24(1)
	fsub 31,13,31
	frsp 31,31
	fsubs 0,0,31
.LVL193:
	stfs 0,speedscale@l(31)
	.loc 1 781 0
	bl EmitSkyPolys
	.loc 1 783 0
	li 3,3042
	bl glDisable
	.loc 1 786 0
	lwz 0,76(1)
	lwz 26,40(1)
	mtlr 0
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
.LVL194:
	lwz 30,56(1)
	lwz 31,60(1)
	lfd 31,64(1)
	addi 1,1,72
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI53:
	.cfi_def_cfa_offset 0
	blr
.LVL195:
.L175:
.LCFI54:
	.cfi_restore_state
	.loc 1 680 0
	bl R_RenderDynamicLightmaps
.LVL196:
	.loc 1 681 0
	lis 9,gl_mtexable@ha
	lbz 0,gl_mtexable@l(9)
	.loc 1 684 0
	lwz 9,48(29)
	.loc 1 681 0
	cmpwi 7,0,0
	beq- 7,.L162
	.loc 1 684 0
	lwz 3,36(9)
	.loc 1 682 0
	lwz 31,36(29)
.LVL197:
	.loc 1 684 0
	bl R_TextureAnimation
.LVL198:
	mr 28,3
.LVL199:
	.loc 1 686 0
	li 3,0
.LVL200:
	ori 3,3,33984
	bl GL_SelectTexture
	.loc 1 687 0
	lwz 3,24(28)
	bl GL_Bind
	.loc 1 688 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	li 3,8960
	li 4,8704
	bl glTexEnvf
	.loc 1 690 0
	bl GL_EnableMultitexture
	.loc 1 691 0
	lis 9,lightmap_textures@ha
	lwz 0,lightmap_textures@l(9)
	lwz 3,60(29)
	add 3,3,0
	bl GL_Bind
	.loc 1 692 0
	lwz 26,60(29)
.LVL201:
	.loc 1 693 0
	lis 9,lightmap_modified@ha
	la 9,lightmap_modified@l(9)
	lbzx 0,9,26
	cmpwi 7,0,0
	bne- 7,.L178
.LVL202:
.L163:
	.loc 1 708 0
	lis 9,.LC20@ha
	li 3,8960
	lfs 1,.LC20@l(9)
	li 4,8704
	bl glTexEnvf
	.loc 1 709 0
	li 3,6
	bl glBegin
	.loc 1 712 0
	lwz 0,8(31)
	.loc 1 711 0
	lis 9,globalVertexTable@ha
	lwz 30,24(31)
	.loc 1 712 0
	cmpwi 7,0,0
	.loc 1 711 0
	lwz 0,globalVertexTable@l(9)
.LVL203:
	.loc 1 712 0
	ble- 7,.L164
	.loc 1 711 0
	mulli 30,30,28
	lis 28,qglMultiTexCoord2fARB@ha
	.loc 1 712 0
	li 29,0
	la 28,qglMultiTexCoord2fARB@l(28)
	.loc 1 711 0
	add 30,0,30
.LVL204:
.L165:
	.loc 1 714 0 discriminator 2
	lwz 0,0(28)
	li 3,0
	lfs 1,12(30)
	ori 3,3,33984
	lfs 2,16(30)
	mtctr 0
	.loc 1 712 0 discriminator 2
	addi 29,29,1
	.loc 1 714 0 discriminator 2
	bctrl
	.loc 1 715 0 discriminator 2
	lwz 0,0(28)
	li 3,0
	lfs 1,20(30)
	lfs 2,24(30)
	mtctr 0
	ori 3,3,33985
	bctrl
	.loc 1 716 0 discriminator 2
	mr 3,30
	bl glVertex3fv
.LVL205:
	.loc 1 712 0 discriminator 2
	lwz 0,8(31)
	addi 30,30,28
.LVL206:
	cmpw 7,0,29
	bgt+ 7,.L165
.LVL207:
.L164:
	.loc 1 718 0
	bl glEnd
	.loc 1 786 0
	lwz 0,76(1)
	lwz 26,40(1)
	mtlr 0
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
.LVL208:
	lfd 31,64(1)
	addi 1,1,72
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI55:
	.cfi_def_cfa_offset 0
	blr
.LVL209:
.L162:
.LCFI56:
	.cfi_restore_state
	.loc 1 723 0
	lwz 3,36(9)
	.loc 1 727 0
	lis 27,globalVertexTable@ha
	.loc 1 721 0
	lwz 28,36(29)
.LVL210:
	.loc 1 723 0
	bl R_TextureAnimation
.LVL211:
	.loc 1 724 0
	lwz 3,24(3)
.LVL212:
	bl GL_Bind
	.loc 1 725 0
	li 3,6
	bl glBegin
	.loc 1 728 0
	lwz 0,8(28)
	.loc 1 727 0
	lwz 9,globalVertexTable@l(27)
	.loc 1 728 0
	cmpwi 7,0,0
	.loc 1 727 0
	lwz 31,24(28)
.LVL213:
	.loc 1 728 0
	ble- 7,.L167
	.loc 1 727 0
	mulli 31,31,28
	.loc 1 728 0
	li 30,0
	.loc 1 727 0
	add 31,9,31
.LVL214:
.L168:
	.loc 1 730 0 discriminator 2
	lfs 1,12(31)
	.loc 1 728 0 discriminator 2
	addi 30,30,1
	.loc 1 730 0 discriminator 2
	lfs 2,16(31)
	bl glTexCoord2f
	.loc 1 731 0 discriminator 2
	mr 3,31
	bl glVertex3fv
.LVL215:
	.loc 1 728 0 discriminator 2
	lwz 0,8(28)
	addi 31,31,28
.LVL216:
	cmpw 7,0,30
	bgt+ 7,.L168
.LVL217:
.L167:
	.loc 1 733 0
	bl glEnd
	.loc 1 735 0
	lis 9,lightmap_textures@ha
	lwz 0,lightmap_textures@l(9)
	lwz 3,60(29)
	add 3,3,0
	bl GL_Bind
	.loc 1 736 0
	li 3,3042
	bl glEnable
	.loc 1 737 0
	li 3,6
	bl glBegin
	.loc 1 740 0
	lwz 0,8(28)
	.loc 1 739 0
	lwz 9,globalVertexTable@l(27)
	.loc 1 740 0
	cmpwi 7,0,0
	.loc 1 739 0
	lwz 31,24(28)
.LVL218:
	.loc 1 740 0
	ble- 7,.L169
	.loc 1 739 0
	mulli 31,31,28
	.loc 1 740 0
	li 30,0
	.loc 1 739 0
	add 31,9,31
.LVL219:
.L170:
	.loc 1 742 0 discriminator 2
	lfs 1,20(31)
	.loc 1 740 0 discriminator 2
	addi 30,30,1
	.loc 1 742 0 discriminator 2
	lfs 2,24(31)
	bl glTexCoord2f
	.loc 1 743 0 discriminator 2
	mr 3,31
	bl glVertex3fv
.LVL220:
	.loc 1 740 0 discriminator 2
	lwz 0,8(28)
	addi 31,31,28
.LVL221:
	cmpw 7,0,30
	bgt+ 7,.L170
.LVL222:
.L169:
	.loc 1 745 0
	bl glEnd
	.loc 1 747 0
	li 3,3042
	bl glDisable
	.loc 1 786 0
	lwz 0,76(1)
	lwz 26,40(1)
	mtlr 0
	lwz 27,44(1)
	lwz 28,48(1)
.LVL223:
	lwz 29,52(1)
.LVL224:
	lwz 30,56(1)
	lwz 31,60(1)
	lfd 31,64(1)
	addi 1,1,72
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI57:
	.cfi_def_cfa_offset 0
	blr
.LVL225:
.L176:
.LCFI58:
	.cfi_restore_state
	.loc 1 759 0
	bl GL_DisableMultitexture
.LVL226:
	.loc 1 760 0
	lwz 9,48(29)
	lwz 9,36(9)
	lwz 3,24(9)
	bl GL_Bind
	.loc 1 761 0
	mr 3,29
	bl EmitWaterPolys
	.loc 1 786 0
	lwz 0,76(1)
	lwz 26,40(1)
	mtlr 0
	lwz 27,44(1)
	lwz 28,48(1)
	lwz 29,52(1)
.LVL227:
	lwz 30,56(1)
	lwz 31,60(1)
	lfd 31,64(1)
	addi 1,1,72
	.cfi_remember_state
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI59:
	.cfi_def_cfa_offset 0
	blr
.LVL228:
.L178:
.LCFI60:
	.cfi_restore_state
	.loc 1 695 0
	stbx 30,9,26
	.loc 1 696 0
	lis 28,lightmap_rectchange@ha
.LVL229:
	la 28,lightmap_rectchange@l(28)
	slwi 27,26,2
	.loc 1 698 0
	li 3,3553
	li 4,10242
	li 5,10497
	.loc 1 696 0
	add 29,27,28
.LVL230:
	.loc 1 698 0
	bl glTexParameteri
	.loc 1 699 0
	li 3,3553
	li 4,10243
	li 5,10497
	bl glTexParameteri
	.loc 1 700 0
	lbz 6,1(29)
	.loc 1 702 0
	lis 9,lightmap_bytes@ha
	slwi 11,26,7
	lwz 0,lightmap_bytes@l(9)
	add 11,6,11
	slwi 11,11,7
	.loc 1 700 0
	lis 10,lightmaps@ha
	.loc 1 702 0
	mullw 11,11,0
	.loc 1 700 0
	lis 9,gl_lightmap_format@ha
	lbz 8,3(29)
	la 0,lightmaps@l(10)
	lwz 9,gl_lightmap_format@l(9)
	li 3,3553
	li 4,0
	add 0,11,0
	li 5,0
	li 7,128
	li 10,5121
	stw 0,8(1)
	bl glTexSubImage2D
	.loc 1 703 0
	li 0,-128
	.loc 1 705 0
	stb 30,3(29)
	.loc 1 703 0
	stbx 0,27,28
	.loc 1 704 0
	stb 0,1(29)
	.loc 1 706 0
	stb 30,2(29)
	b .L163
	.cfi_endproc
.LFE48:
	.size	R_DrawSequentialPoly, .-R_DrawSequentialPoly
	.align 2
	.globl R_MirrorChain
	.type	R_MirrorChain, @function
R_MirrorChain:
.LFB57:
	.loc 1 1178 0
	.cfi_startproc
.LVL231:
	.loc 1 1184 0
	blr
	.cfi_endproc
.LFE57:
	.size	R_MirrorChain, .-R_MirrorChain
	.align 2
	.globl R_DrawWaterSurfaces
	.type	R_DrawWaterSurfaces, @function
R_DrawWaterSurfaces:
.LFB58:
	.loc 1 1243 0
	.cfi_startproc
	stwu 1,-56(1)
.LCFI61:
	.cfi_def_cfa_offset 56
	mflr 0
	.loc 1 1258 0
	lis 3,r_world_matrix@ha
	.loc 1 1243 0
	stw 29,36(1)
	.loc 1 1260 0
	lis 29,r_wateralpha@ha
	.cfi_offset 29, -20
	.cfi_register 65, 0
	.loc 1 1243 0
	stw 28,32(1)
	.loc 1 1258 0
	la 3,r_world_matrix@l(3)
	.loc 1 1260 0
	la 29,r_wateralpha@l(29)
	lis 28,.LC18@ha
	.cfi_offset 28, -24
	.loc 1 1243 0
	stfd 31,48(1)
	stw 0,60(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 30,40(1)
	stw 31,44(1)
	.loc 1 1258 0
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	.cfi_offset 65, 4
	.cfi_offset 63, -8
	bl glLoadMatrixf
	.loc 1 1260 0
	lfs 31,.LC18@l(28)
	lfs 0,12(29)
	fcmpu 7,0,31
	bnl- 7,.L207
	.loc 1 1261 0
	lis 9,gl_watershader+12@ha
	.loc 1 1262 0
	li 3,3042
	.loc 1 1261 0
	lfs 0,gl_watershader+12@l(9)
	fcmpu 7,0,31
	blt- 7,.L211
	.loc 1 1267 0
	bl glEnable
	.loc 1 1268 0
	fmr 2,31
	fmr 3,31
	lfs 4,12(29)
	fmr 1,31
	bl glColor4f
	.loc 1 1269 0
	lis 9,.LC17@ha
	lfs 1,.LC17@l(9)
	li 3,8960
	li 4,8704
	bl glTexEnvf
	.loc 1 1272 0
	li 3,770
	li 4,771
	bl glBlendFunc
	.loc 1 1273 0
	li 3,5890
	bl glMatrixMode
	.loc 1 1274 0
	bl glLoadIdentity
.L185:
.LVL232:
	.loc 1 1292 0 discriminator 1
	lis 30,cl@ha
	li 31,0
	la 30,cl@l(30)
	lwz 9,2688(30)
	lwz 0,396(9)
	cmpwi 7,0,0
	ble- 7,.L187
	.loc 1 1325 0
	lis 26,fog_color@ha
	.loc 1 1318 0
	lis 27,gl_watershader@ha
	.loc 1 1320 0
	lis 25,.LC17@ha
	.loc 1 1325 0
	la 26,fog_color@l(26)
	b .L203
.LVL233:
.L188:
	.loc 1 1292 0
	lwz 9,2688(30)
	addi 31,31,1
.LVL234:
	lwz 0,396(9)
	cmpw 7,0,31
	ble- 7,.L187
.LVL235:
.L203:
	.loc 1 1294 0
	lwz 9,400(9)
	slwi 0,31,2
	lwzx 23,9,0
.LVL236:
	.loc 1 1295 0
	cmpwi 7,23,0
	beq- 7,.L188
	.loc 1 1297 0
	lwz 24,32(23)
.LVL237:
	.loc 1 1298 0
	cmpwi 7,24,0
	beq- 7,.L188
	.loc 1 1300 0
	lwz 0,8(24)
.LVL238:
	andi. 9,0,16
	beq- 0,.L188
	.loc 1 1303 0
	andi. 9,0,256
	bne+ 0,.L188
	.loc 1 1308 0
	mr 3,23
	bl OverrideFluidTex
.LVL239:
	cmpwi 7,3,0
	beq- 7,.L212
.L204:
	.loc 1 1313 0 discriminator 2
	mr 3,24
	bl EmitWaterPolys
	.loc 1 1312 0 discriminator 2
	lwz 24,40(24)
.LVL240:
	cmpwi 7,24,0
	bne+ 7,.L204
	.loc 1 1318 0
	la 9,gl_watershader@l(27)
	lfs 0,.LC18@l(28)
	lfs 13,12(9)
	.loc 1 1315 0
	stw 24,32(23)
	.loc 1 1318 0
	fcmpu 7,13,0
	bne- 7,.L188
	.loc 1 1318 0 is_stmt 0 discriminator 1
	lfs 13,12(29)
	fcmpu 7,13,0
	bnl+ 7,.L188
	.loc 1 1319 0 is_stmt 1
	bl glLoadIdentity
	.loc 1 1320 0
	lfs 1,.LC17@l(25)
	li 4,8704
	li 3,8960
	bl glTexEnvf
	.loc 1 1292 0
	addi 31,31,1
	.loc 1 1321 0
	bl GL_DisableMultitexture
	.loc 1 1322 0
	bl glLoadIdentity
	.loc 1 1323 0
	li 3,3168
	bl glDisable
	.loc 1 1324 0
	li 3,3169
	bl glDisable
	.loc 1 1325 0
	li 3,2918
	mr 4,26
	bl glFogfv
.LVL241:
	.loc 1 1292 0
	lwz 9,2688(30)
	lwz 0,396(9)
	cmpw 7,0,31
	bgt+ 7,.L203
.LVL242:
.L187:
	.loc 1 1330 0
	lfs 4,12(29)
	lfs 31,.LC18@l(28)
	fcmpu 7,4,31
	bnl- 7,.L209
	.loc 1 1332 0
	lis 9,gl_watershader+12@ha
	lfs 0,gl_watershader+12@l(9)
	fcmpu 7,0,31
	bnl- 7,.L210
	.loc 1 1333 0
	fmr 2,31
	fmr 3,31
	fmr 1,31
	bl glColor4f
	.loc 1 1334 0
	lis 9,.LC19@ha
	lfs 1,.LC19@l(9)
	li 3,8960
	li 4,8704
	bl glTexEnvf
	.loc 1 1335 0
	li 3,3042
	bl glDisable
	.loc 1 1349 0
	lwz 0,60(1)
	lwz 23,12(1)
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	lfd 31,48(1)
	addi 1,1,56
	.cfi_remember_state
.LCFI62:
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
	blr
.L211:
.LCFI63:
	.cfi_restore_state
	.loc 1 1262 0
	bl glEnable
	.loc 1 1263 0
	fmr 1,31
	fmr 2,31
	lfs 4,12(29)
	fmr 3,31
	bl glColor4f
	.loc 1 1264 0
	lis 9,.LC17@ha
	lfs 1,.LC17@l(9)
	li 3,8960
	li 4,8704
	bl glTexEnvf
	.loc 1 1265 0
	li 3,770
	li 4,771
	bl glBlendFunc
	b .L185
.L210:
	.loc 1 1338 0
	lis 9,.LC19@ha
	li 3,8960
	lfs 1,.LC19@l(9)
	li 4,8704
	bl glTexEnvf
	.loc 1 1340 0
	fmr 1,31
	fmr 2,31
	fmr 3,31
	fmr 4,31
	bl glColor4f
	.loc 1 1341 0
	li 4,771
	li 3,770
	bl glBlendFunc
	.loc 1 1342 0
	li 3,3042
	bl glDisable
	.loc 1 1343 0
	li 3,5888
	bl glMatrixMode
	.loc 1 1349 0
	lwz 0,60(1)
	lwz 23,12(1)
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	lfd 31,48(1)
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI64:
	.cfi_def_cfa_offset 0
	blr
.LVL243:
.L212:
.LCFI65:
	.cfi_restore_state
	.loc 1 1309 0
	lwz 3,24(23)
	bl GL_Bind
	b .L204
.LVL244:
.L209:
	.loc 1 1346 0
	li 3,770
	li 4,771
	bl glBlendFunc
	.loc 1 1349 0
	lwz 0,60(1)
	lwz 23,12(1)
	mtlr 0
	lwz 24,16(1)
	lwz 25,20(1)
	lwz 26,24(1)
	lwz 27,28(1)
	lwz 28,32(1)
	lwz 29,36(1)
	lwz 30,40(1)
	lwz 31,44(1)
	lfd 31,48(1)
	addi 1,1,56
	.cfi_remember_state
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI66:
	.cfi_def_cfa_offset 0
	blr
.L207:
.LCFI67:
	.cfi_restore_state
	.loc 1 1277 0
	fmr 1,31
	fmr 2,31
	fmr 3,31
	fmr 4,31
	bl glColor4f
	b .L185
	.cfi_endproc
.LFE58:
	.size	R_DrawWaterSurfaces, .-R_DrawWaterSurfaces
	.align 2
	.globl DrawTextureChains
	.type	DrawTextureChains, @function
DrawTextureChains:
.LFB59:
	.loc 1 1362 0
	.cfi_startproc
.LVL245:
	mflr 0
	stwu 1,-80(1)
.LCFI68:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
	.loc 1 1370 0
	li 3,1
	.loc 1 1362 0
	stfd 31,72(1)
	stw 0,84(1)
	stw 23,36(1)
	.loc 1 1373 0
	lis 23,sh_lightmapbright@ha
	.cfi_offset 23, -44
	.cfi_offset 65, 4
	.cfi_offset 63, -8
	.loc 1 1362 0
	stw 17,12(1)
	.loc 1 1373 0
	la 23,sh_lightmapbright@l(23)
	.loc 1 1362 0
	stw 18,16(1)
	stw 19,20(1)
	stw 20,24(1)
	stw 21,28(1)
	stw 22,32(1)
	stw 24,40(1)
	stw 25,44(1)
	stw 26,48(1)
	stw 27,52(1)
	stw 28,56(1)
	stw 29,60(1)
	stw 30,64(1)
	stw 31,68(1)
	.loc 1 1370 0
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 22, -48
	.cfi_offset 21, -52
	.cfi_offset 20, -56
	.cfi_offset 19, -60
	.cfi_offset 18, -64
	.cfi_offset 17, -68
	bl glDepthMask
	.loc 1 1371 0
	bl GL_DisableMultitexture
	.loc 1 1372 0
	lis 9,.LC17@ha
	lfs 31,.LC17@l(9)
	li 3,8960
	li 4,8704
	fmr 1,31
	bl glTexEnvf
	.loc 1 1373 0
	lfs 1,12(23)
	fmr 2,1
	fmr 3,1
	bl glColor3f
	.loc 1 1375 0
	bl GL_EnableMultitexture
	.loc 1 1376 0
	lis 9,sh_colormaps+12@ha
	lis 8,.LC9@ha
	lfs 13,sh_colormaps+12@l(9)
	lfs 0,.LC9@l(8)
	fcmpu 7,13,0
	beq- 7,.L214
	.loc 1 1377 0
	fmr 1,31
	li 3,8960
	li 4,8704
	bl glTexEnvf
	.loc 1 1395 0
	lis 9,gl_wireframe+12@ha
	lfs 13,gl_wireframe+12@l(9)
	lis 9,.LC9@ha
	lfs 0,.LC9@l(9)
	fcmpu 7,13,0
	bne- 7,.L232
.L216:
	.loc 1 1406 0
	lis 26,cl@ha
	.loc 1 1402 0
	li 0,0
	lis 24,causticschain@ha
	.loc 1 1404 0
	li 3,3
	.loc 1 1406 0
	la 26,cl@l(26)
	.loc 1 1402 0
	stw 0,causticschain@l(24)
	.loc 1 1404 0
	bl R_EnableVertexTable
.LVL246:
	.loc 1 1406 0
	lwz 9,2688(26)
	lwz 0,396(9)
	cmpwi 7,0,0
	ble- 7,.L217
	.loc 1 1456 0
	lis 17,color_black@ha
	.loc 1 1478 0
	lis 19,fog_color@ha
	.loc 1 1406 0
	li 30,0
	.loc 1 1418 0
	lis 25,skytexturenum@ha
	lis 20,lightmap_textures@ha
	lis 21,c_brush_polys@ha
	.loc 1 1496 0
	li 22,0
	.loc 1 1456 0
	la 17,color_black@l(17)
	.loc 1 1462 0
	lis 18,.LC18@ha
	.loc 1 1478 0
	la 19,fog_color@l(19)
	b .L226
.LVL247:
.L218:
	.loc 1 1406 0
	lwz 9,2688(26)
	addi 30,30,1
.LVL248:
	lwz 0,396(9)
	cmpw 7,0,30
	ble- 7,.L217
.LVL249:
.L226:
	.loc 1 1408 0
	lwz 9,400(9)
	slwi 0,30,2
	lwzx 29,9,0
.LVL250:
	.loc 1 1409 0
	cmpwi 7,29,0
	beq- 7,.L218
	.loc 1 1412 0
	lwz 31,32(29)
.LVL251:
	.loc 1 1413 0
	cmpwi 7,31,0
	beq- 7,.L218
.LVL252:
	.loc 1 1418 0
	lwz 0,skytexturenum@l(25)
.LVL253:
	cmpw 7,30,0
	beq- 7,.L218
	.loc 1 1433 0
	lwz 0,8(31)
	andi. 8,0,16
	bne+ 0,.L218
	.loc 1 1436 0
	li 3,0
	la 27,lightmap_textures@l(20)
	ori 3,3,33984
	la 28,c_brush_polys@l(21)
	bl GL_SelectTexture
.LVL254:
	.loc 1 1437 0
	lwz 9,48(31)
	lwz 3,36(9)
	bl R_TextureAnimation
.LVL255:
	.loc 1 1438 0
	lwz 3,24(3)
.LVL256:
	bl GL_Bind
	.loc 1 1442 0
	li 3,0
	ori 3,3,33985
	bl GL_SelectTexture
.L219:
	.loc 1 1445 0
	lwz 0,0(27)
	lwz 3,60(31)
	add 3,3,0
	bl GL_Bind
	.loc 1 1446 0
	lwz 9,36(31)
	li 3,6
	lwz 4,24(9)
	lwz 5,8(9)
	bl glDrawArrays
	.loc 1 1447 0
	lwz 31,40(31)
.LVL257:
	.loc 1 1448 0
	lwz 9,0(28)
	.loc 1 1443 0
	cmpwi 7,31,0
	.loc 1 1448 0
	addi 0,9,1
	stw 0,0(28)
	.loc 1 1443 0
	bne+ 7,.L219
	.loc 1 1450 0
	li 3,0
	ori 3,3,33984
	bl GL_SelectTexture
	.loc 1 1454 0
	lwz 0,28(29)
	cmpwi 7,0,0
	bne- 7,.L233
.L220:
	.loc 1 1481 0
	lwz 9,32(29)
.LVL258:
	.loc 1 1483 0
	lwz 10,causticschain@l(24)
	cmpwi 7,9,0
	beq- 7,.L223
.LVL259:
.L225:
.LBB12:
	.loc 1 1488 0
	lwz 11,8(9)
	.loc 1 1486 0
	lwz 0,40(9)
.LVL260:
	.loc 1 1488 0
	andi. 8,11,128
.LBE12:
	.loc 1 1483 0
	cmpwi 7,0,0
.LBB13:
	.loc 1 1488 0
	beq- 0,.L224
	.loc 1 1489 0
	stw 10,40(9)
	mr 10,9
.L224:
.LBE13:
	.loc 1 1483 0 discriminator 1
	beq- 7,.L234
	.loc 1 1483 0 is_stmt 0
	mr 9,0
.LVL261:
	b .L225
.LVL262:
.L234:
	stw 10,causticschain@l(24)
.LVL263:
.L223:
	.loc 1 1406 0 is_stmt 1
	lwz 9,2688(26)
	addi 30,30,1
.LVL264:
	.loc 1 1496 0
	stw 22,32(29)
	.loc 1 1406 0
	lwz 0,396(9)
	cmpw 7,0,30
	bgt+ 7,.L226
.LVL265:
.L217:
	.loc 1 1498 0
	li 3,3
	bl R_DisableVertexTable
	.loc 1 1499 0
	li 3,0
	ori 3,3,33985
	bl GL_SelectTexture
	.loc 1 1500 0
	bl GL_DisableMultitexture
	.loc 1 1502 0
	li 3,770
	li 4,771
	bl glBlendFunc
	.loc 1 1503 0
	li 3,1
	bl glDepthMask
	.loc 1 1504 0
	lwz 0,84(1)
	lwz 17,12(1)
	mtlr 0
	lwz 18,16(1)
	lwz 19,20(1)
	lwz 20,24(1)
	lwz 21,28(1)
	lwz 22,32(1)
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
	lwz 27,52(1)
	lwz 28,56(1)
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
	lfd 31,72(1)
	addi 1,1,80
	.cfi_remember_state
.LCFI69:
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
	blr
.LVL266:
.L214:
.LCFI70:
	.cfi_restore_state
	.loc 1 1384 0
	li 3,0
	ori 3,3,33984
	bl GL_SelectTexture
	.loc 1 1385 0
	li 3,3553
	bl glDisable
	.loc 1 1386 0
	li 3,0
	ori 3,3,33985
	bl GL_SelectTexture
	.loc 1 1387 0
	lis 9,.LC23@ha
	lfs 1,.LC23@l(9)
	li 3,8960
	li 4,8704
	bl glTexEnvf
	.loc 1 1388 0
	lis 9,.LC24@ha
	lfs 1,.LC24@l(9)
	li 4,0
	li 3,8960
	ori 4,4,34176
	bl glTexEnvf
	.loc 1 1389 0
	lis 9,.LC25@ha
	lfs 1,.LC25@l(9)
	li 4,0
	li 3,8960
	ori 4,4,34177
	bl glTexEnvf
	.loc 1 1390 0
	fmr 1,31
	li 4,0
	li 3,8960
	ori 4,4,34161
	bl glTexEnvf
	.loc 1 1395 0
	lis 9,gl_wireframe+12@ha
	lfs 13,gl_wireframe+12@l(9)
	lis 9,.LC9@ha
	lfs 0,.LC9@l(9)
	fcmpu 7,13,0
	beq+ 7,.L216
.L232:
	.loc 1 1396 0
	li 3,0
	ori 3,3,33984
	bl GL_SelectTexture
	.loc 1 1397 0
	li 3,3553
	bl glDisable
	.loc 1 1398 0
	li 3,0
	ori 3,3,33985
	bl GL_SelectTexture
	.loc 1 1399 0
	li 3,3553
	bl glDisable
	b .L216
.LVL267:
.L233:
	.loc 1 1456 0
	mr 4,17
	li 3,2918
	bl glFogfv
	.loc 1 1457 0
	li 3,3042
	bl glEnable
	.loc 1 1458 0
	li 4,1
	li 3,1
	bl glBlendFunc
	.loc 1 1459 0
	li 3,0
	ori 3,3,33985
	bl GL_SelectTexture
	.loc 1 1460 0
	li 3,3553
	bl glDisable
	.loc 1 1461 0
	li 3,0
	ori 3,3,33984
	bl GL_SelectTexture
	.loc 1 1462 0
	lfs 1,.LC18@l(18)
	fmr 2,1
	fmr 3,1
	bl glColor3f
	.loc 1 1464 0
	lwz 31,32(29)
.LVL268:
	.loc 1 1465 0
	lwz 3,28(29)
	bl GL_Bind
.LVL269:
	.loc 1 1467 0
	cmpwi 7,31,0
	beq- 7,.L221
.L228:
	.loc 1 1469 0 discriminator 2
	lwz 9,36(31)
	li 3,6
	lwz 4,24(9)
	lwz 5,8(9)
	bl glDrawArrays
	.loc 1 1467 0 discriminator 2
	lwz 31,40(31)
.LVL270:
	cmpwi 7,31,0
	bne+ 7,.L228
.L221:
	.loc 1 1472 0
	lfs 1,12(23)
	fmr 2,1
	fmr 3,1
	bl glColor3f
	.loc 1 1473 0
	li 3,0
	ori 3,3,33985
	bl GL_SelectTexture
	.loc 1 1474 0
	li 3,3553
	bl glEnable
	.loc 1 1475 0
	li 3,0
	ori 3,3,33984
	bl GL_SelectTexture
	.loc 1 1476 0
	li 3,0
	ori 3,3,33985
	bl GL_SelectTexture
	.loc 1 1477 0
	li 3,3042
	bl glDisable
	.loc 1 1478 0
	li 3,2918
	mr 4,19
	bl glFogfv
	b .L220
	.cfi_endproc
.LFE59:
	.size	DrawTextureChains, .-DrawTextureChains
	.align 2
	.globl R_DrawCaustics
	.type	R_DrawCaustics, @function
R_DrawCaustics:
.LFB60:
	.loc 1 1516 0
	.cfi_startproc
	.loc 1 1616 0
	blr
	.cfi_endproc
.LFE60:
	.size	R_DrawCaustics, .-R_DrawCaustics
	.align 2
	.globl R_DrawBrushModelCaustics
	.type	R_DrawBrushModelCaustics, @function
R_DrawBrushModelCaustics:
.LFB61:
	.loc 1 1787 0
	.cfi_startproc
.LVL271:
	mflr 0
	stwu 1,-120(1)
.LCFI71:
	.cfi_def_cfa_offset 120
	.cfi_register 65, 0
	.loc 1 1803 0
	lis 9,.LC9@ha
	lfs 0,.LC9@l(9)
	.loc 1 1798 0
	lis 9,currententity@ha
	.loc 1 1787 0
	stw 0,124(1)
	.loc 1 1799 0
	li 0,-1
	.cfi_offset 65, 4
	.loc 1 1798 0
	stw 3,currententity@l(9)
	.loc 1 1799 0
	lis 9,currenttexture@ha
	.loc 1 1803 0
	lfs 13,148(3)
	.loc 1 1787 0
	stw 29,84(1)
	.loc 1 1803 0
	fcmpu 7,13,0
	.loc 1 1787 0
	stw 30,88(1)
	stfd 29,96(1)
	mr 30,3
	.cfi_offset 61, -24
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	stfd 30,104(1)
	stfd 31,112(1)
	stw 26,72(1)
	stw 27,76(1)
	stw 28,80(1)
	stw 31,92(1)
	.loc 1 1799 0
	stw 0,currenttexture@l(9)
	.loc 1 1801 0
	lwz 29,160(3)
.LVL272:
	.loc 1 1803 0
	bne- 7,.L237
	.cfi_offset 31, -28
	.cfi_offset 28, -40
	.cfi_offset 27, -44
	.cfi_offset 26, -48
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.loc 1 1803 0 is_stmt 0 discriminator 1
	lfs 13,152(3)
	fcmpu 7,13,0
	beq- 7,.L238
.L237:
	.loc 1 1803 0 discriminator 2
	lfs 13,108(29)
	.loc 1 1787 0 is_stmt 1 discriminator 2
	li 9,0
	addi 3,1,56
.LVL273:
	addi 4,1,44
.L239:
	.loc 1 1786 0 discriminator 2
	add 11,30,9
	.loc 1 1806 0 discriminator 2
	cmpwi 7,9,8
	.loc 1 1808 0 discriminator 2
	lfs 0,112(11)
	fsubs 12,0,13
	.loc 1 1809 0 discriminator 2
	fadds 0,0,13
	.loc 1 1808 0 discriminator 2
	stfsx 12,3,9
	.loc 1 1809 0 discriminator 2
	stfsx 0,4,9
	.loc 1 1806 0 discriminator 2
	addi 9,9,4
	bne+ 7,.L239
	.loc 1 1805 0
	li 31,1
.LVL274:
.L241:
	.loc 1 1819 0
	bl R_CullBox
.LVL275:
	cmpwi 7,3,0
	bne- 7,.L236
	.loc 1 1822 0
	lis 9,r_refdef@ha
	lfs 12,112(30)
	la 9,r_refdef@l(9)
	lfs 13,116(30)
	lfs 30,112(9)
	.loc 1 1823 0
	cmpwi 7,31,0
	.loc 1 1822 0
	lfs 29,116(9)
	lis 28,modelorg@ha
	lfs 31,120(9)
	fsubs 30,30,12
	lfs 0,120(30)
	fsubs 29,29,13
	la 31,modelorg@l(28)
.LVL276:
	fsubs 31,31,0
	stfs 30,modelorg@l(28)
	stfs 29,4(31)
	stfs 31,8(31)
	.loc 1 1823 0
	bne- 7,.L253
.L243:
	.loc 1 1835 0
	lwz 28,208(29)
	lwz 27,140(29)
.LVL277:
	.loc 1 1837 0
	bl glPushMatrix
.LVL278:
	.loc 1 1838 0
	lfs 0,148(30)
	.loc 1 1839 0
	mr 3,30
	.loc 1 1838 0
	fneg 0,0
	stfs 0,148(30)
	.loc 1 1839 0
	bl R_RotateForEntity
	.loc 1 1840 0
	lfs 0,148(30)
	.loc 1 1843 0
	lis 9,.LC17@ha
	li 3,8960
	.loc 1 1840 0
	fneg 0,0
	.loc 1 1843 0
	lfs 1,.LC17@l(9)
	li 4,8704
	.loc 1 1840 0
	stfs 0,148(30)
	.loc 1 1843 0
	bl glTexEnvf
.LVL279:
	.loc 1 1848 0
	lwz 0,144(29)
	cmpwi 7,0,0
	ble- 7,.L244
	.loc 1 1835 0
	mulli 27,27,92
.LVL280:
	.loc 1 1848 0
	li 30,0
.LVL281:
	.loc 1 1857 0
	lis 26,.LC27@ha
	.loc 1 1835 0
	add 28,28,27
	.loc 1 1856 0
	lis 27,.LC26@ha
	b .L249
.LVL282:
.L245:
	.loc 1 1857 0
	lfd 12,.LC27@l(26)
	fcmpu 7,0,12
	bng- 7,.L247
.L246:
	.loc 1 1859 0
	bl R_RenderBrushPolyCaustics
.LVL283:
	lwz 0,144(29)
.L247:
	.loc 1 1848 0
	addi 30,30,1
.LVL284:
	addi 28,28,92
.LVL285:
	cmpw 7,0,30
	ble- 7,.L244
.LVL286:
.L249:
	.loc 1 1851 0
	lwz 9,4(28)
.LVL287:
	.loc 1 1859 0
	mr 3,28
	.loc 1 1853 0
	lfs 11,4(31)
	lfs 0,4(9)
	lfs 12,0(31)
	fmuls 11,11,0
	lfs 0,0(9)
	.loc 1 1856 0
	lwz 11,8(28)
	.loc 1 1853 0
	lfs 13,8(31)
	fmadds 12,12,0,11
	lfs 0,8(9)
	.loc 1 1856 0
	andi. 10,11,2
	.loc 1 1853 0
	fmadds 13,13,0,12
	lfs 0,12(9)
	fsubs 0,13,0
.LVL288:
	.loc 1 1856 0
	beq- 0,.L245
	.loc 1 1856 0 is_stmt 0 discriminator 1
	lfd 12,.LC26@l(27)
	fcmpu 7,0,12
	blt- 7,.L246
	.loc 1 1848 0 is_stmt 1
	addi 30,30,1
.LVL289:
	addi 28,28,92
.LVL290:
	cmpw 7,0,30
	bgt+ 7,.L249
.LVL291:
.L244:
	.loc 1 1864 0
	lis 9,.LC19@ha
	li 3,8960
	lfs 1,.LC19@l(9)
	li 4,8704
	bl glTexEnvf
	.loc 1 1865 0
	bl glPopMatrix
.L236:
	.loc 1 1866 0
	lwz 0,124(1)
	lwz 26,72(1)
	mtlr 0
	lwz 27,76(1)
	lwz 28,80(1)
	lwz 29,84(1)
.LVL292:
	lwz 30,88(1)
	lwz 31,92(1)
	lfd 29,96(1)
	lfd 30,104(1)
	lfd 31,112(1)
	addi 1,1,120
	.cfi_remember_state
.LCFI72:
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
	blr
.LVL293:
.L238:
.LCFI73:
	.cfi_restore_state
	.loc 1 1803 0 discriminator 1
	lfs 13,156(3)
	fcmpu 7,13,0
	bne- 7,.L237
.LVL294:
	.loc 1 1815 0
	lfs 12,112(3)
	.loc 1 1814 0
	li 31,0
	.loc 1 1815 0
	lfs 13,116(3)
	addi 4,1,44
	lfs 0,120(3)
	addi 3,1,56
.LVL295:
	lfs 9,84(29)
	lfs 10,88(29)
	lfs 11,92(29)
	fadds 9,12,9
	.loc 1 1816 0
	lfs 6,96(29)
	.loc 1 1815 0
	fadds 10,13,10
	.loc 1 1816 0
	lfs 7,100(29)
	.loc 1 1815 0
	fadds 11,0,11
	.loc 1 1816 0
	lfs 8,104(29)
	fadds 12,12,6
	fadds 13,13,7
	.loc 1 1815 0
	stfs 9,56(1)
	.loc 1 1816 0
	fadds 0,0,8
	.loc 1 1815 0
	stfs 10,60(1)
	stfs 11,64(1)
	.loc 1 1816 0
	stfs 12,44(1)
	stfs 13,48(1)
	stfs 0,52(1)
	b .L241
.LVL296:
.L253:
.LBB14:
	.loc 1 1829 0
	addi 3,30,148
	addi 4,1,32
	addi 5,1,20
	addi 6,1,8
	bl AngleVectors
	.loc 1 1830 0
	lfs 13,36(1)
	.loc 1 1832 0
	lfs 12,12(1)
	.loc 1 1831 0
	lfs 0,24(1)
	.loc 1 1830 0
	fmuls 13,29,13
	.loc 1 1831 0
	fmuls 0,29,0
	.loc 1 1832 0
	fmuls 29,29,12
.LVL297:
	.loc 1 1830 0
	lfs 12,32(1)
	fmadds 13,30,12,13
	.loc 1 1831 0
	lfs 12,20(1)
	fmadds 0,30,12,0
	.loc 1 1832 0
	lfs 12,8(1)
	fmadds 30,30,12,29
.LVL298:
	.loc 1 1830 0
	lfs 12,40(1)
	fmadds 13,31,12,13
	.loc 1 1831 0
	lfs 12,28(1)
	fnmadds 0,31,12,0
	.loc 1 1832 0
	lfs 12,16(1)
	.loc 1 1830 0
	stfs 13,modelorg@l(28)
	.loc 1 1832 0
	fmadds 31,31,12,30
.LVL299:
	.loc 1 1831 0
	stfs 0,4(31)
	.loc 1 1832 0
	stfs 31,8(31)
	b .L243
.LBE14:
	.cfi_endproc
.LFE61:
	.size	R_DrawBrushModelCaustics, .-R_DrawBrushModelCaustics
	.align 2
	.globl R_DrawBrushModelAmbient
	.type	R_DrawBrushModelAmbient, @function
R_DrawBrushModelAmbient:
.LFB62:
	.loc 1 1874 0
	.cfi_startproc
.LVL300:
	mflr 0
	stwu 1,-120(1)
.LCFI74:
	.cfi_def_cfa_offset 120
	.cfi_register 65, 0
	.loc 1 1890 0
	lis 9,.LC9@ha
	lfs 0,.LC9@l(9)
	.loc 1 1885 0
	lis 9,currententity@ha
	.loc 1 1874 0
	stw 0,124(1)
	.loc 1 1886 0
	li 0,-1
	.cfi_offset 65, 4
	.loc 1 1885 0
	stw 3,currententity@l(9)
	.loc 1 1886 0
	lis 9,currenttexture@ha
	.loc 1 1890 0
	lfs 13,148(3)
	.loc 1 1874 0
	stw 29,84(1)
	.loc 1 1890 0
	fcmpu 7,13,0
	.loc 1 1874 0
	stw 30,88(1)
	stfd 29,96(1)
	mr 30,3
	.cfi_offset 61, -24
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	stfd 30,104(1)
	stfd 31,112(1)
	stw 26,72(1)
	stw 27,76(1)
	stw 28,80(1)
	stw 31,92(1)
	.loc 1 1886 0
	stw 0,currenttexture@l(9)
	.loc 1 1888 0
	lwz 29,160(3)
.LVL301:
	.loc 1 1890 0
	bne- 7,.L255
	.cfi_offset 31, -28
	.cfi_offset 28, -40
	.cfi_offset 27, -44
	.cfi_offset 26, -48
	.cfi_offset 63, -8
	.cfi_offset 62, -16
.LVL302:
	.loc 1 1890 0 is_stmt 0 discriminator 1
	lfs 13,152(3)
	fcmpu 7,13,0
	beq- 7,.L256
.LVL303:
.L255:
	.loc 1 1890 0 discriminator 2
	lfs 13,108(29)
	.loc 1 1874 0 is_stmt 1 discriminator 2
	li 9,0
	addi 3,1,56
.LVL304:
	addi 4,1,44
.L257:
	.loc 1 1873 0 discriminator 2
	add 11,30,9
	.loc 1 1893 0 discriminator 2
	cmpwi 7,9,8
	.loc 1 1895 0 discriminator 2
	lfs 0,112(11)
	fsubs 12,0,13
	.loc 1 1896 0 discriminator 2
	fadds 0,0,13
	.loc 1 1895 0 discriminator 2
	stfsx 12,3,9
	.loc 1 1896 0 discriminator 2
	stfsx 0,4,9
	.loc 1 1893 0 discriminator 2
	addi 9,9,4
	bne+ 7,.L257
	.loc 1 1892 0
	li 31,1
.LVL305:
.L259:
	.loc 1 1906 0
	bl R_CullBox
.LVL306:
	cmpwi 7,3,0
	bne- 7,.L254
	.loc 1 1909 0
	lis 9,r_refdef@ha
	lfs 12,112(30)
	la 9,r_refdef@l(9)
	lfs 13,116(30)
	lfs 30,112(9)
	.loc 1 1910 0
	cmpwi 7,31,0
	.loc 1 1909 0
	lfs 29,116(9)
	lis 28,modelorg@ha
	lfs 31,120(9)
	fsubs 30,30,12
	lfs 0,120(30)
	fsubs 29,29,13
	la 31,modelorg@l(28)
.LVL307:
	fsubs 31,31,0
	stfs 30,modelorg@l(28)
	stfs 29,4(31)
	stfs 31,8(31)
	.loc 1 1910 0
	bne- 7,.L271
.L261:
	.loc 1 1922 0
	lwz 28,208(29)
	lwz 27,140(29)
.LVL308:
	.loc 1 1924 0
	bl glPushMatrix
.LVL309:
	.loc 1 1925 0
	lfs 0,148(30)
	.loc 1 1926 0
	mr 3,30
	.loc 1 1925 0
	fneg 0,0
	stfs 0,148(30)
	.loc 1 1926 0
	bl R_RotateForEntity
	.loc 1 1927 0
	lfs 0,148(30)
	.loc 1 1930 0
	lis 9,.LC17@ha
	li 3,8960
	.loc 1 1927 0
	fneg 0,0
	.loc 1 1930 0
	lfs 1,.LC17@l(9)
	li 4,8704
	.loc 1 1927 0
	stfs 0,148(30)
	.loc 1 1930 0
	bl glTexEnvf
.LVL310:
	.loc 1 1935 0
	lwz 0,144(29)
	cmpwi 7,0,0
	ble- 7,.L262
	.loc 1 1922 0
	mulli 27,27,92
.LVL311:
	.loc 1 1935 0
	li 30,0
.LVL312:
	.loc 1 1944 0
	lis 26,.LC27@ha
	.loc 1 1922 0
	add 28,28,27
	.loc 1 1943 0
	lis 27,.LC26@ha
	b .L267
.LVL313:
.L263:
	.loc 1 1944 0
	lfd 12,.LC27@l(26)
	fcmpu 7,0,12
	bng- 7,.L265
.L264:
	.loc 1 1946 0
	bl R_RenderBrushPolyLightmap
.LVL314:
	lwz 0,144(29)
.L265:
	.loc 1 1935 0
	addi 30,30,1
.LVL315:
	addi 28,28,92
.LVL316:
	cmpw 7,0,30
	ble- 7,.L262
.LVL317:
.L267:
	.loc 1 1938 0
	lwz 9,4(28)
.LVL318:
	.loc 1 1946 0
	mr 3,28
	.loc 1 1940 0
	lfs 11,4(31)
	lfs 0,4(9)
	lfs 12,0(31)
	fmuls 11,11,0
	lfs 0,0(9)
	.loc 1 1943 0
	lwz 11,8(28)
	.loc 1 1940 0
	lfs 13,8(31)
	fmadds 12,12,0,11
	lfs 0,8(9)
	.loc 1 1943 0
	andi. 10,11,2
	.loc 1 1940 0
	fmadds 13,13,0,12
	lfs 0,12(9)
	fsubs 0,13,0
.LVL319:
	.loc 1 1943 0
	beq- 0,.L263
	.loc 1 1943 0 is_stmt 0 discriminator 1
	lfd 12,.LC26@l(27)
	fcmpu 7,0,12
	blt- 7,.L264
	.loc 1 1935 0 is_stmt 1
	addi 30,30,1
.LVL320:
	addi 28,28,92
.LVL321:
	cmpw 7,0,30
	bgt+ 7,.L267
.LVL322:
.L262:
	.loc 1 1951 0
	lis 9,.LC19@ha
	li 3,8960
	lfs 1,.LC19@l(9)
	li 4,8704
	bl glTexEnvf
	.loc 1 1952 0
	bl glPopMatrix
.L254:
	.loc 1 1953 0
	lwz 0,124(1)
	lwz 26,72(1)
	mtlr 0
	lwz 27,76(1)
	lwz 28,80(1)
	lwz 29,84(1)
.LVL323:
	lwz 30,88(1)
	lwz 31,92(1)
	lfd 29,96(1)
	lfd 30,104(1)
	lfd 31,112(1)
	addi 1,1,120
	.cfi_remember_state
.LCFI75:
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
	blr
.LVL324:
.L256:
.LCFI76:
	.cfi_restore_state
	.loc 1 1890 0 discriminator 1
	lfs 13,156(3)
	fcmpu 7,13,0
	bne- 7,.L255
.LVL325:
	.loc 1 1902 0
	lfs 12,112(3)
	.loc 1 1901 0
	li 31,0
	.loc 1 1902 0
	lfs 13,116(3)
	addi 4,1,44
	lfs 0,120(3)
	addi 3,1,56
.LVL326:
	lfs 9,84(29)
	lfs 10,88(29)
	lfs 11,92(29)
	fadds 9,12,9
	.loc 1 1903 0
	lfs 6,96(29)
	.loc 1 1902 0
	fadds 10,13,10
	.loc 1 1903 0
	lfs 7,100(29)
	.loc 1 1902 0
	fadds 11,0,11
	.loc 1 1903 0
	lfs 8,104(29)
	fadds 12,12,6
	fadds 13,13,7
	.loc 1 1902 0
	stfs 9,56(1)
	.loc 1 1903 0
	fadds 0,0,8
	.loc 1 1902 0
	stfs 10,60(1)
	stfs 11,64(1)
	.loc 1 1903 0
	stfs 12,44(1)
	stfs 13,48(1)
	stfs 0,52(1)
	b .L259
.LVL327:
.L271:
.LBB15:
	.loc 1 1916 0
	addi 3,30,148
	addi 4,1,32
	addi 5,1,20
	addi 6,1,8
	bl AngleVectors
	.loc 1 1917 0
	lfs 13,36(1)
	.loc 1 1919 0
	lfs 12,12(1)
	.loc 1 1918 0
	lfs 0,24(1)
	.loc 1 1917 0
	fmuls 13,29,13
	.loc 1 1918 0
	fmuls 0,29,0
	.loc 1 1919 0
	fmuls 29,29,12
.LVL328:
	.loc 1 1917 0
	lfs 12,32(1)
	fmadds 13,30,12,13
	.loc 1 1918 0
	lfs 12,20(1)
	fmadds 0,30,12,0
	.loc 1 1919 0
	lfs 12,8(1)
	fmadds 30,30,12,29
.LVL329:
	.loc 1 1917 0
	lfs 12,40(1)
	fmadds 13,31,12,13
	.loc 1 1918 0
	lfs 12,28(1)
	fnmadds 0,31,12,0
	.loc 1 1919 0
	lfs 12,16(1)
	.loc 1 1917 0
	stfs 13,modelorg@l(28)
	.loc 1 1919 0
	fmadds 31,31,12,30
.LVL330:
	.loc 1 1918 0
	stfs 0,4(31)
	.loc 1 1919 0
	stfs 31,8(31)
	b .L261
.LBE15:
	.cfi_endproc
.LFE62:
	.size	R_DrawBrushModelAmbient, .-R_DrawBrushModelAmbient
	.align 2
	.globl R_RecursiveWorldNode
	.type	R_RecursiveWorldNode, @function
R_RecursiveWorldNode:
.LFB63:
	.loc 1 1974 0
	.cfi_startproc
.LVL331:
	mflr 0
	stwu 1,-96(1)
.LCFI77:
	.cfi_def_cfa_offset 96
	.cfi_register 65, 0
	stw 31,84(1)
	mr 31,3
	.cfi_offset 31, -12
	stw 0,100(1)
	stfd 31,88(1)
	.loc 1 1981 0
	lwz 0,0(3)
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.loc 1 1974 0
	stw 14,16(1)
	.loc 1 1981 0
	cmpwi 7,0,-2
	.loc 1 1974 0
	stw 15,20(1)
	stw 16,24(1)
	stw 17,28(1)
	stw 18,32(1)
	stw 19,36(1)
	stw 20,40(1)
	stw 21,44(1)
	stw 22,48(1)
	stw 23,52(1)
	stw 24,56(1)
	stw 25,60(1)
	stw 26,64(1)
	stw 27,68(1)
	stw 28,72(1)
	stw 29,76(1)
	stw 30,80(1)
	.loc 1 1981 0
	beq- 7,.L272
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	.cfi_offset 22, -48
	.cfi_offset 21, -52
	.cfi_offset 20, -56
	.cfi_offset 19, -60
	.cfi_offset 18, -64
	.cfi_offset 17, -68
	.cfi_offset 16, -72
	.cfi_offset 15, -76
	.cfi_offset 14, -80
	.loc 1 1984 0
	lis 24,r_visframecount@ha
	lwz 9,4(3)
	lwz 0,r_visframecount@l(24)
	cmpw 7,9,0
	bne- 7,.L272
.LBB16:
	.loc 1 1998 0
	lis 18,mirror_far_plane@ha
.LBE16:
	.loc 1 2140 0
	lis 16,lightmap_polys@ha
	.loc 1 1991 0
	lis 28,mirror@ha
.LBB17:
	.loc 1 1993 0
	lis 19,mirror_plane@ha
	.loc 1 1994 0
	lis 20,mirror_clipside@ha
	.loc 1 1998 0
	la 18,mirror_far_plane@l(18)
.LBE17:
	.loc 1 2058 0
	lis 25,modelorg@ha
	.loc 1 2068 0
	lis 27,.LC28@ha
	.loc 1 2081 0
	lis 22,cl@ha
	.loc 1 2083 0
	lis 23,.LC26@ha
	.loc 1 2140 0
	la 16,lightmap_polys@l(16)
	lis 21,r_framecount@ha
	.loc 1 2085 0
	lis 17,.LC27@ha
.LVL332:
.L300:
	.loc 1 1987 0
	addi 29,31,8
	addi 30,31,20
	mr 3,29
	mr 4,30
	bl R_CullBox
	cmpwi 7,3,0
	bne- 7,.L272
	.loc 1 1991 0
	lbz 0,mirror@l(28)
	la 26,mirror@l(28)
	cmpwi 7,0,0
	bne- 7,.L302
	.loc 1 2005 0
	lwz 0,0(31)
	cmpwi 7,0,0
	blt- 7,.L303
.L277:
	.loc 1 2050 0
	lwz 9,36(31)
.LVL333:
	.loc 1 2052 0
	lbz 0,16(9)
	cmpwi 7,0,1
	beq- 7,.L282
	cmplwi 7,0,1
	bge- 7,.L304
	.loc 1 2055 0
	lfs 31,modelorg@l(25)
	lfs 0,12(9)
	fsubs 31,31,0
.LVL334:
.L284:
	.loc 1 2068 0
	lfd 0,.LC28@l(27)
	la 15,.LC28@l(27)
	fcmpu 7,31,0
	cror 30,29,30
	mfcr 29
	rlwinm 29,29,31,1
	.loc 1 2069 0
	xori 29,29,1
.LVL335:
	.loc 1 2074 0
	addi 9,29,8
	.loc 1 2079 0
	xori 14,29,1
	.loc 1 2074 0
	slwi 9,9,2
	add 9,31,9
	lwz 3,8(9)
	bl R_RecursiveWorldNode
.LVL336:
	.loc 1 2077 0
	lhz 0,50(31)
	.loc 1 2079 0
	cmpwi 7,0,0
	.loc 1 2077 0
	stw 0,8(1)
.LVL337:
	.loc 1 2079 0
	beq- 7,.L286
	.loc 1 2083 0
	lfd 0,.LC26@l(23)
	.loc 1 2081 0
	la 9,cl@l(22)
	lwz 9,2688(9)
	lhz 30,48(31)
	.loc 1 2083 0
	fcmpu 7,31,0
	.loc 1 2081 0
	lwz 0,208(9)
.LVL338:
	mulli 30,30,92
	add 30,0,30
.LVL339:
	.loc 1 2083 0
	blt- 7,.L294
	.loc 1 2085 0
	lfd 0,.LC27@l(17)
	fcmpu 7,31,0
	bgt- 7,.L295
	xori 14,29,1
	la 29,r_framecount@l(21)
.LVL340:
.L292:
	.loc 1 2109 0
	li 0,0
	b .L296
.L288:
.LVL341:
	.loc 1 2088 0
	lwz 9,8(1)
	addi 30,30,92
.LVL342:
	addic. 10,9,-1
	stw 10,8(1)
	beq- 0,.L286
.LVL343:
.L296:
	.loc 1 2090 0
	lwz 11,0(30)
	lwz 9,0(29)
	cmpw 7,11,9
	bne+ 7,.L288
	.loc 1 2095 0
	lfd 0,0(15)
	lwz 9,8(30)
	fcmpu 7,31,0
	rlwinm 10,9,31,31,31
	mfcr 11
	rlwinm 11,11,29,1
	cmpw 7,10,11
	bne- 7,.L288
	.loc 1 2100 0
	andi. 10,9,256
	beq- 0,.L289
	.loc 1 2105 0
	andi. 9,9,656
	cmpwi 7,9,656
	beq- 7,.L290
	.loc 1 2107 0
	lbz 9,0(26)
	cmpwi 7,9,0
	beq- 7,.L305
.L290:
	.loc 1 2109 0
	stw 0,0(30)
.L306:
.LVL344:
	.loc 1 2088 0
	lwz 9,8(1)
	addi 30,30,92
.LVL345:
	addic. 10,9,-1
	stw 10,8(1)
	bne+ 0,.L296
.LVL346:
.L286:
	.loc 1 2161 0
	addi 14,14,8
	slwi 14,14,2
	add 31,31,14
	lwz 31,8(31)
	.loc 1 1981 0
	lwz 0,0(31)
	cmpwi 7,0,-2
	beq- 7,.L272
	.loc 1 1984 0
	lwz 9,4(31)
	lwz 0,r_visframecount@l(24)
	cmpw 7,9,0
	beq+ 7,.L300
.LVL347:
.L272:
	.loc 1 2162 0
	lwz 0,100(1)
	lwz 14,16(1)
	mtlr 0
	lwz 15,20(1)
	lwz 16,24(1)
	lwz 17,28(1)
	lwz 18,32(1)
	lwz 19,36(1)
	lwz 20,40(1)
	lwz 21,44(1)
	lwz 22,48(1)
	lwz 23,52(1)
	lwz 24,56(1)
	lwz 25,60(1)
	lwz 26,64(1)
	lwz 27,68(1)
	lwz 28,72(1)
	lwz 29,76(1)
	lwz 30,80(1)
	lwz 31,84(1)
	lfd 31,88(1)
	addi 1,1,96
	.cfi_remember_state
.LCFI78:
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
.LVL348:
.L305:
.LCFI79:
	.cfi_restore_state
	.loc 1 2107 0 discriminator 1
	mr 3,30
	stw 0,12(1)
	bl R_AllocateMirror
	lwz 0,12(1)
	.loc 1 2109 0 discriminator 1
	stw 0,0(30)
	b .L306
.LVL349:
.L304:
	.loc 1 2052 0
	cmpwi 7,0,2
	beq- 7,.L307
	.loc 1 2064 0
	la 11,modelorg@l(25)
	lfs 0,4(9)
	lfs 13,4(11)
	lfs 12,modelorg@l(25)
	fmuls 0,13,0
	lfs 13,0(9)
	lfs 31,8(11)
	fmadds 13,12,13,0
	lfs 12,8(9)
	lfs 0,12(9)
	fmadds 31,31,12,13
	fsubs 31,31,0
.LVL350:
	.loc 1 2065 0
	b .L284
.LVL351:
.L289:
	.loc 1 2113 0
	andi. 11,9,272
	cmpwi 7,11,272
	beq- 7,.L288
	.loc 1 2117 0
	andi. 10,9,16
	beq- 0,.L291
	.loc 1 2117 0 is_stmt 0 discriminator 1
	lbz 11,0(26)
	cmpwi 7,11,0
	bne- 7,.L288
.L291:
	.loc 1 2129 0 is_stmt 1
	lwz 11,48(30)
	.loc 1 2139 0
	andi. 10,9,20
	.loc 1 2129 0
	lwz 9,36(11)
	lwz 11,32(9)
	stw 11,40(30)
	.loc 1 2130 0
	stw 30,32(9)
	.loc 1 2139 0
	bne- 0,.L288
	.loc 1 2140 0
	lwz 9,60(30)
	lwz 11,36(30)
	slwi 9,9,2
	lwzx 10,16,9
	stw 10,4(11)
	.loc 1 2141 0
	stwx 11,16,9
	b .L288
.LVL352:
.L302:
.LBB18:
	.loc 1 1993 0
	lwz 5,mirror_plane@l(19)
	mr 3,29
	mr 4,30
	bl BoxOnPlaneSide
.LVL353:
	.loc 1 1994 0
	lwz 0,mirror_clipside@l(20)
	cmpw 7,0,3
	beq- 7,.L272
	.loc 1 1998 0
	mr 3,29
.LVL354:
	mr 4,30
	mr 5,18
	bl BoxOnPlaneSide
	cmpwi 7,3,1
	beq- 7,.L272
.LBE18:
	.loc 1 2005 0
	lwz 0,0(31)
	cmpwi 7,0,0
	bge+ 7,.L277
.L303:
.LVL355:
	.loc 1 2019 0
	lwz 11,48(31)
	.loc 1 2018 0
	lwz 9,44(31)
.LVL356:
	.loc 1 2021 0
	cmpwi 7,11,0
	beq- 7,.L278
	lis 10,r_framecount@ha
	.loc 1 1973 0
	mtctr 11
	.loc 1 2021 0
	lwz 0,r_framecount@l(10)
	.loc 1 1973 0
	addi 9,9,-4
.LVL357:
.L279:
	.loc 1 2033 0 discriminator 1
	lwzu 11,4(9)
	stw 0,0(11)
	.loc 1 2035 0 discriminator 1
	bdnz .L279
.L278:
	.loc 1 2041 0
	lwz 0,40(31)
	cmpwi 7,0,0
	beq- 7,.L272
	.loc 1 2042 0
	addi 3,31,40
	bl R_StoreEfrags
	b .L272
.LVL358:
.L294:
	.loc 1 2083 0
	li 14,0
	la 29,r_framecount@l(21)
.LVL359:
	b .L292
.LVL360:
.L282:
	.loc 1 2058 0
	la 11,modelorg@l(25)
	lfs 0,12(9)
	lfs 31,4(11)
	fsubs 31,31,0
.LVL361:
	.loc 1 2059 0
	b .L284
.LVL362:
.L307:
	.loc 1 2061 0
	la 11,modelorg@l(25)
	lfs 0,12(9)
	lfs 31,8(11)
	fsubs 31,31,0
.LVL363:
	.loc 1 2062 0
	b .L284
.LVL364:
.L295:
	.loc 1 2085 0
	li 14,1
.LVL365:
	la 29,r_framecount@l(21)
	b .L292
	.cfi_endproc
.LFE63:
	.size	R_RecursiveWorldNode, .-R_RecursiveWorldNode
	.align 2
	.globl R_InitDrawWorld
	.type	R_InitDrawWorld, @function
R_InitDrawWorld:
.LFB64:
	.loc 1 2180 0
	.cfi_startproc
	stwu 1,-608(1)
.LCFI80:
	.cfi_def_cfa_offset 608
	mflr 0
	.loc 1 2183 0
	li 4,0
	li 5,584
	.loc 1 2180 0
	stw 30,600(1)
	.loc 1 2183 0
	addi 30,1,8
	.cfi_offset 30, -8
	.cfi_register 65, 0
	mr 3,30
	.loc 1 2180 0
	stw 0,612(1)
	stw 31,604(1)
	.loc 1 2183 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	bl memset
	.loc 1 2191 0
	lis 9,.LC18@ha
	.loc 1 2186 0
	lis 11,modelorg@ha
	.loc 1 2191 0
	lfs 1,.LC18@l(9)
	.loc 1 2186 0
	lis 9,r_refdef@ha
	la 9,r_refdef@l(9)
	.loc 1 2184 0
	lis 31,cl@ha
	.loc 1 2186 0
	lwz 10,116(9)
	.loc 1 2191 0
	fmr 2,1
	.loc 1 2186 0
	lwz 0,120(9)
	.loc 1 2191 0
	fmr 3,1
	.loc 1 2186 0
	lwz 8,112(9)
	.loc 1 2184 0
	la 31,cl@l(31)
	.loc 1 2186 0
	la 9,modelorg@l(11)
	.loc 1 2184 0
	lwz 7,2688(31)
	.loc 1 2186 0
	stw 10,4(9)
	stw 0,8(9)
	.loc 1 2188 0
	lis 9,currententity@ha
	.loc 1 2189 0
	li 0,-1
	.loc 1 2188 0
	stw 30,currententity@l(9)
	.loc 1 2189 0
	lis 9,currenttexture@ha
	.loc 1 2184 0
	stw 7,168(1)
	.loc 1 2189 0
	stw 0,currenttexture@l(9)
	.loc 1 2186 0
	stw 8,modelorg@l(11)
	.loc 1 2191 0
	bl glColor3f
	.loc 1 2192 0
	lis 3,lightmap_polys@ha
	li 4,0
	li 5,256
	la 3,lightmap_polys@l(3)
	bl memset
	.loc 1 2195 0
	bl R_ClearSkyBox
	.loc 1 2199 0
	lwz 9,2688(31)
	lwz 3,192(9)
	bl R_RecursiveWorldNode
	.loc 1 2202 0
	lis 9,gl_wireframe+12@ha
	lfs 13,gl_wireframe+12@l(9)
	lis 9,.LC9@ha
	lfs 0,.LC9@l(9)
	fcmpu 7,13,0
	bne+ 7,.L308
	.loc 1 2203 0
	bl R_DrawSkyBox
.L308:
	.loc 1 2206 0
	lwz 0,612(1)
	lwz 30,600(1)
	mtlr 0
	lwz 31,604(1)
	addi 1,1,608
.LCFI81:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE64:
	.size	R_InitDrawWorld, .-R_InitDrawWorld
	.align 2
	.globl R_DrawWorldAmbient
	.type	R_DrawWorldAmbient, @function
R_DrawWorldAmbient:
.LFB65:
	.loc 1 2219 0
	.cfi_startproc
	.loc 1 2221 0
	.loc 1 2220 0
	b R_BlendLightmaps
	.cfi_endproc
.LFE65:
	.size	R_DrawWorldAmbient, .-R_DrawWorldAmbient
	.align 2
	.globl R_WorldMultiplyTextures
	.type	R_WorldMultiplyTextures, @function
R_WorldMultiplyTextures:
.LFB66:
	.loc 1 2231 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI82:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	stw 0,12(1)
	.loc 1 2235 0
	.cfi_offset 65, 4
	bl DrawTextureChainsGX
	.loc 1 2238 0
	lwz 0,12(1)
	addi 1,1,8
.LCFI83:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
	.cfi_endproc
.LFE66:
	.size	R_WorldMultiplyTextures, .-R_WorldMultiplyTextures
	.align 2
	.globl R_MarkLeaves
	.type	R_MarkLeaves, @function
R_MarkLeaves:
.LFB67:
	.loc 1 2256 0
	.cfi_startproc
	.loc 1 2271 0
	lis 9,r_novis+12@ha
	.loc 1 2256 0
	stwu 1,-4120(1)
.LCFI84:
	.cfi_def_cfa_offset 4120
	.loc 1 2271 0
	lfs 13,r_novis+12@l(9)
	lis 9,.LC9@ha
	lfs 0,.LC9@l(9)
	.loc 1 2256 0
	mflr 0
	stw 30,4112(1)
	.loc 1 2268 0
	lis 30,r_visframecount@ha
	.cfi_offset 30, -8
	.cfi_register 65, 0
	.loc 1 2271 0
	fcmpu 7,13,0
	.loc 1 2268 0
	lwz 9,r_visframecount@l(30)
	.loc 1 2269 0
	lis 11,r_viewleaf@ha
	.loc 1 2256 0
	stw 0,4124(1)
	.loc 1 2269 0
	lwz 3,r_viewleaf@l(11)
.LVL366:
	.loc 1 2268 0
	addi 0,9,1
	.cfi_offset 65, 4
	.loc 1 2256 0
	stw 29,4108(1)
	.loc 1 2269 0
	lis 9,r_oldviewleaf@ha
	.loc 1 2274 0
	lis 29,cl@ha
	.cfi_offset 29, -12
	.loc 1 2256 0
	stw 28,4104(1)
	stw 31,4116(1)
	.loc 1 2274 0
	la 29,cl@l(29)
	.loc 1 2268 0
	stw 0,r_visframecount@l(30)
	.loc 1 2269 0
	stw 3,r_oldviewleaf@l(9)
.LVL367:
	.loc 1 2271 0
	beq- 7,.L313
	.cfi_offset 31, -4
	.cfi_offset 28, -16
.LVL368:
	.loc 1 2274 0
	lwz 31,2688(29)
	addi 3,1,8
.LVL369:
	li 4,255
	lwz 28,164(31)
	addi 5,28,7
	srawi 5,5,3
	bl memset
	.loc 1 2273 0
	addi 3,1,8
.LVL370:
.L314:
	.loc 1 2279 0
	cmpwi 7,28,0
	ble- 7,.L312
	lwz 6,2688(29)
	li 8,64
	lwz 11,r_visframecount@l(30)
	li 10,0
	lwz 7,164(6)
.LVL371:
.L318:
	.loc 1 2281 0
	srawi 0,10,3
	lbzx 9,3,0
	rlwinm 0,10,0,29,31
	sraw 0,9,0
	andi. 9,0,1
	beq- 0,.L316
	.loc 1 2283 0
	lwz 9,168(31)
	add 9,9,8
.LVL372:
	b .L317
.L321:
	.loc 1 2288 0
	stw 11,4(9)
	.loc 1 2289 0
	lwz 9,32(9)
.LVL373:
	.loc 1 2290 0
	cmpwi 7,9,0
	beq- 7,.L316
.L317:
	.loc 1 2286 0
	lwz 0,4(9)
	cmpw 7,0,11
	bne+ 7,.L321
.LVL374:
.L316:
	.loc 1 2279 0
	addi 10,10,1
.LVL375:
	addi 8,8,64
	cmpw 7,7,10
	ble- 7,.L312
	mr 31,6
	b .L318
.LVL376:
.L312:
	.loc 1 2293 0
	lwz 0,4124(1)
	lwz 28,4104(1)
	mtlr 0
	lwz 29,4108(1)
	lwz 30,4112(1)
	lwz 31,4116(1)
	addi 1,1,4120
	.cfi_remember_state
.LCFI85:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL377:
.L313:
.LCFI86:
	.cfi_restore_state
	.loc 1 2277 0
	lwz 4,2688(29)
	bl Mod_LeafPVS
.LVL378:
	lwz 31,2688(29)
	lwz 28,164(31)
	b .L314
	.cfi_endproc
.LFE67:
	.size	R_MarkLeaves, .-R_MarkLeaves
	.align 2
	.globl AllocBlock
	.type	AllocBlock, @function
AllocBlock:
.LFB68:
	.loc 1 2307 0
	.cfi_startproc
.LVL379:
	mflr 0
	stwu 1,-24(1)
.LCFI87:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	.loc 1 2344 0
	subfic 11,3,128
	lis 9,allocated@ha
	la 9,allocated@l(9)
	.loc 1 2307 0
	stw 28,8(1)
	stw 0,28(1)
	mr 0,3
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	stw 30,16(1)
	cmpwi 1,11,0
	stw 31,20(1)
	cmpwi 6,0,0
	stw 29,12(1)
	.loc 1 2312 0
	li 3,0
.LVL380:
	.loc 1 2344 0
	mr 29,9
	.cfi_offset 29, -12
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.LVL381:
.L323:
	.loc 1 2316 0 discriminator 1
	li 12,128
	ble- 1,.L328
	.loc 1 2316 0 is_stmt 0
	li 31,0
	.loc 1 2306 0 is_stmt 1
	slwi 28,3,7
.LVL382:
.L335:
	.loc 1 2320 0 discriminator 1
	ble- 6,.L329
	.loc 1 2306 0
	slwi 10,31,2
	addi 30,31,1
	.loc 1 2322 0
	lwzx 10,29,10
	cmpw 7,12,10
	ble- 7,.L324
	.loc 1 2306 0
	add 8,28,30
	mtctr 0
	slwi 8,8,2
	li 7,0
	add 8,9,8
	addi 8,8,-4
.LVL383:
.L330:
	.loc 1 2322 0
	cmpw 7,7,10
	bge- 7,.L325
	mr 7,10
.L325:
.LVL384:
	.loc 1 2320 0
	bdz .L327
	.loc 1 2322 0
	lwzu 10,4(8)
	cmpw 7,10,12
	blt+ 7,.L330
.LVL385:
.L324:
	.loc 1 2316 0
	cmpw 7,30,11
	mr 31,30
.LVL386:
	bne+ 7,.L335
.LVL387:
.L328:
	.loc 1 2334 0
	add 12,12,4
	cmpwi 7,12,128
	bgt- 7,.L331
.LVL388:
	.loc 1 2337 0
	cmpwi 7,0,0
	mtctr 0
	li 11,0
	slwi 10,3,7
	ble- 7,.L333
.LVL389:
.L340:
	.loc 1 2338 0 discriminator 2
	lwz 0,0(5)
	add 0,11,0
	.loc 1 2337 0 discriminator 2
	addi 11,11,1
.LVL390:
	.loc 1 2338 0 discriminator 2
	add 0,10,0
	slwi 0,0,2
	stwx 12,9,0
	.loc 1 2337 0 discriminator 2
	bdnz .L340
.LVL391:
.L333:
	.loc 1 2345 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI88:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
.LVL392:
.L344:
.LCFI89:
	.cfi_restore_state
	.loc 1 2327 0
	li 7,0
	addi 30,31,1
.LVL393:
.L327:
	.loc 1 2316 0
	cmpw 7,30,11
	.loc 1 2329 0
	stw 31,0(5)
.LVL394:
	.loc 1 2330 0
	mr 12,7
	stw 7,0(6)
	.loc 1 2316 0
	mr 31,30
.LVL395:
	bne+ 7,.L335
	b .L328
.LVL396:
.L331:
	.loc 1 2312 0
	cmpwi 7,3,63
	addi 29,29,512
	addi 3,3,1
.LVL397:
	bne+ 7,.L323
	.loc 1 2343 0
	lis 3,.LC29@ha
.LVL398:
	la 3,.LC29@l(3)
	crxor 6,6,6
	bl Sys_Error
.LVL399:
	.loc 1 2344 0
	li 3,0
	b .L333
.LVL400:
.L329:
	.loc 1 2327 0
	beq- 6,.L344
	addi 30,31,1
.LVL401:
	.loc 1 2316 0
	cmpw 7,30,11
	mr 31,30
.LVL402:
	bne+ 7,.L335
	b .L328
	.cfi_endproc
.LFE68:
	.size	AllocBlock, .-AllocBlock
	.align 2
	.globl SetupSurfaceConnectivity
	.type	SetupSurfaceConnectivity, @function
SetupSurfaceConnectivity:
.LFB69:
	.loc 1 2371 0
	.cfi_startproc
.LVL403:
	mflr 0
	stwu 1,-16(1)
.LCFI90:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 2375 0
	lwz 4,16(3)
	cmpwi 7,4,50
	bgt- 7,.L355
	.cfi_offset 65, 4
.LVL404:
.L347:
	.loc 1 2379 0 discriminator 1
	cmpwi 7,4,0
	ble- 7,.L346
	.loc 1 2379 0 is_stmt 0
	lwz 7,12(31)
	lis 12,tempEdges@ha
	lis 3,currentmodel@ha
	.loc 1 2370 0 is_stmt 1
	li 10,0
	.loc 1 2379 0
	slwi 7,7,2
	la 12,tempEdges@l(12)
	la 3,currentmodel@l(3)
	.loc 1 2384 0
	li 5,0
.LVL405:
.L352:
	.loc 1 2381 0
	lwz 9,0(3)
	.loc 1 2382 0
	lwz 11,0(12)
	.loc 1 2381 0
	lwz 9,216(9)
	.loc 1 2384 0
	lwz 8,36(31)
	.loc 1 2382 0
	lwzx 9,9,7
	.loc 1 2384 0
	lwz 6,20(8)
	.loc 1 2370 0
	slwi 8,10,2
	.loc 1 2382 0
	srawi 0,9,31
	xor 9,0,9
	subf 9,0,9
	mulli 9,9,12
	.loc 1 2385 0
	lwzx 0,11,9
	.loc 1 2382 0
	add 9,11,9
.LVL406:
	.loc 1 2384 0
	stwx 5,6,8
.LVL407:
	.loc 1 2385 0
	cmpwi 7,0,0
	ble- 7,.L349
	mtctr 0
	.loc 1 2370 0
	addi 9,9,-4
.LVL408:
.L351:
	.loc 1 2385 0
	addi 9,9,4
	.loc 1 2386 0
	lwz 11,36(31)
	lwz 0,4(9)
	cmpw 7,0,11
	beq- 7,.L350
	.loc 1 2387 0
	lwz 11,20(11)
	stwx 0,11,8
.L350:
	.loc 1 2385 0
	bdnz .L351
.L349:
	.loc 1 2379 0
	addi 10,10,1
.LVL409:
	addi 7,7,4
.LVL410:
	cmpw 7,10,4
	bne+ 7,.L352
.LVL411:
.L346:
	.loc 1 2391 0
	lwz 0,20(1)
	lwz 31,12(1)
.LVL412:
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI91:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL413:
.L355:
.LCFI92:
	.cfi_restore_state
	.loc 1 2376 0
	lis 3,.LC30@ha
.LVL414:
	la 3,.LC30@l(3)
	crxor 6,6,6
	bl Con_Printf
	lwz 4,16(31)
	b .L347
	.cfi_endproc
.LFE69:
	.size	SetupSurfaceConnectivity, .-SetupSurfaceConnectivity
	.align 2
	.globl PrintTempEdges
	.type	PrintTempEdges, @function
PrintTempEdges:
.LFB70:
	.loc 1 2401 0
	.cfi_startproc
.LVL415:
	stwu 1,-32(1)
.LCFI93:
	.cfi_def_cfa_offset 32
	mflr 0
	stw 29,20(1)
	.loc 1 2405 0
	lis 29,currentmodel@ha
	.cfi_offset 29, -12
	.cfi_register 65, 0
	.loc 1 2401 0
	stw 0,36(1)
	.loc 1 2405 0
	lwz 9,currentmodel@l(29)
	.loc 1 2401 0
	stw 27,12(1)
	.loc 1 2405 0
	lwz 0,180(9)
	.cfi_offset 27, -20
	.cfi_offset 65, 4
	.loc 1 2401 0
	stw 28,16(1)
	.loc 1 2405 0
	cmpwi 7,0,0
	.loc 1 2401 0
	stw 30,24(1)
	stw 31,28(1)
	.loc 1 2405 0
	ble- 7,.L356
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	lis 27,.LC31@ha
	lis 28,tempEdges@ha
	li 30,0
	li 31,0
	la 27,.LC31@l(27)
	la 28,tempEdges@l(28)
	la 29,currentmodel@l(29)
.LVL416:
.L358:
	.loc 1 2409 0 discriminator 2
	lwz 9,0(28)
	mr 3,27
	.loc 1 2405 0 discriminator 2
	addi 31,31,1
	.loc 1 2409 0 discriminator 2
	lwzx 4,9,30
	.loc 1 2405 0 discriminator 2
	addi 30,30,12
.LVL417:
	.loc 1 2409 0 discriminator 2
	crxor 6,6,6
	bl Con_Printf
.LVL418:
	.loc 1 2405 0 discriminator 2
	lwz 9,0(29)
	lwz 0,180(9)
	cmpw 7,0,31
	bgt+ 7,.L358
.LVL419:
.L356:
	.loc 1 2411 0
	lwz 0,36(1)
	lwz 27,12(1)
	mtlr 0
	lwz 28,16(1)
	lwz 29,20(1)
	lwz 30,24(1)
	lwz 31,28(1)
	addi 1,1,32
.LCFI94:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
	.cfi_endproc
.LFE70:
	.size	PrintTempEdges, .-PrintTempEdges
	.align 2
	.globl BuildPolyFromSurface
	.type	BuildPolyFromSurface, @function
BuildPolyFromSurface:
.LFB71:
	.loc 1 2422 0
	.cfi_startproc
.LVL420:
	mflr 0
	stwu 1,-152(1)
.LCFI95:
	.cfi_def_cfa_offset 152
	.cfi_register 65, 0
	stw 23,84(1)
	.loc 1 2433 0
	lis 23,currentmodel@ha
	.cfi_offset 23, -68
	.loc 1 2422 0
	stw 0,156(1)
	.loc 1 2433 0
	lwz 9,currentmodel@l(23)
	.loc 1 2422 0
	stw 27,100(1)
	stw 31,116(1)
	mr 31,3
	.cfi_offset 31, -36
	.cfi_offset 27, -52
	.cfi_offset 65, 4
	.loc 1 2434 0
	lwz 27,16(3)
	.loc 1 2440 0
	li 3,28
.LVL421:
	.loc 1 2422 0
	stw 25,92(1)
	stw 26,96(1)
	.loc 1 2433 0
	lwz 25,184(9)
	.cfi_offset 26, -56
	.cfi_offset 25, -60
.LVL422:
	.loc 1 2422 0
	stfd 28,120(1)
	stfd 29,128(1)
	stfd 30,136(1)
	stfd 31,144(1)
	stw 21,76(1)
	stw 22,80(1)
	stw 24,88(1)
	stw 28,104(1)
	stw 29,108(1)
	stw 30,112(1)
	.loc 1 2440 0
	.cfi_offset 30, -40
	.cfi_offset 29, -44
	.cfi_offset 28, -48
	.cfi_offset 24, -64
	.cfi_offset 22, -72
	.cfi_offset 21, -76
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	bl Hunk_Alloc
.LVL423:
	mr 26,3
.LVL424:
	.loc 1 2443 0
	slwi 3,27,2
.LVL425:
	bl Hunk_Alloc
	.loc 1 2450 0
	cmpwi 7,27,0
	.loc 1 2449 0
	lis 10,numTempVertices@ha
	.loc 1 2445 0
	lwz 11,36(31)
	.loc 1 2446 0
	lwz 9,8(31)
	.loc 1 2449 0
	lwz 0,numTempVertices@l(10)
	.loc 1 2443 0
	stw 3,20(26)
	.loc 1 2445 0
	stw 11,0(26)
	.loc 1 2446 0
	stw 9,12(26)
	.loc 1 2447 0
	stw 26,36(31)
	.loc 1 2448 0
	stw 27,8(26)
	.loc 1 2449 0
	stw 0,24(26)
.LVL426:
	.loc 1 2450 0
	ble- 7,.L361
	lis 9,.LC5@ha
	lis 22,r_pcurrentvertbase@ha
	.loc 1 2465 0
	lfs 28,.LC5@l(9)
	.loc 1 2474 0
	lis 9,.LC3@ha
	lfs 31,.LC3@l(9)
	.loc 1 2476 0
	lis 9,.LC16@ha
	lfs 29,.LC16@l(9)
	lis 24,tempEdges@ha
	.loc 1 2477 0
	lis 9,.LC32@ha
	.loc 1 2495 0
	lis 21,.LC33@ha
	.loc 1 2477 0
	lfs 30,.LC32@l(9)
	.loc 1 2450 0
	li 29,0
	la 23,currentmodel@l(23)
	la 22,r_pcurrentvertbase@l(22)
	la 24,tempEdges@l(24)
	.loc 1 2465 0
	lis 30,0x4330
	.loc 1 2495 0
	la 21,.LC33@l(21)
	b .L366
.LVL427:
.L364:
	mr 3,21
	.loc 1 2450 0
	addi 29,29,1
	.loc 1 2495 0
	crxor 6,6,6
	bl Con_Printf
.LVL428:
	.loc 1 2450 0
	cmpw 7,29,27
	beq- 7,.L361
.LVL429:
.L366:
	.loc 1 2452 0
	lwz 9,0(23)
	lwz 0,12(31)
	lwz 9,216(9)
	add 0,29,0
	slwi 0,0,2
	lwzx 28,9,0
.LVL430:
	.loc 1 2454 0
	cmpwi 7,28,0
	ble- 7,.L362
.LVL431:
	.loc 1 2457 0
	slwi 0,28,3
.LVL432:
	lhzx 11,25,0
	lwz 0,0(22)
	mulli 11,11,12
	add 11,0,11
.LVL433:
.L363:
	.loc 1 2464 0
	lwz 9,48(31)
	.loc 1 2486 0
	mr 3,11
	.loc 1 2464 0
	lfs 11,4(11)
	.loc 1 2486 0
	addi 4,1,16
	.loc 1 2464 0
	lfs 0,4(9)
	.loc 1 2486 0
	addi 5,1,8
	.loc 1 2465 0
	lwz 10,36(9)
	.loc 1 2464 0
	fmuls 11,11,0
	lfs 8,0(11)
	lfs 10,0(9)
	.loc 1 2465 0
	lwz 0,16(10)
	.loc 1 2464 0
	fmadds 8,8,10,11
	lfs 0,8(11)
	lfs 13,8(9)
	lfs 12,12(9)
	.loc 1 2465 0
	stw 0,28(1)
	.loc 1 2464 0
	fmadds 8,0,13,8
	.loc 1 2465 0
	stw 30,24(1)
	lfd 13,24(1)
	.loc 1 2464 0
	fadds 8,8,12
	.loc 1 2467 0
	lfs 9,20(9)
	.loc 1 2465 0
	fsub 13,13,28
	.loc 1 2468 0
	lwz 10,36(9)
	.loc 1 2467 0
	lfs 11,16(9)
	.loc 1 2468 0
	lwz 10,20(10)
	.loc 1 2465 0
	frsp 13,13
	.loc 1 2467 0
	lfs 10,8(11)
	lfs 12,24(9)
	.loc 1 2474 0
	lha 0,20(31)
	.loc 1 2465 0
	fdivs 8,8,13
	.loc 1 2467 0
	lfs 13,28(9)
	.loc 1 2474 0
	xoris 0,0,0x8000
	.loc 1 2465 0
	stfs 8,16(1)
	.loc 1 2467 0
	lfs 7,4(11)
	lfs 8,0(11)
	fmuls 7,9,7
	.loc 1 2468 0
	stw 10,36(1)
	stw 30,32(1)
	.loc 1 2467 0
	fmadds 7,8,11,7
	.loc 1 2473 0
	lfs 4,0(9)
	lfs 6,8(9)
	lfs 5,4(9)
	.loc 1 2467 0
	fmadds 7,10,12,7
	.loc 1 2468 0
	lfd 10,32(1)
	.loc 1 2473 0
	lfs 8,12(9)
	.loc 1 2468 0
	fsub 10,10,28
	.loc 1 2467 0
	fadds 7,7,13
	.loc 1 2468 0
	frsp 10,10
	fdivs 10,7,10
	stfs 10,20(1)
	.loc 1 2473 0
	lfs 10,4(11)
	lfs 7,0(11)
	fmuls 5,10,5
	.loc 1 2474 0
	stw 0,44(1)
	.loc 1 2475 0
	lwz 0,28(31)
	.loc 1 2479 0
	fmuls 10,9,10
	.loc 1 2474 0
	stw 30,40(1)
	.loc 1 2473 0
	fmadds 7,7,4,5
	.loc 1 2475 0
	slwi 0,0,4
	xoris 0,0,0x8000
	stw 30,48(1)
	stw 0,52(1)
	.loc 1 2473 0
	fmadds 7,0,6,7
	.loc 1 2474 0
	lfd 6,40(1)
	.loc 1 2480 0
	lha 9,22(31)
	.loc 1 2474 0
	fsub 6,6,31
	.loc 1 2481 0
	lwz 0,32(31)
	.loc 1 2473 0
	fadds 7,7,8
	.loc 1 2475 0
	lfd 8,48(1)
	.loc 1 2480 0
	xoris 9,9,0x8000
	.loc 1 2481 0
	slwi 0,0,4
	.loc 1 2474 0
	frsp 6,6
	.loc 1 2481 0
	xoris 0,0,0x8000
	.loc 1 2475 0
	fsub 8,8,31
	.loc 1 2474 0
	fsubs 7,7,6
	.loc 1 2475 0
	frsp 8,8
	fadds 9,7,8
	.loc 1 2476 0
	fadds 9,9,29
	.loc 1 2477 0
	fmuls 9,9,30
	stfs 9,8(1)
	.loc 1 2479 0
	lfs 9,0(11)
	.loc 1 2480 0
	stw 9,60(1)
	stw 30,56(1)
	.loc 1 2479 0
	fmadds 11,11,9,10
	.loc 1 2481 0
	stw 0,68(1)
	.loc 1 2480 0
	lfd 8,56(1)
	.loc 1 2481 0
	stw 30,64(1)
	.loc 1 2479 0
	fmadds 0,0,12,11
	.loc 1 2480 0
	fsub 8,8,31
	.loc 1 2481 0
	lfd 10,64(1)
	.loc 1 2479 0
	fadds 0,13,0
	.loc 1 2480 0
	frsp 8,8
	.loc 1 2481 0
	fsub 10,10,31
	.loc 1 2480 0
	fsubs 0,0,8
	.loc 1 2481 0
	frsp 10,10
	fadds 0,0,10
	.loc 1 2482 0
	fadds 0,0,29
	.loc 1 2483 0
	fmuls 0,0,30
	stfs 0,12(1)
	.loc 1 2486 0
	bl R_AllocateVertexInTemp
.LVL434:
	.loc 1 2489 0
	srawi 0,28,31
	lwz 9,0(24)
	xor 28,0,28
.LVL435:
	subf 28,0,28
	mulli 28,28,12
	.loc 1 2491 0
	lwzx 11,9,28
	.loc 1 2489 0
	add 0,9,28
.LVL436:
	.loc 1 2491 0
	cmpwi 7,11,1
	bgt- 7,.L364
	.loc 1 2450 0
	addi 29,29,1
.LVL437:
	.loc 1 2492 0
	slwi 10,11,2
	.loc 1 2450 0
	cmpw 7,29,27
	.loc 1 2492 0
	add 10,0,10
	.loc 1 2493 0
	addi 11,11,1
	.loc 1 2492 0
	stw 26,4(10)
	.loc 1 2493 0
	stwx 11,9,28
	.loc 1 2450 0
	bne+ 7,.L366
.LVL438:
.L361:
	.loc 1 2501 0
	lwz 0,156(1)
	.loc 1 2499 0
	stw 27,8(26)
	.loc 1 2501 0
	mtlr 0
	lwz 21,76(1)
	lwz 22,80(1)
	lwz 23,84(1)
	lwz 24,88(1)
	lwz 25,92(1)
.LVL439:
	lwz 26,96(1)
.LVL440:
	lwz 27,100(1)
.LVL441:
	lwz 28,104(1)
	lwz 29,108(1)
	lwz 30,112(1)
	lwz 31,116(1)
.LVL442:
	lfd 28,120(1)
	lfd 29,128(1)
	lfd 30,136(1)
	lfd 31,144(1)
	addi 1,1,152
	.cfi_remember_state
.LCFI96:
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
	blr
.LVL443:
.L362:
.LCFI97:
	.cfi_restore_state
	.loc 1 2462 0
	mulli 9,28,-8
	lwz 0,0(22)
	add 9,25,9
	lhz 11,2(9)
	mulli 11,11,12
	add 11,0,11
.LVL444:
	b .L363
	.cfi_endproc
.LFE71:
	.size	BuildPolyFromSurface, .-BuildPolyFromSurface
	.align 2
	.globl GL_CreateSurfaceLightmap
	.type	GL_CreateSurfaceLightmap, @function
GL_CreateSurfaceLightmap:
.LFB72:
	.loc 1 2509 0
	.cfi_startproc
.LVL445:
	mflr 0
	stwu 1,-16(1)
.LCFI98:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 31,12(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 0,20(1)
	.loc 1 2513 0
	lwz 0,8(3)
	.cfi_offset 65, 4
	andi. 9,0,20
	beq- 0,.L370
	.loc 1 2523 0
	lwz 0,20(1)
	lwz 31,12(1)
	mtlr 0
	addi 1,1,16
	.cfi_remember_state
.LCFI99:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.L370:
.LCFI100:
	.cfi_restore_state
.LVL446:
	.loc 1 2517 0
	lha 4,26(31)
	.loc 1 2519 0
	addi 5,31,28
	.loc 1 2516 0
	lha 3,24(3)
.LVL447:
	.loc 1 2519 0
	addi 6,31,32
	.loc 1 2517 0
	srawi 4,4,4
	.loc 1 2516 0
	srawi 3,3,4
	.loc 1 2519 0
	addi 4,4,1
	addi 3,3,1
	bl AllocBlock
.LVL448:
	.loc 1 2520 0
	lis 9,lightmap_bytes@ha
	lwz 5,lightmap_bytes@l(9)
	.loc 1 2521 0
	lwz 0,32(31)
	lwz 9,28(31)
	.loc 1 2520 0
	mullw 4,3,5
	.loc 1 2521 0
	slwi 0,0,7
	.loc 1 2519 0
	stw 3,60(31)
	.loc 1 2521 0
	add 0,0,9
	.loc 1 2520 0
	lis 9,lightmaps@ha
	.loc 1 2521 0
	mullw 0,5,0
	.loc 1 2520 0
	slwi 4,4,14
	la 9,lightmaps@l(9)
	add 4,4,9
	.loc 1 2522 0
	mr 3,31
	.loc 1 2523 0
	lwz 31,12(1)
.LVL449:
	.loc 1 2522 0
	add 4,4,0
	.loc 1 2523 0
	lwz 0,20(1)
	.loc 1 2522 0
	slwi 5,5,7
	.loc 1 2523 0
	mtlr 0
	addi 1,1,16
.LCFI101:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.loc 1 2522 0
	b R_BuildLightMap
.LVL450:
	.cfi_endproc
.LFE72:
	.size	GL_CreateSurfaceLightmap, .-GL_CreateSurfaceLightmap
	.align 2
	.globl GL_BuildLightmaps
	.type	GL_BuildLightmaps, @function
GL_BuildLightmaps:
.LFB73:
	.loc 1 2535 0
	.cfi_startproc
	stwu 1,-80(1)
.LCFI102:
	.cfi_def_cfa_offset 80
	mflr 0
	.loc 1 2540 0
	li 5,0
	li 4,0
	.loc 1 2535 0
	stw 25,44(1)
	.loc 1 2540 0
	lis 25,allocated@ha
	.cfi_offset 25, -36
	.cfi_register 65, 0
	la 25,allocated@l(25)
	.loc 1 2535 0
	stw 26,48(1)
	.loc 1 2540 0
	mr 3,25
	ori 5,5,32768
	.loc 1 2544 0
	lis 26,lightmap_textures@ha
	.cfi_offset 26, -32
	.loc 1 2535 0
	stw 0,84(1)
	stfd 31,72(1)
	stw 19,20(1)
	stw 20,24(1)
	stw 21,28(1)
	stw 22,32(1)
	stw 23,36(1)
	stw 24,40(1)
	stw 27,52(1)
	stw 28,56(1)
	stw 29,60(1)
	stw 30,64(1)
	stw 31,68(1)
	.loc 1 2540 0
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 24, -40
	.cfi_offset 23, -44
	.cfi_offset 22, -48
	.cfi_offset 21, -52
	.cfi_offset 20, -56
	.cfi_offset 19, -60
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	bl memset
	.loc 1 2544 0
	lwz 0,lightmap_textures@l(26)
	.loc 1 2542 0
	lis 9,r_framecount@ha
	.loc 1 2544 0
	cmpwi 7,0,0
	.loc 1 2542 0
	li 0,1
	stw 0,r_framecount@l(9)
	.loc 1 2544 0
	bne- 7,.L372
	.loc 1 2546 0
	lis 9,texture_extension_number@ha
	lwz 11,texture_extension_number@l(9)
	.loc 1 2547 0
	addi 0,11,64
	.loc 1 2546 0
	stw 11,lightmap_textures@l(26)
	.loc 1 2547 0
	stw 0,texture_extension_number@l(9)
.L372:
	.loc 1 2553 0
	lis 9,isPermedia@ha
	.loc 1 2550 0
	lis 27,gl_lightmap_format@ha
	.loc 1 2553 0
	lbz 0,isPermedia@l(9)
	cmpwi 7,0,0
	.loc 1 2550 0
	li 0,6409
	stw 0,gl_lightmap_format@l(27)
	.loc 1 2553 0
	beq- 7,.L373
	.loc 1 2554 0
	li 0,6408
	stw 0,gl_lightmap_format@l(27)
.L373:
	.loc 1 2556 0
	lis 3,.LC34@ha
	la 3,.LC34@l(3)
	bl COM_CheckParm
	cmpwi 7,3,0
	beq- 7,.L374
	.loc 1 2557 0
	li 0,6409
	stw 0,gl_lightmap_format@l(27)
.L374:
	.loc 1 2558 0
	lis 3,.LC35@ha
	la 3,.LC35@l(3)
	bl COM_CheckParm
	cmpwi 7,3,0
	beq- 7,.L375
	.loc 1 2559 0
	li 0,6406
	stw 0,gl_lightmap_format@l(27)
.L375:
	.loc 1 2560 0
	lis 3,.LC36@ha
	la 3,.LC36@l(3)
	bl COM_CheckParm
	cmpwi 7,3,0
	beq- 7,.L376
	.loc 1 2561 0
	li 0,0
	ori 0,0,32841
	stw 0,gl_lightmap_format@l(27)
.L376:
	.loc 1 2562 0
	lis 3,.LC37@ha
	la 3,.LC37@l(3)
	bl COM_CheckParm
	cmpwi 7,3,0
	beq- 7,.L377
	.loc 1 2563 0
	li 0,0
	ori 0,0,32854
	stw 0,gl_lightmap_format@l(27)
.L377:
	.loc 1 2564 0
	lis 3,.LC38@ha
	la 3,.LC38@l(3)
	bl COM_CheckParm
	cmpwi 7,3,0
	beq- 7,.L378
	.loc 1 2565 0
	li 0,6408
	stw 0,gl_lightmap_format@l(27)
.L379:
	.loc 1 2570 0
	li 0,4
	lis 9,lightmap_bytes@ha
	stw 0,lightmap_bytes@l(9)
.L380:
.LVL451:
	.loc 1 2579 0 discriminator 1
	lis 24,cl+588@ha
	.loc 1 2590 0 discriminator 1
	lis 19,r_pcurrentvertbase@ha
	.loc 1 2579 0 discriminator 1
	la 24,cl+588@l(24)
	.loc 1 2591 0 discriminator 1
	lis 20,currentmodel@ha
	.loc 1 2534 0 discriminator 1
	addi 22,24,1020
	mr 23,24
	.loc 1 2594 0 discriminator 1
	lis 21,tempEdges@ha
	.loc 1 2605 0 discriminator 1
	li 28,0
.LVL452:
.L392:
	.loc 1 2584 0
	lwzu 31,4(23)
.LVL453:
	.loc 1 2585 0
	cmpwi 7,31,0
	beq- 7,.L384
	.loc 1 2587 0
	lbz 0,0(31)
	cmpwi 7,0,42
	beq- 7,.L385
	.loc 1 2594 0
	lwz 3,180(31)
	.loc 1 2590 0
	lwz 0,176(31)
	.loc 1 2594 0
	mulli 3,3,12
	.loc 1 2591 0
	stw 31,currentmodel@l(20)
	.loc 1 2590 0
	stw 0,r_pcurrentvertbase@l(19)
	.loc 1 2594 0
	bl Hunk_TempAlloc
.LVL454:
	.loc 1 2597 0
	lwz 0,180(31)
	.loc 1 2594 0
	stw 3,tempEdges@l(21)
.LVL455:
	.loc 1 2597 0
	cmpwi 7,0,0
	ble- 7,.L386
	.loc 1 2598 0
	mtctr 0
.LVL456:
.L387:
	.loc 1 2598 0 is_stmt 0 discriminator 2
	stw 28,0(3)
	.loc 1 2599 0 is_stmt 1 discriminator 2
	stw 28,4(3)
	.loc 1 2600 0 discriminator 2
	stw 28,8(3)
	.loc 1 2597 0 discriminator 2
	addi 3,3,12
	bdnz .L387
.L386:
.LVL457:
	.loc 1 2605 0 discriminator 1
	lwz 0,204(31)
	cmpwi 7,0,0
	ble- 7,.L385
	.loc 1 2605 0 is_stmt 0
	li 30,0
	li 29,0
	b .L389
.LVL458:
.L388:
	lwz 0,204(31)
	cmpw 7,0,29
	ble- 7,.L407
.LVL459:
.L389:
	.loc 1 2607 0 is_stmt 1
	lwz 3,208(31)
	.loc 1 2605 0
	addi 29,29,1
	.loc 1 2607 0
	add 3,3,30
	bl GL_CreateSurfaceLightmap
	.loc 1 2608 0
	lwz 3,208(31)
	add 3,3,30
	.loc 1 2605 0
	addi 30,30,92
	.loc 1 2608 0
	lwz 0,8(3)
	andi. 9,0,16
	bne+ 0,.L388
	.loc 1 2614 0
	bl BuildPolyFromSurface
.LVL460:
	.loc 1 2605 0
	lwz 0,204(31)
	cmpw 7,0,29
	bgt+ 7,.L389
.L407:
.LVL461:
	.loc 1 2618 0 discriminator 1
	cmpwi 7,0,0
	ble- 7,.L385
	.loc 1 2618 0 is_stmt 0
	li 29,0
	li 30,0
	b .L391
.LVL462:
.L390:
	cmpw 7,0,30
	ble- 7,.L385
.LVL463:
.L391:
	.loc 1 2620 0 is_stmt 1
	lwz 3,208(31)
	.loc 1 2618 0
	addi 30,30,1
	.loc 1 2620 0
	add 3,3,29
	.loc 1 2618 0
	addi 29,29,92
	.loc 1 2534 0
	lwz 9,8(3)
	.loc 1 2623 0
	andi. 11,9,20
	bne+ 0,.L390
	.loc 1 2626 0
	bl SetupSurfaceConnectivity
	lwz 0,204(31)
.LVL464:
	.loc 1 2618 0
	cmpw 7,0,30
	bgt+ 7,.L391
.LVL465:
.L385:
	.loc 1 2582 0
	cmpw 7,23,22
	bne+ 7,.L392
.L384:
	.loc 1 2630 0
	lis 3,.LC39@ha
	la 3,.LC39@l(3)
	crxor 6,6,6
	bl Con_Printf
.LVL466:
.L396:
.LBB19:
	.loc 1 2640 0
	lwzu 29,4(24)
.LVL467:
	.loc 1 2641 0
	cmpwi 7,29,0
	beq- 7,.L393
	.loc 1 2643 0
	lbz 0,0(29)
	cmpwi 7,0,42
	beq- 7,.L394
	.loc 1 2647 0
	lwz 0,196(29)
	.loc 1 2646 0
	lwz 31,200(29)
.LVL468:
	.loc 1 2647 0
	cmpwi 7,0,0
	ble- 7,.L394
	li 30,0
.LVL469:
.L395:
	.loc 1 2648 0 discriminator 2
	mr 3,31
	.loc 1 2647 0 discriminator 2
	addi 30,30,1
	.loc 1 2648 0 discriminator 2
	bl VectorNormalize
	.loc 1 2649 0 discriminator 2
	addi 3,31,16
	bl VectorNormalize
.LVL470:
	.loc 1 2647 0 discriminator 2
	lwz 0,196(29)
	addi 31,31,44
	cmpw 7,0,30
	bgt+ 7,.L395
.LVL471:
.L394:
.LBE19:
	.loc 1 2636 0
	cmpw 7,24,22
	bne+ 7,.L396
.L393:
	.loc 1 2658 0
	lis 3,.LC40@ha
	lis 30,lightmap_rectchange@ha
	la 3,.LC40@l(3)
	.loc 1 2674 0
	lis 23,lightmaps@ha
	.loc 1 2679 0
	lis 20,.LC42@ha
	.loc 1 2658 0
	crxor 6,6,6
	bl Sys_Printf
.LVL472:
	la 30,lightmap_rectchange@l(30)
	.loc 1 2662 0
	li 31,0
	.loc 1 2666 0
	lis 24,lightmap_modified@ha
	li 29,0
.LVL473:
	.loc 1 2667 0
	li 28,-128
	.loc 1 2672 0
	lis 21,.LC41@ha
	.loc 1 2676 0
	lis 22,lightmap_bytes@ha
	.loc 1 2674 0
	la 23,lightmaps@l(23)
	.loc 1 2679 0
	la 20,.LC42@l(20)
	b .L399
.LVL474:
.L398:
	.loc 1 2662 0
	cmpwi 7,31,63
	addi 31,31,1
.LVL475:
	beq- 7,.L397
.LVL476:
.L399:
	.loc 1 2534 0
	slwi 0,31,9
	.loc 1 2666 0
	la 9,lightmap_modified@l(24)
	.loc 1 2664 0
	lwzx 0,25,0
	cmpwi 7,0,0
	beq- 7,.L397
	.loc 1 2671 0
	lwz 3,lightmap_textures@l(26)
	.loc 1 2666 0
	stbx 29,9,31
	.loc 1 2667 0
	stb 28,0(30)
	.loc 1 2671 0
	add 3,31,3
	.loc 1 2668 0
	stb 28,1(30)
	.loc 1 2669 0
	stb 29,2(30)
	.loc 1 2670 0
	stb 29,3(30)
	.loc 1 2662 0
	addi 30,30,4
	.loc 1 2671 0
	bl GL_Bind
	.loc 1 2672 0
	lfs 31,.LC41@l(21)
	li 3,3553
	li 4,10241
	fmr 1,31
	bl glTexParameterf
	.loc 1 2673 0
	fmr 1,31
	li 3,3553
	li 4,10240
	bl glTexParameterf
	.loc 1 2676 0
	lwz 5,lightmap_bytes@l(22)
	.loc 1 2534 0
	slwi 0,31,14
	.loc 1 2674 0
	lwz 9,gl_lightmap_format@l(27)
	.loc 1 2676 0
	mullw 0,5,0
	.loc 1 2674 0
	li 4,0
	li 6,128
	li 7,128
	li 8,0
	add 0,0,23
	li 10,5121
	li 3,3553
	stw 0,8(1)
	bl glTexImage2D
	.loc 1 2678 0
	bl glGetError
	cmpwi 7,3,1285
	bne+ 7,.L398
	.loc 1 2679 0
	lwz 5,lightmap_textures@l(26)
	mr 4,31
	mr 3,20
	add 5,31,5
	crxor 6,6,6
	bl Sys_Printf
.LVL477:
	.loc 1 2662 0
	cmpwi 7,31,63
	addi 31,31,1
.LVL478:
	bne+ 7,.L399
.LVL479:
.L397:
	.loc 1 2683 0
	lis 3,.LC43@ha
	la 3,.LC43@l(3)
	crxor 6,6,6
	bl Sys_Printf
	.loc 1 2690 0
	lwz 0,84(1)
	lwz 19,20(1)
	mtlr 0
	lwz 20,24(1)
	lwz 21,28(1)
	lwz 22,32(1)
	lwz 23,36(1)
	lwz 24,40(1)
	lwz 25,44(1)
	lwz 26,48(1)
	lwz 27,52(1)
	lwz 28,56(1)
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
	lfd 31,72(1)
	addi 1,1,80
	.cfi_remember_state
.LCFI103:
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
	blr
.L378:
.LCFI104:
	.cfi_restore_state
	.loc 1 2567 0
	lwz 0,gl_lightmap_format@l(27)
	cmpwi 7,0,6409
	beq- 7,.L381
	ble- 7,.L408
	xoris 9,0,0xffff
	cmpwi 7,9,-32695
	beq 7,.L381
	xoris 9,0,0xffff
	cmpwi 7,9,-32682
	bne 7,.L380
	.loc 1 2573 0
	li 0,2
	lis 9,lightmap_bytes@ha
	stw 0,lightmap_bytes@l(9)
	.loc 1 2574 0
	b .L380
.L381:
	.loc 1 2578 0
	li 0,1
	lis 9,lightmap_bytes@ha
	stw 0,lightmap_bytes@l(9)
	.loc 1 2579 0
	b .L380
.L408:
	.loc 1 2567 0
	cmpwi 7,0,6406
	beq- 7,.L381
	cmpwi 7,0,6408
	bne+ 7,.L380
	b .L379
	.cfi_endproc
.LFE73:
	.size	GL_BuildLightmaps, .-GL_BuildLightmaps
	.comm	tempEdges,4,4
	.comm	nColinElim,4,4
	.comm	currentmodel,4,4
	.comm	r_pcurrentvertbase,4,4
	.comm	didnode,1,1
	.globl mtexenabled
	.globl wglFreeMemoryNV
	.globl wglAllocateMemoryNV
	.globl glVertexArrayRangeNV
	.globl qglFlushVertexArrayRangeNV
	.globl qglVertexAttribs4ubvNV
	.globl qglVertexAttribs4svNV
	.globl qglVertexAttribs4fvNV
	.globl qglVertexAttribs4dvNV
	.globl qglVertexAttribs3svNV
	.globl qglVertexAttribs3fvNV
	.globl qglVertexAttribs3dvNV
	.globl qglVertexAttribs2svNV
	.globl qglVertexAttribs2fvNV
	.globl qglVertexAttribs2dvNV
	.globl qglVertexAttribs1svNV
	.globl qglVertexAttribs1fvNV
	.globl qglVertexAttribs1dvNV
	.globl qglVertexAttrib4ubvNV
	.globl qglVertexAttrib4svNV
	.globl qglVertexAttrib4sNV
	.globl qglVertexAttrib4fvNV
	.globl qglVertexAttrib4fNV
	.globl qglVertexAttrib4dvNV
	.globl qglVertexAttrib4dNV
	.globl qglVertexAttrib3svNV
	.globl qglVertexAttrib3sNV
	.globl qglVertexAttrib3fvNV
	.globl qglVertexAttrib3fNV
	.globl qglVertexAttrib3dvNV
	.globl qglVertexAttrib3dNV
	.globl qglVertexAttrib2svNV
	.globl qglVertexAttrib2sNV
	.globl qglVertexAttrib2fvNV
	.globl qglVertexAttrib2fNV
	.globl qglVertexAttrib2dvNV
	.globl qglVertexAttrib2dNV
	.globl qglVertexAttrib1svNV
	.globl qglVertexAttrib1sNV
	.globl qglVertexAttrib1fvNV
	.globl qglVertexAttrib1fNV
	.globl qglVertexAttrib1dvNV
	.globl qglVertexAttrib1dNV
	.globl qglVertexAttribPointerNV
	.globl qglTrackMatrixNV
	.globl qglRequestResidentProgramsNV
	.globl qglProgramParameters4fvNV
	.globl qglProgramParameters4dvNV
	.globl qglProgramParameter4fvNV
	.globl qglProgramParameter4fNV
	.globl qglProgramParameter4dvNV
	.globl qglProgramParameter4dNV
	.globl qglLoadProgramNV
	.globl qglIsProgramNV
	.globl qglGetVertexAttribPointervNV
	.globl qglGetVertexAttribivNV
	.globl qglGetVertexAttribfvNV
	.globl qglGetVertexAttribdvNV
	.globl qglGetTrackMatrixivNV
	.globl qglGetProgramStringNV
	.globl qglGetProgramivNV
	.globl qglGetProgramParameterfvNV
	.globl qglGetProgramParameterdvNV
	.globl qglGenProgramsNV
	.globl qglExecuteProgramNV
	.globl qglDeleteProgramsNV
	.globl qglBindProgramNV
	.globl qglAreProgramsResidentNV
	.globl qglMultiTexCoord3fvARB
	.globl qglMultiTexCoord3fARB
	.globl qglMultiTexCoord2fvARB
	.globl qglMultiTexCoord2fARB
	.globl qglMultiTexCoord1fARB
	.globl qglClientActiveTextureARB
	.globl qglActiveTextureARB
	.globl qglDepthBoundsNV
	.globl qglTexImage3DEXT
	.globl qglGetFinalCombinerInputParameterivNV
	.globl qglGetFinalCombinerInputParameterfvNV
	.globl qglGetCombinerOutputParameterivNV
	.globl qglGetCombinerOutputParameterfvNV
	.globl qglGetCombinerInputParameterivNV
	.globl qglGetCombinerInputParameterfvNV
	.globl qglFinalCombinerInputNV
	.globl qglCombinerOutputNV
	.globl qglCombinerInputNV
	.globl qglCombinerParameteriNV
	.globl qglCombinerParameterfNV
	.globl qglCombinerParameterivNV
	.globl qglCombinerParameterfvNV
	.globl numTempVertices
	.globl tempVerticesSize
	.globl tempVertices
	.globl globalVertexTable
	.globl waterchain
	.globl skychain
	.comm	lightmaps,4194304,4
	.comm	allocated,32768,4
	.comm	lightmap_rectchange,256,1
	.comm	lightmap_modified,64,4
	.comm	lightmap_polys,256,4
	.comm	active_lightmaps,4,4
	.comm	blocklights,1296,4
	.comm	lightmap_textures,4,4
	.comm	lightmap_bytes,4,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC3:
	.4byte	1501560836
.LC5:
	.4byte	1501560832
.LC6:
	.4byte	1132462080
.LC7:
	.4byte	1325400064
.LC9:
	.4byte	0
.LC11:
	.4byte	1092616192
.LC16:
	.4byte	1090519040
.LC17:
	.4byte	1174667264
.LC18:
	.4byte	1065353216
.LC19:
	.4byte	1173358592
.LC20:
	.4byte	1161699328
.LC22:
	.4byte	1098907648
.LC23:
	.4byte	1191538688
.LC24:
	.4byte	1191540480
.LC25:
	.4byte	1169690624
.LC32:
	.4byte	973078528
.LC41:
	.4byte	1175979008
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC14:
	.4byte	1068079513
	.4byte	-1717986918
.LC26:
	.4byte	-1081836831
	.4byte	1202590843
.LC27:
	.4byte	1065646817
	.4byte	1202590843
.LC28:
	.4byte	0
	.4byte	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC0:
	.string	"R_AllocateVertexInTemp: malloc failed\n"
	.zero	1
.LC1:
	.string	"Copied %i vertices to hunk\n"
.LC8:
	.string	"Bad lightmap format"
.LC12:
	.string	"R_TextureAnimation: broken cycle"
	.zero	3
.LC13:
	.string	"R_TextureAnimation: infinite cycle"
	.zero	1
.LC29:
	.string	"AllocBlock: full"
	.zero	3
.LC30:
	.string	"to many edges %i\n"
	.zero	2
.LC31:
	.string	"moord en brand %d\n"
	.zero	1
.LC33:
	.string	"BuildSurfaceDisplayList: Edge used by more than 2 surfaces\n"
.LC34:
	.string	"-lm_1"
	.zero	2
.LC35:
	.string	"-lm_a"
	.zero	2
.LC36:
	.string	"-lm_i"
	.zero	2
.LC37:
	.string	"-lm_2"
	.zero	2
.LC38:
	.string	"-lm_4"
	.zero	2
.LC39:
	.string	"Connectivity calculated\n"
	.zero	3
.LC40:
	.string	">>>>>>>> Loading lightmaps....\n"
.LC42:
	.string	"Out of memory loading lightmap %d (texid %d)\n"
	.zero	2
.LC43:
	.string	"End Loading lightmaps....\n"
	.section	.sbss,"aw",@nobits
	.align 2
	.type	mtexenabled, @object
	.size	mtexenabled, 1
mtexenabled:
	.zero	1
	.zero	3
	.type	wglFreeMemoryNV, @object
	.size	wglFreeMemoryNV, 4
wglFreeMemoryNV:
	.zero	4
	.type	wglAllocateMemoryNV, @object
	.size	wglAllocateMemoryNV, 4
wglAllocateMemoryNV:
	.zero	4
	.type	glVertexArrayRangeNV, @object
	.size	glVertexArrayRangeNV, 4
glVertexArrayRangeNV:
	.zero	4
	.type	qglFlushVertexArrayRangeNV, @object
	.size	qglFlushVertexArrayRangeNV, 4
qglFlushVertexArrayRangeNV:
	.zero	4
	.type	qglVertexAttribs4ubvNV, @object
	.size	qglVertexAttribs4ubvNV, 4
qglVertexAttribs4ubvNV:
	.zero	4
	.type	qglVertexAttribs4svNV, @object
	.size	qglVertexAttribs4svNV, 4
qglVertexAttribs4svNV:
	.zero	4
	.type	qglVertexAttribs4fvNV, @object
	.size	qglVertexAttribs4fvNV, 4
qglVertexAttribs4fvNV:
	.zero	4
	.type	qglVertexAttribs4dvNV, @object
	.size	qglVertexAttribs4dvNV, 4
qglVertexAttribs4dvNV:
	.zero	4
	.type	qglVertexAttribs3svNV, @object
	.size	qglVertexAttribs3svNV, 4
qglVertexAttribs3svNV:
	.zero	4
	.type	qglVertexAttribs3fvNV, @object
	.size	qglVertexAttribs3fvNV, 4
qglVertexAttribs3fvNV:
	.zero	4
	.type	qglVertexAttribs3dvNV, @object
	.size	qglVertexAttribs3dvNV, 4
qglVertexAttribs3dvNV:
	.zero	4
	.type	qglVertexAttribs2svNV, @object
	.size	qglVertexAttribs2svNV, 4
qglVertexAttribs2svNV:
	.zero	4
	.type	qglVertexAttribs2fvNV, @object
	.size	qglVertexAttribs2fvNV, 4
qglVertexAttribs2fvNV:
	.zero	4
	.type	qglVertexAttribs2dvNV, @object
	.size	qglVertexAttribs2dvNV, 4
qglVertexAttribs2dvNV:
	.zero	4
	.type	qglVertexAttribs1svNV, @object
	.size	qglVertexAttribs1svNV, 4
qglVertexAttribs1svNV:
	.zero	4
	.type	qglVertexAttribs1fvNV, @object
	.size	qglVertexAttribs1fvNV, 4
qglVertexAttribs1fvNV:
	.zero	4
	.type	qglVertexAttribs1dvNV, @object
	.size	qglVertexAttribs1dvNV, 4
qglVertexAttribs1dvNV:
	.zero	4
	.type	qglVertexAttrib4ubvNV, @object
	.size	qglVertexAttrib4ubvNV, 4
qglVertexAttrib4ubvNV:
	.zero	4
	.type	qglVertexAttrib4svNV, @object
	.size	qglVertexAttrib4svNV, 4
qglVertexAttrib4svNV:
	.zero	4
	.type	qglVertexAttrib4sNV, @object
	.size	qglVertexAttrib4sNV, 4
qglVertexAttrib4sNV:
	.zero	4
	.type	qglVertexAttrib4fvNV, @object
	.size	qglVertexAttrib4fvNV, 4
qglVertexAttrib4fvNV:
	.zero	4
	.type	qglVertexAttrib4fNV, @object
	.size	qglVertexAttrib4fNV, 4
qglVertexAttrib4fNV:
	.zero	4
	.type	qglVertexAttrib4dvNV, @object
	.size	qglVertexAttrib4dvNV, 4
qglVertexAttrib4dvNV:
	.zero	4
	.type	qglVertexAttrib4dNV, @object
	.size	qglVertexAttrib4dNV, 4
qglVertexAttrib4dNV:
	.zero	4
	.type	qglVertexAttrib3svNV, @object
	.size	qglVertexAttrib3svNV, 4
qglVertexAttrib3svNV:
	.zero	4
	.type	qglVertexAttrib3sNV, @object
	.size	qglVertexAttrib3sNV, 4
qglVertexAttrib3sNV:
	.zero	4
	.type	qglVertexAttrib3fvNV, @object
	.size	qglVertexAttrib3fvNV, 4
qglVertexAttrib3fvNV:
	.zero	4
	.type	qglVertexAttrib3fNV, @object
	.size	qglVertexAttrib3fNV, 4
qglVertexAttrib3fNV:
	.zero	4
	.type	qglVertexAttrib3dvNV, @object
	.size	qglVertexAttrib3dvNV, 4
qglVertexAttrib3dvNV:
	.zero	4
	.type	qglVertexAttrib3dNV, @object
	.size	qglVertexAttrib3dNV, 4
qglVertexAttrib3dNV:
	.zero	4
	.type	qglVertexAttrib2svNV, @object
	.size	qglVertexAttrib2svNV, 4
qglVertexAttrib2svNV:
	.zero	4
	.type	qglVertexAttrib2sNV, @object
	.size	qglVertexAttrib2sNV, 4
qglVertexAttrib2sNV:
	.zero	4
	.type	qglVertexAttrib2fvNV, @object
	.size	qglVertexAttrib2fvNV, 4
qglVertexAttrib2fvNV:
	.zero	4
	.type	qglVertexAttrib2fNV, @object
	.size	qglVertexAttrib2fNV, 4
qglVertexAttrib2fNV:
	.zero	4
	.type	qglVertexAttrib2dvNV, @object
	.size	qglVertexAttrib2dvNV, 4
qglVertexAttrib2dvNV:
	.zero	4
	.type	qglVertexAttrib2dNV, @object
	.size	qglVertexAttrib2dNV, 4
qglVertexAttrib2dNV:
	.zero	4
	.type	qglVertexAttrib1svNV, @object
	.size	qglVertexAttrib1svNV, 4
qglVertexAttrib1svNV:
	.zero	4
	.type	qglVertexAttrib1sNV, @object
	.size	qglVertexAttrib1sNV, 4
qglVertexAttrib1sNV:
	.zero	4
	.type	qglVertexAttrib1fvNV, @object
	.size	qglVertexAttrib1fvNV, 4
qglVertexAttrib1fvNV:
	.zero	4
	.type	qglVertexAttrib1fNV, @object
	.size	qglVertexAttrib1fNV, 4
qglVertexAttrib1fNV:
	.zero	4
	.type	qglVertexAttrib1dvNV, @object
	.size	qglVertexAttrib1dvNV, 4
qglVertexAttrib1dvNV:
	.zero	4
	.type	qglVertexAttrib1dNV, @object
	.size	qglVertexAttrib1dNV, 4
qglVertexAttrib1dNV:
	.zero	4
	.type	qglVertexAttribPointerNV, @object
	.size	qglVertexAttribPointerNV, 4
qglVertexAttribPointerNV:
	.zero	4
	.type	qglTrackMatrixNV, @object
	.size	qglTrackMatrixNV, 4
qglTrackMatrixNV:
	.zero	4
	.type	qglRequestResidentProgramsNV, @object
	.size	qglRequestResidentProgramsNV, 4
qglRequestResidentProgramsNV:
	.zero	4
	.type	qglProgramParameters4fvNV, @object
	.size	qglProgramParameters4fvNV, 4
qglProgramParameters4fvNV:
	.zero	4
	.type	qglProgramParameters4dvNV, @object
	.size	qglProgramParameters4dvNV, 4
qglProgramParameters4dvNV:
	.zero	4
	.type	qglProgramParameter4fvNV, @object
	.size	qglProgramParameter4fvNV, 4
qglProgramParameter4fvNV:
	.zero	4
	.type	qglProgramParameter4fNV, @object
	.size	qglProgramParameter4fNV, 4
qglProgramParameter4fNV:
	.zero	4
	.type	qglProgramParameter4dvNV, @object
	.size	qglProgramParameter4dvNV, 4
qglProgramParameter4dvNV:
	.zero	4
	.type	qglProgramParameter4dNV, @object
	.size	qglProgramParameter4dNV, 4
qglProgramParameter4dNV:
	.zero	4
	.type	qglLoadProgramNV, @object
	.size	qglLoadProgramNV, 4
qglLoadProgramNV:
	.zero	4
	.type	qglIsProgramNV, @object
	.size	qglIsProgramNV, 4
qglIsProgramNV:
	.zero	4
	.type	qglGetVertexAttribPointervNV, @object
	.size	qglGetVertexAttribPointervNV, 4
qglGetVertexAttribPointervNV:
	.zero	4
	.type	qglGetVertexAttribivNV, @object
	.size	qglGetVertexAttribivNV, 4
qglGetVertexAttribivNV:
	.zero	4
	.type	qglGetVertexAttribfvNV, @object
	.size	qglGetVertexAttribfvNV, 4
qglGetVertexAttribfvNV:
	.zero	4
	.type	qglGetVertexAttribdvNV, @object
	.size	qglGetVertexAttribdvNV, 4
qglGetVertexAttribdvNV:
	.zero	4
	.type	qglGetTrackMatrixivNV, @object
	.size	qglGetTrackMatrixivNV, 4
qglGetTrackMatrixivNV:
	.zero	4
	.type	qglGetProgramStringNV, @object
	.size	qglGetProgramStringNV, 4
qglGetProgramStringNV:
	.zero	4
	.type	qglGetProgramivNV, @object
	.size	qglGetProgramivNV, 4
qglGetProgramivNV:
	.zero	4
	.type	qglGetProgramParameterfvNV, @object
	.size	qglGetProgramParameterfvNV, 4
qglGetProgramParameterfvNV:
	.zero	4
	.type	qglGetProgramParameterdvNV, @object
	.size	qglGetProgramParameterdvNV, 4
qglGetProgramParameterdvNV:
	.zero	4
	.type	qglGenProgramsNV, @object
	.size	qglGenProgramsNV, 4
qglGenProgramsNV:
	.zero	4
	.type	qglExecuteProgramNV, @object
	.size	qglExecuteProgramNV, 4
qglExecuteProgramNV:
	.zero	4
	.type	qglDeleteProgramsNV, @object
	.size	qglDeleteProgramsNV, 4
qglDeleteProgramsNV:
	.zero	4
	.type	qglBindProgramNV, @object
	.size	qglBindProgramNV, 4
qglBindProgramNV:
	.zero	4
	.type	qglAreProgramsResidentNV, @object
	.size	qglAreProgramsResidentNV, 4
qglAreProgramsResidentNV:
	.zero	4
	.type	qglMultiTexCoord3fvARB, @object
	.size	qglMultiTexCoord3fvARB, 4
qglMultiTexCoord3fvARB:
	.zero	4
	.type	qglMultiTexCoord3fARB, @object
	.size	qglMultiTexCoord3fARB, 4
qglMultiTexCoord3fARB:
	.zero	4
	.type	qglMultiTexCoord2fvARB, @object
	.size	qglMultiTexCoord2fvARB, 4
qglMultiTexCoord2fvARB:
	.zero	4
	.type	qglMultiTexCoord2fARB, @object
	.size	qglMultiTexCoord2fARB, 4
qglMultiTexCoord2fARB:
	.zero	4
	.type	qglMultiTexCoord1fARB, @object
	.size	qglMultiTexCoord1fARB, 4
qglMultiTexCoord1fARB:
	.zero	4
	.type	qglClientActiveTextureARB, @object
	.size	qglClientActiveTextureARB, 4
qglClientActiveTextureARB:
	.zero	4
	.type	qglActiveTextureARB, @object
	.size	qglActiveTextureARB, 4
qglActiveTextureARB:
	.zero	4
	.type	qglDepthBoundsNV, @object
	.size	qglDepthBoundsNV, 4
qglDepthBoundsNV:
	.zero	4
	.type	qglTexImage3DEXT, @object
	.size	qglTexImage3DEXT, 4
qglTexImage3DEXT:
	.zero	4
	.type	qglGetFinalCombinerInputParameterivNV, @object
	.size	qglGetFinalCombinerInputParameterivNV, 4
qglGetFinalCombinerInputParameterivNV:
	.zero	4
	.type	qglGetFinalCombinerInputParameterfvNV, @object
	.size	qglGetFinalCombinerInputParameterfvNV, 4
qglGetFinalCombinerInputParameterfvNV:
	.zero	4
	.type	qglGetCombinerOutputParameterivNV, @object
	.size	qglGetCombinerOutputParameterivNV, 4
qglGetCombinerOutputParameterivNV:
	.zero	4
	.type	qglGetCombinerOutputParameterfvNV, @object
	.size	qglGetCombinerOutputParameterfvNV, 4
qglGetCombinerOutputParameterfvNV:
	.zero	4
	.type	qglGetCombinerInputParameterivNV, @object
	.size	qglGetCombinerInputParameterivNV, 4
qglGetCombinerInputParameterivNV:
	.zero	4
	.type	qglGetCombinerInputParameterfvNV, @object
	.size	qglGetCombinerInputParameterfvNV, 4
qglGetCombinerInputParameterfvNV:
	.zero	4
	.type	qglFinalCombinerInputNV, @object
	.size	qglFinalCombinerInputNV, 4
qglFinalCombinerInputNV:
	.zero	4
	.type	qglCombinerOutputNV, @object
	.size	qglCombinerOutputNV, 4
qglCombinerOutputNV:
	.zero	4
	.type	qglCombinerInputNV, @object
	.size	qglCombinerInputNV, 4
qglCombinerInputNV:
	.zero	4
	.type	qglCombinerParameteriNV, @object
	.size	qglCombinerParameteriNV, 4
qglCombinerParameteriNV:
	.zero	4
	.type	qglCombinerParameterfNV, @object
	.size	qglCombinerParameterfNV, 4
qglCombinerParameterfNV:
	.zero	4
	.type	qglCombinerParameterivNV, @object
	.size	qglCombinerParameterivNV, 4
qglCombinerParameterivNV:
	.zero	4
	.type	qglCombinerParameterfvNV, @object
	.size	qglCombinerParameterfvNV, 4
qglCombinerParameterfvNV:
	.zero	4
	.type	numTempVertices, @object
	.size	numTempVertices, 4
numTempVertices:
	.zero	4
	.type	tempVerticesSize, @object
	.size	tempVerticesSize, 4
tempVerticesSize:
	.zero	4
	.type	tempVertices, @object
	.size	tempVertices, 4
tempVertices:
	.zero	4
	.type	globalVertexTable, @object
	.size	globalVertexTable, 4
globalVertexTable:
	.zero	4
	.type	waterchain, @object
	.size	waterchain, 4
waterchain:
	.zero	4
	.type	skychain, @object
	.size	skychain, 4
skychain:
	.zero	4
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
	.file 16 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 17 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/glext.h"
	.file 18 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4540
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF720
	.byte	0x1
	.4byte	.LASF721
	.4byte	.LASF722
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
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.4byte	0x66
	.uleb128 0x6
	.byte	0x4
	.4byte	0x74
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
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x8
	.4byte	0x82
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x22
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.4byte	0x97
	.uleb128 0x9
	.byte	0x40
	.byte	0x3
	.byte	0x52
	.4byte	0x12a
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x3
	.byte	0x54
	.4byte	0x12a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x3
	.byte	0x54
	.4byte	0x12a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x3
	.byte	0x55
	.4byte	0x12a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x3
	.byte	0x56
	.4byte	0x13a
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
	.4byte	0x82
	.4byte	0x13a
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x14a
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x3
	.byte	0x59
	.4byte	0xbf
	.uleb128 0xb
	.4byte	0x74
	.4byte	0x165
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	0x48
	.4byte	0x175
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x33
	.4byte	0x185
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x3
	.byte	0xa5
	.4byte	0x1aa
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
	.4byte	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0x3
	.byte	0xa9
	.4byte	0x185
	.uleb128 0xb
	.4byte	0x82
	.4byte	0x1cb
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x3a
	.4byte	0x1db
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x97
	.4byte	0x1eb
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x14
	.byte	0x4
	.byte	0x1c
	.4byte	0x23a
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
	.4byte	.LASF27
	.byte	0x4
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.byte	0x1e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.byte	0x1f
	.4byte	0x23a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1eb
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x4
	.byte	0x20
	.4byte	0x1eb
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x4
	.byte	0x5
	.byte	0x6f
	.4byte	0x266
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x5
	.byte	0x71
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x5
	.byte	0x72
	.4byte	0x24b
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x6
	.byte	0x16
	.4byte	0x82
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x6
	.byte	0x17
	.4byte	0x287
	.uleb128 0xb
	.4byte	0x271
	.4byte	0x297
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0x82
	.4byte	0x2a7
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x48
	.byte	0x7
	.byte	0xef
	.4byte	0x358
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x7
	.byte	0xf1
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x7
	.byte	0xf2
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x7
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x7
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x7
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x7
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x7
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x7
	.byte	0xf9
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x7
	.byte	0xfa
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x7
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x7
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x7
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x7
	.byte	0xfe
	.4byte	0x2a7
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x14
	.byte	0x8
	.byte	0x38
	.4byte	0x3c4
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x8
	.byte	0x3a
	.4byte	0x6e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x8
	.byte	0x3b
	.4byte	0x6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x8
	.byte	0x3c
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x8
	.byte	0x3d
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x8
	.byte	0x3e
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x8
	.byte	0x3f
	.4byte	0x3c4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x363
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x8
	.byte	0x40
	.4byte	0x363
	.uleb128 0xb
	.4byte	0x97
	.4byte	0x3e6
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0xb
	.4byte	0x74
	.4byte	0x3f6
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.4byte	0x74
	.4byte	0x406
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x44
	.byte	0x9
	.byte	0x23
	.4byte	0x42f
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x9
	.byte	0x25
	.4byte	0x3e6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x9
	.byte	0x26
	.4byte	0x266
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x10
	.byte	0xa
	.byte	0x1e
	.4byte	0x474
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0xa
	.byte	0x20
	.4byte	0x51b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xa
	.byte	0x21
	.4byte	0x521
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0xa
	.byte	0x22
	.4byte	0x795
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0xa
	.byte	0x23
	.4byte	0x521
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x40
	.byte	0xb
	.byte	0xca
	.4byte	0x51b
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0xb
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xb
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xb
	.byte	0xd0
	.4byte	0x16d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0xb
	.byte	0xd2
	.4byte	0xaf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF69
	.byte	0xb
	.byte	0xd5
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0xb
	.byte	0xd6
	.4byte	0x16ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0xb
	.byte	0xd8
	.4byte	0x1705
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF72
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
	.4byte	.LASF73
	.byte	0xb
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF74
	.byte	0xb
	.byte	0xdc
	.4byte	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x474
	.uleb128 0x6
	.byte	0x4
	.4byte	0x42f
	.uleb128 0x10
	.4byte	.LASF75
	.2byte	0x248
	.byte	0xa
	.byte	0x27
	.4byte	0x795
	.uleb128 0xa
	.4byte	.LASF76
	.byte	0xa
	.byte	0x29
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0xa
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF78
	.byte	0xa
	.byte	0x2d
	.4byte	0x358
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF79
	.byte	0xa
	.byte	0x2f
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF80
	.byte	0xa
	.byte	0x30
	.4byte	0x7a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0xa
	.byte	0x31
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF81
	.byte	0xa
	.byte	0x32
	.4byte	0x7a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0xa
	.byte	0x33
	.4byte	0x27c
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xa
	.4byte	.LASF82
	.byte	0xa
	.byte	0x34
	.4byte	0xa70
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.4byte	.LASF83
	.byte	0xa
	.byte	0x35
	.4byte	0x521
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0xa
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xa
	.4byte	.LASF84
	.byte	0xa
	.byte	0x37
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0xa
	.byte	0x38
	.4byte	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0xa
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xa
	.4byte	.LASF85
	.byte	0xa
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xa
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0xa
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xa
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0xa
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xa
	.4byte	.LASF89
	.byte	0xa
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xa
	.4byte	.LASF90
	.byte	0xa
	.byte	0x44
	.4byte	0xaf3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0xa
	.byte	0x48
	.4byte	0x27c
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0xa
	.byte	0x49
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0xa
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0xa
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0xa
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xa
	.4byte	.LASF91
	.byte	0xa
	.byte	0x50
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xa
	.4byte	.LASF92
	.byte	0xa
	.byte	0x51
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xa
	.4byte	.LASF93
	.byte	0xa
	.byte	0x52
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xa
	.4byte	.LASF94
	.byte	0xa
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xa
	.4byte	.LASF95
	.byte	0xa
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xa
	.4byte	.LASF96
	.byte	0xa
	.byte	0x57
	.4byte	0xc13
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xa
	.4byte	.LASF97
	.byte	0xa
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xa
	.4byte	.LASF98
	.byte	0xa
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xa
	.4byte	.LASF99
	.byte	0xa
	.byte	0x5c
	.4byte	0xc19
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xa
	.4byte	.LASF100
	.byte	0xa
	.byte	0x5f
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xa
	.4byte	.LASF101
	.byte	0xa
	.byte	0x60
	.4byte	0x27c
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xa
	.4byte	.LASF102
	.byte	0xa
	.byte	0x61
	.4byte	0x27c
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xa
	.4byte	.LASF103
	.byte	0xa
	.byte	0x62
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xa
	.4byte	.LASF104
	.byte	0xa
	.byte	0x63
	.4byte	0x27c
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xa
	.4byte	.LASF105
	.byte	0xa
	.byte	0x64
	.4byte	0x27c
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x527
	.uleb128 0x7
	.4byte	.LASF106
	.byte	0xa
	.byte	0x24
	.4byte	0x42f
	.uleb128 0xb
	.4byte	0x271
	.4byte	0x7bc
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.4byte	.LASF107
	.2byte	0x1a4
	.byte	0xb
	.2byte	0x180
	.4byte	0xa70
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0xb
	.2byte	0x182
	.4byte	0x3e6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0xb
	.2byte	0x183
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF109
	.byte	0xb
	.2byte	0x185
	.4byte	0x1a48
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0xb
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x187
	.4byte	0x1299
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF112
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
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0xb
	.2byte	0x18e
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0xb
	.2byte	0x18f
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x194
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x195
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x195
	.4byte	0x27c
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF117
	.byte	0xb
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF118
	.byte	0xb
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF119
	.byte	0xb
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0xb
	.2byte	0x19d
	.4byte	0x1a54
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x12
	.4byte	.LASF121
	.byte	0xb
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0xb
	.2byte	0x1a0
	.4byte	0x16b7
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x12
	.4byte	.LASF98
	.byte	0xb
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xb
	.2byte	0x1a3
	.4byte	0x1a5a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0xb
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0xb
	.2byte	0x1a6
	.4byte	0x1a60
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0xb
	.2byte	0x1a9
	.4byte	0x1a66
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x12
	.4byte	.LASF128
	.byte	0xb
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x12
	.4byte	.LASF129
	.byte	0xb
	.2byte	0x1ac
	.4byte	0x1a6c
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x12
	.4byte	.LASF130
	.byte	0xb
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x12
	.4byte	.LASF131
	.byte	0xb
	.2byte	0x1af
	.4byte	0x16c3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x12
	.4byte	.LASF132
	.byte	0xb
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x12
	.4byte	.LASF133
	.byte	0xb
	.2byte	0x1b2
	.4byte	0x170b
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x12
	.4byte	.LASF134
	.byte	0xb
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x12
	.4byte	.LASF135
	.byte	0xb
	.2byte	0x1b5
	.4byte	0x1a72
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x12
	.4byte	.LASF136
	.byte	0xb
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x12
	.4byte	.LASF137
	.byte	0xb
	.2byte	0x1b8
	.4byte	0x1779
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0xb
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x12
	.4byte	.LASF138
	.byte	0xb
	.2byte	0x1bb
	.4byte	0x1705
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x12
	.4byte	.LASF139
	.byte	0xb
	.2byte	0x1bd
	.4byte	0x1a78
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x12
	.4byte	.LASF140
	.byte	0xb
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x12
	.4byte	.LASF141
	.byte	0xb
	.2byte	0x1c0
	.4byte	0x1a88
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x12
	.4byte	.LASF142
	.byte	0xb
	.2byte	0x1c2
	.4byte	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x12
	.4byte	.LASF143
	.byte	0xb
	.2byte	0x1c3
	.4byte	0xb9
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x12
	.4byte	.LASF144
	.byte	0xb
	.2byte	0x1c4
	.4byte	0x6e
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x12
	.4byte	.LASF58
	.byte	0xb
	.2byte	0x1c9
	.4byte	0x266
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x7bc
	.uleb128 0xd
	.4byte	.LASF145
	.byte	0x34
	.byte	0xb
	.byte	0xb6
	.4byte	0xaf3
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0xb
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xb
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0xb
	.byte	0xbc
	.4byte	0x16d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0xb
	.byte	0xbe
	.4byte	0xaf3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF146
	.byte	0xb
	.byte	0xc1
	.4byte	0x16b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0xb
	.byte	0xc2
	.4byte	0x16e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF147
	.byte	0xb
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF132
	.byte	0xb
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa76
	.uleb128 0x13
	.4byte	.LASF148
	.4byte	0x20030
	.byte	0xc
	.2byte	0xa09
	.4byte	0xc13
	.uleb128 0x12
	.4byte	.LASF149
	.byte	0xc
	.2byte	0xa0f
	.4byte	0xc13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF150
	.byte	0xc
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF151
	.byte	0xc
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF152
	.byte	0xc
	.2byte	0xa17
	.4byte	0x2afd
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF153
	.byte	0xc
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF154
	.byte	0xc
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF155
	.byte	0xc
	.2byte	0xa1b
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF156
	.byte	0xc
	.2byte	0xa1d
	.4byte	0xf41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF157
	.byte	0xc
	.2byte	0xa1f
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF158
	.byte	0xc
	.2byte	0xa21
	.4byte	0x2afd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF159
	.byte	0xc
	.2byte	0xa25
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF160
	.byte	0xc
	.2byte	0xa2b
	.4byte	0x2b09
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF161
	.byte	0xc
	.2byte	0xa2d
	.4byte	0x2b09
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x12
	.4byte	.LASF162
	.byte	0xc
	.2byte	0xa2f
	.4byte	0x2b09
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x12
	.4byte	.LASF163
	.byte	0xc
	.2byte	0xa31
	.4byte	0x2b09
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x12
	.4byte	.LASF164
	.byte	0xc
	.2byte	0xa33
	.4byte	0x2b4e
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x12
	.4byte	.LASF165
	.byte	0xc
	.2byte	0xa37
	.4byte	0x2b5f
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xaf9
	.uleb128 0xb
	.4byte	0x33
	.4byte	0xc29
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x7
	.4byte	.LASF166
	.byte	0xa
	.byte	0x66
	.4byte	0x527
	.uleb128 0x9
	.byte	0x94
	.byte	0xa
	.byte	0x69
	.4byte	0xd9e
	.uleb128 0xa
	.4byte	.LASF167
	.byte	0xa
	.byte	0x6b
	.4byte	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF168
	.byte	0xa
	.byte	0x6d
	.4byte	0x240
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF169
	.byte	0xa
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF170
	.byte	0xa
	.byte	0x6e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF171
	.byte	0xa
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF172
	.byte	0xa
	.byte	0x6f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF173
	.byte	0xa
	.byte	0x70
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF174
	.byte	0xa
	.byte	0x72
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF175
	.byte	0xa
	.byte	0x72
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF176
	.byte	0xa
	.byte	0x73
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF177
	.byte	0xa
	.byte	0x73
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.4byte	.LASF178
	.byte	0xa
	.byte	0x74
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.4byte	.LASF179
	.byte	0xa
	.byte	0x75
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF180
	.byte	0xa
	.byte	0x76
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF181
	.byte	0xa
	.byte	0x76
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xa
	.4byte	.LASF182
	.byte	0xa
	.byte	0x78
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.4byte	.LASF183
	.byte	0xa
	.byte	0x79
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.4byte	.LASF184
	.byte	0xa
	.byte	0x7a
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.4byte	.LASF185
	.byte	0xa
	.byte	0x7c
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xa
	.4byte	.LASF186
	.byte	0xa
	.byte	0x7d
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.4byte	.LASF187
	.byte	0xa
	.byte	0x7f
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0xa
	.byte	0x80
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xa
	.4byte	.LASF189
	.byte	0xa
	.byte	0x82
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xa
	.4byte	.LASF190
	.byte	0xa
	.byte	0x82
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xa
	.4byte	.LASF191
	.byte	0xa
	.byte	0x84
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.byte	0
	.uleb128 0x7
	.4byte	.LASF192
	.byte	0xa
	.byte	0x85
	.4byte	0xc34
	.uleb128 0x9
	.byte	0x18
	.byte	0xd
	.byte	0x16
	.4byte	0xdea
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0xd
	.byte	0x18
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF193
	.byte	0xd
	.byte	0x1b
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF194
	.byte	0xd
	.byte	0x1c
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF195
	.byte	0xd
	.byte	0x1d
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x7
	.4byte	.LASF196
	.byte	0xd
	.byte	0x21
	.4byte	0xda9
	.uleb128 0x14
	.2byte	0x402c
	.byte	0xd
	.byte	0x29
	.4byte	0xe45
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0xd
	.byte	0x2b
	.4byte	0x3f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF197
	.byte	0xd
	.byte	0x2c
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF198
	.byte	0xd
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF199
	.byte	0xd
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF200
	.byte	0xd
	.byte	0x2f
	.4byte	0x3d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x7
	.4byte	.LASF201
	.byte	0xd
	.byte	0x30
	.4byte	0xdf5
	.uleb128 0x9
	.byte	0x10
	.byte	0xd
	.byte	0x32
	.4byte	0xe75
	.uleb128 0xa
	.4byte	.LASF202
	.byte	0xd
	.byte	0x34
	.4byte	0xe75
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF203
	.byte	0xd
	.byte	0x35
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0xe85
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF204
	.byte	0xd
	.byte	0x36
	.4byte	0xe50
	.uleb128 0x9
	.byte	0x48
	.byte	0xd
	.byte	0x48
	.4byte	0xf41
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0xd
	.byte	0x4a
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF113
	.byte	0xd
	.byte	0x4b
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"die"
	.byte	0xd
	.byte	0x4c
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF205
	.byte	0xd
	.byte	0x4d
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF206
	.byte	0xd
	.byte	0x4e
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"key"
	.byte	0xd
	.byte	0x4f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0xd
	.byte	0x50
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0xd
	.byte	0x51
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0xd
	.byte	0x52
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF207
	.byte	0xd
	.byte	0x53
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0xd
	.byte	0x54
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF208
	.byte	0xd
	.byte	0x58
	.4byte	0xf41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xc29
	.uleb128 0x7
	.4byte	.LASF209
	.byte	0xd
	.byte	0x59
	.4byte	0xe90
	.uleb128 0x14
	.2byte	0xce8
	.byte	0xd
	.byte	0x9a
	.4byte	0x11ed
	.uleb128 0xa
	.4byte	.LASF210
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
	.4byte	0xdea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF211
	.byte	0xd
	.byte	0xa3
	.4byte	0x11ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF212
	.byte	0xd
	.byte	0xa4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xa
	.4byte	.LASF213
	.byte	0xd
	.byte	0xa5
	.4byte	0x11fd
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xa
	.4byte	.LASF214
	.byte	0xd
	.byte	0xa6
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xa
	.4byte	.LASF215
	.byte	0xd
	.byte	0xa8
	.4byte	0x120d
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0xa
	.4byte	.LASF216
	.byte	0xd
	.byte	0xa9
	.4byte	0x120d
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0xa
	.4byte	.LASF217
	.byte	0xd
	.byte	0xaf
	.4byte	0x7a6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0xa
	.4byte	.LASF188
	.byte	0xd
	.byte	0xb1
	.4byte	0x27c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0xa
	.4byte	.LASF218
	.byte	0xd
	.byte	0xb3
	.4byte	0x7a6
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0xa
	.4byte	.LASF219
	.byte	0xd
	.byte	0xb5
	.4byte	0x27c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0xa
	.4byte	.LASF220
	.byte	0xd
	.byte	0xb7
	.4byte	0x27c
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0xa
	.4byte	.LASF221
	.byte	0xd
	.byte	0xba
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xa
	.4byte	.LASF222
	.byte	0xd
	.byte	0xbb
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0xa
	.4byte	.LASF223
	.byte	0xd
	.byte	0xbc
	.4byte	0xa7
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xa
	.4byte	.LASF224
	.byte	0xd
	.byte	0xbd
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xa
	.4byte	.LASF225
	.byte	0xd
	.byte	0xbe
	.4byte	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xa
	.4byte	.LASF226
	.byte	0xd
	.byte	0xc0
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xa
	.4byte	.LASF227
	.byte	0xd
	.byte	0xc1
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xa
	.4byte	.LASF228
	.byte	0xd
	.byte	0xc3
	.4byte	0xa7
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xa
	.4byte	.LASF229
	.byte	0xd
	.byte	0xc4
	.4byte	0xa7
	.byte	0x3
	.byte	0x23
	.uleb128 0x219
	.uleb128 0xa
	.4byte	.LASF230
	.byte	0xd
	.byte	0xc5
	.4byte	0xa7
	.byte	0x3
	.byte	0x23
	.uleb128 0x21a
	.uleb128 0xa
	.4byte	.LASF231
	.byte	0xd
	.byte	0xc7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xa
	.4byte	.LASF232
	.byte	0xd
	.byte	0xc8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xa
	.4byte	.LASF233
	.byte	0xd
	.byte	0xca
	.4byte	0x121d
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xa
	.4byte	.LASF234
	.byte	0xd
	.byte	0xcb
	.4byte	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xa
	.4byte	.LASF235
	.byte	0xd
	.byte	0xce
	.4byte	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xa
	.4byte	.LASF236
	.byte	0xd
	.byte	0xd2
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0xa
	.4byte	.LASF237
	.byte	0xd
	.byte	0xd7
	.4byte	0x122d
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0xa
	.4byte	.LASF238
	.byte	0xd
	.byte	0xd8
	.4byte	0x123d
	.byte	0x3
	.byte	0x23
	.uleb128 0x64c
	.uleb128 0xa
	.4byte	.LASF239
	.byte	0xd
	.byte	0xda
	.4byte	0x1253
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4c
	.uleb128 0xa
	.4byte	.LASF240
	.byte	0xd
	.byte	0xdb
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa74
	.uleb128 0xa
	.4byte	.LASF241
	.byte	0xd
	.byte	0xdc
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0xa
	.4byte	.LASF242
	.byte	0xd
	.byte	0xdd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7c
	.uleb128 0xa
	.4byte	.LASF243
	.byte	0xd
	.byte	0xe0
	.4byte	0xa70
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0xa
	.4byte	.LASF244
	.byte	0xd
	.byte	0xe1
	.4byte	0x521
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0xa
	.4byte	.LASF245
	.byte	0xd
	.byte	0xe2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0xa
	.4byte	.LASF246
	.byte	0xd
	.byte	0xe3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0xa
	.4byte	.LASF247
	.byte	0xd
	.byte	0xe4
	.4byte	0xc29
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0xa
	.4byte	.LASF248
	.byte	0xd
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd8
	.uleb128 0xa
	.4byte	.LASF249
	.byte	0xd
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcdc
	.uleb128 0xa
	.4byte	.LASF250
	.byte	0xd
	.byte	0xe9
	.4byte	0x1263
	.byte	0x3
	.byte	0x23
	.uleb128 0xce0
	.uleb128 0xa
	.4byte	.LASF251
	.byte	0xd
	.byte	0xf2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xce4
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x11fd
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	0x82
	.4byte	0x120d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.4byte	0xe85
	.4byte	0x121d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x7b
	.4byte	0x122d
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0xa70
	.4byte	0x123d
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xb
	.4byte	0x124d
	.4byte	0x124d
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x406
	.uleb128 0xb
	.4byte	0x74
	.4byte	0x1263
	.uleb128 0xc
	.4byte	0x48
	.byte	0x27
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0xe45
	.uleb128 0x7
	.4byte	.LASF252
	.byte	0xd
	.byte	0xf3
	.4byte	0xf52
	.uleb128 0xb
	.4byte	0x82
	.4byte	0x1284
	.uleb128 0xc
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.byte	0xe
	.byte	0x34
	.4byte	0x1299
	.uleb128 0x16
	.4byte	.LASF253
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF254
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF255
	.byte	0xe
	.byte	0x34
	.4byte	0x1284
	.uleb128 0x9
	.byte	0x4
	.byte	0xe
	.byte	0x64
	.4byte	0x12c7
	.uleb128 0xe
	.string	"v"
	.byte	0xe
	.byte	0x65
	.4byte	0x12c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF256
	.byte	0xe
	.byte	0x66
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x97
	.4byte	0x12d7
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF257
	.byte	0xe
	.byte	0x67
	.4byte	0x12a4
	.uleb128 0x9
	.byte	0xc
	.byte	0xb
	.byte	0x3b
	.4byte	0x12f9
	.uleb128 0xa
	.4byte	.LASF258
	.byte	0xb
	.byte	0x3d
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF259
	.byte	0xb
	.byte	0x3e
	.4byte	0x12e2
	.uleb128 0x9
	.byte	0x1c
	.byte	0xb
	.byte	0x43
	.4byte	0x1337
	.uleb128 0xa
	.4byte	.LASF258
	.byte	0xb
	.byte	0x45
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF260
	.byte	0xb
	.byte	0x46
	.4byte	0x1337
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF261
	.byte	0xb
	.byte	0x47
	.4byte	0x1337
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xb
	.4byte	0x82
	.4byte	0x1347
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF262
	.byte	0xb
	.byte	0x48
	.4byte	0x1304
	.uleb128 0xd
	.4byte	.LASF263
	.byte	0x14
	.byte	0xb
	.byte	0x52
	.4byte	0x13a5
	.uleb128 0xa
	.4byte	.LASF264
	.byte	0xb
	.byte	0x54
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF265
	.byte	0xb
	.byte	0x55
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF109
	.byte	0xb
	.byte	0x56
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF266
	.byte	0xb
	.byte	0x57
	.4byte	0x97
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.string	"pad"
	.byte	0xb
	.byte	0x58
	.4byte	0x13a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xb
	.4byte	0x97
	.4byte	0x13b5
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF267
	.byte	0xb
	.byte	0x59
	.4byte	0x1352
	.uleb128 0xd
	.4byte	.LASF268
	.byte	0x48
	.byte	0xb
	.byte	0x5b
	.4byte	0x1475
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0xb
	.byte	0x5d
	.4byte	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0xb
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0xb
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF269
	.byte	0xb
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF270
	.byte	0xb
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF271
	.byte	0xb
	.byte	0x61
	.4byte	0x159a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF272
	.byte	0xb
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF273
	.byte	0xb
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF274
	.byte	0xb
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF275
	.byte	0xb
	.byte	0x64
	.4byte	0x15a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF276
	.byte	0xb
	.byte	0x65
	.4byte	0x15a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF277
	.byte	0xb
	.byte	0x66
	.4byte	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xd
	.4byte	.LASF278
	.byte	0x5c
	.byte	0xb
	.byte	0x96
	.4byte	0x159a
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0xb
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF146
	.byte	0xb
	.byte	0x9a
	.4byte	0x16b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0xb
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF279
	.byte	0xb
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF126
	.byte	0xb
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF280
	.byte	0xb
	.byte	0xa0
	.4byte	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF281
	.byte	0xb
	.byte	0xa1
	.4byte	0x175
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF282
	.byte	0xb
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF283
	.byte	0xb
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF284
	.byte	0xb
	.byte	0xa5
	.4byte	0x16bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF271
	.byte	0xb
	.byte	0xa6
	.4byte	0x159a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF285
	.byte	0xb
	.byte	0xa7
	.4byte	0x159a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF131
	.byte	0xb
	.byte	0xa9
	.4byte	0x16c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xb
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF88
	.byte	0xb
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF286
	.byte	0xb
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF287
	.byte	0xb
	.byte	0xb0
	.4byte	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF288
	.byte	0xb
	.byte	0xb1
	.4byte	0x13a
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF289
	.byte	0xb
	.byte	0xb2
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF290
	.byte	0xb
	.byte	0xb3
	.4byte	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1475
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13c0
	.uleb128 0x7
	.4byte	.LASF291
	.byte	0xb
	.byte	0x67
	.4byte	0x13c0
	.uleb128 0x9
	.byte	0x8
	.byte	0xb
	.byte	0x78
	.4byte	0x15d4
	.uleb128 0xe
	.string	"v"
	.byte	0xb
	.byte	0x7a
	.4byte	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF292
	.byte	0xb
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF293
	.byte	0xb
	.byte	0x7c
	.4byte	0x15b1
	.uleb128 0x9
	.byte	0x2c
	.byte	0xb
	.byte	0x7e
	.4byte	0x1620
	.uleb128 0xa
	.4byte	.LASF294
	.byte	0xb
	.byte	0x80
	.4byte	0x1b5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF295
	.byte	0xb
	.byte	0x81
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF260
	.byte	0xb
	.byte	0x82
	.4byte	0x1620
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0xb
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15a6
	.uleb128 0x7
	.4byte	.LASF296
	.byte	0xb
	.byte	0x84
	.4byte	0x15df
	.uleb128 0xd
	.4byte	.LASF297
	.byte	0x1c
	.byte	0xb
	.byte	0x8a
	.4byte	0x16a0
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0xb
	.byte	0x8c
	.4byte	0x16a0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF298
	.byte	0xb
	.byte	0x8d
	.4byte	0x16a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF299
	.byte	0xb
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF112
	.byte	0xb
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF86
	.byte	0xb
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF300
	.byte	0xb
	.byte	0x92
	.4byte	0x16a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF301
	.byte	0xb
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1631
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16a0
	.uleb128 0x7
	.4byte	.LASF302
	.byte	0xb
	.byte	0x94
	.4byte	0x1631
	.uleb128 0x6
	.byte	0x4
	.4byte	0x13b5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16ac
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1626
	.uleb128 0x7
	.4byte	.LASF303
	.byte	0xb
	.byte	0xb4
	.4byte	0x1475
	.uleb128 0xb
	.4byte	0x82
	.4byte	0x16e4
	.uleb128 0xc
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.4byte	0xaf3
	.4byte	0x16f4
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF304
	.byte	0xb
	.byte	0xc6
	.4byte	0xa76
	.uleb128 0x6
	.byte	0x4
	.4byte	0x79b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x170b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16c9
	.uleb128 0x7
	.4byte	.LASF305
	.byte	0xb
	.byte	0xdd
	.4byte	0x474
	.uleb128 0x9
	.byte	0x28
	.byte	0xb
	.byte	0xe0
	.4byte	0x1779
	.uleb128 0xa
	.4byte	.LASF137
	.byte	0xb
	.byte	0xe2
	.4byte	0x1779
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF122
	.byte	0xb
	.byte	0xe3
	.4byte	0x16b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF306
	.byte	0xb
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF307
	.byte	0xb
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF308
	.byte	0xb
	.byte	0xe6
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF309
	.byte	0xb
	.byte	0xe7
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1aa
	.uleb128 0x7
	.4byte	.LASF310
	.byte	0xb
	.byte	0xe8
	.4byte	0x171c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x82
	.uleb128 0x17
	.byte	0x28
	.byte	0xb
	.2byte	0x11e
	.4byte	0x1803
	.uleb128 0x12
	.4byte	.LASF311
	.byte	0xb
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF312
	.byte	0xb
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF313
	.byte	0xb
	.2byte	0x122
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF314
	.byte	0xb
	.2byte	0x123
	.4byte	0x12d7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF315
	.byte	0xb
	.2byte	0x124
	.4byte	0x12d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0xb
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF50
	.byte	0xb
	.2byte	0x126
	.4byte	0x155
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x18
	.4byte	.LASF316
	.byte	0xb
	.2byte	0x127
	.4byte	0x1790
	.uleb128 0x19
	.2byte	0x53c
	.byte	0xb
	.2byte	0x142
	.4byte	0x19f4
	.uleb128 0x12
	.4byte	.LASF317
	.byte	0xb
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF318
	.byte	0xb
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF319
	.byte	0xb
	.2byte	0x145
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF320
	.byte	0xb
	.2byte	0x146
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF321
	.byte	0xb
	.2byte	0x147
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF322
	.byte	0xb
	.2byte	0x148
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF323
	.byte	0xb
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x12
	.4byte	.LASF324
	.byte	0xb
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF325
	.byte	0xb
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF299
	.byte	0xb
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF326
	.byte	0xb
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF110
	.byte	0xb
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x14f
	.4byte	0x1299
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x12
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x12
	.4byte	.LASF327
	.byte	0xb
	.2byte	0x151
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0xb
	.2byte	0x153
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0xb
	.2byte	0x153
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF312
	.byte	0xb
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x12
	.4byte	.LASF328
	.byte	0xb
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x12
	.4byte	.LASF329
	.byte	0xb
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x12
	.4byte	.LASF330
	.byte	0xb
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x12
	.4byte	.LASF331
	.byte	0xb
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0xb
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x12
	.4byte	.LASF162
	.byte	0xb
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x12
	.4byte	.LASF332
	.byte	0xb
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x12
	.4byte	.LASF333
	.byte	0xb
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x12
	.4byte	.LASF334
	.byte	0xb
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x12
	.4byte	.LASF269
	.byte	0xb
	.2byte	0x15e
	.4byte	0x19f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x12
	.4byte	.LASF335
	.byte	0xb
	.2byte	0x15f
	.4byte	0x19f4
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x12
	.4byte	.LASF336
	.byte	0xb
	.2byte	0x160
	.4byte	0x11ed
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x12
	.4byte	.LASF337
	.byte	0xb
	.2byte	0x161
	.4byte	0x1a0a
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x1a0a
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.4byte	0x1803
	.4byte	0x1a1a
	.uleb128 0xc
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF338
	.byte	0xb
	.2byte	0x162
	.4byte	0x180f
	.uleb128 0x1a
	.byte	0x4
	.byte	0xb
	.2byte	0x172
	.4byte	0x1a48
	.uleb128 0x16
	.4byte	.LASF339
	.sleb128 0
	.uleb128 0x16
	.4byte	.LASF340
	.sleb128 1
	.uleb128 0x16
	.4byte	.LASF341
	.sleb128 2
	.uleb128 0x16
	.4byte	.LASF342
	.sleb128 3
	.byte	0
	.uleb128 0x18
	.4byte	.LASF343
	.byte	0xb
	.2byte	0x172
	.4byte	0x1a26
	.uleb128 0x6
	.byte	0x4
	.4byte	0x14a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1711
	.uleb128 0x6
	.byte	0x4
	.4byte	0x12f9
	.uleb128 0x6
	.byte	0x4
	.4byte	0x15d4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x16f4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x41
	.uleb128 0xb
	.4byte	0x177f
	.4byte	0x1a88
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1620
	.uleb128 0x18
	.4byte	.LASF344
	.byte	0xb
	.2byte	0x1cb
	.4byte	0x7bc
	.uleb128 0x9
	.byte	0x10
	.byte	0xf
	.byte	0x16
	.4byte	0x1abf
	.uleb128 0xa
	.4byte	.LASF264
	.byte	0xf
	.byte	0x18
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF265
	.byte	0xf
	.byte	0x19
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x7
	.4byte	.LASF345
	.byte	0xf
	.byte	0x1a
	.4byte	0x1a9a
	.uleb128 0x7
	.4byte	.LASF346
	.byte	0x10
	.byte	0x93
	.4byte	0x48
	.uleb128 0x7
	.4byte	.LASF347
	.byte	0x10
	.byte	0x94
	.4byte	0x2c
	.uleb128 0x1b
	.4byte	.LASF723
	.byte	0x10
	.byte	0x96
	.uleb128 0x7
	.4byte	.LASF348
	.byte	0x10
	.byte	0x98
	.4byte	0x33
	.uleb128 0x7
	.4byte	.LASF349
	.byte	0x10
	.byte	0x99
	.4byte	0x41
	.uleb128 0x7
	.4byte	.LASF350
	.byte	0x10
	.byte	0x9a
	.4byte	0x2c
	.uleb128 0x7
	.4byte	.LASF351
	.byte	0x10
	.byte	0x9c
	.4byte	0x48
	.uleb128 0x7
	.4byte	.LASF352
	.byte	0x10
	.byte	0x9d
	.4byte	0x41
	.uleb128 0x7
	.4byte	.LASF353
	.byte	0x10
	.byte	0x9e
	.4byte	0x82
	.uleb128 0x7
	.4byte	.LASF354
	.byte	0x10
	.byte	0xa0
	.4byte	0x7b
	.uleb128 0x7
	.4byte	.LASF355
	.byte	0x10
	.byte	0xa1
	.4byte	0x7b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b45
	.uleb128 0x1c
	.4byte	0x1ae0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b50
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1b5c
	.uleb128 0x1e
	.4byte	0x1aca
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b62
	.uleb128 0x1c
	.4byte	0x1b1e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b6d
	.uleb128 0x1c
	.4byte	0x1af2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ae0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b7e
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1b94
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b1e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ba0
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1bb6
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1bb6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1af2
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1bc2
	.uleb128 0x1c
	.4byte	0x1b29
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1bcd
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1bde
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b1e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1be4
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1bf5
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b5c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1bfb
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1c0c
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1af2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c12
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1c23
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b67
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c29
	.uleb128 0x1c
	.4byte	0x1ae7
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c34
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1c4a
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b1e
	.uleb128 0x1e
	.4byte	0x1b1e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1c50
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1c6b
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b1e
	.uleb128 0x1e
	.4byte	0x1b1e
	.uleb128 0x1e
	.4byte	0x1b1e
	.byte	0
	.uleb128 0x18
	.4byte	.LASF356
	.byte	0x10
	.2byte	0x835
	.4byte	0x1b4a
	.uleb128 0x18
	.4byte	.LASF357
	.byte	0x10
	.2byte	0x836
	.4byte	0x1b4a
	.uleb128 0x18
	.4byte	.LASF358
	.byte	0x10
	.2byte	0x839
	.4byte	0x1bc7
	.uleb128 0x18
	.4byte	.LASF359
	.byte	0x10
	.2byte	0x841
	.4byte	0x1c2e
	.uleb128 0x18
	.4byte	.LASF360
	.byte	0x10
	.2byte	0x842
	.4byte	0x1bde
	.uleb128 0x18
	.4byte	.LASF361
	.byte	0x10
	.2byte	0x849
	.4byte	0x1c4a
	.uleb128 0x18
	.4byte	.LASF362
	.byte	0x10
	.2byte	0x84a
	.4byte	0x1bde
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1cc5
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1ce0
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ce6
	.uleb128 0x1c
	.4byte	0x1afd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1cf1
	.uleb128 0x1c
	.4byte	0x1b08
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1cfc
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1d0d
	.uleb128 0x1e
	.4byte	0x1b13
	.uleb128 0x1e
	.4byte	0x1d0d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b08
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d19
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1d2a
	.uleb128 0x1e
	.4byte	0x1b13
	.uleb128 0x1e
	.4byte	0x1ceb
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d30
	.uleb128 0x1f
	.byte	0x1
	.4byte	0x1ad5
	.4byte	0x1d40
	.uleb128 0x1e
	.4byte	0x1b08
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d46
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1d57
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b08
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d5d
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1d73
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1bb6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b72
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1d7f
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1d95
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1d95
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1b29
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1da1
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1db7
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1dbd
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1dd3
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1d73
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1dd9
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1dea
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b29
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1df0
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1e01
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1bbc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e07
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1e18
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b1e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e1e
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1e2f
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b5c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e35
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1e46
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1ae7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e4c
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1e5d
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1c23
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e63
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1e79
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b29
	.uleb128 0x1e
	.4byte	0x1b29
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e7f
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1e95
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b1e
	.uleb128 0x1e
	.4byte	0x1b1e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1e9b
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1eb1
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1ae7
	.uleb128 0x1e
	.4byte	0x1ae7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1eb7
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1ed2
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b29
	.uleb128 0x1e
	.4byte	0x1b29
	.uleb128 0x1e
	.4byte	0x1b29
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ed8
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1ef3
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b1e
	.uleb128 0x1e
	.4byte	0x1b1e
	.uleb128 0x1e
	.4byte	0x1b1e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ef9
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1f14
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1ae7
	.uleb128 0x1e
	.4byte	0x1ae7
	.uleb128 0x1e
	.4byte	0x1ae7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f1a
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1f2b
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1ce0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f31
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1f51
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b29
	.uleb128 0x1e
	.4byte	0x1b29
	.uleb128 0x1e
	.4byte	0x1b29
	.uleb128 0x1e
	.4byte	0x1b29
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f57
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1f77
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b1e
	.uleb128 0x1e
	.4byte	0x1b1e
	.uleb128 0x1e
	.4byte	0x1b1e
	.uleb128 0x1e
	.4byte	0x1b1e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1f7d
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1f9d
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1ae7
	.uleb128 0x1e
	.4byte	0x1ae7
	.uleb128 0x1e
	.4byte	0x1ae7
	.uleb128 0x1e
	.4byte	0x1ae7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fa3
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1fc8
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b29
	.uleb128 0x1e
	.4byte	0x1b29
	.uleb128 0x1e
	.4byte	0x1b29
	.uleb128 0x1e
	.4byte	0x1b29
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fce
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x1fe4
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1bbc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1fea
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x200f
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b1e
	.uleb128 0x1e
	.4byte	0x1b1e
	.uleb128 0x1e
	.4byte	0x1b1e
	.uleb128 0x1e
	.4byte	0x1b1e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2015
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x202b
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b5c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2031
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x206a
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1af2
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b13
	.uleb128 0x1e
	.4byte	0x1b13
	.uleb128 0x1e
	.4byte	0x1b13
	.uleb128 0x1e
	.4byte	0x1af2
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b3f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2070
	.uleb128 0x1f
	.byte	0x1
	.4byte	0x1ad5
	.4byte	0x208a
	.uleb128 0x1e
	.4byte	0x1b13
	.uleb128 0x1e
	.4byte	0x1ceb
	.uleb128 0x1e
	.4byte	0x208a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1ad5
	.uleb128 0x18
	.4byte	.LASF363
	.byte	0x11
	.2byte	0x1636
	.4byte	0x68
	.uleb128 0x18
	.4byte	.LASF364
	.byte	0x11
	.2byte	0x1637
	.4byte	0x20a8
	.uleb128 0x6
	.byte	0x4
	.4byte	0x20ae
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x20bf
	.uleb128 0x1e
	.4byte	0x1b13
	.uleb128 0x1e
	.4byte	0x1b3f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF365
	.byte	0x11
	.2byte	0x164b
	.4byte	0x1bde
	.uleb128 0x18
	.4byte	.LASF366
	.byte	0x11
	.2byte	0x164c
	.4byte	0x1bc7
	.uleb128 0x18
	.4byte	.LASF367
	.byte	0x11
	.2byte	0x164d
	.4byte	0x1c0c
	.uleb128 0x18
	.4byte	.LASF368
	.byte	0x11
	.2byte	0x164e
	.4byte	0x1bf5
	.uleb128 0x18
	.4byte	.LASF369
	.byte	0x11
	.2byte	0x164f
	.4byte	0x20fb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2101
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x2126
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.byte	0
	.uleb128 0x18
	.4byte	.LASF370
	.byte	0x11
	.2byte	0x1650
	.4byte	0x2132
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2138
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x2171
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1ad5
	.uleb128 0x1e
	.4byte	0x1ad5
	.uleb128 0x1e
	.4byte	0x1ad5
	.byte	0
	.uleb128 0x18
	.4byte	.LASF371
	.byte	0x11
	.2byte	0x1651
	.4byte	0x1cbf
	.uleb128 0x18
	.4byte	.LASF372
	.byte	0x11
	.2byte	0x1652
	.4byte	0x2189
	.uleb128 0x6
	.byte	0x4
	.4byte	0x218f
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x21af
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b94
	.byte	0
	.uleb128 0x18
	.4byte	.LASF373
	.byte	0x11
	.2byte	0x1653
	.4byte	0x21bb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x21c1
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x21e1
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1bb6
	.byte	0
	.uleb128 0x18
	.4byte	.LASF374
	.byte	0x11
	.2byte	0x1654
	.4byte	0x21ed
	.uleb128 0x6
	.byte	0x4
	.4byte	0x21f3
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x220e
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b94
	.byte	0
	.uleb128 0x18
	.4byte	.LASF375
	.byte	0x11
	.2byte	0x1655
	.4byte	0x221a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2220
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x223b
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1bb6
	.byte	0
	.uleb128 0x18
	.4byte	.LASF376
	.byte	0x11
	.2byte	0x1656
	.4byte	0x1b78
	.uleb128 0x18
	.4byte	.LASF377
	.byte	0x11
	.2byte	0x1657
	.4byte	0x1b9a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2259
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x2274
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1bb6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x227a
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x2295
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b94
	.byte	0
	.uleb128 0x18
	.4byte	.LASF378
	.byte	0x11
	.2byte	0x17b0
	.4byte	0x206a
	.uleb128 0x18
	.4byte	.LASF379
	.byte	0x11
	.2byte	0x17b1
	.4byte	0x1d40
	.uleb128 0x18
	.4byte	.LASF380
	.byte	0x11
	.2byte	0x17b2
	.4byte	0x1d13
	.uleb128 0x18
	.4byte	.LASF381
	.byte	0x11
	.2byte	0x17b3
	.4byte	0x200f
	.uleb128 0x18
	.4byte	.LASF382
	.byte	0x11
	.2byte	0x17b4
	.4byte	0x1cf6
	.uleb128 0x18
	.4byte	.LASF383
	.byte	0x11
	.2byte	0x17b5
	.4byte	0x22dd
	.uleb128 0x6
	.byte	0x4
	.4byte	0x22e3
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x22fe
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1d95
	.byte	0
	.uleb128 0x18
	.4byte	.LASF384
	.byte	0x11
	.2byte	0x17b6
	.4byte	0x2274
	.uleb128 0x18
	.4byte	.LASF385
	.byte	0x11
	.2byte	0x17b7
	.4byte	0x1d57
	.uleb128 0x18
	.4byte	.LASF386
	.byte	0x11
	.2byte	0x17b8
	.4byte	0x2322
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2328
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x233e
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x233e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1afd
	.uleb128 0x18
	.4byte	.LASF387
	.byte	0x11
	.2byte	0x17b9
	.4byte	0x2253
	.uleb128 0x18
	.4byte	.LASF388
	.byte	0x11
	.2byte	0x17ba
	.4byte	0x1d79
	.uleb128 0x18
	.4byte	.LASF389
	.byte	0x11
	.2byte	0x17bb
	.4byte	0x1d9b
	.uleb128 0x18
	.4byte	.LASF390
	.byte	0x11
	.2byte	0x17bc
	.4byte	0x1d57
	.uleb128 0x18
	.4byte	.LASF391
	.byte	0x11
	.2byte	0x17bd
	.4byte	0x1db7
	.uleb128 0x18
	.4byte	.LASF392
	.byte	0x11
	.2byte	0x17be
	.4byte	0x1d2a
	.uleb128 0x18
	.4byte	.LASF393
	.byte	0x11
	.2byte	0x17bf
	.4byte	0x2398
	.uleb128 0x6
	.byte	0x4
	.4byte	0x239e
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x23b9
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b13
	.uleb128 0x1e
	.4byte	0x1ce0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF394
	.byte	0x11
	.2byte	0x17c0
	.4byte	0x1f9d
	.uleb128 0x18
	.4byte	.LASF395
	.byte	0x11
	.2byte	0x17c1
	.4byte	0x1fc8
	.uleb128 0x18
	.4byte	.LASF396
	.byte	0x11
	.2byte	0x17c2
	.4byte	0x1fe4
	.uleb128 0x18
	.4byte	.LASF397
	.byte	0x11
	.2byte	0x17c3
	.4byte	0x200f
	.uleb128 0x18
	.4byte	.LASF398
	.byte	0x11
	.2byte	0x17c4
	.4byte	0x23f5
	.uleb128 0x6
	.byte	0x4
	.4byte	0x23fb
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x2416
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1bbc
	.byte	0
	.uleb128 0x18
	.4byte	.LASF399
	.byte	0x11
	.2byte	0x17c5
	.4byte	0x2422
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2428
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x2443
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b5c
	.byte	0
	.uleb128 0x18
	.4byte	.LASF400
	.byte	0x11
	.2byte	0x17c6
	.4byte	0x1d13
	.uleb128 0x18
	.4byte	.LASF401
	.byte	0x11
	.2byte	0x17c7
	.4byte	0x245b
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2461
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x247c
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1aca
	.byte	0
	.uleb128 0x18
	.4byte	.LASF402
	.byte	0x11
	.2byte	0x17c8
	.4byte	0x2488
	.uleb128 0x6
	.byte	0x4
	.4byte	0x248e
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x24ae
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1af2
	.uleb128 0x1e
	.4byte	0x1aca
	.uleb128 0x1e
	.4byte	0x1b13
	.uleb128 0x1e
	.4byte	0x1b3f
	.byte	0
	.uleb128 0x18
	.4byte	.LASF403
	.byte	0x11
	.2byte	0x17c9
	.4byte	0x1dd3
	.uleb128 0x18
	.4byte	.LASF404
	.byte	0x11
	.2byte	0x17ca
	.4byte	0x1dea
	.uleb128 0x18
	.4byte	.LASF405
	.byte	0x11
	.2byte	0x17cb
	.4byte	0x1e01
	.uleb128 0x18
	.4byte	.LASF406
	.byte	0x11
	.2byte	0x17cc
	.4byte	0x1e18
	.uleb128 0x18
	.4byte	.LASF407
	.byte	0x11
	.2byte	0x17cd
	.4byte	0x1e2f
	.uleb128 0x18
	.4byte	.LASF408
	.byte	0x11
	.2byte	0x17ce
	.4byte	0x1e46
	.uleb128 0x18
	.4byte	.LASF409
	.byte	0x11
	.2byte	0x17cf
	.4byte	0x1e5d
	.uleb128 0x18
	.4byte	.LASF410
	.byte	0x11
	.2byte	0x17d0
	.4byte	0x1dea
	.uleb128 0x18
	.4byte	.LASF411
	.byte	0x11
	.2byte	0x17d1
	.4byte	0x1e79
	.uleb128 0x18
	.4byte	.LASF412
	.byte	0x11
	.2byte	0x17d2
	.4byte	0x1e18
	.uleb128 0x18
	.4byte	.LASF413
	.byte	0x11
	.2byte	0x17d3
	.4byte	0x1e95
	.uleb128 0x18
	.4byte	.LASF414
	.byte	0x11
	.2byte	0x17d4
	.4byte	0x1e46
	.uleb128 0x18
	.4byte	.LASF415
	.byte	0x11
	.2byte	0x17d5
	.4byte	0x1eb1
	.uleb128 0x18
	.4byte	.LASF416
	.byte	0x11
	.2byte	0x17d6
	.4byte	0x1dea
	.uleb128 0x18
	.4byte	.LASF417
	.byte	0x11
	.2byte	0x17d7
	.4byte	0x1ed2
	.uleb128 0x18
	.4byte	.LASF418
	.byte	0x11
	.2byte	0x17d8
	.4byte	0x1e18
	.uleb128 0x18
	.4byte	.LASF419
	.byte	0x11
	.2byte	0x17d9
	.4byte	0x1ef3
	.uleb128 0x18
	.4byte	.LASF420
	.byte	0x11
	.2byte	0x17da
	.4byte	0x1e46
	.uleb128 0x18
	.4byte	.LASF421
	.byte	0x11
	.2byte	0x17db
	.4byte	0x1f2b
	.uleb128 0x18
	.4byte	.LASF422
	.byte	0x11
	.2byte	0x17dc
	.4byte	0x1dea
	.uleb128 0x18
	.4byte	.LASF423
	.byte	0x11
	.2byte	0x17dd
	.4byte	0x1f51
	.uleb128 0x18
	.4byte	.LASF424
	.byte	0x11
	.2byte	0x17de
	.4byte	0x1e18
	.uleb128 0x18
	.4byte	.LASF425
	.byte	0x11
	.2byte	0x17df
	.4byte	0x1f77
	.uleb128 0x18
	.4byte	.LASF426
	.byte	0x11
	.2byte	0x17e0
	.4byte	0x1e46
	.uleb128 0x18
	.4byte	.LASF427
	.byte	0x11
	.2byte	0x17e2
	.4byte	0x1f14
	.uleb128 0x18
	.4byte	.LASF428
	.byte	0x11
	.2byte	0x17e3
	.4byte	0x25e6
	.uleb128 0x6
	.byte	0x4
	.4byte	0x25ec
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x2602
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b13
	.uleb128 0x1e
	.4byte	0x1bbc
	.byte	0
	.uleb128 0x18
	.4byte	.LASF429
	.byte	0x11
	.2byte	0x17e4
	.4byte	0x260e
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2614
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x262a
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b13
	.uleb128 0x1e
	.4byte	0x1b5c
	.byte	0
	.uleb128 0x18
	.4byte	.LASF430
	.byte	0x11
	.2byte	0x17e5
	.4byte	0x2636
	.uleb128 0x6
	.byte	0x4
	.4byte	0x263c
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x2652
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b13
	.uleb128 0x1e
	.4byte	0x1c23
	.byte	0
	.uleb128 0x18
	.4byte	.LASF431
	.byte	0x11
	.2byte	0x17e6
	.4byte	0x25e6
	.uleb128 0x18
	.4byte	.LASF432
	.byte	0x11
	.2byte	0x17e7
	.4byte	0x260e
	.uleb128 0x18
	.4byte	.LASF433
	.byte	0x11
	.2byte	0x17e8
	.4byte	0x2636
	.uleb128 0x18
	.4byte	.LASF434
	.byte	0x11
	.2byte	0x17e9
	.4byte	0x25e6
	.uleb128 0x18
	.4byte	.LASF435
	.byte	0x11
	.2byte	0x17ea
	.4byte	0x260e
	.uleb128 0x18
	.4byte	.LASF436
	.byte	0x11
	.2byte	0x17eb
	.4byte	0x2636
	.uleb128 0x18
	.4byte	.LASF437
	.byte	0x11
	.2byte	0x17ec
	.4byte	0x25e6
	.uleb128 0x18
	.4byte	.LASF438
	.byte	0x11
	.2byte	0x17ed
	.4byte	0x260e
	.uleb128 0x18
	.4byte	.LASF439
	.byte	0x11
	.2byte	0x17ee
	.4byte	0x2636
	.uleb128 0x18
	.4byte	.LASF440
	.byte	0x11
	.2byte	0x17ef
	.4byte	0x26ca
	.uleb128 0x6
	.byte	0x4
	.4byte	0x26d0
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x26e6
	.uleb128 0x1e
	.4byte	0x1b08
	.uleb128 0x1e
	.4byte	0x1b13
	.uleb128 0x1e
	.4byte	0x1ce0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x26ec
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x26fd
	.uleb128 0x1e
	.4byte	0x1b34
	.uleb128 0x1e
	.4byte	0x1b34
	.byte	0
	.uleb128 0x18
	.4byte	.LASF441
	.byte	0xc
	.2byte	0x584
	.4byte	0x202b
	.uleb128 0x18
	.4byte	.LASF442
	.byte	0xc
	.2byte	0x592
	.4byte	0x26e6
	.uleb128 0x18
	.4byte	.LASF443
	.byte	0xc
	.2byte	0x91d
	.4byte	0x2721
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2727
	.uleb128 0x1f
	.byte	0x1
	.4byte	0x5d
	.4byte	0x2746
	.uleb128 0x1e
	.4byte	0x41
	.uleb128 0x1e
	.4byte	0x82
	.uleb128 0x1e
	.4byte	0x82
	.uleb128 0x1e
	.4byte	0x82
	.byte	0
	.uleb128 0x18
	.4byte	.LASF444
	.byte	0xc
	.2byte	0x91f
	.4byte	0x2752
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2758
	.uleb128 0x1d
	.byte	0x1
	.4byte	0x2764
	.uleb128 0x1e
	.4byte	0x5d
	.byte	0
	.uleb128 0x20
	.4byte	.LASF445
	.byte	0x14
	.byte	0xc
	.2byte	0x981
	.4byte	0x2790
	.uleb128 0x12
	.4byte	.LASF446
	.byte	0xc
	.2byte	0x983
	.4byte	0x13a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0xc
	.2byte	0x985
	.4byte	0x2790
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2764
	.uleb128 0x18
	.4byte	.LASF447
	.byte	0xc
	.2byte	0x987
	.4byte	0x2764
	.uleb128 0x21
	.4byte	.LASF488
	.byte	0x4
	.byte	0xc
	.2byte	0x98d
	.4byte	0x27e0
	.uleb128 0x22
	.4byte	.LASF448
	.byte	0xc
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x22
	.4byte	.LASF449
	.byte	0xc
	.2byte	0x991
	.4byte	0x82
	.uleb128 0x22
	.4byte	.LASF450
	.byte	0xc
	.2byte	0x993
	.4byte	0x271
	.uleb128 0x22
	.4byte	.LASF451
	.byte	0xc
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x18
	.4byte	.LASF452
	.byte	0xc
	.2byte	0x997
	.4byte	0x27a2
	.uleb128 0x11
	.4byte	.LASF453
	.2byte	0x890
	.byte	0xc
	.2byte	0x99d
	.4byte	0x29a0
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0xc
	.2byte	0x99f
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF454
	.byte	0xc
	.2byte	0x9a1
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0xc
	.2byte	0x9a1
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF113
	.byte	0xc
	.2byte	0x9a3
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF455
	.byte	0xc
	.2byte	0x9a7
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF456
	.byte	0xc
	.2byte	0x9a9
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x12
	.4byte	.LASF457
	.byte	0xc
	.2byte	0x9ab
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x12
	.4byte	.LASF458
	.byte	0xc
	.2byte	0x9ad
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x12
	.4byte	.LASF459
	.byte	0xc
	.2byte	0x9af
	.4byte	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x12
	.4byte	.LASF60
	.byte	0xc
	.2byte	0x9b1
	.4byte	0x1a5a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x23
	.string	"vis"
	.byte	0xc
	.2byte	0x9b3
	.4byte	0x29a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF460
	.byte	0xc
	.2byte	0x9b5
	.4byte	0x29a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x12
	.4byte	.LASF461
	.byte	0xc
	.2byte	0x9b7
	.4byte	0x1705
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x12
	.4byte	.LASF462
	.byte	0xc
	.2byte	0x9b9
	.4byte	0x1a72
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x12
	.4byte	.LASF463
	.byte	0xc
	.2byte	0x9bb
	.4byte	0x178a
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x12
	.4byte	.LASF464
	.byte	0xc
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x12
	.4byte	.LASF465
	.byte	0xc
	.2byte	0x9bf
	.4byte	0x29b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x12
	.4byte	.LASF466
	.byte	0xc
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0xc
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x12
	.4byte	.LASF208
	.byte	0xc
	.2byte	0x9c5
	.4byte	0xf41
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x12
	.4byte	.LASF467
	.byte	0xc
	.2byte	0x9c7
	.4byte	0x2796
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x12
	.4byte	.LASF207
	.byte	0xc
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0xc
	.2byte	0x9cb
	.4byte	0x27c
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x12
	.4byte	.LASF468
	.byte	0xc
	.2byte	0x9cd
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x12
	.4byte	.LASF469
	.byte	0xc
	.2byte	0x9cf
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x12
	.4byte	.LASF470
	.byte	0xc
	.2byte	0x9d1
	.4byte	0x82
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x12
	.4byte	.LASF471
	.byte	0xc
	.2byte	0x9d3
	.4byte	0x27c
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xb
	.4byte	0x97
	.4byte	0x29b1
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x27e0
	.uleb128 0x18
	.4byte	.LASF472
	.byte	0xc
	.2byte	0x9d5
	.4byte	0x27ec
	.uleb128 0x13
	.4byte	.LASF473
	.4byte	0x1e864
	.byte	0xc
	.2byte	0x9db
	.4byte	0x2afd
	.uleb128 0x12
	.4byte	.LASF150
	.byte	0xc
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF474
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF475
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF476
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF477
	.byte	0xc
	.2byte	0x9e1
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x12
	.4byte	.LASF478
	.byte	0xc
	.2byte	0x9e3
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x12
	.4byte	.LASF156
	.byte	0xc
	.2byte	0x9e5
	.4byte	0xf41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x12
	.4byte	.LASF479
	.byte	0xc
	.2byte	0x9e7
	.4byte	0x2afd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x12
	.4byte	.LASF480
	.byte	0xc
	.2byte	0x9e9
	.4byte	0x2b03
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x12
	.4byte	.LASF481
	.byte	0xc
	.2byte	0x9eb
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x12
	.4byte	.LASF187
	.byte	0xc
	.2byte	0x9eb
	.4byte	0x27c
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x12
	.4byte	.LASF482
	.byte	0xc
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x12
	.4byte	.LASF483
	.byte	0xc
	.2byte	0x9f3
	.4byte	0x2b09
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x12
	.4byte	.LASF484
	.byte	0xc
	.2byte	0x9f5
	.4byte	0x2b09
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x12
	.4byte	.LASF485
	.byte	0xc
	.2byte	0x9f7
	.4byte	0x2b09
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x12
	.4byte	.LASF199
	.byte	0xc
	.2byte	0x9f9
	.4byte	0x2b09
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x12
	.4byte	.LASF486
	.byte	0xc
	.2byte	0x9fb
	.4byte	0x2b20
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x12
	.4byte	.LASF334
	.byte	0xc
	.2byte	0x9ff
	.4byte	0x2b31
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x12
	.4byte	.LASF326
	.byte	0xc
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a1a
	.uleb128 0x6
	.byte	0x4
	.4byte	0x29b7
	.uleb128 0xb
	.4byte	0x271
	.4byte	0x2b20
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xc
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0x2b31
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x2b42
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x18
	.4byte	.LASF487
	.byte	0xc
	.2byte	0xa05
	.4byte	0x29c3
	.uleb128 0xb
	.4byte	0x1abf
	.4byte	0x2b5f
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2b42
	.uleb128 0x21
	.4byte	.LASF489
	.byte	0x4
	.byte	0x12
	.2byte	0x490
	.4byte	0x2bc5
	.uleb128 0x24
	.string	"U8"
	.byte	0x12
	.2byte	0x492
	.4byte	0x2bc5
	.uleb128 0x24
	.string	"S8"
	.byte	0x12
	.2byte	0x493
	.4byte	0x2bca
	.uleb128 0x24
	.string	"U16"
	.byte	0x12
	.2byte	0x494
	.4byte	0x2bcf
	.uleb128 0x24
	.string	"S16"
	.byte	0x12
	.2byte	0x495
	.4byte	0x2bd4
	.uleb128 0x24
	.string	"U32"
	.byte	0x12
	.2byte	0x496
	.4byte	0x2bd9
	.uleb128 0x24
	.string	"S32"
	.byte	0x12
	.2byte	0x497
	.4byte	0x2bde
	.uleb128 0x24
	.string	"F32"
	.byte	0x12
	.2byte	0x498
	.4byte	0xa2
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
	.uleb128 0x18
	.4byte	.LASF490
	.byte	0x12
	.2byte	0x499
	.4byte	0x2b65
	.uleb128 0xd
	.4byte	.LASF491
	.byte	0x4
	.byte	0x1
	.byte	0x28
	.4byte	0x2c2c
	.uleb128 0xe
	.string	"l"
	.byte	0x1
	.byte	0x29
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"t"
	.byte	0x1
	.byte	0x29
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xe
	.string	"w"
	.byte	0x1
	.byte	0x29
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"h"
	.byte	0x1
	.byte	0x29
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x7
	.4byte	.LASF492
	.byte	0x1
	.byte	0x2a
	.4byte	0x2bef
	.uleb128 0x17
	.byte	0xc
	.byte	0x1
	.2byte	0x932
	.4byte	0x2c5f
	.uleb128 0x12
	.4byte	.LASF493
	.byte	0x1
	.2byte	0x933
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF494
	.byte	0x1
	.2byte	0x934
	.4byte	0x2c5f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.4byte	0x16bd
	.4byte	0x2c6f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.4byte	.LASF495
	.byte	0x1
	.2byte	0x935
	.4byte	0x2c37
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF496
	.byte	0x1
	.2byte	0x21d
	.byte	0x1
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF497
	.byte	0x1
	.2byte	0x226
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.4byte	.LASF724
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	0x41
	.byte	0x1
	.uleb128 0x27
	.4byte	0x2c91
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x28
	.byte	0x1
	.4byte	.LASF513
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST0
	.4byte	0x2d16
	.uleb128 0x29
	.string	"pos"
	.byte	0x1
	.byte	0x51
	.4byte	0x2d16
	.4byte	.LLST1
	.uleb128 0x2a
	.4byte	.LASF260
	.byte	0x1
	.byte	0x51
	.4byte	0x178a
	.4byte	.LLST2
	.uleb128 0x2a
	.4byte	.LASF261
	.byte	0x1
	.byte	0x51
	.4byte	0x178a
	.4byte	.LLST3
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0x53
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0x2c
	.4byte	.LASF498
	.byte	0x1
	.byte	0x54
	.4byte	0x2d1c
	.4byte	.LLST5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x271
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1347
	.uleb128 0x2d
	.byte	0x1
	.4byte	.LASF536
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST6
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF500
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST7
	.4byte	0x2d60
	.uleb128 0x2a
	.4byte	.LASF499
	.byte	0x1
	.byte	0x7c
	.4byte	0x41
	.4byte	.LLST8
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF501
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST9
	.4byte	0x2d89
	.uleb128 0x2a
	.4byte	.LASF499
	.byte	0x1
	.byte	0x8f
	.4byte	0x41
	.4byte	.LLST10
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF502
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST11
	.4byte	0x2e7c
	.uleb128 0x2a
	.4byte	.LASF503
	.byte	0x1
	.byte	0xa7
	.4byte	0x170b
	.4byte	.LLST12
	.uleb128 0x2c
	.4byte	.LASF504
	.byte	0x1
	.byte	0xa9
	.4byte	0x41
	.4byte	.LLST13
	.uleb128 0x2b
	.string	"sd"
	.byte	0x1
	.byte	0xaa
	.4byte	0x41
	.4byte	.LLST14
	.uleb128 0x2b
	.string	"td"
	.byte	0x1
	.byte	0xaa
	.4byte	0x41
	.4byte	.LLST15
	.uleb128 0x2c
	.4byte	.LASF265
	.byte	0x1
	.byte	0xab
	.4byte	0x82
	.4byte	.LLST16
	.uleb128 0x2b
	.string	"rad"
	.byte	0x1
	.byte	0xab
	.4byte	0x82
	.4byte	.LLST17
	.uleb128 0x2c
	.4byte	.LASF206
	.byte	0x1
	.byte	0xab
	.4byte	0x82
	.4byte	.LLST18
	.uleb128 0x2f
	.4byte	.LASF505
	.byte	0x1
	.byte	0xac
	.4byte	0x27c
	.byte	0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2c
	.4byte	.LASF506
	.byte	0x1
	.byte	0xac
	.4byte	0x27c
	.4byte	.LLST19
	.uleb128 0x2b
	.string	"s"
	.byte	0x1
	.byte	0xad
	.4byte	0x41
	.4byte	.LLST20
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.byte	0xad
	.4byte	0x41
	.4byte	.LLST21
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0xae
	.4byte	0x41
	.4byte	.LLST22
	.uleb128 0x2c
	.4byte	.LASF507
	.byte	0x1
	.byte	0xaf
	.4byte	0x41
	.4byte	.LLST23
	.uleb128 0x2c
	.4byte	.LASF508
	.byte	0x1
	.byte	0xaf
	.4byte	0x41
	.4byte	.LLST24
	.uleb128 0x2b
	.string	"tex"
	.byte	0x1
	.byte	0xb0
	.4byte	0x16c3
	.4byte	.LLST25
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF509
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST26
	.4byte	0x2f5e
	.uleb128 0x2a
	.4byte	.LASF503
	.byte	0x1
	.byte	0xed
	.4byte	0x170b
	.4byte	.LLST27
	.uleb128 0x2a
	.4byte	.LASF510
	.byte	0x1
	.byte	0xed
	.4byte	0xb9
	.4byte	.LLST28
	.uleb128 0x2a
	.4byte	.LASF511
	.byte	0x1
	.byte	0xed
	.4byte	0x41
	.4byte	.LLST29
	.uleb128 0x2c
	.4byte	.LASF507
	.byte	0x1
	.byte	0xef
	.4byte	0x41
	.4byte	.LLST30
	.uleb128 0x2c
	.4byte	.LASF508
	.byte	0x1
	.byte	0xef
	.4byte	0x41
	.4byte	.LLST31
	.uleb128 0x2b
	.string	"t"
	.byte	0x1
	.byte	0xf0
	.4byte	0x41
	.4byte	.LLST32
	.uleb128 0x2b
	.string	"i"
	.byte	0x1
	.byte	0xf1
	.4byte	0x41
	.4byte	.LLST33
	.uleb128 0x2b
	.string	"j"
	.byte	0x1
	.byte	0xf1
	.4byte	0x41
	.4byte	.LLST34
	.uleb128 0x2c
	.4byte	.LASF327
	.byte	0x1
	.byte	0xf1
	.4byte	0x41
	.4byte	.LLST35
	.uleb128 0x2c
	.4byte	.LASF261
	.byte	0x1
	.byte	0xf2
	.4byte	0xb9
	.4byte	.LLST36
	.uleb128 0x2c
	.4byte	.LASF319
	.byte	0x1
	.byte	0xf3
	.4byte	0x48
	.4byte	.LLST37
	.uleb128 0x2c
	.4byte	.LASF512
	.byte	0x1
	.byte	0xf4
	.4byte	0x41
	.4byte	.LLST38
	.uleb128 0x2b
	.string	"bl"
	.byte	0x1
	.byte	0xf5
	.4byte	0x2f5e
	.4byte	.LLST39
	.uleb128 0x30
	.4byte	.LASF527
	.byte	0x1
	.2byte	0x11b
	.4byte	.L43
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x48
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF514
	.byte	0x1
	.2byte	0x14d
	.byte	0x1
	.4byte	0x1620
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST40
	.4byte	0x2fb3
	.uleb128 0x32
	.4byte	.LASF515
	.byte	0x1
	.2byte	0x14d
	.4byte	0x1620
	.4byte	.LLST41
	.uleb128 0x33
	.4byte	.LASF516
	.byte	0x1
	.2byte	0x14f
	.4byte	0x41
	.4byte	.LLST42
	.uleb128 0x33
	.4byte	.LASF517
	.byte	0x1
	.2byte	0x150
	.4byte	0x41
	.4byte	.LLST43
	.byte	0
	.uleb128 0x34
	.4byte	0x2c7b
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST44
	.4byte	0x2fd9
	.uleb128 0x35
	.4byte	0x2c7b
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x1
	.2byte	0x21d
	.byte	0
	.uleb128 0x34
	.4byte	0x2c86
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST45
	.4byte	0x2fff
	.uleb128 0x35
	.4byte	0x2c86
	.4byte	.LBB10
	.4byte	.LBE10
	.byte	0x1
	.2byte	0x226
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF518
	.byte	0x1
	.2byte	0x31d
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST46
	.4byte	0x3053
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x31d
	.4byte	0x16bd
	.4byte	.LLST47
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x31f
	.4byte	0x41
	.4byte	.LLST48
	.uleb128 0x38
	.string	"v"
	.byte	0x1
	.2byte	0x320
	.4byte	0x178a
	.4byte	.LLST49
	.uleb128 0x39
	.string	"nv"
	.byte	0x1
	.2byte	0x321
	.4byte	0x27c
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF519
	.byte	0x1
	.2byte	0x335
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST50
	.4byte	0x30a7
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x335
	.4byte	0x16bd
	.4byte	.LLST51
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x337
	.4byte	0x41
	.4byte	.LLST52
	.uleb128 0x38
	.string	"v"
	.byte	0x1
	.2byte	0x338
	.4byte	0x178a
	.4byte	.LLST53
	.uleb128 0x39
	.string	"nv"
	.byte	0x1
	.2byte	0x339
	.4byte	0x27c
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF520
	.byte	0x1
	.2byte	0x352
	.byte	0x1
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LLST54
	.4byte	0x30ec
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.2byte	0x352
	.4byte	0x16bd
	.4byte	.LLST55
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x354
	.4byte	0x41
	.4byte	.LLST56
	.uleb128 0x38
	.string	"v"
	.byte	0x1
	.2byte	0x355
	.4byte	0x178a
	.4byte	.LLST57
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF521
	.byte	0x1
	.2byte	0x372
	.byte	0x1
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST58
	.4byte	0x313f
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x374
	.4byte	0x41
	.4byte	.LLST59
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.2byte	0x374
	.4byte	0x41
	.4byte	.LLST60
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.2byte	0x375
	.4byte	0x16bd
	.4byte	.LLST61
	.uleb128 0x38
	.string	"v"
	.byte	0x1
	.2byte	0x376
	.4byte	0x178a
	.4byte	.LLST62
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF522
	.byte	0x1
	.2byte	0x3f2
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST63
	.4byte	0x31a1
	.uleb128 0x37
	.string	"fa"
	.byte	0x1
	.2byte	0x3f2
	.4byte	0x170b
	.4byte	.LLST64
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x3f4
	.4byte	0x41
	.4byte	.LLST65
	.uleb128 0x38
	.string	"v"
	.byte	0x1
	.2byte	0x3f5
	.4byte	0x178a
	.4byte	.LLST66
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.2byte	0x3f6
	.4byte	0x16bd
	.4byte	.LLST67
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.2byte	0x3f7
	.4byte	0x1620
	.4byte	.LLST68
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF523
	.byte	0x1
	.2byte	0x41f
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST69
	.4byte	0x31f5
	.uleb128 0x37
	.string	"fa"
	.byte	0x1
	.2byte	0x41f
	.4byte	0x170b
	.4byte	.LLST70
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x423
	.4byte	0x41
	.4byte	.LLST71
	.uleb128 0x38
	.string	"v"
	.byte	0x1
	.2byte	0x425
	.4byte	0x178a
	.4byte	.LLST72
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.2byte	0x427
	.4byte	0x16bd
	.4byte	.LLST73
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF524
	.byte	0x1
	.2byte	0x449
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LLST74
	.4byte	0x3249
	.uleb128 0x37
	.string	"fa"
	.byte	0x1
	.2byte	0x449
	.4byte	0x170b
	.4byte	.LLST75
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x44a
	.4byte	0x41
	.4byte	.LLST76
	.uleb128 0x38
	.string	"v"
	.byte	0x1
	.2byte	0x44b
	.4byte	0x178a
	.4byte	.LLST77
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.2byte	0x44c
	.4byte	0x16bd
	.4byte	.LLST78
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF525
	.byte	0x1
	.2byte	0x460
	.byte	0x1
	.4byte	.LFB56
	.4byte	.LFE56
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x32ca
	.uleb128 0x37
	.string	"fa"
	.byte	0x1
	.2byte	0x460
	.4byte	0x170b
	.4byte	.LLST79
	.uleb128 0x3b
	.4byte	.LASF515
	.byte	0x1
	.2byte	0x462
	.4byte	0xb9
	.uleb128 0x33
	.4byte	.LASF512
	.byte	0x1
	.2byte	0x463
	.4byte	0x41
	.4byte	.LLST80
	.uleb128 0x33
	.4byte	.LASF526
	.byte	0x1
	.2byte	0x464
	.4byte	0x32ca
	.4byte	.LLST81
	.uleb128 0x33
	.4byte	.LASF507
	.byte	0x1
	.2byte	0x465
	.4byte	0x41
	.4byte	.LLST82
	.uleb128 0x33
	.4byte	.LASF508
	.byte	0x1
	.2byte	0x465
	.4byte	0x41
	.4byte	.LLST83
	.uleb128 0x30
	.4byte	.LASF528
	.byte	0x1
	.2byte	0x478
	.4byte	.L145
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c2c
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF529
	.byte	0x1
	.2byte	0x29a
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST84
	.4byte	0x333f
	.uleb128 0x37
	.string	"s"
	.byte	0x1
	.2byte	0x29a
	.4byte	0x170b
	.4byte	.LLST85
	.uleb128 0x38
	.string	"p"
	.byte	0x1
	.2byte	0x29c
	.4byte	0x16bd
	.4byte	.LLST86
	.uleb128 0x38
	.string	"v"
	.byte	0x1
	.2byte	0x29d
	.4byte	0x178a
	.4byte	.LLST87
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x29e
	.4byte	0x41
	.4byte	.LLST88
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.2byte	0x29f
	.4byte	0x1620
	.4byte	.LLST89
	.uleb128 0x3c
	.4byte	.LASF526
	.byte	0x1
	.2byte	0x2a0
	.4byte	0x32ca
	.byte	0x1
	.byte	0x6d
	.byte	0
	.uleb128 0x3a
	.byte	0x1
	.4byte	.LASF530
	.byte	0x1
	.2byte	0x499
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x3365
	.uleb128 0x3d
	.string	"s"
	.byte	0x1
	.2byte	0x499
	.4byte	0x170b
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF531
	.byte	0x1
	.2byte	0x4da
	.byte	0x1
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LLST90
	.4byte	0x33aa
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x4dc
	.4byte	0x41
	.4byte	.LLST91
	.uleb128 0x38
	.string	"s"
	.byte	0x1
	.2byte	0x4dd
	.4byte	0x170b
	.4byte	.LLST92
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.2byte	0x4de
	.4byte	0x1620
	.4byte	.LLST93
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF532
	.byte	0x1
	.2byte	0x551
	.byte	0x1
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LLST94
	.4byte	0x3425
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x553
	.4byte	0x41
	.4byte	.LLST95
	.uleb128 0x38
	.string	"s"
	.byte	0x1
	.2byte	0x554
	.4byte	0x170b
	.4byte	.LLST96
	.uleb128 0x38
	.string	"t"
	.byte	0x1
	.2byte	0x555
	.4byte	0x1620
	.4byte	.LLST97
	.uleb128 0x33
	.4byte	.LASF533
	.byte	0x1
	.2byte	0x555
	.4byte	0x1620
	.4byte	.LLST98
	.uleb128 0x33
	.4byte	.LASF534
	.byte	0x1
	.2byte	0x556
	.4byte	0xa7
	.4byte	.LLST99
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x33
	.4byte	.LASF535
	.byte	0x1
	.2byte	0x5cc
	.4byte	0x170b
	.4byte	.LLST100
	.byte	0
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF537
	.byte	0x1
	.2byte	0x5ec
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF538
	.byte	0x1
	.2byte	0x6fa
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LLST101
	.4byte	0x3529
	.uleb128 0x37
	.string	"e"
	.byte	0x1
	.2byte	0x6fa
	.4byte	0xf41
	.4byte	.LLST102
	.uleb128 0x3c
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x6fc
	.4byte	0x27c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3c
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x6fc
	.4byte	0x27c
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x6fd
	.4byte	0x41
	.4byte	.LLST103
	.uleb128 0x33
	.4byte	.LASF539
	.byte	0x1
	.2byte	0x6fe
	.4byte	0x170b
	.4byte	.LLST104
	.uleb128 0x38
	.string	"dot"
	.byte	0x1
	.2byte	0x6ff
	.4byte	0x82
	.4byte	.LLST105
	.uleb128 0x33
	.4byte	.LASF540
	.byte	0x1
	.2byte	0x700
	.4byte	0x16b7
	.4byte	.LLST106
	.uleb128 0x33
	.4byte	.LASF541
	.byte	0x1
	.2byte	0x701
	.4byte	0x3529
	.4byte	.LLST107
	.uleb128 0x33
	.4byte	.LASF542
	.byte	0x1
	.2byte	0x702
	.4byte	0xa7
	.4byte	.LLST108
	.uleb128 0x40
	.4byte	.LBB14
	.4byte	.LBE14
	.uleb128 0x33
	.4byte	.LASF498
	.byte	0x1
	.2byte	0x721
	.4byte	0x27c
	.4byte	.LLST109
	.uleb128 0x3c
	.4byte	.LASF543
	.byte	0x1
	.2byte	0x722
	.4byte	0x27c
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3c
	.4byte	.LASF544
	.byte	0x1
	.2byte	0x722
	.4byte	0x27c
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x39
	.string	"up"
	.byte	0x1
	.2byte	0x722
	.4byte	0x27c
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x1a8e
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF545
	.byte	0x1
	.2byte	0x751
	.byte	0x1
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LLST110
	.4byte	0x361e
	.uleb128 0x37
	.string	"e"
	.byte	0x1
	.2byte	0x751
	.4byte	0xf41
	.4byte	.LLST111
	.uleb128 0x3c
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x753
	.4byte	0x27c
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3c
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x753
	.4byte	0x27c
	.byte	0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x754
	.4byte	0x41
	.4byte	.LLST112
	.uleb128 0x33
	.4byte	.LASF539
	.byte	0x1
	.2byte	0x755
	.4byte	0x170b
	.4byte	.LLST113
	.uleb128 0x38
	.string	"dot"
	.byte	0x1
	.2byte	0x756
	.4byte	0x82
	.4byte	.LLST114
	.uleb128 0x33
	.4byte	.LASF540
	.byte	0x1
	.2byte	0x757
	.4byte	0x16b7
	.4byte	.LLST115
	.uleb128 0x33
	.4byte	.LASF541
	.byte	0x1
	.2byte	0x758
	.4byte	0x3529
	.4byte	.LLST116
	.uleb128 0x33
	.4byte	.LASF542
	.byte	0x1
	.2byte	0x759
	.4byte	0xa7
	.4byte	.LLST117
	.uleb128 0x40
	.4byte	.LBB15
	.4byte	.LBE15
	.uleb128 0x33
	.4byte	.LASF498
	.byte	0x1
	.2byte	0x778
	.4byte	0x27c
	.4byte	.LLST118
	.uleb128 0x3c
	.4byte	.LASF543
	.byte	0x1
	.2byte	0x779
	.4byte	0x27c
	.byte	0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x3c
	.4byte	.LASF544
	.byte	0x1
	.2byte	0x779
	.4byte	0x27c
	.byte	0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x39
	.string	"up"
	.byte	0x1
	.2byte	0x779
	.4byte	0x27c
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF546
	.byte	0x1
	.2byte	0x7b5
	.byte	0x1
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LLST119
	.4byte	0x36cd
	.uleb128 0x32
	.4byte	.LASF547
	.byte	0x1
	.2byte	0x7b5
	.4byte	0x1a6c
	.4byte	.LLST120
	.uleb128 0x38
	.string	"c"
	.byte	0x1
	.2byte	0x7b7
	.4byte	0x41
	.4byte	.LLST121
	.uleb128 0x33
	.4byte	.LASF548
	.byte	0x1
	.2byte	0x7b7
	.4byte	0x41
	.4byte	.LLST122
	.uleb128 0x33
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x7b8
	.4byte	0x16b7
	.4byte	.LLST123
	.uleb128 0x33
	.4byte	.LASF503
	.byte	0x1
	.2byte	0x7b9
	.4byte	0x170b
	.4byte	.LLST124
	.uleb128 0x33
	.4byte	.LASF549
	.byte	0x1
	.2byte	0x7b9
	.4byte	0x1705
	.4byte	.LLST125
	.uleb128 0x33
	.4byte	.LASF550
	.byte	0x1
	.2byte	0x7ba
	.4byte	0x1a5a
	.4byte	.LLST126
	.uleb128 0x38
	.string	"dot"
	.byte	0x1
	.2byte	0x7bb
	.4byte	0x7b
	.4byte	.LLST127
	.uleb128 0x3e
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x33
	.4byte	.LASF548
	.byte	0x1
	.2byte	0x7c9
	.4byte	0x41
	.4byte	.LLST128
	.byte	0
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF551
	.byte	0x1
	.2byte	0x883
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST129
	.4byte	0x36f8
	.uleb128 0x39
	.string	"ent"
	.byte	0x1
	.2byte	0x885
	.4byte	0xc29
	.byte	0x3
	.byte	0x91
	.sleb128 -600
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF552
	.byte	0x1
	.2byte	0x8ab
	.byte	0x1
	.4byte	.LFB65
	.4byte	.LFE65
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.uleb128 0x41
	.byte	0x1
	.4byte	.LASF553
	.byte	0x1
	.2byte	0x8b7
	.byte	0x1
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LLST130
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF554
	.byte	0x1
	.2byte	0x8cf
	.byte	0x1
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LLST131
	.4byte	0x377c
	.uleb128 0x38
	.string	"vis"
	.byte	0x1
	.2byte	0x8d1
	.4byte	0xb9
	.4byte	.LLST132
	.uleb128 0x33
	.4byte	.LASF547
	.byte	0x1
	.2byte	0x8d2
	.4byte	0x1a6c
	.4byte	.LLST133
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x8d3
	.4byte	0x41
	.4byte	.LLST134
	.uleb128 0x3c
	.4byte	.LASF555
	.byte	0x1
	.2byte	0x8d4
	.4byte	0x377c
	.byte	0x3
	.byte	0x91
	.sleb128 -4112
	.byte	0
	.uleb128 0xb
	.4byte	0x97
	.4byte	0x378d
	.uleb128 0xf
	.4byte	0x48
	.2byte	0xfff
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.4byte	.LASF556
	.byte	0x1
	.2byte	0x902
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LLST135
	.4byte	0x3830
	.uleb128 0x37
	.string	"w"
	.byte	0x1
	.2byte	0x902
	.4byte	0x41
	.4byte	.LLST136
	.uleb128 0x37
	.string	"h"
	.byte	0x1
	.2byte	0x902
	.4byte	0x41
	.4byte	.LLST137
	.uleb128 0x37
	.string	"x"
	.byte	0x1
	.2byte	0x902
	.4byte	0x1a72
	.4byte	.LLST138
	.uleb128 0x37
	.string	"y"
	.byte	0x1
	.2byte	0x902
	.4byte	0x1a72
	.4byte	.LLST139
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x904
	.4byte	0x41
	.4byte	.LLST140
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.2byte	0x904
	.4byte	0x41
	.4byte	.LLST141
	.uleb128 0x33
	.4byte	.LASF557
	.byte	0x1
	.2byte	0x905
	.4byte	0x41
	.4byte	.LLST142
	.uleb128 0x33
	.4byte	.LASF558
	.byte	0x1
	.2byte	0x905
	.4byte	0x41
	.4byte	.LLST143
	.uleb128 0x33
	.4byte	.LASF559
	.byte	0x1
	.2byte	0x906
	.4byte	0x41
	.4byte	.LLST144
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF560
	.byte	0x1
	.2byte	0x942
	.byte	0x1
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LLST145
	.4byte	0x3897
	.uleb128 0x32
	.4byte	.LASF503
	.byte	0x1
	.2byte	0x942
	.4byte	0x170b
	.4byte	.LLST146
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x944
	.4byte	0x41
	.4byte	.LLST147
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.2byte	0x944
	.4byte	0x41
	.4byte	.LLST148
	.uleb128 0x33
	.4byte	.LASF561
	.byte	0x1
	.2byte	0x944
	.4byte	0x41
	.4byte	.LLST149
	.uleb128 0x33
	.4byte	.LASF562
	.byte	0x1
	.2byte	0x945
	.4byte	0x3897
	.4byte	.LLST150
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2c6f
	.uleb128 0x42
	.byte	0x1
	.4byte	.LASF725
	.byte	0x1
	.2byte	0x960
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LLST151
	.4byte	0x38d5
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x962
	.4byte	0x41
	.4byte	.LLST152
	.uleb128 0x33
	.4byte	.LASF562
	.byte	0x1
	.2byte	0x963
	.4byte	0x3897
	.4byte	.LLST153
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x975
	.byte	0x1
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LLST154
	.4byte	0x39aa
	.uleb128 0x37
	.string	"fa"
	.byte	0x1
	.2byte	0x975
	.4byte	0x170b
	.4byte	.LLST155
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x977
	.4byte	0x41
	.4byte	.LLST156
	.uleb128 0x33
	.4byte	.LASF561
	.byte	0x1
	.2byte	0x977
	.4byte	0x41
	.4byte	.LLST157
	.uleb128 0x33
	.4byte	.LASF564
	.byte	0x1
	.2byte	0x977
	.4byte	0x41
	.4byte	.LLST158
	.uleb128 0x33
	.4byte	.LASF565
	.byte	0x1
	.2byte	0x978
	.4byte	0x1a66
	.4byte	.LLST159
	.uleb128 0x33
	.4byte	.LASF566
	.byte	0x1
	.2byte	0x978
	.4byte	0x1a66
	.4byte	.LLST160
	.uleb128 0x43
	.4byte	.LASF567
	.byte	0x1
	.2byte	0x979
	.4byte	0x41
	.byte	0
	.uleb128 0x38
	.string	"vec"
	.byte	0x1
	.2byte	0x97a
	.4byte	0x178a
	.4byte	.LLST161
	.uleb128 0x33
	.4byte	.LASF494
	.byte	0x1
	.2byte	0x97b
	.4byte	0x16bd
	.4byte	.LLST162
	.uleb128 0x33
	.4byte	.LASF562
	.byte	0x1
	.2byte	0x97c
	.4byte	0x3897
	.4byte	.LLST163
	.uleb128 0x39
	.string	"tex"
	.byte	0x1
	.2byte	0x97d
	.4byte	0x1337
	.byte	0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x3c
	.4byte	.LASF568
	.byte	0x1
	.2byte	0x97e
	.4byte	0x1337
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF569
	.byte	0x1
	.2byte	0x9cc
	.byte	0x1
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LLST164
	.4byte	0x3a01
	.uleb128 0x32
	.4byte	.LASF503
	.byte	0x1
	.2byte	0x9cc
	.4byte	0x170b
	.4byte	.LLST165
	.uleb128 0x33
	.4byte	.LASF507
	.byte	0x1
	.2byte	0x9ce
	.4byte	0x41
	.4byte	.LLST166
	.uleb128 0x33
	.4byte	.LASF508
	.byte	0x1
	.2byte	0x9ce
	.4byte	0x41
	.4byte	.LLST167
	.uleb128 0x3b
	.4byte	.LASF515
	.byte	0x1
	.2byte	0x9cf
	.4byte	0xb9
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.4byte	.LASF570
	.byte	0x1
	.2byte	0x9e6
	.byte	0x1
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LLST168
	.4byte	0x3a6e
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.2byte	0x9e8
	.4byte	0x41
	.4byte	.LLST169
	.uleb128 0x38
	.string	"j"
	.byte	0x1
	.2byte	0x9e8
	.4byte	0x41
	.4byte	.LLST170
	.uleb128 0x38
	.string	"m"
	.byte	0x1
	.2byte	0x9e9
	.4byte	0x3529
	.4byte	.LLST171
	.uleb128 0x44
	.4byte	.LASF572
	.byte	0x1
	.2byte	0x9ea
	.4byte	0xa7
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.4byte	.LBB19
	.4byte	.LBE19
	.uleb128 0x33
	.4byte	.LASF571
	.byte	0x1
	.2byte	0xa4e
	.4byte	0x16c3
	.4byte	.LLST172
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF573
	.byte	0xc
	.2byte	0x23f
	.4byte	0xd9e
	.byte	0x1
	.byte	0x1
	.uleb128 0x45
	.string	"cl"
	.byte	0xd
	.2byte	0x11b
	.4byte	0x1269
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0xf47
	.4byte	0x3a99
	.uleb128 0xc
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x44
	.4byte	.LASF574
	.byte	0xd
	.2byte	0x122
	.4byte	0x3a89
	.byte	0x1
	.byte	0x1
	.uleb128 0x46
	.4byte	.LASF575
	.byte	0xc
	.byte	0xb4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF576
	.byte	0xc
	.2byte	0x217
	.4byte	0x27c
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF577
	.byte	0xc
	.2byte	0x219
	.4byte	0xf41
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF578
	.byte	0xc
	.2byte	0x21b
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF579
	.byte	0xc
	.2byte	0x21d
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF580
	.byte	0xc
	.2byte	0x223
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF581
	.byte	0xc
	.2byte	0x241
	.4byte	0x1a5a
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF582
	.byte	0xc
	.2byte	0x241
	.4byte	0x1a5a
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x3b26
	.uleb128 0xc
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x44
	.4byte	.LASF583
	.byte	0xc
	.2byte	0x245
	.4byte	0x3b16
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF584
	.byte	0xc
	.2byte	0x24b
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF585
	.byte	0xc
	.2byte	0x265
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF586
	.byte	0xc
	.2byte	0x273
	.4byte	0x3ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF587
	.byte	0xc
	.2byte	0x275
	.4byte	0x3ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF588
	.byte	0xc
	.2byte	0x27b
	.4byte	0x3ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF589
	.byte	0xc
	.2byte	0x27d
	.4byte	0x3ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF590
	.byte	0xc
	.2byte	0x27f
	.4byte	0x3ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF591
	.byte	0xc
	.2byte	0x29d
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF592
	.byte	0xc
	.2byte	0x2ab
	.4byte	0x3ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF593
	.byte	0xc
	.2byte	0x2b1
	.4byte	0x3ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF594
	.byte	0xc
	.2byte	0x2d1
	.4byte	0x3ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF595
	.byte	0xc
	.2byte	0x300
	.4byte	0x3ca
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF596
	.byte	0xc
	.2byte	0x30e
	.4byte	0x297
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF597
	.byte	0xc
	.2byte	0x314
	.4byte	0xa7
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF598
	.byte	0xc
	.2byte	0x318
	.4byte	0x16b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF599
	.byte	0xc
	.2byte	0x31a
	.4byte	0x13b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF600
	.byte	0xc
	.2byte	0x31c
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF601
	.byte	0xc
	.2byte	0x322
	.4byte	0x1274
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF602
	.byte	0xc
	.2byte	0x32c
	.4byte	0x297
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.4byte	.LASF603
	.byte	0x1
	.2byte	0x196
	.4byte	0x1c6b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglActiveTextureARB
	.uleb128 0x47
	.4byte	.LASF604
	.byte	0x1
	.2byte	0x197
	.4byte	0x1c77
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglClientActiveTextureARB
	.uleb128 0x47
	.4byte	.LASF605
	.byte	0x1
	.2byte	0x199
	.4byte	0x1c83
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglMultiTexCoord1fARB
	.uleb128 0x47
	.4byte	.LASF606
	.byte	0x1
	.2byte	0x19a
	.4byte	0x1c8f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglMultiTexCoord2fARB
	.uleb128 0x47
	.4byte	.LASF607
	.byte	0x1
	.2byte	0x19b
	.4byte	0x1c9b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglMultiTexCoord2fvARB
	.uleb128 0x47
	.4byte	.LASF608
	.byte	0x1
	.2byte	0x19c
	.4byte	0x1ca7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglMultiTexCoord3fARB
	.uleb128 0x47
	.4byte	.LASF609
	.byte	0x1
	.2byte	0x19d
	.4byte	0x1cb3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglMultiTexCoord3fvARB
	.uleb128 0x47
	.4byte	.LASF610
	.byte	0x1
	.2byte	0x184
	.4byte	0x20bf
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglCombinerParameterfvNV
	.uleb128 0x47
	.4byte	.LASF611
	.byte	0x1
	.2byte	0x185
	.4byte	0x20d7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglCombinerParameterivNV
	.uleb128 0x47
	.4byte	.LASF612
	.byte	0x1
	.2byte	0x186
	.4byte	0x20cb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglCombinerParameterfNV
	.uleb128 0x47
	.4byte	.LASF613
	.byte	0x1
	.2byte	0x187
	.4byte	0x20e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglCombinerParameteriNV
	.uleb128 0x47
	.4byte	.LASF614
	.byte	0x1
	.2byte	0x188
	.4byte	0x20ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglCombinerInputNV
	.uleb128 0x47
	.4byte	.LASF615
	.byte	0x1
	.2byte	0x189
	.4byte	0x2126
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglCombinerOutputNV
	.uleb128 0x47
	.4byte	.LASF616
	.byte	0x1
	.2byte	0x18a
	.4byte	0x2171
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglFinalCombinerInputNV
	.uleb128 0x47
	.4byte	.LASF617
	.byte	0x1
	.2byte	0x18b
	.4byte	0x217d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetCombinerInputParameterfvNV
	.uleb128 0x47
	.4byte	.LASF618
	.byte	0x1
	.2byte	0x18c
	.4byte	0x21af
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetCombinerInputParameterivNV
	.uleb128 0x47
	.4byte	.LASF619
	.byte	0x1
	.2byte	0x18d
	.4byte	0x21e1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetCombinerOutputParameterfvNV
	.uleb128 0x47
	.4byte	.LASF620
	.byte	0x1
	.2byte	0x18e
	.4byte	0x220e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetCombinerOutputParameterivNV
	.uleb128 0x47
	.4byte	.LASF621
	.byte	0x1
	.2byte	0x18f
	.4byte	0x223b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetFinalCombinerInputParameterfvNV
	.uleb128 0x47
	.4byte	.LASF622
	.byte	0x1
	.2byte	0x190
	.4byte	0x2247
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetFinalCombinerInputParameterivNV
	.uleb128 0x47
	.4byte	.LASF623
	.byte	0x1
	.2byte	0x193
	.4byte	0x26fd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglTexImage3DEXT
	.uleb128 0x47
	.4byte	.LASF624
	.byte	0x1
	.2byte	0x194
	.4byte	0x2709
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglDepthBoundsNV
	.uleb128 0x47
	.4byte	.LASF625
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x2295
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglAreProgramsResidentNV
	.uleb128 0x47
	.4byte	.LASF626
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x22a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglBindProgramNV
	.uleb128 0x47
	.4byte	.LASF627
	.byte	0x1
	.2byte	0x1ca
	.4byte	0x22ad
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglDeleteProgramsNV
	.uleb128 0x47
	.4byte	.LASF628
	.byte	0x1
	.2byte	0x1cb
	.4byte	0x22b9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglExecuteProgramNV
	.uleb128 0x47
	.4byte	.LASF629
	.byte	0x1
	.2byte	0x1cc
	.4byte	0x22c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGenProgramsNV
	.uleb128 0x47
	.4byte	.LASF630
	.byte	0x1
	.2byte	0x1cd
	.4byte	0x22d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetProgramParameterdvNV
	.uleb128 0x47
	.4byte	.LASF631
	.byte	0x1
	.2byte	0x1ce
	.4byte	0x22fe
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetProgramParameterfvNV
	.uleb128 0x47
	.4byte	.LASF632
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x230a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetProgramivNV
	.uleb128 0x47
	.4byte	.LASF633
	.byte	0x1
	.2byte	0x1d0
	.4byte	0x2316
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetProgramStringNV
	.uleb128 0x47
	.4byte	.LASF634
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x2344
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetTrackMatrixivNV
	.uleb128 0x47
	.4byte	.LASF635
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x2350
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetVertexAttribdvNV
	.uleb128 0x47
	.4byte	.LASF636
	.byte	0x1
	.2byte	0x1d3
	.4byte	0x235c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetVertexAttribfvNV
	.uleb128 0x47
	.4byte	.LASF637
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x2368
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetVertexAttribivNV
	.uleb128 0x47
	.4byte	.LASF638
	.byte	0x1
	.2byte	0x1d5
	.4byte	0x2374
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglGetVertexAttribPointervNV
	.uleb128 0x47
	.4byte	.LASF639
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x2380
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglIsProgramNV
	.uleb128 0x47
	.4byte	.LASF640
	.byte	0x1
	.2byte	0x1d7
	.4byte	0x238c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglLoadProgramNV
	.uleb128 0x47
	.4byte	.LASF641
	.byte	0x1
	.2byte	0x1d8
	.4byte	0x23b9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglProgramParameter4dNV
	.uleb128 0x47
	.4byte	.LASF642
	.byte	0x1
	.2byte	0x1d9
	.4byte	0x23c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglProgramParameter4dvNV
	.uleb128 0x47
	.4byte	.LASF643
	.byte	0x1
	.2byte	0x1da
	.4byte	0x23d1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglProgramParameter4fNV
	.uleb128 0x47
	.4byte	.LASF644
	.byte	0x1
	.2byte	0x1db
	.4byte	0x23dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglProgramParameter4fvNV
	.uleb128 0x47
	.4byte	.LASF645
	.byte	0x1
	.2byte	0x1dc
	.4byte	0x23e9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglProgramParameters4dvNV
	.uleb128 0x47
	.4byte	.LASF646
	.byte	0x1
	.2byte	0x1dd
	.4byte	0x2416
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglProgramParameters4fvNV
	.uleb128 0x47
	.4byte	.LASF647
	.byte	0x1
	.2byte	0x1de
	.4byte	0x2443
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglRequestResidentProgramsNV
	.uleb128 0x47
	.4byte	.LASF648
	.byte	0x1
	.2byte	0x1df
	.4byte	0x244f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglTrackMatrixNV
	.uleb128 0x47
	.4byte	.LASF649
	.byte	0x1
	.2byte	0x1e0
	.4byte	0x247c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttribPointerNV
	.uleb128 0x47
	.4byte	.LASF650
	.byte	0x1
	.2byte	0x1e1
	.4byte	0x24ae
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib1dNV
	.uleb128 0x47
	.4byte	.LASF651
	.byte	0x1
	.2byte	0x1e2
	.4byte	0x24ba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib1dvNV
	.uleb128 0x47
	.4byte	.LASF652
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x24c6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib1fNV
	.uleb128 0x47
	.4byte	.LASF653
	.byte	0x1
	.2byte	0x1e4
	.4byte	0x24d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib1fvNV
	.uleb128 0x47
	.4byte	.LASF654
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x24de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib1sNV
	.uleb128 0x47
	.4byte	.LASF655
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x24ea
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib1svNV
	.uleb128 0x47
	.4byte	.LASF656
	.byte	0x1
	.2byte	0x1e7
	.4byte	0x24f6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib2dNV
	.uleb128 0x47
	.4byte	.LASF657
	.byte	0x1
	.2byte	0x1e8
	.4byte	0x2502
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib2dvNV
	.uleb128 0x47
	.4byte	.LASF658
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x250e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib2fNV
	.uleb128 0x47
	.4byte	.LASF659
	.byte	0x1
	.2byte	0x1ea
	.4byte	0x251a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib2fvNV
	.uleb128 0x47
	.4byte	.LASF660
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x2526
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib2sNV
	.uleb128 0x47
	.4byte	.LASF661
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x2532
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib2svNV
	.uleb128 0x47
	.4byte	.LASF662
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x253e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib3dNV
	.uleb128 0x47
	.4byte	.LASF663
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x254a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib3dvNV
	.uleb128 0x47
	.4byte	.LASF664
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x2556
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib3fNV
	.uleb128 0x47
	.4byte	.LASF665
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x2562
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib3fvNV
	.uleb128 0x47
	.4byte	.LASF666
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x256e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib3sNV
	.uleb128 0x47
	.4byte	.LASF667
	.byte	0x1
	.2byte	0x1f2
	.4byte	0x257a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib3svNV
	.uleb128 0x47
	.4byte	.LASF668
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x2586
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib4dNV
	.uleb128 0x47
	.4byte	.LASF669
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x2592
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib4dvNV
	.uleb128 0x47
	.4byte	.LASF670
	.byte	0x1
	.2byte	0x1f5
	.4byte	0x259e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib4fNV
	.uleb128 0x47
	.4byte	.LASF671
	.byte	0x1
	.2byte	0x1f6
	.4byte	0x25aa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib4fvNV
	.uleb128 0x47
	.4byte	.LASF672
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x25b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib4sNV
	.uleb128 0x47
	.4byte	.LASF673
	.byte	0x1
	.2byte	0x1f8
	.4byte	0x25c2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib4svNV
	.uleb128 0x47
	.4byte	.LASF674
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x25ce
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttrib4ubvNV
	.uleb128 0x47
	.4byte	.LASF675
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x25da
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttribs1dvNV
	.uleb128 0x47
	.4byte	.LASF676
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x2602
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttribs1fvNV
	.uleb128 0x47
	.4byte	.LASF677
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x262a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttribs1svNV
	.uleb128 0x47
	.4byte	.LASF678
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x2652
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttribs2dvNV
	.uleb128 0x47
	.4byte	.LASF679
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x265e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttribs2fvNV
	.uleb128 0x47
	.4byte	.LASF680
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x266a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttribs2svNV
	.uleb128 0x47
	.4byte	.LASF681
	.byte	0x1
	.2byte	0x200
	.4byte	0x2676
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttribs3dvNV
	.uleb128 0x47
	.4byte	.LASF682
	.byte	0x1
	.2byte	0x201
	.4byte	0x2682
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttribs3fvNV
	.uleb128 0x47
	.4byte	.LASF683
	.byte	0x1
	.2byte	0x202
	.4byte	0x268e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttribs3svNV
	.uleb128 0x47
	.4byte	.LASF684
	.byte	0x1
	.2byte	0x203
	.4byte	0x269a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttribs4dvNV
	.uleb128 0x47
	.4byte	.LASF685
	.byte	0x1
	.2byte	0x204
	.4byte	0x26a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttribs4fvNV
	.uleb128 0x47
	.4byte	.LASF686
	.byte	0x1
	.2byte	0x205
	.4byte	0x26b2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttribs4svNV
	.uleb128 0x47
	.4byte	.LASF687
	.byte	0x1
	.2byte	0x206
	.4byte	0x26be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglVertexAttribs4ubvNV
	.uleb128 0x47
	.4byte	.LASF688
	.byte	0x1
	.2byte	0x210
	.4byte	0x2090
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	qglFlushVertexArrayRangeNV
	.uleb128 0x47
	.4byte	.LASF689
	.byte	0x1
	.2byte	0x211
	.4byte	0x209c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	glVertexArrayRangeNV
	.uleb128 0x47
	.4byte	.LASF690
	.byte	0x1
	.2byte	0x212
	.4byte	0x2715
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	wglAllocateMemoryNV
	.uleb128 0x47
	.4byte	.LASF691
	.byte	0x1
	.2byte	0x213
	.4byte	0x2746
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	wglFreeMemoryNV
	.uleb128 0x44
	.4byte	.LASF692
	.byte	0xc
	.2byte	0x943
	.4byte	0xa7
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF693
	.byte	0x1
	.byte	0x45
	.4byte	0x2d1c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	globalVertexTable
	.uleb128 0x47
	.4byte	.LASF694
	.byte	0xc
	.2byte	0xc2c
	.4byte	0x170b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x44
	.4byte	.LASF695
	.byte	0x12
	.2byte	0x548
	.4byte	0x431a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.4byte	0x431f
	.uleb128 0x6
	.byte	0x4
	.4byte	0x2be3
	.uleb128 0x44
	.4byte	.LASF696
	.byte	0x7
	.2byte	0x150
	.4byte	0x7b
	.byte	0x1
	.byte	0x1
	.uleb128 0x48
	.4byte	.LASF697
	.byte	0x1
	.byte	0x1d
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lightmap_bytes
	.uleb128 0x48
	.4byte	.LASF698
	.byte	0x1
	.byte	0x1f
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lightmap_textures
	.uleb128 0xb
	.4byte	0x48
	.4byte	0x4368
	.uleb128 0xf
	.4byte	0x48
	.2byte	0x143
	.byte	0
	.uleb128 0x48
	.4byte	.LASF699
	.byte	0x1
	.byte	0x21
	.4byte	0x4357
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	blocklights
	.uleb128 0x48
	.4byte	.LASF700
	.byte	0x1
	.byte	0x26
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	active_lightmaps
	.uleb128 0xb
	.4byte	0x16bd
	.4byte	0x439c
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x48
	.4byte	.LASF701
	.byte	0x1
	.byte	0x2c
	.4byte	0x438c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lightmap_polys
	.uleb128 0xb
	.4byte	0xa7
	.4byte	0x43be
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x48
	.4byte	.LASF702
	.byte	0x1
	.byte	0x2d
	.4byte	0x43ae
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lightmap_modified
	.uleb128 0xb
	.4byte	0x2c2c
	.4byte	0x43e0
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x48
	.4byte	.LASF703
	.byte	0x1
	.byte	0x2e
	.4byte	0x43d0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lightmap_rectchange
	.uleb128 0xb
	.4byte	0x41
	.4byte	0x4408
	.uleb128 0xc
	.4byte	0x48
	.byte	0x3f
	.uleb128 0xc
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x48
	.4byte	.LASF704
	.byte	0x1
	.byte	0x30
	.4byte	0x43f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	allocated
	.uleb128 0xb
	.4byte	0x97
	.4byte	0x442d
	.uleb128 0x49
	.4byte	0x48
	.4byte	0x3fffff
	.byte	0
	.uleb128 0x48
	.4byte	.LASF705
	.byte	0x1
	.byte	0x34
	.4byte	0x441a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	lightmaps
	.uleb128 0x48
	.4byte	.LASF706
	.byte	0x1
	.byte	0x37
	.4byte	0x170b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	skychain
	.uleb128 0x48
	.4byte	.LASF707
	.byte	0x1
	.byte	0x38
	.4byte	0x170b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	waterchain
	.uleb128 0x48
	.4byte	.LASF708
	.byte	0x1
	.byte	0x47
	.4byte	0x2d1c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tempVertices
	.uleb128 0x48
	.4byte	.LASF709
	.byte	0x1
	.byte	0x48
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tempVerticesSize
	.uleb128 0x48
	.4byte	.LASF710
	.byte	0x1
	.byte	0x49
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	numTempVertices
	.uleb128 0x44
	.4byte	.LASF711
	.byte	0x1
	.2byte	0x174
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF712
	.byte	0x1
	.2byte	0x175
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.4byte	.LASF713
	.byte	0x1
	.2byte	0x176
	.4byte	0x82
	.byte	0x1
	.byte	0x1
	.uleb128 0x47
	.4byte	.LASF714
	.byte	0x1
	.2byte	0x219
	.4byte	0xa7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	mtexenabled
	.uleb128 0x47
	.4byte	.LASF715
	.byte	0x1
	.2byte	0x7b3
	.4byte	0xa7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	didnode
	.uleb128 0x47
	.4byte	.LASF716
	.byte	0x1
	.2byte	0x92c
	.4byte	0x1a60
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	r_pcurrentvertbase
	.uleb128 0x47
	.4byte	.LASF717
	.byte	0x1
	.2byte	0x92d
	.4byte	0x3529
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	currentmodel
	.uleb128 0x47
	.4byte	.LASF718
	.byte	0x1
	.2byte	0x92f
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	nColinElim
	.uleb128 0x47
	.4byte	.LASF719
	.byte	0x1
	.2byte	0x937
	.4byte	0x3897
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tempEdges
	.uleb128 0x44
	.4byte	.LASF572
	.byte	0x1
	.2byte	0x9ea
	.4byte	0xa7
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x18
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x3b
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL10-1-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10-1-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL18-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL22-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 160
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x78
	.sleb128 0
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 0
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x27
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 12
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x25
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0xb
	.byte	0x70
	.sleb128 0
	.byte	0x34
	.byte	0x26
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 48
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x2
	.byte	0x8b
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI13-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI15-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL97-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL98-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x8f
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL96-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL96-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL98-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x8e
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x8e
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x8e
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL97-1-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x8e
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 88
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x5
	.byte	0x88
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	blocklights
	.byte	0x9f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x6
	.byte	0x3
	.4byte	blocklights
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL98-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL107-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL107-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL107-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI23-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LFB47-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LFB49-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI28-.Ltext0
	.4byte	.LFE49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL109-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL109-1-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0xd
	.byte	0x8d
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	globalVertexTable
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LFB50-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 104
	.4byte	.LCFI30-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116-1-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0xd
	.byte	0x8d
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	globalVertexTable
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LFB51-.Ltext0
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
	.4byte	.LFE51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0xd
	.byte	0x8d
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	globalVertexTable
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LFB52-.Ltext0
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
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI37-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI37-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x3
	.byte	0x87
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-1-.Ltext0
	.2byte	0x2
	.byte	0x86
	.sleb128 0
	.4byte	.LVL132-1-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0xd
	.byte	0x89
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	globalVertexTable
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LFB53-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI41-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI43-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0xd
	.byte	0x8d
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	globalVertexTable
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 36
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LFB54-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI46-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI47-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0xd
	.byte	0x8d
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	globalVertexTable
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 36
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LFB55-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI49-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0xd
	.byte	0x8d
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	globalVertexTable
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 36
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL186-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL186-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL186-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LFB48-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI50-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI51-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI52-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI53-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI54-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI55-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI56-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI57-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI58-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI59-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI60-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL188-1-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL196-1-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL226-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL226-1-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL198-1-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	.LVL198-1-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-1-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	.LVL211-1-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL228-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0xd
	.byte	0x8f
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	globalVertexTable
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0xd
	.byte	0x8c
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	globalVertexTable
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL216-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0xd
	.byte	0x8c
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	globalVertexTable
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 60
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL203-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL217-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL228-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL199-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LFB58-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI61-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI62-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI63-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI64-.Ltext0
	.4byte	.LCFI65-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI65-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI66-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI67-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x20
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL239-1-.Ltext0
	.2byte	0x2
	.byte	0x87
	.sleb128 32
	.4byte	.LVL239-1-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL236-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LFB59-.Ltext0
	.4byte	.LCFI68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI68-.Ltext0
	.4byte	.LCFI69-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI69-.Ltext0
	.4byte	.LCFI70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI70-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x8
	.byte	0x79
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x20
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-1-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LVL254-1-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL260-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x2
	.byte	0x79
	.sleb128 40
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-1-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LVL269-1-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x5
	.byte	0x79
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL267-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL267-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LFB61-.Ltext0
	.4byte	.LCFI71-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI71-.Ltext0
	.4byte	.LCFI72-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	.LCFI72-.Ltext0
	.4byte	.LCFI73-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI73-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL271-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL293-.Ltext0
	.4byte	.LVL295-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL295-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL282-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL277-.Ltext0
	.4byte	.LVL278-1-.Ltext0
	.2byte	0xd
	.byte	0x8d
	.sleb128 140
	.byte	0x6
	.byte	0x8
	.byte	0x5c
	.byte	0x1e
	.byte	0x8d
	.sleb128 208
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL278-1-.Ltext0
	.4byte	.LVL280-.Ltext0
	.2byte	0x9
	.byte	0x8b
	.sleb128 0
	.byte	0x8
	.byte	0x5c
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL285-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL288-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL290-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 4
	.4byte	.LVL290-.Ltext0
	.4byte	.LVL291-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL272-.Ltext0
	.4byte	.LVL273-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 160
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL275-1-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 160
	.4byte	.LVL275-1-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL293-.Ltext0
	.4byte	.LFE61-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL294-.Ltext0
	.4byte	.LVL296-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL296-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL297-.Ltext0
	.4byte	.LVL298-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL299-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LFB62-.Ltext0
	.4byte	.LCFI74-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI74-.Ltext0
	.4byte	.LCFI75-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	.LCFI75-.Ltext0
	.4byte	.LCFI76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI76-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL300-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL303-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL312-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL326-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL326-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-1-.Ltext0
	.2byte	0xd
	.byte	0x8d
	.sleb128 140
	.byte	0x6
	.byte	0x8
	.byte	0x5c
	.byte	0x1e
	.byte	0x8d
	.sleb128 208
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL309-1-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x9
	.byte	0x8b
	.sleb128 0
	.byte	0x8
	.byte	0x5c
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL313-.Ltext0
	.4byte	.LVL314-1-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL318-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x2
	.byte	0x8c
	.sleb128 4
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 160
	.4byte	.LVL304-.Ltext0
	.4byte	.LVL306-1-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 160
	.4byte	.LVL306-1-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL324-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL305-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL327-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL327-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x6
	.byte	0x93
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x3f
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LFB63-.Ltext0
	.4byte	.LCFI77-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI77-.Ltext0
	.4byte	.LCFI78-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	.LCFI78-.Ltext0
	.4byte	.LCFI79-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI79-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 96
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL331-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL337-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x7
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL343-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL344-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x7
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL346-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 48
	.4byte	.LVL358-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	.LVL364-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -88
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL358-.Ltext0
	.4byte	.LVL359-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL336-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 36
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL364-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL358-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL364-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL356-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 44
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL355-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL348-.Ltext0
	.4byte	.LVL349-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL358-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL361-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	.LVL363-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3f
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LFB64-.Ltext0
	.4byte	.LCFI80-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI80-.Ltext0
	.4byte	.LCFI81-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 608
	.4byte	.LCFI81-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LFB66-.Ltext0
	.4byte	.LCFI82-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI82-.Ltext0
	.4byte	.LCFI83-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI83-.Ltext0
	.4byte	.LFE66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LFB67-.Ltext0
	.4byte	.LCFI84-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI84-.Ltext0
	.4byte	.LCFI85-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 4120
	.4byte	.LCFI85-.Ltext0
	.4byte	.LCFI86-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI86-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 4120
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL368-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x4
	.byte	0x91
	.sleb128 -4112
	.byte	0x9f
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL378-.Ltext0
	.4byte	.LFE67-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL370-.Ltext0
	.4byte	.LVL371-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL375-.Ltext0
	.4byte	.LVL376-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LFB68-.Ltext0
	.4byte	.LCFI87-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI87-.Ltext0
	.4byte	.LCFI88-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI88-.Ltext0
	.4byte	.LCFI89-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI89-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL380-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL380-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL399-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL400-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL399-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL400-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL399-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL400-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL399-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL400-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL381-.Ltext0
	.4byte	.LVL382-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL388-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL390-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL395-.Ltext0
	.4byte	.LVL396-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL402-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL383-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL400-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL381-.Ltext0
	.4byte	.LVL382-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL394-.Ltext0
	.4byte	.LVL396-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL401-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL383-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL393-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL400-.Ltext0
	.4byte	.LFE68-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LVL379-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL396-.Ltext0
	.4byte	.LVL397-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL397-.Ltext0
	.4byte	.LVL398-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LFB69-.Ltext0
	.4byte	.LCFI90-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI90-.Ltext0
	.4byte	.LCFI91-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI91-.Ltext0
	.4byte	.LCFI92-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI92-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL403-.Ltext0
	.4byte	.LVL404-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL404-.Ltext0
	.4byte	.LVL412-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL413-.Ltext0
	.4byte	.LVL414-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL414-.Ltext0
	.4byte	.LFE69-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL404-.Ltext0
	.4byte	.LVL405-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL409-.Ltext0
	.4byte	.LVL411-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL407-.Ltext0
	.4byte	.LVL408-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL405-.Ltext0
	.4byte	.LVL410-.Ltext0
	.2byte	0xd
	.byte	0x3
	.4byte	currentmodel
	.byte	0x6
	.byte	0x23
	.uleb128 0xd8
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL411-.Ltext0
	.2byte	0xf
	.byte	0x3
	.4byte	currentmodel
	.byte	0x6
	.byte	0x23
	.uleb128 0xd8
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x34
	.byte	0x1c
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL406-.Ltext0
	.4byte	.LVL408-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LFB70-.Ltext0
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
	.4byte	.LFE70-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LVL415-.Ltext0
	.4byte	.LVL416-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL418-.Ltext0
	.4byte	.LVL419-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0xa
	.byte	0x3
	.4byte	tempEdges
	.byte	0x6
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL417-.Ltext0
	.4byte	.LVL418-1-.Ltext0
	.2byte	0xc
	.byte	0x3
	.4byte	tempEdges
	.byte	0x6
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.byte	0x3c
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LFB71-.Ltext0
	.4byte	.LCFI95-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI95-.Ltext0
	.4byte	.LCFI96-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	.LCFI96-.Ltext0
	.4byte	.LCFI97-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI97-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LVL420-.Ltext0
	.4byte	.LVL421-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL421-.Ltext0
	.4byte	.LVL442-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL443-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL426-.Ltext0
	.4byte	.LVL427-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL428-.Ltext0
	.4byte	.LVL429-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL437-.Ltext0
	.4byte	.LVL438-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL430-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0xd
	.byte	0x3
	.4byte	currentmodel
	.byte	0x6
	.byte	0x23
	.uleb128 0xd8
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL435-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL443-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL422-.Ltext0
	.4byte	.LVL423-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 16
	.4byte	.LVL423-1-.Ltext0
	.4byte	.LVL441-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL443-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL422-.Ltext0
	.4byte	.LVL423-1-.Ltext0
	.2byte	0x9
	.byte	0x3
	.4byte	currentmodel
	.byte	0x6
	.byte	0x23
	.uleb128 0xb8
	.4byte	.LVL423-1-.Ltext0
	.4byte	.LVL439-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL443-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL431-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x14
	.byte	0x3
	.4byte	currentmodel
	.byte	0x6
	.byte	0x23
	.uleb128 0xd8
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x89
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x8
	.byte	0x8c
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x89
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL443-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x9
	.byte	0x8c
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x1e
	.byte	0x89
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL434-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL444-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL424-.Ltext0
	.4byte	.LVL425-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL425-.Ltext0
	.4byte	.LVL440-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL443-.Ltext0
	.4byte	.LFE71-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL427-.Ltext0
	.4byte	.LVL428-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL436-.Ltext0
	.4byte	.LVL438-.Ltext0
	.2byte	0xa
	.byte	0x3
	.4byte	tempEdges
	.byte	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LFB72-.Ltext0
	.4byte	.LCFI98-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI98-.Ltext0
	.4byte	.LCFI99-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI99-.Ltext0
	.4byte	.LCFI100-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI100-.Ltext0
	.4byte	.LCFI101-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI101-.Ltext0
	.4byte	.LFE72-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LVL445-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL449-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL449-.Ltext0
	.4byte	.LVL450-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0xd
	.byte	0x73
	.sleb128 24
	.byte	0x94
	.byte	0x2
	.byte	0x34
	.byte	0x26
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL448-1-.Ltext0
	.2byte	0xd
	.byte	0x8f
	.sleb128 24
	.byte	0x94
	.byte	0x2
	.byte	0x34
	.byte	0x26
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL446-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0xd
	.byte	0x73
	.sleb128 26
	.byte	0x94
	.byte	0x2
	.byte	0x34
	.byte	0x26
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL447-.Ltext0
	.4byte	.LVL448-1-.Ltext0
	.2byte	0xd
	.byte	0x8f
	.sleb128 26
	.byte	0x94
	.byte	0x2
	.byte	0x34
	.byte	0x26
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LFB73-.Ltext0
	.4byte	.LCFI102-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI102-.Ltext0
	.4byte	.LCFI103-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI103-.Ltext0
	.4byte	.LCFI104-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI104-.Ltext0
	.4byte	.LFE73-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL455-.Ltext0
	.4byte	.LVL456-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL457-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL458-.Ltext0
	.4byte	.LVL459-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL460-.Ltext0
	.4byte	.LVL461-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL461-.Ltext0
	.4byte	.LVL462-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL462-.Ltext0
	.4byte	.LVL463-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL464-.Ltext0
	.4byte	.LVL465-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL468-.Ltext0
	.4byte	.LVL469-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL470-.Ltext0
	.4byte	.LVL471-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL472-.Ltext0
	.4byte	.LVL474-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL474-.Ltext0
	.4byte	.LVL475-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL475-.Ltext0
	.4byte	.LVL476-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL477-.Ltext0
	.4byte	.LVL478-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL478-.Ltext0
	.4byte	.LVL479-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL451-.Ltext0
	.4byte	.LVL452-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL453-.Ltext0
	.4byte	.LVL454-1-.Ltext0
	.2byte	0x2
	.byte	0x87
	.sleb128 0
	.4byte	.LVL454-1-.Ltext0
	.4byte	.LVL466-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL467-.Ltext0
	.4byte	.LVL469-.Ltext0
	.2byte	0x2
	.byte	0x88
	.sleb128 0
	.4byte	.LVL469-.Ltext0
	.4byte	.LVL473-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL468-.Ltext0
	.4byte	.LVL469-.Ltext0
	.2byte	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0xc8
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
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF564:
	.string	"lnumverts"
.LASF351:
	.string	"GLuint"
.LASF628:
	.string	"qglExecuteProgramNV"
.LASF581:
	.string	"r_viewleaf"
.LASF47:
	.string	"pflags"
.LASF363:
	.string	"PFNGLFLUSHVERTEXARRAYRANGENVPROC"
.LASF662:
	.string	"qglVertexAttrib3dNV"
.LASF445:
	.string	"screenrect_s"
.LASF447:
	.string	"screenrect_t"
.LASF615:
	.string	"qglCombinerOutputNV"
.LASF718:
	.string	"nColinElim"
.LASF172:
	.string	"aliasvrectbottom"
.LASF612:
	.string	"qglCombinerParameterfNV"
.LASF570:
	.string	"GL_BuildLightmaps"
.LASF294:
	.string	"vecs"
.LASF195:
	.string	"upmove"
.LASF568:
	.string	"light"
.LASF635:
	.string	"qglGetVertexAttribdvNV"
.LASF268:
	.string	"texture_s"
.LASF291:
	.string	"texture_t"
.LASF15:
	.string	"_Bool"
.LASF75:
	.string	"entity_s"
.LASF166:
	.string	"entity_t"
.LASF480:
	.string	"lastlight"
.LASF389:
	.string	"PFNGLGETVERTEXATTRIBFVNVPROC"
.LASF121:
	.string	"numplanes"
.LASF661:
	.string	"qglVertexAttrib2svNV"
.LASF384:
	.string	"PFNGLGETPROGRAMPARAMETERFVNVPROC"
.LASF555:
	.string	"solid"
.LASF91:
	.string	"frame_start_time"
.LASF416:
	.string	"PFNGLVERTEXATTRIB3DVNVPROC"
.LASF650:
	.string	"qglVertexAttrib1dNV"
.LASF86:
	.string	"lightTimestamp"
.LASF537:
	.string	"R_DrawCaustics"
.LASF332:
	.string	"binormals"
.LASF549:
	.string	"mark"
.LASF276:
	.string	"alternate_anims"
.LASF256:
	.string	"lightnormalindex"
.LASF385:
	.string	"PFNGLGETPROGRAMIVNVPROC"
.LASF184:
	.string	"horizontalFieldOfView"
.LASF290:
	.string	"samples"
.LASF221:
	.string	"idealpitch"
.LASF157:
	.string	"lastshadowonly"
.LASF307:
	.string	"lastclipnode"
.LASF63:
	.string	"entnext"
.LASF531:
	.string	"R_DrawWaterSurfaces"
.LASF90:
	.string	"topnode"
.LASF259:
	.string	"mvertex_t"
.LASF689:
	.string	"glVertexArrayRangeNV"
.LASF444:
	.string	"PFNWGLFREEMEMORYNVPROC"
.LASF512:
	.string	"maps"
.LASF55:
	.string	"next"
.LASF430:
	.string	"PFNGLVERTEXATTRIBS1SVNVPROC"
.LASF572:
	.string	"isPermedia"
.LASF345:
	.string	"plane_t"
.LASF160:
	.string	"vertices"
.LASF104:
	.string	"angles1"
.LASF105:
	.string	"angles2"
.LASF433:
	.string	"PFNGLVERTEXATTRIBS2SVNVPROC"
.LASF169:
	.string	"vrectright"
.LASF515:
	.string	"base"
.LASF241:
	.string	"maxclients"
.LASF436:
	.string	"PFNGLVERTEXATTRIBS3SVNVPROC"
.LASF558:
	.string	"best2"
.LASF439:
	.string	"PFNGLVERTEXATTRIBS4SVNVPROC"
.LASF366:
	.string	"PFNGLCOMBINERPARAMETERFNVPROC"
.LASF524:
	.string	"R_RenderBrushPolyCaustics"
.LASF665:
	.string	"qglVertexAttrib3fvNV"
.LASF469:
	.string	"cubescale"
.LASF28:
	.string	"height"
.LASF208:
	.string	"owner"
.LASF205:
	.string	"decay"
.LASF287:
	.string	"styles"
.LASF522:
	.string	"R_RenderBrushPolyLuma"
.LASF209:
	.string	"dlight_t"
.LASF330:
	.string	"commands"
.LASF97:
	.string	"brushlightinstant"
.LASF589:
	.string	"r_dynamic"
.LASF226:
	.string	"viewheight"
.LASF456:
	.string	"visible"
.LASF390:
	.string	"PFNGLGETVERTEXATTRIBIVNVPROC"
.LASF107:
	.string	"model_s"
.LASF344:
	.string	"model_t"
.LASF260:
	.string	"texture"
.LASF423:
	.string	"PFNGLVERTEXATTRIB4FNVPROC"
.LASF541:
	.string	"clmodel"
.LASF376:
	.string	"PFNGLGETFINALCOMBINERINPUTPARAMETERFVNVPROC"
.LASF139:
	.string	"hulls"
.LASF69:
	.string	"compressed_vis"
.LASF634:
	.string	"qglGetTrackMatrixivNV"
.LASF696:
	.string	"realtime"
.LASF407:
	.string	"PFNGLVERTEXATTRIB1SNVPROC"
.LASF466:
	.string	"numVisSurf"
.LASF132:
	.string	"numsurfaces"
.LASF542:
	.string	"rotated"
.LASF242:
	.string	"gametype"
.LASF706:
	.string	"skychain"
.LASF261:
	.string	"lightmap"
.LASF496:
	.string	"GL_DisableMultitexture"
.LASF617:
	.string	"qglGetCombinerInputParameterfvNV"
.LASF441:
	.string	"PFNGLTEXIMAGE3DEXT"
.LASF518:
	.string	"DrawGLWaterPoly"
.LASF596:
	.string	"fog_color"
.LASF35:
	.string	"vec_t"
.LASF118:
	.string	"nummodelsurfaces"
.LASF595:
	.string	"gl_wireframe"
.LASF164:
	.string	"triplanes"
.LASF627:
	.string	"qglDeleteProgramsNV"
.LASF413:
	.string	"PFNGLVERTEXATTRIB2SNVPROC"
.LASF348:
	.string	"GLshort"
.LASF239:
	.string	"levelname"
.LASF183:
	.string	"fvrectbottom"
.LASF296:
	.string	"mtexinfo_t"
.LASF714:
	.string	"mtexenabled"
.LASF697:
	.string	"lightmap_bytes"
.LASF168:
	.string	"aliasvrect"
.LASF648:
	.string	"qglTrackMatrixNV"
.LASF13:
	.string	"byte"
.LASF453:
	.string	"shadowlight_s"
.LASF472:
	.string	"shadowlight_t"
.LASF674:
	.string	"qglVertexAttrib4ubvNV"
.LASF598:
	.string	"mirror_plane"
.LASF708:
	.string	"tempVertices"
.LASF298:
	.string	"chain"
.LASF73:
	.string	"index"
.LASF419:
	.string	"PFNGLVERTEXATTRIB3SNVPROC"
.LASF432:
	.string	"PFNGLVERTEXATTRIBS2FVNVPROC"
.LASF686:
	.string	"qglVertexAttribs4svNV"
.LASF76:
	.string	"forcelink"
.LASF560:
	.string	"SetupSurfaceConnectivity"
.LASF510:
	.string	"dest"
.LASF37:
	.string	"angles"
.LASF321:
	.string	"boundingradius"
.LASF74:
	.string	"ambient_sound_level"
.LASF133:
	.string	"surfaces"
.LASF111:
	.string	"synctype"
.LASF625:
	.string	"qglAreProgramsResidentNV"
.LASF96:
	.string	"aliasframeinstant"
.LASF377:
	.string	"PFNGLGETFINALCOMBINERINPUTPARAMETERIVNVPROC"
.LASF225:
	.string	"laststop"
.LASF654:
	.string	"qglVertexAttrib1sNV"
.LASF125:
	.string	"vertexes"
.LASF554:
	.string	"R_MarkLeaves"
.LASF425:
	.string	"PFNGLVERTEXATTRIB4SNVPROC"
.LASF196:
	.string	"usercmd_t"
.LASF100:
	.string	"translate_start_time"
.LASF525:
	.string	"R_RenderDynamicLightmaps"
.LASF546:
	.string	"R_RecursiveWorldNode"
.LASF477:
	.string	"lastvorg"
.LASF177:
	.string	"fvrecty_adj"
.LASF631:
	.string	"qglGetProgramParameterfvNV"
.LASF364:
	.string	"PFNGLVERTEXARRAYRANGENVPROC"
.LASF594:
	.string	"sh_colormaps"
.LASF693:
	.string	"globalVertexTable"
.LASF46:
	.string	"light_lev"
.LASF17:
	.string	"maxs"
.LASF109:
	.string	"type"
.LASF338:
	.string	"aliashdr_t"
.LASF129:
	.string	"nodes"
.LASF664:
	.string	"qglVertexAttrib3fNV"
.LASF270:
	.string	"gl_lumitex"
.LASF62:
	.string	"entity"
.LASF176:
	.string	"fvrectx_adj"
.LASF710:
	.string	"numTempVertices"
.LASF220:
	.string	"punchangle"
.LASF536:
	.string	"R_CopyVerticesToHunk"
.LASF278:
	.string	"msurface_s"
.LASF303:
	.string	"msurface_t"
.LASF84:
	.string	"syncbase"
.LASF516:
	.string	"reletive"
.LASF498:
	.string	"temp"
.LASF171:
	.string	"aliasvrectright"
.LASF192:
	.string	"refdef_t"
.LASF240:
	.string	"viewentity"
.LASF180:
	.string	"fvrectright_adj"
.LASF470:
	.string	"haloalpha"
.LASF597:
	.string	"mirror"
.LASF630:
	.string	"qglGetProgramParameterdvNV"
.LASF147:
	.string	"firstsurface"
.LASF458:
	.string	"castShadow"
.LASF694:
	.string	"causticschain"
.LASF396:
	.string	"PFNGLPROGRAMPARAMETER4FNVPROC"
.LASF146:
	.string	"plane"
.LASF151:
	.string	"updateframe"
.LASF93:
	.string	"blend"
.LASF652:
	.string	"qglVertexAttrib1fNV"
.LASF204:
	.string	"cshift_t"
.LASF1:
	.string	"unsigned char"
.LASF181:
	.string	"fvrectbottom_adj"
.LASF724:
	.string	"R_GetNextVertexIndex"
.LASF155:
	.string	"lastblend"
.LASF467:
	.string	"scizz"
.LASF487:
	.string	"aliaslightinstant_t"
.LASF10:
	.string	"float"
.LASF41:
	.string	"skin"
.LASF540:
	.string	"pplane"
.LASF485:
	.string	"tshalfangles"
.LASF22:
	.string	"numfaces"
.LASF688:
	.string	"qglFlushVertexArrayRangeNV"
.LASF701:
	.string	"lightmap_polys"
.LASF282:
	.string	"light_s"
.LASF283:
	.string	"light_t"
.LASF343:
	.string	"modtype_t"
.LASF679:
	.string	"qglVertexAttribs2fvNV"
.LASF334:
	.string	"indecies"
.LASF214:
	.string	"faceanimtime"
.LASF94:
	.string	"pose1"
.LASF95:
	.string	"pose2"
.LASF640:
	.string	"qglLoadProgramNV"
.LASF619:
	.string	"qglGetCombinerOutputParameterfvNV"
.LASF463:
	.string	"volumeVerts"
.LASF495:
	.string	"temp_connect_t"
.LASF153:
	.string	"lastpose1"
.LASF154:
	.string	"lastpose2"
.LASF212:
	.string	"items"
.LASF497:
	.string	"GL_EnableMultitexture"
.LASF460:
	.string	"entvis"
.LASF309:
	.string	"clip_maxs"
.LASF288:
	.string	"cached_light"
.LASF551:
	.string	"R_InitDrawWorld"
.LASF626:
	.string	"qglBindProgramNV"
.LASF297:
	.string	"glpoly_s"
.LASF302:
	.string	"glpoly_t"
.LASF382:
	.string	"PFNGLGENPROGRAMSNVPROC"
.LASF20:
	.string	"visleafs"
.LASF590:
	.string	"r_novis"
.LASF678:
	.string	"qglVertexAttribs2dvNV"
.LASF699:
	.string	"blocklights"
.LASF235:
	.string	"oldtime"
.LASF547:
	.string	"node"
.LASF114:
	.string	"clipbox"
.LASF529:
	.string	"R_DrawSequentialPoly"
.LASF446:
	.string	"coords"
.LASF65:
	.string	"contents"
.LASF244:
	.string	"free_efrags"
.LASF507:
	.string	"smax"
.LASF633:
	.string	"qglGetProgramStringNV"
.LASF566:
	.string	"r_pedge"
.LASF83:
	.string	"efrag"
.LASF336:
	.string	"texels"
.LASF360:
	.string	"PFNGLMULTITEXCOORD2FVARBPROC"
.LASF158:
	.string	"lastpaliashdr"
.LASF716:
	.string	"r_pcurrentvertbase"
.LASF327:
	.string	"size"
.LASF583:
	.string	"d_lightstylevalue"
.LASF380:
	.string	"PFNGLDELETEPROGRAMSNVPROC"
.LASF621:
	.string	"qglGetFinalCombinerInputParameterfvNV"
.LASF575:
	.string	"texture_extension_number"
.LASF544:
	.string	"right"
.LASF429:
	.string	"PFNGLVERTEXATTRIBS1FVNVPROC"
.LASF189:
	.string	"fov_x"
.LASF190:
	.string	"fov_y"
.LASF38:
	.string	"modelindex"
.LASF101:
	.string	"origin1"
.LASF262:
	.string	"mmvertex_t"
.LASF435:
	.string	"PFNGLVERTEXATTRIBS3FVNVPROC"
.LASF335:
	.string	"gl_lumatex"
.LASF611:
	.string	"qglCombinerParameterivNV"
.LASF559:
	.string	"texnum"
.LASF438:
	.string	"PFNGLVERTEXATTRIBS4FVNVPROC"
.LASF148:
	.string	"aliasframeinstant_s"
.LASF274:
	.string	"anim_max"
.LASF667:
	.string	"qglVertexAttrib3svNV"
.LASF605:
	.string	"qglMultiTexCoord1fARB"
.LASF526:
	.string	"theRect"
.LASF243:
	.string	"worldmodel"
.LASF475:
	.string	"lastlorg"
.LASF503:
	.string	"surf"
.LASF482:
	.string	"lastframeinstant"
.LASF316:
	.string	"maliasframedesc_t"
.LASF127:
	.string	"edges"
.LASF378:
	.string	"PFNGLAREPROGRAMSRESIDENTNVPROC"
.LASF152:
	.string	"paliashdr"
.LASF353:
	.string	"GLfloat"
.LASF528:
	.string	"dynamic"
.LASF365:
	.string	"PFNGLCOMBINERPARAMETERFVNVPROC"
.LASF663:
	.string	"qglVertexAttrib3dvNV"
.LASF77:
	.string	"update_type"
.LASF578:
	.string	"r_visframecount"
.LASF320:
	.string	"scale_origin"
.LASF87:
	.string	"dlightframe"
.LASF565:
	.string	"pedges"
.LASF703:
	.string	"lightmap_rectchange"
.LASF173:
	.string	"vrectrightedge"
.LASF691:
	.string	"wglFreeMemoryNV"
.LASF277:
	.string	"offsets"
.LASF21:
	.string	"firstface"
.LASF102:
	.string	"origin2"
.LASF684:
	.string	"qglVertexAttribs4dvNV"
.LASF229:
	.string	"onground"
.LASF641:
	.string	"qglProgramParameter4dNV"
.LASF491:
	.string	"glRect_s"
.LASF492:
	.string	"glRect_t"
.LASF671:
	.string	"qglVertexAttrib4fvNV"
.LASF520:
	.string	"DrawGLPoly"
.LASF511:
	.string	"stride"
.LASF486:
	.string	"triangleVis"
.LASF156:
	.string	"lastent"
.LASF92:
	.string	"frame_interval"
.LASF223:
	.string	"nodrift"
.LASF217:
	.string	"mviewangles"
.LASF550:
	.string	"pleaf"
.LASF506:
	.string	"local"
.LASF400:
	.string	"PFNGLREQUESTRESIDENTPROGRAMSNVPROC"
.LASF138:
	.string	"marksurfaces"
.LASF255:
	.string	"synctype_t"
.LASF673:
	.string	"qglVertexAttrib4svNV"
.LASF499:
	.string	"fields"
.LASF108:
	.string	"needload"
.LASF629:
	.string	"qglGenProgramsNV"
.LASF457:
	.string	"isStatic"
.LASF337:
	.string	"frames"
.LASF286:
	.string	"lightmaptexturenum"
.LASF461:
	.string	"visSurf"
.LASF54:
	.string	"value"
.LASF271:
	.string	"texturechain"
.LASF89:
	.string	"trivial_accept"
.LASF149:
	.string	"_next"
.LASF669:
	.string	"qglVertexAttrib4dvNV"
.LASF386:
	.string	"PFNGLGETPROGRAMSTRINGNVPROC"
.LASF637:
	.string	"qglGetVertexAttribivNV"
.LASF355:
	.string	"GLclampd"
.LASF367:
	.string	"PFNGLCOMBINERPARAMETERIVNVPROC"
.LASF285:
	.string	"shadowchain"
.LASF306:
	.string	"firstclipnode"
.LASF692:
	.string	"gl_mtexable"
.LASF604:
	.string	"qglClientActiveTextureARB"
.LASF593:
	.string	"sh_lightmapbright"
.LASF712:
	.string	"alphaskytexture"
.LASF280:
	.string	"texturemins"
.LASF502:
	.string	"R_AddDynamicLights"
.LASF653:
	.string	"qglVertexAttrib1fvNV"
.LASF85:
	.string	"skinnum"
.LASF592:
	.string	"gl_watershader"
.LASF666:
	.string	"qglVertexAttrib3sNV"
.LASF717:
	.string	"currentmodel"
.LASF552:
	.string	"R_DrawWorldAmbient"
.LASF574:
	.string	"cl_dlights"
.LASF182:
	.string	"fvrectright"
.LASF352:
	.string	"GLsizei"
.LASF513:
	.string	"R_AllocateVertexInTemp"
.LASF381:
	.string	"PFNGLEXECUTEPROGRAMNVPROC"
.LASF273:
	.string	"anim_min"
.LASF624:
	.string	"qglDepthBoundsNV"
.LASF403:
	.string	"PFNGLVERTEXATTRIB1DNVPROC"
.LASF123:
	.string	"leafs"
.LASF237:
	.string	"model_precache"
.LASF543:
	.string	"forward"
.LASF246:
	.string	"num_statics"
.LASF19:
	.string	"headnode"
.LASF115:
	.string	"clipmins"
.LASF647:
	.string	"qglRequestResidentProgramsNV"
.LASF534:
	.string	"found"
.LASF228:
	.string	"paused"
.LASF622:
	.string	"qglGetFinalCombinerInputParameterivNV"
.LASF331:
	.string	"triangles"
.LASF606:
	.string	"qglMultiTexCoord2fARB"
.LASF668:
	.string	"qglVertexAttrib4dNV"
.LASF404:
	.string	"PFNGLVERTEXATTRIB1DVNVPROC"
.LASF651:
	.string	"qglVertexAttrib1dvNV"
.LASF410:
	.string	"PFNGLVERTEXATTRIB2DVNVPROC"
.LASF14:
	.string	"qboolean"
.LASF191:
	.string	"ambientlight"
.LASF50:
	.string	"name"
.LASF315:
	.string	"bboxmax"
.LASF422:
	.string	"PFNGLVERTEXATTRIB4DVNVPROC"
.LASF500:
	.string	"R_EnableVertexTable"
.LASF409:
	.string	"PFNGLVERTEXATTRIB2DNVPROC"
.LASF644:
	.string	"qglProgramParameter4fvNV"
.LASF695:
	.string	"wgPipe"
.LASF64:
	.string	"mleaf_s"
.LASF305:
	.string	"mleaf_t"
.LASF362:
	.string	"PFNGLMULTITEXCOORD3FVARBPROC"
.LASF81:
	.string	"msg_angles"
.LASF462:
	.string	"volumeCmds"
.LASF210:
	.string	"movemessages"
.LASF227:
	.string	"crouch"
.LASF700:
	.string	"active_lightmaps"
.LASF250:
	.string	"scores"
.LASF136:
	.string	"numclipnodes"
.LASF415:
	.string	"PFNGLVERTEXATTRIB3DNVPROC"
.LASF623:
	.string	"qglTexImage3DEXT"
.LASF185:
	.string	"xOrigin"
.LASF656:
	.string	"qglVertexAttrib2dNV"
.LASF632:
	.string	"qglGetProgramivNV"
.LASF602:
	.string	"color_black"
.LASF704:
	.string	"allocated"
.LASF479:
	.string	"lasthdr"
.LASF680:
	.string	"qglVertexAttribs2svNV"
.LASF31:
	.string	"vrect_s"
.LASF30:
	.string	"vrect_t"
.LASF3:
	.string	"short unsigned int"
.LASF238:
	.string	"sound_precache"
.LASF0:
	.string	"signed char"
.LASF401:
	.string	"PFNGLTRACKMATRIXNVPROC"
.LASF194:
	.string	"sidemove"
.LASF119:
	.string	"numsubmodels"
.LASF484:
	.string	"tslights"
.LASF412:
	.string	"PFNGLVERTEXATTRIB2FVNVPROC"
.LASF398:
	.string	"PFNGLPROGRAMPARAMETERS4DVNVPROC"
.LASF642:
	.string	"qglProgramParameter4dvNV"
.LASF263:
	.string	"mplane_s"
.LASF267:
	.string	"mplane_t"
.LASF424:
	.string	"PFNGLVERTEXATTRIB4FVNVPROC"
.LASF421:
	.string	"PFNGLVERTEXATTRIB4DNVPROC"
.LASF517:
	.string	"count"
.LASF265:
	.string	"dist"
.LASF163:
	.string	"binomials"
.LASF257:
	.string	"trivertx_t"
.LASF134:
	.string	"numsurfedges"
.LASF36:
	.string	"vec3_t"
.LASF333:
	.string	"texcoords"
.LASF203:
	.string	"percent"
.LASF140:
	.string	"numtextures"
.LASF61:
	.string	"leafnext"
.LASF71:
	.string	"firstmarksurface"
.LASF530:
	.string	"R_MirrorChain"
.LASF24:
	.string	"planenum"
.LASF232:
	.string	"completed_time"
.LASF289:
	.string	"cached_dlight"
.LASF618:
	.string	"qglGetCombinerInputParameterivNV"
.LASF211:
	.string	"stats"
.LASF556:
	.string	"AllocBlock"
.LASF339:
	.string	"mod_brush"
.LASF490:
	.string	"WGPipe"
.LASF372:
	.string	"PFNGLGETCOMBINERINPUTPARAMETERFVNVPROC"
.LASF317:
	.string	"ident"
.LASF322:
	.string	"eyeposition"
.LASF563:
	.string	"BuildPolyFromSurface"
.LASF279:
	.string	"firstedge"
.LASF144:
	.string	"entities"
.LASF399:
	.string	"PFNGLPROGRAMPARAMETERS4FVNVPROC"
.LASF224:
	.string	"driftmove"
.LASF452:
	.string	"lightcmd_t"
.LASF488:
	.string	"lightcmd_u"
.LASF79:
	.string	"msgtime"
.LASF616:
	.string	"qglFinalCombinerInputNV"
.LASF459:
	.string	"halo"
.LASF476:
	.string	"lasteangles"
.LASF448:
	.string	"asInt"
.LASF603:
	.string	"qglActiveTextureARB"
.LASF392:
	.string	"PFNGLISPROGRAMNVPROC"
.LASF234:
	.string	"time"
.LASF128:
	.string	"numnodes"
.LASF12:
	.string	"long int"
.LASF681:
	.string	"qglVertexAttribs3dvNV"
.LASF539:
	.string	"psurf"
.LASF188:
	.string	"viewangles"
.LASF141:
	.string	"textures"
.LASF387:
	.string	"PFNGLGETTRACKMATRIXIVNVPROC"
.LASF48:
	.string	"entity_state_t"
.LASF418:
	.string	"PFNGLVERTEXATTRIB3FVNVPROC"
.LASF236:
	.string	"last_received_message"
.LASF588:
	.string	"r_wateralpha"
.LASF682:
	.string	"qglVertexAttribs3fvNV"
.LASF514:
	.string	"R_TextureAnimation"
.LASF314:
	.string	"bboxmin"
.LASF585:
	.string	"skytexturenum"
.LASF193:
	.string	"forwardmove"
.LASF370:
	.string	"PFNGLCOMBINEROUTPUTNVPROC"
.LASF369:
	.string	"PFNGLCOMBINERINPUTNVPROC"
.LASF427:
	.string	"PFNGLVERTEXATTRIB4UBVNVPROC"
.LASF481:
	.string	"lightpos"
.LASF72:
	.string	"nummarksurfaces"
.LASF218:
	.string	"mvelocity"
.LASF313:
	.string	"interval"
.LASF373:
	.string	"PFNGLGETCOMBINERINPUTPARAMETERIVNVPROC"
.LASF582:
	.string	"r_oldviewleaf"
.LASF207:
	.string	"filtercube"
.LASF67:
	.string	"minmaxs"
.LASF11:
	.string	"long double"
.LASF219:
	.string	"velocity"
.LASF245:
	.string	"num_entities"
.LASF110:
	.string	"numframes"
.LASF509:
	.string	"R_BuildLightMap"
.LASF258:
	.string	"position"
.LASF167:
	.string	"vrect"
.LASF580:
	.string	"c_brush_polys"
.LASF7:
	.string	"long unsigned int"
.LASF248:
	.string	"cdtrack"
.LASF471:
	.string	"oldlightorigin"
.LASF545:
	.string	"R_DrawBrushModelAmbient"
.LASF162:
	.string	"tangents"
.LASF49:
	.string	"cvar_s"
.LASF56:
	.string	"cvar_t"
.LASF715:
	.string	"didnode"
.LASF489:
	.string	"_wgpipe"
.LASF562:
	.string	"tempEdge"
.LASF646:
	.string	"qglProgramParameters4fvNV"
.LASF292:
	.string	"cachededgeoffset"
.LASF8:
	.string	"char"
.LASF124:
	.string	"numvertexes"
.LASF340:
	.string	"mod_sprite"
.LASF178:
	.string	"vrect_x_adj_shift20"
.LASF670:
	.string	"qglVertexAttrib4fNV"
.LASF454:
	.string	"baseColor"
.LASF312:
	.string	"numposes"
.LASF281:
	.string	"extents"
.LASF707:
	.string	"waterchain"
.LASF357:
	.string	"PFNGLCLIENTACTIVETEXTUREARBPROC"
.LASF601:
	.string	"r_world_matrix"
.LASF614:
	.string	"qglCombinerInputNV"
.LASF159:
	.string	"shadowonly"
.LASF478:
	.string	"lastlradius"
.LASF43:
	.string	"color"
.LASF301:
	.string	"firstvertex"
.LASF88:
	.string	"dlightbits"
.LASF450:
	.string	"asVec"
.LASF709:
	.string	"tempVerticesSize"
.LASF57:
	.string	"sfx_s"
.LASF508:
	.string	"tmax"
.LASF408:
	.string	"PFNGLVERTEXATTRIB1SVNVPROC"
.LASF402:
	.string	"PFNGLVERTEXATTRIBPOINTERNVPROC"
.LASF527:
	.string	"store"
.LASF161:
	.string	"normals"
.LASF324:
	.string	"skinwidth"
.LASF32:
	.string	"cache_user_s"
.LASF34:
	.string	"cache_user_t"
.LASF645:
	.string	"qglProgramParameters4dvNV"
.LASF586:
	.string	"r_fullbright"
.LASF420:
	.string	"PFNGLVERTEXATTRIB3SVNVPROC"
.LASF426:
	.string	"PFNGLVERTEXATTRIB4SVNVPROC"
.LASF620:
	.string	"qglGetCombinerOutputParameterivNV"
.LASF150:
	.string	"lockframe"
.LASF272:
	.string	"anim_total"
.LASF52:
	.string	"archive"
.LASF368:
	.string	"PFNGLCOMBINERPARAMETERINVPROC"
.LASF230:
	.string	"inwater"
.LASF358:
	.string	"PFNGLMULTITEXCOORD1FARBPROC"
.LASF658:
	.string	"qglVertexAttrib2fNV"
.LASF142:
	.string	"visdata"
.LASF359:
	.string	"PFNGLMULTITEXCOORD2FARBPROC"
.LASF60:
	.string	"leaf"
.LASF328:
	.string	"poseverts"
.LASF655:
	.string	"qglVertexAttrib1svNV"
.LASF356:
	.string	"PFNGLACTIVETEXTUREARBPROC"
.LASF567:
	.string	"vertpage"
.LASF249:
	.string	"looptrack"
.LASF705:
	.string	"lightmaps"
.LASF501:
	.string	"R_DisableVertexTable"
.LASF455:
	.string	"brightness"
.LASF325:
	.string	"skinheight"
.LASF251:
	.string	"server_proto_version"
.LASF349:
	.string	"GLint"
.LASF200:
	.string	"translations"
.LASF186:
	.string	"yOrigin"
.LASF231:
	.string	"intermission"
.LASF179:
	.string	"vrectright_adj_shift20"
.LASF395:
	.string	"PFNGLPROGRAMPARAMETER4DVNVPROC"
.LASF576:
	.string	"modelorg"
.LASF70:
	.string	"efrags"
.LASF59:
	.string	"efrag_s"
.LASF106:
	.string	"efrag_t"
.LASF361:
	.string	"PFNGLMULTITEXCOORD3FARBPROC"
.LASF721:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_rsurf.c"
.LASF29:
	.string	"pnext"
.LASF553:
	.string	"R_WorldMultiplyTextures"
.LASF25:
	.string	"children"
.LASF725:
	.string	"PrintTempEdges"
.LASF45:
	.string	"style"
.LASF719:
	.string	"tempEdges"
.LASF9:
	.string	"double"
.LASF253:
	.string	"ST_SYNC"
.LASF468:
	.string	"rspeed"
.LASF638:
	.string	"qglGetVertexAttribPointervNV"
.LASF130:
	.string	"numtexinfo"
.LASF659:
	.string	"qglVertexAttrib2fvNV"
.LASF538:
	.string	"R_DrawBrushModelCaustics"
.LASF414:
	.string	"PFNGLVERTEXATTRIB2SVNVPROC"
.LASF202:
	.string	"destcolor"
.LASF465:
	.string	"lightCmds"
.LASF126:
	.string	"numedges"
.LASF165:
	.string	"lightinstant"
.LASF222:
	.string	"pitchvel"
.LASF269:
	.string	"gl_texturenum"
.LASF442:
	.string	"PFNGLDEPTHBOUNDSNV"
.LASF643:
	.string	"qglProgramParameter4fNV"
.LASF319:
	.string	"scale"
.LASF293:
	.string	"medge_t"
.LASF143:
	.string	"lightdata"
.LASF170:
	.string	"vrectbottom"
.LASF40:
	.string	"colormap"
.LASF33:
	.string	"data"
.LASF397:
	.string	"PFNGLPROGRAMPARAMETER4FVNVPROC"
.LASF449:
	.string	"asFloat"
.LASF702:
	.string	"lightmap_modified"
.LASF561:
	.string	"lindex"
.LASF247:
	.string	"viewent"
.LASF649:
	.string	"qglVertexAttribPointerNV"
.LASF374:
	.string	"PFNGLGETCOMBINEROUTPUTPARAMETERFVNVPROC"
.LASF571:
	.string	"texinfos"
.LASF66:
	.string	"visframe"
.LASF275:
	.string	"anim_next"
.LASF443:
	.string	"PFNWGLALLOCATEMEMORYNVPROC"
.LASF199:
	.string	"colors"
.LASF300:
	.string	"neighbours"
.LASF713:
	.string	"speedscale"
.LASF347:
	.string	"GLboolean"
.LASF698:
	.string	"lightmap_textures"
.LASF174:
	.string	"fvrectx"
.LASF175:
	.string	"fvrecty"
.LASF494:
	.string	"poly"
.LASF657:
	.string	"qglVertexAttrib2dvNV"
.LASF122:
	.string	"planes"
.LASF27:
	.string	"width"
.LASF394:
	.string	"PFNGLPROGRAMPARAMETER4DNVPROC"
.LASF16:
	.string	"mins"
.LASF264:
	.string	"normal"
.LASF577:
	.string	"currententity"
.LASF505:
	.string	"impact"
.LASF80:
	.string	"msg_origins"
.LASF584:
	.string	"currenttexture"
.LASF187:
	.string	"vieworg"
.LASF213:
	.string	"item_gettime"
.LASF722:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF311:
	.string	"firstpose"
.LASF206:
	.string	"minlight"
.LASF26:
	.string	"dclipnode_t"
.LASF266:
	.string	"signbits"
.LASF6:
	.string	"long long unsigned int"
.LASF68:
	.string	"parent"
.LASF613:
	.string	"qglCombinerParameteriNV"
.LASF683:
	.string	"qglVertexAttribs3svNV"
.LASF533:
	.string	"tani"
.LASF483:
	.string	"extvertices"
.LASF690:
	.string	"wglAllocateMemoryNV"
.LASF557:
	.string	"best"
.LASF428:
	.string	"PFNGLVERTEXATTRIBS1DVNVPROC"
.LASF215:
	.string	"cshifts"
.LASF393:
	.string	"PFNGLLOADPROGRAMNVPROC"
.LASF295:
	.string	"mipadjust"
.LASF431:
	.string	"PFNGLVERTEXATTRIBS2DVNVPROC"
.LASF600:
	.string	"mirror_clipside"
.LASF375:
	.string	"PFNGLGETCOMBINEROUTPUTPARAMETERIVNVPROC"
.LASF434:
	.string	"PFNGLVERTEXATTRIBS3DVNVPROC"
.LASF437:
	.string	"PFNGLVERTEXATTRIBS4DVNVPROC"
.LASF350:
	.string	"GLubyte"
.LASF116:
	.string	"clipmaxs"
.LASF323:
	.string	"numskins"
.LASF42:
	.string	"effects"
.LASF523:
	.string	"R_RenderBrushPolyLightmap"
.LASF464:
	.string	"numVolumeVerts"
.LASF197:
	.string	"entertime"
.LASF310:
	.string	"hull_t"
.LASF532:
	.string	"DrawTextureChains"
.LASF346:
	.string	"GLenum"
.LASF451:
	.string	"asVoid"
.LASF391:
	.string	"PFNGLGETVERTEXATTRIBPOINTERVNVPROC"
.LASF98:
	.string	"numleafs"
.LASF198:
	.string	"frags"
.LASF82:
	.string	"model"
.LASF685:
	.string	"qglVertexAttribs4fvNV"
.LASF44:
	.string	"alpha"
.LASF299:
	.string	"numverts"
.LASF519:
	.string	"DrawGLWaterPolyLightmap"
.LASF308:
	.string	"clip_mins"
.LASF569:
	.string	"GL_CreateSurfaceLightmap"
.LASF326:
	.string	"numtris"
.LASF610:
	.string	"qglCombinerParameterfvNV"
.LASF535:
	.string	"olds"
.LASF5:
	.string	"long long int"
.LASF405:
	.string	"PFNGLVERTEXATTRIB1FNVPROC"
.LASF51:
	.string	"string"
.LASF639:
	.string	"qglIsProgramNV"
.LASF406:
	.string	"PFNGLVERTEXATTRIB1FVNVPROC"
.LASF233:
	.string	"mtime"
.LASF677:
	.string	"qglVertexAttribs1svNV"
.LASF573:
	.string	"r_refdef"
.LASF379:
	.string	"PFNGLBINDPROGRAMNVPROC"
.LASF341:
	.string	"mod_alias"
.LASF78:
	.string	"baseline"
.LASF493:
	.string	"used"
.LASF587:
	.string	"r_lightmap"
.LASF609:
	.string	"qglMultiTexCoord3fvARB"
.LASF504:
	.string	"lnum"
.LASF342:
	.string	"mod_alias3"
.LASF131:
	.string	"texinfo"
.LASF521:
	.string	"R_BlendLightmaps"
.LASF137:
	.string	"clipnodes"
.LASF411:
	.string	"PFNGLVERTEXATTRIB2FNVPROC"
.LASF591:
	.string	"gl_lightmap_format"
.LASF99:
	.string	"leafnums"
.LASF284:
	.string	"polys"
.LASF23:
	.string	"dmodel_t"
.LASF117:
	.string	"firstmodelsurface"
.LASF607:
	.string	"qglMultiTexCoord2fvARB"
.LASF252:
	.string	"client_state_t"
.LASF120:
	.string	"submodels"
.LASF672:
	.string	"qglVertexAttrib4sNV"
.LASF711:
	.string	"solidskytexture"
.LASF18:
	.string	"origin"
.LASF676:
	.string	"qglVertexAttribs1fvNV"
.LASF417:
	.string	"PFNGLVERTEXATTRIB3FNVPROC"
.LASF354:
	.string	"GLdouble"
.LASF58:
	.string	"cache"
.LASF440:
	.string	"PFNGLVERTEXATTRIBS4UBVNVPROC"
.LASF720:
	.string	"GNU C 4.6.3"
.LASF318:
	.string	"version"
.LASF135:
	.string	"surfedges"
.LASF254:
	.string	"ST_RAND"
.LASF4:
	.string	"unsigned int"
.LASF145:
	.string	"mnode_s"
.LASF304:
	.string	"mnode_t"
.LASF371:
	.string	"PFNGLFINALCOMBINERINPUTNVPROC"
.LASF687:
	.string	"qglVertexAttribs4ubvNV"
.LASF216:
	.string	"prev_cshifts"
.LASF548:
	.string	"side"
.LASF2:
	.string	"short int"
.LASF660:
	.string	"qglVertexAttrib2sNV"
.LASF723:
	.string	"GLvoid"
.LASF53:
	.string	"server"
.LASF39:
	.string	"frame"
.LASF608:
	.string	"qglMultiTexCoord3fARB"
.LASF474:
	.string	"lasteorg"
.LASF675:
	.string	"qglVertexAttribs1dvNV"
.LASF579:
	.string	"r_framecount"
.LASF636:
	.string	"qglGetVertexAttribfvNV"
.LASF388:
	.string	"PFNGLGETVERTEXATTRIBDVNVPROC"
.LASF329:
	.string	"posedata"
.LASF201:
	.string	"scoreboard_t"
.LASF112:
	.string	"flags"
.LASF103:
	.string	"rotate_start_time"
.LASF113:
	.string	"radius"
.LASF383:
	.string	"PFNGLGETPROGRAMPARAMETERDVNVPROC"
.LASF473:
	.string	"aliaslightinstant_s"
.LASF599:
	.string	"mirror_far_plane"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
