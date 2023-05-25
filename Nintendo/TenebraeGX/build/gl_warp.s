	.file	"gl_warp.c"
	.section	".text"
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl BoundPoly
	.type	BoundPoly, @function
BoundPoly:
.LFB38:
	.file 1 "d:/Data/Nintendo/TenebraeGX/src/gl_warp.c"
	.loc 1 45 0
	.cfi_startproc
.LVL0:
	.loc 1 52 0
	cmpwi 0,3,0
	.loc 1 50 0
	lis 11,.LC1@ha
	.loc 1 49 0
	lis 9,.LC0@ha
	.loc 1 50 0
	lwz 0,.LC1@l(11)
	.loc 1 49 0
	lwz 9,.LC0@l(9)
	.loc 1 52 0
	li 11,0
	.loc 1 49 0
	stw 9,8(5)
	stw 9,4(5)
	stw 9,0(5)
	.loc 1 50 0
	stw 0,8(6)
	stw 0,4(6)
	stw 0,0(6)
.LVL1:
	.loc 1 52 0
	blelr- 0
.LVL2:
.L14:
	.loc 1 45 0 discriminator 1
	li 9,0
.LVL3:
.L8:
	.loc 1 55 0
	lfsx 0,4,9
	.loc 1 53 0
	cmpwi 7,9,8
	.loc 1 55 0
	lfsx 13,5,9
	fcmpu 6,0,13
	bnl- 6,.L4
	.loc 1 56 0
	stfsx 0,5,9
	lfsx 0,4,9
.L4:
	.loc 1 57 0
	lfsx 13,6,9
	fcmpu 6,13,0
	bnl- 6,.L6
	.loc 1 58 0
	stfsx 0,6,9
.L6:
	.loc 1 53 0
	addi 9,9,4
	bne+ 7,.L8
	.loc 1 52 0
	addi 11,11,1
	.loc 1 53 0
	addi 4,4,12
.LVL4:
	.loc 1 52 0
	cmpw 7,11,3
	bne+ 7,.L14
	blr
	.cfi_endproc
.LFE38:
	.size	BoundPoly, .-BoundPoly
	.align 2
	.globl SubdividePolygon
	.type	SubdividePolygon, @function
SubdividePolygon:
.LFB39:
	.loc 1 63 0
	.cfi_startproc
.LVL5:
	.loc 1 75 0
	cmpwi 7,3,60
	.loc 1 63 0
	mflr 0
	stwu 1,-1912(1)
.LCFI0:
	.cfi_def_cfa_offset 1912
	.cfi_register 65, 0
	stw 30,1848(1)
	mr 30,3
	.cfi_offset 30, -64
	stw 31,1852(1)
	mr 31,4
	.cfi_offset 31, -60
	stw 0,1916(1)
	stfd 25,1856(1)
	stfd 26,1864(1)
	stfd 27,1872(1)
	stfd 28,1880(1)
	stfd 29,1888(1)
	stfd 30,1896(1)
	stfd 31,1904(1)
	stw 27,1836(1)
	stw 28,1840(1)
	stw 29,1844(1)
	.loc 1 75 0
	bgt- 7,.L40
	.cfi_offset 29, -68
	.cfi_offset 28, -72
	.cfi_offset 27, -76
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	.cfi_offset 58, -48
	.cfi_offset 57, -56
	.cfi_offset 65, 4
.LVL6:
.L17:
	.loc 1 78 0
	mr 3,30
	mr 4,31
	addi 5,1,28
	addi 6,1,16
	bl BoundPoly
.LVL7:
	lis 9,gl_subdivide_size+12@ha
	lfs 28,gl_subdivide_size+12@l(9)
	.loc 1 82 0
	lis 9,.LC3@ha
	lfs 29,.LC3@l(9)
	.loc 1 84 0
	lis 9,.LC5@ha
	.loc 1 78 0
	fmr 25,28
	.loc 1 84 0
	lfs 27,.LC5@l(9)
	.loc 1 83 0
	fmr 26,29
	.loc 1 78 0
	addi 27,1,24
	addi 28,1,12
	.loc 1 80 0
	li 29,0
.LVL8:
.L30:
	.loc 1 82 0
	lfsu 31,4(28)
	lfsu 30,4(27)
.LVL9:
	fadds 1,30,31
	fmuls 1,1,29
	.loc 1 83 0
	fdivs 1,1,28
	fadd 1,1,26
	bl floor
.LVL10:
	.loc 1 80 0
	cmpwi 6,29,2
	.loc 1 83 0
	fmul 13,1,25
	frsp 13,13
.LVL11:
	.loc 1 84 0
	fsubs 31,31,13
	fcmpu 7,31,27
	blt- 7,.L18
	.loc 1 86 0
	fsubs 30,13,30
	fcmpu 7,30,27
	bnl- 7,.L41
.L18:
.LVL12:
	.loc 1 80 0
	addi 29,29,1
.LVL13:
	bne+ 6,.L30
	.loc 1 131 0
	li 3,28
	.loc 1 133 0
	lis 27,warpface@ha
	.loc 1 131 0
	bl Hunk_Alloc
.LVL14:
	.loc 1 133 0
	lwz 9,warpface@l(27)
	.loc 1 131 0
	mr 29,3
.LVL15:
	.loc 1 133 0
	lwz 0,36(9)
	stw 0,0(3)
	.loc 1 134 0
	stw 3,36(9)
	.loc 1 135 0
	stw 30,8(3)
	.loc 1 136 0
	bl R_GetNextVertexIndex
.LVL16:
	.loc 1 137 0
	cmpwi 7,30,0
	.loc 1 136 0
	stw 3,24(29)
.LVL17:
	.loc 1 137 0
	ble- 7,.L16
	li 28,0
	addi 29,1,8
.LVL18:
	la 27,warpface@l(27)
.LVL19:
.L31:
	.loc 1 139 0 discriminator 2
	lwz 9,0(27)
	.loc 1 142 0 discriminator 2
	mr 3,31
	.loc 1 139 0 discriminator 2
	lfs 0,4(31)
	.loc 1 142 0 discriminator 2
	mr 4,29
	.loc 1 139 0 discriminator 2
	lwz 9,48(9)
	.loc 1 142 0 discriminator 2
	mr 5,29
	.loc 1 139 0 discriminator 2
	lfs 13,0(31)
	.loc 1 137 0 discriminator 2
	addi 28,28,1
	.loc 1 139 0 discriminator 2
	lfs 12,4(9)
	.loc 1 140 0 discriminator 2
	lfs 11,20(9)
	.loc 1 139 0 discriminator 2
	fmuls 12,0,12
	lfs 10,0(9)
	.loc 1 140 0 discriminator 2
	fmuls 0,0,11
	lfs 11,16(9)
	.loc 1 139 0 discriminator 2
	fmadds 12,13,10,12
	lfs 10,8(9)
	.loc 1 140 0 discriminator 2
	fmadds 13,13,11,0
	.loc 1 139 0 discriminator 2
	lfs 0,8(31)
	.loc 1 140 0 discriminator 2
	lfs 11,24(9)
	.loc 1 137 0 discriminator 2
	addi 31,31,12
.LVL20:
	.loc 1 139 0 discriminator 2
	fmadds 12,0,10,12
	.loc 1 140 0 discriminator 2
	fmadds 0,0,11,13
	.loc 1 139 0 discriminator 2
	stfs 12,8(1)
	.loc 1 140 0 discriminator 2
	stfs 0,12(1)
	.loc 1 142 0 discriminator 2
	bl R_AllocateVertexInTemp
.LVL21:
	.loc 1 137 0 discriminator 2
	cmpw 7,28,30
	bne+ 7,.L31
.LVL22:
.L16:
	.loc 1 144 0
	lwz 0,1916(1)
	lwz 27,1836(1)
	mtlr 0
	lwz 28,1840(1)
	lwz 29,1844(1)
	lwz 30,1848(1)
.LVL23:
	lwz 31,1852(1)
.LVL24:
	lfd 25,1856(1)
	lfd 26,1864(1)
	lfd 27,1872(1)
	lfd 28,1880(1)
	lfd 29,1888(1)
	lfd 30,1896(1)
	lfd 31,1904(1)
	addi 1,1,1912
	.cfi_remember_state
.LCFI1:
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
	blr
.LVL25:
.L41:
.LCFI2:
	.cfi_restore_state
	.loc 1 91 0
	cmpwi 7,30,0
	.loc 1 90 0
	slwi 29,29,2
	add 9,31,29
.LVL26:
	.loc 1 91 0
	ble- 7,.L19
	.loc 1 62 0
	mulli 0,30,12
	.loc 1 91 0
	addi 11,1,36
	.loc 1 62 0
	mr 10,11
	add 0,9,0
.LVL27:
.L20:
	.loc 1 92 0 discriminator 2
	lfs 0,0(9)
	.loc 1 91 0 discriminator 2
	addi 9,9,12
.LVL28:
	cmpw 7,9,0
	.loc 1 92 0 discriminator 2
	fsubs 0,0,13
	stfsu 0,4(10)
.LVL29:
	.loc 1 91 0 discriminator 2
	bne+ 7,.L20
	.loc 1 97 0
	lwz 0,0(31)
	.loc 1 96 0
	subf 9,29,9
.LVL30:
	.loc 1 95 0
	slwi 10,30,2
	addi 29,1,8
	.loc 1 97 0
	stw 0,0(9)
	.loc 1 95 0
	add 10,29,10
	lwz 8,40(1)
	.loc 1 99 0
	li 28,0
	.loc 1 97 0
	lwz 0,4(31)
	.loc 1 99 0
	li 3,0
	.loc 1 95 0
	stw 8,32(10)
	.loc 1 103 0
	lis 10,.LC6@ha
	.loc 1 97 0
	stw 0,4(9)
	addi 27,1,296
	.loc 1 103 0
	lfs 13,.LC6@l(10)
.LVL31:
	addi 4,1,1064
	.loc 1 97 0
	lwz 0,8(31)
	stw 0,8(9)
.LVL32:
	li 9,1
.LVL33:
.L28:
	.loc 1 103 0
	lfsu 0,4(11)
	fcmpu 7,0,13
	cror 30,29,30
	bne- 7,.L21
	.loc 1 105 0
	mulli 10,3,12
	lwz 7,0(31)
	lwz 8,4(31)
	.loc 1 106 0
	addi 3,3,1
.LVL34:
	.loc 1 105 0
	lwz 0,8(31)
	add 10,29,10
	stw 7,1056(10)
	stw 8,1060(10)
	stw 0,1064(10)
.LVL35:
.L21:
	.loc 1 108 0
	fcmpu 7,0,13
	cror 30,28,30
	bne- 7,.L23
	.loc 1 110 0
	mulli 10,28,12
	lwz 7,0(31)
	lwz 8,4(31)
	.loc 1 111 0
	addi 28,28,1
.LVL36:
	.loc 1 110 0
	lwz 0,8(31)
	add 10,29,10
	stw 7,288(10)
	stw 8,292(10)
	stw 0,296(10)
.LVL37:
.L23:
	.loc 1 113 0
	fcmpu 7,0,13
	mr 0,9
	beq- 7,.L26
	.loc 1 113 0 is_stmt 0 discriminator 1
	lfs 12,4(11)
	mr 0,9
	fcmpu 6,12,13
	beq- 6,.L26
	.loc 1 115 0 is_stmt 1
	creqv 30,29,25
	beq- 7,.L26
	.loc 1 118 0
	fsubs 12,0,12
	mulli 12,3,12
	mulli 5,28,12
	.loc 1 62 0
	addi 8,31,-4
	li 10,0
	.loc 1 118 0
	fdivs 0,0,12
.LVL38:
.L27:
	.loc 1 120 0 discriminator 2
	lfs 12,16(8)
	.loc 1 119 0 discriminator 2
	cmpwi 7,10,8
	.loc 1 120 0 discriminator 2
	lfsu 11,4(8)
	.loc 1 62 0 discriminator 2
	add 6,27,5
	add 7,4,12
	.loc 1 120 0 discriminator 2
	fsubs 12,12,11
	fmadds 12,12,0,11
	stfsx 12,6,10
	stfsx 12,7,10
	.loc 1 119 0 discriminator 2
	addi 10,10,4
	bne+ 7,.L27
	.loc 1 121 0
	addi 3,3,1
.LVL39:
	.loc 1 122 0
	addi 28,28,1
.LVL40:
.L26:
	.loc 1 101 0
	cmpw 7,30,0
	addi 31,31,12
.LVL41:
	addi 9,9,1
.LVL42:
	bgt+ 7,.L28
.LVL43:
.L32:
	.loc 1 126 0
	bl SubdividePolygon
	.loc 1 127 0
	mr 3,28
	mr 4,27
	bl SubdividePolygon
	.loc 1 144 0
	lwz 0,1916(1)
	lwz 27,1836(1)
	mtlr 0
	lwz 28,1840(1)
	lwz 29,1844(1)
	lwz 30,1848(1)
.LVL44:
	lwz 31,1852(1)
	lfd 25,1856(1)
	lfd 26,1864(1)
	lfd 27,1872(1)
	lfd 28,1880(1)
	lfd 29,1888(1)
	lfd 30,1896(1)
	lfd 31,1904(1)
	addi 1,1,1912
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 57
	.cfi_restore 58
	.cfi_restore 59
	.cfi_restore 60
	.cfi_restore 61
	.cfi_restore 62
	.cfi_restore 63
.LCFI3:
	.cfi_def_cfa_offset 0
	blr
.LVL45:
.L40:
.LCFI4:
	.cfi_restore_state
	.loc 1 76 0
	lis 3,.LC2@ha
.LVL46:
	mr 4,30
.LVL47:
	la 3,.LC2@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L17
.LVL48:
.L19:
	.loc 1 97 0
	lwz 0,0(31)
	.loc 1 96 0
	subf 9,29,9
.LVL49:
	.loc 1 99 0
	li 28,0
	li 3,0
	.loc 1 97 0
	stw 0,0(9)
	addi 27,1,296
	addi 4,1,1064
	lwz 0,4(31)
	stw 0,4(9)
	lwz 0,8(31)
	stw 0,8(9)
.LVL50:
	b .L32
	.cfi_endproc
.LFE39:
	.size	SubdividePolygon, .-SubdividePolygon
	.align 2
	.globl GL_SubdivideSurface
	.type	GL_SubdivideSurface, @function
GL_SubdivideSurface:
.LFB40:
	.loc 1 156 0
	.cfi_startproc
.LVL51:
	mflr 0
	stwu 1,-776(1)
.LCFI5:
	.cfi_def_cfa_offset 776
	.cfi_register 65, 0
	.loc 1 163 0
	lis 9,warpface@ha
	stw 3,warpface@l(9)
.LVL52:
	.loc 1 156 0
	stw 0,780(1)
	.loc 1 169 0
	lwz 5,16(3)
	cmpwi 7,5,0
	ble- 7,.L47
	.cfi_offset 65, 4
	lis 9,loadmodel@ha
	.loc 1 155 0
	lwz 11,12(3)
	.loc 1 169 0
	lwz 9,loadmodel@l(9)
	.loc 1 155 0
	mulli 8,5,12
	addi 0,11,-1
	.loc 1 169 0
	addi 4,1,8
	.loc 1 155 0
	lwz 10,216(9)
	slwi 0,0,2
	lwz 6,184(9)
	add 8,4,8
	lwz 7,176(9)
	add 10,10,0
	.loc 1 169 0
	mr 9,4
	b .L46
.LVL53:
.L49:
	.loc 1 174 0
	lhzx 11,6,11
	mulli 11,11,12
	add 11,7,11
.LVL54:
	.loc 1 177 0
	lwz 0,0(11)
.LVL55:
	stw 0,0(9)
	lwz 0,4(11)
	stw 0,4(9)
	lwz 0,8(11)
	stw 0,8(9)
	addi 9,9,12
	.loc 1 169 0
	cmpw 7,9,8
	beq- 7,.L43
.LVL56:
.L46:
	.loc 1 171 0
	lwzu 0,4(10)
.LVL57:
	.loc 1 173 0
	cmpwi 7,0,0
	.loc 1 174 0
	slwi 11,0,3
	.loc 1 173 0
	bgt+ 7,.L49
	.loc 1 176 0
	mulli 0,0,-8
	add 11,6,0
	lhz 11,2(11)
	mulli 11,11,12
	add 11,7,11
.LVL58:
	.loc 1 177 0
	lwz 0,0(11)
	stw 0,0(9)
	lwz 0,4(11)
	stw 0,4(9)
	lwz 0,8(11)
	stw 0,8(9)
	addi 9,9,12
	.loc 1 169 0
	cmpw 7,9,8
	bne+ 7,.L46
.LVL59:
.L43:
	.loc 1 181 0
	mr 3,5
.LVL60:
	bl SubdividePolygon
.LVL61:
	.loc 1 182 0
	lwz 0,780(1)
	addi 1,1,776
	.cfi_remember_state
.LCFI6:
	.cfi_def_cfa_offset 0
	mtlr 0
	blr
.LVL62:
.L47:
.LCFI7:
	.cfi_restore_state
	.loc 1 168 0
	li 5,0
	addi 4,1,8
	b .L43
	.cfi_endproc
.LFE40:
	.size	GL_SubdivideSurface, .-GL_SubdivideSurface
	.align 2
	.globl EmitWaterPolys
	.type	EmitWaterPolys, @function
EmitWaterPolys:
.LFB41:
	.loc 1 203 0
	.cfi_startproc
.LVL63:
	mflr 0
	stwu 1,-120(1)
.LCFI8:
	.cfi_def_cfa_offset 120
	.cfi_register 65, 0
	stw 28,56(1)
	stw 0,124(1)
	stfd 26,72(1)
	.loc 1 210 0
	lwz 28,36(3)
	.cfi_offset 58, -48
	.cfi_offset 65, 4
	.cfi_offset 28, -64
.LVL64:
	.loc 1 203 0
	stfd 27,80(1)
	.loc 1 210 0
	cmpwi 7,28,0
	.loc 1 203 0
	stfd 28,88(1)
	stfd 29,96(1)
	stfd 30,104(1)
	stfd 31,112(1)
	stw 18,16(1)
	stw 19,20(1)
	stw 20,24(1)
	stw 21,28(1)
	stw 22,32(1)
	stw 23,36(1)
	stw 24,40(1)
	stw 25,44(1)
	stw 26,48(1)
	stw 27,52(1)
	stw 29,60(1)
	stw 30,64(1)
	stw 31,68(1)
	.loc 1 210 0
	beq- 7,.L50
	.cfi_offset 31, -52
	.cfi_offset 30, -56
	.cfi_offset 29, -60
	.cfi_offset 27, -68
	.cfi_offset 26, -72
	.cfi_offset 25, -76
	.cfi_offset 24, -80
	.cfi_offset 23, -84
	.cfi_offset 22, -88
	.cfi_offset 21, -92
	.cfi_offset 20, -96
	.cfi_offset 19, -100
	.cfi_offset 18, -104
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
	lis 24,globalVertexTable@ha
	lis 29,.LANCHOR0@ha
	la 24,globalVertexTable@l(24)
	lis 18,realtime@ha
	la 29,.LANCHOR0@l(29)
	lis 19,.LC8@ha
	lis 20,.LC9@ha
	lis 21,.LC11@ha
	lis 22,.LC12@ha
	lis 23,gl_mtexable@ha
	.loc 1 228 0
	lis 25,qglMultiTexCoord2fARB@ha
.LVL65:
.L55:
	.loc 1 212 0
	li 3,6
	bl glBegin
.LVL66:
	.loc 1 213 0
	lwz 0,8(28)
	lwz 9,0(24)
	cmpwi 7,0,0
	lwz 31,24(28)
.LVL67:
	ble- 7,.L52
	mulli 31,31,28
	.loc 1 219 0
	lfs 28,.LC8@l(19)
	lfd 29,.LC9@l(20)
	.loc 1 213 0
	li 30,0
	.loc 1 219 0
	lfs 30,.LC11@l(21)
	.loc 1 213 0
	add 31,9,31
	.loc 1 220 0
	lfs 31,.LC12@l(22)
	la 26,realtime@l(18)
	la 27,gl_mtexable@l(23)
	b .L54
.LVL68:
.L53:
	.loc 1 230 0
	lfs 1,0(31)
	lfs 2,4(31)
	lfs 3,8(31)
	.loc 1 213 0
	addi 31,31,28
	.loc 1 230 0
	bl glVertex3f
.LVL69:
	.loc 1 213 0
	lwz 0,8(28)
	cmpw 7,0,30
	ble- 7,.L52
.LVL70:
.L54:
	.loc 1 219 0
	lfs 0,16(31)
	addi 9,1,8
	lfd 12,0(26)
	.loc 1 213 0
	addi 30,30,1
	.loc 1 219 0
	lfs 13,12(31)
	fmadd 11,0,28,12
	.loc 1 222 0
	fmadd 12,13,28,12
	.loc 1 219 0
	fmul 11,11,29
	.loc 1 222 0
	fmul 12,12,29
	.loc 1 219 0
	fctiwz 11,11
	.loc 1 222 0
	fctiwz 12,12
	.loc 1 219 0
	stfiwx 11,0,9
	.loc 1 222 0
	addi 9,1,12
	stfiwx 12,0,9
	.loc 1 219 0
	lwz 9,8(1)
	.loc 1 222 0
	lwz 0,12(1)
	.loc 1 219 0
	rlwinm 9,9,2,22,29
	.loc 1 222 0
	rlwinm 0,0,2,22,29
	.loc 1 219 0
	lfsx 26,29,9
	.loc 1 222 0
	lfsx 27,29,0
	.loc 1 219 0
	fmadd 26,26,30,13
	.loc 1 222 0
	fmadd 27,27,30,0
	.loc 1 219 0
	frsp 26,26
.LVL71:
	.loc 1 222 0
	frsp 27,27
	.loc 1 220 0
	fmuls 26,26,31
.LVL72:
	.loc 1 223 0
	fmuls 27,27,31
.LVL73:
	.loc 1 225 0
	fmr 1,26
	fmr 2,27
	bl glTexCoord2f
.LVL74:
	.loc 1 227 0
	lbz 0,0(27)
	cmpwi 7,0,0
	beq+ 7,.L53
	.loc 1 228 0
	lwz 0,qglMultiTexCoord2fARB@l(25)
	li 3,0
	ori 3,3,33985
	fmr 1,26
	mtctr 0
	fmr 2,27
	bctrl
	.loc 1 230 0
	lfs 1,0(31)
	lfs 2,4(31)
	lfs 3,8(31)
	.loc 1 213 0
	addi 31,31,28
	.loc 1 230 0
	bl glVertex3f
.LVL75:
	.loc 1 213 0
	lwz 0,8(28)
	cmpw 7,0,30
	bgt+ 7,.L54
.LVL76:
.L52:
	.loc 1 232 0
	bl glEnd
	.loc 1 210 0
	lwz 28,0(28)
.LVL77:
	cmpwi 7,28,0
	bne+ 7,.L55
.L50:
	.loc 1 234 0
	lwz 0,124(1)
	lwz 18,16(1)
	mtlr 0
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
.LVL78:
	lwz 29,60(1)
	lwz 30,64(1)
	lwz 31,68(1)
	lfd 26,72(1)
	lfd 27,80(1)
	lfd 28,88(1)
	lfd 29,96(1)
	lfd 30,104(1)
	lfd 31,112(1)
	addi 1,1,120
.LCFI9:
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
	blr
	.cfi_endproc
.LFE41:
	.size	EmitWaterPolys, .-EmitWaterPolys
	.align 2
	.globl RandomXY
	.type	RandomXY, @function
RandomXY:
.LFB42:
	.loc 1 237 0
	.cfi_startproc
.LVL79:
	stwu 1,-24(1)
.LCFI10:
	.cfi_def_cfa_offset 24
	.loc 1 239 0
	fctiwz 2,2
.LVL80:
	fctiwz 1,1
.LVL81:
	.loc 1 241 0
	lis 11,0x4330
	.loc 1 239 0
	addi 9,1,20
	stfiwx 2,0,9
	addi 9,1,16
	lwz 0,20(1)
	stfiwx 1,0,9
	mullw 0,0,3
	.loc 1 241 0
	stw 11,8(1)
	.loc 1 239 0
	lwz 9,16(1)
	add 0,9,0
.LVL82:
	.loc 1 240 0
	slwi 9,0,13
	xor 0,9,0
.LVL83:
	.loc 1 241 0
	mullw 9,0,0
	mulli 9,9,19417
	addis 9,9,0x3
	addi 9,9,-6757
	mullw 9,9,0
	addis 9,9,0x4c
	addi 0,9,-13493
.LVL84:
	lis 9,0x4b
	ori 9,9,29807
	and 0,0,9
	lis 9,.LC14@ha
	xoris 0,0,0x8000
	lfs 0,.LC14@l(9)
	stw 0,12(1)
	lis 9,.LC16@ha
	lfd 1,8(1)
	.loc 1 243 0
	addi 1,1,24
.LCFI11:
	.cfi_def_cfa_offset 0
	.loc 1 241 0
	fsub 1,1,0
	lfs 0,.LC16@l(9)
	lis 9,.LC18@ha
	fdiv 1,1,0
	lfs 0,.LC18@l(9)
	fsub 1,0,1
	.loc 1 243 0
	frsp 1,1
	blr
	.cfi_endproc
.LFE42:
	.size	RandomXY, .-RandomXY
	.align 2
	.globl EmitMirrorWaterPolys
	.type	EmitMirrorWaterPolys, @function
EmitMirrorWaterPolys:
.LFB43:
	.loc 1 246 0
	.cfi_startproc
.LVL85:
	mflr 0
	stwu 1,-152(1)
.LCFI12:
	.cfi_def_cfa_offset 152
	.cfi_register 65, 0
	stw 29,92(1)
	stw 0,156(1)
	stfd 26,104(1)
	.loc 1 252 0
	lwz 29,36(3)
	.cfi_offset 58, -48
	.cfi_offset 65, 4
	.cfi_offset 29, -60
.LVL86:
	.loc 1 246 0
	stfd 27,112(1)
	.loc 1 252 0
	cmpwi 7,29,0
	.loc 1 246 0
	stfd 28,120(1)
	stfd 29,128(1)
	stfd 30,136(1)
	stfd 31,144(1)
	stw 17,44(1)
	stw 18,48(1)
	stw 19,52(1)
	stw 20,56(1)
	stw 21,60(1)
	stw 22,64(1)
	stw 23,68(1)
	stw 24,72(1)
	stw 25,76(1)
	stw 26,80(1)
	stw 27,84(1)
	stw 28,88(1)
	stw 30,96(1)
	stw 31,100(1)
	.loc 1 252 0
	beq- 7,.L59
	.cfi_offset 31, -52
	.cfi_offset 30, -56
	.cfi_offset 28, -64
	.cfi_offset 27, -68
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
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.cfi_offset 61, -24
	.cfi_offset 60, -32
	.cfi_offset 59, -40
.LVL87:
	lis 27,globalVertexTable@ha
	lis 28,.LANCHOR0@ha
.LBB6:
.LBB7:
	.loc 1 241 0
	lis 30,0x4b
	la 27,globalVertexTable@l(27)
	la 28,.LANCHOR0@l(28)
	lis 20,realtime@ha
	lis 21,.LC8@ha
	lis 22,.LC9@ha
	lis 23,.LC14@ha
	lis 24,.LC16@ha
	lis 25,.LC18@ha
	lis 26,.LC11@ha
	ori 30,30,29807
	lis 31,0x4330
.LVL88:
.L63:
.LBE7:
.LBE6:
	.loc 1 254 0
	li 3,6
	bl glBegin
.LVL89:
	.loc 1 255 0
	lwz 0,8(29)
	lwz 9,0(27)
	cmpwi 7,0,0
	lwz 19,24(29)
.LVL90:
	ble- 7,.L61
	mulli 19,19,28
	.loc 1 262 0
	lfs 26,.LC8@l(21)
	lfd 27,.LC9@l(22)
	.loc 1 255 0
	li 18,0
.LBB26:
.LBB8:
	.loc 1 241 0
	lfs 28,.LC14@l(23)
.LBE8:
.LBE26:
	.loc 1 255 0
	add 19,9,19
.LBB27:
.LBB9:
	.loc 1 241 0
	lfs 29,.LC16@l(24)
	la 17,realtime@l(20)
	lfs 30,.LC18@l(25)
.LBE9:
.LBE27:
	.loc 1 267 0
	lfs 31,.LC11@l(26)
.LVL91:
.L62:
	.loc 1 258 0 discriminator 2
	lfs 0,4(19)
.LBB28:
.LBB10:
	.loc 1 239 0 discriminator 2
	addi 9,1,28
.LBE10:
.LBE28:
	.loc 1 257 0 discriminator 2
	lfs 13,0(19)
.LVL92:
	.loc 1 255 0 discriminator 2
	addi 18,18,1
.LBB29:
.LBB11:
	.loc 1 239 0 discriminator 2
	fctiwz 11,0
	fctiwz 12,13
	stfiwx 11,0,9
	addi 9,1,24
.LBE11:
.LBE29:
	.loc 1 262 0 discriminator 2
	fmr 11,0
.LBB30:
.LBB12:
	.loc 1 239 0 discriminator 2
	lwz 0,28(1)
	stfiwx 12,0,9
	mulli 9,0,57
	.loc 1 241 0 discriminator 2
	stw 31,8(1)
	.loc 1 239 0 discriminator 2
	lwz 11,24(1)
.LBE12:
.LBE30:
.LBB31:
.LBB32:
	mulli 0,0,63
	.loc 1 241 0 discriminator 2
	stw 31,16(1)
.LBE32:
.LBE31:
.LBB47:
.LBB13:
	.loc 1 239 0 discriminator 2
	add 9,11,9
.LVL93:
.LBE13:
.LBE47:
.LBB48:
.LBB33:
	add 0,11,0
.LBE33:
.LBE48:
.LBB49:
.LBB14:
	.loc 1 240 0 discriminator 2
	slwi 10,9,13
.LBE14:
.LBE49:
.LBB50:
.LBB34:
	slwi 11,0,13
	xor 0,11,0
.LBE34:
.LBE50:
.LBB51:
.LBB15:
	xor 9,10,9
.LVL94:
	.loc 1 241 0 discriminator 2
	mullw 10,9,9
.LBE15:
.LBE51:
	.loc 1 262 0 discriminator 2
	lfd 12,0(17)
	fmadd 12,11,26,12
.LBB52:
.LBB35:
	.loc 1 241 0 discriminator 2
	mullw 11,0,0
.LBE35:
.LBE52:
	.loc 1 262 0 discriminator 2
	fmul 12,12,27
.LBB53:
.LBB16:
	.loc 1 241 0 discriminator 2
	mulli 10,10,19417
.LBE16:
.LBE53:
	.loc 1 262 0 discriminator 2
	fctiwz 12,12
.LBB54:
.LBB36:
	.loc 1 241 0 discriminator 2
	mulli 11,11,19417
.LBE36:
.LBE54:
.LBB55:
.LBB17:
	addis 10,10,0x3
	addi 10,10,-6757
.LBE17:
.LBE55:
.LBB56:
.LBB37:
	addis 11,11,0x3
.LBE37:
.LBE56:
.LBB57:
.LBB18:
	mullw 9,9,10
.LVL95:
.LBE18:
.LBE57:
.LBB58:
.LBB38:
	addi 11,11,-6757
	mullw 11,0,11
.LBE38:
.LBE58:
.LBB59:
.LBB19:
	addis 9,9,0x4c
	addi 9,9,-13493
	and 9,9,30
	xoris 9,9,0x8000
.LBE19:
.LBE59:
.LBB60:
.LBB39:
	addis 11,11,0x4c
.LBE39:
.LBE60:
.LBB61:
.LBB20:
	stw 9,12(1)
.LBE20:
.LBE61:
.LBB62:
.LBB40:
	addi 0,11,-13493
.LBE40:
.LBE62:
	.loc 1 262 0 discriminator 2
	addi 9,1,32
.LBB63:
.LBB41:
	.loc 1 241 0 discriminator 2
	and 0,0,30
.LBE41:
.LBE63:
.LBB64:
.LBB21:
	lfd 1,8(1)
.LBE21:
.LBE64:
.LBB65:
.LBB42:
	xoris 0,0,0x8000
	stw 0,20(1)
.LBE42:
.LBE65:
.LBB66:
.LBB22:
	fsub 1,1,28
.LBE22:
.LBE66:
.LBB67:
.LBB43:
	lfd 2,16(1)
.LBE43:
.LBE67:
.LBB68:
.LBB23:
	fdiv 1,1,29
.LBE23:
.LBE68:
	.loc 1 262 0 discriminator 2
	stfiwx 12,0,9
	lwz 0,32(1)
	.loc 1 267 0 discriminator 2
	lfs 3,8(19)
	.loc 1 262 0 discriminator 2
	rlwinm 0,0,2,22,29
	lfsx 12,28,0
.LVL96:
.LBB69:
.LBB44:
	.loc 1 241 0 discriminator 2
	fsub 2,2,28
.LBE44:
.LBE69:
.LBB70:
.LBB24:
	fsub 1,30,1
.LBE24:
.LBE70:
.LBB71:
.LBB45:
	fdiv 2,2,29
	fsub 2,30,2
.LBE45:
.LBE71:
.LBB72:
.LBB25:
	frsp 1,1
.LBE25:
.LBE72:
.LBB73:
.LBB46:
	frsp 2,2
.LBE46:
.LBE73:
	.loc 1 262 0 discriminator 2
	fmuls 1,12,1
	.loc 1 264 0 discriminator 2
	fmuls 2,12,2
	.loc 1 267 0 discriminator 2
	fmadds 1,1,31,13
	fmadds 2,2,31,0
	bl glTexCoord3f
.LVL97:
	.loc 1 268 0 discriminator 2
	lfs 1,0(19)
	lfs 2,4(19)
	lfs 3,8(19)
	.loc 1 255 0 discriminator 2
	addi 19,19,28
	.loc 1 268 0 discriminator 2
	bl glVertex3f
.LVL98:
	.loc 1 255 0 discriminator 2
	lwz 0,8(29)
	cmpw 7,0,18
	bgt+ 7,.L62
.LVL99:
.L61:
	.loc 1 270 0
	bl glEnd
	.loc 1 252 0
	lwz 29,0(29)
.LVL100:
	cmpwi 7,29,0
	bne+ 7,.L63
.L59:
	.loc 1 272 0
	lwz 0,156(1)
	lwz 17,44(1)
	mtlr 0
	lwz 18,48(1)
	lwz 19,52(1)
	lwz 20,56(1)
	lwz 21,60(1)
	lwz 22,64(1)
	lwz 23,68(1)
	lwz 24,72(1)
	lwz 25,76(1)
	lwz 26,80(1)
	lwz 27,84(1)
	lwz 28,88(1)
	lwz 29,92(1)
.LVL101:
	lwz 30,96(1)
	lwz 31,100(1)
	lfd 26,104(1)
	lfd 27,112(1)
	lfd 28,120(1)
	lfd 29,128(1)
	lfd 30,136(1)
	lfd 31,144(1)
	addi 1,1,152
.LCFI13:
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
	blr
	.cfi_endproc
.LFE43:
	.size	EmitMirrorWaterPolys, .-EmitMirrorWaterPolys
	.align 2
	.globl EmitMirrorPolys
	.type	EmitMirrorPolys, @function
EmitMirrorPolys:
.LFB44:
	.loc 1 275 0
	.cfi_startproc
.LVL102:
	mflr 0
	stwu 1,-48(1)
.LCFI14:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	stw 29,28(1)
	stw 0,52(1)
	stfd 31,40(1)
	.loc 1 280 0
	lwz 29,36(3)
	.cfi_offset 63, -8
	.cfi_offset 65, 4
	.cfi_offset 29, -20
.LVL103:
	.loc 1 275 0
	stw 25,12(1)
	.loc 1 280 0
	cmpwi 7,29,0
	.loc 1 275 0
	stw 26,16(1)
	stw 27,20(1)
	stw 28,24(1)
	stw 30,32(1)
	stw 31,36(1)
	.loc 1 280 0
	beq- 7,.L66
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 28, -24
	.cfi_offset 27, -28
	.cfi_offset 26, -32
	.cfi_offset 25, -36
	lis 27,globalVertexTable@ha
	lis 25,qglMultiTexCoord2fARB@ha
	la 27,globalVertexTable@l(27)
	lis 26,.LC12@ha
.LVL104:
.L70:
	.loc 1 282 0
	li 3,6
	bl glBegin
.LVL105:
	.loc 1 283 0
	lwz 0,8(29)
	lwz 9,0(27)
	cmpwi 7,0,0
	lwz 31,24(29)
.LVL106:
	ble- 7,.L68
.LVL107:
	mulli 31,31,28
	.loc 1 285 0
	lfs 31,.LC12@l(26)
	.loc 1 283 0
	li 30,0
	la 28,qglMultiTexCoord2fARB@l(25)
	add 31,9,31
.LVL108:
.L69:
	.loc 1 285 0 discriminator 2
	lwz 0,0(28)
	li 3,0
	lfs 1,12(31)
	ori 3,3,33985
	lfs 2,16(31)
	mtctr 0
	fmuls 1,1,31
	.loc 1 283 0 discriminator 2
	addi 30,30,1
	.loc 1 285 0 discriminator 2
	fmuls 2,2,31
	bctrl
	.loc 1 286 0 discriminator 2
	mr 3,31
	bl glTexCoord3fv
	.loc 1 287 0 discriminator 2
	mr 3,31
	bl glVertex3fv
.LVL109:
	.loc 1 283 0 discriminator 2
	lwz 0,8(29)
	addi 31,31,28
.LVL110:
	cmpw 7,0,30
	bgt+ 7,.L69
.LVL111:
.L68:
	.loc 1 289 0
	bl glEnd
	.loc 1 280 0
	lwz 29,0(29)
.LVL112:
	cmpwi 7,29,0
	bne+ 7,.L70
.L66:
	.loc 1 291 0
	lwz 0,52(1)
	lwz 25,12(1)
	mtlr 0
	lwz 26,16(1)
	lwz 27,20(1)
	lwz 28,24(1)
	lwz 29,28(1)
.LVL113:
	lwz 30,32(1)
	lwz 31,36(1)
	lfd 31,40(1)
	addi 1,1,48
.LCFI15:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	blr
	.cfi_endproc
.LFE44:
	.size	EmitMirrorPolys, .-EmitMirrorPolys
	.align 2
	.globl OverrideFluidTex
	.type	OverrideFluidTex, @function
OverrideFluidTex:
.LFB45:
	.loc 1 302 0
	.cfi_startproc
.LVL114:
	stwu 1,-24(1)
.LCFI16:
	.cfi_def_cfa_offset 24
	.loc 1 303 0
	lis 9,.LC18@ha
	.loc 1 302 0
	mflr 0
	stfd 31,16(1)
	.loc 1 303 0
	lfs 31,.LC18@l(9)
	.cfi_offset 63, -8
	.cfi_register 65, 0
	lis 9,gl_watershader+12@ha
	lfs 0,gl_watershader+12@l(9)
	.loc 1 302 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -16
	.loc 1 303 0
	fcmpu 7,0,31
	.loc 1 302 0
	stw 31,12(1)
	stw 0,28(1)
	.loc 1 303 0
	li 31,0
	.cfi_offset 65, 4
	.cfi_offset 31, -12
	blt- 7,.L74
	.loc 1 304 0
	lis 9,r_wateralpha+12@ha
	lfs 0,r_wateralpha+12@l(9)
	fcmpu 7,0,31
	beq- 7,.L74
	.loc 1 306 0
	lis 4,.LC19@ha
	la 4,.LC19@l(4)
	bl strstr
.LVL115:
	cmpwi 7,3,0
	beq- 7,.L75
	.loc 1 307 0
	li 3,3042
	.loc 1 311 0
	lis 30,newwatertex@ha
.LVL116:
	.loc 1 307 0
	bl glEnable
	.loc 1 309 0
	li 4,771
	li 3,770
	.loc 1 313 0
	lis 31,realtime@ha
	.loc 1 309 0
	bl glBlendFunc
	.loc 1 311 0
	lwz 3,newwatertex@l(30)
	bl GL_Bind
	.loc 1 312 0
	lis 9,.LC3@ha
	lfs 1,.LC3@l(9)
	fmr 3,31
	fmr 2,1
	bl glScalef
	.loc 1 313 0
	lis 9,.LC6@ha
	lfs 3,.LC6@l(9)
	lis 9,.LC20@ha
	lfd 0,.LC20@l(9)
	lfd 1,realtime@l(31)
	fmul 1,1,0
	frsp 1,1
	fmr 2,1
	bl glTranslatef
	.loc 1 315 0
	bl GL_EnableMultitexture
	.loc 1 316 0
	lwz 3,newwatertex@l(30)
	bl GL_Bind
	.loc 1 317 0
	lis 9,.LC21@ha
	lfs 1,.LC21@l(9)
	li 3,8960
	li 4,8704
	bl glTexEnvf
	.loc 1 318 0
	lis 9,.LC6@ha
	lfs 3,.LC6@l(9)
	lis 9,.LC22@ha
	lfd 0,.LC22@l(9)
	lfd 1,realtime@l(31)
	.loc 1 320 0
	li 31,1
	.loc 1 318 0
	fmul 1,1,0
	frsp 1,1
	fmr 2,1
	bl glTranslatef
	.loc 1 319 0
	lis 9,.LC11@ha
	lfs 1,.LC11@l(9)
	fmr 3,31
	fmr 2,1
	bl glScalef
.L74:
	.loc 1 382 0
	lwz 0,28(1)
	mr 3,31
	lwz 30,8(1)
	mtlr 0
	lwz 31,12(1)
	lfd 31,16(1)
	addi 1,1,24
	.cfi_remember_state
.LCFI17:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL117:
.L75:
.LCFI18:
	.cfi_restore_state
	.loc 1 324 0
	lis 4,.LC23@ha
	mr 3,30
	la 4,.LC23@l(4)
	bl strstr
	cmpwi 7,3,0
	beq- 7,.L76
	.loc 1 325 0
	li 3,3042
	.loc 1 327 0
	lis 30,newteletex@ha
.LVL118:
	.loc 1 325 0
	bl glEnable
	.loc 1 326 0
	li 4,1
	li 3,1
	.loc 1 328 0
	lis 31,realtime@ha
	.loc 1 326 0
	bl glBlendFunc
	.loc 1 327 0
	lwz 3,newteletex@l(30)
	bl GL_Bind
	.loc 1 328 0
	lis 9,.LC3@ha
	lfs 31,.LC3@l(9)
	lis 9,.LC6@ha
	lfd 2,realtime@l(31)
	lfs 3,.LC6@l(9)
	frsp 1,2
	fmul 2,2,31
	frsp 2,2
	bl glTranslatef
	.loc 1 331 0
	bl GL_EnableMultitexture
	.loc 1 332 0
	lwz 3,newteletex@l(30)
	bl GL_Bind
	.loc 1 333 0
	lis 9,.LC21@ha
	lfs 1,.LC21@l(9)
	li 3,8960
	li 4,8704
	bl glTexEnvf
	.loc 1 334 0
	lfd 1,realtime@l(31)
	lis 9,.LC6@ha
	fmul 2,1,31
	lfs 3,.LC6@l(9)
	frsp 1,1
	frsp 2,2
	fneg 1,1
	bl glTranslatef
.L82:
	.loc 1 376 0
	lis 4,color_black@ha
	li 3,2918
	la 4,color_black@l(4)
	.loc 1 377 0
	li 31,1
	.loc 1 376 0
	bl glFogfv
	.loc 1 377 0
	b .L74
.LVL119:
.L76:
	.loc 1 341 0
	lis 4,.LC24@ha
	mr 3,30
	la 4,.LC24@l(4)
	bl strstr
	cmpwi 7,3,0
	beq- 7,.L77
	.loc 1 343 0
	li 3,3042
	.loc 1 346 0
	li 31,1
	.loc 1 343 0
	bl glDisable
	.loc 1 344 0
	lis 9,newlavatex@ha
	lwz 3,newlavatex@l(9)
	bl GL_Bind
	.loc 1 345 0
	fmr 1,31
	fmr 2,31
	fmr 3,31
	fmr 4,31
	bl glColor4f
	.loc 1 346 0
	b .L74
.L77:
	.loc 1 350 0
	lis 4,.LC25@ha
	mr 3,30
	la 4,.LC25@l(4)
	bl strstr
	cmpwi 7,3,0
	beq- 7,.L78
	.loc 1 351 0
	li 3,3042
	.loc 1 355 0
	lis 30,newslimetex@ha
.LVL120:
	.loc 1 351 0
	bl glEnable
	.loc 1 353 0
	li 4,771
	li 3,770
	.loc 1 357 0
	lis 31,realtime@ha
	.loc 1 353 0
	bl glBlendFunc
	.loc 1 355 0
	lwz 3,newslimetex@l(30)
	bl GL_Bind
	.loc 1 356 0
	lis 9,.LC3@ha
	lfs 1,.LC3@l(9)
	fmr 3,31
	fmr 2,1
	bl glScalef
	.loc 1 357 0
	lis 9,.LC6@ha
	lfs 3,.LC6@l(9)
	lis 9,.LC26@ha
	lfd 0,.LC26@l(9)
	lfd 1,realtime@l(31)
	fmul 1,1,0
	frsp 1,1
	fmr 2,1
	bl glTranslatef
	.loc 1 359 0
	bl GL_EnableMultitexture
	.loc 1 360 0
	lwz 3,newslimetex@l(30)
	bl GL_Bind
	.loc 1 361 0
	lis 9,.LC21@ha
	lfs 1,.LC21@l(9)
	li 3,8960
	li 4,8704
	bl glTexEnvf
	.loc 1 362 0
	lis 9,.LC11@ha
	lfs 1,.LC11@l(9)
	fmr 3,31
	fmr 2,1
	bl glScalef
	.loc 1 363 0
	lis 9,.LC6@ha
	lfs 3,.LC6@l(9)
	lis 9,.LC22@ha
	lfd 1,realtime@l(31)
	.loc 1 364 0
	li 31,1
	.loc 1 363 0
	lfd 0,.LC22@l(9)
	fmul 1,1,0
	frsp 1,1
	fmr 2,1
	bl glTranslatef
	.loc 1 364 0
	b .L74
.LVL121:
.L78:
	.loc 1 368 0
	lis 4,.LC27@ha
	mr 3,30
	la 4,.LC27@l(4)
	bl strstr
	cmpwi 7,3,0
	beq- 7,.L74
	.loc 1 369 0
	li 3,3042
	bl glEnable
	.loc 1 370 0
	li 4,1
	li 3,774
	bl glBlendFunc
	.loc 1 371 0
	lis 9,newenvmap@ha
	lwz 3,newenvmap@l(9)
	bl GL_Bind
	.loc 1 372 0
	li 3,8192
	li 4,9472
	li 5,9218
	bl glTexGeni
	.loc 1 373 0
	li 4,9472
	li 5,9218
	li 3,8193
	bl glTexGeni
	.loc 1 374 0
	li 3,3168
	bl glEnable
	.loc 1 375 0
	li 3,3169
	bl glEnable
	b .L82
	.cfi_endproc
.LFE45:
	.size	OverrideFluidTex, .-OverrideFluidTex
	.align 2
	.globl EmitSkyPolys
	.type	EmitSkyPolys, @function
EmitSkyPolys:
.LFB47:
	.loc 1 405 0
	.cfi_startproc
.LVL122:
	mflr 0
	stwu 1,-88(1)
.LCFI19:
	.cfi_def_cfa_offset 88
	.cfi_register 65, 0
	stw 28,48(1)
	stw 0,92(1)
	stfd 29,64(1)
	.loc 1 413 0
	lwz 28,36(3)
	.cfi_offset 61, -24
	.cfi_offset 65, 4
	.cfi_offset 28, -40
.LVL123:
	.loc 1 405 0
	stfd 30,72(1)
	.loc 1 413 0
	cmpwi 7,28,0
	.loc 1 405 0
	stfd 31,80(1)
	stw 19,12(1)
	stw 20,16(1)
	stw 21,20(1)
	stw 22,24(1)
	stw 23,28(1)
	stw 24,32(1)
	stw 25,36(1)
	stw 26,40(1)
	stw 27,44(1)
	stw 29,52(1)
	stw 30,56(1)
	stw 31,60(1)
	.loc 1 413 0
	beq- 7,.L83
	.cfi_offset 31, -28
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	.cfi_offset 27, -44
	.cfi_offset 26, -48
	.cfi_offset 25, -52
	.cfi_offset 24, -56
	.cfi_offset 23, -60
	.cfi_offset 22, -64
	.cfi_offset 21, -68
	.cfi_offset 20, -72
	.cfi_offset 19, -76
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	lis 24,globalVertexTable@ha
	lis 19,r_origin@ha
	la 24,globalVertexTable@l(24)
	lis 20,.LC28@ha
	lis 21,.LC29@ha
	lis 22,speedscale@ha
	lis 23,.LC30@ha
.LVL124:
.L87:
	.loc 1 415 0
	li 3,6
	bl glBegin
.LVL125:
	.loc 1 416 0
	lwz 0,8(28)
	lwz 9,0(24)
	cmpwi 7,0,0
	lwz 31,24(28)
.LVL126:
	ble- 7,.L85
	mulli 31,31,28
	.loc 1 419 0
	lfs 31,.LC28@l(20)
	.loc 1 416 0
	li 29,0
	la 30,r_origin@l(19)
	add 31,9,31
	la 25,.LC29@l(21)
	la 26,speedscale@l(22)
	la 27,.LC30@l(23)
.LVL127:
.L86:
	.loc 1 418 0 discriminator 2
	lfs 30,4(31)
	.loc 1 416 0 discriminator 2
	addi 29,29,1
	.loc 1 418 0 discriminator 2
	lfs 0,4(30)
	lfs 29,0(31)
	fsubs 30,30,0
	lfs 1,8(31)
	lfs 13,0(30)
	lfs 0,8(30)
	fsubs 29,29,13
.LVL128:
	fsubs 1,1,0
	.loc 1 421 0 discriminator 2
	fmuls 0,30,30
	.loc 1 419 0 discriminator 2
	fmuls 1,1,31
.LVL129:
	.loc 1 421 0 discriminator 2
	fmadds 0,29,29,0
	fmadds 1,1,1,0
.LVL130:
	.loc 1 422 0 discriminator 2
	bl sqrt
.LVL131:
	.loc 1 423 0 discriminator 2
	lfs 12,0(25)
	.loc 1 422 0 discriminator 2
	frsp 1,1
.LVL132:
	.loc 1 428 0 discriminator 2
	lfs 13,0(26)
	lfs 0,0(27)
	.loc 1 423 0 discriminator 2
	fdivs 12,12,1
.LVL133:
	.loc 1 428 0 discriminator 2
	fmadds 1,29,12,13
	.loc 1 429 0 discriminator 2
	fmadds 30,30,12,13
.LVL134:
	.loc 1 431 0 discriminator 2
	fmuls 1,1,0
	fmuls 2,30,0
.LVL135:
	bl glTexCoord2f
.LVL136:
	.loc 1 432 0 discriminator 2
	mr 3,31
	bl glVertex3fv
.LVL137:
	.loc 1 416 0 discriminator 2
	lwz 0,8(28)
	addi 31,31,28
.LVL138:
	cmpw 7,0,29
	bgt+ 7,.L86
.LVL139:
.L85:
	.loc 1 434 0
	bl glEnd
	.loc 1 413 0
	lwz 28,0(28)
.LVL140:
	cmpwi 7,28,0
	bne+ 7,.L87
.L83:
	.loc 1 436 0
	lwz 0,92(1)
	lwz 19,12(1)
	mtlr 0
	lwz 20,16(1)
	lwz 21,20(1)
	lwz 22,24(1)
	lwz 23,28(1)
	lwz 24,32(1)
	lwz 25,36(1)
	lwz 26,40(1)
	lwz 27,44(1)
	lwz 28,48(1)
.LVL141:
	lwz 29,52(1)
	lwz 30,56(1)
	lwz 31,60(1)
	lfd 29,64(1)
	lfd 30,72(1)
	lfd 31,80(1)
	addi 1,1,88
.LCFI20:
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
	blr
	.cfi_endproc
.LFE47:
	.size	EmitSkyPolys, .-EmitSkyPolys
	.align 2
	.globl EmitBothSkyLayers
	.type	EmitBothSkyLayers, @function
EmitBothSkyLayers:
.LFB48:
	.loc 1 448 0
	.cfi_startproc
.LVL142:
	mflr 0
	stwu 1,-56(1)
.LCFI21:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	stfd 31,48(1)
	stw 0,60(1)
	stw 28,32(1)
	.loc 1 452 0
	lis 28,realtime@ha
	.cfi_offset 28, -24
	.cfi_offset 65, 4
	.cfi_offset 63, -8
	.loc 1 448 0
	stw 29,36(1)
	.loc 1 453 0
	lis 29,0x4330
	.cfi_offset 29, -20
	.loc 1 448 0
	stw 30,40(1)
	mr 30,3
	.cfi_offset 30, -16
	stw 31,44(1)
	.loc 1 449 0
	.cfi_offset 31, -12
	bl GL_DisableMultitexture
.LVL143:
	.loc 1 451 0
	lis 9,solidskytexture@ha
	.loc 1 453 0
	lis 31,speedscale@ha
	.loc 1 451 0
	lwz 3,solidskytexture@l(9)
	bl GL_Bind
	.loc 1 452 0
	lis 9,.LC5@ha
	lfd 13,realtime@l(28)
	.loc 1 455 0
	mr 3,30
	.loc 1 452 0
	lfs 0,.LC5@l(9)
	.loc 1 453 0
	lis 9,.LC14@ha
	lfs 31,.LC14@l(9)
	addi 9,1,24
	.loc 1 452 0
	fmul 0,13,0
	.loc 1 453 0
	stw 29,8(1)
	.loc 1 452 0
	frsp 0,0
	.loc 1 453 0
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 0,24(1)
	rlwinm 0,0,0,0,24
	xoris 0,0,0x8000
	stw 0,12(1)
	lfd 13,8(1)
	fsub 13,13,31
	frsp 13,13
	fsubs 0,0,13
	stfs 0,speedscale@l(31)
	.loc 1 455 0
	bl EmitSkyPolys
	.loc 1 457 0
	li 3,3042
	bl glEnable
	.loc 1 458 0
	lis 9,alphaskytexture@ha
	lwz 3,alphaskytexture@l(9)
	bl GL_Bind
	.loc 1 459 0
	lis 9,.LC33@ha
	lfd 13,realtime@l(28)
	.loc 1 462 0
	mr 3,30
	.loc 1 459 0
	lfs 0,.LC33@l(9)
	.loc 1 460 0
	addi 9,1,28
	stw 29,16(1)
	.loc 1 459 0
	fmul 0,13,0
	frsp 0,0
	.loc 1 460 0
	fctiwz 13,0
	stfiwx 13,0,9
	lwz 0,28(1)
	.loc 1 465 0
	lwz 28,32(1)
	.loc 1 460 0
	rlwinm 0,0,0,0,24
	.loc 1 465 0
	lwz 29,36(1)
	.loc 1 460 0
	xoris 0,0,0x8000
	.loc 1 465 0
	lwz 30,40(1)
.LVL144:
	.loc 1 460 0
	stw 0,20(1)
	.loc 1 465 0
	lwz 0,60(1)
	.loc 1 460 0
	lfd 13,16(1)
	.loc 1 465 0
	mtlr 0
	.loc 1 460 0
	fsub 31,13,31
	frsp 31,31
	fsubs 0,0,31
	.loc 1 465 0
	lfd 31,48(1)
	.loc 1 460 0
	stfs 0,speedscale@l(31)
	.loc 1 465 0
	lwz 31,44(1)
	addi 1,1,56
.LCFI22:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.loc 1 462 0
	b EmitSkyPolys
.LVL145:
	.cfi_endproc
.LFE48:
	.size	EmitBothSkyLayers, .-EmitBothSkyLayers
	.align 2
	.globl fgetLittleShort
	.type	fgetLittleShort, @function
fgetLittleShort:
.LFB49:
	.loc 1 640 0
	.cfi_startproc
.LVL146:
	mflr 0
	stwu 1,-16(1)
.LCFI23:
	.cfi_def_cfa_offset 16
	.cfi_register 65, 0
	stw 30,8(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,20(1)
	stw 31,12(1)
	.loc 1 643 0
	.cfi_offset 31, -4
	.cfi_offset 65, 4
	bl fgetc
.LVL147:
	mr 31,3
.LVL148:
	.loc 1 644 0
	mr 3,30
.LVL149:
	bl fgetc
.LVL150:
	.loc 1 647 0
	lwz 0,20(1)
	.loc 1 646 0
	rlwinm 3,3,0,0xff
	rlwinm 31,31,0,0xff
.LVL151:
	.loc 1 647 0
	mtlr 0
	.loc 1 646 0
	slwi 3,3,8
.LVL152:
	add 3,3,31
	.loc 1 647 0
	lwz 30,8(1)
.LVL153:
	lwz 31,12(1)
	extsh 3,3
	addi 1,1,16
.LCFI24:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE49:
	.size	fgetLittleShort, .-fgetLittleShort
	.align 2
	.globl fgetLittleLong
	.type	fgetLittleLong, @function
fgetLittleLong:
.LFB50:
	.loc 1 650 0
	.cfi_startproc
.LVL154:
	mflr 0
	stwu 1,-24(1)
.LCFI25:
	.cfi_def_cfa_offset 24
	.cfi_register 65, 0
	stw 28,8(1)
	stw 0,28(1)
	stw 29,12(1)
	stw 30,16(1)
	stw 31,20(1)
	.loc 1 650 0
	mr 31,3
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 29, -12
	.cfi_offset 65, 4
	.cfi_offset 28, -16
	.loc 1 653 0
	bl fgetc
.LVL155:
	mr 28,3
.LVL156:
	.loc 1 654 0
	mr 3,31
.LVL157:
	bl fgetc
	mr 29,3
.LVL158:
	.loc 1 655 0
	mr 3,31
.LVL159:
	bl fgetc
	mr 30,3
.LVL160:
	.loc 1 656 0
	mr 3,31
.LVL161:
	bl fgetc
.LVL162:
	.loc 1 658 0
	rlwinm 9,28,0,0xff
	rlwinm 0,29,8,16,23
	slwi 3,3,24
.LVL163:
	add 0,9,0
	rlwinm 9,30,16,8,15
	add 0,0,9
	.loc 1 659 0
	lwz 28,8(1)
.LVL164:
	add 3,0,3
	lwz 0,28(1)
	lwz 29,12(1)
.LVL165:
	mtlr 0
	lwz 30,16(1)
.LVL166:
	lwz 31,20(1)
.LVL167:
	addi 1,1,24
.LCFI26:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE50:
	.size	fgetLittleLong, .-fgetLittleLong
	.align 2
	.globl LoadTGA
	.type	LoadTGA, @function
LoadTGA:
.LFB53:
	.loc 1 889 0
	.cfi_startproc
.LVL168:
	mflr 0
	stwu 1,-72(1)
.LCFI27:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	mfcr 12
	stw 25,44(1)
	.loc 1 895 0
	lis 25,targa_header@ha
	.cfi_offset 25, -28
	.cfi_register 70, 12
	.loc 1 889 0
	stw 0,76(1)
	stw 12,8(1)
	stw 29,60(1)
	.loc 1 895 0
	la 29,targa_header@l(25)
	.cfi_offset 29, -12
	.cfi_offset 70, -64
	.cfi_offset 65, 4
	.loc 1 889 0
	stw 31,68(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 17,12(1)
	stw 18,16(1)
	stw 19,20(1)
	stw 20,24(1)
	stw 21,28(1)
	stw 22,32(1)
	stw 23,36(1)
	stw 24,40(1)
	stw 26,48(1)
	stw 27,52(1)
	stw 28,56(1)
	stw 30,64(1)
	.loc 1 895 0
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 26, -24
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
	bl fgetc
.LVL169:
	stb 3,targa_header@l(25)
	.loc 1 896 0
	mr 3,31
	bl fgetc
	stb 3,1(29)
	.loc 1 897 0
	mr 3,31
	bl fgetc
	stb 3,2(29)
	.loc 1 899 0
	mr 3,31
	bl fgetLittleShort
	sth 3,4(29)
	.loc 1 900 0
	mr 3,31
	bl fgetLittleShort
	sth 3,6(29)
	.loc 1 901 0
	mr 3,31
	bl fgetc
	stb 3,8(29)
	.loc 1 902 0
	mr 3,31
	bl fgetLittleShort
	sth 3,10(29)
	.loc 1 903 0
	mr 3,31
	bl fgetLittleShort
	sth 3,12(29)
	.loc 1 904 0
	mr 3,31
	bl fgetLittleShort
	sth 3,14(29)
	.loc 1 905 0
	mr 3,31
	bl fgetLittleShort
	sth 3,16(29)
	.loc 1 906 0
	mr 3,31
	bl fgetc
	stb 3,18(29)
	.loc 1 907 0
	mr 3,31
	bl fgetc
	.loc 1 909 0
	lbz 0,2(29)
	.loc 1 907 0
	stb 3,19(29)
	.loc 1 909 0
	cmpwi 7,0,2
	beq- 7,.L94
	.loc 1 910 0
	cmpwi 7,0,10
	beq- 7,.L94
	.loc 1 911 0
	lis 3,.LC34@ha
	la 3,.LC34@l(3)
	crxor 6,6,6
	bl Sys_Error
.L94:
	.loc 1 913 0
	lbz 0,1(29)
	cmpwi 7,0,0
	bne- 7,.L95
	.loc 1 914 0
	lbz 0,18(29)
	cmpwi 7,0,32
	beq- 7,.L96
	.loc 1 914 0 is_stmt 0 discriminator 1
	cmpwi 7,0,24
	beq- 7,.L96
.L95:
	.loc 1 915 0 is_stmt 1
	lis 3,.LC35@ha
	la 3,.LC35@l(3)
	crxor 6,6,6
	bl Sys_Error
.L96:
	.loc 1 917 0
	lhz 30,14(29)
.LVL170:
	.loc 1 921 0
	lis 27,targa_rgba@ha
	.loc 1 918 0
	lhz 28,16(29)
.LVL171:
	.loc 1 919 0
	mullw 3,30,28
	.loc 1 921 0
	slwi 3,3,2
	bl malloc
	.loc 1 923 0
	lbz 6,targa_header@l(25)
	.loc 1 921 0
	mr 26,3
	stw 3,targa_rgba@l(27)
	.loc 1 923 0
	cmpwi 7,6,0
	bne- 7,.L175
.L97:
	.loc 1 927 0
	lbz 0,19(29)
	.loc 1 935 0
	li 19,0
	.loc 1 927 0
	andi. 9,0,32
	bne- 0,.L98
	.loc 1 929 0
	addi 0,28,-1
	.loc 1 930 0
	mulli 19,30,-8
	.loc 1 929 0
	slwi 0,0,2
	mullw 0,0,30
	add 26,26,0
.LVL172:
.L98:
	.loc 1 938 0
	lbz 0,2(29)
	cmpwi 7,0,2
	beq- 7,.L176
	.loc 1 967 0
	cmpwi 7,0,10
	beq- 7,.L177
.LVL173:
.L100:
	.loc 1 1046 0
	mr 3,31
	bl fclose
	.loc 1 1048 0
	lwz 0,76(1)
	lwz 12,8(1)
	mtlr 0
	lwz 17,12(1)
	lwz 18,16(1)
	mtcrf 8,12
	lwz 19,20(1)
.LVL174:
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
.LVL175:
	lwz 31,68(1)
.LVL176:
	addi 1,1,72
	.cfi_remember_state
.LCFI28:
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
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	blr
.LVL177:
.L177:
.LCFI29:
	.cfi_restore_state
.LBB74:
	.loc 1 969 0
	cmpwi 7,28,0
	addi 21,28,-1
	beq- 7,.L100
	cmpwi 4,30,0
	li 20,0
	li 23,0
	li 24,0
	li 25,0
	.loc 1 971 0
	lis 17,_impure_ptr@ha
	.loc 1 1016 0
	li 18,-1
.LVL178:
.L121:
	.loc 1 970 0 discriminator 1
	beq- 4,.L163
	.loc 1 970 0 is_stmt 0
	li 27,0
.LVL179:
.L162:
	.loc 1 971 0 is_stmt 1
	lwz 9,4(31)
	addi 0,9,-1
	cmpwi 7,0,0
	stw 0,4(31)
	blt- 7,.L178
	.loc 1 971 0 is_stmt 0 discriminator 2
	lwz 9,0(31)
	addi 0,9,1
	lbz 22,0(9)
	stw 0,0(31)
.L123:
.LVL180:
	.loc 1 973 0 is_stmt 1 discriminator 1
	andi. 0,22,128
	.loc 1 972 0 discriminator 1
	rlwinm 22,22,0,25,31
.LVL181:
	addi 22,22,1
.LVL182:
	.loc 1 973 0 discriminator 1
	li 28,0
	beq+ 0,.L169
	b .L208
.L182:
	.loc 1 1008 0
	cmpwi 7,0,32
	beq- 7,.L180
.L144:
	.loc 1 1029 0
	addi 27,27,1
.LVL183:
	.loc 1 1030 0
	cmpw 7,27,30
	beq- 7,.L181
.L161:
	.loc 1 1007 0
	addi 28,28,1
	rlwinm 28,28,0,0xff
.LVL184:
	cmplw 7,22,28
	ble- 7,.L143
.LVL185:
.L169:
	.loc 1 1008 0
	lbz 0,18(29)
	cmpwi 7,0,24
	bne+ 7,.L182
	.loc 1 1010 0
	lwz 9,4(31)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L183
	.loc 1 1010 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 23,0(11)
	stw 0,0(31)
.L148:
.LVL186:
	.loc 1 1011 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L184
	.loc 1 1011 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 24,0(11)
	stw 0,0(31)
.L150:
.LVL187:
	.loc 1 1012 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L185
	.loc 1 1012 0 is_stmt 0 discriminator 2
	lwz 9,0(31)
	addi 0,9,1
	lbz 25,0(9)
	stw 0,0(31)
.L152:
.LVL188:
	.loc 1 1029 0 is_stmt 1 discriminator 1
	addi 27,27,1
	.loc 1 1013 0 discriminator 1
	stb 25,0(26)
.LVL189:
	.loc 1 1030 0 discriminator 1
	cmpw 7,27,30
	.loc 1 1014 0 discriminator 1
	stb 24,1(26)
.LVL190:
	.loc 1 1015 0 discriminator 1
	stb 23,2(26)
.LVL191:
	.loc 1 1016 0 discriminator 1
	stb 18,3(26)
	addi 26,26,4
.LVL192:
	.loc 1 1030 0 discriminator 1
	bne+ 7,.L161
.L181:
.LVL193:
	.loc 1 1032 0
	cmpwi 7,21,0
	beq- 7,.L100
	.loc 1 1007 0
	addi 28,28,1
	.loc 1 1033 0
	addi 21,21,-1
.LVL194:
	.loc 1 1007 0
	rlwinm 28,28,0,0xff
	.loc 1 1034 0
	add 26,26,19
.LVL195:
	.loc 1 1007 0
	cmplw 7,22,28
	.loc 1 1031 0
	li 27,0
.LVL196:
	.loc 1 1007 0
	bgt+ 7,.L169
.LVL197:
.L143:
	.loc 1 970 0 discriminator 1
	cmpw 7,30,27
	bgt+ 7,.L162
.LVL198:
.L163:
	.loc 1 969 0
	cmpwi 7,21,0
	add 26,26,19
.LVL199:
	addi 21,21,-1
.LVL200:
	bne+ 7,.L121
	b .L100
.LVL201:
.L180:
	.loc 1 1019 0
	lwz 9,4(31)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L186
	.loc 1 1019 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 23,0(11)
	stw 0,0(31)
.L154:
.LVL202:
	.loc 1 1020 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L187
	.loc 1 1020 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 24,0(11)
	stw 0,0(31)
.L156:
.LVL203:
	.loc 1 1021 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L188
	.loc 1 1021 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 25,0(11)
	stw 0,0(31)
.L158:
.LVL204:
	.loc 1 1022 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L189
	.loc 1 1022 0 is_stmt 0 discriminator 2
	lwz 9,0(31)
	addi 0,9,1
	lbz 20,0(9)
	stw 0,0(31)
.L160:
.LVL205:
	.loc 1 1023 0 is_stmt 1 discriminator 1
	stb 25,0(26)
.LVL206:
	.loc 1 1024 0 discriminator 1
	stb 24,1(26)
.LVL207:
	.loc 1 1025 0 discriminator 1
	stb 23,2(26)
.LVL208:
	.loc 1 1026 0 discriminator 1
	stb 20,3(26)
	addi 26,26,4
.LVL209:
	.loc 1 1027 0 discriminator 1
	b .L144
.LVL210:
.L185:
	.loc 1 1012 0 discriminator 1
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	bl __srget_r
	rlwinm 25,3,0,0xff
	b .L152
.LVL211:
.L184:
	.loc 1 1011 0 discriminator 1
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 24,3,0,0xff
	b .L150
.LVL212:
.L183:
	.loc 1 1010 0 discriminator 1
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 23,3,0,0xff
	b .L148
.LVL213:
.L189:
	.loc 1 1022 0 discriminator 1
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	bl __srget_r
	rlwinm 20,3,0,0xff
	b .L160
.LVL214:
.L188:
	.loc 1 1021 0 discriminator 1
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 25,3,0,0xff
	b .L158
.LVL215:
.L187:
	.loc 1 1020 0 discriminator 1
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 24,3,0,0xff
	b .L156
.LVL216:
.L186:
	.loc 1 1019 0 discriminator 1
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 23,3,0,0xff
	b .L154
.L208:
	.loc 1 974 0
	lbz 0,18(29)
	cmpwi 7,0,24
	beq- 7,.L126
	cmpwi 7,0,32
	beq- 7,.L190
.L125:
.LVL217:
	.loc 1 994 0
	addi 27,27,1
.LVL218:
	.loc 1 989 0
	li 9,0
	.loc 1 995 0
	cmpw 7,27,30
	.loc 1 989 0
	addi 9,9,1
	rlwinm 9,9,0,0xff
	.loc 1 990 0
	stb 25,0(26)
.LVL219:
	.loc 1 991 0
	stb 24,1(26)
.LVL220:
	.loc 1 989 0
	cmplw 6,22,9
	.loc 1 992 0
	stb 23,2(26)
.LVL221:
	.loc 1 993 0
	stb 20,3(26)
	addi 26,26,4
.LVL222:
	.loc 1 995 0
	beq- 7,.L191
.LVL223:
.L140:
	.loc 1 989 0
	ble- 6,.L143
.LVL224:
.L174:
	.loc 1 994 0
	addi 27,27,1
.LVL225:
	.loc 1 989 0
	addi 9,9,1
	.loc 1 995 0
	cmpw 7,27,30
	.loc 1 989 0
	rlwinm 9,9,0,0xff
	.loc 1 990 0
	stb 25,0(26)
.LVL226:
	.loc 1 989 0
	cmplw 6,22,9
	.loc 1 991 0
	stb 24,1(26)
.LVL227:
	.loc 1 992 0
	stb 23,2(26)
.LVL228:
	.loc 1 993 0
	stb 20,3(26)
	addi 26,26,4
.LVL229:
	.loc 1 995 0
	bne+ 7,.L140
.L191:
.LVL230:
	.loc 1 997 0
	cmpwi 7,21,0
	.loc 1 999 0
	add 26,26,19
.LVL231:
	.loc 1 998 0
	addi 21,21,-1
.LVL232:
	.loc 1 996 0
	li 27,0
	.loc 1 997 0
	beq- 7,.L100
.LVL233:
	.loc 1 989 0
	bgt+ 6,.L174
	b .L143
.LVL234:
.L190:
	.loc 1 982 0
	lwz 9,4(31)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L192
	.loc 1 983 0 discriminator 2
	addi 9,9,-1
	.loc 1 982 0 discriminator 2
	lwz 11,0(31)
	.loc 1 983 0 discriminator 2
	cmpwi 7,9,0
	.loc 1 982 0 discriminator 2
	addi 0,11,1
	lbz 23,0(11)
	stw 0,0(31)
.LVL235:
	.loc 1 983 0 discriminator 2
	stw 9,4(31)
	blt- 7,.L193
.LVL236:
.L135:
	.loc 1 984 0 discriminator 2
	addi 9,9,-1
	.loc 1 983 0 discriminator 2
	lwz 11,0(31)
	.loc 1 984 0 discriminator 2
	cmpwi 7,9,0
	.loc 1 983 0 discriminator 2
	addi 0,11,1
	lbz 24,0(11)
	stw 0,0(31)
.LVL237:
	.loc 1 984 0 discriminator 2
	stw 9,4(31)
	blt- 7,.L194
.LVL238:
.L137:
	.loc 1 985 0 discriminator 2
	addi 9,9,-1
	.loc 1 984 0 discriminator 2
	lwz 11,0(31)
	.loc 1 985 0 discriminator 2
	cmpwi 7,9,0
	.loc 1 984 0 discriminator 2
	addi 0,11,1
	lbz 25,0(11)
	stw 0,0(31)
.LVL239:
	.loc 1 985 0 discriminator 2
	stw 9,4(31)
	blt- 7,.L195
.LVL240:
.L139:
	lwz 9,0(31)
	addi 0,9,1
	lbz 20,0(9)
	stw 0,0(31)
	b .L125
.LVL241:
.L178:
	.loc 1 971 0 discriminator 1
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	bl __srget_r
	rlwinm 22,3,0,0xff
	b .L123
.LVL242:
.L126:
	.loc 1 976 0
	lwz 9,4(31)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L196
	.loc 1 976 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 23,0(11)
	stw 0,0(31)
.L129:
.LVL243:
	.loc 1 977 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L197
	.loc 1 977 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 24,0(11)
	stw 0,0(31)
.L131:
.LVL244:
	.loc 1 978 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L198
	.loc 1 978 0 is_stmt 0 discriminator 2
	lwz 9,0(31)
	.loc 1 979 0 is_stmt 1 discriminator 2
	li 20,255
	.loc 1 978 0 discriminator 2
	addi 0,9,1
	lbz 25,0(9)
	stw 0,0(31)
	b .L125
.LVL245:
.L175:
.LBE74:
	.loc 1 924 0
	mr 3,31
	li 5,0
	li 7,1
	bl fseek
	lwz 26,targa_rgba@l(27)
	b .L97
.LVL246:
.L176:
	.loc 1 939 0
	cmpwi 7,28,0
	addi 28,28,-1
.LVL247:
	beq- 7,.L100
	cmpwi 4,30,0
.LBB75:
	.loc 1 951 0
	li 22,-1
	.loc 1 947 0
	lis 21,_impure_ptr@ha
.LVL248:
.L101:
.LBE75:
	.loc 1 940 0 discriminator 1
	beq- 4,.L120
	.loc 1 940 0 is_stmt 0
	li 27,0
	b .L119
.LVL249:
.L200:
.LBB76:
	.loc 1 942 0 is_stmt 1
	cmpwi 7,0,32
	beq- 7,.L199
.L102:
.LBE76:
	.loc 1 940 0
	addi 27,27,1
.LVL250:
	cmpw 7,30,27
	ble- 7,.L120
.LVL251:
.L119:
.LBB77:
	.loc 1 942 0
	lbz 0,18(29)
	cmpwi 7,0,24
	bne+ 7,.L200
	.loc 1 945 0
	lwz 9,4(31)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L201
	.loc 1 945 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 25,0(11)
	stw 0,0(31)
.L106:
.LVL252:
	.loc 1 946 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L202
	.loc 1 946 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 24,0(11)
	stw 0,0(31)
.L108:
.LVL253:
	.loc 1 947 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L203
	.loc 1 947 0 is_stmt 0 discriminator 2
	lwz 9,0(31)
	addi 0,9,1
	lbz 3,0(9)
	stw 0,0(31)
.L110:
.LVL254:
.LBE77:
	.loc 1 940 0 is_stmt 1 discriminator 1
	addi 27,27,1
.LBB78:
	.loc 1 948 0 discriminator 1
	stb 3,0(26)
.LVL255:
.LBE78:
	.loc 1 940 0 discriminator 1
	cmpw 7,30,27
.LBB79:
	.loc 1 949 0 discriminator 1
	stb 24,1(26)
.LVL256:
	.loc 1 950 0 discriminator 1
	stb 25,2(26)
.LVL257:
	.loc 1 951 0 discriminator 1
	stb 22,3(26)
	addi 26,26,4
.LVL258:
.LBE79:
	.loc 1 940 0 discriminator 1
	bgt+ 7,.L119
.LVL259:
.L120:
	.loc 1 939 0
	cmpwi 7,28,0
	add 26,26,19
.LVL260:
	addi 28,28,-1
.LVL261:
	bne+ 7,.L101
	b .L100
.L199:
.LBB80:
	.loc 1 954 0
	lwz 9,4(31)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L204
	.loc 1 954 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 25,0(11)
	stw 0,0(31)
.L112:
.LVL262:
	.loc 1 955 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L205
	.loc 1 955 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 24,0(11)
	stw 0,0(31)
.L114:
.LVL263:
	.loc 1 956 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L206
	.loc 1 956 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 23,0(11)
	stw 0,0(31)
.L116:
.LVL264:
	.loc 1 957 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L207
	.loc 1 957 0 is_stmt 0 discriminator 2
	lwz 9,0(31)
	addi 0,9,1
	lbz 3,0(9)
	stw 0,0(31)
.L118:
.LVL265:
	.loc 1 958 0 is_stmt 1 discriminator 1
	stb 23,0(26)
.LVL266:
	.loc 1 959 0 discriminator 1
	stb 24,1(26)
.LVL267:
	.loc 1 960 0 discriminator 1
	stb 25,2(26)
.LVL268:
	.loc 1 961 0 discriminator 1
	stb 3,3(26)
	addi 26,26,4
.LVL269:
	.loc 1 962 0 discriminator 1
	b .L102
.LVL270:
.L203:
	.loc 1 947 0 discriminator 1
	lwz 3,_impure_ptr@l(21)
	mr 4,31
	bl __srget_r
	rlwinm 3,3,0,0xff
	b .L110
.LVL271:
.L202:
	.loc 1 946 0 discriminator 1
	lwz 3,_impure_ptr@l(21)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 24,3,0,0xff
	b .L108
.LVL272:
.L201:
	.loc 1 945 0 discriminator 1
	lwz 3,_impure_ptr@l(21)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 25,3,0,0xff
	b .L106
.LVL273:
.L207:
	.loc 1 957 0 discriminator 1
	lwz 3,_impure_ptr@l(21)
	mr 4,31
	bl __srget_r
	rlwinm 3,3,0,0xff
	b .L118
.LVL274:
.L206:
	.loc 1 956 0 discriminator 1
	lwz 3,_impure_ptr@l(21)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 23,3,0,0xff
	b .L116
.LVL275:
.L205:
	.loc 1 955 0 discriminator 1
	lwz 3,_impure_ptr@l(21)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 24,3,0,0xff
	b .L114
.LVL276:
.L204:
	.loc 1 954 0 discriminator 1
	lwz 3,_impure_ptr@l(21)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 25,3,0,0xff
	b .L112
.LVL277:
.L192:
.LBE80:
.LBB81:
	.loc 1 982 0 discriminator 1
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 23,3,0,0xff
.LVL278:
	.loc 1 983 0 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	bge+ 7,.L135
.LVL279:
.L193:
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 24,3,0,0xff
.LVL280:
	.loc 1 984 0 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	bge+ 7,.L137
.LVL281:
.L194:
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 25,3,0,0xff
.LVL282:
	.loc 1 985 0 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	bge+ 7,.L139
.LVL283:
.L195:
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	bl __srget_r
	rlwinm 20,3,0,0xff
	b .L125
.LVL284:
.L198:
	.loc 1 978 0 discriminator 1
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	.loc 1 979 0 discriminator 1
	li 20,255
	.loc 1 978 0 discriminator 1
	bl __srget_r
	rlwinm 25,3,0,0xff
	b .L125
.LVL285:
.L197:
	.loc 1 977 0 discriminator 1
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 24,3,0,0xff
	b .L131
.LVL286:
.L196:
	.loc 1 976 0 discriminator 1
	lwz 3,_impure_ptr@l(17)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 23,3,0,0xff
	b .L129
.LBE81:
	.cfi_endproc
.LFE53:
	.size	LoadTGA, .-LoadTGA
	.align 2
	.globl LoadTexture
	.type	LoadTexture, @function
LoadTexture:
.LFB51:
	.loc 1 665 0
	.cfi_startproc
.LVL287:
	stwu 1,-32(1)
.LCFI30:
	.cfi_def_cfa_offset 32
	mflr 0
	.loc 1 671 0
	mr 4,3
.LVL288:
	li 5,128
	.loc 1 665 0
	stw 31,28(1)
	.loc 1 671 0
	lis 31,.LANCHOR1@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	la 31,.LANCHOR1@l(31)
	.loc 1 665 0
	stw 30,24(1)
	mr 30,3
	.cfi_offset 30, -8
	.loc 1 671 0
	mr 3,31
.LVL289:
	.loc 1 665 0
	stw 0,36(1)
	.loc 1 671 0
	.cfi_offset 65, 4
	bl strncpy
.LVL290:
	.loc 1 672 0
	mr 3,30
	bl strlen
	.loc 1 761 0
	mr 9,31
	.loc 1 672 0
	addi 3,3,-3
.LVL291:
	.loc 1 761 0
	li 0,116
	stbux 0,9,3
	.loc 1 762 0
	li 0,103
	.loc 1 764 0
	mr 3,31
.LVL292:
	addi 4,1,8
	.loc 1 762 0
	stb 0,1(9)
	.loc 1 763 0
	li 0,97
	stb 0,2(9)
	.loc 1 764 0
	bl COM_FOpenFile
.LVL293:
	.loc 1 765 0
	lwz 0,8(1)
	.loc 1 767 0
	li 3,0
	.loc 1 765 0
	cmpwi 7,0,0
	beq- 7,.L210
	.loc 1 769 0
	mr 3,0
	bl LoadTGA
	.loc 1 770 0
	li 3,1
.L210:
	.loc 1 771 0
	lwz 0,36(1)
	lwz 30,24(1)
.LVL294:
	mtlr 0
	lwz 31,28(1)
	addi 1,1,32
.LCFI31:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
	.cfi_endproc
.LFE51:
	.size	LoadTexture, .-LoadTexture
	.align 2
	.globl LoadColorTGA
	.type	LoadColorTGA, @function
LoadColorTGA:
.LFB54:
	.loc 1 1058 0
	.cfi_startproc
.LVL295:
	mflr 0
	stwu 1,-80(1)
.LCFI32:
	.cfi_def_cfa_offset 80
	.cfi_register 65, 0
	mfcr 12
	stw 25,52(1)
	mr 25,5
	.cfi_offset 25, -28
	.cfi_register 70, 12
	stw 0,84(1)
	stw 12,8(1)
	stw 26,56(1)
	mr 26,6
	.cfi_offset 26, -24
	.cfi_offset 70, -72
	.cfi_offset 65, 4
	stw 27,60(1)
	mr 27,7
	.cfi_offset 27, -20
	stw 28,64(1)
	stw 29,68(1)
	.loc 1 1064 0
	lis 29,targa_header@ha
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.loc 1 1058 0
	stw 30,72(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,76(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 15,12(1)
	.loc 1 1064 0
	la 28,targa_header@l(29)
	.loc 1 1058 0
	stw 16,16(1)
	stw 17,20(1)
	stw 18,24(1)
	stw 19,28(1)
	stw 20,32(1)
	stw 21,36(1)
	stw 22,40(1)
	stw 23,44(1)
	stw 24,48(1)
	.loc 1 1064 0
	.cfi_offset 24, -32
	.cfi_offset 23, -36
	.cfi_offset 22, -40
	.cfi_offset 21, -44
	.cfi_offset 20, -48
	.cfi_offset 19, -52
	.cfi_offset 18, -56
	.cfi_offset 17, -60
	.cfi_offset 16, -64
	.cfi_offset 15, -68
	bl fgetc
.LVL296:
	stb 3,targa_header@l(29)
	.loc 1 1065 0
	mr 3,31
	bl fgetc
	stb 3,1(28)
	.loc 1 1066 0
	mr 3,31
	bl fgetc
	stb 3,2(28)
	.loc 1 1068 0
	mr 3,31
	bl fgetLittleShort
	sth 3,4(28)
	.loc 1 1069 0
	mr 3,31
	bl fgetLittleShort
	sth 3,6(28)
	.loc 1 1070 0
	mr 3,31
	bl fgetc
	stb 3,8(28)
	.loc 1 1071 0
	mr 3,31
	bl fgetLittleShort
	sth 3,10(28)
	.loc 1 1072 0
	mr 3,31
	bl fgetLittleShort
	sth 3,12(28)
	.loc 1 1073 0
	mr 3,31
	bl fgetLittleShort
	sth 3,14(28)
	.loc 1 1074 0
	mr 3,31
	bl fgetLittleShort
	sth 3,16(28)
	.loc 1 1075 0
	mr 3,31
	bl fgetc
	stb 3,18(28)
	.loc 1 1076 0
	mr 3,31
	bl fgetc
	.loc 1 1078 0
	lbz 0,2(28)
	.loc 1 1076 0
	stb 3,19(28)
	.loc 1 1078 0
	cmpwi 7,0,2
	beq- 7,.L213
	.loc 1 1079 0
	cmpwi 7,0,10
	beq- 7,.L213
	.loc 1 1079 0 is_stmt 0 discriminator 1
	cmpwi 7,0,1
	beq- 7,.L214
	.loc 1 1080 0 is_stmt 1
	lis 3,.LC36@ha
	mr 4,27
	la 3,.LC36@l(3)
	crxor 6,6,6
	bl Sys_Error
	.loc 1 1087 0
	lbz 0,2(28)
	cmpwi 7,0,1
	beq- 7,.L214
.L213:
	.loc 1 1097 0
	lbz 6,targa_header@l(29)
	.loc 1 1095 0
	lis 27,targa_rgba@ha
.LVL297:
	.loc 1 1091 0
	lhz 29,14(28)
.LVL298:
	.loc 1 1097 0
	cmpwi 7,6,0
	.loc 1 1092 0
	lhz 24,16(28)
.LVL299:
	.loc 1 1095 0
	stw 30,targa_rgba@l(27)
	.loc 1 1097 0
	bne- 7,.L301
.LVL300:
.L215:
	.loc 1 1101 0
	lbz 0,19(28)
	.loc 1 1109 0
	li 27,0
	.loc 1 1101 0
	andi. 9,0,32
	bne- 0,.L216
	.loc 1 1103 0
	addi 0,24,-1
	.loc 1 1104 0
	mulli 27,29,-8
	.loc 1 1103 0
	slwi 0,0,2
	mullw 0,0,29
	add 30,30,0
.LVL301:
.L216:
	.loc 1 1112 0
	lbz 0,2(28)
	cmpwi 7,0,1
	beq- 7,.L302
	.loc 1 1122 0
	cmpwi 7,0,2
	beq- 7,.L303
	.loc 1 1151 0
	cmpwi 7,0,10
	beq- 7,.L304
.LVL302:
.L218:
	.loc 1 1248 0
	mr 3,31
	bl fclose
	.loc 1 1250 0
	lhz 0,16(28)
	.loc 1 1249 0
	lhz 9,14(28)
	.loc 1 1251 0
	lwz 12,8(1)
	.loc 1 1249 0
	stw 9,0(25)
	.loc 1 1250 0
	stw 0,0(26)
	.loc 1 1251 0
	mtcrf 8,12
	lwz 0,84(1)
	lwz 15,12(1)
	mtlr 0
	lwz 16,16(1)
	lwz 17,20(1)
	lwz 18,24(1)
	lwz 19,28(1)
	lwz 20,32(1)
	lwz 21,36(1)
	lwz 22,40(1)
	lwz 23,44(1)
	lwz 24,48(1)
	lwz 25,52(1)
.LVL303:
	lwz 26,56(1)
.LVL304:
	lwz 27,60(1)
.LVL305:
	lwz 28,64(1)
	lwz 29,68(1)
.LVL306:
	lwz 30,72(1)
	lwz 31,76(1)
.LVL307:
	addi 1,1,80
	.cfi_remember_state
.LCFI33:
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
	.cfi_restore 20
	.cfi_restore 19
	.cfi_restore 18
	.cfi_restore 17
	.cfi_restore 16
	.cfi_restore 15
	blr
.LVL308:
.L214:
.LCFI34:
	.cfi_restore_state
	.loc 1 1087 0 discriminator 1
	lbz 0,18(28)
	cmpwi 7,0,8
	beq- 7,.L213
	lbz 0,8(28)
	cmpwi 7,0,24
	beq- 7,.L213
	.loc 1 1088 0
	lhz 0,6(28)
	cmpwi 7,0,256
	beq- 7,.L213
	.loc 1 1089 0
	lis 3,.LC37@ha
	la 3,.LC37@l(3)
	crxor 6,6,6
	bl Sys_Error
	b .L213
.LVL309:
.L304:
.LBB82:
	.loc 1 1153 0
	cmpwi 7,24,0
	addi 18,24,-1
	beq- 7,.L218
	cmpwi 4,29,0
	li 17,0
	li 20,0
	li 21,0
	li 22,0
	.loc 1 1155 0
	lis 15,_impure_ptr@ha
	.loc 1 1200 0
	li 16,-1
.LVL310:
.L245:
	.loc 1 1154 0 discriminator 1
	beq- 4,.L287
	.loc 1 1154 0 is_stmt 0
	li 24,0
.LVL311:
.L286:
	.loc 1 1155 0 is_stmt 1
	lwz 9,4(31)
	addi 0,9,-1
	cmpwi 7,0,0
	stw 0,4(31)
	blt- 7,.L305
	.loc 1 1155 0 is_stmt 0 discriminator 2
	lwz 9,0(31)
	addi 0,9,1
	lbz 19,0(9)
	stw 0,0(31)
.L247:
.LVL312:
	.loc 1 1157 0 is_stmt 1 discriminator 1
	andi. 0,19,128
	.loc 1 1156 0 discriminator 1
	rlwinm 19,19,0,25,31
.LVL313:
	addi 19,19,1
.LVL314:
	.loc 1 1157 0 discriminator 1
	li 23,0
	beq+ 0,.L294
	b .L336
.L309:
	.loc 1 1192 0
	cmpwi 7,0,32
	beq- 7,.L307
.L268:
	.loc 1 1213 0
	addi 24,24,1
.LVL315:
	.loc 1 1214 0
	cmpw 7,24,29
	beq- 7,.L308
.L285:
	.loc 1 1191 0
	addi 23,23,1
	rlwinm 23,23,0,0xff
.LVL316:
	cmplw 7,19,23
	ble- 7,.L267
.LVL317:
.L294:
	.loc 1 1192 0
	lbz 0,18(28)
	cmpwi 7,0,24
	bne+ 7,.L309
	.loc 1 1194 0
	lwz 9,4(31)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L310
	.loc 1 1194 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 20,0(11)
	stw 0,0(31)
.L272:
.LVL318:
	.loc 1 1195 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L311
	.loc 1 1195 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 21,0(11)
	stw 0,0(31)
.L274:
.LVL319:
	.loc 1 1196 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L312
	.loc 1 1196 0 is_stmt 0 discriminator 2
	lwz 9,0(31)
	addi 0,9,1
	lbz 22,0(9)
	stw 0,0(31)
.L276:
.LVL320:
	.loc 1 1213 0 is_stmt 1 discriminator 1
	addi 24,24,1
	.loc 1 1197 0 discriminator 1
	stb 22,0(30)
.LVL321:
	.loc 1 1214 0 discriminator 1
	cmpw 7,24,29
	.loc 1 1198 0 discriminator 1
	stb 21,1(30)
.LVL322:
	.loc 1 1199 0 discriminator 1
	stb 20,2(30)
.LVL323:
	.loc 1 1200 0 discriminator 1
	stb 16,3(30)
	addi 30,30,4
.LVL324:
	.loc 1 1214 0 discriminator 1
	bne+ 7,.L285
.L308:
.LVL325:
	.loc 1 1216 0
	cmpwi 7,18,0
	beq- 7,.L218
	.loc 1 1191 0
	addi 23,23,1
	.loc 1 1217 0
	addi 18,18,-1
.LVL326:
	.loc 1 1191 0
	rlwinm 23,23,0,0xff
	.loc 1 1218 0
	add 30,30,27
.LVL327:
	.loc 1 1191 0
	cmplw 7,19,23
	.loc 1 1215 0
	li 24,0
.LVL328:
	.loc 1 1191 0
	bgt+ 7,.L294
.LVL329:
.L267:
	.loc 1 1154 0 discriminator 1
	cmpw 7,29,24
	bgt+ 7,.L286
.LVL330:
.L287:
	.loc 1 1153 0
	cmpwi 7,18,0
	add 30,30,27
.LVL331:
	addi 18,18,-1
.LVL332:
	bne+ 7,.L245
	b .L218
.LVL333:
.L307:
	.loc 1 1203 0
	lwz 9,4(31)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L313
	.loc 1 1203 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 20,0(11)
	stw 0,0(31)
.L278:
.LVL334:
	.loc 1 1204 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L314
	.loc 1 1204 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 21,0(11)
	stw 0,0(31)
.L280:
.LVL335:
	.loc 1 1205 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L315
	.loc 1 1205 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 22,0(11)
	stw 0,0(31)
.L282:
.LVL336:
	.loc 1 1206 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L316
	.loc 1 1206 0 is_stmt 0 discriminator 2
	lwz 9,0(31)
	addi 0,9,1
	lbz 17,0(9)
	stw 0,0(31)
.L284:
.LVL337:
	.loc 1 1207 0 is_stmt 1 discriminator 1
	stb 22,0(30)
.LVL338:
	.loc 1 1208 0 discriminator 1
	stb 21,1(30)
.LVL339:
	.loc 1 1209 0 discriminator 1
	stb 20,2(30)
.LVL340:
	.loc 1 1210 0 discriminator 1
	stb 17,3(30)
	addi 30,30,4
.LVL341:
	.loc 1 1211 0 discriminator 1
	b .L268
.LVL342:
.L312:
	.loc 1 1196 0 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	bl __srget_r
	rlwinm 22,3,0,0xff
	b .L276
.LVL343:
.L311:
	.loc 1 1195 0 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 21,3,0,0xff
	b .L274
.LVL344:
.L310:
	.loc 1 1194 0 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 20,3,0,0xff
	b .L272
.LVL345:
.L316:
	.loc 1 1206 0 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	bl __srget_r
	rlwinm 17,3,0,0xff
	b .L284
.LVL346:
.L315:
	.loc 1 1205 0 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 22,3,0,0xff
	b .L282
.LVL347:
.L314:
	.loc 1 1204 0 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 21,3,0,0xff
	b .L280
.LVL348:
.L313:
	.loc 1 1203 0 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 20,3,0,0xff
	b .L278
.L336:
	.loc 1 1158 0
	lbz 0,18(28)
	cmpwi 7,0,24
	beq- 7,.L250
	cmpwi 7,0,32
	beq- 7,.L317
.L249:
.LVL349:
	.loc 1 1178 0
	addi 24,24,1
.LVL350:
	.loc 1 1173 0
	li 9,0
	.loc 1 1179 0
	cmpw 7,24,29
	.loc 1 1173 0
	addi 9,9,1
	rlwinm 9,9,0,0xff
	.loc 1 1174 0
	stb 22,0(30)
.LVL351:
	.loc 1 1175 0
	stb 21,1(30)
.LVL352:
	.loc 1 1173 0
	cmplw 6,19,9
	.loc 1 1176 0
	stb 20,2(30)
.LVL353:
	.loc 1 1177 0
	stb 17,3(30)
	addi 30,30,4
.LVL354:
	.loc 1 1179 0
	beq- 7,.L318
.LVL355:
.L264:
	.loc 1 1173 0
	ble- 6,.L267
.LVL356:
.L300:
	.loc 1 1178 0
	addi 24,24,1
.LVL357:
	.loc 1 1173 0
	addi 9,9,1
	.loc 1 1179 0
	cmpw 7,24,29
	.loc 1 1173 0
	rlwinm 9,9,0,0xff
	.loc 1 1174 0
	stb 22,0(30)
.LVL358:
	.loc 1 1173 0
	cmplw 6,19,9
	.loc 1 1175 0
	stb 21,1(30)
.LVL359:
	.loc 1 1176 0
	stb 20,2(30)
.LVL360:
	.loc 1 1177 0
	stb 17,3(30)
	addi 30,30,4
.LVL361:
	.loc 1 1179 0
	bne+ 7,.L264
.L318:
.LVL362:
	.loc 1 1181 0
	cmpwi 7,18,0
	.loc 1 1183 0
	add 30,30,27
.LVL363:
	.loc 1 1182 0
	addi 18,18,-1
.LVL364:
	.loc 1 1180 0
	li 24,0
	.loc 1 1181 0
	beq- 7,.L218
.LVL365:
	.loc 1 1173 0
	bgt+ 6,.L300
	b .L267
.LVL366:
.L317:
	.loc 1 1166 0
	lwz 9,4(31)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L319
	.loc 1 1166 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 20,0(11)
	stw 0,0(31)
.L258:
.LVL367:
	.loc 1 1167 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L320
	.loc 1 1167 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 21,0(11)
	stw 0,0(31)
.L260:
.LVL368:
	.loc 1 1168 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L321
	.loc 1 1168 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 22,0(11)
	stw 0,0(31)
.L262:
.LVL369:
	.loc 1 1169 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L322
	.loc 1 1169 0 is_stmt 0 discriminator 2
	lwz 9,0(31)
	addi 0,9,1
	lbz 17,0(9)
	stw 0,0(31)
	b .L249
.LVL370:
.L305:
	.loc 1 1155 0 is_stmt 1 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	bl __srget_r
	rlwinm 19,3,0,0xff
	b .L247
.LVL371:
.L250:
	.loc 1 1160 0
	lwz 9,4(31)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L323
	.loc 1 1160 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 20,0(11)
	stw 0,0(31)
.L253:
.LVL372:
	.loc 1 1161 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L324
	.loc 1 1161 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 21,0(11)
	stw 0,0(31)
.L255:
.LVL373:
	.loc 1 1162 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L325
	.loc 1 1162 0 is_stmt 0 discriminator 2
	lwz 9,0(31)
	.loc 1 1163 0 is_stmt 1 discriminator 2
	li 17,255
	.loc 1 1162 0 discriminator 2
	addi 0,9,1
	lbz 22,0(9)
	stw 0,0(31)
	b .L249
.LVL374:
.L301:
.LBE82:
	.loc 1 1098 0
	mr 3,31
	li 5,0
	li 7,1
	bl fseek
	lwz 30,targa_rgba@l(27)
.LVL375:
	b .L215
.LVL376:
.L303:
	.loc 1 1123 0
	cmpwi 7,24,0
	addi 24,24,-1
.LVL377:
	beq- 7,.L218
	cmpwi 4,29,0
.LBB83:
	.loc 1 1135 0
	li 19,-1
	.loc 1 1131 0
	lis 18,_impure_ptr@ha
.LVL378:
.L225:
.LBE83:
	.loc 1 1124 0 discriminator 1
	beq- 4,.L244
	.loc 1 1124 0 is_stmt 0
	li 23,0
	b .L243
.LVL379:
.L327:
.LBB84:
	.loc 1 1126 0 is_stmt 1
	cmpwi 7,0,32
	beq- 7,.L326
.L226:
.LBE84:
	.loc 1 1124 0
	addi 23,23,1
.LVL380:
	cmpw 7,29,23
	ble- 7,.L244
.LVL381:
.L243:
.LBB85:
	.loc 1 1126 0
	lbz 0,18(28)
	cmpwi 7,0,24
	bne+ 7,.L327
	.loc 1 1129 0
	lwz 9,4(31)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L328
	.loc 1 1129 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 22,0(11)
	stw 0,0(31)
.L230:
.LVL382:
	.loc 1 1130 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L329
	.loc 1 1130 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 21,0(11)
	stw 0,0(31)
.L232:
.LVL383:
	.loc 1 1131 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L330
	.loc 1 1131 0 is_stmt 0 discriminator 2
	lwz 9,0(31)
	addi 0,9,1
	lbz 3,0(9)
	stw 0,0(31)
.L234:
.LVL384:
.LBE85:
	.loc 1 1124 0 is_stmt 1 discriminator 1
	addi 23,23,1
.LBB86:
	.loc 1 1132 0 discriminator 1
	stb 3,0(30)
.LVL385:
.LBE86:
	.loc 1 1124 0 discriminator 1
	cmpw 7,29,23
.LBB87:
	.loc 1 1133 0 discriminator 1
	stb 21,1(30)
.LVL386:
	.loc 1 1134 0 discriminator 1
	stb 22,2(30)
.LVL387:
	.loc 1 1135 0 discriminator 1
	stb 19,3(30)
	addi 30,30,4
.LVL388:
.LBE87:
	.loc 1 1124 0 discriminator 1
	bgt+ 7,.L243
.LVL389:
.L244:
	.loc 1 1123 0
	cmpwi 7,24,0
	add 30,30,27
.LVL390:
	addi 24,24,-1
.LVL391:
	bne+ 7,.L225
	b .L218
.L326:
.LBB88:
	.loc 1 1138 0
	lwz 9,4(31)
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L331
	.loc 1 1138 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 22,0(11)
	stw 0,0(31)
.L236:
.LVL392:
	.loc 1 1139 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L332
	.loc 1 1139 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 21,0(11)
	stw 0,0(31)
.L238:
.LVL393:
	.loc 1 1140 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L333
	.loc 1 1140 0 is_stmt 0 discriminator 2
	lwz 11,0(31)
	addi 0,11,1
	lbz 20,0(11)
	stw 0,0(31)
.L240:
.LVL394:
	.loc 1 1141 0 is_stmt 1 discriminator 1
	addi 9,9,-1
	cmpwi 7,9,0
	stw 9,4(31)
	blt- 7,.L334
	.loc 1 1141 0 is_stmt 0 discriminator 2
	lwz 9,0(31)
	addi 0,9,1
	lbz 3,0(9)
	stw 0,0(31)
.L242:
.LVL395:
	.loc 1 1142 0 is_stmt 1 discriminator 1
	stb 20,0(30)
.LVL396:
	.loc 1 1143 0 discriminator 1
	stb 21,1(30)
.LVL397:
	.loc 1 1144 0 discriminator 1
	stb 22,2(30)
.LVL398:
	.loc 1 1145 0 discriminator 1
	stb 3,3(30)
	addi 30,30,4
.LVL399:
	.loc 1 1146 0 discriminator 1
	b .L226
.LVL400:
.L334:
	.loc 1 1141 0 discriminator 1
	lwz 3,_impure_ptr@l(18)
	mr 4,31
	bl __srget_r
	rlwinm 3,3,0,0xff
	b .L242
.LVL401:
.L333:
	.loc 1 1140 0 discriminator 1
	lwz 3,_impure_ptr@l(18)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 20,3,0,0xff
	b .L240
.LVL402:
.L332:
	.loc 1 1139 0 discriminator 1
	lwz 3,_impure_ptr@l(18)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 21,3,0,0xff
	b .L238
.LVL403:
.L331:
	.loc 1 1138 0 discriminator 1
	lwz 3,_impure_ptr@l(18)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 22,3,0,0xff
	b .L236
.LVL404:
.L330:
	.loc 1 1131 0 discriminator 1
	lwz 3,_impure_ptr@l(18)
	mr 4,31
	bl __srget_r
	rlwinm 3,3,0,0xff
	b .L234
.LVL405:
.L329:
	.loc 1 1130 0 discriminator 1
	lwz 3,_impure_ptr@l(18)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 21,3,0,0xff
	b .L232
.LVL406:
.L328:
	.loc 1 1129 0 discriminator 1
	lwz 3,_impure_ptr@l(18)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 22,3,0,0xff
	b .L230
.LVL407:
.L302:
.LBE88:
	.loc 1 1113 0
	mr 3,31
	li 5,0
	li 6,768
	li 7,1
	bl fseek
.LVL408:
	.loc 1 1114 0
	cmpwi 7,24,0
	addi 24,24,-1
.LVL409:
	beq- 7,.L218
	lis 21,d_8to24table@ha
	cmpwi 4,29,0
	la 21,d_8to24table@l(21)
.LBB89:
	.loc 1 1117 0
	lis 20,_impure_ptr@ha
.LBE89:
	.loc 1 1057 0
	slwi 19,29,2
.LVL410:
.L219:
	.loc 1 1115 0 discriminator 1
	beq- 4,.L223
	.loc 1 1115 0 is_stmt 0
	mr 22,30
	li 23,0
	b .L222
.LVL411:
.L220:
.LBB90:
	.loc 1 1117 0 is_stmt 1 discriminator 2
	lwz 9,0(31)
.LBE90:
	.loc 1 1115 0 discriminator 2
	addi 23,23,1
	cmpw 7,29,23
.LBB91:
	.loc 1 1117 0 discriminator 2
	lbz 0,0(9)
	addi 11,9,1
	stw 11,0(31)
.LVL412:
	.loc 1 1118 0 discriminator 2
	slwi 0,0,2
.LVL413:
	lwzx 0,21,0
	stw 0,0(22)
	.loc 1 1119 0 discriminator 2
	addi 22,22,4
.LVL414:
.LBE91:
	.loc 1 1115 0 discriminator 2
	ble- 7,.L335
.LVL415:
.L222:
.LBB92:
	.loc 1 1117 0
	lwz 9,4(31)
	addi 0,9,-1
	cmpwi 7,0,0
	stw 0,4(31)
	bge+ 7,.L220
	.loc 1 1117 0 is_stmt 0 discriminator 1
	lwz 3,_impure_ptr@l(20)
	mr 4,31
.LBE92:
	.loc 1 1115 0 is_stmt 1 discriminator 1
	addi 23,23,1
.LBB93:
	.loc 1 1117 0 discriminator 1
	bl __srget_r
.LBE93:
	.loc 1 1115 0 discriminator 1
	cmpw 7,29,23
.LBB94:
	.loc 1 1117 0 discriminator 1
	rlwinm 0,3,0,0xff
.LVL416:
	.loc 1 1118 0 discriminator 1
	slwi 0,0,2
.LVL417:
	lwzx 0,21,0
	stw 0,0(22)
	.loc 1 1119 0 discriminator 1
	addi 22,22,4
.LVL418:
.LBE94:
	.loc 1 1115 0 discriminator 1
	bgt+ 7,.L222
.L335:
	.loc 1 1115 0 is_stmt 0
	add 30,30,19
.LVL419:
.L223:
	.loc 1 1114 0 is_stmt 1
	cmpwi 7,24,0
	add 30,30,27
.LVL420:
	addi 24,24,-1
.LVL421:
	bne+ 7,.L219
	b .L218
.LVL422:
.L325:
.LBB95:
	.loc 1 1162 0 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	.loc 1 1163 0 discriminator 1
	li 17,255
	.loc 1 1162 0 discriminator 1
	bl __srget_r
	rlwinm 22,3,0,0xff
	b .L249
.LVL423:
.L324:
	.loc 1 1161 0 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 21,3,0,0xff
	b .L255
.LVL424:
.L323:
	.loc 1 1160 0 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 20,3,0,0xff
	b .L253
.LVL425:
.L322:
	.loc 1 1169 0 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	bl __srget_r
	rlwinm 17,3,0,0xff
	b .L249
.LVL426:
.L321:
	.loc 1 1168 0 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 22,3,0,0xff
	b .L262
.LVL427:
.L320:
	.loc 1 1167 0 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 21,3,0,0xff
	b .L260
.LVL428:
.L319:
	.loc 1 1166 0 discriminator 1
	lwz 3,_impure_ptr@l(15)
	mr 4,31
	bl __srget_r
	lwz 9,4(31)
	rlwinm 20,3,0,0xff
	b .L258
.LBE95:
	.cfi_endproc
.LFE54:
	.size	LoadColorTGA, .-LoadColorTGA
	.align 2
	.globl LoadGrayTGA
	.type	LoadGrayTGA, @function
LoadGrayTGA:
.LFB55:
	.loc 1 1261 0
	.cfi_startproc
.LVL429:
	mflr 0
	stwu 1,-56(1)
.LCFI35:
	.cfi_def_cfa_offset 56
	.cfi_register 65, 0
	mfcr 12
	stw 23,20(1)
	.loc 1 1267 0
	lis 23,targa_header@ha
	.cfi_offset 23, -36
	.cfi_register 70, 12
	.loc 1 1261 0
	stw 0,60(1)
	stw 12,12(1)
	stw 24,24(1)
	mr 24,5
	.cfi_offset 24, -32
	.cfi_offset 70, -44
	.cfi_offset 65, 4
	stw 25,28(1)
	mr 25,6
	.cfi_offset 25, -28
	stw 27,36(1)
	.loc 1 1267 0
	la 27,targa_header@l(23)
	.cfi_offset 27, -20
	.loc 1 1261 0
	stw 29,44(1)
	mr 29,7
	.cfi_offset 29, -12
	stw 30,48(1)
	mr 30,4
	.cfi_offset 30, -8
	stw 31,52(1)
	mr 31,3
	.cfi_offset 31, -4
	stw 22,16(1)
	stw 26,32(1)
	stw 28,40(1)
	.loc 1 1267 0
	.cfi_offset 28, -16
	.cfi_offset 26, -24
	.cfi_offset 22, -40
	bl fgetc
.LVL430:
	stb 3,targa_header@l(23)
	.loc 1 1268 0
	mr 3,31
	bl fgetc
	stb 3,1(27)
	.loc 1 1269 0
	mr 3,31
	bl fgetc
	stb 3,2(27)
	.loc 1 1271 0
	mr 3,31
	bl fgetLittleShort
	sth 3,4(27)
	.loc 1 1272 0
	mr 3,31
	bl fgetLittleShort
	sth 3,6(27)
	.loc 1 1273 0
	mr 3,31
	bl fgetc
	stb 3,8(27)
	.loc 1 1274 0
	mr 3,31
	bl fgetLittleShort
	sth 3,10(27)
	.loc 1 1275 0
	mr 3,31
	bl fgetLittleShort
	sth 3,12(27)
	.loc 1 1276 0
	mr 3,31
	bl fgetLittleShort
	sth 3,14(27)
	.loc 1 1277 0
	mr 3,31
	bl fgetLittleShort
	sth 3,16(27)
	.loc 1 1278 0
	mr 3,31
	bl fgetc
	stb 3,18(27)
	.loc 1 1279 0
	mr 3,31
	bl fgetc
	.loc 1 1281 0
	lbz 0,2(27)
	.loc 1 1279 0
	rlwinm 3,3,0,0xff
	.loc 1 1281 0
	cmpwi 7,0,1
	.loc 1 1279 0
	stb 3,19(27)
	.loc 1 1281 0
	beq- 7,.L338
	.loc 1 1282 0
	cmpwi 7,0,3
	beq- 7,.L339
	.loc 1 1283 0
	lis 3,.LC38@ha
	mr 4,29
	la 3,.LC38@l(3)
	crxor 6,6,6
	bl Sys_Error
	.loc 1 1285 0
	lbz 0,2(27)
	cmpwi 7,0,1
	beq- 7,.L338
.L355:
	.loc 1 1287 0
	lbz 3,19(27)
.L339:
	.loc 1 1294 0
	andi. 0,3,32
	.loc 1 1290 0
	lhz 28,16(27)
	.loc 1 1302 0
	li 26,0
	.loc 1 1289 0
	lhz 29,14(27)
.LVL431:
	.loc 1 1296 0
	addi 28,28,-1
.LVL432:
	.loc 1 1294 0
	bne- 0,.L344
	.loc 1 1296 0
	mullw 0,28,29
	.loc 1 1297 0
	mulli 26,29,-2
	.loc 1 1296 0
	add 30,30,0
.LVL433:
.L344:
	.loc 1 1305 0
	lbz 6,targa_header@l(23)
	cmpwi 7,6,0
	bne- 7,.L356
	.loc 1 1308 0
	lbz 0,2(27)
	cmpwi 7,0,1
	beq- 7,.L357
.L346:
.LVL434:
	.loc 1 1313 0
	cmpwi 7,28,-1
	beq- 7,.L347
	cmpwi 4,29,0
	.loc 1 1315 0
	lis 22,_impure_ptr@ha
.LVL435:
.L348:
	.loc 1 1314 0 discriminator 1
	beq- 4,.L352
	.loc 1 1314 0 is_stmt 0
	li 23,0
	b .L351
.LVL436:
.L349:
	.loc 1 1315 0 is_stmt 1 discriminator 2
	lwz 9,0(31)
	lbz 3,0(9)
	addi 0,9,1
	stw 0,0(31)
	stbx 3,30,23
	.loc 1 1314 0 discriminator 2
	addi 23,23,1
.LVL437:
	cmpw 7,29,23
	ble- 7,.L358
.LVL438:
.L351:
	.loc 1 1315 0
	lwz 9,4(31)
	addi 0,9,-1
	cmpwi 7,0,0
	stw 0,4(31)
	bge+ 7,.L349
	.loc 1 1315 0 is_stmt 0 discriminator 1
	lwz 3,_impure_ptr@l(22)
	mr 4,31
	bl __srget_r
	rlwinm 3,3,0,0xff
	stbx 3,30,23
	.loc 1 1314 0 is_stmt 1 discriminator 1
	addi 23,23,1
.LVL439:
	cmpw 7,29,23
	bgt+ 7,.L351
.L358:
	.loc 1 1314 0 is_stmt 0
	add 30,30,29
.LVL440:
.L352:
	.loc 1 1313 0 is_stmt 1
	cmpwi 7,28,0
	add 30,30,26
.LVL441:
	addi 28,28,-1
.LVL442:
	bne+ 7,.L348
.L347:
	.loc 1 1319 0
	mr 3,31
	bl fclose
	.loc 1 1321 0
	lhz 0,16(27)
	.loc 1 1320 0
	lhz 9,14(27)
	.loc 1 1322 0
	lwz 12,12(1)
	.loc 1 1320 0
	stw 9,0(24)
	.loc 1 1321 0
	stw 0,0(25)
	.loc 1 1322 0
	mtcrf 8,12
	lwz 0,60(1)
	lwz 22,16(1)
	mtlr 0
	lwz 23,20(1)
	lwz 24,24(1)
.LVL443:
	lwz 25,28(1)
.LVL444:
	lwz 26,32(1)
.LVL445:
	lwz 27,36(1)
	lwz 28,40(1)
.LVL446:
	lwz 29,44(1)
.LVL447:
	lwz 30,48(1)
.LVL448:
	lwz 31,52(1)
.LVL449:
	addi 1,1,56
	.cfi_remember_state
.LCFI36:
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
	blr
.LVL450:
.L356:
.LCFI37:
	.cfi_restore_state
	.loc 1 1306 0
	mr 3,31
	li 5,0
	li 7,1
	bl fseek
	.loc 1 1308 0
	lbz 0,2(27)
	cmpwi 7,0,1
	bne+ 7,.L346
.L357:
	.loc 1 1309 0
	mr 3,31
	li 5,0
	li 6,768
	li 7,1
	bl fseek
	b .L346
.LVL451:
.L338:
	.loc 1 1285 0 discriminator 1
	lbz 0,18(27)
	cmpwi 7,0,8
	beq- 7,.L355
	lbz 0,8(27)
	cmpwi 7,0,24
	beq- 7,.L355
	.loc 1 1286 0
	lhz 0,6(27)
	cmpwi 7,0,256
	beq- 7,.L355
	.loc 1 1287 0
	lis 3,.LC37@ha
	la 3,.LC37@l(3)
	crxor 6,6,6
	bl Sys_Error
	lbz 3,19(27)
	b .L339
	.cfi_endproc
.LFE55:
	.size	LoadGrayTGA, .-LoadGrayTGA
	.align 2
	.globl LoadTextureInPlace
	.type	LoadTextureInPlace, @function
LoadTextureInPlace:
.LFB52:
	.loc 1 775 0
	.cfi_startproc
.LVL452:
	stwu 1,-48(1)
.LCFI38:
	.cfi_def_cfa_offset 48
	mflr 0
	stw 31,44(1)
	.loc 1 781 0
	lis 31,.LANCHOR1@ha
	.cfi_offset 31, -4
	.cfi_register 65, 0
	la 31,.LANCHOR1@l(31)
	.loc 1 775 0
	stw 28,32(1)
	stw 29,36(1)
	mr 28,5
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	stw 30,40(1)
	.loc 1 781 0
	li 5,128
.LVL453:
	.loc 1 775 0
	mr 30,3
	.cfi_offset 30, -8
	mr 29,4
	.loc 1 781 0
	mr 4,3
.LVL454:
	mr 3,31
.LVL455:
	.loc 1 775 0
	stw 0,52(1)
	stw 26,24(1)
	mr 26,7
	.cfi_offset 26, -24
	.cfi_offset 65, 4
	stw 27,28(1)
	.loc 1 775 0
	mr 27,6
	.cfi_offset 27, -20
	.loc 1 781 0
	bl strncpy
.LVL456:
	.loc 1 782 0
	mr 3,30
	bl strlen
	.loc 1 867 0
	mr 9,31
	.loc 1 782 0
	addi 3,3,-3
.LVL457:
	.loc 1 867 0
	li 0,116
	stbux 0,9,3
	.loc 1 868 0
	li 0,103
	.loc 1 870 0
	mr 3,31
.LVL458:
	addi 4,1,8
	.loc 1 868 0
	stb 0,1(9)
	.loc 1 869 0
	li 0,97
	stb 0,2(9)
	.loc 1 870 0
	bl COM_FOpenFile
.LVL459:
	.loc 1 871 0
	lwz 0,8(1)
	.loc 1 874 0
	li 3,0
	.loc 1 871 0
	cmpwi 7,0,0
	beq- 7,.L360
	.loc 1 876 0
	cmpwi 7,29,4
	.loc 1 877 0
	mr 3,0
	mr 4,28
	mr 5,27
	mr 6,26
	mr 7,31
	.loc 1 876 0
	beq- 7,.L363
	.loc 1 879 0
	bl LoadGrayTGA
	.loc 1 880 0
	li 3,1
.L360:
	.loc 1 881 0
	lwz 0,52(1)
	lwz 26,24(1)
.LVL460:
	mtlr 0
	lwz 27,28(1)
.LVL461:
	lwz 28,32(1)
.LVL462:
	lwz 29,36(1)
.LVL463:
	lwz 30,40(1)
.LVL464:
	lwz 31,44(1)
	addi 1,1,48
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
.LVL465:
.L363:
.LCFI40:
	.cfi_restore_state
	.loc 1 877 0
	bl LoadColorTGA
.LVL466:
	.loc 1 881 0
	lwz 0,52(1)
	lwz 26,24(1)
.LVL467:
	.loc 1 880 0
	li 3,1
	.loc 1 881 0
	mtlr 0
	lwz 27,28(1)
.LVL468:
	lwz 28,32(1)
.LVL469:
	lwz 29,36(1)
.LVL470:
	lwz 30,40(1)
.LVL471:
	lwz 31,44(1)
	addi 1,1,48
	.cfi_restore 26
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI41:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE52:
	.size	LoadTextureInPlace, .-LoadTextureInPlace
	.align 2
	.globl EasyTgaLoad
	.type	EasyTgaLoad, @function
EasyTgaLoad:
.LFB56:
	.loc 1 1331 0
	.cfi_startproc
.LVL472:
	mflr 0
	stwu 1,-72(1)
.LCFI42:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	.loc 1 1337 0
	lis 9,gl_texcomp@ha
	.loc 1 1331 0
	stw 28,48(1)
	.loc 1 1343 0
	li 28,0
	.cfi_offset 28, -24
	.loc 1 1331 0
	stw 0,76(1)
	.loc 1 1343 0
	ori 28,28,32856
	.loc 1 1337 0
	lbz 0,gl_texcomp@l(9)
	.cfi_offset 65, 4
	.loc 1 1331 0
	stw 29,52(1)
	mr 29,3
	.cfi_offset 29, -20
	.loc 1 1337 0
	cmpwi 7,0,0
	.loc 1 1331 0
	stfd 31,64(1)
	stw 27,44(1)
	stw 30,56(1)
	stw 31,60(1)
	.loc 1 1337 0
	beq- 7,.L365
	.cfi_offset 31, -12
	.cfi_offset 30, -16
	.cfi_offset 27, -28
	.cfi_offset 63, -8
	.loc 1 1337 0 is_stmt 0 discriminator 1
	lis 9,gl_compress_textures+12@ha
	.loc 1 1339 0 is_stmt 1 discriminator 1
	li 28,0
	.loc 1 1337 0 discriminator 1
	lfs 0,gl_compress_textures+12@l(9)
	addi 9,1,32
	.loc 1 1339 0 discriminator 1
	ori 28,28,34030
	.loc 1 1337 0 discriminator 1
	fctiwz 0,0
	stfiwx 0,0,9
	lwz 0,32(1)
	andi. 9,0,1
	beq- 0,.L370
.L365:
.LVL473:
	.loc 1 1346 0
	lis 31,texture_extension_number@ha
	.loc 1 1349 0
	lis 30,.LANCHOR1@ha
	.loc 1 1346 0
	lwz 3,texture_extension_number@l(31)
.LVL474:
	.loc 1 1349 0
	la 30,.LANCHOR1@l(30)
	.loc 1 1346 0
	bl GL_Bind
	.loc 1 1349 0
	mr 4,29
	li 5,128
	mr 3,30
	bl strncpy
	.loc 1 1350 0
	mr 3,29
	bl strlen
	.loc 1 1417 0
	mr 9,30
	.loc 1 1350 0
	addi 3,3,-3
.LVL475:
	.loc 1 1417 0
	li 0,116
	stbux 0,9,3
	.loc 1 1418 0
	li 0,103
	.loc 1 1420 0
	mr 3,30
.LVL476:
	addi 4,1,16
	.loc 1 1418 0
	stb 0,1(9)
	.loc 1 1419 0
	li 0,97
	stb 0,2(9)
	.loc 1 1420 0
	bl COM_FOpenFile
.LVL477:
	.loc 1 1421 0
	lwz 3,16(1)
	cmpwi 7,3,0
	beq- 7,.L371
	.loc 1 1426 0
	bl LoadTGA
	.loc 1 1427 0
	lis 9,targa_header@ha
	la 9,targa_header@l(9)
	.loc 1 1432 0
	li 3,3553
	.loc 1 1427 0
	lhz 27,14(9)
.LVL478:
	.loc 1 1432 0
	li 4,10242
	.loc 1 1428 0
	lhz 29,16(9)
.LVL479:
	.loc 1 1432 0
	li 5,10497
	.loc 1 1429 0
	lis 9,targa_rgba@ha
	lwz 30,targa_rgba@l(9)
.LVL480:
	.loc 1 1432 0
	bl glTexParameteri
.LVL481:
	.loc 1 1433 0
	li 3,3553
	li 4,10243
	li 5,10497
	bl glTexParameteri
	.loc 1 1434 0
	mr 5,28
	mr 6,27
	mr 7,29
	li 8,0
	li 10,5121
	li 9,6408
	li 4,0
	li 3,3553
	stw 30,8(1)
	bl glTexImage2D
	.loc 1 1435 0
	mr 3,30
	bl free
	.loc 1 1437 0
	lis 9,.LC40@ha
	lfs 31,.LC40@l(9)
	li 3,3553
	li 4,10241
	fmr 1,31
	bl glTexParameterf
	.loc 1 1438 0
	fmr 1,31
	li 3,3553
	li 4,10240
	bl glTexParameterf
	.loc 1 1440 0
	lwz 3,texture_extension_number@l(31)
	.loc 1 1442 0
	lwz 27,44(1)
.LVL482:
	.loc 1 1440 0
	addi 0,3,1
	.loc 1 1442 0
	lwz 28,48(1)
.LVL483:
	.loc 1 1440 0
	stw 0,texture_extension_number@l(31)
	.loc 1 1442 0
	lwz 0,76(1)
	lwz 29,52(1)
.LVL484:
	mtlr 0
	lwz 30,56(1)
.LVL485:
	lwz 31,60(1)
	lfd 31,64(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI43:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL486:
.L370:
.LCFI44:
	.cfi_restore_state
	.loc 1 1343 0
	li 28,0
	ori 28,28,32856
	b .L365
.LVL487:
.L371:
	.loc 1 1423 0
	lis 3,.LC39@ha
	mr 4,30
	la 3,.LC39@l(3)
	crxor 6,6,6
	bl Con_SafePrintf
	.loc 1 1442 0
	lwz 0,76(1)
	lwz 27,44(1)
	.loc 1 1424 0
	li 3,0
	.loc 1 1442 0
	mtlr 0
	lwz 28,48(1)
.LVL488:
	lwz 29,52(1)
.LVL489:
	lwz 30,56(1)
	lwz 31,60(1)
	lfd 31,64(1)
	addi 1,1,72
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
	.cfi_restore 63
.LCFI45:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE56:
	.size	EasyTgaLoad, .-EasyTgaLoad
	.align 2
	.globl InitShaderTex
	.type	InitShaderTex, @function
InitShaderTex:
.LFB46:
	.loc 1 391 0
	.cfi_startproc
	mflr 0
	stwu 1,-8(1)
.LCFI46:
	.cfi_def_cfa_offset 8
	.cfi_register 65, 0
	.loc 1 392 0
	lis 3,.LC41@ha
	la 3,.LC41@l(3)
	.loc 1 391 0
	stw 0,12(1)
	.loc 1 392 0
	.cfi_offset 65, 4
	bl EasyTgaLoad
	lis 9,newwatertex@ha
	stw 3,newwatertex@l(9)
	.loc 1 393 0
	lis 3,.LC42@ha
	la 3,.LC42@l(3)
	bl EasyTgaLoad
	lis 9,newslimetex@ha
	stw 3,newslimetex@l(9)
	.loc 1 394 0
	lis 3,.LC43@ha
	la 3,.LC43@l(3)
	bl EasyTgaLoad
	lis 9,newlavatex@ha
	stw 3,newlavatex@l(9)
	.loc 1 395 0
	lis 3,.LC44@ha
	la 3,.LC44@l(3)
	bl EasyTgaLoad
	lis 9,newteletex@ha
	stw 3,newteletex@l(9)
	.loc 1 396 0
	lis 3,.LC45@ha
	la 3,.LC45@l(3)
	bl EasyTgaLoad
	.loc 1 397 0
	lwz 0,12(1)
	.loc 1 396 0
	lis 9,newenvmap@ha
	.loc 1 397 0
	mtlr 0
	.loc 1 396 0
	stw 3,newenvmap@l(9)
	.loc 1 397 0
	addi 1,1,8
.LCFI47:
	.cfi_def_cfa_offset 0
	blr
	.cfi_endproc
.LFE46:
	.size	InitShaderTex, .-InitShaderTex
	.align 2
	.globl R_LoadSkys
	.type	R_LoadSkys, @function
R_LoadSkys:
.LFB57:
	.loc 1 1463 0
	.cfi_startproc
	stwu 1,-128(1)
.LCFI48:
	.cfi_def_cfa_offset 128
	mflr 0
	stw 30,112(1)
	.loc 1 1467 0
	lis 30,.LANCHOR0@ha
	.cfi_offset 30, -16
	.cfi_register 65, 0
	.loc 1 1463 0
	stw 0,132(1)
	.loc 1 1467 0
	la 30,.LANCHOR0@l(30)
	.loc 1 1463 0
	stw 28,104(1)
	.loc 1 1467 0
	addi 30,30,1020
	.loc 1 1463 0
	stw 29,108(1)
	lis 28,.LC46@ha
	.cfi_offset 29, -20
	.cfi_offset 28, -24
	.cfi_offset 65, 4
	lis 29,skybox_name@ha
	.loc 1 1471 0
	lwzu 6,4(30)
	la 28,.LC46@l(28)
	la 29,skybox_name@l(29)
	.loc 1 1467 0
	li 0,1
	.loc 1 1463 0
	stw 25,92(1)
	.loc 1 1471 0
	mr 5,29
	mr 4,28
	.loc 1 1467 0
	lis 25,skybox_hasclouds@ha
	.cfi_offset 25, -36
	.loc 1 1471 0
	addi 3,1,16
	.loc 1 1467 0
	stb 0,skybox_hasclouds@l(25)
.LVL490:
	.loc 1 1463 0
	stw 23,84(1)
	.loc 1 1493 0
	lis 23,targa_header@ha
	.cfi_offset 23, -44
	.loc 1 1463 0
	stw 24,88(1)
	.loc 1 1497 0
	lis 24,.LC40@ha
	.cfi_offset 24, -40
	.loc 1 1463 0
	stw 26,96(1)
	.loc 1 1493 0
	lis 26,targa_rgba@ha
	.cfi_offset 26, -32
	.loc 1 1463 0
	stw 27,100(1)
	.loc 1 1479 0
	lis 27,.LC39@ha
	.cfi_offset 27, -28
	.loc 1 1463 0
	stw 31,116(1)
	.loc 1 1469 0
	li 31,0
	.cfi_offset 31, -12
	.loc 1 1463 0
	stfd 31,120(1)
	.loc 1 1471 0
	.cfi_offset 63, -8
	crxor 6,6,6
	bl sprintf
	.loc 1 1474 0
	addi 3,1,16
	li 4,4
	bl LoadTexture
	.loc 1 1479 0
	la 27,.LC39@l(27)
	.loc 1 1474 0
	mr. 0,3
	.loc 1 1476 0
	cmpwi 7,31,6
	.loc 1 1474 0
	bne- 0,.L374
.LVL491:
.L381:
	.loc 1 1479 0
	mr 3,27
	addi 4,1,16
	.loc 1 1476 0
	bne- 7,.L375
	.loc 1 1477 0
	stb 0,skybox_hasclouds@l(25)
.LVL492:
.L373:
	.loc 1 1501 0
	lwz 0,132(1)
	lwz 23,84(1)
	mtlr 0
	lwz 24,88(1)
	lwz 25,92(1)
	lwz 26,96(1)
	lwz 27,100(1)
	lwz 28,104(1)
	lwz 29,108(1)
	lwz 30,112(1)
	lwz 31,116(1)
	lfd 31,120(1)
	addi 1,1,128
	.cfi_remember_state
.LCFI49:
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
.L375:
.LCFI50:
	.cfi_restore_state
	.loc 1 1479 0
	crxor 6,6,6
	bl Con_Printf
.L377:
.LVL493:
	.loc 1 1469 0
	cmpwi 7,31,6
	addi 31,31,1
.LVL494:
	beq- 7,.L373
	.loc 1 1471 0
	lwzu 6,4(30)
	mr 5,29
	mr 4,28
	addi 3,1,16
	crxor 6,6,6
	bl sprintf
	.loc 1 1474 0
	addi 3,1,16
	li 4,4
	bl LoadTexture
	.loc 1 1476 0
	cmpwi 7,31,6
	.loc 1 1474 0
	mr. 0,3
	beq+ 0,.L381
.LVL495:
.L374:
	.loc 1 1485 0
	addi 3,31,2000
	bl GL_Bind
	.loc 1 1487 0
	li 3,3553
	li 4,10242
	li 5,10497
	bl glTexParameteri
	.loc 1 1488 0
	li 3,3553
	li 4,10243
	li 5,10497
	bl glTexParameteri
	.loc 1 1493 0
	la 9,targa_header@l(23)
	lhz 6,14(9)
	li 5,0
	lhz 7,16(9)
	ori 5,5,32855
	lwz 0,targa_rgba@l(26)
	li 8,0
	li 9,6408
	li 10,5121
	li 4,0
	li 3,3553
	stw 0,8(1)
	bl glTexImage2D
	.loc 1 1495 0
	lwz 3,targa_rgba@l(26)
	bl free
	.loc 1 1497 0
	lfs 31,.LC40@l(24)
	li 3,3553
	li 4,10241
	fmr 1,31
	bl glTexParameterf
	.loc 1 1498 0
	fmr 1,31
	li 3,3553
	li 4,10240
	bl glTexParameterf
	b .L377
	.cfi_endproc
.LFE57:
	.size	R_LoadSkys, .-R_LoadSkys
	.align 2
	.globl DrawSkyPolygon
	.type	DrawSkyPolygon, @function
DrawSkyPolygon:
.LFB58:
	.loc 1 1550 0
	.cfi_startproc
.LVL496:
	.loc 1 1557 0
	lis 9,c_sky@ha
	.loc 1 1570 0
	cmpwi 0,3,0
	.loc 1 1557 0
	lwz 8,c_sky@l(9)
	.loc 1 1569 0
	lis 10,vec3_origin@ha
	.loc 1 1550 0
	stwu 1,-16(1)
.LCFI51:
	.cfi_def_cfa_offset 16
	.loc 1 1569 0
	la 11,vec3_origin@l(10)
	.loc 1 1557 0
	addi 0,8,1
	.loc 1 1569 0
	lfs 13,vec3_origin@l(10)
.LVL497:
	.loc 1 1550 0
	stw 30,8(1)
	stw 31,12(1)
	.loc 1 1557 0
	stw 0,c_sky@l(9)
	.loc 1 1569 0
	lfs 12,4(11)
.LVL498:
	lfs 0,8(11)
.LVL499:
	.loc 1 1570 0
	ble- 0,.L383
	.cfi_offset 31, -4
	.cfi_offset 30, -8
.LVL500:
	mtctr 3
	mr 9,4
.LVL501:
.L384:
	.loc 1 1572 0 discriminator 2
	lfs 9,0(9)
	lfs 10,4(9)
	lfs 11,8(9)
	fadds 13,13,9
.LVL502:
	fadds 12,12,10
.LVL503:
	.loc 1 1570 0 discriminator 2
	addi 9,9,12
.LVL504:
	.loc 1 1572 0 discriminator 2
	fadds 0,0,11
.LVL505:
	.loc 1 1570 0 discriminator 2
	bdnz .L384
.LVL506:
.L383:
	.loc 1 1574 0
	fabs 10,13
.LVL507:
	.loc 1 1582 0
	lis 9,.LC6@ha
	.loc 1 1575 0
	fabs 11,12
.LVL508:
	.loc 1 1576 0
	fabs 9,0
.LVL509:
	.loc 1 1577 0
	fcmpu 7,10,11
	bng- 7,.L385
	.loc 1 1577 0 is_stmt 0 discriminator 1
	fcmpu 7,10,9
	bng- 7,.L385
	.loc 1 1582 0 is_stmt 1
	lfs 0,.LC6@l(9)
.LVL510:
	fcmpu 7,13,0
	mfcr 11
	rlwinm 11,11,29,1
.LVL511:
.L388:
	.loc 1 1600 0
	ble- 0,.L382
	mulli 0,11,12
	lis 9,.LANCHOR0@ha
	la 9,.LANCHOR0@l(9)
	.loc 1 1621 0
	mtctr 3
	.loc 1 1600 0
	add 9,9,0
	addi 0,11,6
	lwz 10,1052(9)
	slwi 11,11,2
.LVL512:
	lwz 30,1060(9)
	.loc 1 1621 0
	slwi 0,0,2
.LVL513:
	.loc 1 1600 0
	lwz 9,1056(9)
	.loc 1 1610 0
	nor 12,10,10
	.loc 1 1612 0
	addi 7,10,-1
	.loc 1 1604 0
	addi 6,30,-1
	.loc 1 1615 0
	nor 5,9,9
	.loc 1 1617 0
	addi 8,9,-1
	.loc 1 1606 0
	nor 31,30,30
	cmpwi 1,10,0
	cmpwi 6,9,0
	lis 10,skymins@ha
	lis 9,skymaxs@ha
	cmpwi 0,30,0
	.loc 1 1604 0
	slwi 6,6,2
	.loc 1 1606 0
	slwi 31,31,2
	.loc 1 1610 0
	slwi 12,12,2
	.loc 1 1612 0
	slwi 7,7,2
	.loc 1 1615 0
	slwi 5,5,2
	.loc 1 1617 0
	slwi 8,8,2
	la 10,skymins@l(10)
	la 9,skymaxs@l(9)
.LVL514:
.L409:
	.loc 1 1603 0
	ble- 0,.L395
	.loc 1 1604 0
	lfsx 12,4,6
.LVL515:
	.loc 1 1609 0
	blt- 1,.L424
.LVL516:
.L397:
	.loc 1 1612 0
	lfsx 13,4,7
	fdivs 13,13,12
.LVL517:
.L398:
	.loc 1 1614 0
	blt- 6,.L425
	.loc 1 1617 0
	lfsx 0,4,8
	fdivs 0,0,12
.LVL518:
.L400:
	.loc 1 1619 0
	lfsx 12,10,11
.LVL519:
	fcmpu 7,12,13
	bng- 7,.L401
	.loc 1 1620 0
	stfsx 13,10,11
.L401:
	.loc 1 1621 0
	lfsx 12,10,0
	fcmpu 7,12,0
	bng- 7,.L403
	.loc 1 1622 0
	stfsx 0,10,0
.L403:
	.loc 1 1623 0
	lfsx 12,9,11
	fcmpu 7,12,13
	bnl- 7,.L405
	.loc 1 1624 0
	stfsx 13,9,11
.L405:
	.loc 1 1625 0
	lfsx 13,9,0
.LVL520:
	fcmpu 7,13,0
	bnl- 7,.L407
	.loc 1 1626 0
	stfsx 0,9,0
.L407:
	.loc 1 1600 0
	addi 4,4,12
.LVL521:
	bdnz .L409
.LVL522:
.L382:
	.loc 1 1628 0
	lwz 30,8(1)
	lwz 31,12(1)
	addi 1,1,16
	.cfi_remember_state
.LCFI52:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	blr
.LVL523:
.L385:
.LCFI53:
	.cfi_restore_state
	.loc 1 1584 0
	fcmpu 7,11,9
	bng- 7,.L389
	.loc 1 1584 0 is_stmt 0 discriminator 1
	fcmpu 7,10,11
	bnl- 7,.L389
	.loc 1 1586 0 is_stmt 1
	lfs 0,.LC6@l(9)
.LVL524:
	.loc 1 1589 0
	fcmpu 7,12,0
	mfcr 11
	rlwinm 11,11,29,1
	addi 11,11,2
	b .L388
.LVL525:
.L389:
	.loc 1 1593 0
	lfs 13,.LC6@l(9)
.LVL526:
	.loc 1 1596 0
	fcmpu 7,0,13
	mfcr 11
	rlwinm 11,11,29,1
	addi 11,11,4
	b .L388
.LVL527:
.L425:
	.loc 1 1615 0
	lfsx 0,4,5
	fneg 0,0
	fdivs 0,0,12
.LVL528:
	b .L400
.LVL529:
.L395:
	.loc 1 1606 0
	lfsx 12,4,31
	fneg 12,12
.LVL530:
	.loc 1 1609 0
	bge+ 1,.L397
.L424:
	.loc 1 1610 0
	lfsx 13,4,12
	fneg 13,13
	fdivs 13,13,12
.LVL531:
	b .L398
	.cfi_endproc
.LFE58:
	.size	DrawSkyPolygon, .-DrawSkyPolygon
	.align 2
	.globl ClipSkyPolygon
	.type	ClipSkyPolygon, @function
ClipSkyPolygon:
.LFB59:
	.loc 1 1632 0
	.cfi_startproc
.LVL532:
	.loc 1 1643 0
	cmpwi 7,3,62
	.loc 1 1632 0
	mflr 0
	stwu 1,-2088(1)
.LCFI54:
	.cfi_def_cfa_offset 2088
	.cfi_register 65, 0
	stw 30,2080(1)
	mr 30,3
	.cfi_offset 30, -8
	stw 0,2092(1)
	stw 27,2068(1)
	stw 28,2072(1)
	stw 29,2076(1)
	stw 31,2084(1)
	.loc 1 1643 0
	bgt- 7,.L456
	.cfi_offset 31, -4
	.cfi_offset 29, -12
	.cfi_offset 28, -16
	.cfi_offset 27, -20
	.cfi_offset 65, 4
.LVL533:
.L427:
	.loc 1 1645 0
	cmpwi 7,5,6
	beq- 7,.L457
.LVL534:
	.loc 1 1653 0
	cmpwi 7,30,0
	.loc 1 1652 0
	lis 11,.LANCHOR0@ha
	mulli 0,5,12
	la 11,.LANCHOR0@l(11)
	addi 11,11,1124
	add 9,11,0
.LVL535:
	.loc 1 1653 0
	ble- 7,.L430
	.loc 1 1631 0
	mulli 28,30,12
	.loc 1 1655 0
	lfs 9,4(9)
	lfs 10,8(9)
	.loc 1 1656 0
	lis 9,.LC48@ha
.LVL536:
	.loc 1 1655 0
	lfsx 8,11,0
	.loc 1 1651 0
	li 3,0
	.loc 1 1656 0
	lfd 11,.LC48@l(9)
	.loc 1 1631 0
	add 0,4,28
.LVL537:
	mr 9,4
	li 11,0
	.loc 1 1651 0
	li 8,0
	addi 10,1,8
	addi 7,1,264
	.loc 1 1667 0
	li 29,2
	.loc 1 1664 0
	li 31,1
	.loc 1 1659 0
	li 6,0
	b .L436
.LVL538:
.L459:
	stwx 6,10,11
	.loc 1 1658 0
	li 8,1
.LVL539:
.L433:
	.loc 1 1653 0
	addi 9,9,12
.LVL540:
	.loc 1 1668 0
	stfsx 0,7,11
.LVL541:
	.loc 1 1653 0
	cmpw 7,9,0
	addi 11,11,4
	beq- 7,.L458
.LVL542:
.L436:
	.loc 1 1655 0
	lfs 0,4(9)
	lfs 12,0(9)
	fmuls 0,9,0
	lfs 13,8(9)
	fmadds 0,12,8,0
	fmadds 0,13,10,0
.LVL543:
	.loc 1 1656 0
	fmr 13,0
	fcmpu 7,13,11
	bgt- 7,.L459
	.loc 1 1661 0
	bnl- 7,.L454
.LVL544:
	.loc 1 1653 0
	addi 9,9,12
.LVL545:
	.loc 1 1664 0
	stwx 31,10,11
	.loc 1 1653 0
	cmpw 7,9,0
	.loc 1 1668 0
	stfsx 0,7,11
	.loc 1 1663 0
	li 3,1
.LVL546:
	.loc 1 1653 0
	addi 11,11,4
	bne+ 7,.L436
.L458:
	.loc 1 1671 0
	cmpwi 7,8,0
	beq- 7,.L430
	.loc 1 1671 0 is_stmt 0 discriminator 1
	cmpwi 7,3,0
	beq- 7,.L430
	.loc 1 1680 0 is_stmt 1
	lwz 11,0(4)
	.loc 1 1678 0
	slwi 0,30,2
	lwz 6,8(1)
	add 8,10,0
	.loc 1 1680 0
	stwx 11,4,28
	.loc 1 1681 0
	li 31,0
	.loc 1 1678 0
	stwx 6,10,0
	.loc 1 1681 0
	li 3,0
	.loc 1 1680 0
	lwz 11,4(4)
	addi 6,1,4
	.loc 1 1679 0
	lwz 0,264(1)
	.loc 1 1680 0
	stw 11,4(9)
	.loc 1 1679 0
	stw 0,256(8)
	.loc 1 1680 0
	li 8,1
	lwz 11,8(4)
	stw 11,8(9)
.LVL547:
.L447:
	.loc 1 1685 0
	lwzu 0,4(6)
	cmpwi 7,0,1
	beq- 7,.L440
	cmpwi 7,0,2
	beq- 7,.L441
	cmpwi 6,0,0
	bne- 6,.L455
	.loc 1 1688 0
	mulli 9,3,12
	lwz 28,0(4)
	lwz 29,4(4)
	.loc 1 1689 0
	addi 3,3,1
.LVL548:
	.loc 1 1688 0
	lwz 11,8(4)
	add 9,10,9
	stw 28,512(9)
	stw 29,516(9)
	stw 11,520(9)
.L444:
	.loc 1 1703 0 discriminator 1
	lwz 9,4(6)
	mr 28,8
	cmpwi 7,9,2
	beq- 7,.L445
	cmpw 7,0,9
	beq- 7,.L445
	.loc 1 1706 0
	lfs 0,0(7)
	.loc 1 1631 0
	mulli 12,31,12
	.loc 1 1706 0
	lfs 12,4(7)
	.loc 1 1631 0
	addi 9,1,520
	addi 12,12,764
	mulli 0,3,12
	.loc 1 1706 0
	fsubs 12,0,12
	.loc 1 1631 0
	add 12,9,12
	addi 11,4,-4
	li 9,0
	.loc 1 1706 0
	fdivs 12,0,12
.LVL549:
.L446:
	.loc 1 1709 0 discriminator 2
	lfs 0,16(11)
	.loc 1 1707 0 discriminator 2
	cmpwi 7,9,8
	.loc 1 1709 0 discriminator 2
	lfsu 13,4(11)
	.loc 1 1631 0 discriminator 2
	addi 27,1,520
	add 29,27,0
	.loc 1 1709 0 discriminator 2
	fsubs 0,0,13
	fmadds 0,0,12,13
.LVL550:
	.loc 1 1710 0 discriminator 2
	stfsx 0,29,9
	.loc 1 1707 0 discriminator 2
	addi 9,9,4
	.loc 1 1711 0 discriminator 2
	stfsu 0,4(12)
	.loc 1 1707 0 discriminator 2
	bne+ 7,.L446
	.loc 1 1713 0
	addi 3,3,1
.LVL551:
	.loc 1 1714 0
	addi 31,31,1
.LVL552:
.L445:
	.loc 1 1683 0
	cmpw 7,30,28
	addi 4,4,12
.LVL553:
	addi 8,8,1
.LVL554:
	addi 7,7,4
	bgt+ 7,.L447
	.loc 1 1718 0
	addi 30,5,1
.LVL555:
	addi 4,1,520
.LVL556:
	mr 5,30
	bl ClipSkyPolygon
.LVL557:
	.loc 1 1719 0
	mr 3,31
	addi 4,1,1288
	mr 5,30
	bl ClipSkyPolygon
.LVL558:
.L426:
	.loc 1 1720 0
	lwz 0,2092(1)
	lwz 27,2068(1)
	mtlr 0
	lwz 28,2072(1)
	lwz 29,2076(1)
	lwz 30,2080(1)
	lwz 31,2084(1)
	addi 1,1,2088
	.cfi_remember_state
.LCFI55:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	blr
.LVL559:
.L454:
.LCFI56:
	.cfi_restore_state
	.loc 1 1667 0
	stwx 29,10,11
	b .L433
.LVL560:
.L430:
	.loc 1 1673 0
	mr 3,30
	addi 5,5,1
	bl ClipSkyPolygon
	.loc 1 1720 0
	lwz 0,2092(1)
	lwz 27,2068(1)
	mtlr 0
	lwz 28,2072(1)
	lwz 29,2076(1)
	lwz 30,2080(1)
.LVL561:
	lwz 31,2084(1)
	addi 1,1,2088
	.cfi_remember_state
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 29
	.cfi_restore 30
	.cfi_restore 31
.LCFI57:
	.cfi_def_cfa_offset 0
	blr
.LVL562:
.L440:
.LCFI58:
	.cfi_restore_state
	.loc 1 1692 0
	mulli 9,31,12
	lwz 28,0(4)
	lwz 29,4(4)
	.loc 1 1693 0
	addi 31,31,1
.LVL563:
	.loc 1 1692 0
	lwz 11,8(4)
	add 9,10,9
	stw 28,1280(9)
	stw 29,1284(9)
	stw 11,1288(9)
	.loc 1 1694 0
	b .L444
.LVL564:
.L455:
	.loc 1 1703 0
	bne+ 7,.L444
	mr 28,8
	b .L445
.LVL565:
.L441:
	.loc 1 1696 0
	mulli 11,3,12
	lwz 28,0(4)
	.loc 1 1698 0
	mulli 9,31,12
	.loc 1 1696 0
	lwz 29,4(4)
	lwz 0,8(4)
	add 11,10,11
	.loc 1 1698 0
	add 9,10,9
	.loc 1 1696 0
	stw 28,512(11)
	stw 29,516(11)
	.loc 1 1697 0
	addi 3,3,1
.LVL566:
	.loc 1 1696 0
	stw 0,520(11)
	.loc 1 1699 0
	addi 31,31,1
	.loc 1 1698 0
	stw 28,1280(9)
	.loc 1 1703 0
	mr 28,8
	.loc 1 1698 0
	stw 29,1284(9)
	stw 0,1288(9)
	b .L445
.LVL567:
.L456:
	.loc 1 1644 0
	lis 3,.LC47@ha
	stw 4,2056(1)
	la 3,.LC47@l(3)
	stw 5,2060(1)
	crxor 6,6,6
	bl Sys_Error
.LVL568:
	lwz 5,2060(1)
	lwz 4,2056(1)
	b .L427
.L457:
	.loc 1 1647 0
	mr 3,30
	bl DrawSkyPolygon
	.loc 1 1648 0
	b .L426
	.cfi_endproc
.LFE59:
	.size	ClipSkyPolygon, .-ClipSkyPolygon
	.align 2
	.globl R_DrawSkyChain
	.type	R_DrawSkyChain, @function
R_DrawSkyChain:
.LFB60:
	.loc 1 1728 0
	.cfi_startproc
.LVL569:
	stwu 1,-24(1)
.LCFI59:
	.cfi_def_cfa_offset 24
	mflr 0
	.loc 1 1737 0
	lis 9,solidskytexture@ha
	.loc 1 1728 0
	stw 29,12(1)
	mr 29,3
	.cfi_offset 29, -12
	.cfi_register 65, 0
	.loc 1 1737 0
	lwz 3,solidskytexture@l(9)
.LVL570:
	.loc 1 1736 0
	lis 9,c_sky@ha
	.loc 1 1728 0
	stw 0,28(1)
	.loc 1 1736 0
	li 0,0
	.cfi_offset 65, 4
	.loc 1 1728 0
	stw 28,8(1)
	stw 30,16(1)
	stw 31,20(1)
	.loc 1 1736 0
	stw 0,c_sky@l(9)
	.loc 1 1737 0
	.cfi_offset 31, -4
	.cfi_offset 30, -8
	.cfi_offset 28, -16
	bl GL_Bind
.LVL571:
	.loc 1 1742 0
	cmpwi 7,29,0
	beq- 7,.L460
	lis 28,globalVertexTable@ha
.LVL572:
.L465:
	.loc 1 1744 0
	lwz 31,36(29)
.LVL573:
	cmpwi 7,31,0
	beq- 7,.L462
	la 30,globalVertexTable@l(28)
.LVL574:
.L464:
	.loc 1 1748 0
	lwz 0,8(31)
	.loc 1 1752 0
	li 5,0
	.loc 1 1746 0
	lwz 4,24(31)
	.loc 1 1748 0
	cmpwi 7,0,0
	.loc 1 1746 0
	lwz 9,0(30)
	mulli 4,4,28
	.loc 1 1752 0
	mr 3,0
	.loc 1 1727 0
	mulli 0,0,28
	.loc 1 1746 0
	add 4,9,4
.LVL575:
	.loc 1 1748 0
	ble- 7,.L463
.LVL576:
	add 4,4,0
.LVL577:
.L463:
	.loc 1 1752 0
	bl ClipSkyPolygon
	.loc 1 1744 0
	lwz 31,0(31)
.LVL578:
	cmpwi 7,31,0
	bne+ 7,.L464
.L462:
	.loc 1 1742 0
	lwz 29,40(29)
.LVL579:
	cmpwi 7,29,0
	bne+ 7,.L465
.LVL580:
.L460:
	.loc 1 1755 0
	lwz 0,28(1)
	lwz 28,8(1)
	mtlr 0
	lwz 29,12(1)
.LVL581:
	lwz 30,16(1)
	lwz 31,20(1)
	addi 1,1,24
.LCFI60:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE60:
	.size	R_DrawSkyChain, .-R_DrawSkyChain
	.align 2
	.globl R_ClearSkyBox
	.type	R_ClearSkyBox, @function
R_ClearSkyBox:
.LFB61:
	.loc 1 1764 0
	.cfi_startproc
.LVL582:
	lis 9,.LC0@ha
	.loc 1 1770 0
	li 8,6
	.loc 1 1769 0
	lwz 10,.LC0@l(9)
	.loc 1 1770 0
	lis 9,.LC1@ha
	lwz 0,.LC1@l(9)
	.loc 1 1764 0
	lis 11,skymins+20@ha
	lis 9,skymaxs+20@ha
	.loc 1 1770 0
	mtctr 8
	.loc 1 1764 0
	la 11,skymins+20@l(11)
	la 9,skymaxs+20@l(9)
.LVL583:
.L469:
	.loc 1 1769 0 discriminator 2
	stwu 10,4(11)
	.loc 1 1770 0 discriminator 2
	stwu 0,4(9)
	.loc 1 1769 0 discriminator 2
	stw 10,-24(11)
	.loc 1 1770 0 discriminator 2
	stw 0,-24(9)
	.loc 1 1767 0 discriminator 2
	bdnz .L469
	.loc 1 1772 0
	blr
	.cfi_endproc
.LFE61:
	.size	R_ClearSkyBox, .-R_ClearSkyBox
	.align 2
	.globl MakeSkyVec
	.type	MakeSkyVec, @function
MakeSkyVec:
.LFB62:
	.loc 1 1776 0
	.cfi_startproc
.LVL584:
	.loc 1 1780 0
	lis 9,.LC51@ha
	.loc 1 1776 0
	mflr 0
	.loc 1 1780 0
	lfs 0,.LC51@l(9)
	lis 8,.LANCHOR0+1196@ha
	.loc 1 1776 0
	stwu 1,-48(1)
.LCFI61:
	.cfi_def_cfa_offset 48
	.cfi_register 65, 0
	lis 10,r_origin@ha
	.loc 1 1780 0
	fmuls 12,1,0
	mulli 3,3,12
.LVL585:
	.loc 1 1781 0
	fmuls 13,2,0
	.loc 1 1776 0
	stw 0,52(1)
	.loc 1 1782 0
	stfs 0,16(1)
.LVL586:
	li 9,0
	.loc 1 1780 0
	stfs 12,8(1)
	la 8,.LANCHOR0+1196@l(8)
	.loc 1 1781 0
	stfs 13,12(1)
	addi 7,1,8
	.loc 1 1776 0
	stw 31,44(1)
	la 10,r_origin@l(10)
	addi 31,1,20
	.cfi_offset 31, -4
	.cfi_offset 65, 4
.LVL587:
.L474:
	.loc 1 1775 0
	add 11,8,3
	.loc 1 1786 0
	lwzx 11,11,9
.LVL588:
	.loc 1 1787 0
	cmpwi 7,11,0
	.loc 1 1790 0
	addi 0,11,-1
	slwi 0,0,2
	.loc 1 1787 0
	blt- 7,.L482
	.loc 1 1790 0
	lfsx 0,7,0
	stfsx 0,31,9
.LVL589:
.L473:
	.loc 1 1791 0
	lfsx 13,10,9
	.loc 1 1784 0
	cmpwi 7,9,8
	.loc 1 1791 0
	fadds 0,13,0
	stfsx 0,31,9
	.loc 1 1784 0
	addi 9,9,4
	bne+ 7,.L474
	.loc 1 1795 0
	lis 9,.LC18@ha
	lis 11,.LC3@ha
	lfs 13,.LC18@l(9)
	lfs 0,.LC3@l(11)
	.loc 1 1798 0
	lis 11,.LC49@ha
	.loc 1 1795 0
	fadds 1,1,13
.LVL590:
	.loc 1 1798 0
	lfs 12,.LC49@l(11)
	.loc 1 1796 0
	fadds 2,2,13
.LVL591:
	.loc 1 1795 0
	fmuls 1,1,0
.LVL592:
	.loc 1 1796 0
	fmuls 2,2,0
.LVL593:
	.loc 1 1798 0
	fcmpu 7,1,12
	blt- 7,.L477
	.loc 1 1800 0
	lis 10,.LC50@ha
	lfs 0,.LC50@l(10)
	fcmpu 7,1,0
	bgt- 7,.L478
.LVL594:
.L475:
	.loc 1 1802 0
	lfs 0,.LC49@l(11)
	fcmpu 7,2,0
	blt- 7,.L480
	.loc 1 1804 0
	lis 11,.LC50@ha
	lfs 0,.LC50@l(11)
	fcmpu 7,2,0
	bng- 7,.L476
.L480:
	.loc 1 1805 0
	fmr 2,0
.LVL595:
.L476:
	.loc 1 1807 0
	lfs 0,.LC18@l(9)
	.loc 1 1808 0
	fsubs 2,0,2
.LVL596:
	bl glTexCoord2f
.LVL597:
	.loc 1 1809 0
	mr 3,31
	bl glVertex3fv
	.loc 1 1810 0
	lwz 0,52(1)
	lwz 31,44(1)
	mtlr 0
	addi 1,1,48
	.cfi_remember_state
.LCFI62:
	.cfi_def_cfa_offset 0
	.cfi_restore 31
	blr
.LVL598:
.L482:
.LCFI63:
	.cfi_restore_state
	.loc 1 1788 0
	nor 11,11,11
.LVL599:
	slwi 11,11,2
.LVL600:
	lfsx 0,7,11
	fneg 0,0
	stfsx 0,31,9
	b .L473
.L477:
	.loc 1 1799 0
	fmr 1,12
.LVL601:
	b .L475
.LVL602:
.L478:
	.loc 1 1801 0
	fmr 1,0
.LVL603:
	b .L475
	.cfi_endproc
.LFE62:
	.size	MakeSkyVec, .-MakeSkyVec
	.align 2
	.globl R_DrawSkyBox
	.type	R_DrawSkyBox, @function
R_DrawSkyBox:
.LFB63:
	.loc 1 1819 0
	.cfi_startproc
	mflr 0
	stwu 1,-72(1)
.LCFI64:
	.cfi_def_cfa_offset 72
	.cfi_register 65, 0
	.loc 1 1822 0
	lis 9,skytexturenum@ha
	.loc 1 1819 0
	stfd 29,48(1)
	stw 0,76(1)
	.loc 1 1822 0
	lwz 0,skytexturenum@l(9)
	.cfi_offset 65, 4
	.cfi_offset 61, -24
	.loc 1 1819 0
	stfd 30,56(1)
	.loc 1 1822 0
	cmpwi 7,0,0
	.loc 1 1819 0
	stfd 31,64(1)
	stw 22,8(1)
	stw 23,12(1)
	stw 24,16(1)
	stw 25,20(1)
	stw 26,24(1)
	stw 27,28(1)
	stw 28,32(1)
	stw 29,36(1)
	stw 30,40(1)
	stw 31,44(1)
	.loc 1 1822 0
	blt- 7,.L484
	.cfi_offset 31, -28
	.cfi_offset 30, -32
	.cfi_offset 29, -36
	.cfi_offset 28, -40
	.cfi_offset 27, -44
	.cfi_offset 26, -48
	.cfi_offset 25, -52
	.cfi_offset 24, -56
	.cfi_offset 23, -60
	.cfi_offset 22, -64
	.cfi_offset 63, -8
	.cfi_offset 62, -16
	.loc 1 1824 0
	lis 9,cl+2688@ha
	slwi 0,0,2
	lwz 9,cl+2688@l(9)
	lwz 9,400(9)
	lwzx 9,9,0
	lwz 0,32(9)
	cmpwi 7,0,0
	beq- 7,.L483
	.loc 1 1826 0
	li 0,0
	stw 0,32(9)
.L484:
	.loc 1 1829 0
	li 3,0
	.loc 1 1831 0
	lis 22,fog_enabled@ha
	.loc 1 1829 0
	bl glDepthMask
	.loc 1 1831 0
	la 22,fog_enabled@l(22)
	lis 9,.LC6@ha
	lfs 13,12(22)
	lfs 0,.LC6@l(9)
	fcmpu 7,13,0
	bne- 7,.L494
.L486:
.LVL604:
	.loc 1 1832 0 discriminator 1
	lis 27,.LANCHOR0@ha
	lis 31,skymins@ha
	la 27,.LANCHOR0@l(27)
	lis 30,skymaxs@ha
	addi 27,27,1264
	la 31,skymins@l(31)
	la 30,skymaxs@l(30)
	lis 28,.LC52@ha
	lis 29,.LC18@ha
	.loc 1 1819 0 discriminator 1
	mr 25,30
	mr 26,31
	mr 23,27
	li 24,0
	la 28,.LC52@l(28)
	la 29,.LC18@l(29)
.LVL605:
.L487:
	.loc 1 1841 0 discriminator 2
	lwzu 3,4(23)
	addi 3,3,2000
	bl GL_Bind
	.loc 1 1843 0 discriminator 2
	lwz 9,0(28)
	.loc 1 1845 0 discriminator 2
	lwz 0,0(29)
	.loc 1 1848 0 discriminator 2
	li 3,7
	.loc 1 1843 0 discriminator 2
	stw 9,0(26)
	.loc 1 1844 0 discriminator 2
	stw 9,24(26)
	.loc 1 1845 0 discriminator 2
	stw 0,0(25)
	.loc 1 1846 0 discriminator 2
	stw 0,24(25)
	.loc 1 1848 0 discriminator 2
	bl glBegin
	.loc 1 1849 0 discriminator 2
	lfs 1,0(26)
	lfs 2,24(26)
	mr 3,24
	bl MakeSkyVec
	.loc 1 1850 0 discriminator 2
	lfs 1,0(26)
	lfs 2,24(25)
	mr 3,24
	bl MakeSkyVec
	.loc 1 1851 0 discriminator 2
	lfs 1,0(25)
	lfs 2,24(25)
	mr 3,24
	bl MakeSkyVec
	.loc 1 1852 0 discriminator 2
	lfs 1,0(25)
	lfs 2,24(26)
	mr 3,24
	.loc 1 1834 0 discriminator 2
	addi 26,26,4
	addi 25,25,4
	.loc 1 1852 0 discriminator 2
	bl MakeSkyVec
	.loc 1 1853 0 discriminator 2
	bl glEnd
.LVL606:
	.loc 1 1834 0 discriminator 2
	cmpwi 7,24,5
	addi 24,24,1
.LVL607:
	bne+ 7,.L487
	.loc 1 1856 0
	lis 9,.LC6@ha
	lfs 13,12(22)
	lfs 0,.LC6@l(9)
	fcmpu 7,13,0
	bne- 7,.L495
.L488:
	.loc 1 1859 0
	lis 9,skybox_hasclouds@ha
	lbz 0,skybox_hasclouds@l(9)
	cmpwi 7,0,0
	beq- 7,.L493
	.loc 1 1864 0
	li 3,2006
	.loc 1 1875 0
	lis 25,r_origin@ha
	.loc 1 1864 0
	bl GL_Bind
	.loc 1 1866 0
	li 3,3042
	bl glEnable
	.loc 1 1867 0
	li 4,769
	li 3,1
	.loc 1 1875 0
	la 26,r_origin@l(25)
	.loc 1 1867 0
	bl glBlendFunc
	.loc 1 1869 0
	li 3,5890
	bl glMatrixMode
	.loc 1 1870 0
	bl glPushMatrix
	.loc 1 1871 0
	lis 9,skybox_cloudspeed@ha
	lfs 1,skybox_cloudspeed@l(9)
	lis 9,cl+568@ha
	lfd 0,cl+568@l(9)
	lis 9,.LC6@ha
	lfs 2,.LC6@l(9)
	fmul 1,1,0
	fmr 3,2
	frsp 1,1
	bl glTranslatef
	.loc 1 1872 0
	li 4,255
	li 5,255
	li 6,255
	li 3,255
	bl glColor4ub
	.loc 1 1873 0
	li 3,6
	bl glBegin
	.loc 1 1874 0
	lis 9,.LC6@ha
	lfs 1,.LC6@l(9)
	fmr 2,1
	bl glTexCoord2f
	.loc 1 1875 0
	lis 9,.LC53@ha
	lfs 31,.LC53@l(9)
	lis 9,.LC54@ha
	lfs 30,.LC54@l(9)
	lfs 2,4(26)
	lfs 3,8(26)
	lfs 1,r_origin@l(25)
	fsubs 2,2,31
	fadds 3,3,30
	fsubs 1,1,31
	bl glVertex3f
	.loc 1 1877 0
	lis 9,.LC55@ha
	lfs 29,.LC55@l(9)
	lis 9,.LC6@ha
	lfs 1,.LC6@l(9)
	fmr 2,29
	bl glTexCoord2f
	.loc 1 1878 0
	lfs 2,4(26)
	lfs 3,8(26)
	lfs 1,r_origin@l(25)
	fsubs 2,2,31
	fadds 3,3,30
	fadds 1,1,31
	bl glVertex3f
	.loc 1 1880 0
	fmr 1,29
	fmr 2,29
	bl glTexCoord2f
	.loc 1 1881 0
	lfs 2,4(26)
	lfs 3,8(26)
	lfs 1,r_origin@l(25)
	fadds 2,2,31
	fadds 3,3,30
	fadds 1,1,31
	bl glVertex3f
	.loc 1 1883 0
	lis 9,.LC6@ha
	fmr 1,29
	lfs 2,.LC6@l(9)
	bl glTexCoord2f
	.loc 1 1884 0
	lfs 2,4(26)
	lfs 3,8(26)
	.loc 1 1892 0
	li 26,0
	.loc 1 1884 0
	lfs 1,r_origin@l(25)
	fadds 2,2,31
	fadds 3,3,30
	fsubs 1,1,31
	bl glVertex3f
	.loc 1 1886 0
	bl glEnd
	.loc 1 1887 0
	bl glPopMatrix
	.loc 1 1888 0
	li 3,5888
	bl glMatrixMode
	.loc 1 1890 0
	li 3,3008
	bl glDisable
	.loc 1 1891 0
	li 3,770
	li 4,771
	bl glBlendFunc
.LVL608:
.L490:
	.loc 1 1899 0 discriminator 2
	lwzu 3,4(27)
	addi 3,3,2000
	bl GL_Bind
	.loc 1 1902 0 discriminator 2
	lwz 9,0(28)
	.loc 1 1904 0 discriminator 2
	lwz 0,0(29)
	.loc 1 1907 0 discriminator 2
	li 3,7
	.loc 1 1902 0 discriminator 2
	stw 9,0(31)
	.loc 1 1903 0 discriminator 2
	stw 9,24(31)
	.loc 1 1904 0 discriminator 2
	stw 0,0(30)
	.loc 1 1905 0 discriminator 2
	stw 0,24(30)
	.loc 1 1907 0 discriminator 2
	bl glBegin
	.loc 1 1908 0 discriminator 2
	lfs 1,0(31)
	mr 3,26
	lfs 2,24(31)
	bl MakeSkyVec
	.loc 1 1909 0 discriminator 2
	lfs 1,0(31)
	lfs 2,24(30)
	mr 3,26
	bl MakeSkyVec
	.loc 1 1910 0 discriminator 2
	lfs 1,0(30)
	lfs 2,24(30)
	mr 3,26
	bl MakeSkyVec
	.loc 1 1911 0 discriminator 2
	lfs 1,0(30)
	lfs 2,24(31)
	mr 3,26
	.loc 1 1892 0 discriminator 2
	addi 31,31,4
	addi 30,30,4
	.loc 1 1911 0 discriminator 2
	bl MakeSkyVec
	.loc 1 1912 0 discriminator 2
	bl glEnd
.LVL609:
	.loc 1 1892 0 discriminator 2
	cmpwi 7,26,5
	addi 26,26,1
.LVL610:
	bne+ 7,.L490
	.loc 1 1915 0
	li 3,3042
	bl glDisable
.LVL611:
.L493:
	.loc 1 1916 0
	li 3,1
	bl glDepthMask
.L483:
	.loc 1 1917 0
	lwz 0,76(1)
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
	lfd 29,48(1)
	lfd 30,56(1)
	lfd 31,64(1)
	addi 1,1,72
	.cfi_remember_state
.LCFI65:
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
.L494:
.LCFI66:
	.cfi_restore_state
	.loc 1 1831 0 discriminator 1
	lis 9,gl_wireframe+12@ha
	lfs 13,gl_wireframe+12@l(9)
	fcmpu 7,13,0
	bne+ 7,.L486
	.loc 1 1832 0
	li 3,2912
	bl glDisable
	b .L486
.LVL612:
.L495:
	.loc 1 1856 0 discriminator 1
	lis 9,gl_wireframe+12@ha
	lfs 13,gl_wireframe+12@l(9)
	fcmpu 7,13,0
	bne+ 7,.L488
	.loc 1 1857 0
	li 3,2912
	bl glEnable
	b .L488
	.cfi_endproc
.LFE63:
	.size	R_DrawSkyBox, .-R_DrawSkyBox
	.align 2
	.globl R_InitSky
	.type	R_InitSky, @function
R_InitSky:
.LFB64:
	.loc 1 1932 0
	.cfi_startproc
.LVL613:
	lis 0,0xfffe
	mr 12,1
	ori 0,0,65480
	.loc 1 1945 0
	li 8,0
	.loc 1 1932 0
	stwux 1,1,0
.LCFI67:
	.cfi_def_cfa_offset 65592
	mflr 0
	.loc 1 1945 0
	li 7,0
	li 6,0
	.loc 1 1932 0
	stw 28,-24(12)
	stw 0,4(12)
	stw 31,-12(12)
	lis 31,d_8to24table@ha
	.cfi_offset 31, -12
	.cfi_offset 28, -24
	.cfi_offset 65, 4
	.loc 1 1940 0
	lwz 28,56(3)
	la 31,d_8to24table@l(31)
	.loc 1 1932 0
	stw 29,-20(12)
	.loc 1 1931 0
	li 29,-1
	.cfi_offset 29, -20
	.loc 1 1940 0
	add 28,3,28
.LVL614:
	.loc 1 1932 0
	stw 30,-16(12)
	stfd 31,-8(12)
	addi 30,1,20
	.cfi_offset 63, -8
	.cfi_offset 30, -16
	.loc 1 1931 0
	addi 12,28,127
.LVL615:
.L497:
	.loc 1 1931 0 is_stmt 0 discriminator 1
	li 0,128
	slwi 10,29,2
	mtctr 0
	add 10,30,10
	mr 11,12
.LVL616:
.L498:
	.loc 1 1949 0 is_stmt 1 discriminator 2
	lbzu 0,1(11)
.LVL617:
	.loc 1 1950 0 discriminator 2
	slwi 0,0,2
	add 9,31,0
.LVL618:
	.loc 1 1951 0 discriminator 2
	lwzx 3,31,0
	.loc 1 1952 0 discriminator 2
	lbzx 4,31,0
	.loc 1 1953 0 discriminator 2
	lbz 5,1(9)
	.loc 1 1954 0 discriminator 2
	lbz 0,2(9)
	.loc 1 1952 0 discriminator 2
	add 6,6,4
.LVL619:
	.loc 1 1951 0 discriminator 2
	stwu 3,4(10)
	.loc 1 1953 0 discriminator 2
	add 7,7,5
.LVL620:
	.loc 1 1954 0 discriminator 2
	add 8,8,0
.LVL621:
	.loc 1 1947 0 discriminator 2
	bdnz .L498
	.loc 1 1946 0
	cmpwi 7,29,16255
	.loc 1 1947 0
	addi 12,12,256
	.loc 1 1946 0
	addi 29,29,128
	bne+ 7,.L497
	.loc 1 1963 0
	lis 11,solidskytexture@ha
.LVL622:
	.loc 1 1957 0
	srawi 6,6,14
.LVL623:
	.loc 1 1963 0
	lwz 3,solidskytexture@l(11)
	.loc 1 1958 0
	srawi 7,7,14
.LVL624:
	.loc 1 1959 0
	srawi 8,8,14
.LVL625:
	.loc 1 1960 0
	li 0,0
	.loc 1 1963 0
	cmpwi 7,3,0
	.loc 1 1957 0
	stb 6,16(1)
	.loc 1 1958 0
	stb 7,17(1)
	.loc 1 1959 0
	stb 8,18(1)
	.loc 1 1960 0
	stb 0,19(1)
	.loc 1 1963 0
	bne- 7,.L500
	.loc 1 1964 0
	lis 9,texture_extension_number@ha
.LVL626:
	lwz 3,texture_extension_number@l(9)
	addi 0,3,1
	stw 3,solidskytexture@l(11)
	stw 0,texture_extension_number@l(9)
.L500:
	.loc 1 1965 0
	bl GL_Bind
	.loc 1 1967 0
	li 3,3553
	li 4,10242
	li 5,10497
	bl glTexParameteri
	.loc 1 1968 0
	li 3,3553
	li 4,10243
	li 5,10497
	bl glTexParameteri
	.loc 1 1969 0
	lis 9,gl_solid_format@ha
	lwz 5,gl_solid_format@l(9)
	li 7,128
	li 8,0
	li 10,5121
	li 6,128
	li 9,6408
	li 3,3553
	li 4,0
	.loc 1 1970 0
	lis 29,.LC40@ha
	.loc 1 1969 0
	stw 30,8(1)
	bl glTexImage2D
	.loc 1 1970 0
	lfs 31,.LC40@l(29)
	li 3,3553
	li 4,10241
	fmr 1,31
	.loc 1 1931 0
	addi 28,28,-1
.LVL627:
	.loc 1 1970 0
	bl glTexParameterf
	.loc 1 1971 0
	fmr 1,31
	li 3,3553
	li 4,10240
	bl glTexParameterf
.LVL628:
	.loc 1 1979 0
	lwz 8,16(1)
	mr 10,30
	.loc 1 1931 0
	addis 7,30,0x1
.LVL629:
.L501:
	.loc 1 1945 0 discriminator 1
	li 0,128
	mr 11,28
	li 9,0
	mtctr 0
	b .L504
.LVL630:
.L512:
	.loc 1 1979 0
	stwx 8,10,9
	.loc 1 1981 0
	addi 9,9,4
	.loc 1 1975 0
	bdz .L511
.L504:
	.loc 1 1977 0
	lbzu 0,1(11)
.LVL631:
	.loc 1 1978 0
	cmpwi 7,0,0
	.loc 1 1981 0
	slwi 0,0,2
.LVL632:
	.loc 1 1978 0
	beq- 7,.L512
	.loc 1 1981 0
	lwzx 0,31,0
	stwx 0,10,9
	addi 9,9,4
	.loc 1 1975 0
	bdnz .L504
.L511:
	addi 10,10,512
	addi 28,28,256
	.loc 1 1974 0
	cmpw 7,10,7
	bne+ 7,.L501
	.loc 1 1984 0
	lis 11,alphaskytexture@ha
	lwz 3,alphaskytexture@l(11)
	cmpwi 7,3,0
	bne- 7,.L506
	.loc 1 1985 0
	lis 9,texture_extension_number@ha
	lwz 3,texture_extension_number@l(9)
	addi 0,3,1
	stw 3,alphaskytexture@l(11)
	stw 0,texture_extension_number@l(9)
.L506:
	.loc 1 1986 0
	bl GL_Bind
	.loc 1 1987 0
	lis 9,gl_alpha_format@ha
	lwz 5,gl_alpha_format@l(9)
	li 6,128
	li 7,128
	li 8,0
	li 9,6408
	li 10,5121
	li 3,3553
	li 4,0
	stw 30,8(1)
	bl glTexImage2D
	.loc 1 1988 0
	lfs 31,.LC40@l(29)
	li 3,3553
	li 4,10241
	fmr 1,31
	bl glTexParameterf
	.loc 1 1989 0
	fmr 1,31
	li 3,3553
	li 4,10240
	bl glTexParameterf
	.loc 1 1990 0
	lwz 11,0(1)
	lwz 0,4(11)
	lwz 28,-24(11)
	mtlr 0
	lwz 29,-20(11)
	lwz 30,-16(11)
	lwz 31,-12(11)
	lfd 31,-8(11)
	mr 1,11
.LCFI68:
	.cfi_def_cfa_offset 0
	.cfi_restore 63
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	blr
	.cfi_endproc
.LFE64:
	.size	R_InitSky, .-R_InitSky
	.globl skytexorder
	.comm	skymaxs,48,4
	.comm	skymins,48,4
	.globl vec_to_st
	.globl st_to_vec
	.comm	c_sky,4,4
	.globl skyclip
	.globl suf
	.comm	skybox_hasclouds,1,1
	.comm	skybox_cloudspeed,4,4
	.comm	skybox_name,64,4
	.comm	targa_rgba,4,4
	.comm	targa_header,20,2
	.globl turbsin
	.comm	warpface,4,4
	.comm	newenvmap,4,4
	.comm	newteletex,4,4
	.comm	newlavatex,4,4
	.comm	newslimetex,4,4
	.comm	newwatertex,4,4
	.comm	speedscale,4,4
	.comm	alphaskytexture,4,4
	.comm	solidskytexture,4,4
	.comm	skytexturenum,4,4
	.comm	causticschain,4,4
	.section	.rodata.cst4,"aM",@progbits,4
	.align 2
.LC0:
	.4byte	1176255488
.LC1:
	.4byte	-971228160
.LC3:
	.4byte	1056964608
.LC5:
	.4byte	1090519040
.LC6:
	.4byte	0
.LC8:
	.4byte	1040187392
.LC11:
	.4byte	1048576000
.LC12:
	.4byte	1015021568
.LC14:
	.4byte	1501560836
.LC16:
	.4byte	1246543460
.LC18:
	.4byte	1065353216
.LC21:
	.4byte	1132593152
.LC28:
	.4byte	1077936128
.LC29:
	.4byte	1136459776
.LC30:
	.4byte	1006632960
.LC33:
	.4byte	1098907648
.LC40:
	.4byte	1175979008
.LC49:
	.4byte	989855744
.LC50:
	.4byte	1065320448
.LC51:
	.4byte	1149239296
.LC52:
	.4byte	-1082130432
.LC53:
	.4byte	1145569280
.LC54:
	.4byte	1101004800
.LC55:
	.4byte	1109393408
	.section	.rodata.cst8,"aM",@progbits,8
	.align 3
.LC9:
	.4byte	1078222640
	.4byte	1841940611
.LC20:
	.4byte	-1080452711
	.4byte	-1717986918
.LC22:
	.4byte	1068079513
	.4byte	-1717986918
.LC26:
	.4byte	-1079404135
	.4byte	-1717986918
.LC48:
	.4byte	1069128089
	.4byte	-1717986918
	.section	".data"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	turbsin, @object
	.size	turbsin, 1024
turbsin:
	.long	0
	.long	1044974267
	.long	1053358882
	.long	1058449677
	.long	1061731636
	.long	1065005676
	.long	1066811492
	.long	1068437707
	.long	1070056876
	.long	1071668244
	.long	1073270720
	.long	1074302602
	.long	1075093564
	.long	1075878612
	.long	1076657369
	.long	1077429288
	.long	1078193952
	.long	1078950856
	.long	1079699581
	.long	1080439666
	.long	1081170649
	.long	1081892154
	.long	1082367033
	.long	1082717593
	.long	1083062742
	.long	1083402292
	.long	1083735991
	.long	1084063692
	.long	1084385185
	.long	1084700240
	.long	1085008710
	.long	1085310386
	.long	1085605098
	.long	1085892681
	.long	1086172923
	.long	1086445679
	.long	1086710780
	.long	1086968079
	.long	1087217410
	.long	1087458624
	.long	1087691576
	.long	1087916118
	.long	1088132125
	.long	1088339470
	.long	1088538007
	.long	1088727632
	.long	1088908239
	.long	1089079723
	.long	1089241958
	.long	1089394841
	.long	1089538307
	.long	1089672273
	.long	1089796613
	.long	1089911306
	.long	1090016248
	.long	1090111396
	.long	1090196666
	.long	1090272037
	.long	1090337448
	.long	1090392875
	.long	1090438258
	.long	1090473574
	.long	1090498823
	.long	1090513986
	.long	1090519040
	.long	1090513986
	.long	1090498823
	.long	1090473574
	.long	1090438258
	.long	1090392875
	.long	1090337448
	.long	1090272037
	.long	1090196666
	.long	1090111396
	.long	1090016248
	.long	1089911306
	.long	1089796613
	.long	1089672273
	.long	1089538307
	.long	1089394841
	.long	1089241958
	.long	1089079723
	.long	1088908239
	.long	1088727632
	.long	1088538007
	.long	1088339470
	.long	1088132125
	.long	1087916118
	.long	1087691576
	.long	1087458624
	.long	1087217410
	.long	1086968079
	.long	1086710780
	.long	1086445679
	.long	1086172923
	.long	1085892681
	.long	1085605098
	.long	1085310386
	.long	1085008710
	.long	1084700240
	.long	1084385185
	.long	1084063692
	.long	1083735991
	.long	1083402292
	.long	1083062742
	.long	1082717593
	.long	1082367033
	.long	1081892154
	.long	1081170649
	.long	1080439666
	.long	1079699581
	.long	1078950856
	.long	1078193952
	.long	1077429288
	.long	1076657369
	.long	1075878612
	.long	1075093564
	.long	1074302602
	.long	1073270720
	.long	1071668244
	.long	1070056876
	.long	1068437707
	.long	1066811492
	.long	1065005676
	.long	1061731636
	.long	1058449677
	.long	1053358882
	.long	1044974267
	.long	646787373
	.long	-1102509381
	.long	-1094124766
	.long	-1089033971
	.long	-1085752012
	.long	-1082477972
	.long	-1080672156
	.long	-1079045941
	.long	-1077426772
	.long	-1075815404
	.long	-1074212928
	.long	-1073181046
	.long	-1072390084
	.long	-1071605036
	.long	-1070826279
	.long	-1070054360
	.long	-1069289696
	.long	-1068532792
	.long	-1067784067
	.long	-1067043982
	.long	-1066312999
	.long	-1065591494
	.long	-1065116615
	.long	-1064766055
	.long	-1064420906
	.long	-1064081356
	.long	-1063747657
	.long	-1063419956
	.long	-1063098463
	.long	-1062783408
	.long	-1062474938
	.long	-1062173262
	.long	-1061878550
	.long	-1061590967
	.long	-1061310725
	.long	-1061037969
	.long	-1060772868
	.long	-1060515569
	.long	-1060266238
	.long	-1060025024
	.long	-1059792072
	.long	-1059567530
	.long	-1059351523
	.long	-1059144178
	.long	-1058945641
	.long	-1058756016
	.long	-1058575409
	.long	-1058403925
	.long	-1058241690
	.long	-1058088807
	.long	-1057945341
	.long	-1057811375
	.long	-1057687035
	.long	-1057572342
	.long	-1057467400
	.long	-1057372252
	.long	-1057286982
	.long	-1057211611
	.long	-1057146200
	.long	-1057090773
	.long	-1057045390
	.long	-1057010074
	.long	-1056984825
	.long	-1056969662
	.long	-1056964608
	.long	-1056969662
	.long	-1056984825
	.long	-1057010074
	.long	-1057045390
	.long	-1057090773
	.long	-1057146200
	.long	-1057211611
	.long	-1057286982
	.long	-1057372252
	.long	-1057467400
	.long	-1057572342
	.long	-1057687035
	.long	-1057811375
	.long	-1057945341
	.long	-1058088807
	.long	-1058241690
	.long	-1058403925
	.long	-1058575409
	.long	-1058756016
	.long	-1058945641
	.long	-1059144178
	.long	-1059351523
	.long	-1059567530
	.long	-1059792072
	.long	-1060025024
	.long	-1060266238
	.long	-1060515569
	.long	-1060772868
	.long	-1061037969
	.long	-1061310725
	.long	-1061590967
	.long	-1061878550
	.long	-1062173262
	.long	-1062474938
	.long	-1062783408
	.long	-1063098463
	.long	-1063419956
	.long	-1063747657
	.long	-1064081356
	.long	-1064420906
	.long	-1064766055
	.long	-1065116615
	.long	-1065591494
	.long	-1066312999
	.long	-1067043982
	.long	-1067784067
	.long	-1068532792
	.long	-1069289696
	.long	-1070054360
	.long	-1070826279
	.long	-1071605036
	.long	-1072390084
	.long	-1073181046
	.long	-1074212928
	.long	-1075815404
	.long	-1077426772
	.long	-1079045941
	.long	-1080672156
	.long	-1082477972
	.long	-1085752012
	.long	-1089033971
	.long	-1094124766
	.long	-1102509381
	.type	suf, @object
	.size	suf, 28
suf:
	.long	.LC56
	.long	.LC57
	.long	.LC58
	.long	.LC59
	.long	.LC60
	.long	.LC61
	.long	.LC62
	.type	vec_to_st, @object
	.size	vec_to_st, 72
vec_to_st:
	.long	-2
	.long	3
	.long	1
	.long	2
	.long	3
	.long	-1
	.long	1
	.long	3
	.long	2
	.long	-1
	.long	3
	.long	-2
	.long	-2
	.long	-1
	.long	3
	.long	-2
	.long	1
	.long	-3
	.type	skyclip, @object
	.size	skyclip, 72
skyclip:
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	0
	.long	0
	.long	-1082130432
	.long	1065353216
	.long	0
	.long	1065353216
	.long	1065353216
	.long	1065353216
	.long	0
	.long	1065353216
	.long	-1082130432
	.long	0
	.long	1065353216
	.type	st_to_vec, @object
	.size	st_to_vec, 72
st_to_vec:
	.long	3
	.long	-1
	.long	2
	.long	-3
	.long	1
	.long	2
	.long	1
	.long	3
	.long	2
	.long	-1
	.long	-3
	.long	2
	.long	-2
	.long	-1
	.long	3
	.long	2
	.long	-1
	.long	-3
	.type	skytexorder, @object
	.size	skytexorder, 24
skytexorder:
	.long	0
	.long	2
	.long	1
	.long	3
	.long	4
	.long	5
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 2
.LC2:
	.string	"numverts = %i"
	.zero	2
.LC19:
	.string	"water"
	.zero	2
.LC23:
	.string	"tele"
	.zero	3
.LC24:
	.string	"lava"
	.zero	3
.LC25:
	.string	"slime"
	.zero	2
.LC27:
	.string	"glass"
	.zero	2
.LC34:
	.string	"LoadTGA: Only type 2 and 10 targa RGB images supported\n"
.LC35:
	.string	"Texture_LoadTGA: Only 32 or 24 bit images supported (no colormaps)\n"
.LC36:
	.string	"LoadTGA: Only type 1, 2 and 10 targa images supported\n%s\n"
	.zero	2
.LC37:
	.string	"LoadGrayTGA: Strange palette type\n"
	.zero	1
.LC38:
	.string	"LoadGrayTGA: Only type 1 and 3 targa images supported for bump maps.\n%s\n"
	.zero	3
.LC39:
	.string	"Couldn't load %s\n"
	.zero	2
.LC41:
	.string	"penta/q3water.tga"
	.zero	2
.LC42:
	.string	"penta/q3slime.tga"
	.zero	2
.LC43:
	.string	"penta/q3lava.tga"
	.zero	3
.LC44:
	.string	"penta/newtele.tga"
	.zero	2
.LC45:
	.string	"penta/q3envmap.tga"
	.zero	1
.LC46:
	.string	"env/%s%s.tga"
	.zero	3
.LC47:
	.string	"ClipSkyPolygon: MAX_CLIP_VERTS"
	.zero	1
.LC56:
	.string	"rt"
	.zero	1
.LC57:
	.string	"bk"
	.zero	1
.LC58:
	.string	"lf"
	.zero	1
.LC59:
	.string	"ft"
	.zero	1
.LC60:
	.string	"up"
	.zero	1
.LC61:
	.string	"dn"
	.zero	1
.LC62:
	.string	"tile"
	.section	".bss"
	.align 2
	.set	.LANCHOR1,. + 0
	.type	argh, @object
	.size	argh, 128
argh:
	.zero	128
	.section	".text"
.Letext0:
	.file 2 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/machine/_types.h"
	.file 3 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/lock.h"
	.file 4 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/include/stddef.h"
	.file 5 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/_types.h"
	.file 6 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/sys/reent.h"
	.file 7 "c:\\utils\\devkitpro\\devkitppc\\bin\\../lib/gcc/powerpc-eabi/4.6.3/../../../../powerpc-eabi/include/stdio.h"
	.file 8 "d:/Data/Nintendo/TenebraeGX/src/common.h"
	.file 9 "d:/Data/Nintendo/TenebraeGX/src/bspfile.h"
	.file 10 "d:/Data/Nintendo/TenebraeGX/src/zone.h"
	.file 11 "d:/Data/Nintendo/TenebraeGX/src/mathlib.h"
	.file 12 "d:/Data/Nintendo/TenebraeGX/src/quakedef.h"
	.file 13 "d:/Data/Nintendo/TenebraeGX/src/cvar.h"
	.file 14 "d:/Data/Nintendo/TenebraeGX/src/sound.h"
	.file 15 "d:/Data/Nintendo/TenebraeGX/src/render.h"
	.file 16 "d:/Data/Nintendo/TenebraeGX/src/gl_model.h"
	.file 17 "d:/Data/Nintendo/TenebraeGX/src/glquake.h"
	.file 18 "d:/Data/Nintendo/TenebraeGX/src/client.h"
	.file 19 "d:/Data/Nintendo/TenebraeGX/src/modelgen.h"
	.file 20 "d:/Data/Nintendo/TenebraeGX/src/world.h"
	.file 21 "d:/Data/Nintendo/TenebraeGX/gl2gx/include/GL/gl.h"
	.file 22 "c:/utils/devkitPro/libogc/include/ogc/gx.h"
	.file 23 "d:/Data/Nintendo/TenebraeGX/src/vid.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x39ff
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF588
	.byte	0x1
	.4byte	.LASF589
	.4byte	.LASF590
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
	.4byte	.LASF7
	.byte	0x2
	.byte	0xa
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x7
	.4byte	0x41
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x4
	.2byte	0x161
	.4byte	0x48
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0x46
	.4byte	0x9e
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x48
	.4byte	0x73
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x49
	.4byte	0x9e
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0xae
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0x43
	.4byte	0xd3
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0x5
	.byte	0x45
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x5
	.byte	0x4a
	.4byte	0x7f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x5
	.byte	0x4b
	.4byte	0xae
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x5
	.byte	0x4f
	.4byte	0x68
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x6
	.byte	0x15
	.4byte	0xf6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x18
	.byte	0x6
	.byte	0x2c
	.4byte	0x15c
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x6
	.byte	0x2e
	.4byte	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"_k"
	.byte	0x6
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0x2f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"_x"
	.byte	0x6
	.byte	0x30
	.4byte	0x162
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xfd
	.uleb128 0x8
	.4byte	0xeb
	.4byte	0x172
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x24
	.byte	0x6
	.byte	0x34
	.4byte	0x1fd
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x36
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x37
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x38
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x39
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0x10
	.4byte	.LASF33
	.2byte	0x108
	.byte	0x6
	.byte	0x47
	.4byte	0x246
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x48
	.4byte	0x246
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x49
	.4byte	0x246
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x4b
	.4byte	0xeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x4e
	.4byte	0xeb
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.byte	0
	.uleb128 0x8
	.4byte	0xe9
	.4byte	0x256
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.4byte	.LASF38
	.2byte	0x190
	.byte	0x6
	.byte	0x59
	.4byte	0x29d
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x6
	.byte	0x5a
	.4byte	0x29d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x5b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x5d
	.4byte	0x2a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x5e
	.4byte	0x1fd
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x256
	.uleb128 0x8
	.4byte	0x2b5
	.4byte	0x2b3
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2b3
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x8
	.byte	0x6
	.byte	0x69
	.4byte	0x2e4
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x6a
	.4byte	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0x6b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x70
	.byte	0x6
	.byte	0xa9
	.4byte	0x444
	.uleb128 0xe
	.string	"_p"
	.byte	0x6
	.byte	0xaa
	.4byte	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"_r"
	.byte	0x6
	.byte	0xab
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"_w"
	.byte	0x6
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0xad
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0xae
	.4byte	0x33
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xaf
	.4byte	0x2bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0xb0
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0xb7
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0xb9
	.4byte	0x5d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0xbb
	.4byte	0x604
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0xbd
	.4byte	0x629
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbe
	.4byte	0x644
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xc1
	.4byte	0x2bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"_up"
	.byte	0x6
	.byte	0xc2
	.4byte	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xc3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc6
	.4byte	0x64a
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc7
	.4byte	0x65a
	.byte	0x2
	.byte	0x23
	.uleb128 0x43
	.uleb128 0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xca
	.4byte	0x2bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0xce
	.4byte	0x5d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x6
	.byte	0xd1
	.4byte	0x463
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd5
	.4byte	0xde
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd7
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd8
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	0x41
	.4byte	0x463
	.uleb128 0x13
	.4byte	0x463
	.uleb128 0x13
	.4byte	0xe9
	.uleb128 0x13
	.4byte	0x5c7
	.uleb128 0x13
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x469
	.uleb128 0x14
	.4byte	.LASF61
	.2byte	0x440
	.byte	0x6
	.2byte	0x244
	.4byte	0x5c7
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x246
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x24b
	.4byte	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x24b
	.4byte	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x24b
	.4byte	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x24d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x24e
	.4byte	0x8d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x250
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x251
	.4byte	0x5f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x253
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x255
	.4byte	0x8ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x258
	.4byte	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x259
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x25a
	.4byte	0x15c
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x25b
	.4byte	0x8f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x25e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x25f
	.4byte	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x282
	.4byte	0x8b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x285
	.4byte	0x29d
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x286
	.4byte	0x256
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x289
	.4byte	0x906
	.byte	0x3
	.byte	0x23
	.uleb128 0x2dc
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x28e
	.4byte	0x676
	.byte	0x3
	.byte	0x23
	.uleb128 0x2e0
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x28f
	.4byte	0x912
	.byte	0x3
	.byte	0x23
	.uleb128 0x2f0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5cd
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF83
	.uleb128 0xf
	.byte	0x4
	.4byte	0x444
	.uleb128 0x12
	.byte	0x1
	.4byte	0x41
	.4byte	0x5f9
	.uleb128 0x13
	.4byte	0x463
	.uleb128 0x13
	.4byte	0xe9
	.uleb128 0x13
	.4byte	0x5f9
	.uleb128 0x13
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5ff
	.uleb128 0x16
	.4byte	0x5cd
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5da
	.uleb128 0x12
	.byte	0x1
	.4byte	0x5d
	.4byte	0x629
	.uleb128 0x13
	.4byte	0x463
	.uleb128 0x13
	.4byte	0xe9
	.uleb128 0x13
	.4byte	0x5d
	.uleb128 0x13
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x60a
	.uleb128 0x12
	.byte	0x1
	.4byte	0x41
	.4byte	0x644
	.uleb128 0x13
	.4byte	0x463
	.uleb128 0x13
	.4byte	0xe9
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x62f
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x65a
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x2c
	.4byte	0x66a
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x111
	.4byte	0x2ea
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0xc
	.byte	0x6
	.2byte	0x115
	.4byte	0x6b1
	.uleb128 0x15
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x117
	.4byte	0x6b1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x118
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x119
	.4byte	0x6b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x676
	.uleb128 0xf
	.byte	0x4
	.4byte	0x66a
	.uleb128 0x17
	.4byte	.LASF88
	.byte	0xe
	.byte	0x6
	.2byte	0x131
	.4byte	0x6f8
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x132
	.4byte	0x6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x133
	.4byte	0x6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x134
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0x708
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.byte	0xd0
	.byte	0x6
	.2byte	0x263
	.4byte	0x838
	.uleb128 0x15
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x265
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x266
	.4byte	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x267
	.4byte	0x838
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x268
	.4byte	0x172
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x269
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x26a
	.4byte	0x56
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x26b
	.4byte	0x6bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x15
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x26c
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x15
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x26d
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x26e
	.4byte	0xd3
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x26f
	.4byte	0x848
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x270
	.4byte	0x858
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x15
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x271
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x272
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x15
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x273
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x15
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x274
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x15
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x275
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x15
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x276
	.4byte	0xd3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x15
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x277
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x848
	.uleb128 0x9
	.4byte	0x48
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x858
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x868
	.uleb128 0x9
	.4byte	0x48
	.byte	0x17
	.byte	0
	.uleb128 0x18
	.byte	0xf0
	.byte	0x6
	.2byte	0x27c
	.4byte	0x890
	.uleb128 0x15
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x27f
	.4byte	0x890
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x280
	.4byte	0x8a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.byte	0
	.uleb128 0x8
	.4byte	0x2e4
	.4byte	0x8a0
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x8b0
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1d
	.byte	0
	.uleb128 0x19
	.byte	0xf0
	.byte	0x6
	.2byte	0x261
	.4byte	0x8d2
	.uleb128 0x1a
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x278
	.4byte	0x708
	.uleb128 0x1a
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x281
	.4byte	0x868
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x8e2
	.uleb128 0x9
	.4byte	0x48
	.byte	0x18
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x8ee
	.uleb128 0x13
	.4byte	0x463
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8e2
	.uleb128 0xf
	.byte	0x4
	.4byte	0x15c
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x906
	.uleb128 0x13
	.4byte	0x41
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x90c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8fa
	.uleb128 0x8
	.4byte	0x66a
	.4byte	0x922
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF114
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF115
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF116
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF117
	.uleb128 0x4
	.4byte	.LASF118
	.byte	0x7
	.byte	0x32
	.4byte	0x66a
	.uleb128 0x4
	.4byte	.LASF119
	.byte	0x8
	.byte	0x17
	.4byte	0x2c
	.uleb128 0x1c
	.4byte	0x929
	.uleb128 0x4
	.4byte	.LASF120
	.byte	0x8
	.byte	0x22
	.4byte	0x964
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF121
	.uleb128 0xf
	.byte	0x4
	.4byte	0x949
	.uleb128 0xa
	.byte	0x40
	.byte	0x9
	.byte	0x52
	.4byte	0x9dc
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x9
	.byte	0x54
	.4byte	0x9dc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x9
	.byte	0x54
	.4byte	0x9dc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x9
	.byte	0x55
	.4byte	0x9dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x9
	.byte	0x56
	.4byte	0x9ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x9
	.byte	0x57
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x9
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x9
	.byte	0x58
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x9ec
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x9fc
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	.LASF129
	.byte	0x9
	.byte	0x59
	.4byte	0x971
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0xa17
	.uleb128 0x9
	.4byte	0x48
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0xa27
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x33
	.4byte	0xa37
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x9
	.byte	0xa5
	.4byte	0xa5c
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x9
	.byte	0xa7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x9
	.byte	0xa8
	.4byte	0xa27
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF132
	.byte	0x9
	.byte	0xa9
	.4byte	0xa37
	.uleb128 0x8
	.4byte	0x929
	.4byte	0xa7d
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x3a
	.4byte	0xa8d
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0xa9d
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0xaad
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF133
	.byte	0x4
	.byte	0xa
	.byte	0x6f
	.4byte	0xac8
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0xa
	.byte	0x71
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF135
	.byte	0xa
	.byte	0x72
	.4byte	0xaad
	.uleb128 0x4
	.4byte	.LASF136
	.byte	0xb
	.byte	0x16
	.4byte	0x929
	.uleb128 0x4
	.4byte	.LASF137
	.byte	0xb
	.byte	0x17
	.4byte	0xae9
	.uleb128 0x8
	.4byte	0xad3
	.4byte	0xaf9
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x929
	.4byte	0xb09
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.byte	0x48
	.byte	0xc
	.byte	0xef
	.4byte	0xbba
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0xc
	.byte	0xf1
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xc
	.byte	0xf2
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0xc
	.byte	0xf3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0xc
	.byte	0xf4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xc
	.byte	0xf5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0xc
	.byte	0xf6
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xc
	.byte	0xf7
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xc
	.byte	0xf9
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xc
	.byte	0xfa
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xc
	.byte	0xfb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xc
	.byte	0xfc
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0xc
	.byte	0xfd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.byte	0
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0xc
	.byte	0xfe
	.4byte	0xb09
	.uleb128 0xd
	.4byte	.LASF150
	.byte	0x14
	.byte	0xd
	.byte	0x38
	.4byte	0xc26
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0xd
	.byte	0x3a
	.4byte	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0xd
	.byte	0x3b
	.4byte	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0xd
	.byte	0x3c
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0xd
	.byte	0x3d
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0xd
	.byte	0x3e
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0xd
	.byte	0x3f
	.4byte	0xc26
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xbc5
	.uleb128 0x4
	.4byte	.LASF157
	.byte	0xd
	.byte	0x40
	.4byte	0xbc5
	.uleb128 0x8
	.4byte	0x949
	.4byte	0xc48
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0xc58
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0xc68
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.4byte	.LASF158
	.byte	0x44
	.byte	0xe
	.byte	0x23
	.4byte	0xc91
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0xe
	.byte	0x25
	.4byte	0xc48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF159
	.byte	0xe
	.byte	0x26
	.4byte	0xac8
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.byte	0
	.uleb128 0xd
	.4byte	.LASF160
	.byte	0x10
	.byte	0xf
	.byte	0x1e
	.4byte	0xcd6
	.uleb128 0xb
	.4byte	.LASF161
	.byte	0xf
	.byte	0x20
	.4byte	0xd7d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF162
	.byte	0xf
	.byte	0x21
	.4byte	0xd83
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0xf
	.byte	0x22
	.4byte	0xff7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF164
	.byte	0xf
	.byte	0x23
	.4byte	0xd83
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF165
	.byte	0x40
	.byte	0x10
	.byte	0xca
	.4byte	0xd7d
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0x10
	.byte	0xcd
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0x10
	.byte	0xce
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0x10
	.byte	0xd0
	.4byte	0x1d0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0x10
	.byte	0xd2
	.4byte	0x1355
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0x10
	.byte	0xd5
	.4byte	0x96b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF171
	.byte	0x10
	.byte	0xd6
	.4byte	0x1d36
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF172
	.byte	0x10
	.byte	0xd8
	.4byte	0x1d3c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF173
	.byte	0x10
	.byte	0xd9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xe
	.string	"key"
	.byte	0x10
	.byte	0xda
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF174
	.byte	0x10
	.byte	0xdb
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF175
	.byte	0x10
	.byte	0xdc
	.4byte	0xa8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xcd6
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc91
	.uleb128 0x10
	.4byte	.LASF176
	.2byte	0x248
	.byte	0xf
	.byte	0x27
	.4byte	0xff7
	.uleb128 0xb
	.4byte	.LASF177
	.byte	0xf
	.byte	0x29
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF178
	.byte	0xf
	.byte	0x2b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF179
	.byte	0xf
	.byte	0x2d
	.4byte	0xbba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF180
	.byte	0xf
	.byte	0x2f
	.4byte	0x922
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF181
	.byte	0xf
	.byte	0x30
	.4byte	0x1008
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0xf
	.byte	0x31
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.4byte	.LASF182
	.byte	0xf
	.byte	0x32
	.4byte	0x1008
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0xf
	.byte	0x33
	.4byte	0xade
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.4byte	.LASF183
	.byte	0xf
	.byte	0x34
	.4byte	0x12d2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.4byte	.LASF184
	.byte	0xf
	.byte	0x35
	.4byte	0xd83
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0xf
	.byte	0x36
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0xb
	.4byte	.LASF185
	.byte	0xf
	.byte	0x37
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0xf
	.byte	0x38
	.4byte	0x96b
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0xf
	.byte	0x39
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0xb
	.4byte	.LASF186
	.byte	0xf
	.byte	0x3a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0xf
	.byte	0x3b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0xb
	.4byte	.LASF187
	.byte	0xf
	.byte	0x3d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xb
	.4byte	.LASF188
	.byte	0xf
	.byte	0x3f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0xb
	.4byte	.LASF189
	.byte	0xf
	.byte	0x40
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0xb
	.4byte	.LASF190
	.byte	0xf
	.byte	0x43
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0xb
	.4byte	.LASF191
	.byte	0xf
	.byte	0x44
	.4byte	0x1355
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0xf
	.byte	0x48
	.4byte	0xade
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0xf
	.byte	0x49
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0xf
	.byte	0x4a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0xf
	.byte	0x4b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0xf
	.byte	0x4c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0xb
	.4byte	.LASF192
	.byte	0xf
	.byte	0x50
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0xb
	.4byte	.LASF193
	.byte	0xf
	.byte	0x51
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0xb
	.4byte	.LASF194
	.byte	0xf
	.byte	0x52
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xb
	.4byte	.LASF195
	.byte	0xf
	.byte	0x53
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0xb
	.4byte	.LASF196
	.byte	0xf
	.byte	0x54
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0xb
	.4byte	.LASF197
	.byte	0xf
	.byte	0x57
	.4byte	0x1475
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0xb
	.4byte	.LASF198
	.byte	0xf
	.byte	0x58
	.4byte	0xe9
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0xb
	.4byte	.LASF199
	.byte	0xf
	.byte	0x5b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0xb
	.4byte	.LASF200
	.byte	0xf
	.byte	0x5c
	.4byte	0x147b
	.byte	0x3
	.byte	0x23
	.uleb128 0x110
	.uleb128 0xb
	.4byte	.LASF201
	.byte	0xf
	.byte	0x5f
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF202
	.byte	0xf
	.byte	0x60
	.4byte	0xade
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF203
	.byte	0xf
	.byte	0x61
	.4byte	0xade
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF204
	.byte	0xf
	.byte	0x62
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0xb
	.4byte	.LASF205
	.byte	0xf
	.byte	0x63
	.4byte	0xade
	.byte	0x3
	.byte	0x23
	.uleb128 0x230
	.uleb128 0xb
	.4byte	.LASF206
	.byte	0xf
	.byte	0x64
	.4byte	0xade
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd89
	.uleb128 0x4
	.4byte	.LASF207
	.byte	0xf
	.byte	0x24
	.4byte	0xc91
	.uleb128 0x8
	.4byte	0xad3
	.4byte	0x101e
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF208
	.2byte	0x1a4
	.byte	0x10
	.2byte	0x180
	.4byte	0x12d2
	.uleb128 0x15
	.4byte	.LASF151
	.byte	0x10
	.2byte	0x182
	.4byte	0xc48
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF209
	.byte	0x10
	.2byte	0x183
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF210
	.byte	0x10
	.2byte	0x185
	.4byte	0x207f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF211
	.byte	0x10
	.2byte	0x186
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF212
	.byte	0x10
	.2byte	0x187
	.4byte	0x18d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF213
	.byte	0x10
	.2byte	0x189
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x10
	.2byte	0x18e
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x10
	.2byte	0x18e
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF214
	.byte	0x10
	.2byte	0x18f
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x15
	.4byte	.LASF215
	.byte	0x10
	.2byte	0x194
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF216
	.byte	0x10
	.2byte	0x195
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x15
	.4byte	.LASF217
	.byte	0x10
	.2byte	0x195
	.4byte	0xade
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF218
	.byte	0x10
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x15
	.4byte	.LASF219
	.byte	0x10
	.2byte	0x19a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF220
	.byte	0x10
	.2byte	0x19c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF221
	.byte	0x10
	.2byte	0x19d
	.4byte	0x208b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x15
	.4byte	.LASF222
	.byte	0x10
	.2byte	0x19f
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x15
	.4byte	.LASF223
	.byte	0x10
	.2byte	0x1a0
	.4byte	0x1cee
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x15
	.4byte	.LASF199
	.byte	0x10
	.2byte	0x1a2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x15
	.4byte	.LASF224
	.byte	0x10
	.2byte	0x1a3
	.4byte	0x2091
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x15
	.4byte	.LASF225
	.byte	0x10
	.2byte	0x1a5
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x15
	.4byte	.LASF226
	.byte	0x10
	.2byte	0x1a6
	.4byte	0x2097
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x15
	.4byte	.LASF227
	.byte	0x10
	.2byte	0x1a8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xb4
	.uleb128 0x15
	.4byte	.LASF228
	.byte	0x10
	.2byte	0x1a9
	.4byte	0x209d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x15
	.4byte	.LASF229
	.byte	0x10
	.2byte	0x1ab
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xbc
	.uleb128 0x15
	.4byte	.LASF230
	.byte	0x10
	.2byte	0x1ac
	.4byte	0x20a3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x15
	.4byte	.LASF231
	.byte	0x10
	.2byte	0x1ae
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x15
	.4byte	.LASF232
	.byte	0x10
	.2byte	0x1af
	.4byte	0x1cfa
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x15
	.4byte	.LASF233
	.byte	0x10
	.2byte	0x1b1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x15
	.4byte	.LASF234
	.byte	0x10
	.2byte	0x1b2
	.4byte	0x1d42
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x15
	.4byte	.LASF235
	.byte	0x10
	.2byte	0x1b4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x15
	.4byte	.LASF236
	.byte	0x10
	.2byte	0x1b5
	.4byte	0x20a9
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x15
	.4byte	.LASF237
	.byte	0x10
	.2byte	0x1b7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x15
	.4byte	.LASF238
	.byte	0x10
	.2byte	0x1b8
	.4byte	0x1db0
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x15
	.4byte	.LASF173
	.byte	0x10
	.2byte	0x1ba
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x15
	.4byte	.LASF239
	.byte	0x10
	.2byte	0x1bb
	.4byte	0x1d3c
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x15
	.4byte	.LASF240
	.byte	0x10
	.2byte	0x1bd
	.4byte	0x20af
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x15
	.4byte	.LASF241
	.byte	0x10
	.2byte	0x1bf
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x15
	.4byte	.LASF242
	.byte	0x10
	.2byte	0x1c0
	.4byte	0x20bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x15
	.4byte	.LASF243
	.byte	0x10
	.2byte	0x1c2
	.4byte	0x96b
	.byte	0x3
	.byte	0x23
	.uleb128 0x194
	.uleb128 0x15
	.4byte	.LASF244
	.byte	0x10
	.2byte	0x1c3
	.4byte	0x96b
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x15
	.4byte	.LASF245
	.byte	0x10
	.2byte	0x1c4
	.4byte	0x5c7
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x15
	.4byte	.LASF159
	.byte	0x10
	.2byte	0x1c9
	.4byte	0xac8
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x101e
	.uleb128 0xd
	.4byte	.LASF246
	.byte	0x34
	.byte	0x10
	.byte	0xb6
	.4byte	0x1355
	.uleb128 0xb
	.4byte	.LASF166
	.byte	0x10
	.byte	0xb9
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0x10
	.byte	0xba
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF168
	.byte	0x10
	.byte	0xbc
	.4byte	0x1d0b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF169
	.byte	0x10
	.byte	0xbe
	.4byte	0x1355
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF247
	.byte	0x10
	.byte	0xc1
	.4byte	0x1cee
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x10
	.byte	0xc2
	.4byte	0x1d1b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF248
	.byte	0x10
	.byte	0xc4
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF233
	.byte	0x10
	.byte	0xc5
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x12d8
	.uleb128 0x1e
	.4byte	.LASF249
	.4byte	0x20030
	.byte	0x11
	.2byte	0xa09
	.4byte	0x1475
	.uleb128 0x15
	.4byte	.LASF18
	.byte	0x11
	.2byte	0xa0f
	.4byte	0x1475
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF250
	.byte	0x11
	.2byte	0xa13
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF251
	.byte	0x11
	.2byte	0xa15
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF252
	.byte	0x11
	.2byte	0xa17
	.4byte	0x24d8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF253
	.byte	0x11
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF254
	.byte	0x11
	.2byte	0xa19
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF255
	.byte	0x11
	.2byte	0xa1b
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.4byte	.LASF256
	.byte	0x11
	.2byte	0xa1d
	.4byte	0x157d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.4byte	.LASF257
	.byte	0x11
	.2byte	0xa1f
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF258
	.byte	0x11
	.2byte	0xa21
	.4byte	0x24d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF259
	.byte	0x11
	.2byte	0xa25
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.4byte	.LASF260
	.byte	0x11
	.2byte	0xa2b
	.4byte	0x24e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x15
	.4byte	.LASF261
	.byte	0x11
	.2byte	0xa2d
	.4byte	0x24e4
	.byte	0x4
	.byte	0x23
	.uleb128 0x602c
	.uleb128 0x15
	.4byte	.LASF262
	.byte	0x11
	.2byte	0xa2f
	.4byte	0x24e4
	.byte	0x4
	.byte	0x23
	.uleb128 0xc02c
	.uleb128 0x15
	.4byte	.LASF263
	.byte	0x11
	.2byte	0xa31
	.4byte	0x24e4
	.byte	0x4
	.byte	0x23
	.uleb128 0x1202c
	.uleb128 0x15
	.4byte	.LASF264
	.byte	0x11
	.2byte	0xa33
	.4byte	0x2529
	.byte	0x4
	.byte	0x23
	.uleb128 0x1802c
	.uleb128 0x15
	.4byte	.LASF265
	.byte	0x11
	.2byte	0xa37
	.4byte	0x253a
	.byte	0x4
	.byte	0x23
	.uleb128 0x2002c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x135b
	.uleb128 0x8
	.4byte	0x33
	.4byte	0x148b
	.uleb128 0x9
	.4byte	0x48
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF266
	.byte	0xf
	.byte	0x66
	.4byte	0xd89
	.uleb128 0xa
	.byte	0x18
	.byte	0x12
	.byte	0x16
	.4byte	0x14d7
	.uleb128 0xb
	.4byte	.LASF267
	.byte	0x12
	.byte	0x18
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF268
	.byte	0x12
	.byte	0x1b
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF269
	.byte	0x12
	.byte	0x1c
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF270
	.byte	0x12
	.byte	0x1d
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x4
	.4byte	.LASF271
	.byte	0x12
	.byte	0x21
	.4byte	0x1496
	.uleb128 0x1f
	.2byte	0x402c
	.byte	0x12
	.byte	0x29
	.4byte	0x1532
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x12
	.byte	0x2b
	.4byte	0xc58
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF272
	.byte	0x12
	.byte	0x2c
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF273
	.byte	0x12
	.byte	0x2d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF274
	.byte	0x12
	.byte	0x2e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF275
	.byte	0x12
	.byte	0x2f
	.4byte	0xc37
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x4
	.4byte	.LASF276
	.byte	0x12
	.byte	0x30
	.4byte	0x14e2
	.uleb128 0xa
	.byte	0x10
	.byte	0x12
	.byte	0x32
	.4byte	0x1562
	.uleb128 0xb
	.4byte	.LASF277
	.byte	0x12
	.byte	0x34
	.4byte	0x1562
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF278
	.byte	0x12
	.byte	0x35
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x1572
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF279
	.byte	0x12
	.byte	0x36
	.4byte	0x153d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x148b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x93e
	.uleb128 0x1f
	.2byte	0xce8
	.byte	0x12
	.byte	0x9a
	.4byte	0x1824
	.uleb128 0xb
	.4byte	.LASF280
	.byte	0x12
	.byte	0x9c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"cmd"
	.byte	0x12
	.byte	0xa0
	.4byte	0x14d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF281
	.byte	0x12
	.byte	0xa3
	.4byte	0x1824
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF282
	.byte	0x12
	.byte	0xa4
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0xb
	.4byte	.LASF283
	.byte	0x12
	.byte	0xa5
	.4byte	0x1834
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xb
	.4byte	.LASF284
	.byte	0x12
	.byte	0xa6
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0xb
	.4byte	.LASF285
	.byte	0x12
	.byte	0xa8
	.4byte	0x1844
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0xb
	.4byte	.LASF286
	.byte	0x12
	.byte	0xa9
	.4byte	0x1844
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0xb
	.4byte	.LASF287
	.byte	0x12
	.byte	0xaf
	.4byte	0x1008
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0xb
	.4byte	.LASF267
	.byte	0x12
	.byte	0xb1
	.4byte	0xade
	.byte	0x3
	.byte	0x23
	.uleb128 0x1bc
	.uleb128 0xb
	.4byte	.LASF288
	.byte	0x12
	.byte	0xb3
	.4byte	0x1008
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0xb
	.4byte	.LASF289
	.byte	0x12
	.byte	0xb5
	.4byte	0xade
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0xb
	.4byte	.LASF290
	.byte	0x12
	.byte	0xb7
	.4byte	0xade
	.byte	0x3
	.byte	0x23
	.uleb128 0x1ec
	.uleb128 0xb
	.4byte	.LASF291
	.byte	0x12
	.byte	0xba
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x1f8
	.uleb128 0xb
	.4byte	.LASF292
	.byte	0x12
	.byte	0xbb
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x1fc
	.uleb128 0xb
	.4byte	.LASF293
	.byte	0x12
	.byte	0xbc
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0xb
	.4byte	.LASF294
	.byte	0x12
	.byte	0xbd
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.uleb128 0xb
	.4byte	.LASF295
	.byte	0x12
	.byte	0xbe
	.4byte	0x922
	.byte	0x3
	.byte	0x23
	.uleb128 0x208
	.uleb128 0xb
	.4byte	.LASF296
	.byte	0x12
	.byte	0xc0
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0xb
	.4byte	.LASF297
	.byte	0x12
	.byte	0xc1
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x214
	.uleb128 0xb
	.4byte	.LASF298
	.byte	0x12
	.byte	0xc3
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x218
	.uleb128 0xb
	.4byte	.LASF299
	.byte	0x12
	.byte	0xc4
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x219
	.uleb128 0xb
	.4byte	.LASF300
	.byte	0x12
	.byte	0xc5
	.4byte	0x959
	.byte	0x3
	.byte	0x23
	.uleb128 0x21a
	.uleb128 0xb
	.4byte	.LASF301
	.byte	0x12
	.byte	0xc7
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x21c
	.uleb128 0xb
	.4byte	.LASF302
	.byte	0x12
	.byte	0xc8
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0xb
	.4byte	.LASF303
	.byte	0x12
	.byte	0xca
	.4byte	0x1854
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0xb
	.4byte	.LASF304
	.byte	0x12
	.byte	0xcb
	.4byte	0x922
	.byte	0x3
	.byte	0x23
	.uleb128 0x238
	.uleb128 0xb
	.4byte	.LASF305
	.byte	0x12
	.byte	0xce
	.4byte	0x922
	.byte	0x3
	.byte	0x23
	.uleb128 0x240
	.uleb128 0xb
	.4byte	.LASF306
	.byte	0x12
	.byte	0xd2
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x248
	.uleb128 0xb
	.4byte	.LASF307
	.byte	0x12
	.byte	0xd7
	.4byte	0x1864
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0xb
	.4byte	.LASF308
	.byte	0x12
	.byte	0xd8
	.4byte	0x1874
	.byte	0x3
	.byte	0x23
	.uleb128 0x64c
	.uleb128 0xb
	.4byte	.LASF309
	.byte	0x12
	.byte	0xda
	.4byte	0x188a
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4c
	.uleb128 0xb
	.4byte	.LASF310
	.byte	0x12
	.byte	0xdb
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa74
	.uleb128 0xb
	.4byte	.LASF311
	.byte	0x12
	.byte	0xdc
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa78
	.uleb128 0xb
	.4byte	.LASF312
	.byte	0x12
	.byte	0xdd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa7c
	.uleb128 0xb
	.4byte	.LASF313
	.byte	0x12
	.byte	0xe0
	.4byte	0x12d2
	.byte	0x3
	.byte	0x23
	.uleb128 0xa80
	.uleb128 0xb
	.4byte	.LASF314
	.byte	0x12
	.byte	0xe1
	.4byte	0xd83
	.byte	0x3
	.byte	0x23
	.uleb128 0xa84
	.uleb128 0xb
	.4byte	.LASF315
	.byte	0x12
	.byte	0xe2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa88
	.uleb128 0xb
	.4byte	.LASF316
	.byte	0x12
	.byte	0xe3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8c
	.uleb128 0xb
	.4byte	.LASF317
	.byte	0x12
	.byte	0xe4
	.4byte	0x148b
	.byte	0x3
	.byte	0x23
	.uleb128 0xa90
	.uleb128 0xb
	.4byte	.LASF318
	.byte	0x12
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcd8
	.uleb128 0xb
	.4byte	.LASF319
	.byte	0x12
	.byte	0xe6
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xcdc
	.uleb128 0xb
	.4byte	.LASF320
	.byte	0x12
	.byte	0xe9
	.4byte	0x189a
	.byte	0x3
	.byte	0x23
	.uleb128 0xce0
	.uleb128 0xb
	.4byte	.LASF321
	.byte	0x12
	.byte	0xf2
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0xce4
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x1834
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x1844
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.byte	0
	.uleb128 0x8
	.4byte	0x1572
	.4byte	0x1854
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x922
	.4byte	0x1864
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.4byte	0x12d2
	.4byte	0x1874
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x8
	.4byte	0x1884
	.4byte	0x1884
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc68
	.uleb128 0x8
	.4byte	0x5cd
	.4byte	0x189a
	.uleb128 0x9
	.4byte	0x48
	.byte	0x27
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1532
	.uleb128 0x4
	.4byte	.LASF322
	.byte	0x12
	.byte	0xf3
	.4byte	0x1589
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x18bb
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.byte	0x13
	.byte	0x34
	.4byte	0x18d0
	.uleb128 0x21
	.4byte	.LASF323
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF324
	.sleb128 1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF325
	.byte	0x13
	.byte	0x34
	.4byte	0x18bb
	.uleb128 0xa
	.byte	0x4
	.byte	0x13
	.byte	0x64
	.4byte	0x18fe
	.uleb128 0xe
	.string	"v"
	.byte	0x13
	.byte	0x65
	.4byte	0x18fe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF326
	.byte	0x13
	.byte	0x66
	.4byte	0x949
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x190e
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF327
	.byte	0x13
	.byte	0x67
	.4byte	0x18db
	.uleb128 0xa
	.byte	0xc
	.byte	0x10
	.byte	0x3b
	.4byte	0x1930
	.uleb128 0xb
	.4byte	.LASF328
	.byte	0x10
	.byte	0x3d
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF329
	.byte	0x10
	.byte	0x3e
	.4byte	0x1919
	.uleb128 0xa
	.byte	0x1c
	.byte	0x10
	.byte	0x43
	.4byte	0x196e
	.uleb128 0xb
	.4byte	.LASF328
	.byte	0x10
	.byte	0x45
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF330
	.byte	0x10
	.byte	0x46
	.4byte	0x196e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF331
	.byte	0x10
	.byte	0x47
	.4byte	0x196e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x197e
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF332
	.byte	0x10
	.byte	0x48
	.4byte	0x193b
	.uleb128 0xd
	.4byte	.LASF333
	.byte	0x14
	.byte	0x10
	.byte	0x52
	.4byte	0x19dc
	.uleb128 0xb
	.4byte	.LASF334
	.byte	0x10
	.byte	0x54
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF335
	.byte	0x10
	.byte	0x55
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF210
	.byte	0x10
	.byte	0x56
	.4byte	0x949
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF336
	.byte	0x10
	.byte	0x57
	.4byte	0x949
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0xe
	.string	"pad"
	.byte	0x10
	.byte	0x58
	.4byte	0x19dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x19ec
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF337
	.byte	0x10
	.byte	0x59
	.4byte	0x1989
	.uleb128 0xd
	.4byte	.LASF338
	.byte	0x48
	.byte	0x10
	.byte	0x5b
	.4byte	0x1aac
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x10
	.byte	0x5d
	.4byte	0xa07
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF339
	.byte	0x10
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF340
	.byte	0x10
	.byte	0x5e
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF341
	.byte	0x10
	.byte	0x5f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF342
	.byte	0x10
	.byte	0x60
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF343
	.byte	0x10
	.byte	0x61
	.4byte	0x1bd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF344
	.byte	0x10
	.byte	0x62
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF345
	.byte	0x10
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF346
	.byte	0x10
	.byte	0x63
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF347
	.byte	0x10
	.byte	0x64
	.4byte	0x1bd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF348
	.byte	0x10
	.byte	0x65
	.4byte	0x1bd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF349
	.byte	0x10
	.byte	0x66
	.4byte	0xa17
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.byte	0
	.uleb128 0xd
	.4byte	.LASF350
	.byte	0x5c
	.byte	0x10
	.byte	0x96
	.4byte	0x1bd1
	.uleb128 0xb
	.4byte	.LASF167
	.byte	0x10
	.byte	0x98
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF247
	.byte	0x10
	.byte	0x9a
	.4byte	0x1cee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF213
	.byte	0x10
	.byte	0x9b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF351
	.byte	0x10
	.byte	0x9d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF227
	.byte	0x10
	.byte	0x9e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF352
	.byte	0x10
	.byte	0xa0
	.4byte	0xa27
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF353
	.byte	0x10
	.byte	0xa1
	.4byte	0xa27
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF354
	.byte	0x10
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF355
	.byte	0x10
	.byte	0xa3
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF356
	.byte	0x10
	.byte	0xa5
	.4byte	0x1cf4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF343
	.byte	0x10
	.byte	0xa6
	.4byte	0x1bd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF357
	.byte	0x10
	.byte	0xa7
	.4byte	0x1bd1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF232
	.byte	0x10
	.byte	0xa9
	.4byte	0x1cfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF188
	.byte	0x10
	.byte	0xac
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF189
	.byte	0x10
	.byte	0xad
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF358
	.byte	0x10
	.byte	0xaf
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF359
	.byte	0x10
	.byte	0xb0
	.4byte	0xa8d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF360
	.byte	0x10
	.byte	0xb1
	.4byte	0x9ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF361
	.byte	0x10
	.byte	0xb2
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF362
	.byte	0x10
	.byte	0xb3
	.4byte	0x96b
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1aac
	.uleb128 0xf
	.byte	0x4
	.4byte	0x19f7
	.uleb128 0x4
	.4byte	.LASF363
	.byte	0x10
	.byte	0x67
	.4byte	0x19f7
	.uleb128 0xa
	.byte	0x8
	.byte	0x10
	.byte	0x78
	.4byte	0x1c0b
	.uleb128 0xe
	.string	"v"
	.byte	0x10
	.byte	0x7a
	.4byte	0xa7d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF364
	.byte	0x10
	.byte	0x7b
	.4byte	0x48
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF365
	.byte	0x10
	.byte	0x7c
	.4byte	0x1be8
	.uleb128 0xa
	.byte	0x2c
	.byte	0x10
	.byte	0x7e
	.4byte	0x1c57
	.uleb128 0xb
	.4byte	.LASF366
	.byte	0x10
	.byte	0x80
	.4byte	0xa67
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF367
	.byte	0x10
	.byte	0x81
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF330
	.byte	0x10
	.byte	0x82
	.4byte	0x1c57
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF213
	.byte	0x10
	.byte	0x83
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1bdd
	.uleb128 0x4
	.4byte	.LASF368
	.byte	0x10
	.byte	0x84
	.4byte	0x1c16
	.uleb128 0xd
	.4byte	.LASF369
	.byte	0x1c
	.byte	0x10
	.byte	0x8a
	.4byte	0x1cd7
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x10
	.byte	0x8c
	.4byte	0x1cd7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF370
	.byte	0x10
	.byte	0x8d
	.4byte	0x1cd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF371
	.byte	0x10
	.byte	0x8e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF213
	.byte	0x10
	.byte	0x8f
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF187
	.byte	0x10
	.byte	0x90
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF372
	.byte	0x10
	.byte	0x92
	.4byte	0x1cdd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF373
	.byte	0x10
	.byte	0x93
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1c68
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1cd7
	.uleb128 0x4
	.4byte	.LASF374
	.byte	0x10
	.byte	0x94
	.4byte	0x1c68
	.uleb128 0xf
	.byte	0x4
	.4byte	0x19ec
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1ce3
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1c5d
	.uleb128 0x4
	.4byte	.LASF375
	.byte	0x10
	.byte	0xb4
	.4byte	0x1aac
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x1d1b
	.uleb128 0x9
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0x1355
	.4byte	0x1d2b
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF376
	.byte	0x10
	.byte	0xc6
	.4byte	0x12d8
	.uleb128 0xf
	.byte	0x4
	.4byte	0xffd
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1d42
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1d00
	.uleb128 0x4
	.4byte	.LASF377
	.byte	0x10
	.byte	0xdd
	.4byte	0xcd6
	.uleb128 0xa
	.byte	0x28
	.byte	0x10
	.byte	0xe0
	.4byte	0x1db0
	.uleb128 0xb
	.4byte	.LASF238
	.byte	0x10
	.byte	0xe2
	.4byte	0x1db0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF223
	.byte	0x10
	.byte	0xe3
	.4byte	0x1cee
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF378
	.byte	0x10
	.byte	0xe4
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF379
	.byte	0x10
	.byte	0xe5
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF380
	.byte	0x10
	.byte	0xe6
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF381
	.byte	0x10
	.byte	0xe7
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xa5c
	.uleb128 0x4
	.4byte	.LASF382
	.byte	0x10
	.byte	0xe8
	.4byte	0x1d53
	.uleb128 0xf
	.byte	0x4
	.4byte	0x929
	.uleb128 0x18
	.byte	0x28
	.byte	0x10
	.2byte	0x11e
	.4byte	0x1e3a
	.uleb128 0x15
	.4byte	.LASF383
	.byte	0x10
	.2byte	0x120
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF384
	.byte	0x10
	.2byte	0x121
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF385
	.byte	0x10
	.2byte	0x122
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF386
	.byte	0x10
	.2byte	0x123
	.4byte	0x190e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF387
	.byte	0x10
	.2byte	0x124
	.4byte	0x190e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF140
	.byte	0x10
	.2byte	0x125
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF151
	.byte	0x10
	.2byte	0x126
	.4byte	0xa07
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x5
	.4byte	.LASF388
	.byte	0x10
	.2byte	0x127
	.4byte	0x1dc7
	.uleb128 0x22
	.2byte	0x53c
	.byte	0x10
	.2byte	0x142
	.4byte	0x202b
	.uleb128 0x15
	.4byte	.LASF389
	.byte	0x10
	.2byte	0x143
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF390
	.byte	0x10
	.2byte	0x144
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF391
	.byte	0x10
	.2byte	0x145
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF392
	.byte	0x10
	.2byte	0x146
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x15
	.4byte	.LASF393
	.byte	0x10
	.2byte	0x147
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x15
	.4byte	.LASF394
	.byte	0x10
	.2byte	0x148
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF395
	.byte	0x10
	.2byte	0x149
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x15
	.4byte	.LASF396
	.byte	0x10
	.2byte	0x14a
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF397
	.byte	0x10
	.2byte	0x14b
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF371
	.byte	0x10
	.2byte	0x14c
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF398
	.byte	0x10
	.2byte	0x14d
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF211
	.byte	0x10
	.2byte	0x14e
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF212
	.byte	0x10
	.2byte	0x14f
	.4byte	0x18d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x15
	.4byte	.LASF213
	.byte	0x10
	.2byte	0x150
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x15
	.4byte	.LASF399
	.byte	0x10
	.2byte	0x151
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF122
	.byte	0x10
	.2byte	0x153
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x15
	.4byte	.LASF123
	.byte	0x10
	.2byte	0x153
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF384
	.byte	0x10
	.2byte	0x154
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x15
	.4byte	.LASF400
	.byte	0x10
	.2byte	0x155
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x15
	.4byte	.LASF401
	.byte	0x10
	.2byte	0x156
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x15
	.4byte	.LASF402
	.byte	0x10
	.2byte	0x157
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x15
	.4byte	.LASF403
	.byte	0x10
	.2byte	0x158
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x15
	.4byte	.LASF223
	.byte	0x10
	.2byte	0x159
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x15
	.4byte	.LASF262
	.byte	0x10
	.2byte	0x15a
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x15
	.4byte	.LASF404
	.byte	0x10
	.2byte	0x15b
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x15
	.4byte	.LASF405
	.byte	0x10
	.2byte	0x15c
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x15
	.4byte	.LASF406
	.byte	0x10
	.2byte	0x15d
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x15
	.4byte	.LASF341
	.byte	0x10
	.2byte	0x15e
	.4byte	0x202b
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x15
	.4byte	.LASF407
	.byte	0x10
	.2byte	0x15f
	.4byte	0x202b
	.byte	0x3
	.byte	0x23
	.uleb128 0x294
	.uleb128 0x15
	.4byte	.LASF408
	.byte	0x10
	.2byte	0x160
	.4byte	0x1824
	.byte	0x3
	.byte	0x23
	.uleb128 0x494
	.uleb128 0x15
	.4byte	.LASF409
	.byte	0x10
	.2byte	0x161
	.4byte	0x2041
	.byte	0x3
	.byte	0x23
	.uleb128 0x514
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x2041
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1f
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x1e3a
	.4byte	0x2051
	.uleb128 0x9
	.4byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF410
	.byte	0x10
	.2byte	0x162
	.4byte	0x1e46
	.uleb128 0x23
	.byte	0x4
	.byte	0x10
	.2byte	0x172
	.4byte	0x207f
	.uleb128 0x21
	.4byte	.LASF411
	.sleb128 0
	.uleb128 0x21
	.4byte	.LASF412
	.sleb128 1
	.uleb128 0x21
	.4byte	.LASF413
	.sleb128 2
	.uleb128 0x21
	.4byte	.LASF414
	.sleb128 3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF415
	.byte	0x10
	.2byte	0x172
	.4byte	0x205d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x9fc
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1d48
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1930
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1c0b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1d2b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x41
	.uleb128 0x8
	.4byte	0x1db6
	.4byte	0x20bf
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1c57
	.uleb128 0x5
	.4byte	.LASF416
	.byte	0x10
	.2byte	0x1cb
	.4byte	0x101e
	.uleb128 0xa
	.byte	0x10
	.byte	0x14
	.byte	0x16
	.4byte	0x20f6
	.uleb128 0xb
	.4byte	.LASF334
	.byte	0x14
	.byte	0x18
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF335
	.byte	0x14
	.byte	0x19
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF417
	.byte	0x14
	.byte	0x1a
	.4byte	0x20d1
	.uleb128 0x4
	.4byte	.LASF418
	.byte	0x15
	.byte	0x93
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF419
	.byte	0x15
	.byte	0x9e
	.4byte	0x929
	.uleb128 0xf
	.byte	0x4
	.4byte	0x211d
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x2133
	.uleb128 0x13
	.4byte	0x2101
	.uleb128 0x13
	.4byte	0x210c
	.uleb128 0x13
	.4byte	0x210c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF420
	.byte	0x15
	.2byte	0x841
	.4byte	0x2117
	.uleb128 0x17
	.4byte	.LASF421
	.byte	0x14
	.byte	0x11
	.2byte	0x981
	.4byte	0x216b
	.uleb128 0x15
	.4byte	.LASF422
	.byte	0x11
	.2byte	0x983
	.4byte	0x9ec
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF156
	.byte	0x11
	.2byte	0x985
	.4byte	0x216b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x213f
	.uleb128 0x5
	.4byte	.LASF423
	.byte	0x11
	.2byte	0x987
	.4byte	0x213f
	.uleb128 0x24
	.4byte	.LASF467
	.byte	0x4
	.byte	0x11
	.2byte	0x98d
	.4byte	0x21bb
	.uleb128 0x1a
	.4byte	.LASF424
	.byte	0x11
	.2byte	0x98f
	.4byte	0x41
	.uleb128 0x1a
	.4byte	.LASF425
	.byte	0x11
	.2byte	0x991
	.4byte	0x929
	.uleb128 0x1a
	.4byte	.LASF426
	.byte	0x11
	.2byte	0x993
	.4byte	0xad3
	.uleb128 0x1a
	.4byte	.LASF427
	.byte	0x11
	.2byte	0x995
	.4byte	0xe9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF428
	.byte	0x11
	.2byte	0x997
	.4byte	0x217d
	.uleb128 0x14
	.4byte	.LASF429
	.2byte	0x890
	.byte	0x11
	.2byte	0x99d
	.4byte	0x237b
	.uleb128 0x15
	.4byte	.LASF124
	.byte	0x11
	.2byte	0x99f
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF430
	.byte	0x11
	.2byte	0x9a1
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF144
	.byte	0x11
	.2byte	0x9a1
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x15
	.4byte	.LASF214
	.byte	0x11
	.2byte	0x9a3
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x15
	.4byte	.LASF431
	.byte	0x11
	.2byte	0x9a7
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.4byte	.LASF432
	.byte	0x11
	.2byte	0x9a9
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x15
	.4byte	.LASF433
	.byte	0x11
	.2byte	0x9ab
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x15
	.4byte	.LASF434
	.byte	0x11
	.2byte	0x9ad
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x15
	.4byte	.LASF435
	.byte	0x11
	.2byte	0x9af
	.4byte	0x959
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x15
	.4byte	.LASF161
	.byte	0x11
	.2byte	0x9b1
	.4byte	0x2091
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x25
	.string	"vis"
	.byte	0x11
	.2byte	0x9b3
	.4byte	0x237b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF436
	.byte	0x11
	.2byte	0x9b5
	.4byte	0x237b
	.byte	0x3
	.byte	0x23
	.uleb128 0x434
	.uleb128 0x15
	.4byte	.LASF437
	.byte	0x11
	.2byte	0x9b7
	.4byte	0x1d3c
	.byte	0x3
	.byte	0x23
	.uleb128 0x834
	.uleb128 0x15
	.4byte	.LASF438
	.byte	0x11
	.2byte	0x9b9
	.4byte	0x20a9
	.byte	0x3
	.byte	0x23
	.uleb128 0x838
	.uleb128 0x15
	.4byte	.LASF439
	.byte	0x11
	.2byte	0x9bb
	.4byte	0x1dc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x83c
	.uleb128 0x15
	.4byte	.LASF440
	.byte	0x11
	.2byte	0x9bd
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x840
	.uleb128 0x15
	.4byte	.LASF441
	.byte	0x11
	.2byte	0x9bf
	.4byte	0x238c
	.byte	0x3
	.byte	0x23
	.uleb128 0x844
	.uleb128 0x15
	.4byte	.LASF442
	.byte	0x11
	.2byte	0x9c1
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x848
	.uleb128 0x15
	.4byte	.LASF146
	.byte	0x11
	.2byte	0x9c3
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x84c
	.uleb128 0x15
	.4byte	.LASF443
	.byte	0x11
	.2byte	0x9c5
	.4byte	0x157d
	.byte	0x3
	.byte	0x23
	.uleb128 0x850
	.uleb128 0x15
	.4byte	.LASF444
	.byte	0x11
	.2byte	0x9c7
	.4byte	0x2171
	.byte	0x3
	.byte	0x23
	.uleb128 0x854
	.uleb128 0x15
	.4byte	.LASF445
	.byte	0x11
	.2byte	0x9c9
	.4byte	0x41
	.byte	0x3
	.byte	0x23
	.uleb128 0x868
	.uleb128 0x15
	.4byte	.LASF138
	.byte	0x11
	.2byte	0x9cb
	.4byte	0xade
	.byte	0x3
	.byte	0x23
	.uleb128 0x86c
	.uleb128 0x15
	.4byte	.LASF446
	.byte	0x11
	.2byte	0x9cd
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x878
	.uleb128 0x15
	.4byte	.LASF447
	.byte	0x11
	.2byte	0x9cf
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x87c
	.uleb128 0x15
	.4byte	.LASF448
	.byte	0x11
	.2byte	0x9d1
	.4byte	0x929
	.byte	0x3
	.byte	0x23
	.uleb128 0x880
	.uleb128 0x15
	.4byte	.LASF449
	.byte	0x11
	.2byte	0x9d3
	.4byte	0xade
	.byte	0x3
	.byte	0x23
	.uleb128 0x884
	.byte	0
	.uleb128 0x8
	.4byte	0x949
	.4byte	0x238c
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3ff
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x21bb
	.uleb128 0x5
	.4byte	.LASF450
	.byte	0x11
	.2byte	0x9d5
	.4byte	0x21c7
	.uleb128 0x1e
	.4byte	.LASF451
	.4byte	0x1e864
	.byte	0x11
	.2byte	0x9db
	.4byte	0x24d8
	.uleb128 0x15
	.4byte	.LASF250
	.byte	0x11
	.2byte	0x9df
	.4byte	0x41
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF452
	.byte	0x11
	.2byte	0x9e1
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF453
	.byte	0x11
	.2byte	0x9e1
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF454
	.byte	0x11
	.2byte	0x9e1
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x15
	.4byte	.LASF455
	.byte	0x11
	.2byte	0x9e1
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x15
	.4byte	.LASF456
	.byte	0x11
	.2byte	0x9e3
	.4byte	0x929
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x15
	.4byte	.LASF256
	.byte	0x11
	.2byte	0x9e5
	.4byte	0x157d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x15
	.4byte	.LASF457
	.byte	0x11
	.2byte	0x9e7
	.4byte	0x24d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x15
	.4byte	.LASF458
	.byte	0x11
	.2byte	0x9e9
	.4byte	0x24de
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x15
	.4byte	.LASF459
	.byte	0x11
	.2byte	0x9eb
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x15
	.4byte	.LASF460
	.byte	0x11
	.2byte	0x9eb
	.4byte	0xade
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x15
	.4byte	.LASF461
	.byte	0x11
	.2byte	0x9ed
	.4byte	0xe9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x15
	.4byte	.LASF462
	.byte	0x11
	.2byte	0x9f3
	.4byte	0x24e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x15
	.4byte	.LASF463
	.byte	0x11
	.2byte	0x9f5
	.4byte	0x24e4
	.byte	0x4
	.byte	0x23
	.uleb128 0x6060
	.uleb128 0x15
	.4byte	.LASF464
	.byte	0x11
	.2byte	0x9f7
	.4byte	0x24e4
	.byte	0x4
	.byte	0x23
	.uleb128 0xc060
	.uleb128 0x15
	.4byte	.LASF274
	.byte	0x11
	.2byte	0x9f9
	.4byte	0x24e4
	.byte	0x4
	.byte	0x23
	.uleb128 0x12060
	.uleb128 0x15
	.4byte	.LASF465
	.byte	0x11
	.2byte	0x9fb
	.4byte	0x24fb
	.byte	0x4
	.byte	0x23
	.uleb128 0x18060
	.uleb128 0x15
	.4byte	.LASF406
	.byte	0x11
	.2byte	0x9ff
	.4byte	0x250c
	.byte	0x4
	.byte	0x23
	.uleb128 0x18860
	.uleb128 0x15
	.4byte	.LASF398
	.byte	0x11
	.2byte	0xa01
	.4byte	0x41
	.byte	0x4
	.byte	0x23
	.uleb128 0x1e860
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2051
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2392
	.uleb128 0x8
	.4byte	0xad3
	.4byte	0x24fb
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x959
	.4byte	0x250c
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x251d
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x17ff
	.byte	0
	.uleb128 0x5
	.4byte	.LASF466
	.byte	0x11
	.2byte	0xa05
	.4byte	0x239e
	.uleb128 0x8
	.4byte	0x20f6
	.4byte	0x253a
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x7ff
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x251d
	.uleb128 0x24
	.4byte	.LASF468
	.byte	0x4
	.byte	0x16
	.2byte	0x490
	.4byte	0x25a0
	.uleb128 0x26
	.string	"U8"
	.byte	0x16
	.2byte	0x492
	.4byte	0x25a0
	.uleb128 0x26
	.string	"S8"
	.byte	0x16
	.2byte	0x493
	.4byte	0x25a5
	.uleb128 0x26
	.string	"U16"
	.byte	0x16
	.2byte	0x494
	.4byte	0x25aa
	.uleb128 0x26
	.string	"S16"
	.byte	0x16
	.2byte	0x495
	.4byte	0x25af
	.uleb128 0x26
	.string	"U32"
	.byte	0x16
	.2byte	0x496
	.4byte	0x25b4
	.uleb128 0x26
	.string	"S32"
	.byte	0x16
	.2byte	0x497
	.4byte	0x25b9
	.uleb128 0x26
	.string	"F32"
	.byte	0x16
	.2byte	0x498
	.4byte	0x954
	.byte	0
	.uleb128 0x1c
	.4byte	0x2c
	.uleb128 0x1c
	.4byte	0x25
	.uleb128 0x1c
	.4byte	0x3a
	.uleb128 0x1c
	.4byte	0x33
	.uleb128 0x1c
	.4byte	0x48
	.uleb128 0x1c
	.4byte	0x41
	.uleb128 0x5
	.4byte	.LASF469
	.byte	0x16
	.2byte	0x499
	.4byte	0x2540
	.uleb128 0x17
	.4byte	.LASF470
	.byte	0x14
	.byte	0x1
	.2byte	0x272
	.4byte	0x268c
	.uleb128 0x15
	.4byte	.LASF471
	.byte	0x1
	.2byte	0x274
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x15
	.4byte	.LASF472
	.byte	0x1
	.2byte	0x274
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x15
	.4byte	.LASF473
	.byte	0x1
	.2byte	0x274
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x15
	.4byte	.LASF474
	.byte	0x1
	.2byte	0x275
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x15
	.4byte	.LASF475
	.byte	0x1
	.2byte	0x275
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x15
	.4byte	.LASF476
	.byte	0x1
	.2byte	0x276
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x15
	.4byte	.LASF477
	.byte	0x1
	.2byte	0x277
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x15
	.4byte	.LASF478
	.byte	0x1
	.2byte	0x277
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x15
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x277
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x15
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x277
	.4byte	0x3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x15
	.4byte	.LASF479
	.byte	0x1
	.2byte	0x278
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x15
	.4byte	.LASF480
	.byte	0x1
	.2byte	0x278
	.4byte	0x2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.byte	0
	.uleb128 0x5
	.4byte	.LASF481
	.byte	0x1
	.2byte	0x279
	.4byte	0x25ca
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF591
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.4byte	0x929
	.byte	0x1
	.4byte	0x26dc
	.uleb128 0x28
	.string	"x"
	.byte	0x1
	.byte	0xec
	.4byte	0x929
	.uleb128 0x28
	.string	"y"
	.byte	0x1
	.byte	0xec
	.4byte	0x929
	.uleb128 0x29
	.4byte	.LASF482
	.byte	0x1
	.byte	0xec
	.4byte	0x41
	.uleb128 0x2a
	.string	"ret"
	.byte	0x1
	.byte	0xee
	.4byte	0x929
	.uleb128 0x2a
	.string	"n"
	.byte	0x1
	.byte	0xef
	.4byte	0x41
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.4byte	.LASF484
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x2752
	.uleb128 0x2c
	.4byte	.LASF371
	.byte	0x1
	.byte	0x2c
	.4byte	0x41
	.byte	0x1
	.byte	0x53
	.uleb128 0x2d
	.4byte	.LASF483
	.byte	0x1
	.byte	0x2c
	.4byte	0x1dc1
	.4byte	.LLST0
	.uleb128 0x2c
	.4byte	.LASF122
	.byte	0x1
	.byte	0x2c
	.4byte	0x2752
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.4byte	.LASF123
	.byte	0x1
	.byte	0x2c
	.4byte	0x2752
	.byte	0x1
	.byte	0x56
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0x2e
	.4byte	0x41
	.4byte	.LLST1
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.byte	0x2e
	.4byte	0x41
	.4byte	.LLST2
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.byte	0x2f
	.4byte	0x1dc1
	.4byte	.LLST3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xad3
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF485
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LLST4
	.4byte	0x285f
	.uleb128 0x2d
	.4byte	.LASF371
	.byte	0x1
	.byte	0x3e
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0x2d
	.4byte	.LASF483
	.byte	0x1
	.byte	0x3e
	.4byte	0x1dc1
	.4byte	.LLST6
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0x40
	.4byte	0x41
	.4byte	.LLST7
	.uleb128 0x2e
	.string	"j"
	.byte	0x1
	.byte	0x40
	.4byte	0x41
	.4byte	.LLST8
	.uleb128 0x2a
	.string	"k"
	.byte	0x1
	.byte	0x40
	.4byte	0x41
	.uleb128 0x30
	.4byte	.LASF122
	.byte	0x1
	.byte	0x41
	.4byte	0xade
	.byte	0x3
	.byte	0x91
	.sleb128 -1884
	.uleb128 0x30
	.4byte	.LASF123
	.byte	0x1
	.byte	0x41
	.4byte	0xade
	.byte	0x3
	.byte	0x91
	.sleb128 -1896
	.uleb128 0x2e
	.string	"m"
	.byte	0x1
	.byte	0x42
	.4byte	0x929
	.4byte	.LLST9
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.byte	0x43
	.4byte	0x1dc1
	.4byte	.LLST10
	.uleb128 0x30
	.4byte	.LASF486
	.byte	0x1
	.byte	0x44
	.4byte	0x285f
	.byte	0x3
	.byte	0x91
	.sleb128 -848
	.uleb128 0x30
	.4byte	.LASF487
	.byte	0x1
	.byte	0x44
	.4byte	0x285f
	.byte	0x3
	.byte	0x91
	.sleb128 -1616
	.uleb128 0x2e
	.string	"f"
	.byte	0x1
	.byte	0x45
	.4byte	0x41
	.4byte	.LLST11
	.uleb128 0x2e
	.string	"b"
	.byte	0x1
	.byte	0x45
	.4byte	0x41
	.4byte	.LLST12
	.uleb128 0x30
	.4byte	.LASF335
	.byte	0x1
	.byte	0x46
	.4byte	0x2875
	.byte	0x3
	.byte	0x91
	.sleb128 -1872
	.uleb128 0x31
	.4byte	.LASF488
	.byte	0x1
	.byte	0x47
	.4byte	0x929
	.4byte	.LLST13
	.uleb128 0x31
	.4byte	.LASF489
	.byte	0x1
	.byte	0x48
	.4byte	0x1cf4
	.4byte	.LLST14
	.uleb128 0x32
	.string	"tex"
	.byte	0x1
	.byte	0x49
	.4byte	0x196e
	.byte	0x3
	.byte	0x91
	.sleb128 -1904
	.byte	0
	.uleb128 0x8
	.4byte	0xad3
	.4byte	0x2875
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3f
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x2885
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF490
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST15
	.4byte	0x28f6
	.uleb128 0x33
	.string	"fa"
	.byte	0x1
	.byte	0x9b
	.4byte	0x1d42
	.4byte	.LLST16
	.uleb128 0x30
	.4byte	.LASF483
	.byte	0x1
	.byte	0x9d
	.4byte	0x285f
	.byte	0x3
	.byte	0x91
	.sleb128 -768
	.uleb128 0x31
	.4byte	.LASF371
	.byte	0x1
	.byte	0x9e
	.4byte	0x41
	.4byte	.LLST17
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0x9f
	.4byte	0x41
	.4byte	.LLST17
	.uleb128 0x31
	.4byte	.LASF491
	.byte	0x1
	.byte	0xa0
	.4byte	0x41
	.4byte	.LLST19
	.uleb128 0x2e
	.string	"vec"
	.byte	0x1
	.byte	0xa1
	.4byte	0x1dc1
	.4byte	.LLST20
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF492
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST21
	.4byte	0x297b
	.uleb128 0x33
	.string	"fa"
	.byte	0x1
	.byte	0xca
	.4byte	0x1d42
	.4byte	.LLST22
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.byte	0xcc
	.4byte	0x1cf4
	.4byte	.LLST23
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.byte	0xcd
	.4byte	0x1dc1
	.4byte	.LLST24
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xce
	.4byte	0x41
	.4byte	.LLST25
	.uleb128 0x2e
	.string	"s"
	.byte	0x1
	.byte	0xcf
	.4byte	0x929
	.4byte	.LLST26
	.uleb128 0x2e
	.string	"t"
	.byte	0x1
	.byte	0xcf
	.4byte	0x929
	.4byte	.LLST27
	.uleb128 0x2e
	.string	"os"
	.byte	0x1
	.byte	0xcf
	.4byte	0x929
	.4byte	.LLST28
	.uleb128 0x2e
	.string	"ot"
	.byte	0x1
	.byte	0xcf
	.4byte	0x929
	.4byte	.LLST29
	.byte	0
	.uleb128 0x34
	.4byte	0x2698
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST30
	.4byte	0x29b8
	.uleb128 0x35
	.4byte	0x26aa
	.4byte	.LLST31
	.uleb128 0x35
	.4byte	0x26b3
	.4byte	.LLST32
	.uleb128 0x36
	.4byte	0x26bc
	.byte	0x1
	.byte	0x53
	.uleb128 0x37
	.4byte	0x26c7
	.uleb128 0x38
	.4byte	0x26d2
	.4byte	.LLST33
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.4byte	.LASF493
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LLST34
	.4byte	0x2ab5
	.uleb128 0x33
	.string	"fa"
	.byte	0x1
	.byte	0xf5
	.4byte	0x1d42
	.4byte	.LLST35
	.uleb128 0x2e
	.string	"p"
	.byte	0x1
	.byte	0xf7
	.4byte	0x1cf4
	.4byte	.LLST36
	.uleb128 0x2e
	.string	"v"
	.byte	0x1
	.byte	0xf8
	.4byte	0x1dc1
	.4byte	.LLST37
	.uleb128 0x2e
	.string	"i"
	.byte	0x1
	.byte	0xf9
	.4byte	0x41
	.4byte	.LLST38
	.uleb128 0x2a
	.string	"s"
	.byte	0x1
	.byte	0xfa
	.4byte	0x929
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.byte	0xfa
	.4byte	0x929
	.uleb128 0x2e
	.string	"os"
	.byte	0x1
	.byte	0xfa
	.4byte	0x929
	.4byte	.LLST39
	.uleb128 0x2e
	.string	"ot"
	.byte	0x1
	.byte	0xfa
	.4byte	0x929
	.4byte	.LLST40
	.uleb128 0x39
	.4byte	0x2698
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x106
	.4byte	0x2a78
	.uleb128 0x35
	.4byte	0x26bc
	.4byte	.LLST41
	.uleb128 0x35
	.4byte	0x26b3
	.4byte	.LLST40
	.uleb128 0x35
	.4byte	0x26aa
	.4byte	.LLST39
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0xa0
	.uleb128 0x37
	.4byte	0x26c7
	.uleb128 0x38
	.4byte	0x26d2
	.4byte	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x3b
	.4byte	0x2698
	.4byte	.LBB31
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x1
	.2byte	0x108
	.uleb128 0x35
	.4byte	0x26bc
	.4byte	.LLST45
	.uleb128 0x35
	.4byte	0x26b3
	.4byte	.LLST46
	.uleb128 0x35
	.4byte	0x26aa
	.4byte	.LLST47
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x1c0
	.uleb128 0x37
	.4byte	0x26c7
	.uleb128 0x37
	.4byte	0x26d2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF494
	.byte	0x1
	.2byte	0x112
	.byte	0x1
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LLST48
	.4byte	0x2b09
	.uleb128 0x3d
	.string	"fa"
	.byte	0x1
	.2byte	0x112
	.4byte	0x1d42
	.4byte	.LLST49
	.uleb128 0x3e
	.string	"p"
	.byte	0x1
	.2byte	0x114
	.4byte	0x1cf4
	.4byte	.LLST50
	.uleb128 0x3e
	.string	"v"
	.byte	0x1
	.2byte	0x115
	.4byte	0x1dc1
	.4byte	.LLST51
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x116
	.4byte	0x41
	.4byte	.LLST52
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF498
	.byte	0x1
	.2byte	0x12d
	.byte	0x1
	.4byte	0x959
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LLST53
	.4byte	0x2b38
	.uleb128 0x40
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x12d
	.4byte	0x5c7
	.4byte	.LLST54
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF495
	.byte	0x1
	.2byte	0x194
	.byte	0x1
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LLST55
	.4byte	0x2bc4
	.uleb128 0x3d
	.string	"fa"
	.byte	0x1
	.2byte	0x194
	.4byte	0x1d42
	.4byte	.LLST56
	.uleb128 0x3e
	.string	"p"
	.byte	0x1
	.2byte	0x196
	.4byte	0x1cf4
	.4byte	.LLST57
	.uleb128 0x3e
	.string	"v"
	.byte	0x1
	.2byte	0x197
	.4byte	0x1dc1
	.4byte	.LLST58
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x198
	.4byte	0x41
	.4byte	.LLST59
	.uleb128 0x41
	.string	"s"
	.byte	0x1
	.2byte	0x199
	.4byte	0x929
	.uleb128 0x3e
	.string	"t"
	.byte	0x1
	.2byte	0x199
	.4byte	0x929
	.4byte	.LLST60
	.uleb128 0x3e
	.string	"dir"
	.byte	0x1
	.2byte	0x19a
	.4byte	0xade
	.4byte	.LLST61
	.uleb128 0x42
	.4byte	.LASF496
	.byte	0x1
	.2byte	0x19b
	.4byte	0x929
	.4byte	.LLST62
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF497
	.byte	0x1
	.2byte	0x1bf
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LLST63
	.4byte	0x2bee
	.uleb128 0x3d
	.string	"fa"
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x1d42
	.4byte	.LLST64
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF499
	.byte	0x1
	.2byte	0x27f
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LLST65
	.4byte	0x2c39
	.uleb128 0x3d
	.string	"f"
	.byte	0x1
	.2byte	0x27f
	.4byte	0x1583
	.4byte	.LLST66
	.uleb128 0x3e
	.string	"b1"
	.byte	0x1
	.2byte	0x281
	.4byte	0x949
	.4byte	.LLST67
	.uleb128 0x3e
	.string	"b2"
	.byte	0x1
	.2byte	0x281
	.4byte	0x949
	.4byte	.LLST68
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF500
	.byte	0x1
	.2byte	0x289
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LLST69
	.4byte	0x2ca2
	.uleb128 0x3d
	.string	"f"
	.byte	0x1
	.2byte	0x289
	.4byte	0x1583
	.4byte	.LLST70
	.uleb128 0x3e
	.string	"b1"
	.byte	0x1
	.2byte	0x28b
	.4byte	0x949
	.4byte	.LLST71
	.uleb128 0x3e
	.string	"b2"
	.byte	0x1
	.2byte	0x28b
	.4byte	0x949
	.4byte	.LLST72
	.uleb128 0x3e
	.string	"b3"
	.byte	0x1
	.2byte	0x28b
	.4byte	0x949
	.4byte	.LLST73
	.uleb128 0x3e
	.string	"b4"
	.byte	0x1
	.2byte	0x28b
	.4byte	0x949
	.4byte	.LLST74
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF501
	.byte	0x1
	.2byte	0x378
	.byte	0x1
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LLST75
	.4byte	0x2e07
	.uleb128 0x3d
	.string	"fin"
	.byte	0x1
	.2byte	0x378
	.4byte	0x1583
	.4byte	.LLST76
	.uleb128 0x42
	.4byte	.LASF502
	.byte	0x1
	.2byte	0x37a
	.4byte	0x41
	.4byte	.LLST77
	.uleb128 0x42
	.4byte	.LASF503
	.byte	0x1
	.2byte	0x37a
	.4byte	0x41
	.4byte	.LLST78
	.uleb128 0x42
	.4byte	.LASF504
	.byte	0x1
	.2byte	0x37a
	.4byte	0x41
	.4byte	.LLST79
	.uleb128 0x42
	.4byte	.LASF505
	.byte	0x1
	.2byte	0x37b
	.4byte	0x96b
	.4byte	.LLST80
	.uleb128 0x3e
	.string	"row"
	.byte	0x1
	.2byte	0x37c
	.4byte	0x41
	.4byte	.LLST81
	.uleb128 0x42
	.4byte	.LASF506
	.byte	0x1
	.2byte	0x37c
	.4byte	0x41
	.4byte	.LLST82
	.uleb128 0x42
	.4byte	.LASF507
	.byte	0x1
	.2byte	0x37d
	.4byte	0x41
	.4byte	.LLST83
	.uleb128 0x43
	.4byte	.LASF518
	.byte	0x1
	.2byte	0x412
	.4byte	.L163
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x240
	.4byte	0x2dc0
	.uleb128 0x3e
	.string	"red"
	.byte	0x1
	.2byte	0x3c8
	.4byte	0x2c
	.4byte	.LLST84
	.uleb128 0x42
	.4byte	.LASF508
	.byte	0x1
	.2byte	0x3c8
	.4byte	0x2c
	.4byte	.LLST85
	.uleb128 0x42
	.4byte	.LASF509
	.byte	0x1
	.2byte	0x3c8
	.4byte	0x2c
	.4byte	.LLST86
	.uleb128 0x42
	.4byte	.LASF510
	.byte	0x1
	.2byte	0x3c8
	.4byte	0x2c
	.4byte	.LLST87
	.uleb128 0x42
	.4byte	.LASF511
	.byte	0x1
	.2byte	0x3c8
	.4byte	0x2c
	.4byte	.LLST88
	.uleb128 0x42
	.4byte	.LASF512
	.byte	0x1
	.2byte	0x3c8
	.4byte	0x2c
	.4byte	.LLST89
	.uleb128 0x3e
	.string	"j"
	.byte	0x1
	.2byte	0x3c8
	.4byte	0x2c
	.4byte	.LLST90
	.byte	0
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x258
	.uleb128 0x3e
	.string	"red"
	.byte	0x1
	.2byte	0x3ad
	.4byte	0x2c
	.4byte	.LLST91
	.uleb128 0x42
	.4byte	.LASF508
	.byte	0x1
	.2byte	0x3ad
	.4byte	0x2c
	.4byte	.LLST92
	.uleb128 0x42
	.4byte	.LASF509
	.byte	0x1
	.2byte	0x3ad
	.4byte	0x2c
	.4byte	.LLST93
	.uleb128 0x42
	.4byte	.LASF510
	.byte	0x1
	.2byte	0x3ad
	.4byte	0x2c
	.4byte	.LLST94
	.byte	0
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF513
	.byte	0x1
	.2byte	0x298
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LLST95
	.4byte	0x2e63
	.uleb128 0x40
	.4byte	.LASF514
	.byte	0x1
	.2byte	0x298
	.4byte	0x5c7
	.4byte	.LLST96
	.uleb128 0x40
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x298
	.4byte	0x41
	.4byte	.LLST97
	.uleb128 0x45
	.string	"f"
	.byte	0x1
	.2byte	0x29a
	.4byte	0x1583
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3e
	.string	"tmp"
	.byte	0x1
	.2byte	0x29b
	.4byte	0x5c7
	.4byte	.LLST98
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF515
	.byte	0x1
	.2byte	0x421
	.byte	0x1
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LLST99
	.4byte	0x3022
	.uleb128 0x3d
	.string	"fin"
	.byte	0x1
	.2byte	0x421
	.4byte	0x1583
	.4byte	.LLST100
	.uleb128 0x40
	.4byte	.LASF516
	.byte	0x1
	.2byte	0x421
	.4byte	0x96b
	.4byte	.LLST101
	.uleb128 0x40
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x421
	.4byte	0x20a9
	.4byte	.LLST102
	.uleb128 0x40
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x421
	.4byte	0x20a9
	.4byte	.LLST103
	.uleb128 0x40
	.4byte	.LASF517
	.byte	0x1
	.2byte	0x421
	.4byte	0x5c7
	.4byte	.LLST104
	.uleb128 0x42
	.4byte	.LASF502
	.byte	0x1
	.2byte	0x423
	.4byte	0x41
	.4byte	.LLST105
	.uleb128 0x42
	.4byte	.LASF503
	.byte	0x1
	.2byte	0x423
	.4byte	0x41
	.4byte	.LLST106
	.uleb128 0x42
	.4byte	.LASF504
	.byte	0x1
	.2byte	0x423
	.4byte	0x41
	.4byte	.LLST107
	.uleb128 0x42
	.4byte	.LASF505
	.byte	0x1
	.2byte	0x424
	.4byte	0x96b
	.4byte	.LLST108
	.uleb128 0x3e
	.string	"row"
	.byte	0x1
	.2byte	0x425
	.4byte	0x41
	.4byte	.LLST109
	.uleb128 0x42
	.4byte	.LASF506
	.byte	0x1
	.2byte	0x425
	.4byte	0x41
	.4byte	.LLST110
	.uleb128 0x42
	.4byte	.LASF507
	.byte	0x1
	.2byte	0x426
	.4byte	0x41
	.4byte	.LLST111
	.uleb128 0x43
	.4byte	.LASF518
	.byte	0x1
	.2byte	0x4ca
	.4byte	.L287
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x290
	.4byte	0x2fc1
	.uleb128 0x3e
	.string	"red"
	.byte	0x1
	.2byte	0x480
	.4byte	0x2c
	.4byte	.LLST112
	.uleb128 0x42
	.4byte	.LASF508
	.byte	0x1
	.2byte	0x480
	.4byte	0x2c
	.4byte	.LLST113
	.uleb128 0x42
	.4byte	.LASF509
	.byte	0x1
	.2byte	0x480
	.4byte	0x2c
	.4byte	.LLST114
	.uleb128 0x42
	.4byte	.LASF510
	.byte	0x1
	.2byte	0x480
	.4byte	0x2c
	.4byte	.LLST115
	.uleb128 0x42
	.4byte	.LASF511
	.byte	0x1
	.2byte	0x480
	.4byte	0x2c
	.4byte	.LLST116
	.uleb128 0x42
	.4byte	.LASF512
	.byte	0x1
	.2byte	0x480
	.4byte	0x2c
	.4byte	.LLST117
	.uleb128 0x3e
	.string	"j"
	.byte	0x1
	.2byte	0x480
	.4byte	0x2c
	.4byte	.LLST118
	.byte	0
	.uleb128 0x44
	.4byte	.Ldebug_ranges0+0x2a8
	.4byte	0x300b
	.uleb128 0x3e
	.string	"red"
	.byte	0x1
	.2byte	0x465
	.4byte	0x2c
	.4byte	.LLST119
	.uleb128 0x42
	.4byte	.LASF508
	.byte	0x1
	.2byte	0x465
	.4byte	0x2c
	.4byte	.LLST120
	.uleb128 0x42
	.4byte	.LASF509
	.byte	0x1
	.2byte	0x465
	.4byte	0x2c
	.4byte	.LLST121
	.uleb128 0x42
	.4byte	.LASF510
	.byte	0x1
	.2byte	0x465
	.4byte	0x2c
	.4byte	.LLST122
	.byte	0
	.uleb128 0x3a
	.4byte	.Ldebug_ranges0+0x2e0
	.uleb128 0x42
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x45c
	.4byte	0x2c
	.4byte	.LLST123
	.byte	0
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF519
	.byte	0x1
	.2byte	0x4ec
	.byte	0x1
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LLST124
	.4byte	0x30fd
	.uleb128 0x3d
	.string	"fin"
	.byte	0x1
	.2byte	0x4ec
	.4byte	0x1583
	.4byte	.LLST125
	.uleb128 0x40
	.4byte	.LASF516
	.byte	0x1
	.2byte	0x4ec
	.4byte	0x96b
	.4byte	.LLST126
	.uleb128 0x40
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x4ec
	.4byte	0x20a9
	.4byte	.LLST127
	.uleb128 0x40
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x4ec
	.4byte	0x20a9
	.4byte	.LLST128
	.uleb128 0x40
	.4byte	.LASF517
	.byte	0x1
	.2byte	0x4ec
	.4byte	0x5c7
	.4byte	.LLST129
	.uleb128 0x42
	.4byte	.LASF502
	.byte	0x1
	.2byte	0x4ee
	.4byte	0x41
	.4byte	.LLST130
	.uleb128 0x42
	.4byte	.LASF503
	.byte	0x1
	.2byte	0x4ee
	.4byte	0x41
	.4byte	.LLST131
	.uleb128 0x42
	.4byte	.LASF504
	.byte	0x1
	.2byte	0x4ee
	.4byte	0x41
	.4byte	.LLST132
	.uleb128 0x3e
	.string	"row"
	.byte	0x1
	.2byte	0x4ef
	.4byte	0x41
	.4byte	.LLST133
	.uleb128 0x42
	.4byte	.LASF506
	.byte	0x1
	.2byte	0x4ef
	.4byte	0x41
	.4byte	.LLST134
	.uleb128 0x42
	.4byte	.LASF505
	.byte	0x1
	.2byte	0x4f0
	.4byte	0x96b
	.4byte	.LLST135
	.uleb128 0x42
	.4byte	.LASF507
	.byte	0x1
	.2byte	0x4f1
	.4byte	0x41
	.4byte	.LLST136
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF520
	.byte	0x1
	.2byte	0x306
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LLST137
	.4byte	0x3189
	.uleb128 0x40
	.4byte	.LASF514
	.byte	0x1
	.2byte	0x306
	.4byte	0x5c7
	.4byte	.LLST138
	.uleb128 0x40
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x306
	.4byte	0x41
	.4byte	.LLST139
	.uleb128 0x3d
	.string	"mem"
	.byte	0x1
	.2byte	0x306
	.4byte	0x96b
	.4byte	.LLST140
	.uleb128 0x40
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x306
	.4byte	0x20a9
	.4byte	.LLST141
	.uleb128 0x40
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x306
	.4byte	0x20a9
	.4byte	.LLST142
	.uleb128 0x45
	.string	"f"
	.byte	0x1
	.2byte	0x308
	.4byte	0x1583
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3e
	.string	"tmp"
	.byte	0x1
	.2byte	0x309
	.4byte	0x5c7
	.4byte	.LLST143
	.byte	0
	.uleb128 0x3f
	.byte	0x1
	.4byte	.LASF521
	.byte	0x1
	.2byte	0x532
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LLST144
	.4byte	0x3216
	.uleb128 0x40
	.4byte	.LASF514
	.byte	0x1
	.2byte	0x532
	.4byte	0x5c7
	.4byte	.LLST145
	.uleb128 0x3e
	.string	"f"
	.byte	0x1
	.2byte	0x534
	.4byte	0x1583
	.4byte	.LLST146
	.uleb128 0x42
	.4byte	.LASF522
	.byte	0x1
	.2byte	0x535
	.4byte	0x41
	.4byte	.LLST147
	.uleb128 0x42
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x536
	.4byte	0xf6
	.4byte	.LLST148
	.uleb128 0x42
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x536
	.4byte	0xf6
	.4byte	.LLST149
	.uleb128 0x3e
	.string	"tmp"
	.byte	0x1
	.2byte	0x537
	.4byte	0x5c7
	.4byte	.LLST150
	.uleb128 0x3e
	.string	"mem"
	.byte	0x1
	.2byte	0x538
	.4byte	0x2e4
	.4byte	.LLST151
	.byte	0
	.uleb128 0x46
	.byte	0x1
	.4byte	.LASF592
	.byte	0x1
	.2byte	0x186
	.byte	0x1
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LLST152
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF523
	.byte	0x1
	.2byte	0x5b6
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LLST153
	.4byte	0x3265
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x5b8
	.4byte	0x41
	.4byte	.LLST154
	.uleb128 0x47
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x5b9
	.4byte	0xc48
	.byte	0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF524
	.byte	0x1
	.2byte	0x60d
	.byte	0x1
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LLST155
	.4byte	0x331d
	.uleb128 0x48
	.4byte	.LASF525
	.byte	0x1
	.2byte	0x60d
	.4byte	0x41
	.byte	0x1
	.byte	0x53
	.uleb128 0x40
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x60d
	.4byte	0x2752
	.4byte	.LLST156
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x60f
	.4byte	0x41
	.4byte	.LLST157
	.uleb128 0x41
	.string	"j"
	.byte	0x1
	.2byte	0x60f
	.4byte	0x41
	.uleb128 0x3e
	.string	"v"
	.byte	0x1
	.2byte	0x610
	.4byte	0xade
	.4byte	.LLST158
	.uleb128 0x3e
	.string	"av"
	.byte	0x1
	.2byte	0x610
	.4byte	0xade
	.4byte	.LLST159
	.uleb128 0x3e
	.string	"s"
	.byte	0x1
	.2byte	0x611
	.4byte	0x929
	.4byte	.LLST160
	.uleb128 0x3e
	.string	"t"
	.byte	0x1
	.2byte	0x611
	.4byte	0x929
	.4byte	.LLST161
	.uleb128 0x3e
	.string	"dv"
	.byte	0x1
	.2byte	0x611
	.4byte	0x929
	.4byte	.LLST162
	.uleb128 0x42
	.4byte	.LASF526
	.byte	0x1
	.2byte	0x612
	.4byte	0x41
	.4byte	.LLST163
	.uleb128 0x3e
	.string	"vp"
	.byte	0x1
	.2byte	0x613
	.4byte	0x1dc1
	.4byte	.LLST164
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF527
	.byte	0x1
	.2byte	0x65f
	.byte	0x1
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LLST165
	.4byte	0x341a
	.uleb128 0x40
	.4byte	.LASF525
	.byte	0x1
	.2byte	0x65f
	.4byte	0x41
	.4byte	.LLST166
	.uleb128 0x40
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x65f
	.4byte	0x2752
	.4byte	.LLST167
	.uleb128 0x40
	.4byte	.LASF528
	.byte	0x1
	.2byte	0x65f
	.4byte	0x41
	.4byte	.LLST168
	.uleb128 0x42
	.4byte	.LASF529
	.byte	0x1
	.2byte	0x661
	.4byte	0x1dc1
	.4byte	.LLST169
	.uleb128 0x3e
	.string	"v"
	.byte	0x1
	.2byte	0x662
	.4byte	0x1dc1
	.4byte	.LLST170
	.uleb128 0x42
	.4byte	.LASF486
	.byte	0x1
	.2byte	0x663
	.4byte	0x959
	.4byte	.LLST171
	.uleb128 0x42
	.4byte	.LASF487
	.byte	0x1
	.2byte	0x663
	.4byte	0x959
	.4byte	.LLST172
	.uleb128 0x3e
	.string	"d"
	.byte	0x1
	.2byte	0x664
	.4byte	0x929
	.4byte	.LLST173
	.uleb128 0x3e
	.string	"e"
	.byte	0x1
	.2byte	0x664
	.4byte	0x929
	.4byte	.LLST174
	.uleb128 0x47
	.4byte	.LASF530
	.byte	0x1
	.2byte	0x665
	.4byte	0x2875
	.byte	0x3
	.byte	0x91
	.sleb128 -1824
	.uleb128 0x47
	.4byte	.LASF531
	.byte	0x1
	.2byte	0x666
	.4byte	0x341a
	.byte	0x3
	.byte	0x91
	.sleb128 -2080
	.uleb128 0x47
	.4byte	.LASF532
	.byte	0x1
	.2byte	0x667
	.4byte	0x342a
	.byte	0x3
	.byte	0x91
	.sleb128 -1568
	.uleb128 0x42
	.4byte	.LASF533
	.byte	0x1
	.2byte	0x668
	.4byte	0x18ab
	.4byte	.LLST175
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x669
	.4byte	0x41
	.4byte	.LLST176
	.uleb128 0x41
	.string	"j"
	.byte	0x1
	.2byte	0x669
	.4byte	0x41
	.byte	0
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x342a
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3f
	.byte	0
	.uleb128 0x8
	.4byte	0xad3
	.4byte	0x3446
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x3f
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF534
	.byte	0x1
	.2byte	0x6bf
	.byte	0x1
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LLST177
	.4byte	0x34b4
	.uleb128 0x3d
	.string	"s"
	.byte	0x1
	.2byte	0x6bf
	.4byte	0x1d42
	.4byte	.LLST178
	.uleb128 0x3e
	.string	"fa"
	.byte	0x1
	.2byte	0x6c1
	.4byte	0x1d42
	.4byte	.LLST179
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x6c3
	.4byte	0x41
	.4byte	.LLST180
	.uleb128 0x49
	.4byte	.LASF483
	.byte	0x1
	.2byte	0x6c4
	.4byte	0x285f
	.uleb128 0x3e
	.string	"p"
	.byte	0x1
	.2byte	0x6c5
	.4byte	0x1cf4
	.4byte	.LLST181
	.uleb128 0x3e
	.string	"v"
	.byte	0x1
	.2byte	0x6c6
	.4byte	0x1dc1
	.4byte	.LLST182
	.byte	0
	.uleb128 0x4a
	.byte	0x1
	.4byte	.LASF535
	.byte	0x1
	.2byte	0x6e3
	.byte	0x1
	.4byte	.LFB61
	.4byte	.LFE61
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x34dc
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x6e5
	.4byte	0x41
	.4byte	.LLST183
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF536
	.byte	0x1
	.2byte	0x6ef
	.byte	0x1
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LLST184
	.4byte	0x3559
	.uleb128 0x3d
	.string	"s"
	.byte	0x1
	.2byte	0x6ef
	.4byte	0x929
	.4byte	.LLST185
	.uleb128 0x3d
	.string	"t"
	.byte	0x1
	.2byte	0x6ef
	.4byte	0x929
	.4byte	.LLST186
	.uleb128 0x40
	.4byte	.LASF526
	.byte	0x1
	.2byte	0x6ef
	.4byte	0x41
	.4byte	.LLST187
	.uleb128 0x45
	.string	"v"
	.byte	0x1
	.2byte	0x6f1
	.4byte	0xade
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x45
	.string	"b"
	.byte	0x1
	.2byte	0x6f1
	.4byte	0xade
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3e
	.string	"j"
	.byte	0x1
	.2byte	0x6f2
	.4byte	0x41
	.4byte	.LLST188
	.uleb128 0x3e
	.string	"k"
	.byte	0x1
	.2byte	0x6f2
	.4byte	0x41
	.4byte	.LLST189
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF537
	.byte	0x1
	.2byte	0x71a
	.byte	0x1
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LLST190
	.4byte	0x3582
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x71c
	.4byte	0x41
	.4byte	.LLST191
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.4byte	.LASF538
	.byte	0x1
	.2byte	0x78b
	.byte	0x1
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LLST192
	.4byte	0x3642
	.uleb128 0x3d
	.string	"mt"
	.byte	0x1
	.2byte	0x78b
	.4byte	0x1c57
	.4byte	.LLST193
	.uleb128 0x3e
	.string	"i"
	.byte	0x1
	.2byte	0x78d
	.4byte	0x41
	.4byte	.LLST194
	.uleb128 0x3e
	.string	"j"
	.byte	0x1
	.2byte	0x78d
	.4byte	0x41
	.4byte	.LLST195
	.uleb128 0x3e
	.string	"p"
	.byte	0x1
	.2byte	0x78d
	.4byte	0x41
	.4byte	.LLST196
	.uleb128 0x3e
	.string	"src"
	.byte	0x1
	.2byte	0x78e
	.4byte	0x96b
	.4byte	.LLST197
	.uleb128 0x47
	.4byte	.LASF539
	.byte	0x1
	.2byte	0x78f
	.4byte	0x3642
	.byte	0x4
	.byte	0x91
	.sleb128 -65572
	.uleb128 0x47
	.4byte	.LASF540
	.byte	0x1
	.2byte	0x790
	.4byte	0x48
	.byte	0x4
	.byte	0x91
	.sleb128 -65576
	.uleb128 0x3e
	.string	"r"
	.byte	0x1
	.2byte	0x791
	.4byte	0x41
	.4byte	.LLST198
	.uleb128 0x3e
	.string	"g"
	.byte	0x1
	.2byte	0x791
	.4byte	0x41
	.4byte	.LLST199
	.uleb128 0x3e
	.string	"b"
	.byte	0x1
	.2byte	0x791
	.4byte	0x41
	.4byte	.LLST200
	.uleb128 0x42
	.4byte	.LASF541
	.byte	0x1
	.2byte	0x792
	.4byte	0x3653
	.4byte	.LLST201
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x3653
	.uleb128 0x1d
	.4byte	0x48
	.2byte	0x3fff
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x48
	.uleb128 0x47
	.4byte	.LASF542
	.byte	0x1
	.2byte	0x295
	.4byte	0xa9d
	.byte	0x5
	.byte	0x3
	.4byte	argh
	.uleb128 0x4b
	.4byte	.LASF543
	.byte	0x6
	.2byte	0x332
	.4byte	0x463
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x3689
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF544
	.byte	0x17
	.byte	0x3a
	.4byte	0x3679
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.4byte	.LASF545
	.byte	0xb
	.byte	0x28
	.4byte	0xade
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF546
	.byte	0x11
	.2byte	0x235
	.4byte	0xade
	.byte	0x1
	.byte	0x1
	.uleb128 0x4d
	.string	"cl"
	.byte	0x12
	.2byte	0x11b
	.4byte	0x18a0
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.4byte	.LASF547
	.byte	0x11
	.byte	0xb4
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x4e
	.4byte	.LASF548
	.byte	0x1
	.byte	0x1f
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	skytexturenum
	.uleb128 0x4b
	.4byte	.LASF549
	.byte	0x11
	.2byte	0x27b
	.4byte	0xc2c
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF550
	.byte	0x11
	.2byte	0x29f
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF551
	.byte	0x11
	.2byte	0x2a1
	.4byte	0x41
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF552
	.byte	0x11
	.2byte	0x2ab
	.4byte	0xc2c
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF553
	.byte	0x11
	.2byte	0x2ec
	.4byte	0xc2c
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF554
	.byte	0x11
	.2byte	0x300
	.4byte	0xc2c
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF555
	.byte	0x11
	.2byte	0x30c
	.4byte	0xc2c
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF556
	.byte	0x11
	.2byte	0x32c
	.4byte	0xaf9
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF557
	.byte	0x11
	.2byte	0x408
	.4byte	0x2133
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF558
	.byte	0x11
	.2byte	0x943
	.4byte	0x959
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF559
	.byte	0x11
	.2byte	0x96f
	.4byte	0x959
	.byte	0x1
	.byte	0x1
	.uleb128 0x4b
	.4byte	.LASF560
	.byte	0x11
	.2byte	0xa89
	.4byte	0x3785
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x197e
	.uleb128 0x4e
	.4byte	.LASF561
	.byte	0x1
	.byte	0x25
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	newenvmap
	.uleb128 0x4f
	.4byte	.LASF562
	.byte	0x11
	.2byte	0xc2c
	.4byte	0x1d42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	causticschain
	.uleb128 0x4f
	.4byte	.LASF563
	.byte	0x1
	.2byte	0x5ac
	.4byte	0xc48
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	skybox_name
	.uleb128 0x4f
	.4byte	.LASF564
	.byte	0x1
	.2byte	0x5ad
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	skybox_cloudspeed
	.uleb128 0x4f
	.4byte	.LASF565
	.byte	0x1
	.2byte	0x5ae
	.4byte	0x959
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	skybox_hasclouds
	.uleb128 0x4b
	.4byte	.LASF566
	.byte	0x16
	.2byte	0x548
	.4byte	0x37f7
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x37fc
	.uleb128 0xf
	.byte	0x4
	.4byte	0x25be
	.uleb128 0x4b
	.4byte	.LASF567
	.byte	0xc
	.2byte	0x150
	.4byte	0x922
	.byte	0x1
	.byte	0x1
	.uleb128 0x4c
	.4byte	.LASF568
	.byte	0x1
	.byte	0x1d
	.4byte	0x381d
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.byte	0x4
	.4byte	0x20c5
	.uleb128 0x4e
	.4byte	.LASF569
	.byte	0x1
	.byte	0x21
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	solidskytexture
	.uleb128 0x4e
	.4byte	.LASF570
	.byte	0x1
	.byte	0x22
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	alphaskytexture
	.uleb128 0x4e
	.4byte	.LASF571
	.byte	0x1
	.byte	0x23
	.4byte	0x929
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	speedscale
	.uleb128 0x4e
	.4byte	.LASF572
	.byte	0x1
	.byte	0x25
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	newwatertex
	.uleb128 0x4e
	.4byte	.LASF573
	.byte	0x1
	.byte	0x25
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	newslimetex
	.uleb128 0x4e
	.4byte	.LASF574
	.byte	0x1
	.byte	0x25
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	newlavatex
	.uleb128 0x4e
	.4byte	.LASF575
	.byte	0x1
	.byte	0x25
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	newteletex
	.uleb128 0x4e
	.4byte	.LASF576
	.byte	0x1
	.byte	0x27
	.4byte	0x1d42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	warpface
	.uleb128 0x4c
	.4byte	.LASF577
	.byte	0x1
	.byte	0x29
	.4byte	0xc2c
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x38d0
	.uleb128 0x9
	.4byte	0x48
	.byte	0xff
	.byte	0
	.uleb128 0x4e
	.4byte	.LASF578
	.byte	0x1
	.byte	0xbd
	.4byte	0x38c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	turbsin
	.uleb128 0x4f
	.4byte	.LASF579
	.byte	0x1
	.2byte	0x27c
	.4byte	0x268c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	targa_header
	.uleb128 0x4f
	.4byte	.LASF580
	.byte	0x1
	.2byte	0x27d
	.4byte	0x96b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	targa_rgba
	.uleb128 0x8
	.4byte	0x5c7
	.4byte	0x3918
	.uleb128 0x9
	.4byte	0x48
	.byte	0x6
	.byte	0
	.uleb128 0x50
	.string	"suf"
	.byte	0x1
	.2byte	0x5b5
	.4byte	0x3908
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	suf
	.uleb128 0x8
	.4byte	0xad3
	.4byte	0x3941
	.uleb128 0x9
	.4byte	0x48
	.byte	0x5
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF581
	.byte	0x1
	.2byte	0x5e0
	.4byte	0x392b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	skyclip
	.uleb128 0x4f
	.4byte	.LASF582
	.byte	0x1
	.2byte	0x5e9
	.4byte	0x41
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	c_sky
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x397d
	.uleb128 0x9
	.4byte	0x48
	.byte	0x5
	.uleb128 0x9
	.4byte	0x48
	.byte	0x2
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF583
	.byte	0x1
	.2byte	0x5ec
	.4byte	0x3967
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	st_to_vec
	.uleb128 0x4f
	.4byte	.LASF584
	.byte	0x1
	.2byte	0x5fc
	.4byte	0x3967
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	vec_to_st
	.uleb128 0x8
	.4byte	0x929
	.4byte	0x39b9
	.uleb128 0x9
	.4byte	0x48
	.byte	0x1
	.uleb128 0x9
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF585
	.byte	0x1
	.2byte	0x60b
	.4byte	0x39a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	skymins
	.uleb128 0x4f
	.4byte	.LASF586
	.byte	0x1
	.2byte	0x60b
	.4byte	0x39a3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	skymaxs
	.uleb128 0x8
	.4byte	0x41
	.4byte	0x39ef
	.uleb128 0x9
	.4byte	0x48
	.byte	0x5
	.byte	0
	.uleb128 0x4f
	.4byte	.LASF587
	.byte	0x1
	.2byte	0x719
	.4byte	0x39df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	skytexorder
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
	.uleb128 0x6
	.uleb128 0x17
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
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x6
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3c
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE38-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB39-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1912
	.4byte	.LCFI1-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1912
	.4byte	.LCFI3-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 1912
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-1-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL47-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL14-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL48-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL28-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL50-.Ltext0
	.4byte	.LFE39-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16-1-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB40-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 776
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 776
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	warpface
	.4byte	.LVL62-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LFE40-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x2
	.byte	0x7a
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LFB41-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 120
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 36
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0xa
	.byte	0x8c
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x88
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x3b
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL74-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL74-1-.Ltext0
	.2byte	0x2
	.byte	0x8f
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB42-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LFB43-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI13-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 152
	.4byte	.LCFI13-.Ltext0
	.4byte	.LFE43-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL88-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 36
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0xa
	.byte	0x8d
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x8b
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL97-1-.Ltext0
	.2byte	0x2
	.byte	0x83
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL97-1-.Ltext0
	.2byte	0x2
	.byte	0x83
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x39
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL95-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x3
	.byte	0x8
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-1-.Ltext0
	.2byte	0x2
	.byte	0x83
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL97-1-.Ltext0
	.2byte	0x2
	.byte	0x83
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LFB44-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL104-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 36
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL108-.Ltext0
	.4byte	.LVL113-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0xa
	.byte	0x8d
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x8b
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL108-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL111-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LFB45-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI17-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI18-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115-1-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL121-.Ltext0
	.4byte	.LFE45-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LFB47-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI19-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 88
	.4byte	.LCFI20-.Ltext0
	.4byte	.LFE47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x73
	.sleb128 36
	.4byte	.LVL124-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0xa
	.byte	0x8c
	.sleb128 24
	.byte	0x6
	.byte	0x4c
	.byte	0x1e
	.byte	0x88
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
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
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x3d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x3e
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL132-.Ltext0
	.4byte	.LVL133-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL136-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LFB48-.Ltext0
	.4byte	.LCFI21-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI21-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	.LCFI22-.Ltext0
	.4byte	.LFE48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL143-1-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL145-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LFB49-.Ltext0
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
	.4byte	.LFE49-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL147-1-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL151-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LFB50-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI25-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI26-.Ltext0
	.4byte	.LFE50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL155-1-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LFB53-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI27-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI29-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI29-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL169-1-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL177-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL177-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x6
	.byte	0x8e
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x6
	.byte	0x8e
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x6
	.byte	0x8e
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x6
	.byte	0x8c
	.sleb128 1
	.byte	0x8e
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL189-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL191-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL191-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL206-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL208-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL219-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL221-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL255-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL256-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL257-.Ltext0
	.4byte	.LVL258-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL266-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL266-.Ltext0
	.4byte	.LVL267-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL267-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL269-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x3
	.byte	0x85
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL261-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL277-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL183-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL193-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x3
	.byte	0x8b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL225-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL225-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x3
	.byte	0x8b
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL230-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL230-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL246-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL239-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL282-.Ltext0
	.4byte	.LVL283-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL215-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL244-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL280-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL285-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL192-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL216-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL236-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL284-.Ltext0
	.4byte	.LVL286-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL197-.Ltext0
	.4byte	.LVL201-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL210-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL198-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL277-.Ltext0
	.4byte	.LFE53-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL197-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL234-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL254-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL274-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST92:
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL263-.Ltext0
	.4byte	.LVL271-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST93:
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL259-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL262-.Ltext0
	.4byte	.LVL272-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL273-.Ltext0
	.4byte	.LVL276-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST94:
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL270-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST95:
	.4byte	.LFB51-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 32
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST96:
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL289-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL289-.Ltext0
	.4byte	.LVL290-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL290-1-.Ltext0
	.4byte	.LVL294-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST97:
	.4byte	.LVL287-.Ltext0
	.4byte	.LVL288-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST98:
	.4byte	.LVL291-.Ltext0
	.4byte	.LVL292-.Ltext0
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	argh
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST99:
	.4byte	.LFB54-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI33-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	.LCFI33-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI34-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 80
	.4byte	0
	.4byte	0
.LLST100:
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL296-1-.Ltext0
	.4byte	.LVL307-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL308-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST101:
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL296-1-.Ltext0
	.4byte	.LVL300-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL374-.Ltext0
	.4byte	.LVL375-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST102:
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL296-1-.Ltext0
	.4byte	.LVL303-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL308-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST103:
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL296-1-.Ltext0
	.4byte	.LVL304-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL308-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST104:
	.4byte	.LVL295-.Ltext0
	.4byte	.LVL296-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL296-1-.Ltext0
	.4byte	.LVL297-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL308-.Ltext0
	.4byte	.LVL309-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST105:
	.4byte	.LVL298-.Ltext0
	.4byte	.LVL306-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL309-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST106:
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL374-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL377-.Ltext0
	.4byte	.LVL378-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL407-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL409-.Ltext0
	.4byte	.LVL410-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST107:
	.4byte	.LVL299-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x6
	.byte	0x8d
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x6
	.byte	0x8d
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL374-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x6
	.byte	0x8d
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL377-.Ltext0
	.4byte	.LVL378-.Ltext0
	.2byte	0x6
	.byte	0x88
	.sleb128 1
	.byte	0x8d
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL407-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x6
	.byte	0x8d
	.sleb128 0
	.byte	0x88
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL409-.Ltext0
	.4byte	.LVL410-.Ltext0
	.2byte	0x6
	.byte	0x88
	.sleb128 1
	.byte	0x8d
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST108:
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL302-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL321-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL321-.Ltext0
	.4byte	.LVL322-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL322-.Ltext0
	.4byte	.LVL323-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL323-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL338-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL338-.Ltext0
	.4byte	.LVL339-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL339-.Ltext0
	.4byte	.LVL340-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL340-.Ltext0
	.4byte	.LVL341-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL341-.Ltext0
	.4byte	.LVL351-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL351-.Ltext0
	.4byte	.LVL352-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL352-.Ltext0
	.4byte	.LVL353-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL353-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL358-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL358-.Ltext0
	.4byte	.LVL359-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL359-.Ltext0
	.4byte	.LVL360-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL360-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL361-.Ltext0
	.4byte	.LVL363-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL385-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL385-.Ltext0
	.4byte	.LVL386-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL386-.Ltext0
	.4byte	.LVL387-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL387-.Ltext0
	.4byte	.LVL388-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL388-.Ltext0
	.4byte	.LVL396-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL396-.Ltext0
	.4byte	.LVL397-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL397-.Ltext0
	.4byte	.LVL398-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 2
	.byte	0x9f
	.4byte	.LVL398-.Ltext0
	.4byte	.LVL399-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 3
	.byte	0x9f
	.4byte	.LVL399-.Ltext0
	.4byte	.LVL411-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL411-.Ltext0
	.4byte	.LVL419-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL420-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST109:
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL330-.Ltext0
	.4byte	.LVL332-.Ltext0
	.2byte	0x3
	.byte	0x82
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL332-.Ltext0
	.4byte	.LVL364-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL364-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL376-.Ltext0
	.4byte	.LVL377-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL377-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL389-.Ltext0
	.4byte	.LVL391-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL391-.Ltext0
	.4byte	.LVL407-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL408-.Ltext0
	.4byte	.LVL409-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL409-.Ltext0
	.4byte	.LVL419-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL419-.Ltext0
	.4byte	.LVL421-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL421-.Ltext0
	.4byte	.LVL422-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL422-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST110:
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL315-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL324-.Ltext0
	.4byte	.LVL325-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL325-.Ltext0
	.4byte	.LVL328-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL350-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL350-.Ltext0
	.4byte	.LVL354-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL354-.Ltext0
	.4byte	.LVL357-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL357-.Ltext0
	.4byte	.LVL361-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL361-.Ltext0
	.4byte	.LVL362-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL362-.Ltext0
	.4byte	.LVL365-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL378-.Ltext0
	.4byte	.LVL379-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL380-.Ltext0
	.4byte	.LVL381-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL388-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL410-.Ltext0
	.4byte	.LVL411-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL414-.Ltext0
	.4byte	.LVL415-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL418-.Ltext0
	.4byte	.LVL419-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST111:
	.4byte	.LVL301-.Ltext0
	.4byte	.LVL305-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL376-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST112:
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL320-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL333-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL336-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL346-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL369-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL425-.Ltext0
	.4byte	.LVL426-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST113:
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL319-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL333-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL335-.Ltext0
	.4byte	.LVL343-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL347-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL368-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL373-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL422-.Ltext0
	.4byte	.LVL423-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL425-.Ltext0
	.4byte	.LVL427-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST114:
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL318-.Ltext0
	.4byte	.LVL324-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL333-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL334-.Ltext0
	.4byte	.LVL344-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL345-.Ltext0
	.4byte	.LVL348-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL367-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL372-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL422-.Ltext0
	.4byte	.LVL424-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL425-.Ltext0
	.4byte	.LVL428-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST115:
	.4byte	.LVL309-.Ltext0
	.4byte	.LVL310-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL310-.Ltext0
	.4byte	.LVL311-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL329-.Ltext0
	.4byte	.LVL333-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL337-.Ltext0
	.4byte	.LVL342-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST116:
	.4byte	.LVL312-.Ltext0
	.4byte	.LVL313-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST117:
	.4byte	.LVL314-.Ltext0
	.4byte	.LVL330-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL333-.Ltext0
	.4byte	.LVL370-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL371-.Ltext0
	.4byte	.LVL374-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL422-.Ltext0
	.4byte	.LFE54-.Ltext0
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST118:
	.4byte	.LVL316-.Ltext0
	.4byte	.LVL317-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL328-.Ltext0
	.4byte	.LVL329-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL349-.Ltext0
	.4byte	.LVL355-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL355-.Ltext0
	.4byte	.LVL356-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL365-.Ltext0
	.4byte	.LVL366-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST119:
	.4byte	.LVL384-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL394-.Ltext0
	.4byte	.LVL401-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST120:
	.4byte	.LVL383-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL393-.Ltext0
	.4byte	.LVL402-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL404-.Ltext0
	.4byte	.LVL405-.Ltext0
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST121:
	.4byte	.LVL382-.Ltext0
	.4byte	.LVL389-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL392-.Ltext0
	.4byte	.LVL403-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL404-.Ltext0
	.4byte	.LVL406-.Ltext0
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST122:
	.4byte	.LVL395-.Ltext0
	.4byte	.LVL400-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST123:
	.4byte	.LVL412-.Ltext0
	.4byte	.LVL413-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL416-.Ltext0
	.4byte	.LVL417-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST124:
	.4byte	.LFB55-.Ltext0
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
	.4byte	.LFE55-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST125:
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL430-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL430-1-.Ltext0
	.4byte	.LVL449-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL450-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST126:
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL430-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL430-1-.Ltext0
	.4byte	.LVL433-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL451-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST127:
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL430-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL430-1-.Ltext0
	.4byte	.LVL443-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL450-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST128:
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL430-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL430-1-.Ltext0
	.4byte	.LVL444-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL450-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST129:
	.4byte	.LVL429-.Ltext0
	.4byte	.LVL430-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL430-1-.Ltext0
	.4byte	.LVL431-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL451-.Ltext0
	.4byte	.LFE55-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST130:
	.4byte	.LVL431-.Ltext0
	.4byte	.LVL447-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST131:
	.4byte	.LVL431-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL435-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST132:
	.4byte	.LVL431-.Ltext0
	.4byte	.LVL432-.Ltext0
	.2byte	0x6
	.byte	0x8d
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL432-.Ltext0
	.4byte	.LVL435-.Ltext0
	.2byte	0x6
	.byte	0x8c
	.sleb128 1
	.byte	0x8d
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x6
	.byte	0x8c
	.sleb128 1
	.byte	0x8d
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST133:
	.4byte	.LVL434-.Ltext0
	.4byte	.LVL440-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL440-.Ltext0
	.4byte	.LVL442-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL442-.Ltext0
	.4byte	.LVL446-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST134:
	.4byte	.LVL435-.Ltext0
	.4byte	.LVL436-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL437-.Ltext0
	.4byte	.LVL438-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL439-.Ltext0
	.4byte	.LVL440-.Ltext0
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST135:
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL436-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL441-.Ltext0
	.4byte	.LVL448-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST136:
	.4byte	.LVL433-.Ltext0
	.4byte	.LVL445-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL450-.Ltext0
	.4byte	.LVL451-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST137:
	.4byte	.LFB52-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI39-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI41-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI41-.Ltext0
	.4byte	.LFE52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST138:
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL455-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL455-.Ltext0
	.4byte	.LVL456-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL456-1-.Ltext0
	.4byte	.LVL464-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL465-.Ltext0
	.4byte	.LVL471-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST139:
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL454-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL454-.Ltext0
	.4byte	.LVL463-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL465-.Ltext0
	.4byte	.LVL470-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST140:
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL453-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL453-.Ltext0
	.4byte	.LVL462-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL465-.Ltext0
	.4byte	.LVL466-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL466-1-.Ltext0
	.4byte	.LVL469-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST141:
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL456-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL456-1-.Ltext0
	.4byte	.LVL461-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	.LVL465-.Ltext0
	.4byte	.LVL466-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL466-1-.Ltext0
	.4byte	.LVL468-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST142:
	.4byte	.LVL452-.Ltext0
	.4byte	.LVL456-1-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL456-1-.Ltext0
	.4byte	.LVL460-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL465-.Ltext0
	.4byte	.LVL466-1-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL466-1-.Ltext0
	.4byte	.LVL467-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST143:
	.4byte	.LVL457-.Ltext0
	.4byte	.LVL458-.Ltext0
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	argh
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST144:
	.4byte	.LFB56-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI43-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI45-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST145:
	.4byte	.LVL472-.Ltext0
	.4byte	.LVL474-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL474-.Ltext0
	.4byte	.LVL479-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL486-.Ltext0
	.4byte	.LVL487-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL487-.Ltext0
	.4byte	.LVL489-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST146:
	.4byte	.LVL477-.Ltext0
	.4byte	.LVL486-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	.LVL487-.Ltext0
	.4byte	.LFE56-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST147:
	.4byte	.LVL473-.Ltext0
	.4byte	.LVL483-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL487-.Ltext0
	.4byte	.LVL488-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST148:
	.4byte	.LVL478-.Ltext0
	.4byte	.LVL482-.Ltext0
	.2byte	0x1
	.byte	0x6b
	.4byte	0
	.4byte	0
.LLST149:
	.4byte	.LVL479-.Ltext0
	.4byte	.LVL484-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST150:
	.4byte	.LVL475-.Ltext0
	.4byte	.LVL476-.Ltext0
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	argh
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST151:
	.4byte	.LVL480-.Ltext0
	.4byte	.LVL481-1-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	targa_rgba
	.4byte	.LVL481-1-.Ltext0
	.4byte	.LVL485-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST152:
	.4byte	.LFB46-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI46-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LCFI47-.Ltext0
	.4byte	.LFE46-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST153:
	.4byte	.LFB57-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI49-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	.LCFI49-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI50-.Ltext0
	.4byte	.LFE57-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 128
	.4byte	0
	.4byte	0
.LLST154:
	.4byte	.LVL490-.Ltext0
	.4byte	.LVL491-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL493-.Ltext0
	.4byte	.LVL494-.Ltext0
	.2byte	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL494-.Ltext0
	.4byte	.LVL495-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST155:
	.4byte	.LFB58-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI51-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	.LCFI52-.Ltext0
	.4byte	.LCFI53-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI53-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST156:
	.4byte	.LVL496-.Ltext0
	.4byte	.LVL500-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL501-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST157:
	.4byte	.LVL499-.Ltext0
	.4byte	.LVL501-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL511-.Ltext0
	.4byte	.LVL514-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST158:
	.4byte	.LVL497-.Ltext0
	.4byte	.LVL498-.Ltext0
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL498-.Ltext0
	.4byte	.LVL499-.Ltext0
	.2byte	0xa
	.byte	0x7b
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL499-.Ltext0
	.4byte	.LVL501-.Ltext0
	.2byte	0xc
	.byte	0x7b
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x7b
	.sleb128 8
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL501-.Ltext0
	.4byte	.LVL502-.Ltext0
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
	.4byte	.LVL502-.Ltext0
	.4byte	.LVL503-.Ltext0
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
	.4byte	.LVL503-.Ltext0
	.4byte	.LVL505-.Ltext0
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
	.4byte	.LVL505-.Ltext0
	.4byte	.LVL510-.Ltext0
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
	.4byte	.LVL510-.Ltext0
	.4byte	.LVL511-.Ltext0
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
	.4byte	.LVL511-.Ltext0
	.4byte	.LVL514-.Ltext0
	.2byte	0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2c
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL523-.Ltext0
	.4byte	.LVL524-.Ltext0
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
	.4byte	.LVL524-.Ltext0
	.4byte	.LVL525-.Ltext0
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
	.4byte	.LVL525-.Ltext0
	.4byte	.LVL526-.Ltext0
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
	.4byte	.LVL526-.Ltext0
	.4byte	.LVL527-.Ltext0
	.2byte	0xa
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
	.4byte	0
	.4byte	0
.LLST159:
	.4byte	.LVL507-.Ltext0
	.4byte	.LVL508-.Ltext0
	.2byte	0x6
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL508-.Ltext0
	.4byte	.LVL509-.Ltext0
	.2byte	0xa
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL509-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0xc
	.byte	0x90
	.uleb128 0x2a
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x2b
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x29
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST160:
	.4byte	.LVL517-.Ltext0
	.4byte	.LVL520-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL527-.Ltext0
	.4byte	.LVL529-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	.LVL531-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2d
	.4byte	0
	.4byte	0
.LLST161:
	.4byte	.LVL518-.Ltext0
	.4byte	.LVL522-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL528-.Ltext0
	.4byte	.LVL529-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST162:
	.4byte	.LVL515-.Ltext0
	.4byte	.LVL516-.Ltext0
	.2byte	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.4byte	.LVL516-.Ltext0
	.4byte	.LVL519-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL527-.Ltext0
	.4byte	.LVL529-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL530-.Ltext0
	.4byte	.LFE58-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	0
	.4byte	0
.LLST163:
	.4byte	.LVL511-.Ltext0
	.4byte	.LVL512-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL512-.Ltext0
	.4byte	.LVL513-.Ltext0
	.2byte	0x3
	.byte	0x70
	.sleb128 -6
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST164:
	.4byte	.LVL499-.Ltext0
	.4byte	.LVL501-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL501-.Ltext0
	.4byte	.LVL504-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL504-.Ltext0
	.4byte	.LVL505-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL505-.Ltext0
	.4byte	.LVL506-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST165:
	.4byte	.LFB59-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI54-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 2088
	.4byte	.LCFI55-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI56-.Ltext0
	.4byte	.LCFI57-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 2088
	.4byte	.LCFI57-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI58-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 2088
	.4byte	0
	.4byte	0
.LLST166:
	.4byte	.LVL532-.Ltext0
	.4byte	.LVL533-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL533-.Ltext0
	.4byte	.LVL555-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL559-.Ltext0
	.4byte	.LVL561-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL562-.Ltext0
	.4byte	.LFE59-.Ltext0
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST167:
	.4byte	.LVL532-.Ltext0
	.4byte	.LVL533-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL567-.Ltext0
	.4byte	.LVL568-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST168:
	.4byte	.LVL532-.Ltext0
	.4byte	.LVL533-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL567-.Ltext0
	.4byte	.LVL568-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST169:
	.4byte	.LVL535-.Ltext0
	.4byte	.LVL536-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL536-.Ltext0
	.4byte	.LVL537-.Ltext0
	.2byte	0x6
	.byte	0x7b
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST170:
	.4byte	.LVL535-.Ltext0
	.4byte	.LVL538-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL538-.Ltext0
	.4byte	.LVL540-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL540-.Ltext0
	.4byte	.LVL541-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL541-.Ltext0
	.4byte	.LVL545-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL545-.Ltext0
	.4byte	.LVL546-.Ltext0
	.2byte	0x3
	.byte	0x79
	.sleb128 -12
	.byte	0x9f
	.4byte	.LVL546-.Ltext0
	.4byte	.LVL547-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL547-.Ltext0
	.4byte	.LVL556-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL559-.Ltext0
	.4byte	.LVL560-.Ltext0
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL562-.Ltext0
	.4byte	.LVL567-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST171:
	.4byte	.LVL534-.Ltext0
	.4byte	.LVL538-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL538-.Ltext0
	.4byte	.LVL539-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST172:
	.4byte	.LVL534-.Ltext0
	.4byte	.LVL538-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL544-.Ltext0
	.4byte	.LVL546-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST173:
	.4byte	.LVL538-.Ltext0
	.4byte	.LVL542-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL543-.Ltext0
	.4byte	.LVL547-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	.LVL549-.Ltext0
	.4byte	.LVL552-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x2c
	.4byte	.LVL559-.Ltext0
	.4byte	.LVL560-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST174:
	.4byte	.LVL550-.Ltext0
	.4byte	.LVL552-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x20
	.4byte	0
	.4byte	0
.LLST175:
	.4byte	.LVL548-.Ltext0
	.4byte	.LVL551-.Ltext0
	.2byte	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL551-.Ltext0
	.4byte	.LVL552-.Ltext0
	.2byte	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL552-.Ltext0
	.4byte	.LVL557-1-.Ltext0
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL557-1-.Ltext0
	.4byte	.LVL558-.Ltext0
	.2byte	0x5
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL563-.Ltext0
	.4byte	.LVL564-.Ltext0
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL564-.Ltext0
	.4byte	.LVL565-.Ltext0
	.2byte	0x6
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x6f
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL566-.Ltext0
	.4byte	.LVL567-.Ltext0
	.2byte	0x5
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST176:
	.4byte	.LVL535-.Ltext0
	.4byte	.LVL538-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL552-.Ltext0
	.4byte	.LVL554-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL554-.Ltext0
	.4byte	.LVL557-1-.Ltext0
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST177:
	.4byte	.LFB60-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI59-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	.LCFI60-.Ltext0
	.4byte	.LFE60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST178:
	.4byte	.LVL569-.Ltext0
	.4byte	.LVL570-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL570-.Ltext0
	.4byte	.LVL572-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST179:
	.4byte	.LVL571-.Ltext0
	.4byte	.LVL581-.Ltext0
	.2byte	0x1
	.byte	0x6d
	.4byte	0
	.4byte	0
.LLST180:
	.4byte	.LVL575-.Ltext0
	.4byte	.LVL576-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL576-.Ltext0
	.4byte	.LVL577-.Ltext0
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST181:
	.4byte	.LVL573-.Ltext0
	.4byte	.LVL574-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	.LVL574-.Ltext0
	.4byte	.LVL580-.Ltext0
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST182:
	.4byte	.LVL575-.Ltext0
	.4byte	.LVL576-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST183:
	.4byte	.LVL582-.Ltext0
	.4byte	.LVL583-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST184:
	.4byte	.LFB62-.Ltext0
	.4byte	.LCFI61-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI61-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	.LCFI62-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI63-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST185:
	.4byte	.LVL584-.Ltext0
	.4byte	.LVL590-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL592-.Ltext0
	.4byte	.LVL597-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL598-.Ltext0
	.4byte	.LVL601-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	.LVL602-.Ltext0
	.4byte	.LVL603-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x21
	.4byte	0
	.4byte	0
.LLST186:
	.4byte	.LVL584-.Ltext0
	.4byte	.LVL591-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL593-.Ltext0
	.4byte	.LVL595-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL596-.Ltext0
	.4byte	.LVL597-1-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	.LVL598-.Ltext0
	.4byte	.LFE62-.Ltext0
	.2byte	0x2
	.byte	0x90
	.uleb128 0x22
	.4byte	0
	.4byte	0
.LLST187:
	.4byte	.LVL584-.Ltext0
	.4byte	.LVL585-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST188:
	.4byte	.LVL586-.Ltext0
	.4byte	.LVL587-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST189:
	.4byte	.LVL588-.Ltext0
	.4byte	.LVL589-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL598-.Ltext0
	.4byte	.LVL599-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL599-.Ltext0
	.4byte	.LVL600-.Ltext0
	.2byte	0x4
	.byte	0x7b
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST190:
	.4byte	.LFB63-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI64-.Ltext0
	.4byte	.LCFI65-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	.LCFI65-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI66-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x3
	.byte	0x71
	.sleb128 72
	.4byte	0
	.4byte	0
.LLST191:
	.4byte	.LVL604-.Ltext0
	.4byte	.LVL605-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL606-.Ltext0
	.4byte	.LVL607-.Ltext0
	.2byte	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL607-.Ltext0
	.4byte	.LVL608-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL609-.Ltext0
	.4byte	.LVL610-.Ltext0
	.2byte	0x3
	.byte	0x8a
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL610-.Ltext0
	.4byte	.LVL611-.Ltext0
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL612-.Ltext0
	.4byte	.LFE63-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST192:
	.4byte	.LFB64-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI67-.Ltext0
	.4byte	.LCFI68-.Ltext0
	.2byte	0x4
	.byte	0x71
	.sleb128 65592
	.4byte	.LCFI68-.Ltext0
	.4byte	.LFE64-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST193:
	.4byte	.LVL613-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST194:
	.4byte	.LVL614-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL628-.Ltext0
	.4byte	.LVL629-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST195:
	.4byte	.LVL615-.Ltext0
	.4byte	.LVL616-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL629-.Ltext0
	.4byte	.LVL630-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST196:
	.4byte	.LVL616-.Ltext0
	.4byte	.LVL617-.Ltext0
	.2byte	0x9
	.byte	0x7b
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL617-.Ltext0
	.4byte	.LVL622-.Ltext0
	.2byte	0x9
	.byte	0x7b
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL631-.Ltext0
	.4byte	.LVL632-.Ltext0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST197:
	.4byte	.LVL614-.Ltext0
	.4byte	.LVL627-.Ltext0
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL627-.Ltext0
	.4byte	.LVL629-.Ltext0
	.2byte	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST198:
	.4byte	.LVL614-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL615-.Ltext0
	.4byte	.LVL623-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST199:
	.4byte	.LVL614-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL615-.Ltext0
	.4byte	.LVL624-.Ltext0
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST200:
	.4byte	.LVL614-.Ltext0
	.4byte	.LVL615-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL615-.Ltext0
	.4byte	.LVL625-.Ltext0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST201:
	.4byte	.LVL618-.Ltext0
	.4byte	.LVL626-.Ltext0
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LBB6-.Ltext0
	.4byte	.LBE6-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB53-.Ltext0
	.4byte	.LBE53-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	.LBB61-.Ltext0
	.4byte	.LBE61-.Ltext0
	.4byte	.LBB64-.Ltext0
	.4byte	.LBE64-.Ltext0
	.4byte	.LBB66-.Ltext0
	.4byte	.LBE66-.Ltext0
	.4byte	.LBB68-.Ltext0
	.4byte	.LBE68-.Ltext0
	.4byte	.LBB70-.Ltext0
	.4byte	.LBE70-.Ltext0
	.4byte	.LBB72-.Ltext0
	.4byte	.LBE72-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB7-.Ltext0
	.4byte	.LBE7-.Ltext0
	.4byte	.LBB8-.Ltext0
	.4byte	.LBE8-.Ltext0
	.4byte	.LBB9-.Ltext0
	.4byte	.LBE9-.Ltext0
	.4byte	.LBB10-.Ltext0
	.4byte	.LBE10-.Ltext0
	.4byte	.LBB11-.Ltext0
	.4byte	.LBE11-.Ltext0
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
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	.LBB52-.Ltext0
	.4byte	.LBE52-.Ltext0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	.LBB60-.Ltext0
	.4byte	.LBE60-.Ltext0
	.4byte	.LBB62-.Ltext0
	.4byte	.LBE62-.Ltext0
	.4byte	.LBB63-.Ltext0
	.4byte	.LBE63-.Ltext0
	.4byte	.LBB65-.Ltext0
	.4byte	.LBE65-.Ltext0
	.4byte	.LBB67-.Ltext0
	.4byte	.LBE67-.Ltext0
	.4byte	.LBB69-.Ltext0
	.4byte	.LBE69-.Ltext0
	.4byte	.LBB71-.Ltext0
	.4byte	.LBE71-.Ltext0
	.4byte	.LBB73-.Ltext0
	.4byte	.LBE73-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB44-.Ltext0
	.4byte	.LBE44-.Ltext0
	.4byte	.LBB45-.Ltext0
	.4byte	.LBE45-.Ltext0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB74-.Ltext0
	.4byte	.LBE74-.Ltext0
	.4byte	.LBB81-.Ltext0
	.4byte	.LBE81-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB75-.Ltext0
	.4byte	.LBE75-.Ltext0
	.4byte	.LBB76-.Ltext0
	.4byte	.LBE76-.Ltext0
	.4byte	.LBB77-.Ltext0
	.4byte	.LBE77-.Ltext0
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	.LBB80-.Ltext0
	.4byte	.LBE80-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB82-.Ltext0
	.4byte	.LBE82-.Ltext0
	.4byte	.LBB95-.Ltext0
	.4byte	.LBE95-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	.LBB84-.Ltext0
	.4byte	.LBE84-.Ltext0
	.4byte	.LBB85-.Ltext0
	.4byte	.LBE85-.Ltext0
	.4byte	.LBB86-.Ltext0
	.4byte	.LBE86-.Ltext0
	.4byte	.LBB87-.Ltext0
	.4byte	.LBE87-.Ltext0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	0
	.4byte	0
	.4byte	.LBB89-.Ltext0
	.4byte	.LBE89-.Ltext0
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	.LBB91-.Ltext0
	.4byte	.LBE91-.Ltext0
	.4byte	.LBB92-.Ltext0
	.4byte	.LBE92-.Ltext0
	.4byte	.LBB93-.Ltext0
	.4byte	.LBE93-.Ltext0
	.4byte	.LBB94-.Ltext0
	.4byte	.LBE94-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF148:
	.string	"pflags"
.LASF421:
	.string	"screenrect_s"
.LASF423:
	.string	"screenrect_t"
.LASF366:
	.string	"vecs"
.LASF270:
	.string	"upmove"
.LASF484:
	.string	"BoundPoly"
.LASF338:
	.string	"texture_s"
.LASF363:
	.string	"texture_t"
.LASF121:
	.string	"_Bool"
.LASF176:
	.string	"entity_s"
.LASF266:
	.string	"entity_t"
.LASF572:
	.string	"newwatertex"
.LASF59:
	.string	"_mbstate"
.LASF38:
	.string	"_atexit"
.LASF222:
	.string	"numplanes"
.LASF192:
	.string	"frame_start_time"
.LASF187:
	.string	"lightTimestamp"
.LASF533:
	.string	"newc"
.LASF404:
	.string	"binormals"
.LASF28:
	.string	"__tm_mon"
.LASF36:
	.string	"_fntypes"
.LASF326:
	.string	"lightnormalindex"
.LASF517:
	.string	"fname"
.LASF532:
	.string	"newv"
.LASF66:
	.string	"_inc"
.LASF39:
	.string	"_ind"
.LASF475:
	.string	"colormap_length"
.LASF362:
	.string	"samples"
.LASF196:
	.string	"pose2"
.LASF257:
	.string	"lastshadowonly"
.LASF379:
	.string	"lastclipnode"
.LASF164:
	.string	"entnext"
.LASF191:
	.string	"topnode"
.LASF329:
	.string	"mvertex_t"
.LASF45:
	.string	"_flags"
.LASF156:
	.string	"next"
.LASF417:
	.string	"plane_t"
.LASF496:
	.string	"length"
.LASF260:
	.string	"vertices"
.LASF205:
	.string	"angles1"
.LASF206:
	.string	"angles2"
.LASF311:
	.string	"maxclients"
.LASF76:
	.string	"_cvtlen"
.LASF80:
	.string	"_sig_func"
.LASF501:
	.string	"LoadTGA"
.LASF447:
	.string	"cubescale"
.LASF340:
	.string	"height"
.LASF521:
	.string	"EasyTgaLoad"
.LASF488:
	.string	"frac"
.LASF58:
	.string	"_lock"
.LASF54:
	.string	"_nbuf"
.LASF113:
	.string	"_unused"
.LASF402:
	.string	"commands"
.LASF198:
	.string	"brushlightinstant"
.LASF502:
	.string	"columns"
.LASF296:
	.string	"viewheight"
.LASF553:
	.string	"gl_compress_textures"
.LASF432:
	.string	"visible"
.LASF208:
	.string	"model_s"
.LASF416:
	.string	"model_t"
.LASF330:
	.string	"texture"
.LASF545:
	.string	"vec3_origin"
.LASF69:
	.string	"_current_locale"
.LASF240:
	.string	"hulls"
.LASF170:
	.string	"compressed_vis"
.LASF567:
	.string	"realtime"
.LASF442:
	.string	"numVisSurf"
.LASF233:
	.string	"numsurfaces"
.LASF91:
	.string	"_add"
.LASF312:
	.string	"gametype"
.LASF331:
	.string	"lightmap"
.LASF540:
	.string	"transpix"
.LASF136:
	.string	"vec_t"
.LASF219:
	.string	"nummodelsurfaces"
.LASF499:
	.string	"fgetLittleShort"
.LASF554:
	.string	"gl_wireframe"
.LASF264:
	.string	"triplanes"
.LASF47:
	.string	"_lbfsize"
.LASF309:
	.string	"levelname"
.LASF193:
	.string	"frame_interval"
.LASF368:
	.string	"mtexinfo_t"
.LASF119:
	.string	"byte"
.LASF429:
	.string	"shadowlight_s"
.LASF450:
	.string	"shadowlight_t"
.LASF57:
	.string	"_data"
.LASF370:
	.string	"chain"
.LASF174:
	.string	"index"
.LASF578:
	.string	"turbsin"
.LASF177:
	.string	"forcelink"
.LASF61:
	.string	"_reent"
.LASF138:
	.string	"angles"
.LASF393:
	.string	"boundingradius"
.LASF175:
	.string	"ambient_sound_level"
.LASF82:
	.string	"__sf"
.LASF579:
	.string	"targa_header"
.LASF583:
	.string	"st_to_vec"
.LASF212:
	.string	"synctype"
.LASF42:
	.string	"_base"
.LASF473:
	.string	"image_type"
.LASF197:
	.string	"aliasframeinstant"
.LASF295:
	.string	"laststop"
.LASF226:
	.string	"vertexes"
.LASF100:
	.string	"_mbtowc_state"
.LASF507:
	.string	"row_inc"
.LASF271:
	.string	"usercmd_t"
.LASF201:
	.string	"translate_start_time"
.LASF455:
	.string	"lastvorg"
.LASF23:
	.string	"__tm"
.LASF234:
	.string	"surfaces"
.LASF31:
	.string	"__tm_yday"
.LASF560:
	.string	"globalVertexTable"
.LASF147:
	.string	"light_lev"
.LASF123:
	.string	"maxs"
.LASF210:
	.string	"type"
.LASF410:
	.string	"aliashdr_t"
.LASF230:
	.string	"nodes"
.LASF516:
	.string	"pixels"
.LASF342:
	.string	"gl_lumitex"
.LASF163:
	.string	"entity"
.LASF321:
	.string	"server_proto_version"
.LASF92:
	.string	"_unused_rand"
.LASF564:
	.string	"skybox_cloudspeed"
.LASF290:
	.string	"punchangle"
.LASF526:
	.string	"axis"
.LASF350:
	.string	"msurface_s"
.LASF375:
	.string	"msurface_t"
.LASF185:
	.string	"syncbase"
.LASF310:
	.string	"viewentity"
.LASF448:
	.string	"haloalpha"
.LASF73:
	.string	"_result_k"
.LASF65:
	.string	"_stderr"
.LASF72:
	.string	"_result"
.LASF35:
	.string	"_dso_handle"
.LASF248:
	.string	"firstsurface"
.LASF434:
	.string	"castShadow"
.LASF30:
	.string	"__tm_wday"
.LASF492:
	.string	"EmitWaterPolys"
.LASF32:
	.string	"__tm_isdst"
.LASF558:
	.string	"gl_mtexable"
.LASF247:
	.string	"plane"
.LASF251:
	.string	"updateframe"
.LASF194:
	.string	"blend"
.LASF279:
	.string	"cshift_t"
.LASF1:
	.string	"unsigned char"
.LASF64:
	.string	"_stdout"
.LASF348:
	.string	"alternate_anims"
.LASF524:
	.string	"DrawSkyPolygon"
.LASF107:
	.string	"_mbsrtowcs_state"
.LASF255:
	.string	"lastblend"
.LASF21:
	.string	"_wds"
.LASF466:
	.string	"aliaslightinstant_t"
.LASF115:
	.string	"float"
.LASF142:
	.string	"skin"
.LASF464:
	.string	"tshalfangles"
.LASF128:
	.string	"numfaces"
.LASF43:
	.string	"_size"
.LASF354:
	.string	"light_s"
.LASF355:
	.string	"light_t"
.LASF415:
	.string	"modtype_t"
.LASF406:
	.string	"indecies"
.LASF284:
	.string	"faceanimtime"
.LASF195:
	.string	"pose1"
.LASF50:
	.string	"_write"
.LASF439:
	.string	"volumeVerts"
.LASF253:
	.string	"lastpose1"
.LASF254:
	.string	"lastpose2"
.LASF282:
	.string	"items"
.LASF436:
	.string	"entvis"
.LASF381:
	.string	"clip_maxs"
.LASF481:
	.string	"TargaHeader"
.LASF360:
	.string	"cached_light"
.LASF369:
	.string	"glpoly_s"
.LASF374:
	.string	"glpoly_t"
.LASF29:
	.string	"__tm_year"
.LASF523:
	.string	"R_LoadSkys"
.LASF479:
	.string	"pixel_size"
.LASF518:
	.string	"breakOut"
.LASF126:
	.string	"visleafs"
.LASF506:
	.string	"column"
.LASF90:
	.string	"_mult"
.LASF323:
	.string	"ST_SYNC"
.LASF305:
	.string	"oldtime"
.LASF215:
	.string	"clipbox"
.LASF105:
	.string	"_mbrlen_state"
.LASF422:
	.string	"coords"
.LASF166:
	.string	"contents"
.LASF314:
	.string	"free_efrags"
.LASF576:
	.string	"warpface"
.LASF531:
	.string	"sides"
.LASF63:
	.string	"_stdin"
.LASF592:
	.string	"InitShaderTex"
.LASF112:
	.string	"_nmalloc"
.LASF474:
	.string	"colormap_index"
.LASF359:
	.string	"styles"
.LASF184:
	.string	"efrag"
.LASF408:
	.string	"texels"
.LASF258:
	.string	"lastpaliashdr"
.LASF399:
	.string	"size"
.LASF118:
	.string	"FILE"
.LASF443:
	.string	"owner"
.LASF139:
	.string	"modelindex"
.LASF202:
	.string	"origin1"
.LASF332:
	.string	"mmvertex_t"
.LASF519:
	.string	"LoadGrayTGA"
.LASF407:
	.string	"gl_lumatex"
.LASF249:
	.string	"aliasframeinstant_s"
.LASF346:
	.string	"anim_max"
.LASF95:
	.string	"_localtime_buf"
.LASF12:
	.string	"__count"
.LASF486:
	.string	"front"
.LASF528:
	.string	"stage"
.LASF313:
	.string	"worldmodel"
.LASF453:
	.string	"lastlorg"
.LASF77:
	.string	"_cvtbuf"
.LASF573:
	.string	"newslimetex"
.LASF388:
	.string	"maliasframedesc_t"
.LASF228:
	.string	"edges"
.LASF252:
	.string	"paliashdr"
.LASF419:
	.string	"GLfloat"
.LASF178:
	.string	"update_type"
.LASF392:
	.string	"scale_origin"
.LASF188:
	.string	"dlightframe"
.LASF11:
	.string	"__wchb"
.LASF503:
	.string	"rows"
.LASF490:
	.string	"GL_SubdivideSurface"
.LASF106:
	.string	"_mbrtowc_state"
.LASF26:
	.string	"__tm_hour"
.LASF478:
	.string	"y_origin"
.LASF349:
	.string	"offsets"
.LASF127:
	.string	"firstface"
.LASF203:
	.string	"origin2"
.LASF498:
	.string	"OverrideFluidTex"
.LASF9:
	.string	"wint_t"
.LASF299:
	.string	"onground"
.LASF78:
	.string	"_new"
.LASF86:
	.string	"_niobs"
.LASF465:
	.string	"triangleVis"
.LASF256:
	.string	"lastent"
.LASF62:
	.string	"_errno"
.LASF293:
	.string	"nodrift"
.LASF559:
	.string	"gl_texcomp"
.LASF555:
	.string	"fog_enabled"
.LASF27:
	.string	"__tm_mday"
.LASF480:
	.string	"attributes"
.LASF287:
	.string	"mviewangles"
.LASF538:
	.string	"R_InitSky"
.LASF585:
	.string	"skymins"
.LASF34:
	.string	"_fnargs"
.LASF239:
	.string	"marksurfaces"
.LASF325:
	.string	"synctype_t"
.LASF209:
	.string	"needload"
.LASF433:
	.string	"isStatic"
.LASF409:
	.string	"frames"
.LASF568:
	.string	"loadmodel"
.LASF358:
	.string	"lightmaptexturenum"
.LASF437:
	.string	"visSurf"
.LASF155:
	.string	"value"
.LASF343:
	.string	"texturechain"
.LASF190:
	.string	"trivial_accept"
.LASF18:
	.string	"_next"
.LASF472:
	.string	"colormap_type"
.LASF565:
	.string	"skybox_hasclouds"
.LASF103:
	.string	"_signal_buf"
.LASF525:
	.string	"nump"
.LASF48:
	.string	"_cookie"
.LASF357:
	.string	"shadowchain"
.LASF378:
	.string	"firstclipnode"
.LASF570:
	.string	"alphaskytexture"
.LASF352:
	.string	"texturemins"
.LASF186:
	.string	"skinnum"
.LASF552:
	.string	"gl_watershader"
.LASF24:
	.string	"__tm_sec"
.LASF33:
	.string	"_on_exit_args"
.LASF591:
	.string	"RandomXY"
.LASF345:
	.string	"anim_min"
.LASF108:
	.string	"_wcrtomb_state"
.LASF224:
	.string	"leafs"
.LASF307:
	.string	"model_precache"
.LASF316:
	.string	"num_statics"
.LASF125:
	.string	"headnode"
.LASF216:
	.string	"clipmins"
.LASF574:
	.string	"newlavatex"
.LASF298:
	.string	"paused"
.LASF403:
	.string	"triangles"
.LASF291:
	.string	"idealpitch"
.LASF120:
	.string	"qboolean"
.LASF151:
	.string	"name"
.LASF387:
	.string	"bboxmax"
.LASF485:
	.string	"SubdividePolygon"
.LASF16:
	.string	"__ULong"
.LASF566:
	.string	"wgPipe"
.LASF587:
	.string	"skytexorder"
.LASF165:
	.string	"mleaf_s"
.LASF377:
	.string	"mleaf_t"
.LASF182:
	.string	"msg_angles"
.LASF438:
	.string	"volumeCmds"
.LASF93:
	.string	"_strtok_last"
.LASF280:
	.string	"movemessages"
.LASF297:
	.string	"crouch"
.LASF320:
	.string	"scores"
.LASF237:
	.string	"numclipnodes"
.LASF504:
	.string	"numPixels"
.LASF550:
	.string	"gl_solid_format"
.LASF89:
	.string	"_seed"
.LASF547:
	.string	"texture_extension_number"
.LASF51:
	.string	"_seek"
.LASF556:
	.string	"color_black"
.LASF457:
	.string	"lasthdr"
.LASF3:
	.string	"short unsigned int"
.LASF308:
	.string	"sound_precache"
.LASF0:
	.string	"signed char"
.LASF269:
	.string	"sidemove"
.LASF220:
	.string	"numsubmodels"
.LASF463:
	.string	"tslights"
.LASF333:
	.string	"mplane_s"
.LASF337:
	.string	"mplane_t"
.LASF487:
	.string	"back"
.LASF514:
	.string	"filename"
.LASF335:
	.string	"dist"
.LASF263:
	.string	"binomials"
.LASF75:
	.string	"_freelist"
.LASF327:
	.string	"trivertx_t"
.LASF235:
	.string	"numsurfedges"
.LASF137:
	.string	"vec3_t"
.LASF405:
	.string	"texcoords"
.LASF278:
	.string	"percent"
.LASF241:
	.string	"numtextures"
.LASF162:
	.string	"leafnext"
.LASF172:
	.string	"firstmarksurface"
.LASF476:
	.string	"colormap_size"
.LASF56:
	.string	"_offset"
.LASF130:
	.string	"planenum"
.LASF302:
	.string	"completed_time"
.LASF361:
	.string	"cached_dlight"
.LASF281:
	.string	"stats"
.LASF41:
	.string	"__sbuf"
.LASF512:
	.string	"packetSize"
.LASF411:
	.string	"mod_brush"
.LASF469:
	.string	"WGPipe"
.LASF102:
	.string	"_l64a_buf"
.LASF389:
	.string	"ident"
.LASF394:
	.string	"eyeposition"
.LASF351:
	.string	"firstedge"
.LASF245:
	.string	"entities"
.LASF510:
	.string	"alphabyte"
.LASF508:
	.string	"green"
.LASF294:
	.string	"driftmove"
.LASF428:
	.string	"lightcmd_t"
.LASF467:
	.string	"lightcmd_u"
.LASF94:
	.string	"_asctime_buf"
.LASF180:
	.string	"msgtime"
.LASF435:
	.string	"halo"
.LASF454:
	.string	"lasteangles"
.LASF10:
	.string	"__wch"
.LASF582:
	.string	"c_sky"
.LASF109:
	.string	"_wcsrtombs_state"
.LASF424:
	.string	"asInt"
.LASF589:
	.string	"d:/Data/Nintendo/TenebraeGX/src/gl_warp.c"
.LASF8:
	.string	"_LOCK_RECURSIVE_T"
.LASF304:
	.string	"time"
.LASF229:
	.string	"numnodes"
.LASF117:
	.string	"long int"
.LASF471:
	.string	"id_length"
.LASF495:
	.string	"EmitSkyPolys"
.LASF101:
	.string	"_wctomb_state"
.LASF267:
	.string	"viewangles"
.LASF242:
	.string	"textures"
.LASF482:
	.string	"seedlike"
.LASF149:
	.string	"entity_state_t"
.LASF580:
	.string	"targa_rgba"
.LASF306:
	.string	"last_received_message"
.LASF549:
	.string	"r_wateralpha"
.LASF87:
	.string	"_iobs"
.LASF67:
	.string	"_emergency"
.LASF386:
	.string	"bboxmin"
.LASF548:
	.string	"skytexturenum"
.LASF268:
	.string	"forwardmove"
.LASF535:
	.string	"R_ClearSkyBox"
.LASF111:
	.string	"_nextf"
.LASF97:
	.string	"_rand_next"
.LASF459:
	.string	"lightpos"
.LASF173:
	.string	"nummarksurfaces"
.LASF288:
	.string	"mvelocity"
.LASF19:
	.string	"_maxwds"
.LASF385:
	.string	"interval"
.LASF445:
	.string	"filtercube"
.LASF168:
	.string	"minmaxs"
.LASF116:
	.string	"long double"
.LASF289:
	.string	"velocity"
.LASF315:
	.string	"num_entities"
.LASF470:
	.string	"_TargaHeader"
.LASF211:
	.string	"numframes"
.LASF328:
	.string	"position"
.LASF17:
	.string	"long unsigned int"
.LASF318:
	.string	"cdtrack"
.LASF449:
	.string	"oldlightorigin"
.LASF262:
	.string	"tangents"
.LASF150:
	.string	"cvar_s"
.LASF157:
	.string	"cvar_t"
.LASF468:
	.string	"_wgpipe"
.LASF557:
	.string	"qglMultiTexCoord2fARB"
.LASF364:
	.string	"cachededgeoffset"
.LASF52:
	.string	"_close"
.LASF83:
	.string	"char"
.LASF85:
	.string	"_glue"
.LASF225:
	.string	"numvertexes"
.LASF199:
	.string	"numleafs"
.LASF412:
	.string	"mod_sprite"
.LASF494:
	.string	"EmitMirrorPolys"
.LASF430:
	.string	"baseColor"
.LASF384:
	.string	"numposes"
.LASF544:
	.string	"d_8to24table"
.LASF513:
	.string	"LoadTexture"
.LASF353:
	.string	"extents"
.LASF259:
	.string	"shadowonly"
.LASF563:
	.string	"skybox_name"
.LASF144:
	.string	"color"
.LASF373:
	.string	"firstvertex"
.LASF189:
	.string	"dlightbits"
.LASF546:
	.string	"r_origin"
.LASF22:
	.string	"_Bigint"
.LASF426:
	.string	"asVec"
.LASF158:
	.string	"sfx_s"
.LASF527:
	.string	"ClipSkyPolygon"
.LASF261:
	.string	"normals"
.LASF396:
	.string	"skinwidth"
.LASF79:
	.string	"_atexit0"
.LASF133:
	.string	"cache_user_s"
.LASF135:
	.string	"cache_user_t"
.LASF250:
	.string	"lockframe"
.LASF344:
	.string	"anim_total"
.LASF153:
	.string	"archive"
.LASF104:
	.string	"_getdate_err"
.LASF584:
	.string	"vec_to_st"
.LASF300:
	.string	"inwater"
.LASF243:
	.string	"visdata"
.LASF420:
	.string	"PFNGLMULTITEXCOORD2FARBPROC"
.LASF161:
	.string	"leaf"
.LASF400:
	.string	"poseverts"
.LASF534:
	.string	"R_DrawSkyChain"
.LASF319:
	.string	"looptrack"
.LASF431:
	.string	"brightness"
.LASF397:
	.string	"skinheight"
.LASF367:
	.string	"mipadjust"
.LASF543:
	.string	"_impure_ptr"
.LASF275:
	.string	"translations"
.LASF55:
	.string	"_blksize"
.LASF301:
	.string	"intermission"
.LASF53:
	.string	"_ubuf"
.LASF99:
	.string	"_mblen_state"
.LASF81:
	.string	"__sglue"
.LASF171:
	.string	"efrags"
.LASF71:
	.string	"__cleanup"
.LASF160:
	.string	"efrag_s"
.LASF207:
	.string	"efrag_t"
.LASF7:
	.string	"_fpos_t"
.LASF46:
	.string	"_file"
.LASF131:
	.string	"children"
.LASF146:
	.string	"style"
.LASF477:
	.string	"x_origin"
.LASF44:
	.string	"__sFILE"
.LASF114:
	.string	"double"
.LASF40:
	.string	"_fns"
.LASF446:
	.string	"rspeed"
.LASF231:
	.string	"numtexinfo"
.LASF14:
	.string	"_mbstate_t"
.LASF110:
	.string	"_h_errno"
.LASF277:
	.string	"destcolor"
.LASF441:
	.string	"lightCmds"
.LASF227:
	.string	"numedges"
.LASF265:
	.string	"lightinstant"
.LASF542:
	.string	"argh"
.LASF292:
	.string	"pitchvel"
.LASF551:
	.string	"gl_alpha_format"
.LASF341:
	.string	"gl_texturenum"
.LASF586:
	.string	"skymaxs"
.LASF511:
	.string	"packetHeader"
.LASF391:
	.string	"scale"
.LASF365:
	.string	"medge_t"
.LASF244:
	.string	"lightdata"
.LASF141:
	.string	"colormap"
.LASF134:
	.string	"data"
.LASF425:
	.string	"asFloat"
.LASF491:
	.string	"lindex"
.LASF13:
	.string	"__value"
.LASF317:
	.string	"viewent"
.LASF37:
	.string	"_is_cxa"
.LASF520:
	.string	"LoadTextureInPlace"
.LASF167:
	.string	"visframe"
.LASF347:
	.string	"anim_next"
.LASF274:
	.string	"colors"
.LASF372:
	.string	"neighbours"
.LASF74:
	.string	"_p5s"
.LASF571:
	.string	"speedscale"
.LASF575:
	.string	"newteletex"
.LASF444:
	.string	"scizz"
.LASF489:
	.string	"poly"
.LASF223:
	.string	"planes"
.LASF339:
	.string	"width"
.LASF561:
	.string	"newenvmap"
.LASF122:
	.string	"mins"
.LASF334:
	.string	"normal"
.LASF537:
	.string	"R_DrawSkyBox"
.LASF581:
	.string	"skyclip"
.LASF181:
	.string	"msg_origins"
.LASF460:
	.string	"vieworg"
.LASF539:
	.string	"trans"
.LASF283:
	.string	"item_gettime"
.LASF590:
	.string	"d:\\\\Data\\\\Nintendo\\\\TenebraeGX\\\\build"
.LASF383:
	.string	"firstpose"
.LASF132:
	.string	"dclipnode_t"
.LASF336:
	.string	"signbits"
.LASF6:
	.string	"long long unsigned int"
.LASF169:
	.string	"parent"
.LASF505:
	.string	"pixbuf"
.LASF96:
	.string	"_gamma_signgam"
.LASF462:
	.string	"extvertices"
.LASF68:
	.string	"_current_category"
.LASF541:
	.string	"rgba"
.LASF285:
	.string	"cshifts"
.LASF500:
	.string	"fgetLittleLong"
.LASF522:
	.string	"texturemode"
.LASF217:
	.string	"clipmaxs"
.LASF530:
	.string	"dists"
.LASF70:
	.string	"__sdidinit"
.LASF395:
	.string	"numskins"
.LASF143:
	.string	"effects"
.LASF493:
	.string	"EmitMirrorWaterPolys"
.LASF440:
	.string	"numVolumeVerts"
.LASF272:
	.string	"entertime"
.LASF382:
	.string	"hull_t"
.LASF418:
	.string	"GLenum"
.LASF427:
	.string	"asVoid"
.LASF15:
	.string	"_flock_t"
.LASF536:
	.string	"MakeSkyVec"
.LASF273:
	.string	"frags"
.LASF183:
	.string	"model"
.LASF145:
	.string	"alpha"
.LASF371:
	.string	"numverts"
.LASF380:
	.string	"clip_mins"
.LASF398:
	.string	"numtris"
.LASF5:
	.string	"long long int"
.LASF60:
	.string	"_flags2"
.LASF509:
	.string	"blue"
.LASF152:
	.string	"string"
.LASF456:
	.string	"lastlradius"
.LASF303:
	.string	"mtime"
.LASF461:
	.string	"lastframeinstant"
.LASF413:
	.string	"mod_alias"
.LASF497:
	.string	"EmitBothSkyLayers"
.LASF179:
	.string	"baseline"
.LASF483:
	.string	"verts"
.LASF414:
	.string	"mod_alias3"
.LASF232:
	.string	"texinfo"
.LASF238:
	.string	"clipnodes"
.LASF577:
	.string	"gl_subdivide_size"
.LASF200:
	.string	"leafnums"
.LASF356:
	.string	"polys"
.LASF515:
	.string	"LoadColorTGA"
.LASF129:
	.string	"dmodel_t"
.LASF218:
	.string	"firstmodelsurface"
.LASF529:
	.string	"norm"
.LASF322:
	.string	"client_state_t"
.LASF221:
	.string	"submodels"
.LASF84:
	.string	"__FILE"
.LASF569:
	.string	"solidskytexture"
.LASF124:
	.string	"origin"
.LASF20:
	.string	"_sign"
.LASF25:
	.string	"__tm_min"
.LASF458:
	.string	"lastlight"
.LASF159:
	.string	"cache"
.LASF588:
	.string	"GNU C 4.6.3"
.LASF390:
	.string	"version"
.LASF236:
	.string	"surfedges"
.LASF324:
	.string	"ST_RAND"
.LASF562:
	.string	"causticschain"
.LASF4:
	.string	"unsigned int"
.LASF246:
	.string	"mnode_s"
.LASF376:
	.string	"mnode_t"
.LASF98:
	.string	"_r48"
.LASF286:
	.string	"prev_cshifts"
.LASF2:
	.string	"short int"
.LASF49:
	.string	"_read"
.LASF154:
	.string	"server"
.LASF140:
	.string	"frame"
.LASF88:
	.string	"_rand48"
.LASF452:
	.string	"lasteorg"
.LASF401:
	.string	"posedata"
.LASF276:
	.string	"scoreboard_t"
.LASF213:
	.string	"flags"
.LASF204:
	.string	"rotate_start_time"
.LASF214:
	.string	"radius"
.LASF451:
	.string	"aliaslightinstant_s"
	.ident	"GCC: (devkitPPC release 26) 4.6.3"
	.gnu_attribute 4, 1
