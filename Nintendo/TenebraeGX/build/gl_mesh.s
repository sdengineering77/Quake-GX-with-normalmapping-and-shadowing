	.file	"gl_mesh.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl findneighbour
	.type	findneighbour, @function
findneighbour:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_mesh.c"
	.loc 1 33 0
	.cfi_startproc
.LVL0:
	.loc 1 45 0
	cmpwi 0,5,0
	.loc 1 33 0
	stwu 1,-40(1)
.LCFI0:
	.cfi_def_cfa_offset 40
	.loc 1 35 0
	mulli 11,3,28
	lis 9,triangles@ha
	la 9,triangles@l(9)
	.loc 1 33 0
	stw 24,8(1)
	stw 25,12(1)
	mr 0,3
	stw 26,16(1)
	.loc 1 35 0
	add 11,9,11
.LVL1:
	.loc 1 33 0
	stw 27,20(1)
	stw 28,24(1)
	stw 29,28(1)
	stw 30,32(1)
	stw 31,36(1)
	.loc 1 45 0
	ble- 0,.L11
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	.cfi_offset 24, -32
.LVL2:
	.loc 1 51 0
	lis 29,0x5555
	addi 8,4,1
	ori 29,29,21846
	srawi 10,8,31
	mulhw 7,8,29
	.loc 1 46 0
	slwi 4,4,2
.LVL3:
	.loc 1 44 0
	li 26,0
	.loc 1 34 0
	li 25,0
	.loc 1 43 0
	li 3,-1
	.loc 1 51 0
	subf 10,10,7
	.loc 1 46 0
	add 27,11,4
	.loc 1 51 0
	mulli 10,10,3
	subf 10,10,8
	.loc 1 54 0
	slwi 28,10,2
	.loc 1 45 0
	li 10,0
	.loc 1 54 0
	add 28,11,28
.LVL4:
.L9:
	.loc 1 46 0
	cmpw 7,10,0
	beq- 7,.L3
	.loc 1 33 0
	mulli 8,10,28
	.loc 1 46 0
	lwz 6,4(27)
	mulli 31,10,7
	.loc 1 33 0
	li 11,1
	add 8,9,8
.L8:
	.loc 1 50 0
	lwzu 7,4(8)
	srawi 4,11,31
	.loc 1 33 0
	addi 30,11,-1
	.loc 1 50 0
	cmpw 7,7,6
	beq- 7,.L4
	mulhw 12,11,29
	subf 4,4,12
	mulli 4,4,3
	subf 4,4,11
	add 4,31,4
	slwi 4,4,2
	add 4,9,4
	lwz 4,4(4)
.L5:
	.loc 1 52 0
	cmpw 7,6,4
	beq- 7,.L17
.L7:
.LVL5:
	.loc 1 49 0
	cmpwi 7,11,3
	addi 11,11,1
	bne+ 7,.L8
.LVL6:
.L3:
	.loc 1 45 0
	addi 10,10,1
.LVL7:
	cmpw 7,10,5
	bne+ 7,.L9
	.loc 1 70 0
	cmpwi 7,26,0
	bne- 7,.L18
.LVL8:
.L2:
	.loc 1 71 0
	mulli 11,3,7
	add 11,11,25
	addi 11,11,4
	slwi 11,11,2
	stwx 0,9,11
.L10:
	.loc 1 77 0
	lwz 24,8(1)
	lwz 25,12(1)
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
	lwz 30,32(1)
	lwz 31,36(1)
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
.L4:
.LCFI2:
	.cfi_restore_state
	.loc 1 51 0
	mulhw 24,11,29
	srawi 4,11,31
	lwz 12,4(28)
	subf 4,4,24
	mulli 4,4,3
	subf 4,4,11
	add 4,31,4
	slwi 4,4,2
	add 4,9,4
	lwz 4,4(4)
	cmpw 7,12,4
	bne+ 7,.L5
	.loc 1 57 0
	cmpwi 7,3,-1
	beq- 7,.L19
.L12:
	.loc 1 63 0
	li 26,1
	b .L7
.L17:
	.loc 1 54 0
	lwz 4,4(28)
	cmpw 7,7,4
	bne+ 7,.L7
	.loc 1 57 0
	cmpwi 7,3,-1
	bne+ 7,.L12
.L19:
	mr 25,30
	mr 3,10
	b .L7
.LVL9:
.L18:
	.loc 1 76 0
	li 3,-1
.LVL10:
	b .L10
.LVL11:
.L11:
	.loc 1 43 0
	li 3,-1
	.loc 1 34 0
	li 25,0
	b .L2
	.cfi_endproc
.LFE38:
	.size	findneighbour, .-findneighbour
	.align 2
	.globl TangentForTri
	.type	TangentForTri, @function
TangentForTri:
.LFB39:
	.loc 1 82 0
	.cfi_startproc
.LVL12:
	mflr 0
	stwu 1,-112(1)
.LCFI3:
	.cfi_def_cfa_offset 112
	.cfi_register 65, 0
	stw 22,72(1)
	stw 0,116(1)
	stw 23,76(1)
	.loc 1 91 0
	lwz 11,0(3)
	.loc 1 92 0
	lwz 9,4(3)
	.loc 1 93 0
	lwz 0,8(3)
	.cfi_offset 23, -36
	.cfi_offset 65, 4
	.cfi_offset 22, -40
	.loc 1 91 0
	slwi 22,11,4
	.loc 1 92 0
	slwi 23,9,4
	.loc 1 82 0
	stw 24,80(1)
	.loc 1 94 0
	slwi 11,11,3
	.loc 1 93 0
	slwi 24,0,4
	.cfi_offset 24, -32
	.loc 1 95 0
	slwi 9,9,3
	.loc 1 96 0
	slwi 0,0,3
	.loc 1 82 0
	stw 25,84(1)
	.loc 1 91 0
	add 22,4,22
.LVL13:
	.loc 1 82 0
	stw 26,88(1)
	mr 25,7
	.cfi_offset 26, -24
	.cfi_offset 25, -28
	stw 27,92(1)
	.loc 1 92 0
	add 23,4,23
.LVL14:
	.loc 1 82 0
	stw 28,96(1)
	.loc 1 93 0
	add 24,4,24
.LVL15:
	.loc 1 82 0
	stw 29,100(1)
	.loc 1 94 0
	add 26,5,11
.LVL16:
	.loc 1 82 0
	stw 30,104(1)
	.loc 1 95 0
	add 27,5,9
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
.LVL17:
	.loc 1 82 0
	stw 31,108(1)
	.loc 1 96 0
	add 28,5,0
.LVL18:
	.loc 1 82 0
	mr 31,6
	.cfi_offset 31, -4
	.loc 1 107 0
	addi 29,1,32
	.loc 1 96 0
	li 30,0
.LVL19:
.L21:
	.loc 1 102 0 discriminator 2
	lfsx 6,24,30
	.loc 1 105 0 discriminator 2
	addi 3,1,20
	.loc 1 99 0 discriminator 2
	lfsx 12,22,30
	.loc 1 103 0 discriminator 2
	lfs 7,0(28)
	.loc 1 104 0 discriminator 2
	lfs 8,4(28)
	.loc 1 99 0 discriminator 2
	lfsx 9,23,30
	.loc 1 100 0 discriminator 2
	lfs 13,0(26)
	.loc 1 101 0 discriminator 2
	lfs 0,4(26)
	.loc 1 99 0 discriminator 2
	fsubs 9,9,12
	.loc 1 100 0 discriminator 2
	lfs 10,0(27)
	.loc 1 102 0 discriminator 2
	fsubs 12,6,12
	.loc 1 101 0 discriminator 2
	lfs 11,4(27)
	.loc 1 100 0 discriminator 2
	fsubs 10,10,13
	.loc 1 99 0 discriminator 2
	stfs 9,20(1)
	.loc 1 101 0 discriminator 2
	fsubs 11,11,0
	.loc 1 102 0 discriminator 2
	stfs 12,8(1)
	.loc 1 103 0 discriminator 2
	fsubs 13,7,13
	.loc 1 104 0 discriminator 2
	fsubs 0,8,0
	.loc 1 100 0 discriminator 2
	stfs 10,24(1)
	.loc 1 101 0 discriminator 2
	stfs 11,28(1)
	.loc 1 103 0 discriminator 2
	stfs 13,12(1)
	.loc 1 104 0 discriminator 2
	stfs 0,16(1)
	.loc 1 105 0 discriminator 2
	bl VectorNormalize
	.loc 1 106 0 discriminator 2
	addi 3,1,8
	bl VectorNormalize
	.loc 1 107 0 discriminator 2
	mr 5,29
	addi 3,1,20
	addi 4,1,8
	bl CrossProduct
	.loc 1 98 0 discriminator 2
	cmpwi 7,30,8
	.loc 1 107 0 discriminator 2
	addi 29,29,12
	.loc 1 98 0 discriminator 2
	addi 30,30,4
	bne+ 7,.L21
	.loc 1 112 0
	lfs 6,36(1)
	.loc 1 118 0
	mr 3,31
	.loc 1 113 0
	lfs 7,48(1)
	.loc 1 114 0
	lfs 9,60(1)
	.loc 1 112 0
	fneg 6,6
	.loc 1 115 0
	lfs 8,40(1)
	.loc 1 113 0
	fneg 7,7
	.loc 1 116 0
	lfs 10,52(1)
	.loc 1 114 0
	fneg 9,9
	.loc 1 117 0
	lfs 11,64(1)
	.loc 1 115 0
	fneg 8,8
	.loc 1 116 0
	fneg 10,10
	.loc 1 112 0
	lfs 12,32(1)
	.loc 1 117 0
	fneg 11,11
	.loc 1 113 0
	lfs 13,44(1)
	.loc 1 114 0
	lfs 0,56(1)
	.loc 1 112 0
	fdivs 6,6,12
	.loc 1 113 0
	fdivs 7,7,13
	.loc 1 112 0
	stfs 6,0(31)
	.loc 1 114 0
	fdivs 9,9,0
	.loc 1 113 0
	stfs 7,4(31)
	.loc 1 115 0
	fdivs 12,8,12
	.loc 1 114 0
	stfs 9,8(31)
	.loc 1 116 0
	fdivs 13,10,13
	.loc 1 115 0
	stfs 12,0(25)
	.loc 1 117 0
	fdivs 0,11,0
	.loc 1 116 0
	stfs 13,4(25)
	.loc 1 117 0
	stfs 0,8(25)
	.loc 1 118 0
	bl VectorNormalize
	.loc 1 119 0
	mr 3,25
	bl VectorNormalize
	.loc 1 120 0
	lwz 0,116(1)
	lwz 22,72(1)
.LVL20:
	mtlr 0
	lwz 23,76(1)
.LVL21:
	lwz 24,80(1)
.LVL22:
	lwz 25,84(1)
.LVL23:
	lwz 26,88(1)
.LVL24:
	lwz 27,92(1)
.LVL25:
	lwz 28,96(1)
.LVL26:
	lwz 29,100(1)
	lwz 30,104(1)
	lwz 31,108(1)
.LVL27:
	addi 1,1,112
.LCFI4:
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
	.cfi_endproc
.LFE39:
	.size	TangentForTri, .-TangentForTri
	.align 2
	.globl NormalToLatLong
	.type	NormalToLatLong, @function
NormalToLatLong:
.LFB40:
	.loc 1 122 0
	.cfi_startproc
.LVL28:
	mflr 0
	stwu 1,-64(1)
.LCFI5:
	.cfi_def_cfa_offset 64
	.cfi_register 65, 0
.LVL29:
	.loc 1 127 0
	lis 9,.LC5@ha
	lfs 0,.LC5@l(9)
	.loc 1 122 0
	stw 0,68(1)
	stw 31,36(1)
	mr 31,3
	.cfi_offset 31, -28
	.cfi_offset 65, 4
	.loc 1 127 0
	lfs 2,0(3)
	.loc 1 122 0
	stfd 29,40(1)
	.loc 1 127 0
	fcmpu 7,2,0
	.loc 1 122 0
	stfd 30,48(1)
	stfd 31,56(1)
	.loc 1 127 0
	lfs 1,4(3)
	bne- 7,.L25
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.loc 1 127 0 is_stmt 0 discriminator 1
	fcmpu 7,1,0
	beq- 7,.L31
.L25:
.LBB2:
	.loc 1 139 0 is_stmt 1
	bl atan2
.LVL30:
	lis 9,.LC1@ha
	lfs 29,.LC1@l(9)
	lis 9,.LC2@ha
	lfd 30,.LC2@l(9)
	lis 9,.LC4@ha
	fmul 0,1,29
	lfs 31,.LC4@l(9)
	addi 9,1,24
	.loc 1 142 0
	lfs 1,8(31)
	.loc 1 139 0
	fdiv 0,0,30
	fmul 0,0,31
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 31,24(1)
.LVL31:
	.loc 1 142 0
	bl acos
.LVL32:
	fmul 29,1,29
	addi 9,1,28
	.loc 1 146 0
	stb 31,9(1)
	.loc 1 142 0
	fdiv 30,29,30
	fmul 31,30,31
	fctiwz 31,31
	stfiwx 31,0,9
	lwz 0,28(1)
.LVL33:
.LBE2:
	.loc 1 150 0
	lwz 31,36(1)
.LVL34:
.LBB3:
	.loc 1 145 0
	stb 0,8(1)
.LBE3:
	.loc 1 150 0
	lwz 0,68(1)
.LVL35:
	lhz 3,8(1)
	mtlr 0
	lfd 29,40(1)
	lfd 30,48(1)
	lfd 31,56(1)
	addi 1,1,64
	.cfi_remember_state
.LCFI6:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 62
	.cfi_restore 61
	.cfi_restore 31
	blr
.LVL36:
.L31:
.LCFI7:
	.cfi_restore_state
	.loc 1 128 0
	lfs 13,8(3)
	fcmpu 7,13,0
	bng- 7,.L30
	.loc 1 129 0
	li 0,0
	.loc 1 150 0
	lwz 31,36(1)
	.loc 1 130 0
	stb 0,8(1)
	.loc 1 131 0
	stb 0,9(1)
	.loc 1 150 0
	lwz 0,68(1)
.LVL37:
	lhz 3,8(1)
.LVL38:
	mtlr 0
	lfd 29,40(1)
	lfd 30,48(1)
	lfd 31,56(1)
	addi 1,1,64
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI8:
	.cfi_def_cfa_offset 0
	blr
.LVL39:
.L30:
.LCFI9:
	.cfi_restore_state
	.loc 1 133 0
	li 0,-128
	.loc 1 150 0
	lwz 31,36(1)
	.loc 1 133 0
	stb 0,8(1)
	.loc 1 134 0
	li 0,0
	stb 0,9(1)
	.loc 1 150 0
	lwz 0,68(1)
.LVL40:
	lhz 3,8(1)
.LVL41:
	mtlr 0
	lfd 29,40(1)
	lfd 30,48(1)
	lfd 31,56(1)
	addi 1,1,64
	.cfi_restore 31
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI10:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE40:
	.size	NormalToLatLong, .-NormalToLatLong
	.align 2
	.globl GL_MakeAliasModelDisplayLists
	.type	GL_MakeAliasModelDisplayLists, @function
GL_MakeAliasModelDisplayLists:
.LFB41:
	.loc 1 167 0
	.cfi_startproc
.LVL42:
	mflr 0
	stwu 1,-320(1)
.LCFI11:
	.cfi_def_cfa_offset 320
	.cfi_register 65, 0
	.loc 1 181 0
	lis 11,aliasmodel@ha
	.loc 1 167 0
	stw 24,264(1)
	.loc 1 182 0
	lis 24,paliashdr@ha
	.cfi_offset 24, -56
	.loc 1 167 0
	stw 0,324(1)
	stfd 29,296(1)
	.loc 1 237 0
	lwz 0,64(4)
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	.loc 1 227 0
	lwz 9,60(4)
	.loc 1 237 0
	cmpwi 7,0,0
	.loc 1 167 0
	stfd 30,304(1)
	stfd 31,312(1)
	stw 14,224(1)
	stw 15,228(1)
	stw 16,232(1)
	stw 17,236(1)
	stw 18,240(1)
	stw 19,244(1)
	stw 20,248(1)
	stw 21,252(1)
	stw 22,256(1)
	stw 23,260(1)
	stw 25,268(1)
	stw 26,272(1)
	stw 27,276(1)
	stw 28,280(1)
	stw 29,284(1)
	stw 30,288(1)
	stw 31,292(1)
	.loc 1 181 0
	stw 3,aliasmodel@l(11)
	.loc 1 182 0
	stw 4,paliashdr@l(24)
	.loc 1 227 0
	stw 9,112(4)
.LVL43:
	.loc 1 237 0
	ble- 7,.L81
	.cfi_offset 31, -28
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	.cfi_offset 28, -40
	.cfi_offset 27, -44
	.cfi_offset 26, -48
	.cfi_offset 25, -52
	.cfi_offset 23, -60
	.cfi_offset 22, -64
	.cfi_offset 21, -68
	.cfi_offset 20, -72
	.cfi_offset 19, -76
	.cfi_offset 18, -80
	.cfi_offset 17, -84
	.cfi_offset 16, -88
	.cfi_offset 15, -92
	.cfi_offset 14, -96
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.loc 1 166 0
	mulli 0,0,28
	.loc 1 237 0
	lis 9,triangles+16@ha
	la 9,triangles+16@l(9)
	.loc 1 166 0
	add 11,9,0
	.loc 1 239 0
	li 0,-1
.LVL44:
.L34:
	.loc 1 239 0 is_stmt 0 discriminator 1
	stw 0,0(9)
.LVL45:
	stw 0,4(9)
.LVL46:
	stw 0,8(9)
.LVL47:
	addi 9,9,28
	.loc 1 237 0 is_stmt 1 discriminator 1
	cmpw 7,9,11
	bne+ 7,.L34
.LVL48:
	lis 28,triangles@ha
	.loc 1 237 0 is_stmt 0
	lwz 5,64(4)
	li 29,0
	la 28,triangles@l(28)
.LVL49:
.L35:
	.loc 1 166 0 is_stmt 1
	mulli 30,29,28
	li 31,0
	addi 30,30,12
	add 30,28,30
.LVL50:
.L37:
	.loc 1 249 0
	lwzu 0,4(30)
	cmpwi 7,0,-1
	beq- 7,.L103
.L36:
.LVL51:
	.loc 1 247 0
	cmpwi 7,31,2
	addi 31,31,1
.LVL52:
	bne+ 7,.L37
	.loc 1 246 0
	addi 29,29,1
.LVL53:
	cmpw 7,29,5
	blt+ 7,.L35
.LVL54:
	.loc 1 256 0
	lwz 31,112(4)
.LVL55:
	cmpwi 7,31,0
	bgt+ 7,.L104
.LVL56:
.L38:
	.loc 1 261 0
	lwz 0,64(4)
	cmpwi 7,0,0
	ble- 7,.L40
	.loc 1 263 0
	lis 7,stverts@ha
	.loc 1 265 0
	lis 6,dupIndex@ha
	.loc 1 261 0
	lwz 4,paliashdr@l(24)
	mr 11,28
	li 8,0
	.loc 1 263 0
	la 7,stverts@l(7)
	.loc 1 265 0
	la 6,dupIndex@l(6)
.LVL57:
.L41:
	.loc 1 263 0 discriminator 1
	lwz 0,0(11)
	li 9,0
	cmpwi 6,0,0
.LVL58:
.L43:
	.loc 1 166 0
	add 10,11,9
	.loc 1 262 0
	cmpwi 7,9,8
	.loc 1 263 0
	bne- 6,.L42
	.loc 1 263 0 is_stmt 0 discriminator 1
	lwz 0,4(10)
	mulli 10,0,12
	.loc 1 265 0 is_stmt 1 discriminator 1
	slwi 0,0,2
	.loc 1 263 0 discriminator 1
	lwzx 10,7,10
	cmpwi 1,10,0
	beq- 1,.L42
	.loc 1 265 0
	lwzx 10,6,0
	cmpwi 1,10,0
	bne- 1,.L42
	.loc 1 268 0
	stwx 31,6,0
	.loc 1 269 0
	addi 31,31,1
.LVL59:
.L42:
	.loc 1 262 0
	addi 9,9,4
	bne+ 7,.L43
	.loc 1 261 0
	lwz 0,64(4)
	addi 8,8,1
.LVL60:
	addi 11,11,28
	cmpw 7,0,8
	bgt+ 7,.L41
.LVL61:
.L40:
	.loc 1 274 0 discriminator 1
	cmpwi 7,31,0
	ble- 7,.L44
	.loc 1 275 0
	slwi 11,31,2
	.loc 1 274 0
	lis 9,dupIndex-4@ha
	.loc 1 275 0
	addi 11,11,-4
	.loc 1 274 0
	la 9,dupIndex-4@l(9)
	.loc 1 275 0
	srwi 11,11,2
	li 0,0
	addi 11,11,1
	mtctr 11
.LVL62:
.L45:
	.loc 1 275 0 is_stmt 0 discriminator 2
	stwu 0,4(9)
	.loc 1 274 0 is_stmt 1 discriminator 2
	bdnz .L45
.L44:
	.loc 1 278 0
	lwz 3,108(4)
	lis 27,pheader@ha
	mullw 3,31,3
	slwi 3,3,4
	bl Hunk_Alloc
	.loc 1 279 0
	lwz 9,paliashdr@l(24)
	.loc 1 278 0
	mr 26,3
.LVL63:
	.loc 1 281 0
	lwz 11,64(9)
	.loc 1 279 0
	subf 0,9,3
	stw 0,116(9)
.LVL64:
	.loc 1 281 0
	cmpwi 7,11,0
	ble- 7,.L47
	lis 27,pheader@ha
	lis 17,stverts@ha
	lis 22,r_avertexnormals@ha
.LBB4:
	.loc 1 297 0
	stw 31,220(1)
	stw 27,216(1)
.LBE4:
	.loc 1 166 0
	addi 18,28,12
	.loc 1 281 0
	li 16,0
	la 17,stverts@l(17)
	.loc 1 166 0
	slwi 21,31,4
	la 22,r_avertexnormals@l(22)
.LBB5:
	.loc 1 323 0
	lis 29,0x4330
.LVL65:
.L59:
.LBE5:
	.loc 1 166 0
	mulli 19,16,28
	add 19,28,19
.LVL66:
.L58:
	.loc 1 286 0
	lwz 0,-12(18)
	.loc 1 283 0
	lwzu 11,4(19)
	.loc 1 286 0
	cmpwi 7,0,0
	.loc 1 283 0
	mulli 0,11,12
	add 10,17,0
	lwz 14,4(10)
.LVL67:
	.loc 1 284 0
	lwz 20,8(10)
.LVL68:
	.loc 1 286 0
	bne- 7,.L48
	.loc 1 286 0 is_stmt 0 discriminator 1
	lwzx 0,17,0
	cmpwi 7,0,0
	beq- 7,.L48
.LBB6:
	.loc 1 289 0 is_stmt 1
	lis 10,dupIndex@ha
.LVL69:
	slwi 0,11,2
	la 10,dupIndex@l(10)
	lwzx 11,10,0
	cmpwi 7,11,0
	beq- 7,.L52
	.loc 1 290 0
	stw 11,0(19)
.LVL70:
.L51:
.LBE6:
	.loc 1 282 0
	cmpw 7,18,19
	bne+ 7,.L58
	.loc 1 281 0
	lwz 0,64(9)
	addi 16,16,1
.LVL71:
	addi 18,18,28
	cmpw 7,0,16
	bgt+ 7,.L59
	lwz 31,220(1)
	lwz 27,216(1)
.LVL72:
.L47:
	.loc 1 332 0
	lwz 4,112(9)
	cmpw 7,4,31
	beq- 7,.L60
	.loc 1 333 0
	lis 3,.LC9@ha
	mr 5,31
	la 3,.LC9@l(3)
	crxor 6,6,6
	bl Con_Printf
.L60:
	.loc 1 350 0
	lwz 9,paliashdr@l(24)
	lwz 3,112(9)
	slwi 3,3,3
	bl Hunk_Alloc
	.loc 1 351 0
	lwz 7,paliashdr@l(24)
	.loc 1 350 0
	mr 17,3
.LVL73:
	.loc 1 352 0
	lwz 0,112(7)
	.loc 1 351 0
	subf 9,7,3
	stw 9,140(7)
.LVL74:
	.loc 1 352 0
	cmpwi 7,0,0
	ble- 7,.L61
	lwz 11,pheader@l(27)
	lis 9,0x4330
	.loc 1 166 0
	mulli 0,0,12
	.loc 1 352 0
	lwz 10,52(11)
	stw 9,176(1)
	xoris 10,10,0x8000
	stw 10,180(1)
	lis 10,.LC8@ha
	lfs 13,.LC8@l(10)
	lwz 11,56(11)
	stw 9,184(1)
	fmr 0,13
	xoris 11,11,0x8000
	lfd 9,176(1)
	stw 11,188(1)
	lis 9,stverts+4@ha
	.loc 1 357 0
	lis 11,.LC11@ha
	.loc 1 352 0
	la 9,stverts+4@l(9)
	lfd 10,184(1)
	fsub 9,9,0
	.loc 1 166 0
	add 6,9,0
	.loc 1 353 0
	lis 0,0x4330
	.loc 1 352 0
	fsub 10,10,0
	.loc 1 357 0
	lfs 0,.LC11@l(11)
	.loc 1 352 0
	mr 11,3
.LVL75:
.L62:
	.loc 1 353 0 discriminator 2
	lwz 8,0(9)
	.loc 1 354 0 discriminator 2
	lwz 10,4(9)
	.loc 1 360 0 discriminator 2
	addi 9,9,12
.LVL76:
	.loc 1 353 0 discriminator 2
	xoris 8,8,0x8000
	stw 0,192(1)
	.loc 1 354 0 discriminator 2
	xoris 10,10,0x8000
	.loc 1 353 0 discriminator 2
	stw 8,196(1)
	.loc 1 354 0 discriminator 2
	stw 10,204(1)
	.loc 1 352 0 discriminator 2
	cmpw 7,9,6
	.loc 1 354 0 discriminator 2
	stw 0,200(1)
	.loc 1 353 0 discriminator 2
	lfd 11,192(1)
	.loc 1 354 0 discriminator 2
	lfd 12,200(1)
	.loc 1 353 0 discriminator 2
	fsub 11,11,13
	.loc 1 354 0 discriminator 2
	fsub 12,12,13
	.loc 1 353 0 discriminator 2
	frsp 11,11
	.loc 1 354 0 discriminator 2
	frsp 12,12
	.loc 1 357 0 discriminator 2
	fsub 11,11,0
	.loc 1 358 0 discriminator 2
	fsub 12,12,0
	.loc 1 357 0 discriminator 2
	fdiv 11,11,9
.LVL77:
	.loc 1 358 0 discriminator 2
	fdiv 12,12,10
.LVL78:
	.loc 1 357 0 discriminator 2
	frsp 11,11
.LVL79:
	.loc 1 358 0 discriminator 2
	frsp 12,12
.LVL80:
	.loc 1 357 0 discriminator 2
	stfs 11,0(11)
	.loc 1 358 0 discriminator 2
	stfs 12,4(11)
	.loc 1 360 0 discriminator 2
	addi 11,11,8
	.loc 1 352 0 discriminator 2
	bne+ 7,.L62
.LVL81:
.L61:
	.loc 1 364 0
	lwz 3,64(7)
.LVL82:
	mulli 3,3,28
	bl Hunk_Alloc
	.loc 1 365 0
	lwz 9,paliashdr@l(24)
	.loc 1 366 0
	mr 4,28
	.loc 1 364 0
	mr 14,3
.LVL83:
	.loc 1 366 0
	lwz 5,64(9)
	.loc 1 365 0
	subf 0,9,3
	stw 0,124(9)
	.loc 1 366 0
	mulli 5,5,28
	bl Q_memcpy
.LVL84:
	.loc 1 369 0
	lwz 9,paliashdr@l(24)
	lwz 0,108(9)
	lwz 3,64(9)
	mullw 3,3,0
	slwi 3,3,4
	bl Hunk_Alloc
	.loc 1 370 0
	lwz 9,paliashdr@l(24)
	.loc 1 369 0
	mr 28,3
.LVL85:
	.loc 1 371 0
	lwz 11,108(9)
	.loc 1 370 0
	subf 0,9,3
	stw 0,128(9)
.LVL86:
	.loc 1 371 0
	cmpwi 7,11,0
	lwz 3,64(9)
.LVL87:
	ble- 7,.L67
	li 30,0
	lis 20,paliashdr@ha
	lis 21,.LC12@ha
	addi 29,1,104
.LVL88:
.L64:
	.loc 1 372 0 discriminator 1
	cmpwi 7,3,0
	ble- 7,.L68
	.loc 1 166 0
	addi 25,14,-4
	li 31,0
	la 23,paliashdr@l(20)
	la 22,.LC12@l(21)
.LVL89:
.L66:
	.loc 1 460 0
	lwz 6,112(9)
	.loc 1 166 0
	mr 11,25
	.loc 1 460 0
	addi 9,1,68
	mullw 6,30,6
.LVL90:
.L65:
	.loc 1 371 0
	addi 11,11,4
	.loc 1 376 0
	lwz 0,4(11)
	add 0,6,0
	slwi 0,0,4
	add 10,26,0
.LVL91:
	.loc 1 378 0
	lwzx 7,26,0
	lwz 8,4(10)
	lwz 0,8(10)
	stw 7,0(9)
.LVL92:
	stw 8,4(9)
.LVL93:
	stw 0,8(9)
.LVL94:
	addi 9,9,12
	.loc 1 375 0
	cmpw 7,9,29
	bne+ 7,.L65
	.loc 1 382 0
	lfs 30,68(1)
	.loc 1 384 0
	addi 4,1,56
	.loc 1 382 0
	lfs 12,80(1)
	.loc 1 384 0
	addi 5,1,32
	.loc 1 383 0
	lfs 8,92(1)
	.loc 1 384 0
	addi 3,1,44
	.loc 1 382 0
	fsubs 9,30,12
	lfs 29,72(1)
	.loc 1 383 0
	fsubs 12,8,12
	.loc 1 382 0
	lfs 13,84(1)
	.loc 1 383 0
	lfs 8,96(1)
	.loc 1 372 0
	addi 25,25,28
	.loc 1 382 0
	fsubs 10,29,13
	lfs 31,76(1)
	.loc 1 383 0
	fsubs 13,8,13
	.loc 1 382 0
	lfs 0,88(1)
	.loc 1 383 0
	lfs 8,100(1)
	.loc 1 382 0
	fsubs 11,31,0
	stfs 9,56(1)
	.loc 1 383 0
	fsubs 0,8,0
	stfs 13,48(1)
	.loc 1 382 0
	stfs 10,60(1)
	stfs 11,64(1)
	.loc 1 383 0
	stfs 12,44(1)
	stfs 0,52(1)
	.loc 1 384 0
	bl CrossProduct
.LVL95:
	.loc 1 385 0
	addi 3,1,32
	bl Length
	lfs 0,0(22)
	lwz 9,0(23)
	addi 3,1,32
	fdivs 1,0,1
	lwz 4,64(9)
	mullw 4,30,4
	add 4,4,31
	slwi 4,4,4
	add 4,28,4
	bl VectorScale
	.loc 1 388 0
	lwz 9,0(23)
	lwz 3,64(9)
	mullw 0,3,30
	add 0,0,31
	.loc 1 372 0
	addi 31,31,1
.LVL96:
	.loc 1 388 0
	slwi 0,0,4
	.loc 1 372 0
	cmpw 7,3,31
	.loc 1 388 0
	add 11,28,0
	lfsx 13,28,0
	lfs 0,4(11)
	fmuls 29,29,0
	lfs 0,8(11)
	fmadds 30,30,13,29
	fmadds 31,31,0,30
	stfs 31,12(11)
	.loc 1 372 0
	bgt+ 7,.L66
.LVL97:
.L68:
	.loc 1 371 0
	lwz 0,108(9)
	addi 30,30,1
.LVL98:
	cmpw 7,0,30
	bgt+ 7,.L64
.LVL99:
.L67:
	.loc 1 394 0
	mulli 3,3,12
	bl Hunk_Alloc
.LVL100:
	.loc 1 395 0
	lwz 10,paliashdr@l(24)
	.loc 1 396 0
	lwz 9,64(10)
	.loc 1 395 0
	subf 0,10,3
	stw 0,144(10)
.LVL101:
	.loc 1 396 0
	cmpwi 7,9,0
	ble- 7,.L69
	lis 9,triangles+4@ha
	li 11,0
	la 9,triangles+4@l(9)
.LVL102:
.L70:
	.loc 1 399 0 discriminator 1
	lwz 0,0(9)
	.loc 1 396 0 discriminator 1
	addi 11,11,1
	.loc 1 399 0 discriminator 1
	stw 0,0(3)
.LVL103:
	lwz 0,4(9)
	stw 0,4(3)
.LVL104:
	lwz 0,8(9)
	.loc 1 396 0 discriminator 1
	addi 9,9,28
	.loc 1 399 0 discriminator 1
	stw 0,8(3)
	.loc 1 166 0 discriminator 1
	addi 3,3,12
.LVL105:
	.loc 1 396 0 discriminator 1
	lwz 0,64(10)
	cmpw 7,0,11
	bgt+ 7,.L70
.LVL106:
.L69:
	.loc 1 406 0
	lwz 0,108(10)
	.loc 1 412 0
	li 28,0
.LVL107:
	.loc 1 406 0
	lwz 3,112(10)
.LVL108:
	.loc 1 403 0
	lwz 9,pheader@l(27)
	.loc 1 406 0
	mullw 3,3,0
	.loc 1 403 0
	lwz 0,144(9)
	add 0,9,0
	.loc 1 406 0
	mulli 3,3,12
	.loc 1 403 0
	stw 0,216(1)
.LVL109:
	.loc 1 406 0
	bl Hunk_Alloc
.LVL110:
	.loc 1 409 0
	lwz 11,pheader@l(27)
	.loc 1 406 0
	mr 30,3
.LVL111:
	.loc 1 407 0
	lwz 9,paliashdr@l(24)
	.loc 1 409 0
	lwz 3,112(11)
.LVL112:
	lwz 11,108(11)
	.loc 1 407 0
	subf 0,9,30
	stw 0,132(9)
	.loc 1 409 0
	mullw 3,3,11
	mulli 3,3,12
	bl Hunk_Alloc
	.loc 1 412 0
	lwz 8,paliashdr@l(24)
	.loc 1 410 0
	lwz 6,pheader@l(27)
	.loc 1 409 0
	mr 29,3
.LVL113:
	.loc 1 412 0
	lwz 9,108(8)
	.loc 1 410 0
	subf 0,6,3
	.loc 1 412 0
	cmpwi 7,9,0
	.loc 1 410 0
	stw 0,136(6)
.LVL114:
	.loc 1 412 0
	ble- 7,.L32
	lis 23,numNormals@ha
	.loc 1 415 0 discriminator 1
	li 25,0
	.loc 1 416 0 discriminator 1
	li 31,0
	la 23,numNormals@l(23)
	.loc 1 443 0 discriminator 1
	lis 20,0x4330
	lis 21,.LC8@ha
.LVL115:
.L100:
	.loc 1 415 0 discriminator 1
	lwz 0,112(6)
	cmpwi 7,0,0
	ble- 7,.L80
	.loc 1 415 0 is_stmt 0
	lis 10,numNormals-4@ha
	lwz 5,pheader@l(27)
	la 7,numNormals-4@l(10)
	li 9,0
.LVL116:
.L73:
	.loc 1 416 0 is_stmt 1 discriminator 2
	mullw 0,28,0
	add 0,0,9
	.loc 1 415 0 discriminator 2
	addi 9,9,1
.LVL117:
	.loc 1 416 0 discriminator 2
	mulli 0,0,12
	add 10,30,0
	.loc 1 419 0 discriminator 2
	add 11,29,0
	.loc 1 416 0 discriminator 2
	stwx 31,30,0
	.loc 1 417 0 discriminator 2
	stw 31,4(10)
	.loc 1 418 0 discriminator 2
	stw 31,8(10)
	.loc 1 419 0 discriminator 2
	stwx 31,29,0
	.loc 1 420 0 discriminator 2
	stw 31,4(11)
	.loc 1 421 0 discriminator 2
	stw 31,8(11)
	.loc 1 422 0 discriminator 2
	stwu 25,4(7)
	.loc 1 415 0 discriminator 2
	lwz 0,112(5)
	cmpw 7,0,9
	bgt+ 7,.L73
.LVL118:
.L80:
	.loc 1 427 0 discriminator 1
	lwz 0,64(8)
	cmpwi 7,0,0
	ble- 7,.L74
	lis 9,paliashdr@ha
	lis 10,pheader@ha
	.loc 1 427 0 is_stmt 0
	lwz 18,216(1)
	mr 22,14
	li 19,0
	la 15,paliashdr@l(9)
	la 16,pheader@l(10)
.LVL119:
.L76:
.LBB7:
	.loc 1 429 0 is_stmt 1
	lwz 4,112(6)
	mr 3,18
	addi 6,1,20
	mr 5,17
	mullw 4,28,4
	addi 7,1,8
	slwi 4,4,4
	add 4,26,4
	bl TangentForTri
.LVL120:
	lwz 8,0(15)
	lwz 6,0(16)
	li 10,0
.LVL121:
.L75:
	.loc 1 432 0 discriminator 2
	lwz 9,112(8)
	.loc 1 166 0 discriminator 2
	add 11,22,10
	.loc 1 431 0 discriminator 2
	lwz 7,4(11)
.LVL122:
	.loc 1 430 0 discriminator 2
	cmpwi 7,10,8
	.loc 1 432 0 discriminator 2
	mullw 9,28,9
	lfs 0,20(1)
	.loc 1 434 0 discriminator 2
	lwz 0,112(6)
	.loc 1 430 0 discriminator 2
	addi 10,10,4
	.loc 1 432 0 discriminator 2
	add 9,9,7
	.loc 1 434 0 discriminator 2
	mullw 0,28,0
	.loc 1 432 0 discriminator 2
	mulli 9,9,12
	.loc 1 434 0 discriminator 2
	add 0,0,7
	.loc 1 436 0 discriminator 2
	slwi 7,7,2
	.loc 1 434 0 discriminator 2
	mulli 0,0,12
	.loc 1 432 0 discriminator 2
	lfsx 13,30,9
	add 11,30,9
.LVL123:
	.loc 1 436 0 discriminator 2
	lwzx 5,23,7
	.loc 1 432 0 discriminator 2
	fadds 0,13,0
	.loc 1 436 0 discriminator 2
	addi 5,5,1
	.loc 1 432 0 discriminator 2
	stfsx 0,30,9
	.loc 1 434 0 discriminator 2
	add 9,29,0
	.loc 1 432 0 discriminator 2
	lfs 12,4(11)
	lfs 0,24(1)
	lfs 13,8(11)
	fadds 0,12,0
	stfs 0,4(11)
	lfs 0,28(1)
	fadds 0,13,0
	stfs 0,8(11)
	.loc 1 434 0 discriminator 2
	lfsx 13,29,0
	lfs 0,8(1)
	fadds 0,13,0
	stfsx 0,29,0
	lfs 12,4(9)
	lfs 0,12(1)
	lfs 13,8(9)
	fadds 0,12,0
	stfs 0,4(9)
	lfs 0,16(1)
	fadds 0,13,0
	stfs 0,8(9)
	.loc 1 436 0 discriminator 2
	stwx 5,23,7
	.loc 1 430 0 discriminator 2
	bne+ 7,.L75
.LBE7:
	.loc 1 427 0
	lwz 0,64(8)
	addi 19,19,1
.LVL124:
	addi 18,18,12
	addi 22,22,28
	cmpw 7,0,19
	bgt+ 7,.L76
.LVL125:
.L74:
	.loc 1 441 0 discriminator 1
	lwz 11,112(8)
	cmpwi 7,11,0
	ble- 7,.L77
	.loc 1 441 0 is_stmt 0
	lis 9,numNormals-4@ha
	mr 0,11
	la 19,numNormals-4@l(9)
	li 22,0
	b .L79
.LVL126:
.L78:
	addi 22,22,1
.LVL127:
	mr 11,0
	cmpw 7,22,0
	bge- 7,.L77
.LVL128:
.L79:
	.loc 1 442 0 is_stmt 1
	lwzu 9,4(19)
	cmpwi 7,9,0
	beq+ 7,.L78
	.loc 1 443 0
	xoris 9,9,0x8000
	stw 20,208(1)
	stw 9,212(1)
	mullw 11,28,11
	lfs 0,.LC8@l(21)
	lfd 13,208(1)
	.loc 1 447 0
	lwz 9,pheader@l(27)
	.loc 1 443 0
	fsub 0,13,0
	add 10,11,22
	mulli 10,10,12
	.loc 1 444 0
	mullw 8,28,0
	.loc 1 447 0
	lwz 0,112(9)
	.loc 1 443 0
	frsp 0,0
	lfsx 13,30,10
	add 11,30,10
	.loc 1 451 0
	mr 3,11
	.loc 1 443 0
	fdivs 13,13,0
	.loc 1 444 0
	add 8,8,22
	mulli 8,8,12
	.loc 1 447 0
	mullw 0,28,0
	.loc 1 444 0
	add 8,30,8
	.loc 1 447 0
	add 0,0,22
	mulli 0,0,12
	add 9,29,0
	.loc 1 443 0
	stfsx 13,30,10
	.loc 1 444 0
	lfs 13,4(8)
	fdivs 13,13,0
	stfs 13,4(8)
	.loc 1 445 0
	lfs 13,8(11)
	fdivs 13,13,0
	stfs 13,8(11)
	.loc 1 447 0
	lfsx 13,29,0
	fdivs 13,13,0
	stfsx 13,29,0
	.loc 1 449 0
	lfs 12,8(9)
	.loc 1 448 0
	lfs 13,4(9)
	fdivs 13,13,0
	.loc 1 449 0
	fdivs 0,12,0
	.loc 1 448 0
	stfs 13,4(9)
	.loc 1 449 0
	stfs 0,8(9)
	.loc 1 451 0
	bl VectorNormalize
	.loc 1 452 0
	lwz 9,paliashdr@l(24)
	lwz 3,112(9)
	mullw 3,28,3
	add 3,3,22
	mulli 3,3,12
	add 3,29,3
	bl VectorNormalize
	.loc 1 454 0
	lwz 9,pheader@l(27)
	addi 4,1,32
	lwz 9,112(9)
	mullw 9,28,9
	add 9,9,22
	slwi 9,9,4
	add 9,26,9
	lwz 3,12(9)
	bl DecodeNormal
	.loc 1 456 0
	lwz 9,pheader@l(27)
	addi 3,1,32
	lwz 4,112(9)
	mullw 4,28,4
	add 4,4,22
	mulli 4,4,12
	add 4,30,4
	mr 5,4
	bl Orthogonalize
	.loc 1 457 0
	lwz 9,pheader@l(27)
	addi 3,1,32
	lwz 4,112(9)
	mullw 4,28,4
	add 4,4,22
	.loc 1 441 0
	addi 22,22,1
	.loc 1 457 0
	mulli 4,4,12
	add 4,29,4
	mr 5,4
	bl Orthogonalize
.LVL129:
	lwz 8,paliashdr@l(24)
	lwz 0,112(8)
	.loc 1 441 0
	cmpw 7,22,0
	mr 11,0
	blt+ 7,.L79
.LVL130:
.L77:
	.loc 1 412 0
	lwz 0,108(8)
	addi 28,28,1
.LVL131:
	cmpw 7,0,28
	ble- 7,.L32
	lwz 6,pheader@l(27)
	b .L100
.LVL132:
.L81:
	.loc 1 256 0
	lwz 31,112(4)
	lis 28,triangles@ha
	la 28,triangles@l(28)
	cmpwi 7,31,0
	ble- 7,.L38
.LVL133:
.L104:
	lis 11,dupIndex-4@ha
	li 9,0
	la 11,dupIndex-4@l(11)
	.loc 1 257 0
	li 0,0
.LVL134:
.L39:
	.loc 1 257 0 is_stmt 0 discriminator 2
	stwu 0,4(11)
	.loc 1 256 0 is_stmt 1 discriminator 2
	addi 9,9,1
.LVL135:
	lwz 31,112(4)
	cmpw 7,31,9
	bgt+ 7,.L39
	b .L38
.LVL136:
.L103:
	.loc 1 250 0
	mr 4,31
	mr 3,29
	bl findneighbour
	lwz 4,paliashdr@l(24)
	stw 3,0(30)
	lwz 5,64(4)
	b .L36
.LVL137:
.L48:
.LBB8:
	.loc 1 322 0 discriminator 1
	lwz 0,108(9)
	cmpwi 7,0,0
	ble- 7,.L51
.LBE8:
	.loc 1 286 0
	slwi 0,11,2
.LBB9:
	.loc 1 323 0
	lis 10,.LC8@ha
.LBE9:
	slwi 11,11,4
.LBB10:
	lfs 31,.LC8@l(10)
.LBE10:
	add 30,26,11
	.loc 1 286 0
	lis 10,poseverts-4@ha
	lis 11,paliashdr@ha
	mr 20,0
.LVL138:
	la 23,poseverts-4@l(10)
.LBB11:
	.loc 1 166 0
	li 25,0
	la 15,paliashdr@l(11)
	b .L57
.LVL139:
.L105:
	.loc 1 322 0
	lwz 11,0(19)
	slwi 0,11,2
.LVL140:
.L57:
	.loc 1 323 0 discriminator 2
	lwzu 11,4(23)
	.loc 1 322 0 discriminator 2
	addi 25,25,1
	.loc 1 323 0 discriminator 2
	lbzx 10,11,20
	stw 29,152(1)
	xoris 10,10,0x8000
	stw 10,156(1)
	add 10,11,20
	.loc 1 327 0 discriminator 2
	add 11,11,0
	.loc 1 323 0 discriminator 2
	lfd 0,152(1)
	lfs 12,8(9)
	fsub 0,0,31
	lfs 13,20(9)
	frsp 0,0
	fmadds 0,0,12,13
	stfs 0,0(30)
	.loc 1 324 0 discriminator 2
	lbz 0,1(10)
	stw 29,160(1)
	xoris 0,0,0x8000
	stw 0,164(1)
	lfd 0,160(1)
	lfs 12,12(9)
	fsub 0,0,31
	lfs 13,24(9)
	frsp 0,0
	fmadds 0,0,12,13
	stfs 0,4(30)
	.loc 1 325 0 discriminator 2
	lbz 0,2(10)
	stw 29,168(1)
	xoris 0,0,0x8000
	stw 0,172(1)
	lfd 0,168(1)
	lfs 12,16(9)
	fsub 0,0,31
	lfs 13,28(9)
	frsp 0,0
	fmadds 0,0,12,13
	stfs 0,8(30)
	.loc 1 327 0 discriminator 2
	lbz 3,3(11)
	mulli 3,3,12
	add 3,22,3
	bl NormalToLatLong
.LVL141:
	.loc 1 322 0 discriminator 2
	lwz 9,0(15)
	.loc 1 327 0 discriminator 2
	stw 3,12(30)
	.loc 1 322 0 discriminator 2
	add 30,30,21
	lwz 0,108(9)
	cmpw 7,0,25
	bgt+ 7,.L105
	b .L51
.LVL142:
.L52:
.LBE11:
.LBB12:
	.loc 1 294 0
	lwz 31,112(9)
.LVL143:
	.loc 1 296 0
	cmpwi 7,31,2047
	bgt- 7,.L106
.LVL144:
	.loc 1 301 0 discriminator 1
	lwz 11,108(9)
	cmpwi 7,11,0
	ble- 7,.L82
.LVL145:
.L107:
	.loc 1 302 0
	lis 10,.LC8@ha
	.loc 1 301 0
	lis 11,poseverts-4@ha
	.loc 1 302 0
	slwi 30,31,4
	lfs 31,.LC8@l(10)
	.loc 1 301 0
	la 23,poseverts-4@l(11)
	lis 10,paliashdr@ha
	lis 11,.LC8@ha
	.loc 1 302 0
	add 30,26,30
.LBE12:
	.loc 1 166 0
	li 25,0
	la 15,paliashdr@l(10)
	la 27,.LC8@l(11)
.LVL146:
.L56:
.LBB13:
	.loc 1 302 0 discriminator 2
	lwzu 11,4(23)
	.loc 1 301 0 discriminator 2
	addi 25,25,1
	.loc 1 302 0 discriminator 2
	lbzx 10,11,0
	add 11,11,0
	stw 29,104(1)
	xoris 10,10,0x8000
	stw 10,108(1)
	lfd 0,104(1)
	lfs 12,8(9)
	fsub 0,0,31
	lfs 13,20(9)
	frsp 0,0
	fmadds 0,0,12,13
	stfs 0,0(30)
	.loc 1 303 0 discriminator 2
	lbz 0,1(11)
	stw 29,112(1)
	xoris 0,0,0x8000
	stw 0,116(1)
	lfd 0,112(1)
	lfs 12,12(9)
	fsub 0,0,31
	lfs 13,24(9)
	frsp 0,0
	fmadds 0,0,12,13
	stfs 0,4(30)
	.loc 1 304 0 discriminator 2
	lbz 0,2(11)
	stw 29,120(1)
	xoris 0,0,0x8000
	stw 0,124(1)
	lfd 0,120(1)
	lfs 12,16(9)
	fsub 0,0,31
	lfs 13,28(9)
	frsp 0,0
	fmadds 0,0,12,13
	stfs 0,8(30)
	.loc 1 305 0 discriminator 2
	lbz 3,3(11)
	mulli 3,3,12
	add 3,22,3
	bl NormalToLatLong
.LVL147:
	.loc 1 301 0 discriminator 2
	lwz 9,0(15)
	.loc 1 305 0 discriminator 2
	stw 3,12(30)
	.loc 1 301 0 discriminator 2
	add 30,30,21
	lwz 11,0(19)
	lwz 0,108(9)
	cmpw 7,0,25
	slwi 0,11,2
	bgt+ 7,.L56
.LVL148:
.L54:
	.loc 1 309 0
	lwz 10,216(1)
.LBE13:
	.loc 1 283 0
	xoris 14,14,0x8000
.LVL149:
	stw 14,132(1)
	.loc 1 284 0
	xoris 20,20,0x8000
.LVL150:
	.loc 1 283 0
	stw 29,128(1)
.LBB14:
	.loc 1 309 0
	lwz 11,pheader@l(10)
.LBE14:
	.loc 1 283 0
	lfd 13,128(1)
.LBB15:
	.loc 1 309 0
	lwz 11,52(11)
	stw 29,136(1)
	srawi 11,11,1
	addze 11,11
.LBE15:
	.loc 1 283 0
	lfs 0,0(27)
.LBB16:
	.loc 1 309 0
	xoris 11,11,0x8000
.LBE16:
	.loc 1 284 0
	stw 20,148(1)
.LBB17:
	.loc 1 309 0
	stw 11,140(1)
.LBE17:
	.loc 1 283 0
	fsub 13,13,0
	.loc 1 284 0
	stw 29,144(1)
.LBB18:
	.loc 1 314 0
	lis 11,dupIndex@ha
	.loc 1 309 0
	lfd 12,136(1)
	.loc 1 314 0
	la 11,dupIndex@l(11)
.LBE18:
	.loc 1 284 0
	lfd 11,144(1)
	.loc 1 283 0
	frsp 13,13
.LVL151:
.LBB19:
	.loc 1 309 0
	fsub 12,12,0
	.loc 1 314 0
	stwx 31,11,0
.LBE19:
	.loc 1 284 0
	fsub 0,11,0
.LBB20:
	.loc 1 315 0
	stw 31,0(19)
	.loc 1 310 0
	mulli 11,31,12
	.loc 1 309 0
	frsp 12,12
	.loc 1 318 0
	lwz 0,112(9)
.LBE20:
	.loc 1 284 0
	frsp 0,0
.LBB21:
	.loc 1 310 0
	add 11,17,11
	addi 10,11,4
	.loc 1 318 0
	addic 0,0,1
	.loc 1 309 0
	fadds 13,12,13
	.loc 1 311 0
	addi 11,11,8
	fctiwz 0,0
	.loc 1 310 0
	fctiwz 13,13
	.loc 1 311 0
	stfiwx 0,0,11
	.loc 1 310 0
	stfiwx 13,0,10
	.loc 1 318 0
	stw 0,112(9)
.LBE21:
	.loc 1 286 0
	b .L51
.LVL152:
.L106:
.LBB22:
	.loc 1 297 0
	lis 11,.LC13@ha
	lwz 3,.LC13@l(11)
	crxor 6,6,6
	bl Con_Printf
	lwz 11,0(19)
	lwz 9,paliashdr@l(24)
	slwi 0,11,2
.LVL153:
	.loc 1 301 0
	lwz 11,108(9)
	cmpwi 7,11,0
	bgt+ 7,.L107
.L82:
	lis 10,.LC8@ha
	la 27,.LC8@l(10)
	b .L54
.LVL154:
.L32:
.LBE22:
	.loc 1 460 0
	lwz 0,324(1)
	lwz 14,224(1)
.LVL155:
	mtlr 0
	lwz 15,228(1)
	lwz 16,232(1)
	lwz 17,236(1)
.LVL156:
	lwz 18,240(1)
	lwz 19,244(1)
	lwz 20,248(1)
	lwz 21,252(1)
	lwz 22,256(1)
	lwz 23,260(1)
	lwz 24,264(1)
	lwz 25,268(1)
	lwz 26,272(1)
.LVL157:
	lwz 27,276(1)
	lwz 28,280(1)
	lwz 29,284(1)
.LVL158:
	lwz 30,288(1)
.LVL159:
	lwz 31,292(1)
	lfd 29,296(1)
	lfd 30,304(1)
	lfd 31,312(1)
	addi 1,1,320
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
.LFE41:
	.size	GL_MakeAliasModelDisplayLists, .-GL_MakeAliasModelDisplayLists
	.comm	dupIndex,8192,4
	.comm	numNormals,8192,4
	.comm	paliashdr,4,4
	.comm	aliasmodel,4,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC1:
	.4byte	1127481344
.LC4:
	.4byte	1060459861
.LC5:
	.4byte	0
.LC8:
	.4byte	1501560836
.LC11:
	.4byte	1056964608
.LC12:
	.4byte	1065353216
.LC13:
	.4byte	.LC6
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC2:
	.4byte	1074340347
	.4byte	1413754136
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC6:
	.string	"To many verts"
	.zero	2
.LC9:
	.string	"Not equal %i %i\n"
	.section	".text"
.Letext0:
	.file 2 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 3 "d:/Data/Nintendo/TenebraeGX/src/bspfile.h"
	.file 4 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 5 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 6 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 7 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 12 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1db0
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF337
	.byte	0x1
	.4byte	.LASF338
	.4byte	.LASF339
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
	.4byte	.LASF43
	.byte	0x4
	.byte	0x4
	.byte	0x6f
	.4byte	0x1fe
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
	.4byte	0x1e3
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x5
	.byte	0x16
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x5
	.byte	0x17
	.4byte	0x21f
	.uleb128 0xa
	.4byte	0x209
	.4byte	0x22f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x48
	.byte	0x6
	.byte	0xef
	.4byte	0x2e0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0xf1
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0xf2
	.4byte	0x214
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
	.4byte	0x214
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
	.4byte	0x22f
	.uleb128 0xa
	.4byte	0x6c
	.4byte	0x2fb
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x10
	.byte	0x7
	.byte	0x1e
	.4byte	0x340
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x7
	.byte	0x20
	.4byte	0x3e7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x7
	.byte	0x21
	.4byte	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x7
	.byte	0x22
	.4byte	0x661
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x7
	.byte	0x23
	.4byte	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x40
	.byte	0x8
	.byte	0xca
	.4byte	0x3e7
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x8
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x8
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x8
	.byte	0xd0
	.4byte	0xfbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0xd2
	.4byte	0x9bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x8
	.byte	0xd5
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x8
	.byte	0xd6
	.4byte	0xfe7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x8
	.byte	0xd8
	.4byte	0xfed
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x8
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.string	"key"
	.byte	0x8
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x8
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x8
	.byte	0xdc
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x340
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2fb
	.uleb128 0xe
	.4byte	.LASF60
	.2byte	0x248
	.byte	0x7
	.byte	0x27
	.4byte	0x661
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x7
	.byte	0x29
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x7
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x7
	.byte	0x2d
	.4byte	0x2e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x7
	.byte	0x2f
	.4byte	0x73
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x7
	.byte	0x30
	.4byte	0x672
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x7
	.byte	0x31
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x7
	.byte	0x32
	.4byte	0x672
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x7
	.byte	0x33
	.4byte	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x7
	.byte	0x34
	.4byte	0x93c
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x7
	.byte	0x35
	.4byte	0x3ed
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x7
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x7
	.byte	0x37
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x7
	.byte	0x38
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x7
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x7
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x7
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x7
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x7
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x7
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x7
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x7
	.byte	0x44
	.4byte	0x9bf
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x7
	.byte	0x48
	.4byte	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x7
	.byte	0x49
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x7
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x7
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x7
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x7
	.byte	0x50
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x7
	.byte	0x51
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x7
	.byte	0x52
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x7
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x7
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x7
	.byte	0x57
	.4byte	0xadf
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x7
	.byte	0x58
	.4byte	0x5d
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x7
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x7
	.byte	0x5c
	.4byte	0xae5
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x7
	.byte	0x5f
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x7
	.byte	0x60
	.4byte	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x7
	.byte	0x61
	.4byte	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x7
	.byte	0x62
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x7
	.byte	0x63
	.4byte	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x7
	.byte	0x64
	.4byte	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3f3
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x7
	.byte	0x24
	.4byte	0x2fb
	.uleb128 0xa
	.4byte	0x209
	.4byte	0x688
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF92
	.2byte	0x1a4
	.byte	0x8
	.2byte	0x180
	.4byte	0x93c
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x182
	.4byte	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x8
	.2byte	0x183
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0x8
	.2byte	0x185
	.4byte	0x1377
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x187
	.4byte	0xb3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.4byte	.LASF16
	.byte	0x8
	.2byte	0x18e
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.4byte	.LASF17
	.byte	0x8
	.2byte	0x18e
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x8
	.2byte	0x18f
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x194
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x195
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x195
	.4byte	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x19d
	.4byte	0x1383
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x1a0
	.4byte	0xf9f
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x8
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x1a3
	.4byte	0x1389
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x1a6
	.4byte	0x138f
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x1a9
	.4byte	0x1395
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x1ac
	.4byte	0x139b
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x1af
	.4byte	0xfab
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x1b2
	.4byte	0xff3
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x1b5
	.4byte	0x13a1
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0x8
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0x8
	.2byte	0x1b8
	.4byte	0x1061
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x1bb
	.4byte	0xfed
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x1bd
	.4byte	0x13a7
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0x8
	.2byte	0x1c0
	.4byte	0x13b7
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0x8
	.2byte	0x1c2
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x8
	.2byte	0x1c3
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x8
	.2byte	0x1c4
	.4byte	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x8
	.2byte	0x1c9
	.4byte	0x1fe
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x688
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0x34
	.byte	0x8
	.byte	0xb6
	.4byte	0x9bf
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x8
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x8
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x8
	.byte	0xbc
	.4byte	0xfbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0xbe
	.4byte	0x9bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x8
	.byte	0xc1
	.4byte	0xf9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x8
	.byte	0xc2
	.4byte	0xfcc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF134
	.byte	0x8
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF118
	.byte	0x8
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x942
	.uleb128 0x11
	.4byte	.LASF135
	.4byte	0x20030
	.byte	0x9
	.2byte	0xa09
	.4byte	0xadf
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0x9
	.2byte	0xa0f
	.4byte	0xadf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0x9
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF138
	.byte	0x9
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF139
	.byte	0x9
	.2byte	0xa17
	.4byte	0x1792
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF140
	.byte	0x9
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF141
	.byte	0x9
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0x9
	.2byte	0xa1b
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0x9
	.2byte	0xa1d
	.4byte	0xb10
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0x9
	.2byte	0xa1f
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.4byte	.LASF145
	.byte	0x9
	.2byte	0xa21
	.4byte	0x1792
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0x9
	.2byte	0xa25
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.4byte	.LASF147
	.byte	0x9
	.2byte	0xa2b
	.4byte	0x179e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0x9
	.2byte	0xa2d
	.4byte	0x179e
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0x9
	.2byte	0xa2f
	.4byte	0x179e
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0x9
	.2byte	0xa31
	.4byte	0x179e
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0x9
	.2byte	0xa33
	.4byte	0x17e3
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0x9
	.2byte	0xa37
	.4byte	0x17f4
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9c5
	.uleb128 0xa
	.4byte	0x33
	.4byte	0xaf5
	.uleb128 0xb
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF153
	.byte	0x7
	.byte	0x66
	.4byte	0x3f3
	.uleb128 0xa
	.4byte	0x41
	.4byte	0xb10
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xaf5
	.uleb128 0xa
	.4byte	0x41
	.4byte	0xb26
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0xa
	.byte	0x34
	.4byte	0xb3b
	.uleb128 0x13
	.4byte	.LASF154
	.sleb128 0
	.uleb128 0x13
	.4byte	.LASF155
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF156
	.byte	0xa
	.byte	0x34
	.4byte	0xb26
	.uleb128 0x8
	.byte	0xc
	.byte	0xa
	.byte	0x4f
	.4byte	0xb75
	.uleb128 0x9
	.4byte	.LASF157
	.byte	0xa
	.byte	0x50
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"s"
	.byte	0xa
	.byte	0x51
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"t"
	.byte	0xa
	.byte	0x52
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF158
	.byte	0xa
	.byte	0x53
	.4byte	0xb46
	.uleb128 0x8
	.byte	0x8
	.byte	0xa
	.byte	0x55
	.4byte	0xba1
	.uleb128 0xd
	.string	"s"
	.byte	0xa
	.byte	0x56
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"t"
	.byte	0xa
	.byte	0x57
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF159
	.byte	0xa
	.byte	0x58
	.4byte	0xb80
	.uleb128 0x8
	.byte	0x4
	.byte	0xa
	.byte	0x64
	.4byte	0xbcf
	.uleb128 0xd
	.string	"v"
	.byte	0xa
	.byte	0x65
	.4byte	0xbcf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF160
	.byte	0xa
	.byte	0x66
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0xbdf
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF161
	.byte	0xa
	.byte	0x67
	.4byte	0xbac
	.uleb128 0x8
	.byte	0x10
	.byte	0xa
	.byte	0x6a
	.4byte	0xc0d
	.uleb128 0xd
	.string	"v"
	.byte	0xa
	.byte	0x6b
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF160
	.byte	0xa
	.byte	0x6c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF162
	.byte	0xa
	.byte	0x6d
	.4byte	0xbea
	.uleb128 0x8
	.byte	0xc
	.byte	0x8
	.byte	0x3b
	.4byte	0xc2f
	.uleb128 0x9
	.4byte	.LASF163
	.byte	0x8
	.byte	0x3d
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.4byte	.LASF164
	.byte	0x8
	.byte	0x3e
	.4byte	0xc18
	.uleb128 0xc
	.4byte	.LASF165
	.byte	0x14
	.byte	0x8
	.byte	0x52
	.4byte	0xc8d
	.uleb128 0x9
	.4byte	.LASF166
	.byte	0x8
	.byte	0x54
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0x8
	.byte	0x55
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x8
	.byte	0x56
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF168
	.byte	0x8
	.byte	0x57
	.4byte	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xd
	.string	"pad"
	.byte	0x8
	.byte	0x58
	.4byte	0xc8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0xc9d
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF169
	.byte	0x8
	.byte	0x59
	.4byte	0xc3a
	.uleb128 0xc
	.4byte	.LASF170
	.byte	0x48
	.byte	0x8
	.byte	0x5b
	.4byte	0xd5d
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x8
	.byte	0x5d
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0x8
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF172
	.byte	0x8
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF173
	.byte	0x8
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF174
	.byte	0x8
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0x8
	.byte	0x61
	.4byte	0xe82
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF176
	.byte	0x8
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF177
	.byte	0x8
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF178
	.byte	0x8
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF179
	.byte	0x8
	.byte	0x64
	.4byte	0xe88
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF180
	.byte	0x8
	.byte	0x65
	.4byte	0xe88
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF181
	.byte	0x8
	.byte	0x66
	.4byte	0x15d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xc
	.4byte	.LASF182
	.byte	0x5c
	.byte	0x8
	.byte	0x96
	.4byte	0xe82
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x8
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF133
	.byte	0x8
	.byte	0x9a
	.4byte	0xf9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x8
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF183
	.byte	0x8
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x8
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF184
	.byte	0x8
	.byte	0xa0
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF185
	.byte	0x8
	.byte	0xa1
	.4byte	0x16d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF186
	.byte	0x8
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF187
	.byte	0x8
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF188
	.byte	0x8
	.byte	0xa5
	.4byte	0xfa5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF175
	.byte	0x8
	.byte	0xa6
	.4byte	0xe82
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF189
	.byte	0x8
	.byte	0xa7
	.4byte	0xe82
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x8
	.byte	0xa9
	.4byte	0xfab
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x8
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x8
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF190
	.byte	0x8
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF191
	.byte	0x8
	.byte	0xb0
	.4byte	0x1d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF192
	.byte	0x8
	.byte	0xb1
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF193
	.byte	0x8
	.byte	0xb2
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF194
	.byte	0x8
	.byte	0xb3
	.4byte	0xb1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd5d
	.uleb128 0x5
	.byte	0x4
	.4byte	0xca8
	.uleb128 0x6
	.4byte	.LASF195
	.byte	0x8
	.byte	0x67
	.4byte	0xca8
	.uleb128 0x8
	.byte	0x8
	.byte	0x8
	.byte	0x78
	.4byte	0xebc
	.uleb128 0xd
	.string	"v"
	.byte	0x8
	.byte	0x7a
	.4byte	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF196
	.byte	0x8
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF197
	.byte	0x8
	.byte	0x7c
	.4byte	0xe99
	.uleb128 0x8
	.byte	0x2c
	.byte	0x8
	.byte	0x7e
	.4byte	0xf08
	.uleb128 0x9
	.4byte	.LASF198
	.byte	0x8
	.byte	0x80
	.4byte	0x1ad
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF199
	.byte	0x8
	.byte	0x81
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF200
	.byte	0x8
	.byte	0x82
	.4byte	0xf08
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x8
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe8e
	.uleb128 0x6
	.4byte	.LASF201
	.byte	0x8
	.byte	0x84
	.4byte	0xec7
	.uleb128 0xc
	.4byte	.LASF202
	.byte	0x1c
	.byte	0x8
	.byte	0x8a
	.4byte	0xf88
	.uleb128 0x9
	.4byte	.LASF203
	.byte	0x8
	.byte	0x8c
	.4byte	0xf88
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF204
	.byte	0x8
	.byte	0x8d
	.4byte	0xf88
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF205
	.byte	0x8
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x8
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x8
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF206
	.byte	0x8
	.byte	0x92
	.4byte	0xf8e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF207
	.byte	0x8
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf19
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf88
	.uleb128 0x6
	.4byte	.LASF208
	.byte	0x8
	.byte	0x94
	.4byte	0xf19
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc9d
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf94
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf0e
	.uleb128 0x6
	.4byte	.LASF209
	.byte	0x8
	.byte	0xb4
	.4byte	0xd5d
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0xfcc
	.uleb128 0xb
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.4byte	0x9bf
	.4byte	0xfdc
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF210
	.byte	0x8
	.byte	0xc6
	.4byte	0x942
	.uleb128 0x5
	.byte	0x4
	.4byte	0x667
	.uleb128 0x5
	.byte	0x4
	.4byte	0xff3
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfb1
	.uleb128 0x6
	.4byte	.LASF211
	.byte	0x8
	.byte	0xdd
	.4byte	0x340
	.uleb128 0x8
	.byte	0x28
	.byte	0x8
	.byte	0xe0
	.4byte	0x1061
	.uleb128 0x9
	.4byte	.LASF123
	.byte	0x8
	.byte	0xe2
	.4byte	0x1061
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x8
	.byte	0xe3
	.4byte	0xf9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF212
	.byte	0x8
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF213
	.byte	0x8
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF214
	.byte	0x8
	.byte	0xe6
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF215
	.byte	0x8
	.byte	0xe7
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a2
	.uleb128 0x6
	.4byte	.LASF216
	.byte	0x8
	.byte	0xe8
	.4byte	0x1004
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x14
	.byte	0x28
	.byte	0x8
	.2byte	0x11e
	.4byte	0x10eb
	.uleb128 0x10
	.4byte	.LASF217
	.byte	0x8
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF218
	.byte	0x8
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF219
	.byte	0x8
	.2byte	0x122
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF220
	.byte	0x8
	.2byte	0x123
	.4byte	0xbdf
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF221
	.byte	0x8
	.2byte	0x124
	.4byte	0xbdf
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0x8
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x8
	.2byte	0x126
	.4byte	0x14d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x15
	.4byte	.LASF222
	.byte	0x8
	.2byte	0x127
	.4byte	0x1078
	.uleb128 0x16
	.4byte	.LASF223
	.byte	0x1c
	.byte	0x8
	.2byte	0x13a
	.4byte	0x1132
	.uleb128 0x10
	.4byte	.LASF224
	.byte	0x8
	.2byte	0x13b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF225
	.byte	0x8
	.2byte	0x13c
	.4byte	0xb00
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF206
	.byte	0x8
	.2byte	0x13d
	.4byte	0xb00
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x15
	.4byte	.LASF226
	.byte	0x8
	.2byte	0x13e
	.4byte	0x10f7
	.uleb128 0x17
	.2byte	0x53c
	.byte	0x8
	.2byte	0x142
	.4byte	0x1323
	.uleb128 0x10
	.4byte	.LASF227
	.byte	0x8
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF228
	.byte	0x8
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF229
	.byte	0x8
	.2byte	0x145
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF230
	.byte	0x8
	.2byte	0x146
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF231
	.byte	0x8
	.2byte	0x147
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.4byte	.LASF232
	.byte	0x8
	.2byte	0x148
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.4byte	.LASF233
	.byte	0x8
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.4byte	.LASF234
	.byte	0x8
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.4byte	.LASF235
	.byte	0x8
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.4byte	.LASF205
	.byte	0x8
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.4byte	.LASF236
	.byte	0x8
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x8
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x14f
	.4byte	0xb3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0x8
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.4byte	.LASF237
	.byte	0x8
	.2byte	0x151
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.4byte	.LASF16
	.byte	0x8
	.2byte	0x153
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.4byte	.LASF17
	.byte	0x8
	.2byte	0x153
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.4byte	.LASF218
	.byte	0x8
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.4byte	.LASF238
	.byte	0x8
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.4byte	.LASF239
	.byte	0x8
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.4byte	.LASF240
	.byte	0x8
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.4byte	.LASF241
	.byte	0x8
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0x8
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x10
	.4byte	.LASF242
	.byte	0x8
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x10
	.4byte	.LASF243
	.byte	0x8
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x10
	.4byte	.LASF244
	.byte	0x8
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x10
	.4byte	.LASF173
	.byte	0x8
	.2byte	0x15e
	.4byte	0x1323
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x10
	.4byte	.LASF245
	.byte	0x8
	.2byte	0x15f
	.4byte	0x1323
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x10
	.4byte	.LASF246
	.byte	0x8
	.2byte	0x160
	.4byte	0xb16
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x10
	.4byte	.LASF247
	.byte	0x8
	.2byte	0x161
	.4byte	0x1339
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x1339
	.uleb128 0xb
	.4byte	0x48
	.byte	0x1f
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.4byte	0x10eb
	.4byte	0x1349
	.uleb128 0xb
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF248
	.byte	0x8
	.2byte	0x162
	.4byte	0x113e
	.uleb128 0x18
	.byte	0x4
	.byte	0x8
	.2byte	0x172
	.4byte	0x1377
	.uleb128 0x13
	.4byte	.LASF249
	.sleb128 0
	.uleb128 0x13
	.4byte	.LASF250
	.sleb128 1
	.uleb128 0x13
	.4byte	.LASF251
	.sleb128 2
	.uleb128 0x13
	.4byte	.LASF252
	.sleb128 3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF253
	.byte	0x8
	.2byte	0x172
	.4byte	0x1355
	.uleb128 0x5
	.byte	0x4
	.4byte	0x142
	.uleb128 0x5
	.byte	0x4
	.4byte	0xff9
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc2f
	.uleb128 0x5
	.byte	0x4
	.4byte	0xebc
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfdc
	.uleb128 0x5
	.byte	0x4
	.4byte	0x41
	.uleb128 0xa
	.4byte	0x1067
	.4byte	0x13b7
	.uleb128 0xb
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf08
	.uleb128 0x15
	.4byte	.LASF254
	.byte	0x8
	.2byte	0x1cb
	.4byte	0x688
	.uleb128 0x8
	.byte	0x10
	.byte	0xb
	.byte	0x16
	.4byte	0x13ee
	.uleb128 0x9
	.4byte	.LASF166
	.byte	0xb
	.byte	0x18
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF167
	.byte	0xb
	.byte	0x19
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.4byte	.LASF255
	.byte	0xb
	.byte	0x1a
	.4byte	0x13c9
	.uleb128 0x16
	.4byte	.LASF256
	.byte	0x14
	.byte	0x9
	.2byte	0x981
	.4byte	0x1425
	.uleb128 0x10
	.4byte	.LASF257
	.byte	0x9
	.2byte	0x983
	.4byte	0x132
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF203
	.byte	0x9
	.2byte	0x985
	.4byte	0x1425
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13f9
	.uleb128 0x15
	.4byte	.LASF258
	.byte	0x9
	.2byte	0x987
	.4byte	0x13f9
	.uleb128 0x19
	.4byte	.LASF303
	.byte	0x4
	.byte	0x9
	.2byte	0x98d
	.4byte	0x1475
	.uleb128 0x1a
	.4byte	.LASF259
	.byte	0x9
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1a
	.4byte	.LASF260
	.byte	0x9
	.2byte	0x991
	.4byte	0x7a
	.uleb128 0x1a
	.4byte	.LASF261
	.byte	0x9
	.2byte	0x993
	.4byte	0x209
	.uleb128 0x1a
	.4byte	.LASF262
	.byte	0x9
	.2byte	0x995
	.4byte	0x5d
	.byte	0
	.uleb128 0x15
	.4byte	.LASF263
	.byte	0x9
	.2byte	0x997
	.4byte	0x1437
	.uleb128 0xf
	.4byte	.LASF264
	.2byte	0x890
	.byte	0x9
	.2byte	0x99d
	.4byte	0x1635
	.uleb128 0x10
	.4byte	.LASF18
	.byte	0x9
	.2byte	0x99f
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF265
	.byte	0x9
	.2byte	0x9a1
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x9
	.2byte	0x9a1
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x9a3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.4byte	.LASF266
	.byte	0x9
	.2byte	0x9a7
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.4byte	.LASF267
	.byte	0x9
	.2byte	0x9a9
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.4byte	.LASF268
	.byte	0x9
	.2byte	0x9ab
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x10
	.4byte	.LASF269
	.byte	0x9
	.2byte	0x9ad
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x10
	.4byte	.LASF270
	.byte	0x9
	.2byte	0x9af
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x9
	.2byte	0x9b1
	.4byte	0x1389
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x1b
	.string	"vis"
	.byte	0x9
	.2byte	0x9b3
	.4byte	0x1635
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.4byte	.LASF271
	.byte	0x9
	.2byte	0x9b5
	.4byte	0x1635
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x10
	.4byte	.LASF272
	.byte	0x9
	.2byte	0x9b7
	.4byte	0xfed
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x10
	.4byte	.LASF273
	.byte	0x9
	.2byte	0x9b9
	.4byte	0x13a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x10
	.4byte	.LASF274
	.byte	0x9
	.2byte	0x9bb
	.4byte	0x1072
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x10
	.4byte	.LASF275
	.byte	0x9
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x10
	.4byte	.LASF276
	.byte	0x9
	.2byte	0x9bf
	.4byte	0x1646
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x10
	.4byte	.LASF277
	.byte	0x9
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x9
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x10
	.4byte	.LASF278
	.byte	0x9
	.2byte	0x9c5
	.4byte	0xb10
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x10
	.4byte	.LASF279
	.byte	0x9
	.2byte	0x9c7
	.4byte	0x142b
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x10
	.4byte	.LASF280
	.byte	0x9
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x9
	.2byte	0x9cb
	.4byte	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x10
	.4byte	.LASF281
	.byte	0x9
	.2byte	0x9cd
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x10
	.4byte	.LASF282
	.byte	0x9
	.2byte	0x9cf
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x10
	.4byte	.LASF283
	.byte	0x9
	.2byte	0x9d1
	.4byte	0x7a
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x10
	.4byte	.LASF284
	.byte	0x9
	.2byte	0x9d3
	.4byte	0x214
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0xa
	.4byte	0x8f
	.4byte	0x1646
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1475
	.uleb128 0x15
	.4byte	.LASF285
	.byte	0x9
	.2byte	0x9d5
	.4byte	0x1481
	.uleb128 0x11
	.4byte	.LASF286
	.4byte	0x1e864
	.byte	0x9
	.2byte	0x9db
	.4byte	0x1792
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0x9
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF287
	.byte	0x9
	.2byte	0x9e1
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF288
	.byte	0x9
	.2byte	0x9e1
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF289
	.byte	0x9
	.2byte	0x9e1
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.4byte	.LASF290
	.byte	0x9
	.2byte	0x9e1
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.4byte	.LASF291
	.byte	0x9
	.2byte	0x9e3
	.4byte	0x7a
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0x9
	.2byte	0x9e5
	.4byte	0xb10
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.4byte	.LASF292
	.byte	0x9
	.2byte	0x9e7
	.4byte	0x1792
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.4byte	.LASF293
	.byte	0x9
	.2byte	0x9e9
	.4byte	0x1798
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.4byte	.LASF294
	.byte	0x9
	.2byte	0x9eb
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.4byte	.LASF295
	.byte	0x9
	.2byte	0x9eb
	.4byte	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.4byte	.LASF296
	.byte	0x9
	.2byte	0x9ed
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.4byte	.LASF297
	.byte	0x9
	.2byte	0x9f3
	.4byte	0x179e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x10
	.4byte	.LASF298
	.byte	0x9
	.2byte	0x9f5
	.4byte	0x179e
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x10
	.4byte	.LASF299
	.byte	0x9
	.2byte	0x9f7
	.4byte	0x179e
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x10
	.4byte	.LASF300
	.byte	0x9
	.2byte	0x9f9
	.4byte	0x179e
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x10
	.4byte	.LASF301
	.byte	0x9
	.2byte	0x9fb
	.4byte	0x17b5
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x10
	.4byte	.LASF244
	.byte	0x9
	.2byte	0x9ff
	.4byte	0x17c6
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x10
	.4byte	.LASF236
	.byte	0x9
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1349
	.uleb128 0x5
	.byte	0x4
	.4byte	0x164c
	.uleb128 0xa
	.4byte	0x209
	.4byte	0x17b5
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.4byte	0x17c6
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x17d7
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x15
	.4byte	.LASF302
	.byte	0x9
	.2byte	0xa05
	.4byte	0x1658
	.uleb128 0xa
	.4byte	0x13ee
	.4byte	0x17f4
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17d7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13ee
	.uleb128 0xa
	.4byte	0x209
	.4byte	0x1816
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x19
	.4byte	.LASF304
	.byte	0x4
	.byte	0xc
	.2byte	0x490
	.4byte	0x1876
	.uleb128 0x1d
	.string	"U8"
	.byte	0xc
	.2byte	0x492
	.4byte	0x1876
	.uleb128 0x1d
	.string	"S8"
	.byte	0xc
	.2byte	0x493
	.4byte	0x187b
	.uleb128 0x1d
	.string	"U16"
	.byte	0xc
	.2byte	0x494
	.4byte	0x1880
	.uleb128 0x1d
	.string	"S16"
	.byte	0xc
	.2byte	0x495
	.4byte	0x1885
	.uleb128 0x1d
	.string	"U32"
	.byte	0xc
	.2byte	0x496
	.4byte	0x188a
	.uleb128 0x1d
	.string	"S32"
	.byte	0xc
	.2byte	0x497
	.4byte	0x188f
	.uleb128 0x1d
	.string	"F32"
	.byte	0xc
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
	.4byte	.LASF305
	.byte	0xc
	.2byte	0x499
	.4byte	0x1816
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF315
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LLST0
	.4byte	0x1960
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x1
	.byte	0x21
	.4byte	0x41
	.4byte	.LLST1
	.uleb128 0x1f
	.4byte	.LASF306
	.byte	0x1
	.byte	0x21
	.4byte	0x41
	.4byte	.LLST2
	.uleb128 0x20
	.4byte	.LASF236
	.byte	0x1
	.byte	0x21
	.4byte	0x41
	.byte	0x1
	.byte	0x55
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x22
	.4byte	0x41
	.4byte	.LLST3
	.uleb128 0x22
	.string	"j"
	.byte	0x1
	.byte	0x22
	.4byte	0x41
	.uleb128 0x21
	.string	"v1"
	.byte	0x1
	.byte	0x22
	.4byte	0x41
	.4byte	.LLST4
	.uleb128 0x21
	.string	"v0"
	.byte	0x1
	.byte	0x22
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0x23
	.4byte	.LASF307
	.byte	0x1
	.byte	0x22
	.4byte	0x41
	.4byte	.LLST6
	.uleb128 0x23
	.4byte	.LASF308
	.byte	0x1
	.byte	0x22
	.4byte	0x41
	.4byte	.LLST7
	.uleb128 0x23
	.4byte	.LASF309
	.byte	0x1
	.byte	0x23
	.4byte	0x1960
	.4byte	.LLST8
	.uleb128 0x22
	.string	"t"
	.byte	0x1
	.byte	0x24
	.4byte	0x1960
	.uleb128 0x21
	.string	"dup"
	.byte	0x1
	.byte	0x25
	.4byte	0x9f
	.4byte	.LLST9
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1132
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF318
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST10
	.4byte	0x1a5c
	.uleb128 0x1f
	.4byte	.LASF58
	.byte	0x1
	.byte	0x52
	.4byte	0x13a1
	.4byte	.LLST11
	.uleb128 0x1f
	.4byte	.LASF147
	.byte	0x1
	.byte	0x52
	.4byte	0x1a5c
	.4byte	.LLST12
	.uleb128 0x1f
	.4byte	.LASF310
	.byte	0x1
	.byte	0x52
	.4byte	0x1a62
	.4byte	.LLST13
	.uleb128 0x1f
	.4byte	.LASF311
	.byte	0x1
	.byte	0x52
	.4byte	0x1a68
	.4byte	.LLST14
	.uleb128 0x1f
	.4byte	.LASF312
	.byte	0x1
	.byte	0x52
	.4byte	0x1a68
	.4byte	.LLST15
	.uleb128 0x21
	.string	"v0"
	.byte	0x1
	.byte	0x55
	.4byte	0x1072
	.4byte	.LLST16
	.uleb128 0x21
	.string	"v1"
	.byte	0x1
	.byte	0x55
	.4byte	0x1072
	.4byte	.LLST17
	.uleb128 0x21
	.string	"v2"
	.byte	0x1
	.byte	0x55
	.4byte	0x1072
	.4byte	.LLST18
	.uleb128 0x21
	.string	"st0"
	.byte	0x1
	.byte	0x56
	.4byte	0x1072
	.4byte	.LLST19
	.uleb128 0x21
	.string	"st1"
	.byte	0x1
	.byte	0x56
	.4byte	0x1072
	.4byte	.LLST20
	.uleb128 0x21
	.string	"st2"
	.byte	0x1
	.byte	0x56
	.4byte	0x1072
	.4byte	.LLST21
	.uleb128 0x25
	.4byte	.LASF313
	.byte	0x1
	.byte	0x57
	.4byte	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x25
	.4byte	.LASF314
	.byte	0x1
	.byte	0x57
	.4byte	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x25
	.4byte	.LASF108
	.byte	0x1
	.byte	0x58
	.4byte	0x1800
	.byte	0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0x59
	.4byte	0x41
	.4byte	.LLST22
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc0d
	.uleb128 0x5
	.byte	0x4
	.4byte	0xba1
	.uleb128 0x5
	.byte	0x4
	.4byte	0x209
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF316
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST23
	.4byte	0x1ad7
	.uleb128 0x1f
	.4byte	.LASF166
	.byte	0x1
	.byte	0x7a
	.4byte	0x1ad7
	.4byte	.LLST24
	.uleb128 0x21
	.string	"r"
	.byte	0x1
	.byte	0x7c
	.4byte	0x3a
	.4byte	.LLST25
	.uleb128 0x25
	.4byte	.LASF317
	.byte	0x1
	.byte	0x7d
	.4byte	0xb1
	.byte	0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x9f
	.uleb128 0x26
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x21
	.string	"a"
	.byte	0x1
	.byte	0x89
	.4byte	0x41
	.4byte	.LLST26
	.uleb128 0x21
	.string	"b"
	.byte	0x1
	.byte	0x89
	.4byte	0x41
	.4byte	.LLST27
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1add
	.uleb128 0x27
	.4byte	0x209
	.uleb128 0x24
	.byte	0x1
	.4byte	.LASF319
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST28
	.4byte	0x1c8e
	.uleb128 0x28
	.string	"m"
	.byte	0x1
	.byte	0xa6
	.4byte	0x1c8e
	.4byte	.LLST29
	.uleb128 0x28
	.string	"hdr"
	.byte	0x1
	.byte	0xa6
	.4byte	0x1792
	.4byte	.LLST30
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.byte	0xa8
	.4byte	0x41
	.4byte	.LLST31
	.uleb128 0x21
	.string	"j"
	.byte	0x1
	.byte	0xa8
	.4byte	0x41
	.4byte	.LLST32
	.uleb128 0x21
	.string	"k"
	.byte	0x1
	.byte	0xa8
	.4byte	0x41
	.4byte	.LLST33
	.uleb128 0x21
	.string	"l"
	.byte	0x1
	.byte	0xa8
	.4byte	0x41
	.4byte	.LLST34
	.uleb128 0x23
	.4byte	.LASF320
	.byte	0x1
	.byte	0xa9
	.4byte	0x1a5c
	.4byte	.LLST35
	.uleb128 0x21
	.string	"v"
	.byte	0x1
	.byte	0xa9
	.4byte	0x1a5c
	.4byte	.LLST36
	.uleb128 0x23
	.4byte	.LASF321
	.byte	0x1
	.byte	0xa9
	.4byte	0x1a5c
	.4byte	.LLST35
	.uleb128 0x23
	.4byte	.LASF322
	.byte	0x1
	.byte	0xaa
	.4byte	0x1960
	.4byte	.LLST38
	.uleb128 0x23
	.4byte	.LASF243
	.byte	0x1
	.byte	0xab
	.4byte	0x1a62
	.4byte	.LLST39
	.uleb128 0x23
	.4byte	.LASF323
	.byte	0x1
	.byte	0xac
	.4byte	0x17fa
	.4byte	.LLST40
	.uleb128 0x29
	.string	"v1"
	.byte	0x1
	.byte	0xad
	.4byte	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -264
	.uleb128 0x29
	.string	"v2"
	.byte	0x1
	.byte	0xad
	.4byte	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x25
	.4byte	.LASF166
	.byte	0x1
	.byte	0xad
	.4byte	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x25
	.4byte	.LASF324
	.byte	0x1
	.byte	0xae
	.4byte	0x1800
	.byte	0x3
	.byte	0x91
	.sleb128 -252
	.uleb128 0x23
	.4byte	.LASF149
	.byte	0x1
	.byte	0xaf
	.4byte	0x1c94
	.4byte	.LLST41
	.uleb128 0x23
	.4byte	.LASF242
	.byte	0x1
	.byte	0xaf
	.4byte	0x1c94
	.4byte	.LLST42
	.uleb128 0x21
	.string	"s"
	.byte	0x1
	.byte	0xb0
	.4byte	0x7a
	.4byte	.LLST43
	.uleb128 0x21
	.string	"t"
	.byte	0x1
	.byte	0xb0
	.4byte	0x7a
	.4byte	.LLST44
	.uleb128 0x23
	.4byte	.LASF244
	.byte	0x1
	.byte	0xb1
	.4byte	0x13a1
	.4byte	.LLST45
	.uleb128 0x23
	.4byte	.LASF325
	.byte	0x1
	.byte	0xb2
	.4byte	0x41
	.4byte	.LLST46
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x1c4d
	.uleb128 0x2b
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x11f
	.4byte	0x41
	.4byte	.LLST47
	.byte	0
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0x88
	.4byte	0x1c63
	.uleb128 0x2c
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x141
	.4byte	0x41
	.byte	0
	.uleb128 0x2d
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x2e
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -300
	.uleb128 0x2e
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x1ac
	.4byte	0x214
	.byte	0x3
	.byte	0x91
	.sleb128 -312
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x13bd
	.uleb128 0x5
	.byte	0x4
	.4byte	0x214
	.uleb128 0x2f
	.4byte	.LASF329
	.byte	0x8
	.2byte	0x167
	.4byte	0x1792
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0xb75
	.4byte	0x1cb9
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF330
	.byte	0x8
	.2byte	0x168
	.4byte	0x1ca8
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x1132
	.4byte	0x1cd8
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF241
	.byte	0x8
	.2byte	0x169
	.4byte	0x1cc7
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x1cf6
	.4byte	0x1cf6
	.uleb128 0xb
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbdf
	.uleb128 0x2f
	.4byte	.LASF238
	.byte	0x8
	.2byte	0x16a
	.4byte	0x1ce6
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x7a
	.4byte	0x1d20
	.uleb128 0xb
	.4byte	0x48
	.byte	0xa1
	.uleb128 0xb
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF331
	.byte	0x9
	.2byte	0x334
	.4byte	0x1d0a
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x41
	.4byte	0x1d3f
	.uleb128 0x1c
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x30
	.4byte	.LASF332
	.byte	0x1
	.byte	0x4f
	.4byte	0x1d2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	numNormals
	.uleb128 0x31
	.4byte	.LASF333
	.byte	0x9
	.2byte	0xc2c
	.4byte	0xff3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x2f
	.4byte	.LASF334
	.byte	0xc
	.2byte	0x548
	.4byte	0x1d72
	.byte	0x1
	.byte	0x1
	.uleb128 0x27
	.4byte	0x1d77
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1894
	.uleb128 0x30
	.4byte	.LASF335
	.byte	0x1
	.byte	0x18
	.4byte	0x1c8e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	aliasmodel
	.uleb128 0x30
	.4byte	.LASF139
	.byte	0x1
	.byte	0x19
	.4byte	0x1792
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	paliashdr
	.uleb128 0x30
	.4byte	.LASF336
	.byte	0x1
	.byte	0x50
	.4byte	0x1d2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	dupIndex
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.sleb128 40
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0xf
	.byte	0x74
	.sleb128 1
	.byte	0x33
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0xf
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0xf
	.byte	0x74
	.sleb128 1
	.byte	0x33
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x9
	.byte	0x78
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 112
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 64
	.4byte	.LCFI10-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL30-1-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL40-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-1-.Ltext0
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL32-1-.Ltext0
	.4byte	.LVL34-.Ltext0
	.2byte	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x7
	.byte	0x79
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI11-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 320
	.4byte	.LCFI12-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL92-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL123-.Ltext0
	.2byte	0x2
	.byte	0x7b
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL95-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL84-1-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2b
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-1-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL110-1-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	.LVL154-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -104
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x3
	.byte	0x91
	.sleb128 -100
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 112
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x6f
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
	.4byte	0
	.4byte	0
	.4byte	.LBB4-.Ltext0
	.4byte	.LBE4-.Ltext0
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB12-.Ltext0
	.4byte	.LBE12-.Ltext0
	.4byte	.LBB13-.Ltext0
	.4byte	.LBE13-.Ltext0
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
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
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB5-.Ltext0
	.4byte	.LBE5-.Ltext0
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
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF328:
	.string	"binormal"
.LASF44:
	.string	"efrag_s"
.LASF91:
	.string	"efrag_t"
.LASF133:
	.string	"plane"
.LASF329:
	.string	"pheader"
.LASF219:
	.string	"interval"
.LASF92:
	.string	"model_s"
.LASF254:
	.string	"model_t"
.LASF199:
	.string	"mipadjust"
.LASF306:
	.string	"edgei"
.LASF231:
	.string	"boundingradius"
.LASF8:
	.string	"char"
.LASF108:
	.string	"planes"
.LASF248:
	.string	"aliashdr_t"
.LASF251:
	.string	"mod_alias"
.LASF113:
	.string	"edges"
.LASF134:
	.string	"firstsurface"
.LASF150:
	.string	"binomials"
.LASF266:
	.string	"brightness"
.LASF76:
	.string	"frame_start_time"
.LASF22:
	.string	"numfaces"
.LASF115:
	.string	"nodes"
.LASF325:
	.string	"newcount"
.LASF326:
	.string	"newindex"
.LASF50:
	.string	"contents"
.LASF203:
	.string	"next"
.LASF228:
	.string	"version"
.LASF299:
	.string	"tshalfangles"
.LASF142:
	.string	"lastblend"
.LASF243:
	.string	"texcoords"
.LASF286:
	.string	"aliaslightinstant_s"
.LASF294:
	.string	"lightpos"
.LASF86:
	.string	"origin1"
.LASF87:
	.string	"origin2"
.LASF178:
	.string	"anim_max"
.LASF123:
	.string	"clipnodes"
.LASF21:
	.string	"firstface"
.LASF263:
	.string	"lightcmd_t"
.LASF296:
	.string	"lastframeinstant"
.LASF137:
	.string	"lockframe"
.LASF323:
	.string	"norms"
.LASF62:
	.string	"update_type"
.LASF313:
	.string	"vec1"
.LASF314:
	.string	"vec2"
.LASF152:
	.string	"lightinstant"
.LASF159:
	.string	"fstvert_t"
.LASF321:
	.string	"oldverts"
.LASF97:
	.string	"synctype"
.LASF110:
	.string	"numvertexes"
.LASF160:
	.string	"lightnormalindex"
.LASF61:
	.string	"forcelink"
.LASF55:
	.string	"efrags"
.LASF49:
	.string	"mleaf_s"
.LASF211:
	.string	"mleaf_t"
.LASF184:
	.string	"texturemins"
.LASF89:
	.string	"angles1"
.LASF90:
	.string	"angles2"
.LASF120:
	.string	"numsurfedges"
.LASF118:
	.string	"numsurfaces"
.LASF198:
	.string	"vecs"
.LASF155:
	.string	"ST_RAND"
.LASF157:
	.string	"onseam"
.LASF10:
	.string	"float"
.LASF158:
	.string	"stvert_t"
.LASF32:
	.string	"modelindex"
.LASF164:
	.string	"mvertex_t"
.LASF58:
	.string	"index"
.LASF6:
	.string	"long long unsigned int"
.LASF336:
	.string	"dupIndex"
.LASF318:
	.string	"TangentForTri"
.LASF270:
	.string	"halo"
.LASF331:
	.string	"r_avertexnormals"
.LASF125:
	.string	"hulls"
.LASF173:
	.string	"gl_texturenum"
.LASF79:
	.string	"pose1"
.LASF80:
	.string	"pose2"
.LASF35:
	.string	"skin"
.LASF215:
	.string	"clip_maxs"
.LASF233:
	.string	"numskins"
.LASF85:
	.string	"translate_start_time"
.LASF339:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF63:
	.string	"baseline"
.LASF68:
	.string	"efrag"
.LASF274:
	.string	"volumeVerts"
.LASF99:
	.string	"radius"
.LASF293:
	.string	"lastlight"
.LASF278:
	.string	"owner"
.LASF144:
	.string	"lastshadowonly"
.LASF36:
	.string	"effects"
.LASF132:
	.string	"mnode_s"
.LASF210:
	.string	"mnode_t"
.LASF175:
	.string	"texturechain"
.LASF37:
	.string	"color"
.LASF190:
	.string	"lightmaptexturenum"
.LASF84:
	.string	"leafnums"
.LASF214:
	.string	"clip_mins"
.LASF300:
	.string	"colors"
.LASF176:
	.string	"anim_total"
.LASF12:
	.string	"long int"
.LASF171:
	.string	"width"
.LASF292:
	.string	"lasthdr"
.LASF283:
	.string	"haloalpha"
.LASF261:
	.string	"asVec"
.LASF304:
	.string	"_wgpipe"
.LASF15:
	.string	"_Bool"
.LASF60:
	.string	"entity_s"
.LASF153:
	.string	"entity_t"
.LASF104:
	.string	"nummodelsurfaces"
.LASF308:
	.string	"foundj"
.LASF317:
	.string	"bytes"
.LASF98:
	.string	"flags"
.LASF185:
	.string	"extents"
.LASF179:
	.string	"anim_next"
.LASF255:
	.string	"plane_t"
.LASF18:
	.string	"origin"
.LASF106:
	.string	"submodels"
.LASF200:
	.string	"texture"
.LASF107:
	.string	"numplanes"
.LASF130:
	.string	"entities"
.LASF20:
	.string	"visleafs"
.LASF246:
	.string	"texels"
.LASF67:
	.string	"model"
.LASF45:
	.string	"leaf"
.LASF262:
	.string	"asVoid"
.LASF250:
	.string	"mod_sprite"
.LASF338:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_mesh.c"
.LASF191:
	.string	"styles"
.LASF24:
	.string	"planenum"
.LASF41:
	.string	"pflags"
.LASF193:
	.string	"cached_dlight"
.LASF312:
	.string	"Binormal"
.LASF81:
	.string	"aliasframeinstant"
.LASF30:
	.string	"vec3_t"
.LASF282:
	.string	"cubescale"
.LASF267:
	.string	"visible"
.LASF42:
	.string	"entity_state_t"
.LASF16:
	.string	"mins"
.LASF51:
	.string	"visframe"
.LASF56:
	.string	"firstmarksurface"
.LASF197:
	.string	"medge_t"
.LASF59:
	.string	"ambient_sound_level"
.LASF238:
	.string	"poseverts"
.LASF324:
	.string	"triangle"
.LASF27:
	.string	"data"
.LASF227:
	.string	"ident"
.LASF201:
	.string	"mtexinfo_t"
.LASF156:
	.string	"synctype_t"
.LASF122:
	.string	"numclipnodes"
.LASF247:
	.string	"frames"
.LASF116:
	.string	"numtexinfo"
.LASF48:
	.string	"entnext"
.LASF69:
	.string	"syncbase"
.LASF310:
	.string	"texcos"
.LASF100:
	.string	"clipbox"
.LASF297:
	.string	"extvertices"
.LASF121:
	.string	"surfedges"
.LASF335:
	.string	"aliasmodel"
.LASF333:
	.string	"causticschain"
.LASF75:
	.string	"topnode"
.LASF78:
	.string	"blend"
.LASF117:
	.string	"texinfo"
.LASF253:
	.string	"modtype_t"
.LASF311:
	.string	"Tangent"
.LASF34:
	.string	"colormap"
.LASF194:
	.string	"samples"
.LASF217:
	.string	"firstpose"
.LASF5:
	.string	"long long int"
.LASF192:
	.string	"cached_light"
.LASF102:
	.string	"clipmaxs"
.LASF40:
	.string	"light_lev"
.LASF275:
	.string	"numVolumeVerts"
.LASF19:
	.string	"headnode"
.LASF26:
	.string	"dclipnode_t"
.LASF196:
	.string	"cachededgeoffset"
.LASF249:
	.string	"mod_brush"
.LASF234:
	.string	"skinwidth"
.LASF229:
	.string	"scale"
.LASF83:
	.string	"numleafs"
.LASF301:
	.string	"triangleVis"
.LASF315:
	.string	"findneighbour"
.LASF232:
	.string	"eyeposition"
.LASF237:
	.string	"size"
.LASF330:
	.string	"stverts"
.LASF265:
	.string	"baseColor"
.LASF167:
	.string	"dist"
.LASF47:
	.string	"entity"
.LASF174:
	.string	"gl_lumitex"
.LASF170:
	.string	"texture_s"
.LASF195:
	.string	"texture_t"
.LASF290:
	.string	"lastvorg"
.LASF172:
	.string	"height"
.LASF182:
	.string	"msurface_s"
.LASF209:
	.string	"msurface_t"
.LASF127:
	.string	"textures"
.LASF222:
	.string	"maliasframedesc_t"
.LASF319:
	.string	"GL_MakeAliasModelDisplayLists"
.LASF131:
	.string	"cache"
.LASF29:
	.string	"vec_t"
.LASF322:
	.string	"tris"
.LASF242:
	.string	"binormals"
.LASF162:
	.string	"ftrivertx_t"
.LASF240:
	.string	"commands"
.LASF189:
	.string	"shadowchain"
.LASF139:
	.string	"paliashdr"
.LASF177:
	.string	"anim_min"
.LASF11:
	.string	"long double"
.LASF71:
	.string	"lightTimestamp"
.LASF161:
	.string	"trivertx_t"
.LASF70:
	.string	"skinnum"
.LASF225:
	.string	"vertindex"
.LASF112:
	.string	"numedges"
.LASF241:
	.string	"triangles"
.LASF279:
	.string	"scizz"
.LASF213:
	.string	"lastclipnode"
.LASF272:
	.string	"visSurf"
.LASF53:
	.string	"parent"
.LASF268:
	.string	"isStatic"
.LASF2:
	.string	"short int"
.LASF146:
	.string	"shadowonly"
.LASF143:
	.string	"lastent"
.LASF257:
	.string	"coords"
.LASF46:
	.string	"leafnext"
.LASF168:
	.string	"signbits"
.LASF186:
	.string	"light_s"
.LASF187:
	.string	"light_t"
.LASF224:
	.string	"facesfront"
.LASF181:
	.string	"offsets"
.LASF221:
	.string	"bboxmax"
.LASF305:
	.string	"WGPipe"
.LASF302:
	.string	"aliaslightinstant_t"
.LASF105:
	.string	"numsubmodels"
.LASF303:
	.string	"lightcmd_u"
.LASF289:
	.string	"lasteangles"
.LASF205:
	.string	"numverts"
.LASF256:
	.string	"screenrect_s"
.LASF258:
	.string	"screenrect_t"
.LASF151:
	.string	"triplanes"
.LASF77:
	.string	"frame_interval"
.LASF260:
	.string	"asFloat"
.LASF180:
	.string	"alternate_anims"
.LASF114:
	.string	"numnodes"
.LASF147:
	.string	"vertices"
.LASF54:
	.string	"compressed_vis"
.LASF93:
	.string	"name"
.LASF236:
	.string	"numtris"
.LASF291:
	.string	"lastlradius"
.LASF4:
	.string	"unsigned int"
.LASF94:
	.string	"needload"
.LASF111:
	.string	"vertexes"
.LASF212:
	.string	"firstclipnode"
.LASF287:
	.string	"lasteorg"
.LASF259:
	.string	"asInt"
.LASF43:
	.string	"cache_user_s"
.LASF124:
	.string	"marksurfaces"
.LASF223:
	.string	"mtriangle_s"
.LASF226:
	.string	"mtriangle_t"
.LASF7:
	.string	"long unsigned int"
.LASF244:
	.string	"indecies"
.LASF64:
	.string	"msgtime"
.LASF277:
	.string	"numVisSurf"
.LASF38:
	.string	"alpha"
.LASF307:
	.string	"found"
.LASF281:
	.string	"rspeed"
.LASF52:
	.string	"minmaxs"
.LASF148:
	.string	"normals"
.LASF202:
	.string	"glpoly_s"
.LASF208:
	.string	"glpoly_t"
.LASF13:
	.string	"byte"
.LASF288:
	.string	"lastlorg"
.LASF337:
	.string	"GNU C 4.6.3"
.LASF166:
	.string	"normal"
.LASF88:
	.string	"rotate_start_time"
.LASF138:
	.string	"updateframe"
.LASF95:
	.string	"type"
.LASF74:
	.string	"trivial_accept"
.LASF1:
	.string	"unsigned char"
.LASF235:
	.string	"skinheight"
.LASF216:
	.string	"hull_t"
.LASF220:
	.string	"bboxmin"
.LASF82:
	.string	"brushlightinstant"
.LASF188:
	.string	"polys"
.LASF332:
	.string	"numNormals"
.LASF140:
	.string	"lastpose1"
.LASF141:
	.string	"lastpose2"
.LASF206:
	.string	"neighbours"
.LASF276:
	.string	"lightCmds"
.LASF109:
	.string	"leafs"
.LASF96:
	.string	"numframes"
.LASF28:
	.string	"cache_user_t"
.LASF39:
	.string	"style"
.LASF57:
	.string	"nummarksurfaces"
.LASF128:
	.string	"visdata"
.LASF264:
	.string	"shadowlight_s"
.LASF285:
	.string	"shadowlight_t"
.LASF126:
	.string	"numtextures"
.LASF145:
	.string	"lastpaliashdr"
.LASF66:
	.string	"msg_angles"
.LASF33:
	.string	"frame"
.LASF23:
	.string	"dmodel_t"
.LASF72:
	.string	"dlightframe"
.LASF0:
	.string	"signed char"
.LASF230:
	.string	"scale_origin"
.LASF119:
	.string	"surfaces"
.LASF17:
	.string	"maxs"
.LASF273:
	.string	"volumeCmds"
.LASF3:
	.string	"short unsigned int"
.LASF129:
	.string	"lightdata"
.LASF204:
	.string	"chain"
.LASF298:
	.string	"tslights"
.LASF334:
	.string	"wgPipe"
.LASF31:
	.string	"angles"
.LASF320:
	.string	"verts"
.LASF309:
	.string	"current"
.LASF207:
	.string	"firstvertex"
.LASF154:
	.string	"ST_SYNC"
.LASF295:
	.string	"vieworg"
.LASF239:
	.string	"posedata"
.LASF25:
	.string	"children"
.LASF9:
	.string	"double"
.LASF316:
	.string	"NormalToLatLong"
.LASF103:
	.string	"firstmodelsurface"
.LASF280:
	.string	"filtercube"
.LASF245:
	.string	"gl_lumatex"
.LASF284:
	.string	"oldlightorigin"
.LASF252:
	.string	"mod_alias3"
.LASF149:
	.string	"tangents"
.LASF165:
	.string	"mplane_s"
.LASF169:
	.string	"mplane_t"
.LASF73:
	.string	"dlightbits"
.LASF101:
	.string	"clipmins"
.LASF65:
	.string	"msg_origins"
.LASF136:
	.string	"_next"
.LASF269:
	.string	"castShadow"
.LASF163:
	.string	"position"
.LASF327:
	.string	"tangent"
.LASF218:
	.string	"numposes"
.LASF135:
	.string	"aliasframeinstant_s"
.LASF14:
	.string	"qboolean"
.LASF183:
	.string	"firstedge"
.LASF271:
	.string	"entvis"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
